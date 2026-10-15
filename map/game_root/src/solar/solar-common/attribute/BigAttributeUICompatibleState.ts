import UnitUtil from "@/util/unit/UnitUtil";
import NativeFrameUtil from "@/util/frame/NativeFrameUtil";
import TextUtil from "@/util/text/TextUtil";
import {Trigger} from "@/w3ts/handles/trigger";
import ColorStr from "../constant/ColorStr";
import {Frame} from "@/w3ts/handles/frame";
import BaseUtil from "@/util/BaseUtil";
import SelectUtil from "@/util/unit/SelectUtil";
import HeroUtil from "@/util/unit/HeroUtil";
import ExFrameApiUtil from "../util/frame/ExFrameApiUtil";
import SingletonUtil from "../util/lang/SingletonUtil";
import UnitStateUtil from "@/UnitStateUtil";
import FramePoint from "@/FramePoint";
import ActorFrameUtil from "@/ActorFrameUtil";
import MessageUtil from "@/MessageUtil";


const textHeight = 0.01;
const textHeight_unitStateInfo = 0.0085;
export default class BigAttributeUICompatibleState {
    static config = {
        // 精准算出白字跟绿字的具体值 白字 绿字 需要考虑  骰子面数 英雄主属性加成 如开启显示白绿字  偶尔会有几点到几十点的骰子数误差
        isShowGreenAttack: true,//设置为false 则显示白字绿字的总和
        isShowGreenArmor: true,
        /** 移除攻击和护甲图标 以免鼠标移动上去看到原始的数值信息 (小数值模式也能设false给玩家更好的数值显示体验)*/
        removeAttackIcon: false,
        removeArmorIcon: false
    };


    //
    static goldFrame: number;
    static lumberFrame: number;
    static hpFrame: number;
    static manaFrame: number;
    //
    //单位面板容器 选中无攻击的中立单位不会显示
    static unitUIContainer: number;
    //单位护甲容器 多选时还是会显示这个
    static unitArmorContainer: number;
    static heroUIContainer: number;
    //
    static hpBackdropFrame: number;
    static manaBackdropFrame: number;
    //unit
    static attackValueFrame: number;
    static armorValueFrame: number;
    static heroStrValueFrame: number;
    static heroAgiValueFrame: number;
    static heroIntValueFrame: number;

    constructor() {
        if (SingletonUtil.notFirstTime(BigAttributeUICompatibleState)) {
            print("不能重复new BigAttributeUICompatibleState()")
            return;
        }
        BaseUtil.runLater(0.1, () => {
            this.moveNativeFrame();
            this.createUI();
            //
            if (isEmbedJapi) {
                MessageUtil.addHookEventCallBack("select_unit", () => {
                    this.refreshSolarUI();
                    return true;
                })
            }
            let trigger = new Trigger();
            //内置可以实时监听选择单位时刷新 所以这里有内置就间隔久点再刷新
            trigger.registerTimerEvent(isEmbedJapi ? 0.3 : 0.1, true);
            trigger.addAction(this.refreshSolarUI)
        });
    }

