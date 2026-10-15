import NumberUtil from "@/NumberUtil";

export default class DateUtil {

    /**
     * 最近的已过时间
     * 时间减去这个时间点  可以节省存储
     */
    static startBaseTime_RecentTimePassed = 1757488714;//Wed Sep 10 2025 15:18:34 GMT+0800

    /**
     * 尽可能的生成唯一id
     * 根据当前时间+随机数生成
     */
    static generateUUIDByTime(): string {
        let timeSec = DateUtil.getGameStartTime() - DateUtil.startBaseTime_RecentTimePassed;
        timeSec += (Math.floor(_g_time / 1000));
        return NumberUtil.toUnsignedString(timeSec, 86) + ":" + NumberUtil.toUnsignedString(GetRandomInt(1, 614124), 86);
    }

    /**
     * 游戏开始时间
     */
    static getGameStartTime() {
        let gameStartTime = DzAPI_Map_GetGameStartTime();
        if (gameStartTime == 0 && isDebug) {
            //本地异步时间 尽量 防抖
            print("使用本地时间!")
            return math.ceil((os.time() + 50) / 100) * 100;
        }
        return gameStartTime;
    }

    /**
     * 传入格式示例：  2023-07-18 15:08:03
     * @param yyyy_mm_dd_H_M_S_DateStr
     * 返回整数为秒单位
     */
    static parseDate(yyyy_mm_dd_H_M_S_DateStr: string): number {
        let yyyy_mm_dd_H_M_S: string = yyyy_mm_dd_H_M_S_DateStr.replaceAll("-", "_")
        yyyy_mm_dd_H_M_S = yyyy_mm_dd_H_M_S.replaceAll(" ", "_")
        yyyy_mm_dd_H_M_S = yyyy_mm_dd_H_M_S.replaceAll(":", "_")
        let yyyy_mm_dd_H_M_SArray: string[] = yyyy_mm_dd_H_M_S.split("_");


        let dataInfo: LuaDateInfo = {
            year: tonumber(yyyy_mm_dd_H_M_SArray[0]),
            month: tonumber(yyyy_mm_dd_H_M_SArray[1]),
            day: tonumber(yyyy_mm_dd_H_M_SArray[2]),
            hour: tonumber(yyyy_mm_dd_H_M_SArray[3]),
            min: tonumber(yyyy_mm_dd_H_M_SArray[4]),
            sec: tonumber(yyyy_mm_dd_H_M_SArray[5]),
        }
        let timeNum = os.time(dataInfo)
        return timeNum
    }

    /**
     *
     * @param dateTime 秒单位
     * @param format
     */
    static dateTimeToString(dateTime: number, format: string = "%Y-%m-%d %H:%M:%S") {
        return os.date(format, dateTime)
    }

    static oneWeekTime = 60 * 60 * 24 * 7;

    /**
     * 获取第几周
     * 1970年1月1日UTC是‌星期五‌
     * @param dateTime
     */
    static getWeekNumber(dateTime: number) {
        return Math.ceil(dateTime / DateUtil.oneWeekTime);
    }

    /**
     *返回游戏开始后的分钟数(整数)
     */
    static getGameMinutes(): number {
        return math.floor(_g_time / 60000);
    }

}