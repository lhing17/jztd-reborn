import Actor from "@/Actor"
import {Frame} from "@/frame"
import FramePoint from "@/FramePoint"
import TextAlign from "@/TextAlign"
import ActorFrameUtil from "@/util/ActorFrameUtil"
import UnitUtil from "@/UnitUtil";
import PlayerUtil from "@/PlayerUtil";
import ActorBuffUtil from "@/ActorBuffUtil";
import ActorTypeUtil from "@/ActorTypeUtil";
import InputUtil from "@/InputUtil";
import KeyCode from "@/KeyCode";
import FrameControl from "@/FrameControl";
import ShortIDUtil from "@/ShortIDUtil";

/**
 * 可多次new的多实例面板 拿来做吞噬 宝物 其他图标格子显示用
 *
 * 使用示例：
 *         let iconPane = new IconGridPane();
 *         //拿来做演员类型点亮图标的任务 指定每行数量 以达到图标根据类别分行显示
 *         iconPane.config.指定每行列数 = [2,1,3,2]
 *         iconPane.showActorClasss = ["默认"]
 *         iconPane.showActorClassCounts = [-1]
 *         //设置参数
 *         iconPane.defaultShowActorTypeIds.push("xxx")
 *         //初始化
 *         iconPane.init();
 *         iconPane.createVisibleSwitchButton()
 *
 */
export default class IconGridPane {
    /**
     * 上次new的实例
     */
    static lastInstance: IconGridPane = null;
    /**
     * 实例集合
     */
    static instances: { [title: string]: IconGridPane } = {};

    private _sl_inited = false;
    private datas: ((Actor | AppActorType)[])[] = [];
    /** 主英雄的演员 在图标面板中显示 */
    showActorClasss: string[] = ["吞噬", "神器", "传说", "史诗", "宝物"]
    /**
     * 启用格子数量 可以每个玩家异步修改 反正这个类全都是ui显示用 不会操作任何战斗数据
     * -1表示无限制
     */
    showActorClassCounts: number[] = [-1];
    //有吞噬限制的 可以指定格子数量显示 让玩家知道吞噬多少个了
    // showActorClassCounts: number[] = [-1, 2, 3, 5, -1];
    /**
     * 手动指定默认显示的演员类型图标。 这里指定的id 可以不用满足uiShowTypes 和 showActorClasss。
     */
    defaultShowActorTypeIds: string[] = [];
    /** 所有注册的演员类型 在图标面板中显示 */
    uiShowTypes = ["吞噬面板"];
    //更新吞位信息
    private _sl_realIndexLimits: number[] = [1];

    config = {
        标题颜色: "|cffff0000",
        标题: "吞噬面板",
        显示标题: false,
        开关背景: "UI\\Widgets\\Console\\Human\\human-transport-slot.blp",
        背景模版: "_sl_border_backdrop_black",
        背景: null,
        边框: "UI\\Console\\Human\\human-transport-slot.blp",
        透明: "UI\\Widgets\\EscMenu\\Human\\blank-background.blp",

        箭头左: "ReplaceableTextures\\WorldEditUI\\Editor-Toolbar-Undo.blp",
        箭头右: "ReplaceableTextures\\WorldEditUI\\Editor-Toolbar-Redo.blp",

        行数: 6,
        /** 默认列数 */
        列数: 8,
        /**不填则每行使用默认列数. 最大不得超过默认列数 */
        指定每行列数: [],


        格子宽: 0.03,
        格子高: 0.04,
        格子间距: 0.003,

        面板描点: FramePoint.center, // 594
        面板x: 0.4, // 594
        面板y: 0.35, // 0.072222, // 130

    }

    private 按钮列表: FrameControl[] = []
    root: Frame;
    visibleSwitchButton: FrameControl = null;

    constructor(title: string = "吞噬面板") {
        this.config.标题 = title;
        IconGridPane.lastInstance = this;
        IconGridPane.instances[title] = this;
    }

    createVisibleSwitchButton(text: string = "|cffff0000吞 噬", x: number = 0.10, y: number = 0.57): FrameControl {
        let button = new FrameControl();
        button.getBackgroundImageFrame().visible = false;
        if (this.config.开关背景) {
            button.getBackgroundImageFrame().setTexture(this.config.开关背景);
            button.getBackgroundImageFrame().visible = true;
        }
        if (text && text.length > 0) {
            // let bdFrame = new Frame("BACKDROP", null, button.rootFrame.handle, "_sl_border_backdrop", 0)
            // bdFrame.setAllPoints(button.rootFrame.handle)
            let textFrame = Frame.createShadowTEXT(button.rootFrame.handle)
            textFrame.setAllPoints(button.rootFrame.handle)
            textFrame.setTextAlignment(TextAlign.center);
            textFrame.setText(text);
        } else {

            button.getImageFrame().visible = false;
        }
        button.getButtonFrame().setOnClick(() => {
            this.root.visible = !this.root.visible;
            if (this.root.visible) {
                se.emit("打开UI", this.config.标题)
                this.update();
            }
        });
        se.on("打开UI", ui => {
            if (ui != this.config.标题) {
                this.root.visible = false;
            }
        });
        button.setSize(0.04, 0.04);
        button.setAbsPoint(FramePoint.topLeft, x, y);
        this.visibleSwitchButton = button;
        return button;
    }

