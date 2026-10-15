import M0Probe from "./game/test/M0Probe";
import DevPanel from "./game/ui/DevPanel";
import GameConfig from "./game/config/GameConfig";
import GLog from "./game/core/GLog";

/**
 * 正式模块的确定性装配（只装配，不堆放玩法实现）
 * M0 工程环境验收：版本显示 / 最小 Frame 面板 / 同步短命令 / KK 测试 Key
 */
export default function StateInit() {
    GLog.normal(`启动 ${GameConfig.projectName} v${GameConfig.version}`);

    // M0 探针：聊天命令 + 同步处理器
    new M0Probe();

    // 最小 Frame 面板（含版本显示）
    new DevPanel();

    DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30,
        `|cff00ff00${GameConfig.projectName}|r v${GameConfig.version} 已启动（调试=${isDebug}）`);
}
