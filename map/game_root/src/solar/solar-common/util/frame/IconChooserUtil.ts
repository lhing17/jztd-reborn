import {Frame} from "@/frame";
import FramePoint from "@/FramePoint";
import TextAlign from "@/TextAlign";
import AsyncUtil from "@/AsyncUtil";
import FrameControl from "@/FrameControl";
import ActorFrameUtil from "@/ActorFrameUtil";
import SolarConfig from "@/SolarConfig";
import DataBase from "@/DataBase";

declare global {

    interface IconOption {
        /**图标项目名字*/
        name: string
        /**图标项目图标*/
        icon?: string,
        /**图标项目信息*/
        describe?: string,
        /**显示跑马灯效果*/
        showLampEffect?: boolean,
    }

}

/**
 * 图标选择工具(比如三选一)
 * 可通过此工具解耦显示与需要显示的功能耦合
 * 切换显示效果可以重新设置IconChooserUtil.show = 你自己的显示函数
 */
export default class IconChooserUtil {
    static bgWidth = 0.12
    static bgHeight = 0.26
    static optionGap = 0.04
    static centerY = 0.35;
    /**
     * 每次显示的时候移除上次
     */
    static removeLastChooser = true;


    /**
     * 需要再同步逻辑中调用
     * @param playerId 给指定玩家显示选项
     * @param iconOptions 显示选项的备选项
     * @param onClickCallBack 当点击后的回调 (同步的)
     * @param title 可选的标题文字
     */
    static show(playerId: number, iconOptions: (IconOption | SolarActorType)[], onClickCallBack: (index: number, iconOption: IconOption | SolarActorType) => void, title?: string): void {

        //异步执行
        let startX = (0.8 - (IconChooserUtil.bgWidth * iconOptions.length + IconChooserUtil.optionGap * (iconOptions.length - 1))) / 2
        let rootFrame = new Frame("FRAME");
        for (let i = 0; i < iconOptions.length; i++) {
            let iconOption = iconOptions[i];
            let backDropFrame = new Frame("BACKDROP", null, rootFrame.current, "_sl_border_backdrop", 0)
            backDropFrame.setSize(IconChooserUtil.bgWidth, IconChooserUtil.bgHeight);
            backDropFrame.setAbsPoint(FramePoint.left, startX + ((IconChooserUtil.bgWidth + 0.04) * i), IconChooserUtil.centerY);

            //


            let iconFrame = Frame.createBackDrop(backDropFrame.current);
            iconFrame.setSize(0.03, 0.04)
            iconFrame.setPoint(FramePoint.top, backDropFrame.current, FramePoint.top, 0, -0.01)
            iconFrame.setTexture(iconOption.icon || "UI\\Widgets\\EscMenu\\Human\\blank-background.blp")

            let nameFrame = Frame.createShadowTEXT(backDropFrame.current);
            nameFrame.setText(iconOption.name)
            nameFrame.setSize(IconChooserUtil.bgWidth - 0.02, -1)
            nameFrame.setPoint(FramePoint.top, iconFrame.current, FramePoint.bottom, 0, -0.01)
            nameFrame.setTextAlignment(TextAlign.center)

            let infoFrame = Frame.createTEXT(backDropFrame.current);
            infoFrame.setText(iconOption.describe);
            infoFrame.setPoint(FramePoint.top, nameFrame.current, FramePoint.bottom, 0, -0.02)
            infoFrame.setTextAlignment(TextAlign.center)
            infoFrame.setSize(IconChooserUtil.bgWidth - 0.02, -1)

            let btn = Frame.createGLUEBUTTON(backDropFrame.current)
            btn.setAllPoints(backDropFrame.current)
            let index = i;
            btn.setOnClick(() => {
                rootFrame.setVisible(false);
                DzDestroyFrame(rootFrame.current);
                onClickCallBack(index, iconOption);
            }, true);
        }

        let playerSolarData = DataBase.getPlayerSolarData(Player(playerId), true);
        if (GetPlayerId(GetLocalPlayer()) == playerId) {
            if (IconChooserUtil.removeLastChooser && playerSolarData._sl_lastShow) {
                let rootFrame: Frame = playerSolarData._sl_lastShow;
                if (rootFrame.visible) {
                    rootFrame.setVisible(false);
                    rootFrame.destroy();
                }
            }
            rootFrame.setVisible(true);
            ActorFrameUtil.hideTooltip()
        } else {
            rootFrame.setVisible(false);
        }
        playerSolarData._sl_lastShow = rootFrame;


        if (title) {
            AsyncUtil.run(() => {
                let titleFrame = Frame.createTEXTWithBorderBackDrop(rootFrame.current);
                titleFrame.setSize(IconChooserUtil.bgWidth - IconChooserUtil.optionGap - 0.02, 0.015);
                titleFrame.setText(title);
                titleFrame.setFont(0.026);
                titleFrame.setAbsPoint(FramePoint.top, 0.4, IconChooserUtil.centerY + (IconChooserUtil.bgHeight / 2) + IconChooserUtil.optionGap)
                titleFrame.setTextAlignment(TextAlign.center)
            }, Player(playerId));
        }
    }

