import BaseUtil from "@/BaseUtil";
import M1Config from "../config/M1Config";
import {LaneRun, WaveRun} from "../wave/WaveTypes";
import GLog from "../core/GLog";

interface EnemyRecord {
    handle: unit;
    lane: LaneRun;
    wave: WaveRun;
    node: number;
    lastX: number;
    lastY: number;
    progressAt: number;
    orderAt: number;
}

/** 所有正式敌人的唯一登记/注销入口；一个集中更新器，无逐怪计时器。 */
export default class EnemyService {
    private records = new Map<number, EnemyRecord>();

    constructor(private onChange: (lane: LaneRun, wave: WaveRun) => void) {
        se.unitDeath(u => {
            const record = this.records.get(GetHandleId(u));
            if (record && record.handle === u) this.retire(record, "killed");
        });
        BaseUtil.onTimer(M1Config.updatePeriod, () => { this.update(); return true; });
    }

    spawn(lane: LaneRun, wave: WaveRun): boolean {
        this.reconcile(lane);
        const route = lane.route;
        const u = CreateUnit(Player(M1Config.enemyOwnerId), FourCC(M1Config.enemyType),
            route.spawn.x, route.spawn.y, route.facing);
        if (u == null || GetUnitTypeId(u) === 0) return false;
        SetUnitMoveSpeed(u, M1Config.moveSpeed);
        SetUnitAcquireRange(u, 0);
        SetUnitCreepGuard(u, false);
        RemoveGuardPosition(u);
        // TD敌人沿已验证道路路点直行，关闭原生寻路碰撞，避免同点推挤。
        // 此开关同时忽略原生地形障碍；阻挡按D13用嘲讽处理，不靠身体卡位。
        SetUnitPathing(u, false);
        const now = BaseUtil.getGameTime();
        const record: EnemyRecord = {handle: u, lane, wave, node: 0,
            lastX: GetUnitX(u), lastY: GetUnitY(u), progressAt: now, orderAt: now};
        this.records.set(GetHandleId(u), record);
        wave.spawned++;
        wave.alive++;
        lane.alive++;
        lane.peak = math.max(lane.peak, lane.alive);
        this.order(record);
        return true;
    }

    /** 刷怪/判上限前先对账，移除死亡或被外部 RemoveUnit 的记录。 */
    reconcile(lane: LaneRun): void {
        for (const record of Array.from(this.records.values())) {
            if (record.lane !== lane) continue;
            if (GetUnitTypeId(record.handle) === 0) this.retire(record, "cancelled");
            else if (GetWidgetLife(record.handle) <= 0.405) this.retire(record, "killed");
        }
    }

    cancel(lane: LaneRun): void {
        for (const record of Array.from(this.records.values())) {
            if (record.lane === lane) this.retire(record, "cancelled");
        }
    }

    /** 调试命令也通过本服务和正式死亡事件结算。 */
    kill(lane: LaneRun, count: number): void {
        for (const record of Array.from(this.records.values())) {
            if (count <= 0) break;
            if (record.lane === lane) { KillUnit(record.handle); count--; }
        }
    }

    private retire(record: EnemyRecord, reason: "killed" | "cancelled"): void {
        const id = GetHandleId(record.handle);
        if (this.records.get(id) !== record) return;
        this.records.delete(id);
        record.wave.alive--;
        record.lane.alive--;
        if (reason === "killed") {
            record.wave.killed++;
            // 延后删除尸体，避免影响当前死亡事件链中的框架处理器。
            const u = record.handle;
            BaseUtil.runLater(0.01, () => {
                if (GetUnitTypeId(u) !== 0 && GetWidgetLife(u) <= 0.405) RemoveUnit(u);
            });
        } else {
            record.wave.cancelled++;
            if (GetUnitTypeId(record.handle) !== 0) RemoveUnit(record.handle);
        }
        this.onChange(record.lane, record.wave);
    }

    private order(record: EnemyRecord): void {
        const target = record.lane.route.points[record.node];
        IssuePointOrder(record.handle, "move", target.x, target.y);
        record.orderAt = BaseUtil.getGameTime();
    }

    private update(): void {
        const now = BaseUtil.getGameTime();
        for (const record of Array.from(this.records.values())) {
            const u = record.handle;
            if (GetUnitTypeId(u) === 0) { this.retire(record, "cancelled"); continue; }
            if (GetWidgetLife(u) <= 0.405) { this.retire(record, "killed"); continue; }
            const points = record.lane.route.points;
            const target = points[record.node];
            const x = GetUnitX(u), y = GetUnitY(u);
            const dx = x - target.x, dy = y - target.y;
            if (dx * dx + dy * dy <= M1Config.arrivalRadius * M1Config.arrivalRadius) {
                record.node = record.node + 1 < points.length ? record.node + 1 : record.lane.route.loopStart;
                record.progressAt = now;
                this.order(record);
            } else if (now - record.orderAt >= 1 &&
                (GetUnitCurrentOrder(u) !== 851986 || now - record.progressAt >= 2)) {
                // 851986=move。正常行走不重发；只纠正被打断或无进展的移动。
                this.order(record);
            }
            const mx = x - record.lastX, my = y - record.lastY;
            if (mx * mx + my * my >= 32 * 32) {
                record.lastX = x; record.lastY = y; record.progressAt = now;
            } else if (now - record.progressAt >= M1Config.stuckSeconds) {
                // 回到上一已确认路点，不跳过路段，也不扣血/反复漏怪。
                const previous = record.node === 0 ? record.lane.route.spawn : points[record.node - 1];
                SetUnitPosition(u, previous.x, previous.y);
                record.lastX = GetUnitX(u); record.lastY = GetUnitY(u); record.progressAt = now;
                this.order(record);
                GLog.wave(`P${record.lane.playerId + 1} 第${record.wave.waveId}波敌人卡位回位`);
            }
        }
    }
}