    refreshSolarUI(this: void) {
        DzFrameSetText(BigAttributeUICompatibleState.goldFrame, TextUtil.toCnUnit(GetPlayerState(GetLocalPlayer(), PLAYER_STATE_RESOURCE_GOLD)))
        DzFrameSetText(BigAttributeUICompatibleState.lumberFrame, TextUtil.toCnUnit(GetPlayerState(GetLocalPlayer(), PLAYER_STATE_RESOURCE_LUMBER)))
        //
        let unit = SelectUtil.getRealSelectUnit();
        if (!IsHandle(unit)) {
            BigAttributeUICompatibleState.showSolarUI(false);
            return
        }
        //生命值
        let life = GetUnitState(unit, UNIT_STATE_LIFE);
        let maxLife = GetUnitState(unit, UNIT_STATE_MAX_LIFE);
        let bfbLife = R2I(life * 100 / maxLife)
        let hpText = TextUtil.toCnUnit(life) + "/" + TextUtil.toCnUnit(maxLife) + `(${bfbLife})%`
        if (bfbLife > 80) {
            hpText = ColorStr.green + hpText;
        } else if (bfbLife > 40) {
            hpText = ColorStr.yellow + hpText;
        } else {
            hpText = ColorStr.red + hpText;
        }
        DzFrameSetText(BigAttributeUICompatibleState.hpFrame, hpText)
        //魔法值
        let mana = GetUnitState(unit, UNIT_STATE_MANA);
        let maxMana = GetUnitState(unit, UNIT_STATE_MAX_MANA);
        if (maxMana && maxMana > 0) {
            let bfbMana = R2I(mana * 100 / maxMana) + "%"
            let manaText = TextUtil.toCnUnit(mana) + " / " + TextUtil.toCnUnit(maxMana) + `(${bfbMana})`
            DzFrameSetText(BigAttributeUICompatibleState.manaFrame, manaText)
        } else {
            //没有魔法值的单位
            DzFrameSetText(BigAttributeUICompatibleState.manaFrame, "")
        }
        /**
         * 检测显示
         */
        if (get_select_list) {
            let selectList = get_select_list();
            if (selectList && selectList.length > 1) {
                BigAttributeUICompatibleState.showSolarUI(false, false, true);
                return
            }
        }
        if (HeroUtil.isHero(unit)) {
            BigAttributeUICompatibleState.showSolarUI(true, true);
        } else {
            BigAttributeUICompatibleState.showSolarUI(true, false);
        }
        /**
         * 单位详细信息
         */
        let aAttack = GetUnitState(unit, UnitStateDamageMix)
        if (BigAttributeUICompatibleState.config.isShowGreenAttack) {
            let lvAttack = GetUnitState(unit, UnitStateDamageBonus);
            // 绿字= 附加攻击力+绿字主属性奖励的攻击力
            if (HeroUtil.isHero(unit)) {
                lvAttack += HeroUtil.getHeroPrimaryBonusValue(unit) * PrimaryAttackBonus;
            }
            let bAttack = aAttack - lvAttack;
            if (bAttack < 21_0000_0000 && bAttack > -21_0000_0000) {
                bAttack = Math.round(bAttack);
            }
            if (lvAttack < 21_0000_0000 && lvAttack > -21_0000_0000) {
                lvAttack = Math.round(lvAttack);
            }
            let blText = TextUtil.toCnUnit(bAttack)
            if (lvAttack > 0) {
                blText = blText + "  " + ColorStr.green + "+" + TextUtil.toCnUnit(lvAttack);
            } else if (lvAttack < -20) { //负攻击力 忽略100以下 //不计算骰子数奖励信息
                blText = blText + "  " + ColorStr.red + TextUtil.toCnUnit(lvAttack);
            }
            DzFrameSetText(BigAttributeUICompatibleState.attackValueFrame, blText)
        } else {
            DzFrameSetText(BigAttributeUICompatibleState.attackValueFrame, TextUtil.toCnUnit(aAttack))
        }

        //护甲
        let armorText = null;
        if (UnitStateUtil.isInvulnerable(unit)) {
            armorText = "|cffff0000无敌的"
        } else if (BigAttributeUICompatibleState.config.isShowGreenArmor) {
            //英雄绿字护甲 = 附加护甲+英雄绿字敏捷加的护甲
            //英雄白字护甲 = 总护甲-绿字护甲
            let greenArmor = UnitUtil.getExtraDef(unit);
            if (HeroUtil.isHero(unit)) {
                greenArmor += (GetHeroAgi(unit, true) - GetHeroAgi(unit, false)) * AgiDefenseBonus;
            }
            let baseDef = GetUnitState(unit, UnitStateArmor) - greenArmor;
            if (baseDef < 1000000) {
                //整数显示
                armorText = TextUtil.toCnUnit(Math.round(baseDef));
            } else {
                //大数值 实数显示
                armorText = TextUtil.toCnUnit(baseDef);
            }
            let greenArmorText = TextUtil.toCnUnit(greenArmor > 1000000 ? greenArmor : Math.round(greenArmor));
            if (greenArmor > 0) {
                armorText = armorText + "  " + ColorStr.green + "+" + greenArmorText
            } else if (greenArmor < 0) {
                armorText = armorText + "  " + ColorStr.red + greenArmorText;
            }
        } else {
            let allDef = GetUnitState(unit, UnitStateArmor);
            armorText = TextUtil.toCnUnit(allDef > 1000000 ? allDef : Math.round(allDef));
        }
        DzFrameSetText(BigAttributeUICompatibleState.armorValueFrame, armorText)
        //力量文本
        let bStr = GetHeroStr(unit, false)
        let blStr = GetHeroStr(unit, true)
        let strText = TextUtil.toCnUnit(bStr)
        if (bStr != blStr) {
            strText = strText + "  " + ColorStr.green + "+" + TextUtil.toCnUnit(blStr - bStr);
        }
        DzFrameSetText(BigAttributeUICompatibleState.heroStrValueFrame, strText)
        //敏捷文本
        let bAgi = GetHeroAgi(unit, false)
        let blAgi = GetHeroAgi(unit, true)
        let agiText = TextUtil.toCnUnit(bAgi)
        if (bAgi != blAgi) {
            agiText = agiText + "  " + ColorStr.green + "+" + TextUtil.toCnUnit(blAgi - bAgi);
        }

        DzFrameSetText(BigAttributeUICompatibleState.heroAgiValueFrame, agiText)
        //智力文本
        let bInt = GetHeroInt(unit, false)
        let blInt = GetHeroInt(unit, true)
        let intText = TextUtil.toCnUnit(bInt)
        if (bInt != blInt) {
            intText = intText + "  " + ColorStr.green + "+" + TextUtil.toCnUnit(blInt - bInt);
        }
        DzFrameSetText(BigAttributeUICompatibleState.heroIntValueFrame, intText)
    }


