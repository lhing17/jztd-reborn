import ErrorMsgHelper from "@/ErrorMsgHelper";
import SolarConfig from "@/SolarConfig";
import FramePoint from "@/FramePoint";
import Label from "@/Label";
import TextAlign from "@/TextAlign";
import Button from "@/Button";
import ImageColor from "@/ImageColor";
import DebugGameUtil from "@/DebugGameUtil";

export default class ErrorFrame {
    static config = {
        width: 0.4,
        height: 0.35,
        backgroundImage: "UI\\Widgets\\EscMenu\\Undead\\undead-options-menu-background.blp",
        tip: "|cffff0000【地图程序出现错误，您可截图此信息提交于作者，帮助作者修复该问题】",
    }
    private static is_init = false;
    /** 正在显示错误 */
    private static _sl_isShowing = false;
    private static imageColor: ImageColor;
    private static text: Label;
    private static closeBtn: Button;
    private static showBtn: Button;


    static init() {
        if (ErrorFrame.is_init) {
            return
        }
        ErrorFrame.is_init = true;
        ErrorFrame._sl_initFrame();
        ErrorFrame.imageColor.visible = false;
        ErrorFrame.text.visible = false;
        ErrorFrame.closeBtn.visible = false;
        ErrorFrame.showBtn.visible = false;

        ErrorMsgHelper.onError = errorMsgHelper => {
            ErrorFrame.showErrorMsgHelper(errorMsgHelper);
        }
    }

    private constructor() {

    }


    static showErrorMsgHelper(errorMsgHelper: ErrorMsgHelper) {
        if (SolarConfig.useErrorFrame == false) {
            return
        }
        if (ErrorFrame._sl_isShowing == true) {
            return
        }
        ErrorFrame._sl_isShowing = true;
        let text = ErrorFrame.config.tip + "|r|n\r\n" + DebugGameUtil.getCommonInfo();
        ErrorFrame.text.setText(text + "|r|n\r\n" + errorMsgHelper.cnMsg + "|r|n\r\n" + errorMsgHelper.cnTraceback);
        if (isDebug) {
            ErrorFrame.imageColor.visible = true;
            ErrorFrame.text.visible = true;
            ErrorFrame.closeBtn.visible = true;
            ErrorFrame.showBtn.visible = false;
        } else {
            ErrorFrame.imageColor.visible = false;
            ErrorFrame.text.visible = false;
            ErrorFrame.closeBtn.visible = false;
            ErrorFrame.showBtn.visible = true;
        }

    }


    private static _sl_initFrame() {

        let imageColor = new ImageColor();
        imageColor.setColor(80, 80, 80, 255);
        ErrorFrame.imageColor = imageColor;

        let text = new Label();
        text.setBackgroundImage(ErrorFrame.config.backgroundImage);
        text.getTextFrame().setTextAlignment(TextAlign.topLeft);
        text.getTextFrame().clearPoints();
        text.getTextFrame().setSize(ErrorFrame.config.width, -1)
        imageColor.rootFrame.setPoints(text.getTextFrame().handle, 0.01, 0.01)
        text.getRootFrame().setPoints(text.getTextFrame().handle, 0.01, 0.01)

        ErrorFrame.text = text;
        ErrorFrame.text.getTextFrame().setAbsPoint(FramePoint.topRight, 0.55, 0.5);


        let closeBtn = new Button();
        ErrorFrame.closeBtn = closeBtn;
        closeBtn.setSize(0.04, 0.04);
        closeBtn.setBackgroundImage("UI\\Widgets\\BattleNet\\chaticons\\bnet-squelch.blp");
        closeBtn.getLampEffectFrame();
        closeBtn.rootFrame.setPoint(FramePoint.center, text.rootFrame.handle, FramePoint.topRight, 0, 0)
        closeBtn.setOnClick(() => {
            text.visible = false;
            ErrorFrame.showBtn.visible = false;
            ErrorFrame.closeBtn.visible = false;
            ErrorFrame.imageColor.visible = false;
            ErrorFrame._sl_isShowing = false;
        });

        //显示btn
        let showBtn = new Button();
        ErrorFrame.showBtn = showBtn;
        showBtn.setSize(0.025, 0.025);
        // showBtn.setBackgroundImage("ReplaceableTextures\\CommandButtons\\BTNCallToArms.blp");
        showBtn.setBackgroundImage("UI\\Widgets\\BattleNet\\chaticons\\bnet-squelch.blp");
        showBtn.rootFrame.setAbsPoint(FramePoint.topLeft, 0.004, 0.24)
        showBtn.setOnClick(() => {
            text.visible = true;
            ErrorFrame.closeBtn.visible = true;
            ErrorFrame.imageColor.visible = true;
            ErrorFrame._sl_isShowing = true;
        });


    }


}

