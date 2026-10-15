/**
 * 游戏日志：五类开关（普通/战斗/同步/波次/存档），高频写文件，关键反馈上屏
 * 遵循开发指南 §4.2：不通过关闭全局日志解决刷屏
 */
export default class GLog {
    static enableNormal = true;
    static enableCombat = true;
    static enableSync = true;
    static enableWave = true;
    static enableArchive = true;

    static normal(...args: any[]): void {
        if (GLog.enableNormal) log.info("[N]", ...args);
    }

    static combat(...args: any[]): void {
        if (GLog.enableCombat) log.info("[C]", ...args);
    }

    static sync(...args: any[]): void {
        if (GLog.enableSync) log.info("[S]", ...args);
    }

    static wave(...args: any[]): void {
        if (GLog.enableWave) log.info("[W]", ...args);
    }

    static archive(...args: any[]): void {
        if (GLog.enableArchive) log.info("[A]", ...args);
    }

    /** 屏幕上屏提示（短提示用，详细日志走文件） */
    static say(p: player, msg: string, duration: number = 10): void {
        DisplayTimedTextToPlayer(p, 0, 0, duration, msg);
    }
}
