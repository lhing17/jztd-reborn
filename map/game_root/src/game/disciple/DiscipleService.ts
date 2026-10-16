import BaseUtil from "@/BaseUtil";
import WaveService from "../wave/WaveService";
import {LaneRun} from "../wave/WaveTypes";

interface DiscipleRecord {
    handle: unit;
    lane: LaneRun;
    target: unit | undefined;
}

/** D13首个候选：原生无敌、移除移动能力，保留可选中和原生攻击。 */
export default class DiscipleService {
    private records = new Map<number, DiscipleRecord>();
    private readonly range = 400;

    constructor(private waves: WaveService) {
        BaseUtil.onTimer(0.25, () => { this.update(); return true; });
    }

    /** 验证期每路限一个占位弟子；后续建造事务在此服务之上接入。 */
    deployPreview(playerId: number): string {
        this.update();
        const lane = this.waves.lanes.get(playerId);
        if (!lane || lane.state === "failed" || lane.state === "finished") return "本路未在进行中，请先重测M1。";
        if (this.records.has(playerId)) return "本路已有试阵弟子，不重复创建。";
        // P1内坪靠近内环右上侧，其他路沿现有X=0/Y=-256镜像。
        const x = playerId === 1 || playerId === 3 ? 2880 : -2880;
        const y = playerId >= 2 ? -4784 : 4272;
        const u = CreateUnit(Player(playerId), FourCC("hrif"), x, y, lane.route.facing);
        if (u == null || GetUnitTypeId(u) === 0) return "试阵弟子创建失败，未登记。";
        if (!UnitRemoveAbility(u, FourCC("Amov"))) {
            RemoveUnit(u);
            return "移除移动能力失败，已清理试阵弟子。";
        }
        SetUnitInvulnerable(u, true);
        SetUnitUseFood(u, false);
        SetUnitPathing(u, false);
        // 关闭原生自主索敌，由正式敌人登记表确定目标。
        SetUnitAcquireRange(u, 0);
        this.records.set(playerId, {handle: u, lane, target: undefined});
        return "已放置试阵弟子（火枪手占位）：无敌、不可移动、只攻击本路400范围内正式敌人。";
    }

    remove(playerId: number): void {
        const record = this.records.get(playerId);
        if (!record) return;
        this.records.delete(playerId);
        if (GetUnitTypeId(record.handle) !== 0) RemoveUnit(record.handle);
    }

    /** 只读诊断；原生生命数值用于实机核对，不用桩调用代替引擎效果。 */
    status(playerId: number): string {
        const record = this.records.get(playerId);
        if (!record || GetUnitTypeId(record.handle) === 0) return "本路没有试阵弟子。";
        const target = record.target;
        const targetLife = target && GetUnitTypeId(target) !== 0 ? math.floor(GetWidgetLife(target)) : "无";
        return `P${playerId + 1} 试阵弟子生命=${math.floor(GetWidgetLife(record.handle))}` +
            ` 目标生命=${targetLife}（火枪手占位，范围${this.range}）`;
    }

    private update(): void {
        // 快照遍历，避免TSTL Map在删除当前项后跳过其他路。
        for (const [playerId, record] of Array.from(this.records.entries())) {
            const u = record.handle;
            if (this.waves.lanes.get(playerId) !== record.lane || record.lane.state === "failed" ||
                record.lane.state === "finished" || GetUnitTypeId(u) === 0 || GetWidgetLife(u) <= 0.405) {
                this.remove(playerId);
                continue;
            }
            const target = this.waves.enemies.findTarget(record.lane, GetUnitX(u), GetUnitY(u), this.range, record.target);
            if (target) {
                // 不在正常攻击期间反复发令；保留原生攻击前摇/冷却。
                if (target !== record.target || GetUnitCurrentOrder(u) !== 851983) {
                    if (IssueTargetOrder(u, "attack", target)) record.target = target;
                }
            } else if (record.target) {
                IssueImmediateOrder(u, "stop");
                record.target = undefined;
            }
        }
    }
}
