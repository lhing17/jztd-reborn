import UnitStateUtil from "../unit/UnitStateUtil";
import GroupUtil from "../unit/GroupUtil";
import AttributeUtil from "@/AttributeUtil";
import HeroUtil from "@/HeroUtil";

/**
 * 战力工具
 */
export default class CombatPowerUtil {

    static factor_def = 10;
    static factor_FullProperty = 5;
    static factor_MaxLife = 0.1;
    static combatScale = 1;

    /**
     * 获取玩家战力
     * 支持异步调用
     */
    static getPlayerCombatPower(playerIndex: number): number {
        let cp = 0;
        GroupClear(_tempGroup)
        GroupEnumUnitsOfPlayer(_tempGroup, Player(playerIndex), null)
        let assistant = db.getPlayerSolarData(Player(playerIndex)).assistant
        GroupUtil.for(_tempGroup, (u) => {
            if (assistant == u) {
                return
            }
            if (UnitStateUtil.getDamageMax(u) <= 1) {//不统计无攻击力的 可能是宝宝助手
                return
            }
            cp += CombatPowerUtil.getUnitCombatPower(u);
        });
        return cp;
    }

    /**
     * 获取单位(/或者英雄)战力
     */
    static getUnitCombatPower(u: unit): number {
        let combat = 0;
        //以生命值为参照数值标准
        combat += UnitStateUtil.getMaxLife(u) * CombatPowerUtil.factor_MaxLife;
        // cp += UnitStateUtil.getMaxMana(u) / 10;
        //dps
        let aspd = UnitStateUtil.getAttackSpeed(u);
        let dc = UnitStateUtil.getDamageCool(u);
        let dmgMax = UnitStateUtil.getDamageMax(u);
        if (aspd > 0 && dc > 0 && dmgMax > 0) {// 建筑等无攻击的单位 不要计算攻击战力加成
            let realSh = 1;
            let attribute = AttributeUtil.getUnitAttribute(u, false);
            if (attribute) {
                realSh += (attribute.damage_increased || 0);
                realSh += (attribute.physical_damage_increased || 0);
                realSh += (attribute.magic_damage_increased || 0);
                realSh += (attribute.physical_damage_pierce || 0);
                realSh += (attribute.magic_damage_pierce || 0);
                realSh += (attribute.magic_damage_increased || 0);
                realSh += (attribute.physical_critical_chance || 0) * (attribute.physical_critical_damage || 0);
                realSh += (attribute.magic_critical_chance || 0) * (attribute.magic_critical_damage || 0);
            }
            combat += dmgMax * realSh * (aspd / dc);
        }
        combat += UnitStateUtil.getArmor(u) * CombatPowerUtil.factor_def;
        if (IsUnitType(u, UNIT_TYPE_HERO)) {
            combat += HeroUtil.getFullProperty(u, true) * CombatPowerUtil.factor_FullProperty;
        }
        return Math.floor(combat * CombatPowerUtil.combatScale);
    }


}