    /**
     * 显示简单的图标选择 通常在屏幕边角落只显示小图标 以不打扰玩家当前屏幕主区域。等玩家有空时再去选择这些图标
     * 需要再同步逻辑中调用
     * @param playerId 给指定玩家显示选项
     * @param iconOptions 显示选项的备选项
     * @param onClickCallBack 当点击后的回调 (同步的)
     * @param title 可选的标题文字
     */
    static showSimple(playerId: number, iconOptions: (IconOption | SolarActorType)[], onClickCallBack: (index: number, iconOption: IconOption | SolarActorType) => void, title?: string): void {

        //异步执行
        let iconListRootFrame = Frame.createBackDrop();
        let iconW = 0.03;
        let iconGap = 0.004;
        iconListRootFrame.setTexture("UI\\Glues\\BattleNet\\BattleNetTeamLevelBar\\Loading-BarBackground.blp");
        // iconListRootFrame.setTexture2Transparent();
        iconListRootFrame.setSize((iconW + iconGap) * iconOptions.length + 0.008, 0.044)
        iconListRootFrame.setAbsPoint(FramePoint.bottomRight, 0.785, 0.166);

        let old_defaultTooltipFrameAbsY = SolarConfig.defaultTooltipFrameAbsY;

        for (let i = 0; i < iconOptions.length; i++) {
            let iconOption = iconOptions[i];
            //

            let frameControl = new FrameControl(iconListRootFrame.current);
            frameControl.setSize(iconW, 0.04)

            frameControl.rootFrame.setPoint(FramePoint.bottomRight, iconListRootFrame.handle, FramePoint.bottomRight, (-(iconW + iconGap) * i) - 0.005, 0.002)
            frameControl.getBackgroundImageFrame().setTexture(iconOption.icon || "UI\\Widgets\\EscMenu\\Human\\blank-background.blp");
            if (iconOption.showLampEffect == true) {
                frameControl.getLampEffectFrame().visible = true;
            }


            let btn = frameControl.getButtonFrame();
            btn.setSize(iconW, 0.04);
            let index = i;
            btn.solarData.itemData = iconOption;
            btn.setOnMouseEnter(IconChooserUtil._sl_on_button_mouse_enter);
            btn.setOnMouseLeave(IconChooserUtil._sl_on_button_mouse_leave);
            btn.setOnClick(() => {
                iconListRootFrame.setVisible(false);
                ActorFrameUtil.hideTooltip();
                btn.destroy();
                DzDestroyFrame(iconListRootFrame.current);
                onClickCallBack(index, iconOption);
                SolarConfig.defaultTooltipFrameAbsY = old_defaultTooltipFrameAbsY;
            }, true);
        }
        let playerSolarData = DataBase.getPlayerSolarData(Player(playerId), true);
        if (GetPlayerId(GetLocalPlayer()) == playerId) {
            SolarConfig.defaultTooltipFrameAbsY = 0.22;
            if (IconChooserUtil.removeLastChooser && playerSolarData._sl_lastShowSimpleRootFrame) {
                let _sl_lastShowSimpleRootFrame: Frame = playerSolarData._sl_lastShowSimpleRootFrame;
                if (_sl_lastShowSimpleRootFrame.visible) {
                    _sl_lastShowSimpleRootFrame.setVisible(false);
                    _sl_lastShowSimpleRootFrame.destroy();
                }
            }
            iconListRootFrame.setVisible(true);
            ActorFrameUtil.hideTooltip()
        } else {
            iconListRootFrame.setVisible(false);
        }
        playerSolarData._sl_lastShowSimpleRootFrame = iconListRootFrame;

        if (title) {
            AsyncUtil.run(() => {
                let titleFrame = Frame.createTEXTWithBorderBackDrop(iconListRootFrame.current);
                titleFrame.backdropFrame.setTexture("UI\\Glues\\BattleNet\\BattleNetTeamLevelBar\\Loading-BarBackground.blp")
                titleFrame.setText(title);
                // titleFrame.setFont(0.026);
                titleFrame.setPoint(FramePoint.right, iconListRootFrame.current, FramePoint.left, -0.006, 0)
                titleFrame.setTextAlignment(TextAlign.center)
            }, Player(playerId));
        }
    }


    private static _sl_on_button_mouse_enter() {
        let frame = Frame.fromEvent()
        if (!frame) return
        let actorOrActorType = frame.solarData.itemData;
        if (!actorOrActorType) return
        ActorFrameUtil.showTooltip(actorOrActorType)

    }

    private static _sl_on_button_mouse_leave() {
        ActorFrameUtil.hideTooltip()
    }

}