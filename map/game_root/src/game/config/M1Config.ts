export interface RoutePoint { x: number; y: number; }
export interface LaneRoute {
    playerId: number;
    spawn: RoutePoint;
    facing: number;
    points: RoutePoint[];
    loopStart: number;
}
export interface WavePlan { count: number; interval: number; }

/** M1 验收配置。首发完整波表在 M3 替换；当前不使用共享随机数。 */
export default class M1Config {
    static readonly enemyLimit = 80;
    static readonly overloadSeconds = 20;
    static readonly modeName = "普通模式";
    static readonly difficultyName = "N1";
    static readonly enemyOwnerId = 5;
    static readonly enemyType = "hfoo";
    static readonly moveSpeed = 270;
    static readonly prepareSeconds = 60;
    static readonly wavePeriod = 45;
    static readonly updatePeriod = 0.25;
    static readonly arrivalRadius = 48;
    static readonly stuckSeconds = 12;
    static readonly portalModel = "war3mapImported\\jzr_portal\\reference_portal.mdx";
    static readonly portalScale = 1.0;
    static readonly portalLeadSeconds = 7;
    static readonly waves: WavePlan[] = [
        {count: 20, interval: 0.6}, {count: 20, interval: 0.6},
        {count: 20, interval: 0.6}, {count: 20, interval: 0.6},
        {count: 20, interval: 0.6},
    ];

    /**
     * 坐标源：solar_asset/arena-layout.json + 当前 W3E/WPM。
     * P1 出口向东：内环只走一次，连接路向北，之后只在外环循环。
     * P2 镜像 X；P3 镜像 Y=-256；P4 同时镜像。无随机分岔。
     */
    static route(playerId: number): LaneRoute {
        const mirrorX = playerId === 1 || playerId === 3;
        const mirrorY = playerId >= 2;
        const transform = (x: number, y: number): RoutePoint => ({
            x: mirrorX ? -x : x,
            y: mirrorY ? -512 - y : y,
        });
        const base = [
            [-3264, 4656], [-2560, 4656], [-2560, 2816],
            [-5056, 2816], [-5056, 4656], [-3776, 4656],
            [-3776, 5568], [-1728, 5568], [-1728, 1984],
            [-5952, 1984], [-5952, 5568], [-3776, 5568],
        ];
        return {
            playerId, spawn: transform(-3536, 4656), facing: mirrorX ? 180 : 0,
            points: base.map(p => transform(p[0], p[1])),
            loopStart: 7,
        };
    }
}
