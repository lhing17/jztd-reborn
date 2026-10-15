import Actor from "@/Actor";
import ObjectDataUtil from "@/ObjectDataUtil";
import BaseUtil from "@/BaseUtil";
import CameraUtil from "@/CameraUtil";
import GameUtil from "@/GameUtil";
import AbilityUtil from "@/AbilityUtil";
import ActorUnit from "@/ActorUnit";
import ActorTypeUtil from "@/ActorTypeUtil";
import PlayerUtil from "@/PlayerUtil";
import Cache from "@/Cache";
import SolarBuildEffect from "@/SolarBuildEffect";
import SyncUtil from "@/SyncUtil";
import TextTagUtil from "@/TextTagUtil";
import UnitStateUtil from "@/UnitStateUtil";
import ActorAbility from "@/ActorAbility";
import DataBase from "@/DataBase";
import ObjectTemplateUtil from "@/ObjectTemplateUtil";

declare interface BuildUnitDataType {
    i: string,//单位uuid
    u: string,//建造单位建造技能id
    x: number,
    y: number,
}

//Objects\InvalidObject\InvalidObject.mdx
//Objects\Invalidmodel\Invalidmodel.mdx
/**
 * 此模拟建造玩家体验不是很好
 */
export default class ActorTypeBuildByEffectUtil {

    static cache = new Cache();
    static tempSolarBuildEffect: SolarBuildEffect = null;
    private static _sl_baseUnitBuildAbilityClass = "太阳单位演员技能建造";
    // private static unit = null;
    /**
     * 检测是否可以建造 会异步调用此函数。所以不要在此函数里创建或修改handle （比如创建矩形区域或单位组）
     */
    static canBuildCheck: (actor: Actor, x: number, y: number) => boolean = (actor, x, y) => {
        // SetUnitPosition(ActorTypeBuildByEffectUtil.unit, x, y);
        // let uX = GetUnitX(ActorTypeBuildByEffectUtil.unit)
        // let uY = GetUnitY(ActorTypeBuildByEffectUtil.unit)
        // //复原位置 以免影响到正常建造
        // SetUnitPosition(ActorTypeBuildByEffectUtil.unit, 0, 0);
        // if (x != uX || y != uY) {
        //     print("xy:" + x + "," + y);
        //     print("uxy:" + uX + "," + uY);
        //     return false;
        // }

        return !IsTerrainPathable(x, y, PATHING_TYPE_BUILDABILITY) && !IsTerrainPathable(x, y, PATHING_TYPE_WALKABILITY);
    };
    /**
     * 当任意单位演员建造完成时
     */
    static onBuildFinish: (actor: Actor, newUnit: unit) => void = null;

    /**
     * 将一个单位包装为建造它的 演员技能或演员物品
     * @param unitIdOrActorId
     * @param onLocalClickCheck
     * @param onBuild
     */
    static warpUnit2BuildAbility(unitIdOrActorId: string, onLocalClickCheck?: (actor: Actor) => boolean, onBuild?: (actor: Actor) => void) {
        return ActorTypeBuildByEffectUtil.cache.get("warpUnit2BuildAbility:" + unitIdOrActorId, () => {
            let actorTypeId = "_sl_BuildAbility:" + unitIdOrActorId;
            let unitActorType = ActorTypeUtil.getActorType(unitIdOrActorId);
            if (unitActorType == null) {
                unitActorType = {
                    name: ObjectDataUtil.getUnitName(unitIdOrActorId),
                    icon: ObjectDataUtil.getUnitArt(unitIdOrActorId),
                    describe: ObjectDataUtil.getUnitDataString(unitIdOrActorId, "Ubertip"),
                    goldCost: ObjectDataUtil.getUnitGoldCost(unitIdOrActorId),
                    lumberCost: ObjectDataUtil.getUnitDataNumber(unitIdOrActorId, "lumbercost"),
                    foodCost: ObjectDataUtil.getUnitDataNumber(unitIdOrActorId, "fused"),
                };
                // log.errorWithTraceBack("不存在此演员单位类型:" + unitIdOrActorId)
                // return null;
            }
            let actorType: AppActorType = {
                id: actorTypeId,
                class: ActorTypeBuildByEffectUtil._sl_baseUnitBuildAbilityClass,
                name: unitActorType.name || unitIdOrActorId,
                icon: unitActorType.icon,
                describe: unitActorType.describe,
                goldCost: unitActorType.goldCost,
                lumberCost: unitActorType.lumberCost,
                foodCost: unitActorType.foodCost,
                passive: false,
                maxCd: 0
            }

            ActorTypeUtil.registerActorType(actorType)
            ActorTypeBuildByEffectUtil.addBuildUnitType(actorTypeId, unitIdOrActorId, actor => {
                if (PlayerUtil.getGold(GetOwningPlayer(actor.unit)) < (actorType.goldCost || 0)) {
                    PlayerUtil.message("|cffff0000金币不足!", 10, GetOwningPlayer(actor.unit),)
                    return false;
                }
                if (PlayerUtil.getLumber(GetOwningPlayer(actor.unit)) < (actorType.lumberCost || 0)) {
                    PlayerUtil.message("|cffff0000木材不足!", 10, GetOwningPlayer(actor.unit),)
                    return false;
                }
                if (PlayerUtil.getFoodCapLeft(GetOwningPlayer(actor.unit)) < (actorType.foodCost || 0)) {
                    PlayerUtil.message("|cffff0000人口不足!", 10, GetOwningPlayer(actor.unit),)
                    return false;
                }
                if (onLocalClickCheck) {
                    return onLocalClickCheck(actor);
                }
                return true;
            }, actor => {
                if (actorType.goldCost) {
                    PlayerUtil.addGoldState(GetOwningPlayer(actor.unit), -actorType.goldCost)
                }
                if (actorType.lumberCost) {
                    PlayerUtil.addLumberState(GetOwningPlayer(actor.unit), -actorType.lumberCost)
                }
                if (actorType.foodCost) {
                    PlayerUtil.addFoodUsedState(GetOwningPlayer(actor.unit), -actorType.foodCost)
                }
                onBuild?.(actor);

            });
            return actorType;
        });
    }

