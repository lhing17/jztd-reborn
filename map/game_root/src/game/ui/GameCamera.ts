import BaseUtil from "@/BaseUtil";

/** 镜头只影响本机画面，不参与同步玩法状态。 */
export default class GameCamera {
    static readonly targetDistance = 5000;
    static readonly farClip = 12000;

    constructor() {
        // 等待开局原生镜头初始化完成，再应用庭院视距。
        BaseUtil.runLater(0.1, () => GameCamera.applyDistance());
    }

    static applyDistance() {
        // 视距增大时同步放远裁剪面，避免远处地形/装饰被裁掉。
        SetCameraField(CAMERA_FIELD_FARZ, GameCamera.farClip, 0);
        SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, GameCamera.targetDistance, 0);
    }
}
