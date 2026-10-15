import Cache from "@/Cache";
import ActorTypeUtil from "@/ActorTypeUtil";
import ActorTypeWarpUtil from "@/convert/ActorTypeWarpUtil";
import ActorUnitUtil from "@/ActorUnitUtil";
import ActorAbilityUtil from "@/ActorAbilityUtil";
import ObjectTemplateUtil from "@/ObjectTemplateUtil";
import PlayerUtil from "@/PlayerUtil";

export default class ActorTypeTrainUnitsUtil {
    private static _sl_baseUnitTrainUnitAbilityClass = "太阳单位演员技能训练单位";
    static cache = new Cache();

    /**
     * 将一个单位包装为建造它的 演员技能或演员物品
     * @param unitIdOrActorId
     * @param onLocalClickCheck
     * @param onBuild
     */
    static warpUnit2TrainUnitAbility(unitIdOrActorId: string) {
        return ActorTypeTrainUnitsUtil.cache.get("warpUnit2TrainUnitAbility:" + unitIdOrActorId, () => {
            let actorTypeId = "_sl_TrainUnitAbility:" + unitIdOrActorId;
            let unitActorType = ActorTypeWarpUtil.warpUnitActorType(unitIdOrActorId);
            let actorType: AppActorType = {
                id: actorTypeId,
                class: ActorTypeTrainUnitsUtil._sl_baseUnitTrainUnitAbilityClass,
                name: "雇用:" + (unitActorType.name || unitIdOrActorId),
                icon: unitActorType.icon,
                describe: unitActorType.describe,
                goldCost: unitActorType.goldCost,
                lumberCost: unitActorType.lumberCost,
                foodCost: unitActorType.foodCost,
                passive: false,
                maxCd: 1
            }
            actorType.templateAllocPolicy = "actorTypeShare"
            actorType.onAction = (actor) => {
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
                //
                let trigUnit = actor.unit;
                let trigUnitTypeIdStr = unitActorType.id
                let p = GetOwningPlayer(trigUnit)
                let x = GetUnitX(trigUnit)
                let y = GetUnitY(trigUnit)
                let facing = GetUnitFacing(trigUnit)

                let unit = ActorUnitUtil.createUnit(p, trigUnitTypeIdStr, x, y);
                let effectPath = "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportCaster.mdx";
                DestroyEffect(AddSpecialEffect(effectPath, x, y))  //移动单位
            }
            ActorTypeUtil.registerActorType(actorType)
            return actorType;
        });

    }


    static setTrainUnits2unit(unit: unit, trainUnits: string[]) {
        for (let i = 0; i < trainUnits.length; i++) {
            let upgradeUnitIdStr = trainUnits[i];
            let appActorType = ActorTypeTrainUnitsUtil.warpUnit2TrainUnitAbility(upgradeUnitIdStr);
            if (ActorAbilityUtil.isUnitHasActorAbility(unit, appActorType.id)) {
                return
            }
            let startPosNum = 1;
            if (ObjectTemplateUtil.hasUnitAbilityTemplateSpace(unit, 9, 12)) {
                startPosNum = 9;
            } else if (ObjectTemplateUtil.hasUnitAbilityTemplateSpace(unit, 5, 8)) {
                startPosNum = 5;
            }
            ActorAbilityUtil.createActorAbility(appActorType.id, unit, startPosNum)
        }


    }


}

