import FrameControl from "@/FrameControl";

/**
 * 如未正常显示ui 请检测是否设置了 setSize 和位置
 */
export default class ImageView extends FrameControl {


    constructor(parent?: number) {
        super(parent);
        this.init();
    }

    protected init() {
        super.init();
        this.getBackgroundImageFrame().visible = false;
        this.getImageFrame().visible = false;
    }

    setBackgroundImage(imagePath: string) {
        this.getBackgroundImageFrame().setTexture(imagePath);
        this.getBackgroundImageFrame().visible = true;
    }

    setImage(imagePath: string) {
        this.getImageFrame().setTexture(imagePath);
        this.getImageFrame().visible = true;
    }


    setDisable(disable: boolean) {
        this.getDisableFrame().visible = disable;
    }

}