import BaseUtil from "@/BaseUtil";
import SyncUtil from "@/SyncUtil";
import SectConfig, {SectDefinition} from "../config/SectConfig";
import M1Config from "../config/M1Config";
import WaveService from "../wave/WaveService";
import {LaneRun} from "../wave/WaveTypes";
import GLog from "../core/GLog";

export interface SectRun {
    lane: LaneRun;
    deadline: number;
    chosenId: string;
    builder: unit | undefined;
    reason: string;
    retryAt: number;
}

/** 所有门派与建造者变更只发生在同步处理器/同步计时器，Frame只发短命令。 */
export default class SectService {
    private runs = new Map<number, SectRun>();

    constructor(private waves: WaveService) {
        this.refresh();
        SyncUtil.onSyncData(SectConfig.syncKey, (triggerPlayer, data) => this.receive(triggerPlayer, data));
        BaseUtil.onTimer(0.25, () => { this.refresh(); return true; });
    }

    /** 纯只读；可由本地Frame查询，不能在这里补建单位或更新时间。 */
    read(playerId: number): SectRun | undefined {
        const run = this.runs.get(playerId);
        return run && this.active(run) ? run : undefined;
    }

    private active(run: SectRun): boolean {
        return this.waves.lanes.get(run.lane.playerId) === run.lane &&
            run.lane.state !== "failed" && run.lane.state !== "finished" &&
            GetPlayerController(Player(run.lane.playerId)) === MAP_CONTROL_USER &&
            GetPlayerSlotState(Player(run.lane.playerId)) === PLAYER_SLOT_STATE_PLAYING;
    }

    private refresh(): void {
        for (const [playerId, run] of Array.from(this.runs.entries())) {
            if (!this.active(run)) {
                if (run.builder && GetUnitTypeId(run.builder) !== 0) RemoveUnit(run.builder);
                this.runs.delete(playerId);
            }
        }
        for (const lane of this.waves.lanes.values()) {
            if (lane.state === "failed" || lane.state === "finished" || this.runs.has(lane.playerId)) continue;
            const run: SectRun = {lane, deadline: lane.nextWaveAt - M1Config.prepareSeconds + SectConfig.selectionSeconds,
                chosenId: "", builder: undefined, reason: "", retryAt: 0};
            if (!this.active(run)) continue;
            this.runs.set(lane.playerId, run);
            BaseUtil.runLater(math.max(0, run.deadline - BaseUtil.getGameTime()), () => {
                if (this.runs.get(lane.playerId) === run && this.active(run) && run.chosenId === "") this.defaultChoice(run);
            });
        }
        for (const run of this.runs.values()) {
            if (run.chosenId === "" && BaseUtil.getGameTime() >= run.deadline && BaseUtil.getGameTime() >= run.retryAt) {
                this.defaultChoice(run);
            }
        }
    }

    private receive(triggerPlayer: player, data: string): void {
        this.refresh();
        const run = this.read(GetPlayerId(triggerPlayer));
        if (!run || run.chosenId !== "" || data.length > 64) return;
        const parts = data.split(":");
        if (parts.length !== 2 || parts[0] !== `${run.lane.generation}`) return;
        if (BaseUtil.getGameTime() >= run.deadline) { this.defaultChoice(run); return; }
        const sect = SectConfig.get(parts[1]);
        if (sect?.selectable) this.commit(run, sect, false);
    }

    private defaultChoice(run: SectRun): void {
        const sect = SectConfig.firstAvailable();
        if (sect) this.commit(run, sect, true);
        else { run.reason = "当前没有可选门派"; run.retryAt = BaseUtil.getGameTime() + 1; }
    }

    private commit(run: SectRun, sect: SectDefinition, automatic: boolean): void {
        if (!this.active(run) || run.chosenId !== "") return;
        const id = run.lane.playerId;
        const x = id === 1 || id === 3 ? 4368 : -4368;
        const y = id >= 2 ? -4784 : 4272;
        const u = CreateUnit(Player(id), FourCC("ewsp"), x, y, run.lane.route.facing);
        if (u == null || GetUnitTypeId(u) === 0) {
            run.reason = "引路灵生成失败，请重试";
            run.retryAt = BaseUtil.getGameTime() + 1;
            GLog.normal(`[门派] P${id + 1} 建造者创建失败，门派未提交`);
            return;
        }
        // 原生小精灵仅作可移动建造者占位，避免暴露原生精灵族建筑和自爆。
        for (const ability of ["AEbu", "Awha", "Adtn", "Aren", "Ault"]) UnitRemoveAbility(u, FourCC(ability));
        SetUnitInvulnerable(u, true);
        SetUnitUseFood(u, false);
        SetUnitPathing(u, false);
        SetUnitVertexColor(u, sect.color[0], sect.color[1], sect.color[2], 255);
        run.builder = u;
        run.chosenId = sect.id;
        run.reason = "";
        run.lane.sectName = sect.name;
        GLog.normal(`[门派] P${id + 1} ${automatic ? "超时默认" : "确认"} ${sect.id} generation=${run.lane.generation}`);
        GLog.say(Player(id), `|cffe6c17a已加入${sect.name}。|r 距首波还有${math.max(0, math.ceil(run.lane.nextWaveAt - BaseUtil.getGameTime()))}秒。`, 8);
        // 单位创建/登记在上面同步完成；只有镜头与选择属于本地表现。
        if (GetLocalPlayer() === Player(id)) {
            ClearSelection();
            SelectUnit(u, true);
            PanCameraToTimed(x, y, 0.35);
        }
    }
}
