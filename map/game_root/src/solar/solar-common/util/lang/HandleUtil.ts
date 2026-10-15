/**
 *
 * 此类只能当做debug时排查逻辑 打印信息使用。因为这里返回的信息每个玩家可能不一样 所以不要将此类返回的信息做同步判断执行需要同步操作的逻辑
 *
 * handle 数量和大部分信息 是不能异步的。但handledef返回的信息可能是异步的(受限于不同玩家的handle使用和底层销毁时间??)
 * 注意:可能每个玩家返回的数据不一样。请不要当做同步数据使用 以免异步
 * @param h
 */
import SingletonUtil from "@/SingletonUtil";

export default class HandleUtil {

    /**
     * 检查是否是单位的handle
     * @param h
     */
    static isUnitHandle(h: unit | handle): boolean {
        return HandleUtil.isHandleType(h, '+w3u');
    }

    static isHandleType(h: unit | handle, handleType: HandledefType): boolean {
        if (!isDebug) {
            SingletonUtil.executeOnce("HandleUtil:isHandleType", () => {
                BJDebugMsg("正式环境无法使用HandleUtil.isHandleType")
            })
            return true;
        }
        let info = handledef(h);
        if (info == null) {
            return false;
        }
        if (info.reference <= 0) {
            log.errorWithTraceBack("警告：你的Handle引用为0，可能会发生使用过时的handle情况，请排查使用handle的逻辑.")
            return false;
        }
        if (info.type == null || info.type == "") {
            log.errorWithTraceBack("警告：你的Handle数据已被底层回收!请实时获取handle,不要使用过时的handle")
            return false;
        }
        if (info.type == handleType) {
            return true;
        }
        return false;
    }

    /**
     * 检查是否是空类型的handle(即底层已回收此handle对应的数据)
     * 只能用于debug时使用
     * @param h
     */
    static isEmptyType(h: handle): boolean {
        if (!isDebug) {
            SingletonUtil.executeOnce("HandleUtil:isEmptyType", () => {
                BJDebugMsg("正式环境无法使用HandleUtil.isEmptyType")
            })
            return true;
        }
        let info = handledef(h);
        if (info == null) {
            log.errorWithTraceBack("警告：你的Handle定义为空。请检查handle是否正确")
            return true;
        }
        if (info.reference <= 0) {
            log.errorWithTraceBack("警告：你的Handle引用为0，可能会发生使用过时的handle情况，请排查使用handle的逻辑.")
            return false;
        }
        if (info.type == null || info.type == "") {
            log.errorWithTraceBack("警告：你的Handle数据已被底层回收!请实时获取handle,不要使用过时的handle")
            return true;
        }
        return false;
    }


    /**
     * 获取handle的 引用计数
     * （正常使用的handle 应该大于0 否则此handle即为已销毁的handle 会被底层重新分配）
     * @param h
     */
    static getHandleRef(h: handle): number {
        let info = handledef(h);
        if (info == null) {
            return 0;
        }
        return info.reference;
    }

    /**
     * 获取handle的类型
     * (返回 +w3u等等)
     * @param h
     */
    static getHandleType(h: handle): string {
        let info = handledef(h);
        if (info == null) {
            return null;
        }
        return info.type;
    }


    /**
     * 检查一个handle是否是可用的。（部分情况下使用了超出最大值handle会导致底层函数调用崩溃）
     * @param h
     */
    static isOkHandle(h: handle): boolean {
        if (h == null) {
            return false;
        }
        let hid: number = h as unknown as number;
        if (hid >= 1048575 && hid <= handlemax()) {
            return true;
        }
        return false;
    }
}