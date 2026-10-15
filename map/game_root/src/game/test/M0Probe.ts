import SyncUtil from "@/SyncUtil";
import ArchiveUtil from "@/ArchiveUtil";
import BaseUtil from "@/BaseUtil";
import GameConfig from "../config/GameConfig";
import GLog from "../core/GLog";

/**
 * M0 探针（开发指南 §4.2 可观察性 + §11 M0 验收）：
 * 1. 版本与日志自检：-jt v
 * 2. 同步短命令：-jt sync（双开时所有客户端应显示同一触发玩家）
 * 3. KK 测试 Key 读写：-jt arch（跨局读取验证：上一局写入的值本局可读）
 * 测试 Key 一律 jzr_test_ 前缀，严禁触碰正式存档键（04 文档 4.2 / 指南 §9.6）
 */
export default class M0Probe {

    static SYNC_KEY = "jzr_m0_sync";

    constructor() {
        // 同步处理器：注册一次，取同步事件的 triggerPlayer（指南 §5.2 不信任载荷玩家编号）
        SyncUtil.onSyncData(M0Probe.SYNC_KEY, (triggerPlayer, data) => {
            let msg = `[同步测试] 触发玩家=${GetPlayerName(triggerPlayer)} 数据=${data}`;
            GLog.sync(msg);
            GLog.say(GetLocalPlayer(), msg);
        });

        se.onPlayerChat(GameConfig.debugCmdPrefix + " v", (e) => {
            GLog.say(e.triggerPlayer,
                `${GameConfig.projectName} v${GameConfig.version} | 配置v${GameConfig.configVersion} | 存档v${GameConfig.archiveVersion} | 调试=${isDebug}`);
        });

        se.onPlayerChat(GameConfig.debugCmdPrefix + " sync", (e) => {
            M0Probe.sendSyncProbe();
        });

        se.onPlayerChat(GameConfig.debugCmdPrefix + " arch", (e) => {
            M0Probe.archiveProbe(e.triggerPlayer);
        });
    }

    /** 发送同步探针短命令（可从 Frame 按钮调用） */
    static sendSyncProbe(): void {
        GLog.sync("发送同步探针");
        // 载荷只带操作名与最少参数；玩家身份由同步事件给出
        SyncUtil.syncData(M0Probe.SYNC_KEY, "ping@" + math.floor(BaseUtil.getGameTime()));
    }

    /** KK 测试 Key 读写：写一次后重开本局/重开游戏，值应仍在（跨局验证） */
    static archiveProbe(p: player): void {
        let key = GameConfig.archivePrefix + "test_v1";
        let oldVal = ArchiveUtil.get(p, key);
        if (oldVal != null) {
            let msg = `[存档测试] 读到跨局值: ${key}=${oldVal}`;
            GLog.archive(msg);
            GLog.say(p, msg);
        } else {
            let newVal = `v${GameConfig.version}@${math.floor(BaseUtil.getGameTime())}s`;
            ArchiveUtil.set(p, key, newVal);
            let msg = `[存档测试] 首次写入: ${key}=${newVal}。重开一局后输入 -jt arch 应读到它。`;
            GLog.archive(msg);
            GLog.say(p, msg);
        }
    }
}
