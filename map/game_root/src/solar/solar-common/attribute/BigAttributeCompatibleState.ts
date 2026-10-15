import AttributeUtil from "@/util/system/AttributeUtil";
import UnitUtil from "@/util/unit/UnitUtil";
import HeroUtil from "@/util/unit/HeroUtil";
import NativeFrameUtil from "@/util/frame/NativeFrameUtil";
import TextUtil from "@/util/text/TextUtil";
import SingletonUtil from "../util/lang/SingletonUtil";
import UnitStateUtil from "@/UnitStateUtil";
import MathUtil from "@/MathUtil";

/**
 *
 * PS: 此类使用局限性很大。 对魔兽不熟悉的作者请不要使用此类制作大数值，以免被无穷的各种问题折磨。
 *
 * 模拟属性(支持大数值 注意部分魔兽原生实数数值的上限为340涧 但是lua层的数字可以达到 1e+308 如果不进魔兽层的计算可以超大数值计算)
 *
 * 此状态下各种属性均使用自定义变量存储。所有修改属性的 均使用代码来修改 通过原生物品属性书 或等级升级奖励的属性值将不可用
 *
 * 通过自定义实数number类型 存储数值
 *
 * 在魔兽原本的设置属性和获取属性  走自定义属性值
 *
 * 如果超过上限 则底层设置到限制值 属性值走自定义变量存储  显示时需自行需自行用UI显示这些大值
 *
 * 注意：在大数值模式下一些方法计算并不严谨和准确 如果对数值扣的很细很准 请不要做大数值！
 * （在大属性模式下 不能斤斤计较）
 * link solar_attribute.d.ts ArmorReducesDamageFactor
 *
 */
const CJ: NoSelf = require('jass.common')
const BaseAttributeMax = 10000000;//设置为1kw 超过1.5KW属性转攻击有变化  原生最大为2**31 即21.4亿多
const BaseRealMax = 8e+37;//设置为80涧  原生最大为340涧 3.40282346638529e+38 但是浮点数有误差 用极限值加减容易出问题 所以这里取个80涧就能正常加减生命等了
export default class BigAttributeCompatibleState {


    constructor() {
        if (SingletonUtil.notFirstTime(BigAttributeCompatibleState)) {
            print("不能重复new BigAttributeCompatibleState()")
            return;
        }
        isBigAttributeMode = true;
        this.playerAttributeCompatible();//兼容 金币 和木材 可超过100万
        this.unitAttributeCompatible();//兼容 单位 攻击力 护甲 可超过21亿
        this.heroAttributeCompatible();//兼容 英雄 3维属性 可超过21亿
        this.damageCompatible();

    }


    /**
     * 伤害系统数值兼容
     */
    damageCompatible() {
        //设置伤害inf情况 计算护甲的伤害会被限制到332涧 不计算护甲的伤害类型 如法术伤害会出现inf伤害 GetEventDamage()
        let oldUnitDamageTarget = UnitDamageTarget;
        _G.UnitDamageTarget = function (this: void, whichUnit: unit, target: widget, amount: number, attack: boolean, ranged: boolean, attackType: attacktype, damageType: damagetype, weaponType: weapontype): boolean {
            gv._sl_lastDamage = amount;
            return oldUnitDamageTarget(whichUnit, target, amount, attack, ranged, attackType, damageType, weaponType);
        }
    }

