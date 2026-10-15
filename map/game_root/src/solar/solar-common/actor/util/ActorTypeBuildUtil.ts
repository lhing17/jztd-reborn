import Actor from "@/Actor";
import ObjectDataUtil from "@/ObjectDataUtil";
import BaseUtil from "@/BaseUtil";
import ActorTypeUtil from "@/ActorTypeUtil";
import PlayerUtil from "@/PlayerUtil";
import Cache from "@/Cache";
import ActorUnitUtil from "@/ActorUnitUtil";
import FrameCallbackUtil from "@/FrameCallbackUtil";
import ActorAbility from "@/ActorAbility";
import UnitStateUtil from "@/UnitStateUtil";
import UnitTypeUtil from "@/UnitTypeUtil";
import GroupUtil from "@/GroupUtil";
import InputUtil from "@/InputUtil";
import IconUtil from "@/IconUtil";
import MathUtil from "@/MathUtil";


//Objects\InvalidObject\InvalidObject.mdx
//Objects\Invalidmodel\Invalidmodel.mdx
export default class ActorTypeBuildUtil {

    static zwId2UnitIdMap: { [zwId: string]: AppActorUnitType } = {}
    static unitIdMapZwIds: { [actorUnitId: string]: string[] } = {}
    static playerActorUnitTypeState: {
        [playerId: number]: {
            [actorUnitTypeId: string]: {
                disable?: boolean
                hide?: boolean
            }
        }
    } = {}
    static cache = new Cache();
    private static _sl_baseUnitBuildAbilityClass = "太阳单位演员技能建造";


    /**
     * 将一个单位包装为建造它的 演员物品 （象牙塔）
     * @param unitIdOrActorId
     * @param onLocalClickCheck
     * @param onBuild
     */
    static warpUnit2BuildItem(unitIdOrActorId: string, onLocalClickCheck?: (actor: Actor) => boolean, onBuild?: (actor: Actor) => void) {
        return ActorTypeBuildUtil.cache.get("warpUnit2BuildItem:" + unitIdOrActorId, () => {
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
            let actorType: AppActorItemType = {
                id: actorTypeId,
                templateType: "建造物品",
                templateAllocPolicy: "actorTypeShare",
                class: ActorTypeBuildUtil._sl_baseUnitBuildAbilityClass,
                name: unitActorType.name || unitIdOrActorId,
                icon: unitActorType.icon,
                describe: unitActorType.describe,
                goldCost: unitActorType.goldCost,
                lumberCost: unitActorType.lumberCost,
                foodCost: unitActorType.foodCost,
                passive: false,
                maxCd: 0.5,
                uses: 1,
                destroyOnNoUses: true,
            }
            ActorTypeBuildUtil._sl_initBuildUnit();
            actorType.onUpdate = (tempActor) => {
                let actor = tempActor as ActorAbility
                let zwUnitId: string = ObjectDataUtil.getAbilityDataString(actor.abilityId, "UnitID")
                ActorTypeBuildUtil.mapUnit2zwUnitType(zwUnitId, unitIdOrActorId)
            }
            ActorTypeUtil.registerActorType(actorType);


            return actorType;
        });
    }


    //
    private static _sl_inited = false;

