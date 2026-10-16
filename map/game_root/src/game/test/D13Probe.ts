import GameConfig from "../config/GameConfig";
import GLog from "../core/GLog";
import DiscipleService from "../disciple/DiscipleService";

/** 同步聊天入口，仅调试局启用；不实现另一套创建、伤害或敌人计数。 */
export default class D13Probe {
    constructor(disciples: DiscipleService) {
        if (!isDebug) return;
        se.onPlayerChat(GameConfig.debugCmdPrefix + " d13", e => {
            const playerId = GetPlayerId(e.triggerPlayer);
            GLog.say(e.triggerPlayer, "[D13] " + disciples.deployPreview(playerId), 20);
        });
        se.onPlayerChat(GameConfig.debugCmdPrefix + " d13 clear", e => {
            disciples.remove(GetPlayerId(e.triggerPlayer));
            GLog.say(e.triggerPlayer, "[D13] 本路试阵弟子已清理。", 8);
        });
        se.onPlayerChat(GameConfig.debugCmdPrefix + " d13 status", e => {
            GLog.say(e.triggerPlayer, "[D13] " + disciples.status(GetPlayerId(e.triggerPlayer)), 15);
        });
    }
}
