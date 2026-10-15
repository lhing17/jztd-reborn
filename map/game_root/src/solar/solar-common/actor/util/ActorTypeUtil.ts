import DataBase from "@/DataBase";
import ActorItem from "@/ActorItem";
import ArrayUtil from "@/ArrayUtil";
import TextUtil from "@/TextUtil";

/**
 * 演员类型相关工具
 */


export default class ActorTypeUtil {
    /**这里也保存一下 以保证遍历顺序跟注册顺序一致*/
    private static actorTypes: AppActorType[] = [];
    /**
     * 全局任意演员类型事件
     */
    private static _sl_onRegisterActorTypeListeners: ((actorType: AppActorType) => void)[] = [];


    /**
     * 注册演员类型
     * @param actorTypeID
     */
    static registerActorType(actorTypeID: string): AppActorType ;
    static registerActorType(actorType: AppActorType): AppActorType ;
    static registerActorType(actorTypeIdOrActorType: AppActorType | string): AppActorType {
        let actorType = null;
        if (typeof actorTypeIdOrActorType == "string") {
            actorType = {id: actorTypeIdOrActorType}
        } else {
            actorType = actorTypeIdOrActorType;
        }
        if (actorType.id == null || actorType.id.length == 0) {
            print_r(actorType)
            log.errorWithTraceBack("ActorType id必须赋值！")
            return
        }
        //这里保存一下保证读取时快速根据ID读取
        if (DataBase.getSolarActorType(actorType.id) == null || gv.reloadIng == true) {
            DataBase.setSolarActorType(actorType.id, actorType);
            ActorTypeUtil.actorTypes.push(actorType);
            ArrayUtil.forEach(ActorTypeUtil._sl_onRegisterActorTypeListeners, (registerActorTypeListener) => {
                registerActorTypeListener(actorType);
            });
        } else {
            log.errorWithTraceBack("不能重复注册ActorType:" + actorType.id + " -> " + tostring(actorType.name))
        }
        return actorType;
    }

    /**
     * 是否拥有指定的演员类型
     * @param actorTypeId 类型id
     */
    static hasActorType(actorTypeId: string): boolean {
        if (actorTypeId == null || actorTypeId.length == 0) {
            return false;
        }
        if (DataBase.getSolarActorType(actorTypeId) == null) {
            return false;
        }
        return true;
    }


    /**
     * 根据actorTypeId返回Actor类型
     * @param actorTypeId
     */
    static getActorType(actorTypeId: string): AppActorType {
        if (actorTypeId == null) {
            log.errorWithTraceBack("actorTypeId不能为null!")
            return null;
        }
        let actorType = DataBase.getSolarActorType(actorTypeId);
        if (actorType == null) {
            print("没有此类型演员:" + actorTypeId)
        }
        return actorType;
    }


    /**
     * 获取所有类型
     */
    static getAllActorTypes(): AppActorType[] {
        return ActorTypeUtil.actorTypes
    }


    /**
     * 遍历当前已注册所有Actor类型
     * @param callback 遍历回调函数
     * @param actorTypeClass ActorType的类别 Class
     */
    static forAllActorTypes(callback: (actorType: AppActorType, index: number) => void, ...actorTypeClass: string[]): void {
        //
        let index = 0;
        if (actorTypeClass && actorTypeClass.length > 0) {
            for (let actorType of ActorTypeUtil.actorTypes) {
                if (actorTypeClass.includes(actorType.class)) {
                    callback(actorType, index);
                    index++;
                }
            }
        } else {
            for (let actorType of ActorTypeUtil.actorTypes) {
                callback(actorType, index);
                index++;
            }

        }

    }

    /**
     * 遍历当前已注册所有Actor类型  和之后注册的新演员类型
     *
     * @param actorTypeListener
     */
    static forAllActorTypesAndLaterRegister(actorTypeListener: (actorType: AppActorType) => void) {
        ActorTypeUtil.forAllActorTypes(actorTypeListener);
        ActorTypeUtil.addRegisterActorTypeListener(actorTypeListener);
    }

    /**
     * 添加任意演员类型注册事件 监听回调
     *
     * @param registerActorTypeListener 回调
     * @param actorTypeID 指定只监听某一个演员类型
     */
    static addRegisterActorTypeListener(registerActorTypeListener: (actorType: AppActorType) => void, actorTypeID?: string) {
        if (actorTypeID) {
            ActorTypeUtil._sl_onRegisterActorTypeListeners.push(actorType => {
                if (actorTypeID == actorType.id) {
                    registerActorTypeListener(actorType);
                }
            });
        } else {
            ActorTypeUtil._sl_onRegisterActorTypeListeners.push(registerActorTypeListener);
        }
    }

