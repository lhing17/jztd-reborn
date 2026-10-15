import BaseUtil from "@/BaseUtil";

export default class TimerDialogUtil {

    private static _sl_cache: { [hid: string]: timerdialog } = {};

    /**
     * 倒计时 计时器窗口
     * @param title
     * @param timeout
     * @param displayPlayer 显示玩家
     */
    static show(title: string, timeout: number, displayPlayer?: player): timerdialog {
        let timer = CreateTimer();
        let timerDialog = CreateTimerDialog(timer);
        TimerDialogSetTitle(timerDialog, title)
        if (displayPlayer == null || displayPlayer == GetLocalPlayer()) {
            TimerDialogDisplay(timerDialog, true);
        }
        TimerDialogUtil._sl_cache["_t" + GetHandleId(timer)] = timerDialog
        TimerStart(timer, timeout, false, null);
        BaseUtil.runLater(timeout, () => {
            DestroyTimerDialog(timerDialog);
            DestroyTimer(timer)
        })
        return timerDialog;
    }


}