    private static _sl_initBuildUnit() {
        if (ActorTypeBuildUtil._sl_inited) {
            return
        }
        ActorTypeBuildUtil._sl_inited = true;
        //

        //模拟双击选择指定演员类型的所有单位实例
        InputUtil.onUnitMouseDoubleClicked((e, solarTrigger, clickedUnit) => {
            //
            let owningPlayer = GetOwningPlayer(clickedUnit);
            if (owningPlayer != GetLocalPlayer()) {
                return;
            }
            //异步执行了
            let actorUnit = ActorUnitUtil.getActorUnit(clickedUnit);
            if (actorUnit == null) {
                return;
            }

            //延迟 等选择事件结束了 再重新执行选择逻辑
            BaseUtil.runLater(0.1, () => {
                ClearSelection();
                //
                let needSelectUnits: unit[] = [];
                //
                GroupEnumUnitsOfPlayer(_sl_tempGroup1, owningPlayer, null)
                GroupUtil.for(_sl_tempGroup1, unit => {
                    let tempUnit = ActorUnitUtil.getActorUnit(unit, actorUnit.actorTypeId);
                    if (tempUnit) {
                        needSelectUnits.push(tempUnit.unit);
                    }
                });
                let ox = actorUnit.unitX;
                let oy = actorUnit.unitY;
                needSelectUnits.sort((a, b) => {
                    let ad = MathUtil.distanceBetweenPoints(GetUnitX(a), GetUnitY(a), ox, oy);
                    let bd = MathUtil.distanceBetweenPoints(GetUnitX(b), GetUnitY(b), ox, oy);
                    return ad - bd;
                });

                for (let i = 0; i < needSelectUnits.length && i < 12; i++) {
                    SelectUnit(needSelectUnits[i], true)
                }

            })
        });

        //替换占位
        se.onUnitConstructStart(e => {
            let realUnitType = ActorTypeBuildUtil.zwId2UnitIdMap[e.trigUnitTypeIdStr];
            if (realUnitType == null) {
                return
            }
            UnitStateUtil.setMaxLife(e.trigUnit, realUnitType.maxLife || 100)
        });
        se.onUnitConstructFinish(e => {
            let trigUnit = e.trigUnit;
            let trigUnitTypeIdStr = id2string(GetUnitTypeId(trigUnit))
            let realUnitType = ActorTypeBuildUtil.zwId2UnitIdMap[trigUnitTypeIdStr];
            if (realUnitType == null) {
                return
            }
            let p = GetOwningPlayer(trigUnit)
            let x = GetUnitX(trigUnit)
            let y = GetUnitY(trigUnit)
            let facing = GetUnitFacing(trigUnit)
            let needSelectUnit = selection() == trigUnit;
            RemoveUnit(trigUnit)
            let unit = ActorUnitUtil.createUnit(p, realUnitType.id, x, y, facing);
            if (needSelectUnit) {
                SelectUnit(unit, true);
            }
            se.emit("建造完成", unit);
            // BaseUtil.runLater(0.01, () => {
            //     SetUnitPosition(unit, x, y)
            //     EXSetUnitFacing(unit, facing)
            // }, 3, true)
        })


        //建造
        if (FrameSetOriginButtonTexture) {
            let trigger = CreateTrigger();
            TriggerRegisterGameEvent(trigger, EVENT_GAME_BUILD_SUBMENU);
            PlayerUtil.forPlayingPlayers(player => {
                TriggerRegisterPlayerUnitEvent(trigger, player, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER, null);
            })
            TriggerAddAction(trigger, () => {
                ActorTypeBuildUtil.updateCommandBarButtonTexture();
                BaseUtil.runLater(0.1, () => {
                    ActorTypeBuildUtil.updateCommandBarButtonTexture();
                })
            });
            FrameCallbackUtil.addFrameSetUpdateCallback(() => {
                ActorTypeBuildUtil.updateCommandBarButtonTexture();
            });
        }

    }

    static updateCommandBarButtonTexture() {
        let selectList: unit[] = get_select_list();
        if (selectList) {
            for (let i = 0; i < selectList.length; i++) {
                let actorUnit = ActorUnitUtil.getActorUnit(selectList[i]);
                if (actorUnit) {
                    let selectButton = FrameGetInfoSelectButton(i);
                    FrameSetOriginButtonTexture(selectButton, actorUnit.getIcon());
                }
            }
        }
        for (let x = 0; x <= 3; x++) {
            for (let y = 0; y <= 2; y++) {
                let cmdButton = DzFrameGetCommandBarButton(y, x);
                let [ability, order, arg] = button(x, y);
                if (ability == null || ability == 0) {
                    continue
                }
                //1096114805 = "AUbu" 不死族召唤建筑
                if ((1096114805 == ability || 1095262837 == ability) && arg == 8) {
                    let unitIdStr = id2string(order);
                    let zwActorType = ActorTypeBuildUtil.zwId2UnitIdMap[unitIdStr];
                    if (zwActorType?.icon) {
                        if (ActorTypeBuildUtil.isLocalPlayerActorUnitTypeDisableState(zwActorType.id)) {
                            FrameSetOriginButtonTexture(cmdButton, IconUtil.getDisableIcon(zwActorType.icon));
                        } else {
                            FrameSetOriginButtonTexture(cmdButton, zwActorType.icon);
                        }
                    }
                }
            }
        }
    }