    /**
     * 技能物品类型可以使用这个 来模拟建造
     * 添加建造单位类型
     * @param actorTypeId
     * @param unitId 可以为原始4字符串单位物编id  也可以为 ActorUnit类型的id
     * @param onLocalClickCheck
     * @param onBuild
     */
    static addBuildUnitType(actorTypeId: string, unitId: string, onLocalClickCheck?: (actor: Actor) => boolean, onBuildFinish?: (actor: Actor, newUnit: unit) => void) {
        if (!isEmbedJapi) {
            print("无内置不支持此模拟建造方法!")
            return
        }
        ActorTypeBuildByEffectUtil._sl_initBuildUnit();
        //这里保存一下保证读取时快速根据ID读取
        let actorType = ActorTypeUtil.getActorType(actorTypeId);
        if (actorType == null) {
            log.errorWithTraceBack("请先注册此类型:" + actorType)
            return;
        }
        actorType.targetType = "点"
        actorType.area = 0;
        actorType.buildUnitTypeId = unitId;
        actorType.onBuildFinish = onBuildFinish;
        if (actorType.onCreated || actorType.onLocalClick || actorType.onAction) {
            log.errorWithTraceBack("必须是空事件的模板才能注册模拟建造事件")
            return;
        }
        //
        if (ActorTypeBuildByEffectUtil.tempSolarBuildEffect == null) {
            ActorTypeBuildByEffectUtil.tempSolarBuildEffect = new SolarBuildEffect();
            ActorTypeBuildByEffectUtil.tempSolarBuildEffect.setVisible(false);
        }
        // //todo 不能异步修改位置！
        // if (ActorTypeBuildByEffectUtil.unit == null) {
        //     ActorTypeBuildByEffectUtil.unit = CreateUnit(PlayerUtil.neutralPassivePlayer(), "hwtw", 0, 0, 0);
        //     ShowUnit(ActorTypeBuildByEffectUtil.unit, false)
        //     // SetUnitModel(ActorTypeBuildByEffectUtil.unit,"")
        // }


        let modelPath = null;
        let unitActorType = ActorTypeUtil.getActorType(unitId);
        if (unitActorType != null) {
            modelPath = unitActorType.model
        } else {
            modelPath = ObjectDataUtil.getStandardModelPath(ObjectDataUtil.getUnitFile(unitId))
        }
        actorType._real_modelPath = modelPath;

        actorType.onLocalClick = (actor) => {
            let ccF = onLocalClickCheck?.(actor);
            print("ccF=" + ccF)
            if (ccF == false) {
                return false
            }

            ActorTypeBuildByEffectUtil.tempSolarBuildEffect.setVisible(true);
            ActorTypeBuildByEffectUtil.tempSolarBuildEffect.setBuildEffectModelPath(actorType._real_modelPath);
            ActorTypeBuildByEffectUtil.tempSolarBuildEffect.setVisible(true);
            actor.sTimer = BaseUtil.onTimer(0.05, count => {
                ActorTypeBuildByEffectUtil.tempSolarBuildEffect.setVisible(true);
                let wordXY = CameraUtil.getWordCoordinates();
                wordXY = ActorTypeBuildByEffectUtil.getBuildXY(wordXY.x, wordXY.y);
                ActorTypeBuildByEffectUtil.tempSolarBuildEffect.setBuildXY(wordXY.x, wordXY.y, GameUtil.getTerrainHeight(wordXY.x, wordXY.y));

                if (ActorTypeBuildByEffectUtil.canBuildCheck(actor, wordXY.x, wordXY.y)) {
                    // EXSetEffectColor(ActorTypeBuildByEffectUtil.tempEffect, 0x88ffffff)//半透明
                    ActorTypeBuildByEffectUtil.tempSolarBuildEffect.setCanBuild(true);
                } else {
                    // EXSetEffectColor(ActorTypeBuildByEffectUtil.tempEffect, 0xffff0000)//红色提示不可建造
                    ActorTypeBuildByEffectUtil.tempSolarBuildEffect.setCanBuild(false);
                }
                if (wordXY.x == 0 && wordXY.y == 0) {//鼠标移入控制台了
                    FrameSetModelSize(FrameGetMouse(), 1)
                    // EXSetEffectVisible(ActorTypeBuildByEffectUtil.tempEffect, false);
                    ActorTypeBuildByEffectUtil.tempSolarBuildEffect.setVisible(false);
                } else {
                    // EXSetEffectVisible(ActorTypeBuildByEffectUtil.tempEffect, true);
                    ActorTypeBuildByEffectUtil.tempSolarBuildEffect.setVisible(true);
                    FrameSetModelSize(FrameGetMouse(), 0.001)
                }
                if (!AbilityUtil.isSelectUi() || count > 1000) {//取消施法、最大显示限制。
                    // EXSetEffectVisible(ActorTypeBuildByEffectUtil.tempEffect, false);
                    ActorTypeBuildByEffectUtil.tempSolarBuildEffect.setVisible(false);
                    DzFrameShow(FrameGetMouse(), true)
                    FrameSetModelSize(FrameGetMouse(), 1)
                    return false;
                }
                return true;
            })
            return true;
        }
        actorType.onAction = (actor, x, y, targetUnit) => {
            //传送xy
            //走购买同步逻辑
            if (GetLocalPlayer() == actor.unitOwner) {
                let wordXY = CameraUtil.getWordCoordinates();
                wordXY = ActorTypeBuildByEffectUtil.getBuildXY(wordXY.x, wordXY.y);
                SyncUtil.syncObjData("_sl_:buildUnit", {
                    i: actor.uuid,
                    u: actorType.id,
                    x: wordXY.x,
                    y: wordXY.y,
                } as BuildUnitDataType);
            }


        }

    }

