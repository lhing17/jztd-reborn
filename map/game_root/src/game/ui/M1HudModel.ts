import M1Config from "../config/M1Config";
import WaveService from "../wave/WaveService";

export interface PlayerHudRow {
    id: number;
    name: string;
    sect: string;
    danger: boolean;
    kills: string;
}
export interface M1HudSnapshot {
    time: string;
    monsters: string;
    monsterColor: string;
    wave: string;
    countdown: string;
    warning: string;
    rows: PlayerHudRow[];
}

/** 只读展示投影；倒计时使用正式服务的到期时刻，不另起一套波次计时。 */
export default class M1HudModel {
    static formatTime(seconds: number): string {
        const total = math.max(0, math.floor(seconds));
        const minutes = math.floor(total / 60);
        const tail = total % 60;
        return `${minutes < 10 ? "0" : ""}${minutes}:${tail < 10 ? "0" : ""}${tail}`;
    }

    static read(service: WaveService, viewerId: number, now: number): M1HudSnapshot {
        const lane = service.lanes.get(viewerId);
        const rows: PlayerHudRow[] = [];
        for (let id = 0; id < 4; id++) {
            const item = service.lanes.get(id);
            if (!item || GetPlayerController(Player(id)) !== MAP_CONTROL_USER ||
                GetPlayerSlotState(Player(id)) !== PLAYER_SLOT_STATE_PLAYING) continue;
            let kills = 0;
            for (const wave of item.waves) kills += wave.killed;
            rows.push({id, name: GetPlayerName(Player(id)), sect: item.sectName,
                danger: item.overloadUntil > 0, kills: `${kills}`});
        }
        const alive = lane ? lane.alive : 0;
        let countdown = "观战中";
        if (lane) {
            if (lane.state === "failed") countdown = "本路失败";
            else if (lane.state === "finished") countdown = "全部清场";
            else if (lane.nextWaveAt > 0) countdown =
                `进攻倒计时：|cff80ff60${math.max(0, math.ceil(lane.nextWaveAt - now))}秒|r`;
            else countdown = lane.state === "spawning" ? "正在出怪" : "等待清场";
        }
        return {
            time: `时间 ${M1HudModel.formatTime(now)}`,
            monsters: lane ? `怪物 ${alive}/${M1Config.enemyLimit}` : "观战中",
            monsterColor: lane && (lane.state === "failed" || alive >= M1Config.enemyLimit) ? "|cffff4040" :
                alive >= 60 ? "|cffffb840" : "|cff80ff60",
            wave: `${M1Config.modeName}  难度：${M1Config.difficultyName}  波数：${lane ? lane.waves.length : 0}/${M1Config.waves.length}`,
            warning: lane && lane.overloadUntil > 0 ?
                `|cffff3030怪物达到上限！${math.max(0, math.ceil(lane.overloadUntil - now))}秒内降到80以下|r` : "",
            countdown, rows,
        };
    }
}
