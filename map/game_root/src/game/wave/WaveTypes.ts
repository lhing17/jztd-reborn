import {LaneRoute} from "../config/M1Config";

export type WaveState = "preparing" | "spawning" | "fighting" | "completed" | "failed" | "finished";
export interface WaveRun {
    waveId: number;
    generation: number;
    state: WaveState;
    expected: number;
    spawned: number;
    alive: number;
    killed: number;
    cancelled: number;
    startedAt: number;
    endedAt: number;
    playerCount: number;
}
export interface LaneRun {
    playerId: number;
    sectName: string;
    route: LaneRoute;
    generation: number;
    state: WaveState;
    waves: WaveRun[];
    alive: number;
    peak: number;
    nextWaveAt: number;
    failureCount: number;
    reason: string;
    overloadUntil: number;
    overloadGeneration: number;
}