    private _sl_updateData() {
        this.datas = [];
        /** 主控英雄单位的演员数据 */
        let hero = selection();
        if (GetOwningPlayer(hero) != GetLocalPlayer() || !UnitUtil.isHero(hero)) {
            hero = PlayerUtil.getHero(GetLocalPlayer());
        }

        for (let i = 0; i < this.showActorClasss.length; i++) {
            this.datas.push([]);
        }
        for (let actorTypeId of this.defaultShowActorTypeIds) {
            this.datas[0].push(ActorTypeUtil.getActorType(actorTypeId));
        }
        /** 演员类型 */
        ActorTypeUtil.forAllActorTypes(actorType => {
            if (!this.uiShowTypes.includes(actorType.uiShowType)) {
                return
            }
            if (actorType.hide == true && actorType.uiEnable != true) {
                return;
            }
            if (this.defaultShowActorTypeIds.includes(actorType.id)) {
                return;
            }
            for (let i = 0; i < this.showActorClasss.length; i++) {
                let showClazz = this.showActorClasss[i];
                if (showClazz == actorType.class) {
                    this.datas[i].push(actorType);
                }
            }
        });
        if (IsHandle(hero)) {
            let actorBuffs = ActorBuffUtil.getUnitActorBuffs(hero);
            if (actorBuffs) {
                for (let actor of actorBuffs) {
                    if (!this.uiShowTypes.includes(actor.get("uiShowType"))) {
                        continue
                    }
                    for (let i = 0; i < this.showActorClasss.length; i++) {
                        let showClazz = this.showActorClasss[i];
                        if (showClazz == actor.get("class")) {
                            this.datas[i].push(actor);
                        }
                    }
                }
            }
        }
        this._sl_realIndexLimits = [];
        for (let cIndex = 0; cIndex < this.showActorClasss.length; cIndex++) {
            let realIndexLimit = 0;
            for (let j = 0; j <= cIndex; j++) {
                let count = this.showActorClassCounts[j] || -1;
                if (count <= 0) {
                    count = this.datas[j].length;
                }
                realIndexLimit += count;
                // print(cIndex + " : " + j + " :count=" + count + " realIndexLimit=" + realIndexLimit)
            }
            this._sl_realIndexLimits.push(realIndexLimit);
        }
        // print_r(this.datas)
        // print_r(this._sl_realIndexLimits)
    }

    get每页数目(): number {
        let 每页数目 = 0;
        for (let i = 0; i < this.config.行数; i++) {
            if (i < this.config.指定每行列数.length) {
                每页数目 += this.config.指定每行列数[i];
            } else {
                每页数目 += this.config.列数;
            }
        }

        return 每页数目;
    }

    update() {
        if (!this._sl_inited) {
            this.init();
        }
        let 每页数目 = this.get每页数目();
        let 当前页偏移 = 每页数目 * (this._page - 1);
        this._sl_updateData();
        for (let i = 0; i < this.按钮列表.length; i++) {
            let frameControl = this.按钮列表[i]
            let realIndex = 当前页偏移 + i;

            let overlayText = null;
            let classIndex = -1;
            let dataIndex = realIndex;
            for (let j = 0; j < this._sl_realIndexLimits.length; j++) {
                if (realIndex < this._sl_realIndexLimits[j]) {
                    overlayText = this.showActorClasss[j];
                    classIndex = j;
                    if (j > 0) {
                        dataIndex = realIndex - this._sl_realIndexLimits[j - 1];
                    }
                    break;
                }
            }
            if (this.showActorClasss.length > 1) {
                frameControl.setNumberOverlayText(ShortIDUtil.fullId2shortId(overlayText));
            }
            frameControl.getBackgroundImageFrame().visible = false;
            let rootVisible = true;
            //获取图标
            let iconTexture = this.config.透明;
            let disable = false;
            if (classIndex >= 0) {
                let actorOrActorType = this.datas[classIndex][dataIndex];
                if (actorOrActorType != null) {
                    if (actorOrActorType instanceof Actor) {
                        iconTexture = actorOrActorType.getIcon();
                    } else {
                        iconTexture = actorOrActorType.icon;
                        if (actorOrActorType.uiEnable == false) {
                            disable = true;
                        }
                    }
                }
                frameControl.getButtonFrame().solarData.itemData = actorOrActorType;
            } else {
                // log.errorWithTraceBack("错误的数据结构！")
                frameControl.getBackgroundImageFrame().visible = true;
                rootVisible = false;
            }

            frameControl.getDisableFrame().visible = disable;
            //不显示没有的
            frameControl.visible = rootVisible;

            frameControl.getImageFrame().setTexture(iconTexture)  // "ReplaceableTextures\\CommandButtons\\BTNSkillz.blp"
        }

        this.setPage(this._page)
    }

