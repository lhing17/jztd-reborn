import M0Probe from "./game/test/M0Probe";
import DevPanel from "./game/ui/DevPanel";
import GameConfig from "./game/config/GameConfig";
import GLog from "./game/core/GLog";
import GameCamera from "./game/ui/GameCamera";
import SceneEnvironment from "./game/core/SceneEnvironment";
import M1Game from "./game/core/M1Game";

/**
 * 正式模块的确定性装配（只装配，不堆放玩法实现）
 * M0 工程环境验收：版本显示 / 最小 Frame 面板 / 同步短命令 / KK 测试 Key
 * M1：分路定时刷怪、循环路线、80只判负、首次出怪常驻门
 */
export default function StateInit() {
    GLog.normal(`启动 ${GameConfig.projectName} v${GameConfig.version}`);
    new SceneEnvironment();
    new GameCamera();

    // M0 探针：聊天命令 + 同步处理器
    new M0Probe();

    // 最小 Frame 面板（含版本显示）
    new DevPanel();
    M1Game.init();

    DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30,
        `|cff00ff00${GameConfig.projectName}|r v${GameConfig.version} 已启动（调试=${isDebug}）`);
}
