import BaseUtil from "@/BaseUtil";
import M1Config from "../config/M1Config";
import GLog from "../core/GLog";
import EnemyService from "../enemy/EnemyService";
import SpawnPortal from "./SpawnPortal";
import {LaneRun, WaveRun} from "./WaveTypes";

/** 分路定时波次；本路连续20秒保持80只及以上才失败。 */
export default class WaveService {
    private static instance: WaveService;
    readonly lanes = new Map<number, LaneRun>();
    readonly portals = new SpawnPortal();
    readonly enemies: EnemyService;
    private generation = 0;

    static start(): WaveService {
        if (!WaveService.instance) WaveService.instance = new WaveService();
        return WaveService.instance;
    }

    private constructor() {
        this.enemies = new EnemyService((lane, wave) => this.onEnemyChange(lane, wave));
        // 离开事件也是同步事件，只清理对应玩家，不影响其他路。
        const leave = CreateTrigger();
        for (let id = 0; id < 4; id++) TriggerRegisterPlayerEvent(leave, Player(id), EVENT_PLAYER_LEAVE);
        TriggerAddAction(leave, () => {
            const lane = this.lanes.get(GetPlayerId(GetTriggerPlayer()));
            if (lane) this.fail(lane, "玩家离开");
        });
        this.restart();
    }

    /** 正式重建入口：旧代次失效后才清场。门在本局重测/失败后仍留在原位置。 */
    restart(): void {
        this.generation++;
        for (const lane of this.lanes.values()) {
            lane.generation = -1;
            lane.state = "failed";
            lane.nextWaveAt = 0;
            lane.overloadUntil = 0;
            lane.overloadGeneration++;
            lane.reason = "重测取消";
            for (const wave of lane.waves) {
                if (wave.state !== "completed") { wave.state = "failed"; wave.endedAt = BaseUtil.getGameTime(); }
            }
            this.enemies.cancel(lane);
        }
        this.lanes.clear();
        const firstWaveAt = BaseUtil.getGameTime() + M1Config.prepareSeconds;
        for (let id = 0; id < 4; id++) {
            if (GetPlayerController(Player(id)) !== MAP_CONTROL_USER ||
                GetPlayerSlotState(Player(id)) !== PLAYER_SLOT_STATE_PLAYING) continue;
            const lane: LaneRun = {playerId: id, sectName: "未选择", route: M1Config.route(id), generation: this.generation,
                state: "preparing", waves: [], alive: 0, peak: 0, nextWaveAt: 0, failureCount: 0, reason: "",
                overloadUntil: 0, overloadGeneration: 0};
            this.lanes.set(id, lane);
            this.schedule(lane, 0, M1Config.prepareSeconds, firstWaveAt);
            GLog.say(Player(id), `[M1] ${M1Config.prepareSeconds}秒后出怪；怪物达到80只后有20秒清怪时间。`, 15);
        }
    }

    private valid(lane: LaneRun, token: number): boolean {
        return this.lanes.get(lane.playerId) === lane && lane.generation === token &&
            lane.state !== "failed" && lane.state !== "finished";
    }

    private schedule(lane: LaneRun, index: number, delay: number, deadline?: number): void {
        const token = lane.generation;
        const now = BaseUtil.getGameTime();
        lane.nextWaveAt = deadline ?? now + delay;
        const remaining = math.max(0, lane.nextWaveAt - now);
        if (!this.portals.has(lane.playerId)) {
            // 开波前先播放门的生成动画；旧轮或已离开玩家的预告不能创建门。
            BaseUtil.runLater(math.max(0, remaining - M1Config.portalLeadSeconds), () => {
                if (this.valid(lane, token)) this.portals.show(lane.route);
            });
        }
        BaseUtil.runLater(remaining, () => {
            if (this.valid(lane, token)) this.begin(lane, index);
        });
    }

    private begin(lane: LaneRun, index: number): void {
        const plan = M1Config.waves[index];
        lane.nextWaveAt = 0;
        const wave: WaveRun = {waveId: index + 1, generation: lane.generation, state: "spawning",
            expected: plan.count, spawned: 0, alive: 0, killed: 0, cancelled: 0,
            startedAt: BaseUtil.getGameTime(), endedAt: 0, playerCount: this.lanes.size};
        lane.waves.push(wave);
        lane.state = "spawning";
        GLog.say(Player(lane.playerId), `[M1] 第${wave.waveId}波：${plan.count}只`, 5);
        GLog.wave(`P${lane.playerId + 1} wave=${wave.waveId} generation=${wave.generation}`);
        this.spawnNext(lane, wave, index);
        if (this.valid(lane, wave.generation) && index + 1 < M1Config.waves.length) {
            this.schedule(lane, index + 1, M1Config.wavePeriod);
        }
    }

    private spawnNext(lane: LaneRun, wave: WaveRun, index: number): void {
        if (!this.valid(lane, wave.generation) || wave.state !== "spawning") return;
        this.enemies.reconcile(lane);
        if (!this.enemies.spawn(lane, wave)) { this.fail(lane, "敌人创建失败，请检查日志"); return; }
        this.checkOverload(lane);
        if (wave.spawned === wave.expected) {
            wave.state = "fighting";
            this.onEnemyChange(lane, wave);
        } else {
            const token = lane.generation;
            BaseUtil.runLater(M1Config.waves[index].interval, () => {
                if (this.valid(lane, token)) this.spawnNext(lane, wave, index);
            });
        }
    }