    init() {
        if (this._sl_inited) {
            return
        }
        this._sl_inited = true;

        let root = this.root = Frame.createFrame(DzGetGameUI())
        root.setAbsPoint(this.config.面板描点, this.config.面板x, this.config.面板y)
        let 底板宽 = this.config.列数 * this.config.格子宽 + (this.config.列数 - 1) * this.config.格子间距 + 0.030;
        let 底板高 = this.config.行数 * this.config.格子高 + (this.config.行数 - 1) * this.config.格子间距 + 0.04;
        //
        let container = root.handle;
        let offsetL = 0.015, offsetT = -0.015
        let marginL = 0.0015, marginT = 0.0015;
        let index = 0;
        //


        let bg: Frame = new Frame("BACKDROP", null, root.handle, this.config.背景模版, 0);
        if (this.config.背景) {
            bg.setTexture(this.config.背景);
        }

        bg.setAllPoints(root.handle);
        if (this.config.显示标题) {
            let title = Frame.createShadowTEXT(root.handle);
            DzFrameSetTextFontSpacing?.(title.handle, 1.2);
            title.setFont(0.026);
            title.setPoint(FramePoint.top, root.handle, FramePoint.top, 0, -0.01);
            title.setText(this.config.标题颜色 + this.config.标题);
            底板高 += 0.015;
            offsetT += -0.015;
        }
        //
        root.setSize(底板宽, 底板高)
        root.visible = false;
        //

        for (let row = 0; row < this.config.行数; row++) {
            let 当前行列数 = this.config.列数;
            if (row < this.config.指定每行列数.length) {
                当前行列数 = this.config.指定每行列数[row];
            }
            for (let column = 0; column < 当前行列数; column++) {
                //
                index++;
                let x = offsetL + column * (this.config.格子宽 + this.config.格子间距),
                    y = offsetT - row * (this.config.格子高 + this.config.格子间距)
                let frameControl: FrameControl = new FrameControl(container)
                frameControl.rootFrame.setTexture(this.config.边框)
                frameControl.rootFrame.setPoint(FramePoint.topLeft, container, FramePoint.topLeft, x, y)
                frameControl.setSize(this.config.格子宽, this.config.格子高)

                frameControl.getTextFrame();
                frameControl.getNumberOverlayTextFrame(true, FramePoint.topLeft);
                frameControl._sl_numberOverlayTextFrame.setPoint(FramePoint.topLeft, frameControl.rootFrame.handle, FramePoint.topLeft,
                    0.007, -0.007);
                frameControl._sl_numberOverlayFrame.clearPoints();
                frameControl._sl_numberOverlayFrame.setPoints(frameControl._sl_numberOverlayTextFrame.handle, 0.006, 0.006)
                frameControl.setNumberOverlayText(null);

                let icon = frameControl.getImageFrame()
                icon.setTexture(this.config.透明)
                icon.clearPoints();
                icon.setPoint(FramePoint.topLeft, frameControl.handle, FramePoint.topLeft, marginL, -marginT)
                icon.setSize(this.config.格子宽 - marginL * 1.8, this.config.格子高 - marginT * 2)
                this.按钮列表.push(frameControl);

                frameControl.getDisableFrame(true).visible = false;
                let btn = frameControl.getButtonFrame()
                btn.solarData.slot_id = index;
                btn.setAllPoints(icon.handle);
                btn.setOnClick(() => this.on_button_mouse_click())
                btn.setOnMouseEnter(() => this.on_button_mouse_enter())
                btn.setOnMouseLeave(() => this.on_button_mouse_leave());
            }
        }
        //
        this.init_on_button_mouse_RightClick();
        //

        let textW = 0.01
        let arrowW = 0.018, arrowH = 0.018, arrowB = 0.005;
        let fontH = 0.012

        let pageContainer = this.pageContainer = Frame.createBackDrop(container)
        pageContainer.setAllPoints(container);
        pageContainer.setTexture2Transparent();
        let pageText = this.pageText = Frame.createTEXT(pageContainer.handle)
        pageText.setTextAlignment(TextAlign.center);
        pageText.setFont(fontH)
        pageText.setPoint(FramePoint.bottom, pageContainer.handle, FramePoint.bottom, 0, arrowB + (arrowH - fontH) / 2 + 0.0005)
        this.setPage(this._page)

        let arrowIconL = Frame.createBackDrop(pageContainer.handle)
        arrowIconL.setTexture(this.config.箭头左)
        arrowIconL.setPoint(FramePoint.bottom, pageContainer.handle, FramePoint.bottom, -arrowW - textW / 2, arrowB)
        arrowIconL.setSize(arrowW, arrowH)

        let arrowBtnL = Frame.createBUTTON(pageContainer.handle)
        arrowBtnL.setAllPoints(arrowIconL.handle)
        arrowBtnL.setOnClick(() => {
            this.setPage(this._page - 1)
            this.update()
        })


        let arrowIconR = Frame.createBackDrop(pageContainer.handle)
        arrowIconR.setTexture(this.config.箭头右)
        arrowIconR.setPoint(FramePoint.bottom, pageContainer.handle, FramePoint.bottom, arrowW + textW / 2, arrowB)
        arrowIconR.setSize(arrowW, arrowH)

        let arrowBtnR = Frame.createBUTTON(pageContainer.handle)
        arrowBtnR.setAllPoints(arrowIconR.handle)
        arrowBtnR.setOnClick(() => {
            this.setPage(this._page + 1)
            this.update()
        })

        se.on("刷新UI", () => {
            this.update()
        });
        InputUtil.onKeyPressed(KeyCode.VK_ESCAPE, () => {
            this.root.visible = false;
        });
    }

