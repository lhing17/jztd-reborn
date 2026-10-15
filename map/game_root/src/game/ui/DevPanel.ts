import {Frame} from "@/frame";
import BaseUtil from "@/BaseUtil";
import GameConfig from "../config/GameConfig";
import M0Probe from "../test/M0Probe";

/**
 * M0 最小 Frame 面板（开发指南 §7.1 硬边界）：
 * - 背景用 BACKDROP + setIgnoreTrackEvent，不叠全面板透明 BUTTON；
 * - 本地表现（时间刷新）只动 Frame，不进同步状态。
 * 后续波次/金币/生命只读状态都挂到这个面板上。
 */
export default class DevPanel {

    private timeText: Frame;

    constructor() {
        // 背景（忽略鼠标事件，不拦截点击）
        let bg = Frame.createBackDrop();
        bg.setSize(0.24, 0.10);
        bg.setAbsPoint(FRAMEPOINT_TOPLEFT, 0.02, 0.55);
        bg.setTexture2Transparent();
        bg.setIgnoreTrackEvent(true);

        // 版本文本
        let versionText = Frame.createTEXT(bg.handle);
        versionText.setText(`|cff00ff00${GameConfig.projectName}|r  v${GameConfig.version}`);
        versionText.setSize(0.22, 0.03);
        versionText.setAbsPoint(FRAMEPOINT_TOPLEFT, 0.03, 0.535);
        versionText.setIgnoreTrackEvent(true);

        // 游戏时间（本地刷新）
        this.timeText = Frame.createTEXT(bg.handle);
        this.timeText.setText("时间: 0s");
        this.timeText.setSize(0.22, 0.03);
        this.timeText.setAbsPoint(FRAMEPOINT_TOPLEFT, 0.03, 0.505);
        this.timeText.setIgnoreTrackEvent(true);
        BaseUtil.onTimer(1, () => {
            this.timeText.setText("时间: " + math.floor(BaseUtil.getGameTime()) + "s");
            return true;
        });

        // 同步测试按钮（点击发同步短命令，状态在同步处理器提交）
        let syncBtn = Frame.createTEXTBUTTON(bg.handle);
        syncBtn.setText("同步测试");
        syncBtn.setSize(0.10, 0.03);
        syncBtn.setAbsPoint(FRAMEPOINT_TOPLEFT, 0.03, 0.47);
        syncBtn.setOnClick(() => {
            M0Probe.sendSyncProbe();
        });
    }
}
