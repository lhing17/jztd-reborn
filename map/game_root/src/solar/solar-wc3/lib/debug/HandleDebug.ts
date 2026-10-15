/** @noSelfInFile */
import DataBase from "@/DataBase";

export default class HandleDebug {
    private static is_init = false;

    static init() {
        if (HandleDebug.is_init) {
            return
        }
        HandleDebug.is_init = true;
        //one case
        //勾住创建的Unit
        let oldCreateUnit = CreateUnit;
        _G.CreateUnit = function (this: void, player: player, unitid: number | string, x: number, y: number, face: number): unit {
            let hdl = oldCreateUnit(player, unitid, x, y, face);
            if (!IsHandle(hdl)) {
                log.errorWithTraceBack("创建单位失败！player=" + tostring(player) + " unitType=" + tostring(unitid)
                    + " xy=" + tostring(x) + "," + tostring(y) + " face=" + tostring(y))
                return hdl;
            }
            let solarData = DataBase.getUnitSolarData(hdl, false);
            if (solarData != null) {
                /**
                 * 应该避免给死亡单位创建solarData。在新建solarData时  都应获取单位是否为活着状态。如果需要给死亡单位记录值，应当在新建单位时都默认创建一个solarData
                 * 这可能导致单位不会被正常清理solarData并造成solarData重用。
                 */
                print(time + ":发现handle对应的solarData重用:" + GetUnitName(hdl) + " hId=" + GetHandleId(hdl))
                print_r(solarData);
                log.errorWithTraceBack("发现solarData重用。请检查已被回收的handle是否及时清理对应的solarData。" +
                    "(或单位死亡后清理solarData后又给死亡单位新建了solarData).不需要的英雄单位可以使用RemoveUnit移除英雄")
            }
            return hdl;
        }


    }
}