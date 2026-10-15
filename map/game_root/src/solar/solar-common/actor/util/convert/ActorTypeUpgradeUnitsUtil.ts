import Cache from "@/Cache";
import ActorTypeUtil from "@/ActorTypeUtil";
import ActorTypeWarpUtil from "@/convert/ActorTypeWarpUtil";
import ActorUnitUtil from "@/ActorUnitUtil";
import BaseUtil from "@/BaseUtil";
import ObjectTemplateUtil from "@/ObjectTemplateUtil";
import PlayerUtil from "@/PlayerUtil";
import UnitStateUtil from "@/UnitStateUtil";
import ActorAbility from "@/ActorAbility";
import ActorAbilityUtil from "@/ActorAbilityUtil";
import Actor from "@/Actor";
import ItemUtil from "@/ItemUtil";
import AbilityButtonUtil from "@/AbilityButtonUtil";

export default class ActorTypeUpgradeUnitsUtil {
    static _sl_baseUnitUpgradeUnitAbilityClass = "太阳单位演员技能升级到单位";
    static cache = new Cache();

    /**
     * 将一个单位包装为建造它的 演员技能或演员物品
     * @param unitIdOrActorId
     */
    static warpUnit2UpgradeUnitAbility(unitIdOrActorId: string) {
        return ActorTypeUpgradeUnitsUtil.cache.get("warpUnit2UpgradeUnitAbility:" + unitIdOrActorId, () => {
            let actorTypeId = "_sl_UpgradeUnitAbility:" + unitIdOrActorId;
            let unitActorType = ActorTypeWarpUtil.warpUnitActorType(unitIdOrActorId);
            let actorType: AppActorType = {
                id: actorTypeId,
                class: ActorTypeUpgradeUnitsUtil._sl_baseUnitUpgradeUnitAbilityClass,
                name: "升级到:" + (unitActorType.name || unitIdOrActorId),
                icon: unitActorType.icon,
                describe: unitActorType.describe,
                goldCost: unitActorType.goldCost,
                lumberCost: unitActorType.lumberCost,
                foodCost: unitActorType.foodCost,
                passive: false,
                maxCd: 0,
                upgrade2UnitId: unitIdOrActorId,
            }
            actorType.templateAllocPolicy = "actorTypeShare"
            actorType.onAction = (actor) => {
                // BaseUtil.runLater(1, () => {
                ActorTypeUpgradeUnitsUtil.upgradeUnit(actor, actorType, unitActorType.id)
                // });
            }
            ActorTypeUtil.registerActorType(actorType)
            return actorType;
        });

    }

    static upgradeUnit(actor: Actor, actorType: AppActorType, newUnitTypeId: string) {
        if (PlayerUtil.getGold(GetOwningPlayer(actor.unit)) < (actorType.goldCost || 0)) {
            PlayerUtil.message("|cffff0000金币不足!", 10, GetOwningPlayer(actor.unit),)
            return false;
        }
        if (PlayerUtil.getLumber(GetOwningPlayer(actor.unit)) < (actorType.lumberCost || 0)) {
            PlayerUtil.message("|cffff0000木材不足!", 10, GetOwningPlayer(actor.unit),)
            return false;
        }
        if (actorType.foodCost && actorType.foodCost > 0 && PlayerUtil.getFoodCapLeft(GetOwningPlayer(actor.unit)) < actorType.foodCost) {
            PlayerUtil.message("|cffff0000人口不足!", 10, GetOwningPlayer(actor.unit),)
            return false;
        }
        PlayerUtil.costEnoughState(actor.unitOwner, actorType.goldCost, actorType.lumberCost)
        let trigUnit = actor.unit;
        let p = GetOwningPlayer(trigUnit)
        let x = GetUnitX(trigUnit)
        let y = GetUnitY(trigUnit)
        let facing = GetUnitFacing(trigUnit)
        let needSelect = (selection() == trigUnit);
        if (needSelect == false && get_select_list) {
            let selectList = get_select_list();
            for (let temp of selectList) {
                if (temp == trigUnit) {
                    needSelect = true
                    break
                }
            }
        }
        //
        let items = ItemUtil.getAllItemInfoFromUnit(trigUnit);
        if (items) {
            for (let item of items) {
                UnitRemoveItem(trigUnit, item.item)
            }
        }
        let lifeP = UnitStateUtil.getUnitLifeP(trigUnit);
        RemoveUnit(trigUnit);
        let unit = ActorUnitUtil.createUnit(p, newUnitTypeId, x, y, facing);
        UnitStateUtil.setUnitLifeP(unit, lifeP);
        if (items) {
            for (let item of items) {
                UnitAddItem(unit, item.item)
                UnitDropItemSlot(unit, item.item, item.index);
            }
        }
        if (needSelect) {
            SelectUnit(unit, true)
        }
        let buildTime: number = 3;
        let unitActor: AppActorUnitType = ActorTypeUtil.getActorType(newUnitTypeId);
        if (unitActor?.buildTime) {
            buildTime = unitActor.buildTime;
        }
        ActorTypeUpgradeUnitsUtil.showUnitBirthAnim(unit, buildTime);
        se.emit("升级开始", unit);
        DzUnitSilence(unit, true)
        BaseUtil.runLater(buildTime, () => {
            DzUnitSilence(unit, false)
            se.emit("升级完成", unit);
        });
    }

    static showUnitBirthAnim(unit: unit, dur: number = 1) {
        SetUnitAnimation(unit, "birth");
        SetUnitTimeScale(unit, 30 / dur)
        let execCount: number = math.floor(dur * 10);
        let lifeP = UnitStateUtil.getUnitLifeP(unit);
        UnitStateUtil.setUnitLifeP(unit, lifeP * 0.8 + 0.01);
        let onelife = lifeP * 0.2 / execCount + 0.001
        BaseUtil.runLater(0.1, (count, maxCount) => {
            UnitStateUtil.addUnitLifeByMaxLifeP(unit, onelife);
            if (count == maxCount) {
                SetUnitAnimation(unit, "stand");
                SetUnitTimeScale(unit, 1)
            }
        }, execCount, true);
    }


    /**
     * 升级技能全局通用一个模版  以支持框选多个单位统一升级
     * @param unit
     * @param upgradeUnits
     */
    static setUpgradeUnits2unit(unit: unit, upgradeUnits: string[]) {
        for (let i = 0; i < upgradeUnits.length; i++) {
            let upgradeUnitIdStr = upgradeUnits[i];
            let appActorType = ActorTypeUpgradeUnitsUtil.warpUnit2UpgradeUnitAbility(upgradeUnitIdStr);
            if (ActorAbilityUtil.isUnitHasActorAbility(unit, appActorType.id)) {
                return
            }
            let startPosNum = 1;
            if (ObjectTemplateUtil.hasUnitAbilityTemplateSpace(unit, 9, 12)) {
                startPosNum = 9;
            } else if (ObjectTemplateUtil.hasUnitAbilityTemplateSpace(unit, 5, 8)) {
                startPosNum = 5;
            } else {
                startPosNum = 1;
            }
            //
            let actorAbility = new ActorAbility(appActorType.id, unit, startPosNum);
            actorAbility.setHotKey(AbilityButtonUtil.getHotKeyByNumber(actorAbility.posNum))
        }
    }


}

