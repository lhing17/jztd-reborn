import GameUtil from "@/GameUtil";
import GameCamera from "../ui/GameCamera";

/** 原生日间光照；远景雾必须在拉远后的可见范围之外。 */
export default class SceneEnvironment {
    static readonly fogStart = GameCamera.farClip + 2000;
    static readonly fogEnd = GameCamera.farClip + 6000;

    constructor() {
        // 自定义 DNC 已在实机出现严重黑屏，恢复游戏原生资源。
        SetDayNightModels(
            "Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl",
            "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl"
        );
        // 昼夜时间属于全局状态，必须在所有客户端执行，不放进本地分支。
        SetFloatGameState(GAME_STATE_TIME_OF_DAY, 12);
        SetTimeOfDayScale(0);
        // 地形远景雾与战争迷雾无关，不改变玩家视野或创建雾区 handle。
        // 原来的 3000~5000 黑雾会遮住距离 5000 镜头下的模型地板。
        GameUtil.setTerrainFog(SceneEnvironment.fogStart, SceneEnvironment.fogEnd);
    }
}