    private pageContainer: Frame
    private pageText: Frame
    private _page = 1

    setPage(page: number) {
        let 每页数目 = this.get每页数目();

        let allItemSize = this._sl_realIndexLimits[this._sl_realIndexLimits.length - 1];
        let total = Math.ceil(allItemSize / 每页数目);
        if (page < 1) return
        if (page > total) return

        this._page = page
        this.pageText.setText(`|cffd9d919${page}/${total}`);
        this.pageContainer.visible = (total > 1);
    }

    private init_on_button_mouse_RightClick() {
        InputUtil.onMouseRightButtonReleased(() => {
            let focusUiId = DzGetMouseFocus();
            if (focusUiId == null || focusUiId == 0) {
                return;
            }
            let frame = Frame.fromHandle(focusUiId, true);
            if (!frame) return
            let slot_id: number = frame.solarData.slot_id
            if (!slot_id) return
            let actorOrActorType = frame.solarData.itemData;
            if (!actorOrActorType) return
            if (actorOrActorType instanceof Actor) {
                (actorOrActorType as Actor).localClick(2, InputUtil.getMouseSceneX(), InputUtil.getMouseSceneY());
            } else {
                ActorFrameUtil.localClickActorType(actorOrActorType, 2, InputUtil.getMouseSceneX(), InputUtil.getMouseSceneY())
            }
        });
    }

    on_button_mouse_click() {
        let frame = Frame.fromEvent()
        if (!frame) return

        let slot_id: number = frame.solarData.slot_id
        if (!slot_id) return
        let actorOrActorType = frame.solarData.itemData;
        if (!actorOrActorType) return
        if (actorOrActorType instanceof Actor) {
            (actorOrActorType as Actor).localClick(1, InputUtil.getMouseSceneX(), InputUtil.getMouseSceneY());
        } else {
            ActorFrameUtil.localClickActorType(actorOrActorType, 1, InputUtil.getMouseSceneX(), InputUtil.getMouseSceneY())
        }

    }

    on_button_mouse_enter() {
        let frame = Frame.fromEvent()
        if (!frame) return
        let slot_id: number = frame.solarData.slot_id
        if (!slot_id) return;
        let actorOrActorType = frame.solarData.itemData;
        if (!actorOrActorType) return
        ActorFrameUtil.showTooltip(actorOrActorType)
        let x = InputUtil.getMouseSceneX() + 0.06 - (InputUtil.getMouseSceneX() % 0.04);
        let y = InputUtil.getMouseSceneY() - 0.02 - (InputUtil.getMouseSceneY() % 0.04);
        ActorFrameUtil._sl_tooltipFrames.describe.clearPoints();
        ActorFrameUtil._sl_tooltipFrames.describe.setAbsPoint(FramePoint.left, x, y);

    }

    on_button_mouse_leave() {
        ActorFrameUtil.hideTooltip()
    }

}