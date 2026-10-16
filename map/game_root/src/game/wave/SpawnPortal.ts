import {LaneRoute} from "../config/M1Config";
import M1Config from "../config/M1Config";

/** 纯展示特效，不带单位、寻路、选中框或实际传送能力。 */
export default class SpawnPortal {
    private portals = new Map<number, effect[]>();

    show(route: LaneRoute): void {
        if (this.portals.has(route.playerId)) return;
        const portal = AddSpecialEffect(M1Config.portalModel, route.spawn.x, route.spawn.y);
        // YD Lua 的 EX 矩阵接口；不用 1.31 Blz 接口或内置 JAPI Frame 接口。
        EXEffectMatScale(portal, M1Config.portalScale, M1Config.portalScale, M1Config.portalScale);
        EXEffectMatRotateZ(portal, route.facing);
        // 原图的完整模型及贴图组成一个效果，不再拼原生石门和紫光。
        this.portals.set(route.playerId, [portal]);
    }

    has(playerId: number): boolean { return this.portals.has(playerId); }

    destroy(): void {
        for (const parts of this.portals.values()) for (const part of parts) DestroyEffect(part);
        this.portals.clear();
    }
}
