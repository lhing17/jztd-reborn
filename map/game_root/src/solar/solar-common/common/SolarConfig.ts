/**
 * 太阳配置
 * 可以在这里配置一些默认的效果
 */
export default class SolarConfig {

    /**
     * 功能系统配置
     */
    /** 使用太阳UI报错信息显示 */
    static useErrorFrame = true;

    /**
     * 显示配置
     */

    /** 打钩时使用 金色的64*64的钩子图标 以提示正向正确类提示  */
    static defaultTickPath = "UI\\Widgets\\Glues\\GlueScreen-Checkbox-Check.blp"
    /** 打叉时使用 红色的64*64的叉叉图标 以提示负向错误禁止类提示 */
    static defaultCrossPath = "UI\\Widgets\\BattleNet\\chaticons\\bnet-squelch.blp"
    /** 禁用按钮时使用 外围黑色内部半透明的蒙版  */
    static defaultDisablePath = "solar_asset\\icon\\disable.blp"
    /** 资源 金币图标  */
        // static defaultResourceGoldPath = "UI\\Feedback\\Resources\\ResourceGold.blp"
    static defaultResourceGoldPath = "UI\\Widgets\\ToolTips\\Human\\ToolTipGoldIcon.blp"
    /** 资源 木材图标  */
        // static defaultResourceLumberPath = "UI\\Feedback\\Resources\\ResourceLumber.blp"
    static defaultResourceLumberPath = "UI\\Widgets\\ToolTips\\Human\\ToolTipLumberIcon.blp"
    /** 资源 人口食物图标  */
    static defaultResourceSupplyPath = "UI\\Widgets\\ToolTips\\Human\\ToolTipSupplyIcon.blp"
    /** 提示信息的 背景图  */
    static defaultTipBackgroundPath = "UI\\Glues\\BattleNet\\BattleNetTeamLevelBar\\Loading-BarBackground.blp"
    /** 透明图片  */
    static defaultTransparentImagePath = "UI\\Widgets\\EscMenu\\Human\\blank-background.blp";
    /** 上一页  */
    static defaultUpPath = "ReplaceableTextures\\CommandButtons\\BTNReplay-SpeedUp.blp"
    /** 下一页  */
    static defaultDownPath = "ReplaceableTextures\\CommandButtons\\BTNReplay-SpeedDown.blp"
    /** 显示自动施法外部转圈时使用 外部转圈的ui模型 */
    static defaultAutoCastModelPath = "UI\\Feedback\\Autocast\\UI-ModalButtonOn.mdx"
    /** 显示外部跑马灯转圈时使用 外部转圈的ui模型  可以拿来做提示玩家点击使用  默认为左下角为原点 大小为0.04,0.04   */
    static defaultLampEffectModelPath = "UI\\Feedback\\Autocast\\UI-ModalButtonOn.mdx"
    /**
     * 跑马灯转圈模型的xy偏移  默认为左下角为原点 大小为0.04,0.04
     * (如果转圈模型原点在中间 则这里可以设置0.02，0.02)
     */
    static defaultLampEffectModelOffsetX = 0;
    static defaultLampEffectModelOffsetY = 0;
    /**
     * 跑马灯转圈模型的大小
     */
    static defaultLampEffectModelWidth = 0.04;
    static defaultLampEffectModelHeight = 0.04;
    static defaultLampEffectModelScaleX = 1;
    static defaultLampEffectModelScaleY = 1;

    /**
     * 右下角 技能物品等的扩展提示 绝对位置（描点 右下角）
     */
    static defaultTooltipFrameAbsX = 0.79;
    static defaultTooltipFrameAbsY = 0.17;

    /** 提示文本的颜色 */
    static defaultWarnTextColor = "|cff951629";
    static defaultSuccessTextColor = "|cff00ff00";
    static defaultFailTextColor = "|cffff0000";


    /** 手动=按F9手动重载@SupportReload 标记的类 */
    static reloadMode: "自动局部" | "手动" | "自动全局" = "手动"
}