    static getBuildXY(x: number, y: number): Vector {
        let newX = Math.floor(x / 64) * 64
        let newY = Math.floor(y / 64) * 64
        return {x: newX, y: newY}
    }


    //
    private static _sl_inited = false;

    private static _sl_initBuildUnit() {
        if (ActorTypeBuildByEffectUtil._sl_inited) {
            return
        }
        ActorTypeBuildByEffectUtil._sl_inited = true;
        //

        //走购买同步逻辑
        SyncUtil.onSyncObjData("_sl_:buildUnit", (p, obj: BuildUnitDataType) => {
            let actor = Actor.allActors[obj.i];
            let actorType = ActorTypeUtil.getActorType(obj.u);
            let unitId = actorType.buildUnitTypeId;
            let onBuildFinish: ((actor: Actor, newUnit: unit) => void) = actorType.onBuildFinish;
            //fix xy
            // let wordXY = ActorTypeBuildByEffectUtil.getBuildXY(obj.x + 64, obj.y + 64);
            let wordXY = {x: obj.x, y: obj.y};
            if (!PlayerUtil.costEnoughState(p, actorType.goldCost, actorType.lumberCost)) {
                TextTagUtil.text("资源不足!", actor.unit)
                return
            }
            if (ActorTypeBuildByEffectUtil.canBuildCheck(actor, wordXY.x, wordXY.y)) {
                let unitActorType = ActorTypeUtil.getActorType(unitId);
                let newUnit: unit = null;
                if (unitActorType != null) {
                    newUnit = new ActorUnit(unitId, GetOwningPlayer(actor.unit), wordXY.x, wordXY.y).unit
                } else {
                    newUnit = CreateUnit(GetOwningPlayer(actor.unit), unitId, wordXY.x, wordXY.y, 270)
                }
                ActorTypeBuildByEffectUtil.showUnitBirthAnim(newUnit);
                ActorTypeBuildByEffectUtil.onBuildFinish?.(actor, newUnit);
                onBuildFinish?.(actor, newUnit);
            } else {
                DisplayTimedTextToPlayer(GetOwningPlayer(actor.unit), 0, 0, 5, "|cffff0000当前点不可建造!");
            }
            if (isEmbedJapi) {
                // EXSetEffectVisible(ActorTypeBuildByEffectUtil.tempEffect, false);
                if (GetLocalPlayer() == p) {
                    ActorTypeBuildByEffectUtil.tempSolarBuildEffect.setVisible(false);
                    FrameSetModelSize(FrameGetMouse(), 1)
                }
            }
        });

    }


