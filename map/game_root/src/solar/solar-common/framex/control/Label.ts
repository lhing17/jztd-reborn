import FrameControl from "@/FrameControl";
import TextAlign from "@/TextAlign";

/**
 * 如未正常显示ui 请检测是否设置了 setSize 和位置
 */
export default class Label extends FrameControl {

    constructor(parent?: number, text?: string, onClick?: () => void) {
        super(parent);
        this.init();
        //
        if (text) {
            this.setText(text)
        }
        if (onClick) {
            this.setOnClick(onClick)
        }
    }

    protected init() {
        super.init();
        this.getBackgroundImageFrame().visible = false;
        this.getTextFrame().setTextAlignment(TextAlign.center);
        this.getTextFrame().visible = false;
    }

    setBackgroundImage(imagePath: string) {
        this.getBackgroundImageFrame().setTexture(imagePath);
        this.getBackgroundImageFrame().visible = true;
    }

    setText(text: string) {
        this.getTextFrame().setText(text);
        this.getTextFrame().visible = true;
    }


    setOnClick(callback: () => void) {
        this.getButtonFrame().setOnClick(() => {
            callback();
        }, false);
    }


    setDisable(disable: boolean) {
        this.getDisableFrame().visible = disable;
    }

}