    /**
     */
    heroAttributeCompatible() {
        //设置英雄3维 白字属性
        let oldSetHeroStr = SetHeroStr;
        _G.SetHeroStr = function (this: void, whichHero: unit, newStr: number, permanent: boolean): void {
            if (!IsHandle(whichHero)) {
                return
            }
            oldSetHeroStr(whichHero, MathUtil.clamp(newStr, -BaseAttributeMax, BaseAttributeMax), permanent);
            //设置到太阳属性中
            if (newStr >= BaseAttributeMax || AttributeUtil.getUnitAttribute(whichHero, false)?._SL_BA_str) {
                AttributeUtil.getUnitAttribute(whichHero, true)._SL_BA_str = newStr;
            }
            //力量奖励生命值
            if (StrHpBonus > 0 && newStr > BaseAttributeMax) {
                let addHp = (newStr - BaseAttributeMax) * StrHpBonus
                UnitUtil.setExtraHp(whichHero, addHp, "_SL_SetHeroStr") //将没有走原生力量的 力量 手动转换到生命值上去
            }

        }
        let oldSetHeroAgi = SetHeroAgi;
        _G.SetHeroAgi = function (this: void, whichHero: unit, newAgi: number, permanent: boolean): void {
            if (!IsHandle(whichHero)) {
                return
            }
            oldSetHeroAgi(whichHero, MathUtil.clamp(newAgi, -BaseAttributeMax, BaseAttributeMax), permanent);
            //设置到太阳属性中
            if (newAgi >= BaseAttributeMax || AttributeUtil.getUnitAttribute(whichHero, false)?._SL_BA_agi) {
                AttributeUtil.getUnitAttribute(whichHero, true)._SL_BA_agi = newAgi;
            }
            //敏捷奖励的护甲 在获取地方计算
        }
        let oldSetHeroInt = SetHeroInt;
        _G.SetHeroInt = function (this: void, whichHero: unit, newInt: number, permanent: boolean): void {
            if (!IsHandle(whichHero)) {
                return
            }
            oldSetHeroInt(whichHero, MathUtil.clamp(newInt, -BaseAttributeMax, BaseAttributeMax), permanent);
            //设置到太阳属性中
            if (newInt >= BaseAttributeMax || AttributeUtil.getUnitAttribute(whichHero, false)?._SL_BA_int) {
                AttributeUtil.getUnitAttribute(whichHero, true)._SL_BA_int = newInt;
            }
            //智力奖励魔法值
            if (IntManaBonus > 0 && newInt > BaseAttributeMax) {
                UnitUtil.setExtraMana(whichHero, (newInt - BaseAttributeMax) * IntManaBonus, "_SL_SetHeroInt") //将没有走原生的  手动转换上去
            }

        }
        //获取英雄3维
        let oldGetHeroStr = GetHeroStr;
        _G.GetHeroStr = function (this: void, whichHero: unit, includeBonuses: boolean): number {
            if (!IsHandle(whichHero)) {
                return 0
            }
            let val = AttributeUtil.getUnitAttribute(whichHero)?._SL_BA_str ?? oldGetHeroStr(whichHero, false)
            if (includeBonuses) {
                val += UnitUtil.getExtraStr(whichHero);
            }
            return val as any;
        }
        let oldGetHeroAgi = GetHeroAgi;
        _G.GetHeroAgi = function (this: void, whichHero: unit, includeBonuses: boolean): number {
            if (!IsHandle(whichHero)) {
                return 0
            }
            let val = AttributeUtil.getUnitAttribute(whichHero)?._SL_BA_agi ?? oldGetHeroAgi(whichHero, false)
            if (includeBonuses) {
                val += UnitUtil.getExtraAgi(whichHero);
            }
            return val as any;
        }
        let oldGetHeroInt = GetHeroInt;
        _G.GetHeroInt = function (this: void, whichHero: unit, includeBonuses: boolean): number {
            if (!IsHandle(whichHero)) {
                return 0
            }
            let val = AttributeUtil.getUnitAttribute(whichHero)?._SL_BA_int ?? oldGetHeroInt(whichHero, false)
            if (includeBonuses) {
                val += UnitUtil.getExtraInt(whichHero);
            }
            return val as any;
        }

    }