    //
    static map: [] = []

    /**
     * 设置演员单位可建造列表
     * @param unit
     * @param builds
     */
    static setBuilds2unit(unit: unit, builds: string[]) {
        if (!isEmbedJapi) {
            print("无内置不支持此模拟建造方法!")
            return
        }
        ActorTypeBuildUtil._sl_initBuildUnit();
        let BuildsStr: string = ObjectDataUtil.getUnitDataString(id2string(GetUnitTypeId(unit)), "Builds");
        // print("tongMoListStr="+tostring(tongMoListStr))
        if (BuildsStr == null || BuildsStr.length < 4) {
            log.errorWithTraceBack(ActorUnitUtil.getUnitName(unit) + "的建造列表为空！只有建造者模版才能使用Builds模拟建造！");
            return;
        }
        let zwIds: string[] = BuildsStr.split(",");
        let player = GetOwningPlayer(unit);
        for (let i = 0; i < builds.length; i++) {
            ActorTypeBuildUtil.mapUnit2zwUnitType(zwIds[i], builds[i]);
            let hideState = ActorTypeBuildUtil.isPlayerActorUnitTypeHideState(player, builds[i]);
            //显示图标
            SetPlayerTechMaxAllowed(player, FourCC(zwIds[i]) as any, hideState ? 0 : -1)
        }
        //隐藏图标
        for (let i = builds.length; i < zwIds.length; i++) {
            SetPlayerTechMaxAllowed(player, FourCC(zwIds[i]) as any, 0)
        }


    }

    static mapUnit2zwUnitType(zwUnitId: string, unitIdOrActorId: string) {
        let unitActorType: AppActorUnitType = ActorTypeUtil.getActorType(unitIdOrActorId);
        if (unitActorType == null) {
            unitActorType = {
                id: unitIdOrActorId,
                name: ObjectDataUtil.getUnitName(unitIdOrActorId),
                icon: ObjectDataUtil.getUnitArt(unitIdOrActorId),
                model: ObjectDataUtil.getUnitFile(unitIdOrActorId, true),
                describe: ObjectDataUtil.getUnitDataString(unitIdOrActorId, "Ubertip"),
                maxLife: ObjectDataUtil.getUnitDataNumber(unitIdOrActorId, "HP"),
                goldCost: ObjectDataUtil.getUnitGoldCost(unitIdOrActorId),
                lumberCost: ObjectDataUtil.getUnitDataNumber(unitIdOrActorId, "lumbercost"),
                foodCost: ObjectDataUtil.getUnitDataNumber(unitIdOrActorId, "fused"),
                buildTime: ObjectDataUtil.getUnitDataNumber(unitIdOrActorId, "bldtm"),
                modelScale: ObjectDataUtil.getUnitDataNumber(unitIdOrActorId, "modelScale"),
            };
            // log.errorWithTraceBack("不存在此演员单位类型:" + unitIdOrActorId)
            // return null;
        }
        ActorTypeBuildUtil.zwId2UnitIdMap[zwUnitId] = unitActorType;
        let uid = FourCC(zwUnitId)
        //r
        let zwIds = ActorTypeBuildUtil.unitIdMapZwIds[unitActorType.id];
        if (zwIds == null) {
            zwIds = [];
            ActorTypeBuildUtil.unitIdMapZwIds[unitActorType.id] = zwIds;
        }
        zwIds.push(zwUnitId);
        //名字
        DzSetUnitTypeName(uid, unitActorType.name || unitActorType.id)
        UnitTypeUtil.setUnitIcon(uid, unitActorType.icon)
        UnitTypeUtil.setUnitTypeTip(uid, unitActorType.name || unitActorType.id)
        //描述
        UnitTypeUtil.setUnitTypeUbertip(uid, unitActorType.describe)
        if (unitActorType.modelScale) {
            UnitTypeUtil.setUnitTypeModelScale(uid, unitActorType.modelScale)
        }
        //模型
        EXSetUnitString(uid, 13, unitActorType.model);
        //建造时间
        DzSetUnitDataCacheInteger(uid, 24, 0, unitActorType.buildTime || 3);
        //黄金消耗
        DzSetUnitDataCacheInteger(uid, 32, 0, unitActorType.goldCost || 0);
        //木材消耗
        DzSetUnitDataCacheInteger(uid, 36, 0, unitActorType.lumberCost || 0);
        //占用人口
        DzSetUnitDataCacheInteger(uid, 92, 0, unitActorType.foodCost || 0);
        //占用人口


    }

