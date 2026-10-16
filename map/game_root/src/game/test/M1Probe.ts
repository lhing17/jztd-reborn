import GameConfig from "../config/GameConfig";
import GLog from "../core/GLog";
import WaveService from "../wave/WaveService";

/** 聊天事件为同步事件；身份只取 triggerPlayer。只读命令不限模式，变更限调试局。 */
export default class M1Probe {
    constructor(service: WaveService) {
        se.onPlayerChat(GameConfig.debugCmdPrefix + " m1", e => {
            GLog.say(e.triggerPlayer, service.status(GetPlayerId(e.triggerPlayer)), 30);
        });
        if (!isDebug) return;
        se.onPlayerChat(GameConfig.debugCmdPrefix + " m1 restart", e => {
            // 仅第一个仍在场的人类玩家可重开所有路。
            for (let id = 0; id < 4; id++) {
                if (GetPlayerController(Player(id)) === MAP_CONTROL_USER &&
                    GetPlayerSlotState(Player(id)) === PLAYER_SLOT_STATE_PLAYING) {
                    if (GetPlayerId(e.triggerPlayer) === id) service.restart();
                    return;
                }
            }
        });
        for (const command of ["kill", "clear"]) {
            const action = command;
            se.onPlayerChat(GameConfig.debugCmdPrefix + " m1 " + action, e => {
                const lane = service.lanes.get(GetPlayerId(e.triggerPlayer));
                if (!lane || lane.state === "failed" || lane.state === "finished") return;
                if (action === "kill") service.enemies.kill(lane, 1);
                else service.enemies.kill(lane, lane.alive);
                GLog.say(e.triggerPlayer, service.status(lane.playerId), 30);
            });
        }
    }
}