    private onEnemyChange(lane: LaneRun, wave: WaveRun): void {
        if (lane.state === "failed" || lane.generation !== this.generation) return;
        this.checkOverload(lane);
        if (wave.spawned === wave.expected && wave.alive === 0 && wave.state !== "completed") {
            wave.state = "completed";
            wave.endedAt = BaseUtil.getGameTime();
            GLog.wave(`P${lane.playerId + 1} 第${wave.waveId}波清场`);
        }
        const latest = lane.waves[lane.waves.length - 1];
        if (!latest) return;
        if (lane.waves.length === M1Config.waves.length && lane.waves.every(item => item.state === "completed")) {
            lane.state = "finished";
            lane.nextWaveAt = 0;
            GLog.say(Player(lane.playerId), "[M1] 五波全部清场，验收波次完成。", 20);
        } else {
            lane.state = lane.waves.some(item => item.state === "spawning") ? "spawning" :
                lane.alive > 0 ? "fighting" : "preparing";
        }
    }

    private checkOverload(lane: LaneRun): void {
        if (lane.state === "failed" || lane.state === "finished") return;
        if (lane.alive < M1Config.enemyLimit) {
            if (lane.overloadUntil > 0) {
                lane.overloadUntil = 0;
                lane.overloadGeneration++;
                GLog.say(Player(lane.playerId), "|cff80ff60怪物已降到80以下，危险解除。|r", 4);
            }
            return;
        }
        if (lane.overloadUntil > 0) return;
        const token = lane.generation;
        const overloadToken = ++lane.overloadGeneration;
        lane.overloadUntil = BaseUtil.getGameTime() + M1Config.overloadSeconds;
        this.overloadNotice(lane, M1Config.overloadSeconds);
        BaseUtil.onTimer(1, () => {
            if (!this.valid(lane, token) || lane.overloadGeneration !== overloadToken) return false;
            const remaining = math.ceil(lane.overloadUntil - BaseUtil.getGameTime());
            if (remaining <= 0) return false;
            this.overloadNotice(lane, remaining);
            return true;
        });
        BaseUtil.runLater(M1Config.overloadSeconds, () => {
            if (!this.valid(lane, token) || lane.overloadGeneration !== overloadToken) return;
            this.enemies.reconcile(lane);
            if (lane.overloadGeneration === overloadToken && lane.alive >= M1Config.enemyLimit) {
                this.fail(lane, "怪物连续20秒达到或超过80只");
            }
        });
    }

    private overloadNotice(lane: LaneRun, remaining: number): void {
        // 原生屏幕消息像参考图一样滚动叠放；不是顶部一行小字。
        if (remaining % 2 === 0) GLog.say(GetLocalPlayer(),
            `|cffff0000【系统】：玩家${lane.playerId + 1}怪已达上限！快去援助他！！|r`, 4);
        GLog.say(Player(lane.playerId),
            `|cffff0000【系统】：急！急！急！怪物超上限啦！再不管就失败啦！ ${remaining}|r`, 4);
    }

    fail(lane: LaneRun, reason: string): void {
        if (lane.state === "failed" || lane.state === "finished") return;
        lane.failureCount = lane.alive;
        lane.reason = reason;
        lane.state = "failed";
        lane.generation = -1;
        lane.nextWaveAt = 0;
        lane.overloadUntil = 0;
        lane.overloadGeneration++;
        for (const wave of lane.waves) {
            if (wave.state !== "completed") { wave.state = "failed"; wave.endedAt = BaseUtil.getGameTime(); }
        }
        this.enemies.cancel(lane);
        GLog.say(Player(lane.playerId), `|cffff4040[M1] 本路失败：${reason}（判定时${lane.failureCount}只）|r`, 60);
        GLog.wave(`P${lane.playerId + 1} failed reason=${reason} alive=${lane.failureCount}`);
        // 调试局保留现场查询/重测；正式局显示原生失败结果。
        if (!isDebug && reason !== "玩家离开") CustomDefeatBJ(Player(lane.playerId), reason);
    }

    status(playerId: number): string {
        const lane = this.lanes.get(playerId);
        if (!lane) return "[M1] 本玩家未启用路线";
        let spawned = 0, killed = 0, cancelled = 0;
        for (const wave of lane.waves) { spawned += wave.spawned; killed += wave.killed; cancelled += wave.cancelled; }
        const balanced = spawned === killed + cancelled + lane.alive;
        return `[M1] P${playerId + 1} ${lane.state} 波次=${lane.waves.length}/${M1Config.waves.length}` +
            ` 存活=${lane.alive}/80 峰值=${lane.peak} 生成=${spawned} 击杀=${killed} 注销=${cancelled}` +
            ` 对账=${balanced ? "OK" : "ERROR"} 门=${this.portals.has(playerId) ? "有" : "无"}` +
            (lane.overloadUntil > 0 ? ` 超限失败倒计时=${math.max(0, math.ceil(lane.overloadUntil - BaseUtil.getGameTime()))}秒` : "") +
            (lane.reason ? ` 原因=${lane.reason} 判定数量=${lane.failureCount}` : "");
    }
}
