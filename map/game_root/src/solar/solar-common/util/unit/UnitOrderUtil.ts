import DataBase from "@/DataBase";
import STimer from "@/STimer";
import BaseUtil from "@/BaseUtil";

export default class UnitOrderUtil {


    /**
     * 单位当前是否无执行的命令 (空闲状态)
     */
    static isNoOrder(unitHandle: unit): boolean {
        let order = GetUnitCurrentOrder(unitHandle);
        if (order == 0 || order == null) {
            return true
        } else {
            return false;
        }
    }

    /**
     * 命令单位停止
     * @param unitHandle
     */
    static orderStop(unitHandle: unit) {
        IssueImmediateOrder(unitHandle, "stop")
    }

    /**
     * 命令巡逻到指定点
     */
    static orderPatrol(unitHandle: unit, x: number, y: number) {
        IssuePointOrder(unitHandle, "patrol", x, y);
    }

    /**
     * 命令攻击到单位当前xy点
     */
    static orderAttackUnitXY(unitHandle: unit, target: unit) {
        IssuePointOrder(unitHandle, "attack", GetUnitX(target), GetUnitY(target));
    }

    /**
     * 命令攻击到指定点
     */
    static orderAttack(unitHandle: unit, x: number, y: number) {
        IssuePointOrder(unitHandle, "attack", x, y);
    }

    /**
     * 循环 命令攻击到指定点 直到此单位死亡
     */
    static orderAttackWithOrderTimer(unitHandle: unit, x: number, y: number) {
        IssuePointOrder(unitHandle, "attack", x, y);
        let solarData = DataBase.getUnitSolarData(unitHandle, true);
        solarData._sl_timer_order = "orderAttackWithOrderTimer";
        solarData._sl_timer_order_x = x;
        solarData._sl_timer_order_y = y;
        UnitOrderUtil.checkOrderTimerInit(unitHandle);
    }


    /**
     * 命令攻击到指定单位
     */
    static orderAttackTarget(unitHandle: unit, target: unit) {
        IssueTargetOrder(unitHandle, "attack", target);
    }

    /**
     * 循环 命令攻击到指定单位 直到此单位死亡
     */
    static orderAttackTargetWithOrderTimer(unitHandle: unit, target: unit) {
        IssueTargetOrder(unitHandle, "attack", target);
        let solarData = DataBase.getUnitSolarData(unitHandle, true);
        solarData._sl_timer_order = "orderAttackTargetWithOrderTimer";
        solarData._sl_timer_order_target = target;
        UnitOrderUtil.checkOrderTimerInit(unitHandle);
    }

    /**
     * 命令移到到指定点
     */
    static orderMove(unitHandle: unit, x: number, y: number) {
        IssuePointOrder(unitHandle, "move", x, y);
    }

    /**
     * 循环命令移到到指定点 直到此单位死亡
     */
    static orderMoveWithOrderTimer(unitHandle: unit, x: number, y: number) {
        IssuePointOrder(unitHandle, "move", x, y);
        let solarData = DataBase.getUnitSolarData(unitHandle, true);
        solarData._sl_timer_order = "orderMoveWithOrderTimer";
        solarData._sl_timer_order_x = x;
        solarData._sl_timer_order_y = y;
        UnitOrderUtil.checkOrderTimerInit(unitHandle);
    }


    static orderTimerInterval = 3;

    /**
     * 检查此单位的命令发布计时器 如果没启动则自动启动
     * @param unitHandle
     */
    static checkOrderTimerInit(unitHandle: unit) {
        let solarData = DataBase.getUnitSolarData(unitHandle, true);
        let sTimer: STimer = solarData._sl_OrderTimer;
        if (sTimer != null && !sTimer.isDestroy()) {
            return
        }
        solarData._sl_OrderTimer = BaseUtil.onTimer(UnitOrderUtil.orderTimerInterval, () => {
            if (!UnitAlive(unitHandle)) {
                solarData._sl_OrderTimer = null;
                return false;
            }
            //有命令的情况 不要刷新命令
            if (!UnitOrderUtil.isNoOrder(unitHandle)) {
                return true;
            }
            let _sl_timer_order: string = solarData._sl_timer_order;
            if (_sl_timer_order == "orderMoveWithOrderTimer") {
                IssuePointOrder(unitHandle, "move", solarData._sl_timer_order_x, solarData._sl_timer_order_y);
            } else if (_sl_timer_order == "orderAttackTargetWithOrderTimer") {
                IssueTargetOrder(unitHandle, "attack", solarData._sl_timer_order_target);
            } else if (_sl_timer_order == "orderAttackWithOrderTimer") {
                IssuePointOrder(unitHandle, "attack", solarData._sl_timer_order_x, solarData._sl_timer_order_y);
            } else {
                return false;
            }
        });
    }


}