    /**
     * 创建太阳模拟UI
     */
    createUI() {
        /**
         * 创建跟随原生ui的ui容器
         */
        // let uid1 = AsyncUtil.getUUIDAsync();
        // let uid2 = AsyncUtil.getUUIDAsync();
        // let uid3 = AsyncUtil.getUUIDAsync();
        // let sfUnit = DzCreateSimpleFrame("_sl_simpleframe_and_frame", NativeFrameUtil.getUnitStatePanel(), uid1)
        // let sfUnitHj = DzCreateSimpleFrame("_sl_simpleframe_and_frame", , uid2)
        // let sfHero = DzCreateSimpleFrame("_sl_simpleframe_and_frame", NativeFrameUtil.getHeroStatePanel(), uid3)

        BigAttributeUICompatibleState.unitUIContainer = ExFrameApiUtil.createBaseFrameInSimpleFrame(NativeFrameUtil.getUnitStatePanel())
        BigAttributeUICompatibleState.unitArmorContainer = ExFrameApiUtil.createBaseFrameInSimpleFrame(DzSimpleFrameFindByName("SimpleInfoPanelIconArmor", 0))
        BigAttributeUICompatibleState.heroUIContainer = ExFrameApiUtil.createBaseFrameInSimpleFrame(NativeFrameUtil.getHeroStatePanel())

        const textFont = settings.fontPath;
        /**
         *
         */
        // gold
        BigAttributeUICompatibleState.goldFrame = new Frame("TEXT").current;
        DzFrameSetAbsolutePoint(BigAttributeUICompatibleState.goldFrame, FRAMEPOINT_TOPRIGHT, 0.533, 0.595)
        DzFrameSetFont(BigAttributeUICompatibleState.goldFrame, textFont, textHeight, 0);

        BigAttributeUICompatibleState.lumberFrame = new Frame("TEXT").current;
        DzFrameSetAbsolutePoint(BigAttributeUICompatibleState.lumberFrame, FRAMEPOINT_TOPRIGHT, 0.621, 0.595)
        DzFrameSetFont(BigAttributeUICompatibleState.lumberFrame, textFont, textHeight, 0);
        // 单位攻击力 值
        BigAttributeUICompatibleState.attackValueFrame = new Frame("TEXT", null, BigAttributeUICompatibleState.unitUIContainer).current;
        // DzFrameSetParent(BigAttributeUICompatibleState.attackValueFrame, NativeFrameUtil.getUnitAttackLabel(0))
        // DzFrameSetAbsolutePoint(BigAttributeUICompatibleState.attackValueFrame, FRAMEPOINT_TOPLEFT, 0.35, 0.07)
        DzFrameSetPoint(BigAttributeUICompatibleState.attackValueFrame, FRAMEPOINT_TOPLEFT, NativeFrameUtil.getUnitAttackLabel(0), FRAMEPOINT_BOTTOMLEFT, 0.004, -0.002)
        DzFrameSetFont(BigAttributeUICompatibleState.attackValueFrame, textFont, textHeight_unitStateInfo, 0);
        //单位护甲 值 //todo 多选时也会显示 unitArmorContainer
        BigAttributeUICompatibleState.armorValueFrame = new Frame("TEXT", null, BigAttributeUICompatibleState.unitArmorContainer).current;
        // DzFrameSetParent(BigAttributeUICompatibleState.armorValueFrame, NativeFrameUtil.getUnitArmorLabel())
        DzFrameSetPoint(BigAttributeUICompatibleState.armorValueFrame, FRAMEPOINT_TOPLEFT, NativeFrameUtil.getUnitArmorLabel(), FRAMEPOINT_BOTTOMLEFT, 0.004, -0.002)
        DzFrameSetFont(BigAttributeUICompatibleState.armorValueFrame, textFont, textHeight_unitStateInfo, 0);
        //英雄力量 值
        BigAttributeUICompatibleState.heroStrValueFrame = new Frame("TEXT", null, BigAttributeUICompatibleState.heroUIContainer).current;
        DzFrameSetFont(BigAttributeUICompatibleState.heroStrValueFrame, textFont, textHeight_unitStateInfo, 0);
        DzFrameSetPoint(BigAttributeUICompatibleState.heroStrValueFrame, FRAMEPOINT_TOPLEFT, NativeFrameUtil.getHeroStrLabel(), FRAMEPOINT_BOTTOMLEFT,
            0.005, 0.0)
        //
        BigAttributeUICompatibleState.heroAgiValueFrame = new Frame("TEXT", null, BigAttributeUICompatibleState.heroUIContainer).current;
        // DzFrameSetParent(BigAttributeUICompatibleState.heroAgiValueFrame, NativeFrameUtil.getHeroStrLabel())
        // DzFrameSetPoint(BigAttributeUICompatibleState.heroAgiValueFrame, FRAMEPOINT_TOPLEFT, NativeFrameUtil.getHeroAgiLabel(), FRAMEPOINT_BOTTOMLEFT,
        //     0.005, 0.0)
        DzFrameSetPoint(BigAttributeUICompatibleState.heroAgiValueFrame, FRAMEPOINT_TOPLEFT, NativeFrameUtil.getHeroAgiLabel(), FRAMEPOINT_BOTTOMLEFT,
            0.005, 0.0)
        DzFrameSetFont(BigAttributeUICompatibleState.heroAgiValueFrame, textFont, textHeight_unitStateInfo, 0);
        //
        BigAttributeUICompatibleState.heroIntValueFrame = new Frame("TEXT", null, BigAttributeUICompatibleState.heroUIContainer).current;
        DzFrameSetPoint(BigAttributeUICompatibleState.heroIntValueFrame, FRAMEPOINT_TOPLEFT, NativeFrameUtil.getHeroIntLabel(), FRAMEPOINT_BOTTOMLEFT,
            0.005, 0.0)
        DzFrameSetFont(BigAttributeUICompatibleState.heroIntValueFrame, textFont, textHeight_unitStateInfo, 0);
        /**
         * 生命值与魔法值
         */
        //使用黑色图片盖住原生生命魔法
        BigAttributeUICompatibleState.hpBackdropFrame = new Frame("BACKDROP", null, BigAttributeUICompatibleState.unitArmorContainer).current;
        DzFrameSetTexture(BigAttributeUICompatibleState.hpBackdropFrame, "UI\\Glues\\SinglePlayer\\HumanCampaign3D\\Black32.blp", 0)
        DzFrameSetSize(BigAttributeUICompatibleState.hpBackdropFrame, 0.076, 0.012)
        DzFrameSetAbsolutePoint(BigAttributeUICompatibleState.hpBackdropFrame, FRAMEPOINT_CENTER, 0.254, 0.023)
        //
        BigAttributeUICompatibleState.manaBackdropFrame = new Frame("BACKDROP", null, BigAttributeUICompatibleState.unitArmorContainer).current;
        DzFrameSetSize(BigAttributeUICompatibleState.manaBackdropFrame, 0.076, 0.012)
        DzFrameSetTexture(BigAttributeUICompatibleState.manaBackdropFrame, "UI\\Glues\\SinglePlayer\\HumanCampaign3D\\Black32.blp", 0)
        DzFrameSetAbsolutePoint(BigAttributeUICompatibleState.manaBackdropFrame, FRAMEPOINT_CENTER, 0.254, 0.009)
        //hp
        BigAttributeUICompatibleState.hpFrame = new Frame("TEXT", null, BigAttributeUICompatibleState.unitArmorContainer).current;
        DzFrameSetFont(BigAttributeUICompatibleState.hpFrame, textFont, textHeight, 0);
        DzFrameSetAbsolutePoint(BigAttributeUICompatibleState.hpFrame, FRAMEPOINT_CENTER, 0.254, 0.023)
        //mana
        BigAttributeUICompatibleState.manaFrame = new Frame("TEXT", null, BigAttributeUICompatibleState.unitArmorContainer).current;
        DzFrameSetAbsolutePoint(BigAttributeUICompatibleState.manaFrame, FRAMEPOINT_CENTER, 0.254, 0.009)
        DzFrameSetFont(BigAttributeUICompatibleState.manaFrame, textFont, textHeight, 0);


    }


