/** 全图可见与固定正午；载入期的雾色同时由地图 UI/MiscData.txt 控制。 */
export default class SceneEnvironment {
    static readonly fogStart = 100000;
    static readonly fogEnd = 200000;

    private static initialized = false;

    /** 在 main 加载模块时执行，不能等 App 的 runLater / UID 回调。 */
    static initialize() {
        if (SceneEnvironment.initialized) return;
        // 全局同步执行。仅关闭开关不能证明载入首帧无渐变：
        // UI/MiscData.txt 另将初始地形雾层设为透明、物件雾色设为白色。
        FogMaskEnable(false);
        FogEnable(false);
        // 两个原生同名 DNC 资源只固定光色关键帧，保留完整模型结构。
        // JASS main 首次加载时即使用正午光；这里不再重载模型，避免开局插值。
        // 昼夜时间属于全局状态，必须在所有客户端执行，不放进本地分支。
        SetFloatGameState(GAME_STATE_TIME_OF_DAY, 12);
        SetTimeOfDayScale(0);
        // 克制的青绿色水面，与地图初始水色一致。
        SetWaterBaseColor(128, 255, 96, 255);
        // 与地图 w3i、UI/MiscData.txt 初始值一致，移至远裁剪范围之外。
        SetTerrainFogEx(0, SceneEnvironment.fogStart, SceneEnvironment.fogEnd, 0, 1, 1, 1);
        SceneEnvironment.initialized = true;
    }

    constructor() {
        SceneEnvironment.initialize();
    }

    static visibilityStatus(): string {
        return `视野检查：战争迷雾=${IsFogEnabled()} 黑色遮罩=${IsFogMaskEnabled()} 环境初始化=${SceneEnvironment.initialized}`;
    }
}

// solar_boot 在 main 中同步 require App -> StateInit -> 本模块。
// 此时原生接口已初始化，但 App 的延迟启动尚未注册；在首帧前完成环境设置。
SceneEnvironment.initialize();
