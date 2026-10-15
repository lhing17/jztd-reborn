import FrameControl from "@/FrameControl";
import SolarConfig from "@/SolarConfig";
import FramePoint from "@/FramePoint";

/**
 * 如未正常显示ui 请检测是否设置了 setSize 和位置
 */
export default class CheckBox extends FrameControl {

    static bgPath = "UI\\Widgets\\EscMenu\\Human\\checkbox-background.blp";
    static tickPath = SolarConfig.defaultTickPath;
    static textGap = 0.005;
    selected: boolean = false;
    onSelectedChangeListenerList: ((selected: boolean) => void)[] = [];

    constructor(parent?: number, onSelectedChangeListener?: (selected: boolean) => void) {
        super(parent);
        //
        if (onSelectedChangeListener) {
            this.addSelectedChangeListener(onSelectedChangeListener);
        }
        this.init();
    }

    protected init() {
        super.init();
        this.rootFrame.setSize(0.025, 0.025);
        this.getBackgroundImageFrame().visible = true;
        this.getBackgroundImageFrame().setTexture(CheckBox.bgPath)
        this.getTickFrame().setTexture(CheckBox.tickPath);
        this.getTickFrame().visible = false;
        //textFrame
        let textFrame = this.getTextFrame();
        textFrame.clearPoints();
        textFrame.setPoint(FramePoint.left, this.rootFrame.handle, FramePoint.right, CheckBox.textGap, 0);
        textFrame.visible = false;
        textFrame.setFont(0.015);
        this.getButtonFrame(true, false).setOnClick(() => {
            this.setSelected(!this.selected);
        });
    }

    setText(text: string) {
        if (text == null || text.length == 0) {
            this.getTextFrame().visible = false;
        } else {
            this.getTextFrame().visible = true;
        }
        this.getTextFrame().setText(text);

    }

    addSelectedChangeListener(onSelectedChangeListener?: (selected: boolean) => void) {
        this.onSelectedChangeListenerList.push(onSelectedChangeListener)
    }

    setSelected(selected: boolean) {
        this.selected = selected;
        this.getTickFrame().visible = selected;
        for (let i = 0; i < this.onSelectedChangeListenerList.length; i++) {
            this.onSelectedChangeListenerList[i](selected);
        }
    }


}