    /**
     * 移除原生UI
     */
    moveNativeFrame() {
        /**
         * 隐藏攻击和护甲图标
         */
        if (BigAttributeUICompatibleState.config.removeAttackIcon) {
            DzFrameClearAllPoints(NativeFrameUtil.getUnitAttackIcon(0))
            DzFrameSetPoint(NativeFrameUtil.getUnitAttackIcon(0), 4, DzGetGameUI(), 4, 0.0, -0.5)
        }
        if (BigAttributeUICompatibleState.config.removeArmorIcon) {
            DzFrameClearAllPoints(NativeFrameUtil.getUnitArmorIcon())
            DzFrameSetPoint(NativeFrameUtil.getUnitArmorIcon(), 4, DzGetGameUI(), 4, 0.0, -0.5)
        }


        //模拟英雄主属性移入提示
        let button = new Frame("BUTTON", null, BigAttributeUICompatibleState.heroUIContainer, "");
        button.setSize(0.062, 0.048);
        DzFrameSetPoint(button.handle, FramePoint.right, NativeFrameUtil.getHeroAgiLabel(), FramePoint.right, 0, 0.0);
        button.addOnMouseEnter(() => {
            let hero = selection();
            if (!IsHandle(hero) || !IsHeroUnitId(GetUnitTypeId(hero))) {
                return null;
            }
            let heroPrimary = HeroUtil.getHeroPrimary(hero);
            if (heroPrimary == null) {
                return null;
            }
            let iconTip = BigAttributeUICompatibleState.getPrimaryIconTip(hero, heroPrimary);
            ActorFrameUtil.showTooltipByInfo({
                describe: iconTip,
            });
        });
        button.addOnMouseLeave(() => {
            ActorFrameUtil.hideTooltip()
        });


        /**
         * 移除原生的
         */
        //移除原生的 金币值
        DzFrameClearAllPoints(NativeFrameUtil.getGoldText())
        DzFrameSetPoint(NativeFrameUtil.getGoldText(), 4, DzGetGameUI(), 4, 0.0, -0.5)
        //移除原生的 木材值
        DzFrameClearAllPoints(NativeFrameUtil.getLumberText())
        DzFrameSetPoint(NativeFrameUtil.getLumberText(), 4, DzGetGameUI(), 4, 0.0, -0.5)
        //移除原生的 攻击力值
        DzFrameClearAllPoints(NativeFrameUtil.getUnitAttackValue(0))
        DzFrameSetPoint(NativeFrameUtil.getUnitAttackValue(0), 4, DzGetGameUI(), 4, 0.0, -0.5)
        //移除原生的 护甲值
        DzFrameClearAllPoints(NativeFrameUtil.getUnitArmorValue())
        DzFrameSetPoint(NativeFrameUtil.getUnitArmorValue(), 4, DzGetGameUI(), 4, 0.0, -0.5)
        //移除原生的 力量值
        DzFrameClearAllPoints(NativeFrameUtil.getHeroStrValue())
        DzFrameSetPoint(NativeFrameUtil.getHeroStrValue(), 4, DzGetGameUI(), 4, 0.0, -0.5)

        DzFrameSetSize(NativeFrameUtil.getHeroStrValue(), 0.0001, 0)
        //移除原生的 敏捷值
        DzFrameClearAllPoints(NativeFrameUtil.getHeroAgiValue())
        DzFrameSetPoint(NativeFrameUtil.getHeroAgiValue(), 4, DzGetGameUI(), 4, 0.0, -0.5)
        //移除原生的 智力值
        DzFrameClearAllPoints(NativeFrameUtil.getHeroIntValue())
        DzFrameSetPoint(NativeFrameUtil.getHeroIntValue(), 4, DzGetGameUI(), 4, 0.0, -0.5)

        /**
         * 移回标签
         */
        //移动标签 攻击力
        // DzFrameClearAllPoints(NativeFrameUtil.getUnitAttackLabel(0))
        // DzFrameSetAbsolutePoint(NativeFrameUtil.getUnitAttackLabel(0), FRAMEPOINT_TOPLEFT, 0.34, 0.08)
        //移动标签 护甲在单位没有攻击的时候显示位置在原攻击力的位置 所以不能设置绝对位置 否则不兼容动态位置显示
        // DzFrameClearAllPoints(NativeFrameUtil.getUnitArmorLabel())
        // DzFrameSetAbsolutePoint(NativeFrameUtil.getUnitArmorLabel(), FRAMEPOINT_TOPLEFT, 0.34, 0.048)
        //移动回标签
        DzFrameClearAllPoints(NativeFrameUtil.getHeroAgiLabel())
        // DzFrameSetAbsolutePoint(NativeFrameUtil.getHeroAgiLabel(), FRAMEPOINT_TOPLEFT, 0.44, 0.06)
        DzFrameSetPoint(NativeFrameUtil.getHeroAgiLabel(), FRAMEPOINT_TOPLEFT, NativeFrameUtil.getHeroStrLabel(), FRAMEPOINT_BOTTOMLEFT, 0.0, -0.0135)
        //移动回标签
        DzFrameClearAllPoints(NativeFrameUtil.getHeroIntLabel())
        // DzFrameSetAbsolutePoint(NativeFrameUtil.getHeroIntLabel(), FRAMEPOINT_TOPLEFT, 0.44, 0.04)
        DzFrameSetPoint(NativeFrameUtil.getHeroIntLabel(), FRAMEPOINT_TOPLEFT, NativeFrameUtil.getHeroAgiLabel(), FRAMEPOINT_BOTTOMLEFT, 0.0, -0.0135)
    }