    /**
     * 为演员类型添加事件处理函数 (直接设置会覆盖 使用此方法可在添加新处理时自动调用之前设置的事件处理函数)
     * @param actorType
     * @param key
     * @param eventHandler
     */
    static addEventHandler<Key extends keyof SolarActorTypeEventHandler>(actorType: SolarActorTypeEventHandler, key: Key, eventHandler: SolarActorTypeEventHandler[Key]) {
        if (actorType == null || key == null || eventHandler == null) {
            return
        }
        let oldEventHandler = actorType[key];
        actorType[key] = function (...args: any[]) {
            // @ts-ignore
            let isConsume = oldEventHandler?.(...args);
            if (isConsume == true) {
                return isConsume;
            }
            // @ts-ignore
            return eventHandler(...args);
        }
    }


    /**
     *
     * @param actorTypeId 增益效果类型id
     * @param uiEnable 是否启用
     * @param player 改变指定玩家的图标禁用状态 不填则给所有玩家修改
     * （示例 商城道具跟存档这些也是演员类型 默认都是禁用的 可以使用此方法对玩家启用此类型  数值计算还是同步计算 这个类型就是作为ui显示数据而已 ）
     */
    static setUiEnable(actorTypeId: string, uiEnable: boolean, player?: player): void {
        if (player != null && GetLocalPlayer() != player) {//异步给指定的玩家改
            return;
        }
        let actorType = ActorTypeUtil.getActorType(actorTypeId)
        if (actorType == null) {
            print("设置未注册的Actor图标:" + actorTypeId)
            return;
        }
        actorType.uiEnable = uiEnable;
    }


    /**
     * 可以改变演员类型 的扩展提示信息
     * @param actorTypeId
     * @param describe
     * @param player 为指定玩家异步修改
     */
    static setTypeDescribe(actorTypeId: string, describe: string, player?: player): void {
        if (player != null && GetLocalPlayer() != player) {//异步给指定的玩家改
            return;
        }
        let actorType = ActorTypeUtil.getActorType(actorTypeId)
        if (actorType == null) {
            print("设置未注册的Actor提示:" + actorTypeId)
            return;
        }
        actorType.describe = describe;
    }


    /**
     * 根据演员类型生成提示
     * @param actorType
     */
    static generateDescribeByActorTypeId(actorType: AppActorType | AppActorUnitType | any): string {
        let describe = "";
        if (actorType.damage) {
            describe += "攻击力: " + TextUtil.toCnUnit(actorType.damage) + "|r|n";
        }
        if (actorType.damageCd) {
            describe += "攻击间隔: " + actorType.damageCd + "|r|n";
        }
        if (actorType.maxLife) {
            describe += "生命值: " + TextUtil.toCnUnit(actorType.maxLife) + "|r|n";
        }
        if (actorType.def) {
            describe += "护甲: " + TextUtil.toCnUnit(actorType.def) + "|r|n";
        }
        if (actorType.strength) {
            describe += "力量: " + TextUtil.toCnUnit(actorType.strength) + "|r|n";
        }
        if (actorType.agility) {
            describe += "敏捷: " + TextUtil.toCnUnit(actorType.agility) + "|r|n";
        }
        if (actorType.intelligence) {
            describe += "智力: " + TextUtil.toCnUnit(actorType.intelligence) + "|r|n";
        }
        return describe;
    }


    /**
     * 从基础物品物编注册 演员类型
     *  (将一个原始物品类型包装到一个演员物品 以方便使用演员物编的事件等api)
     * （使用举例: 部分需要原始物品的效果 比如市场(随机)售卖的物品 获得后又需要演员物品的事件效果）
     * @param itemTypeIdStr
     * @param baseData
     * @param bindItemAndActor
     */
    static registerActorTypeFromBaseItemType(itemTypeIdStr: string, baseData: AppActorType = {}, bindItemAndActor: boolean = false): AppActorType {
        let itemObjInfo: iobj = _g_objs.item[itemTypeIdStr];
        if (itemObjInfo == null) {
            log.errorWithTraceBack("不存在此物品id:" + itemTypeIdStr)
            return null;
        }
        baseData.id = itemTypeIdStr
        baseData.name = itemObjInfo.Tip
        baseData.icon = itemObjInfo.Art
        baseData.describe = itemObjInfo.Ubertip
        if (itemObjInfo.file) {
            baseData.model = itemObjInfo.file
        }
        if (itemObjInfo.pawnable) {
            baseData.pawnable = itemObjInfo.pawnable == "1"
        }
        if (itemObjInfo.droppable) {
            baseData.droppable = itemObjInfo.droppable == "1"
        }
        if (itemObjInfo.goldcost) {
            baseData.goldCost = Math.floor(tonumber(itemObjInfo.goldcost));
        }
        if (itemObjInfo.lumbercost) {
            baseData.lumberCost = Math.floor(tonumber(itemObjInfo.lumbercost));
        }
        ActorTypeUtil.registerActorType(baseData);
        if (bindItemAndActor) {
            se.onUnitPickupItem(e => {
                if (e.manipulatedItemTypeIdStr == itemTypeIdStr) {
                    RemoveItem(e.manipulatedItem);
                    let actorItem = new ActorItem(itemTypeIdStr);
                    UnitAddItem(e.trigUnit, actorItem.item)
                }
            })
        }
        return baseData;
    }


}