    /**
     *
     */
    unitAttributeCompatible() {
        //设置单位属性
        if (PrimaryAttackBonus > 14) {
            //因为 (21.4亿-20亿)/BaseAttributeMax = 14 超过后攻击力算法会出问题
            log.errorWithTraceBack("PrimaryAttackBonus 不能超过14!")
        }
        let oldSetUnitState = SetUnitState;
        _G.SetUnitState = function (this: void, whichUnit: unit, whichUnitState: unitstate, newVal: number): void {
            if (!IsHandle(whichUnit)) {
                return
            }
            //设置到太阳属性中 UnitStateDamageBase=白字攻击+英雄白绿主属性奖励的攻击值
            if (whichUnitState == UnitStateDamageBase) {//白字
                oldSetUnitState(whichUnit, whichUnitState, MathUtil.clamp(newVal, -20_0000_0000, 20_0000_0000));
                let realBaseDamage = newVal;
                //超过了大数值才启用 以减少误差或bug  PrimaryAttackBonus 不能超过14
                if (realBaseDamage >= 20_0000_0000 || AttributeUtil.getUnitAttribute(whichUnit, false)?._SL_BA_damage_base) {
                    if (HeroUtil.isHero(whichUnit)) {
                        let pab = HeroUtil.getHeroPrimaryValue(whichUnit, true) * PrimaryAttackBonus;
                        realBaseDamage = (newVal - pab);
                    }
                    AttributeUtil.getUnitAttribute(whichUnit, true)._SL_BA_damage_base = realBaseDamage;
                }
            } else if (whichUnitState == UnitStateArmor) { //设置总护甲值 （实际是设置白字护甲为 输入总值-绿字护甲）
                oldSetUnitState(whichUnit, whichUnitState, MathUtil.clamp(newVal, -BaseAttributeMax, BaseAttributeMax));//护甲最大设置到1亿
                let realBaseArmor = newVal - UnitUtil.getExtraDef(whichUnit);
                /**
                 * 英雄的真实基础护甲为 UnitStateArmor - 附加绿字护甲 -  英雄主属性(白+绿)奖励的攻击值
                 */
                if (HeroUtil.isHero(whichUnit)) {
                    let greenArmor = GetHeroAgi(whichUnit, true) * AgiDefenseBonus;
                    realBaseArmor = realBaseArmor - greenArmor;
                }
                if (realBaseArmor >= BaseAttributeMax || AttributeUtil.getUnitAttribute(whichUnit, false)?._SL_BA_armor) {
                    AttributeUtil.getUnitAttribute(whichUnit, true)._SL_BA_armor = realBaseArmor;
                }
            } else if (whichUnitState == UNIT_STATE_MAX_LIFE) {
                if (isDebug && newVal < 0) {
                    log.errorWithTraceBack("不能对单位设置负数最大生命值!")
                }
                if (newVal >= BaseRealMax) {
                    //防止数量超过340涧后 导致单位生命值为负 然后暴毙。但是实数有误差使用极限值会导致计算出问题
                    oldSetUnitState(whichUnit, whichUnitState, MathUtil.min(BaseRealMax, newVal));
                    AttributeUtil.getUnitAttribute(whichUnit, true)._SL_BA_max_life = newVal;
                } else {
                    oldSetUnitState(whichUnit, whichUnitState, newVal);
                }
            } else if (whichUnitState == UNIT_STATE_MAX_MANA) {
                if (isDebug && newVal < 0) {
                    log.errorWithTraceBack("不能对单位设置负数最大魔法值值!")
                }
                if (newVal >= BaseRealMax) {
                    oldSetUnitState(whichUnit, whichUnitState, MathUtil.min(BaseRealMax, newVal));
                    AttributeUtil.getUnitAttribute(whichUnit, true)._SL_BA_max_mana = newVal;
                } else {
                    oldSetUnitState(whichUnit, whichUnitState, newVal);
                }
            } else if (whichUnitState == UNIT_STATE_LIFE) { //todo 2. 底层生命设置的最大80涧 应该按比例来设置生命
                let _SL_BA_max_life = AttributeUtil.getUnitAttribute(whichUnit, false)?._SL_BA_max_life
                if (_SL_BA_max_life && _SL_BA_max_life >= BaseRealMax) {
                    let moNiLife = newVal / _SL_BA_max_life * BaseRealMax;
                    oldSetUnitState(whichUnit, whichUnitState, moNiLife);
                } else {
                    oldSetUnitState(whichUnit, whichUnitState, newVal);
                }
            } else if (whichUnitState == UNIT_STATE_MANA) {
                let _SL_BA_max_mana = AttributeUtil.getUnitAttribute(whichUnit, false)?._SL_BA_max_mana
                if (_SL_BA_max_mana && _SL_BA_max_mana >= BaseRealMax) {
                    let moNiMana = newVal / _SL_BA_max_mana * BaseRealMax;
                    oldSetUnitState(whichUnit, whichUnitState, moNiMana);
                } else {
                    oldSetUnitState(whichUnit, whichUnitState, newVal);
                }
            } else {
                oldSetUnitState(whichUnit, whichUnitState, newVal);
            }
        }
        //获取单位属性
        let oldGetUnitState = GetUnitState;
        _G.GetUnitState = function (this: void, whichUnit: unit, whichUnitState: unitstate): number {
            if (!IsHandle(whichUnit)) {
                return 0
            }
            //设置到太阳属性中
            if (whichUnitState == UNIT_STATE_MAX_LIFE) {
                let val = AttributeUtil.getUnitAttribute(whichUnit)?._SL_BA_max_life;
                if (val == null) {
                    let ba = oldGetUnitState(whichUnit, whichUnitState);
                    return ba;
                }
                return val as any;
            } else if (whichUnitState == UNIT_STATE_MAX_MANA) {
                let val = AttributeUtil.getUnitAttribute(whichUnit)?._SL_BA_max_mana;
                if (val == null) {
                    let ba = oldGetUnitState(whichUnit, whichUnitState);
                    return ba;
                }
                return val as any;

            } else if (whichUnitState == UNIT_STATE_LIFE) {
                //todo 实际获得的生命可能会小于 正常的生命
                //todo 1. 部分伤害系统造成伤害时没有走设置生命
                let _SL_BA_max_life = AttributeUtil.getUnitAttribute(whichUnit, false)?._SL_BA_max_life;
                if (_SL_BA_max_life == null || _SL_BA_max_life < BaseRealMax) {
                    let ba = oldGetUnitState(whichUnit, whichUnitState);
                    return ba;
                }
                //走模拟系统 当前魔法值由基础魔法百分比x最大魔法值算出
                return oldGetUnitState(whichUnit, whichUnitState) / BaseRealMax * _SL_BA_max_life;
            } else if (whichUnitState == UNIT_STATE_MANA) {
                let _SL_BA_max_mana = AttributeUtil.getUnitAttribute(whichUnit, false)?._SL_BA_max_mana;
                if (_SL_BA_max_mana == null || _SL_BA_max_mana < BaseRealMax) {
                    let ba = oldGetUnitState(whichUnit, whichUnitState);
                    return ba;
                }
                //走模拟系统 当前魔法值由基础魔法百分比x最大魔法值算出
                return oldGetUnitState(whichUnit, whichUnitState) / BaseRealMax * _SL_BA_max_mana;
            } else if (whichUnitState == UnitStateDamageBase) {
                /**
                 * 基础伤害
                 * 基础攻击力 = 物编里定义的 dmgplus1
                 * 白字攻击 =   基础攻击力+白字主属性奖励的攻击
                 * unitstate UnitStateDamageBase获取的攻击 = 基础攻击力+白字主属性奖励的攻击+绿字主属性奖励的攻击
                 *
                 * */
                let dmgplus = AttributeUtil.getUnitAttribute(whichUnit)?._SL_BA_damage_base;
                if (HeroUtil.isHero(whichUnit)) {
                    if (dmgplus == null) {//如果是英雄 则加上英雄的白字主属性奖励的攻击力
                        dmgplus = oldGetUnitState(whichUnit, whichUnitState) - (BigAttributeCompatibleState.getHeroPrimaryValueByBaseCJ(whichUnit, true) * PrimaryAttackBonus);
                    }
                    let primaryValue = HeroUtil.getHeroPrimaryValue(whichUnit, true);
                    let val = dmgplus + (primaryValue * PrimaryAttackBonus);
                    //小数值走原生更精准
                    if (val > 0 && val < 21_0000_0000) {
                        return oldGetUnitState(whichUnit, whichUnitState);
                    }else {
                        return val;
                    }
                } else {
                    if (dmgplus == null) {
                        return oldGetUnitState(whichUnit, whichUnitState);
                    }
                }
                return dmgplus as any;
            } else if (whichUnitState == UnitStateDamageBonus) {//附加攻击力 (英雄绿字=附加攻击力+绿字主属性奖励的攻击力)
                return UnitUtil.getExtraAttack(whichUnit);
            } else if (whichUnitState == UnitStateArmor) { //获取绿字加白字护甲
                //单位护甲
                let val = AttributeUtil.getUnitAttribute(whichUnit)?._SL_BA_armor

                if (val == null) {
                    val = oldGetUnitState(whichUnit, whichUnitState);
                    //todo 如果给死亡的单位获取护甲 会不会出现bug？？  (通常不会对死亡单位 执行获取护甲获修改护甲的操作！)
                    if (UnitStateUtil.isAlive(whichUnit)) {
                        val = val - UnitUtil.getExtraDef(whichUnit);
                        /**
                         * 英雄的真实基础护甲为 UnitStateArmor - 附加绿字护甲 -  英雄主属性(白+绿)奖励的攻击值
                         */
                        if (HeroUtil.isHero(whichUnit)) {
                            //这里应该获取原始护甲
                            let greenArmor = CJ.GetHeroAgi(whichUnit, true) * AgiDefenseBonus;
                            val = val - greenArmor;
                        }
                    }

                }
                val = val + UnitUtil.getExtraDef(whichUnit);
                //英雄属性奖励护甲
                if (HeroUtil.isHero(whichUnit) && AgiDefenseBonus > 0) {//如果是英雄 则加上英雄的主属性奖励的护甲
                    //
                    let primaryAndBonusValue = GetHeroAgi(whichUnit, true);
                    val = val + primaryAndBonusValue * AgiDefenseBonus
                    //
                }
                // return val + AgiDefenseBase;
                return val as any;
            } else if (whichUnitState == UnitStateDamageMix || whichUnitState == UnitStateDamageMax) {//攻击最小值和攻击最大值 包含绿字
                let dmgplus = AttributeUtil.getUnitAttribute(whichUnit)?._SL_BA_damage_base;
                let isHero = HeroUtil.isHero(whichUnit);
                if (dmgplus == null) {
                    dmgplus = oldGetUnitState(whichUnit, UnitStateDamageBase);
                    if (isHero) {//如果是英雄 则加上英雄的主属性奖励的攻击力
                        let primaryAndBonusValue = BigAttributeCompatibleState.getHeroPrimaryValueByBaseCJ(whichUnit, true);
                        let zsyAB = primaryAndBonusValue * PrimaryAttackBonus
                        dmgplus = dmgplus - zsyAB;
                    }
                }
                let extVal = UnitUtil.getExtraAttack(whichUnit);
                let dmgMax = dmgplus + extVal;
                if (isHero) {//如果是英雄 则加上英雄的主属性奖励的攻击力
                    let primaryAndBonusValue = HeroUtil.getHeroPrimaryValue(whichUnit, true);
                    dmgMax = dmgMax + primaryAndBonusValue * PrimaryAttackBonus
                }
                return dmgMax as any;
            }
            return oldGetUnitState(whichUnit, whichUnitState);
        }
    }