    static setPlayerActorUnitTypeDisable(player: player, actorUnitId: string, disable: boolean) {
        let playerId = GetPlayerId(player);

        let cfg = ActorTypeBuildUtil.playerActorUnitTypeState[playerId];
        if (cfg == null) {
            cfg = {}
            ActorTypeBuildUtil.playerActorUnitTypeState[playerId] = cfg;
        }
        let cfgElement = cfg[actorUnitId];
        if (cfgElement == null) {
            cfgElement = {}
            cfg[actorUnitId] = cfgElement;
        }
        cfgElement.disable = disable;
    }

    static setPlayerActorUnitTypeHide(player: player, actorUnitId: string, hide: boolean) {
        let playerId = GetPlayerId(player);

        let cfg = ActorTypeBuildUtil.playerActorUnitTypeState[playerId];
        if (cfg == null) {
            cfg = {}
            ActorTypeBuildUtil.playerActorUnitTypeState[playerId] = cfg;
        }
        let cfgElement = cfg[actorUnitId];
        if (cfgElement == null) {
            cfgElement = {}
            cfg[actorUnitId] = cfgElement;
        }
        cfgElement.hide = hide;
        let zwIds = ActorTypeBuildUtil.unitIdMapZwIds[actorUnitId];
        if (zwIds) {
            for (let zwId of zwIds) {
                SetPlayerTechMaxAllowed(player, FourCC(zwId) as any, hide ? 0 : -1)
            }
        }
    }


    static getPlayerActorUnitTypeState(player: player, id: string) {
        let element = ActorTypeBuildUtil.playerActorUnitTypeState[GetPlayerId(player)]?.[id];
        return element;
    }

    static getLocalPlayerActorUnitTypeState(id: string) {
        let element = ActorTypeBuildUtil.playerActorUnitTypeState[GetPlayerId(GetLocalPlayer())]?.[id];
        return element;
    }

    static isLocalPlayerActorUnitTypeDisableState(id: string) {
        let element = ActorTypeBuildUtil.playerActorUnitTypeState[GetPlayerId(GetLocalPlayer())]?.[id];
        if (element?.disable == true) {
            return true
        }
        return false;
    }

    static isPlayerActorUnitTypeDisableState(player: player, id: string) {
        let element = ActorTypeBuildUtil.playerActorUnitTypeState[GetPlayerId(player)]?.[id];
        if (element?.disable == true) {
            return true
        }
        return false;
    }

    static isPlayerActorUnitTypeHideState(player: player, id: string) {
        let element = ActorTypeBuildUtil.playerActorUnitTypeState[GetPlayerId(player)]?.[id];
        if (element?.hide == true) {
            return true
        }
        return false;
    }

}