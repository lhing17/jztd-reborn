import PlatUtil from "@/PlatUtil";
import ArchiveUtil from "@/ArchiveUtil";

/**
 * (如果平台的获得最新的随机数事件有延迟0.1s的话 可以考虑采用2组随机数来模拟立即获得最新随机数 基本没什么用)
 * 采用2组随机数来获得当前生成的值。相当于每局只能更新一次随机数 并立即获得结果 (实际就是切换使用的另一组)
 * 平台随机数工具
 * key 不支持下划线 只能大小写字母和数字组合
 * @deprecated see PlatUtil.getBackendLogicIntResult 推荐使用原始的随机数
 */
export default class PlatRandomNumUtil {
    private static limitKey = {};


    static getRandomNumber(whichPlayer: player, key: string): number {
        let nowIndex = ArchiveUtil.get(whichPlayer, "i_" + key) || 0;
        let realKey = nowIndex + "X" + key;
        return PlatUtil.getBackendLogicIntResult(whichPlayer, realKey)
    }

    static updateRandomNumber(whichPlayer: player, key: string, groupkey: string): boolean {
        if (!IsHandle(whichPlayer)) {
            return false
        }
        let limitKey = GetPlayerId(whichPlayer) + "_" + key
        if (PlatRandomNumUtil.limitKey[limitKey] == true) {
            log.errorWithTraceBack("一局游戏中不能更新2次随机数!");
            if (!isDebug) {
                return false;
            }
        }
        PlatRandomNumUtil.limitKey[limitKey] = true;
        let nowIndex = ArchiveUtil.get(whichPlayer, "i_" + key) || 0;
        let realKey = nowIndex + "X" + key;

        //
        if (nowIndex == 0 || nowIndex == "0" || nowIndex == "") {
            nowIndex = 1;
        } else {
            nowIndex = 0;
        }
        ArchiveUtil.set(whichPlayer, "i_" + key, nowIndex);
        //说明是第一次生成 则2个都生成
        if (!PlatUtil.checkBackendLogicExists(whichPlayer, realKey)) {
            PlatUtil.requestBackendLogic(whichPlayer, "0X" + key, groupkey)
            return PlatUtil.requestBackendLogic(whichPlayer, "1X" + key, groupkey)
        }
        PlatUtil.removeBackendLogicResult(whichPlayer, realKey)
        return PlatUtil.requestBackendLogic(whichPlayer, realKey, groupkey)
    }


}