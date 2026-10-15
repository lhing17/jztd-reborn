import ActorItem from "@/ActorItem";
import ActorAbility from "@/ActorAbility";
import DataBase from "@/DataBase";
import ActorTypeBuildUtil from "@/ActorTypeBuildUtil";
import ActorAbilityUtil from "@/ActorAbilityUtil";

type msg_type = {
    type: string,
    code: number,
    ability: number,
    order: number,
    x: number,
    y: number,
    /** select_unit 事件有此值 */
    unit?: unit
}

export default class MessageUtil {

    static hookEventCallBacks: {
        [type: string]: ((this: void, msg: msg_type) => boolean)[]
    } = {}

    /** 返回true 表示忽略此次点击  eventId 1=左键点击*/
    static windowEventCallBacks: ((this: void, eventId: number) => boolean)[] = [];


    private static _sl_isInitialized = false

    /** 右键拖拽物品 */
    static _sl_lastReleaseItem: number = null

    /**
     * 添加本地消息事件回调
     * @param type （内置支持 select_unit本地选择单位事件）
     * @param callBack 返回false 表示忽略此次点击
     * select_unit： 异步选择单位事件 该事件只是捕获大头像变化 不能屏蔽 用来做UI刷新用的 多选时不会触发此事件
     */
    static addHookEventCallBack(type: "mouse_ability" | "mouse_item" | "key_down"| "select_unit" | string, callBack: ((this: void, msg: msg_type) => boolean)) {
        let callBacks = MessageUtil.hookEventCallBacks[type];
        if (callBacks == null) {
            callBacks = [];
            MessageUtil.hookEventCallBacks[type] = callBacks;
        }
        callBacks.push(callBack);
    }

    /**
     *
     * @param callBack 返回true 表示忽略此次点击
     */
    static addWindowEventCallBack(callBack: ((this: void, eventId: number) => boolean)) {
        MessageUtil.windowEventCallBacks.push(callBack)
    }


    private static _sl_onHookMsg(msg: msg_type): boolean {
        let type = msg.type;
        if (type == null) {
            return true
        }
        if (type == "key_down") {
            MessageUtil._sl_lastReleaseItem = null
        } else if (type == "mouse_ability" && msg.ability != null) {//鼠标点击技能
            //拦截禁用了的 模拟演员建造
            if ((1096114805 == msg.ability || 1095262837 == msg.ability) && msg.code == 1) {
                let unitIdStr = id2string(msg.order);
                let zwActorType = ActorTypeBuildUtil.zwId2UnitIdMap[unitIdStr];
                if (zwActorType && ActorTypeBuildUtil.isLocalPlayerActorUnitTypeDisableState(zwActorType.id)) {
                    return false;
                }
            } else {
                //
                let actor: ActorAbility = ActorAbilityUtil.getActorAbilityByBaseId(id2string(msg.ability), selection());
                if (actor != null) {
                    if (actor.isPassive() || actor.isDisable() || actor.isHide()) {
                        return false
                    }
                    //目前只能监听到左键点击技能
                    let b = actor.localClick(msg.code == 4 ? 2 : 1, msg.x, msg.y);
                    if (b == false) {
                        return false;
                    }
                }
            }
        } else if (type == "mouse_item") {
            //点击技能时 msg.ability 为0
            let order: number = msg.order;
            let itemIndex = order - 852008

            if (msg.code == 4) {
                MessageUtil._sl_lastReleaseItem = itemIndex
            } else if (MessageUtil._sl_lastReleaseItem != null) {
                MessageUtil._sl_lastReleaseItem = null
            }
            let item = UnitItemInSlot(selection(), itemIndex);
            let actor: ActorItem = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
            if (actor != null) {
                //左键点击被动物品 拦截 (模拟被动物品 在准备施放技能时发布停止命令即可 这里拦截可能会导致 选择物品目标 交换物品位置不可用)
                // if (msg.code == 1 && actor.isPassive() || actor.isDisable() || actor.isHide()) {
                //     return false
                // }
                let b = actor.localClick(msg.code == 4 ? 2 : 1, msg.x, msg.y);
                //返回false 可能会导致 选择物品目标 交换物品位置不可用
                if (b == false) {
                    return false;
                }
            }
        }

        let hookEventCallBacks = MessageUtil.hookEventCallBacks[type];
        if (hookEventCallBacks == null) {
            return true;
        }
        for (let callBack of hookEventCallBacks) {
            let f = callBack(msg);
            if (f == false) {
                return f
            }
        }
        return true;
    }

    static _sl_init_message_hook() {
        if (MessageUtil._sl_isInitialized) {
            return;
        }
        MessageUtil._sl_isInitialized = true;
        //
        if (isEmbedJapi == false && isDebug) {
            print("提示：部分we注册message.hook事件会导致释放技能崩溃!(标准ydwe不会！)")
        }
        //
        const message: NoSelf = require('jass.message')
        let hook: (this: void, msg) => boolean = message.hook;
        if (hook == null) {
            message.hook = function (msg: any) {
                return MessageUtil._sl_onHookMsg(msg);
            }
        } else {
            message.hook = function (this: void, msg: any) {
                let flag = MessageUtil._sl_onHookMsg(msg);
                if (flag == false) {
                    //返回fasle 表示拦截
                    return flag;
                }
                return hook(msg);
            }
        }
        //窗口根事件 可以在这里做一些比message.hook 还要提前的事件处理
        if (isEmbedJapi) {
            let oldWindowEventCallBack: (this: void, eventId: number) => boolean = _G["WindowEventCallBack"];
            if (oldWindowEventCallBack == null) {
                _G["WindowEventCallBack"] = function (this: void, eventId: number) {
                    for (let windowEventCallBack of MessageUtil.windowEventCallBacks) {
                        let flag = windowEventCallBack(eventId);
                        if (flag == true) {
                            return true;
                        }
                    }
                    return false;
                }
            } else {
                _G["WindowEventCallBack"] = function (this: void, eventId: number) {
                    for (let windowEventCallBack of MessageUtil.windowEventCallBacks) {
                        let flag = windowEventCallBack(eventId);
                        if (flag == true) {
                            return true;
                        }
                    }
                    return oldWindowEventCallBack(eventId);
                }
            }
        }

    }

}