    /**
     * 兼容玩家属性限制
     */
    //
    playerAttributeCompatible() {
        //设置玩家属性
        let oldSetPlayerState = SetPlayerState;
        _G.SetPlayerState = function (this: void, whichPlayer: player, whichPlayerState: playerstate, value: number): void {
            if (!IsHandle(whichPlayer)) {
                return
            }
            //设置到原生属性中 超过100万则设置100万
            let temp = Math.min(value, 1000000);
            oldSetPlayerState(whichPlayer, whichPlayerState, temp)
            //设置到太阳属性中
            if (whichPlayerState == PLAYER_STATE_RESOURCE_GOLD) {
                DzFrameSetText(NativeFrameUtil.getGoldText(), TextUtil.toCnUnit(value))
                if (value > 100_0000 || AttributeUtil.getPlayerAttribute(whichPlayer, false)?._SL_BA_gold) {
                    AttributeUtil.getPlayerAttribute(whichPlayer, true)._SL_BA_gold = value;
                    AttributeUtil.getPlayerAttribute(whichPlayer, true)._SL_BA_gold_temp = temp;
                }
            } else if (whichPlayerState == PLAYER_STATE_RESOURCE_LUMBER) {
                DzFrameSetText(NativeFrameUtil.getLumberText(), TextUtil.toCnUnit(value))
                if (value > 100_0000 || AttributeUtil.getPlayerAttribute(whichPlayer, false)?._SL_BA_lumber) {
                    AttributeUtil.getPlayerAttribute(whichPlayer, true)._SL_BA_lumber = value;
                    AttributeUtil.getPlayerAttribute(whichPlayer, true)._SL_BA_lumber_temp = temp;
                }
            }
        }

        //获取玩家属性
        let oldGetPlayerState = GetPlayerState;
        _G.GetPlayerState = function (this: void, whichPlayer: player, whichPlayerState: playerstate): number {
            if (!IsHandle(whichPlayer)) {
                return 0
            }
            //设置到太阳属性中
            if (whichPlayerState == PLAYER_STATE_RESOURCE_GOLD) {
                return AttributeUtil.getPlayerAttribute(whichPlayer)?._SL_BA_gold ??
                    oldGetPlayerState(whichPlayer, whichPlayerState) as any;
            } else if (whichPlayerState == PLAYER_STATE_RESOURCE_LUMBER) {
                return AttributeUtil.getPlayerAttribute(whichPlayer)?._SL_BA_lumber ??
                    oldGetPlayerState(whichPlayer, whichPlayerState) as any;
            }
            return oldGetPlayerState(whichPlayer, whichPlayerState);
        }
        //更新玩家属性消耗自定义值
        let updateTrigger = CreateTrigger();
        TriggerRegisterTimerEvent(updateTrigger, 1, true);
        TriggerAddAction(updateTrigger, () => {
            for (let i = 0; i < bj_MAX_PLAYER_SLOTS; i++) {
                let player = Player(i);
                if (GetPlayerController(player) == MAP_CONTROL_USER && GetPlayerSlotState(player) == PLAYER_SLOT_STATE_PLAYING) {
                    //gold
                    let playerAttribute = AttributeUtil.getPlayerAttribute(player, true);
                    let nowTempGold = oldGetPlayerState(player, PLAYER_STATE_RESOURCE_GOLD);
                    if (playerAttribute._SL_BA_gold) {
                        if (!playerAttribute._SL_BA_gold_temp) {
                            playerAttribute._SL_BA_gold_temp = nowTempGold;
                        } else {
                            let add = nowTempGold - playerAttribute._SL_BA_gold_temp;
                            playerAttribute._SL_BA_gold += add;
                            //刷新金币
                            SetPlayerState(player, PLAYER_STATE_RESOURCE_GOLD, playerAttribute._SL_BA_gold)
                        }
                    }
                    //lumber
                    let nowTempLumber = oldGetPlayerState(player, PLAYER_STATE_RESOURCE_LUMBER);
                    if (playerAttribute._SL_BA_lumber) {
                        if (!playerAttribute._SL_BA_lumber_temp) {
                            playerAttribute._SL_BA_lumber_temp = nowTempLumber;
                        } else {
                            let addL = nowTempLumber - playerAttribute._SL_BA_lumber_temp;
                            playerAttribute._SL_BA_lumber += addL;
                            //刷新木材
                            SetPlayerState(player, PLAYER_STATE_RESOURCE_LUMBER, playerAttribute._SL_BA_lumber)
                        }
                    }
                }
            }
        });
    }

    /**
     * 获取英雄主属性的属性值 使用cj的函数 这样就不会受到大数值重写的影响
     * includeBonuses (默认 白字加绿字奖励)
     */
    static getHeroPrimaryValueByBaseCJ(handle: unit, includeBonuses = true): number {
        let Primary = HeroUtil.getHeroPrimary(handle);
        if (Primary == "STR") {
            return CJ.GetHeroStr(handle, includeBonuses)
        } else if (Primary == "AGI") {
            return CJ.GetHeroAgi(handle, includeBonuses)
        } else if (Primary == "INT") {
            return CJ.GetHeroInt(handle, includeBonuses)
        }
        return 0;
    }
}