    static showUnitBirthAnim(unit: unit) {
        SetUnitAnimation(unit, "birth");
        SetUnitTimeScale(null, 100)
        BaseUtil.runLater(0.1, (count, maxCount) => {
            UnitStateUtil.setUnitLifeP(unit, 0.3 + (count / maxCount * 0.7))
            if (count == maxCount) {
                SetUnitAnimation(unit, "stand");
                SetUnitTimeScale(null, 1)
            }
        }, 10, true);

    }


    //
    static map: [] = []

    /**
     * @deprecated see ActorTypeBuildUtil.setBuilds2unit
     * @param unit
     * @param builds
     */
    static setBuilds2unit(unit: unit, builds: string[]) {
        if (!isEmbedJapi) {
            print("无内置不支持此模拟建造方法!")
            return
        }
        let spellBookIdStr = ActorTypeBuildByEffectUtil.getBuildsMenuAbilityFromunit(unit, true);
        // let tongMoListStr:string = _g_objs.ability[spellBookIdStr].DataA;
        let tongMoListStr: string = ObjectDataUtil.getAbilityDataString(spellBookIdStr, "DataA");
        // print("tongMoListStr="+tostring(tongMoListStr))
        let tongMoIds: string[] = tongMoListStr.split(",");

        for (let i = 0; i < builds.length; i++) {
            let buildUnit = builds[i];

            let buildAbilityActorType = ActorTypeBuildByEffectUtil.warpUnit2BuildAbility(buildUnit);
            let actorAbility = new ActorAbility(buildAbilityActorType.id);
            actorAbility.unit = unit;
            actorAbility.abilityId = tongMoIds[i];
            // DataBase.getAbilityTypeSolarData(tongMoIds[i], true)._SL_solarActorAbility = actorAbility;
            if (DataBase.getUnitSolarData(unit, true)._SL_solarActorAbilitys == null) {
                DataBase.getUnitSolarData(unit, true)._SL_solarActorAbilitys = {};
            }
            DataBase.getUnitSolarData(unit, true)._SL_solarActorAbilitys[actorAbility.abilityId] = actorAbility;
            //显示图标
            SetUnitAbilityButtonShow(unit as any, FourCC(tongMoIds[i]) as any, true)
            //更新图标
            actorAbility.update();
        }
        //隐藏图标
        for (let i = builds.length; i < tongMoIds.length; i++) {
            SetUnitAbilityButtonShow(unit as any, FourCC(tongMoIds[i]) as any, false)
        }


    }

    /**
     * @deprecated see ActorTypeBuildUtil.setBuilds2unit
     * @param unit
     * @param createDefault
     */
    static getBuildsMenuAbilityFromunit(unit: unit, createDefault: boolean = true): string {
        let solarData = DataBase.getUnitSolarData(unit, createDefault);
        if (createDefault && solarData._sl_BuildsMenuAbility == null) {
            let spellBookIdStr = ObjectTemplateUtil.borrowTemplate("建造菜单技能");
            solarData._sl_BuildsMenuAbility = spellBookIdStr;
            UnitAddAbility(unit, spellBookIdStr);
            AbilityUtil.setUnitAbilityName(unit, spellBookIdStr, "建造菜单 |cffeeee00(B|r)");
        }
        return solarData._sl_BuildsMenuAbility;
    }

}