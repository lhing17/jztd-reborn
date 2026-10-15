import VestUtil from "@/VestUtil";
import PlayerUtil from "@/PlayerUtil";
import TargetType from "@/TargetType";
import DataBase from "@/DataBase";
import BaseUtil from "@/BaseUtil";

/**
 * 马甲技能工具
 *
 * 封装 创建马甲并添加技能 然后命令马甲释放
 *
 */
export default class VestAbilityUtil {


    /**
     * 变形术
     * 变羊
     * polymorph
     */
    static polymorph(target: unit, dur: number) {
        let vest = VestUtil.createVest(PlayerUtil.neutralPassivePlayer(), GetUnitX(target), GetUnitY(target));
        const abilityId = "ACpy";
        UnitAddAbility(vest, abilityId)
        let ability = EXGetUnitAbility(vest, abilityId);
        //最大等级限制
        EXSetAbilityDataReal(ability, 1, ABILITY_DATA_DATA_A, 1000)
        EXSetAbilityDataReal(ability, 1, ABILITY_DATA_DUR, dur)
        EXSetAbilityDataReal(ability, 1, ABILITY_DATA_HERODUR, dur)
        EXSetAbilityDataInteger(ability, 1, ABILITY_DATA_TARGS, TargetType.notself)
        IncUnitAbilityLevel(vest, abilityId)
        DecUnitAbilityLevel(vest, abilityId)
        IssueTargetOrder(vest, "polymorph", target)
    }

    /**
     * 闪电链
     * @param source
     * @param target
     * @param damage
     * @param targetCountMax
     * @param area
     * @param damageAttenuation
     */
    static lightningChain(source: unit, target: unit, damage: number, targetCountMax: number = 4, area: number = 1000, damageAttenuation = 0.1) {
        let vest = VestUtil.createVest(GetOwningPlayer(source), GetUnitX(source), GetUnitY(source));
        const abilityId = "ACcl";
        UnitAddAbility(vest, abilityId)
        let ability = EXGetUnitAbility(vest, abilityId);
        //最大等级限制
        EXSetAbilityDataReal(ability, 1, ABILITY_DATA_DATA_A, damage)
        EXSetAbilityDataReal(ability, 1, ABILITY_DATA_DATA_B, targetCountMax)
        EXSetAbilityDataReal(ability, 1, ABILITY_DATA_DATA_C, damageAttenuation)
        EXSetAbilityDataReal(ability, 1, ABILITY_DATA_AREA, area)
        IncUnitAbilityLevel(vest, abilityId)
        DecUnitAbilityLevel(vest, abilityId)
        IssueTargetOrder(vest, "chainlightning", target)
    }


    /**
     * 隐形术
     */
    static invisibility(target: unit, dur: number) {
        const abilityId = "Apiv";
        VestAbilityUtil.addAbilityIfNotHave(target, dur, abilityId)
    }


    /**
     * 根据时间添加持续一段时间的技能
     * @param unitHandle
     * @param dur
     * @param abilityId
     */
    static addAbilityIfNotHave(unitHandle: unit, dur: number, abilityId: string): boolean {
        let unitSolarData = DataBase.getUnitSolarData(unitHandle, true);
        let sdKey = "addAbilityIfNotHave_" + abilityId;
        let addAbilityIfNotHave_ = unitSolarData[sdKey];
        //单位是无敌的 且之前没有通过addAbilityIfNotHave_的方式添加无敌
        if (GetUnitAbilityLevel(unitHandle, abilityId) > 0 && addAbilityIfNotHave_ == null) {
            return false;
        }
        let newaddAbilityIfNotHave = _g_time + (Math.floor(dur * 100) * 10);
        //优先使用更长时间的无敌
        if (addAbilityIfNotHave_ && addAbilityIfNotHave_ >= newaddAbilityIfNotHave) {
            return false;
        }
        unitSolarData[sdKey] = newaddAbilityIfNotHave;
        //用这个设置 游戏底层也是添加移除 Avul技能
        UnitAddAbility(unitHandle, abilityId);
        BaseUtil.runLater(dur, () => {
            //判断一下无敌时间再 解除 (通常只有最后设置的无敌能解除无敌)
            let solarDataTemp = DataBase.getUnitSolarData(unitHandle, false);
            if (solarDataTemp?.[sdKey] == null || _g_time >= solarDataTemp[sdKey]) {
                UnitRemoveAbility(unitHandle, abilityId);
                if (solarDataTemp) {
                    solarDataTemp.addAbilityIfNotHave_ = null;
                }
            }
        });
    }

}