    static showSolarUI(showAttackAndArmor: boolean, showHeroAtts: boolean = showAttackAndArmor, showHpAndMana: boolean = showAttackAndArmor) {
        DzFrameShow(BigAttributeUICompatibleState.hpFrame, showHpAndMana);
        DzFrameShow(BigAttributeUICompatibleState.manaFrame, showHpAndMana);
        DzFrameShow(BigAttributeUICompatibleState.attackValueFrame, showAttackAndArmor);
        DzFrameShow(BigAttributeUICompatibleState.armorValueFrame, showAttackAndArmor);
        DzFrameShow(BigAttributeUICompatibleState.heroStrValueFrame, showHeroAtts);
        DzFrameShow(BigAttributeUICompatibleState.heroAgiValueFrame, showHeroAtts);
        DzFrameShow(BigAttributeUICompatibleState.heroIntValueFrame, showHeroAtts);
    }

    /**
     * 可覆盖重写此方法 以自定义自己的属性文本提示
     */
    static getPrimaryIconTip(hero: unit, heroPrimary: "STR" | "AGI" | "INT") {
        let tip = "属性说明:|r|n|n";
        //力量
        tip += "力量:|r|n"
        if (heroPrimary == "STR") {
            tip += " -|cffFFFF00主属性|r|n"
            tip += " -每点增加" + Math.round(PrimaryAttackBonus) + "的攻击力|r|n"
        }
        tip += " -每点增加" + Math.round(StrHpBonus) + "的生命值|r|n"
        tip += " -每点增加生命值恢复速度|r|n"
        //敏捷
        tip += "敏捷:|r|n"
        if (heroPrimary == "AGI") {
            tip += " -|cffFFFF00主属性|r|n"
            tip += " -每点增加" + Math.round(PrimaryAttackBonus) + "的攻击力|r|n"
        }
        if (AgiDefenseBonus != 0) {
            tip += " -每" + Math.round((1 / AgiDefenseBonus)) + "点增加一点的护甲|r|n"
        }
        tip += " -每点增加攻击速度|r|n"

        //智力
        tip += "智力:|r|n"
        if (heroPrimary == "INT") {
            tip += " -|cffFFFF00主属性|r|n"
            tip += " -每点增加" + Math.round(PrimaryAttackBonus) + "的攻击力|r|n"
        }
        tip += " -每点增加" + Math.round(IntManaBonus) + "的魔法值|r|n"
        tip += " -每点增加魔法恢复速度|r|n"
        return tip;
    }

}