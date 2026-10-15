import FrameControl from "@/FrameControl";
import {Frame} from "@/frame";
import FramePoint from "@/FramePoint";
import TextAlign from "@/TextAlign";

export type Tab = {
    name: string,
    content: Frame,
    nameTabFrame?: Frame,
    nameTabFrameControl?: FrameControl,
    onHide?: () => void;
    onSelected?: () => void;
}

/**
 *         let tapPane = new TabPane();
 *         tapPane.setSize(0.6, 0.3);
 *         tapPane.setAbsPoint(FramePoint.center, 0.4, 0.35);
 *
 *
 *         let frame = Frame.createBackDrop();
 *         frame.setTexture("ReplaceableTextures\\CommandButtons\\BTNAdvancedFlameTower.blp")
 *         frame.setSize(0.04, 0.04)
 *         tapPane.addTab({
 *             name: "选项卡名字",
 *             content: frame
 *         })
 *         tapPane.update();
 */
export default class TabPane extends FrameControl {

    tabs: Tab[] = [];
    selectIndex: number = -1;
    /** 标签在上面还是在左边 */
    textFrameSide: FramePoint.top | FramePoint.left = FramePoint.left;
    tabContentFrameSide: FramePoint = FramePoint.center;
    visibleSwitchButton: FrameControl = null;

    constructor(parent?: number) {
        super(parent);
        // let bdFrame = new Frame("BACKDROP", null, this.rootFrame.handle, "_sl_border_backdrop", 0)
        let bdFrame = new Frame("BACKDROP", null, this.rootFrame.handle, "", 0);
        bdFrame.setTexture("UI\\Glues\\BattleNet\\BattleNetTeamLevelBar\\Loading-BarBackground.blp")
        this._sl_Frames.push(bdFrame);
        bdFrame.setAllPoints(this.rootFrame.current);
        this.rootFrame.visible = false;
    }


    addTab(tap: Tab) {
        this.tabs.push(tap);
    }


    update() {
        if (this.tabs.length == 0) {
            log.errorWithTraceBack("请先使用addTab添加选项卡！")
            return
        }
        for (let i = 0; i < this.tabs.length; i++) {
            let tap = this.tabs[i];
            let nameTabFrame = tap.nameTabFrame;
            if (nameTabFrame == null) {
                //
                let frameControl = this.createTabTextFrame(tap.name, this.rootFrame.current);
                nameTabFrame = frameControl.rootFrame;
                tap.nameTabFrame = nameTabFrame;
                if (this.textFrameSide == FramePoint.top) {
                    if (i == 0) {
                        nameTabFrame.setPoint(FramePoint.bottomLeft, this.rootFrame.current, FramePoint.topLeft, 0, 0);
                    } else {
                        nameTabFrame.setPoint(FramePoint.bottomLeft, this.tabs[i - 1].nameTabFrame.current, FramePoint.bottomRight, 0, 0);
                    }
                } else if (this.textFrameSide == FramePoint.left) {
                    if (i == 0) {
                        nameTabFrame.setPoint(FramePoint.topRight, this.rootFrame.current, FramePoint.topLeft, -0.001, 0);
                    } else {
                        nameTabFrame.setPoint(FramePoint.topRight, this.tabs[i - 1].nameTabFrame.current, FramePoint.bottomRight, 0, -0.002);
                    }
                }
                tap.nameTabFrameControl = frameControl;
                //
                frameControl.getTickFrame().setTexture("UI\\Minimap\\minimap-gold.blp")
                frameControl.getTickFrame().setSize(0.01, 0.01)
                frameControl.getTickFrame().clearPoints();
                frameControl.getTickFrame().setPoint(FramePoint.center, frameControl.rootFrame.current, FramePoint.right, -0.011, 0);
                frameControl.getTickFrame().visible = false;
                frameControl.getButtonFrame().setOnClick(() => {
                    // BJDebugMsg("选择：" + tap.name);
                    this.select(tap.name);
                });
                //tabContentFrameSide
                tap.content.setPoint(this.tabContentFrameSide, this.rootFrame.current, this.tabContentFrameSide, 0, 0);

                tap.content.visible = false;
                DzFrameSetParent(tap.content.current, this.rootFrame.current);
            }
        }
        this.select(this.tabs[0].name)
    }

    select(name: string) {
        //
        if (this.selectIndex >= 0) {
            let oldSelectTap: Tab = this.tabs[this.selectIndex];
            oldSelectTap.content.visible = false;
            oldSelectTap.nameTabFrameControl?.hideTickFrame();
            oldSelectTap.onHide?.();
        }

        //
        this.selectIndex = 0;
        let selectTap: Tab = null;
        for (let i = 0; i < this.tabs.length; i++) {
            let tap = this.tabs[i];
            if (tap.name == name) {
                this.selectIndex = i;
                break;
            }
        }
        selectTap = this.tabs[this.selectIndex];
        selectTap.content.visible = true;
        selectTap.nameTabFrameControl?.showTickFrame();
        selectTap.onSelected?.();
    }

    createTabTextFrame(text: string, parent?: number): FrameControl {
        //
        let button = new FrameControl(parent);
        button.getBackgroundImageFrame().setTexture("UI\\Widgets\\Console\\Human\\human-transport-slot.blp");
        button.setSize(0.065, 0.03);
        button.getTextFrame().setText(text);
        button.getTextFrame().setTextAlignment(TextAlign.center);
        button.getButtonFrame();
        return button;
    }

    createVisibleSwitchButton(text: string = "|cffff0000存 档", x: number = 0.10, y: number = 0.57): FrameControl {
        let button = this.createTabTextFrame(text, DzGetGameUI());
        button.setSize(0.04, 0.04);

        button.getButtonFrame().setOnClick(() => {
            this.rootFrame.visible = !this.rootFrame.visible;
            if (this.rootFrame.visible) {
                se.emit("打开UI", text)
                this.update();
            }
        });
        se.on("打开UI", ui => {
            if (ui != text) {
                this.rootFrame.visible = false;
            }
        });
        button.setSize(0.04, 0.04);
        button.setAbsPoint(FramePoint.topLeft, x, y);
        this.visibleSwitchButton = button;
        return button;
    }

}