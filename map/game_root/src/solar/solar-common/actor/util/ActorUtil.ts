import Actor from "@/Actor";
import DataBase from "@/DataBase";

/**
 * 演员通常最终作用于单位身上。（事实上所有游戏 所有数据 所有逻辑 最终的表现几乎都是在单位身上）
 * 优先使用此演员工具 不要把演员局限到技能或物品上 这样会导致演员不够统一 也不利于转换结构 比如吞噬这些 要保证无论是演员技能还是演员物品 都应该是一样的 所以优先考虑把逻辑代码写到演员基类里
 */
declare global {

    /**
     * 演员物品属性处理器 (可以在这里做装备加成等增幅)
     *
     * resultAttribute 返回的最终给单位加上的属性 可以与ActorItem.attribute 不一样 以免改到基础属性
     * resultAttribute 初始为复制的ActorItem.attribute
     * 处理器通常应直接return resultAttribute
     */
    type ActorAttributeHandler = (actor: Actor, resultAttribute: AppAttribute) => AppAttribute


}


export default class ActorUtil {


    /**
     * 根据演员的全局唯一id获取演员对象
     * @param uuid
     */
    static getActor(uuid: string): Actor {
        return Actor.allActors[uuid];
    }


    /**
     * 复制Actor扩展数据
     * (比如吞噬时可以把吞噬的物品技能的额外数据复制到演员buff里)
     * @param fromActor
     * @param toActor
     */
    static copyExtDatas(fromActor: Actor, toActor: Actor) {
        if (fromActor.extData) {
            for (let key in fromActor.extData) {
                toActor.extData[key] = fromActor.extData[key];
            }
        }
        if (fromActor._sl_extAttributes) {
            for (let key in fromActor._sl_extAttributes) {
                toActor.setExtAttribute(key, fromActor._sl_extAttributes[key])
            }
        }
        if (fromActor._sl_extDescribes) {
            for (let key in fromActor._sl_extDescribes) {
                toActor.setExtDescribe(key, fromActor._sl_extDescribes[key])
            }
        }
        if (fromActor._sl_extDescribesFirst) {
            for (let key in fromActor._sl_extDescribesFirst) {
                toActor.setExtDescribeFirst(key, fromActor._sl_extDescribesFirst[key])
            }
        }
        if (fromActor.numberOverlay) {
            toActor.numberOverlay = fromActor.numberOverlay;
        }
    }

    /**
     * 返回一个单位包含的所有演员  数据
     * 包括 演员单位 演员技能 演员物品 演员buff
     * 可以用来执行跟单位相关的通用逻辑  比如销毁单位时 或单位触发基础事件时 通用分发
     * @param unit
     */
    static getUnitAllActorList(unit: unit): Actor[] {
        if (!IsHandle(unit)) {
            return null;
        }
        let actorList: Actor[] = null;
        let solarData = DataBase.getUnitSolarData(unit, false);
        if (solarData != null) {
            //单位
            let actor = solarData._SL_solarActorUnit;
            if (actor != null) {
                actorList = [actor];
            }
            //技能
            let actorAbilitys = solarData._SL_solarActorAbilitys;
            if (actorAbilitys != null) {
                if (actorList == null) {
                    actorList = [];
                }
                for (let abilityTemplateKey in actorAbilitys) {
                    let actor = actorAbilitys[abilityTemplateKey];
                    if (actor != null) {
                        actorList.push(actor)
                    }
                }
            }
            //演员buff
            let _SL_solarActorBuffSet: Actor[] = solarData._SL_solarActorBuffs;
            if (_SL_solarActorBuffSet) {
                for (let actor of _SL_solarActorBuffSet) {
                    if (actorList == null) {
                        actorList = [];
                    }
                    actorList.push(actor)
                }
            }
        }
        let invSize = UnitInventorySize(unit)
        for (let i = 0; i < invSize; i++) {
            let item = UnitItemInSlot(unit, i);
            if (IsHandle(item)) {
                let actor = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
                if (actor != null) {
                    if (actorList == null) {
                        actorList = [];
                    }
                    actorList.push(actor)
                }
            }
        }
        return actorList;
    }

    /**
     * 遍历单位身上的所有演员
     * @param unit
     * @param callback
     * @param clazz
     */
    static forUnitAllActorList(unit: unit, callback: (actor: Actor) => void, clazz?: string): void {
        let actorList = ActorUtil.getUnitAllActorList(unit);
        if (actorList == null) {
            return
        }
        for (let i = actorList.length - 1; i >= 0; i--) {
            let actor = actorList[i];
            if (clazz == null || clazz == actor.get("class")) {
                callback(actor);
            }
        }
    }

    /**
     * 获取单位身上的所有演员 (指定演员类型 id)
     * @param unit
     * @param actorTypeId
     */
    static getUnitAllActorListByActorTypeId(unit: unit, actorTypeId: string): Actor[] {
        let actorList = ActorUtil.getUnitAllActorList(unit);
        if (actorList == null) {
            return
        }
        let result: Actor[] = []
        for (let i = actorList.length - 1; i >= 0; i--) {
            let actor = actorList[i];
            if (actorTypeId == null || actorTypeId == actor.actorTypeId) {
                result.push(actor);
            }
        }
        return result;
    }

    /**
     * 获取单位身上的所有演员 (指定演员类型 Class)
     * @param unit
     * @param clazz 同Class
     */
    static getUnitAllActorListByClass(unit: unit, clazz: string): Actor[] {
        let actorList = ActorUtil.getUnitAllActorList(unit);
        if (actorList == null) {
            return
        }
        let result: Actor[] = []
        for (let i = actorList.length - 1; i >= 0; i--) {
            let actor = actorList[i];
            if (clazz == null || clazz == actor.get("class")) {
                result.push(actor);
            }
        }
        return result;
    }

    /**
     * 获取单位身上的所有演员 (指定演员类型 Class)
     * @param unit
     * @param clazz 同Class
     * @param kind
     * @param tag
     */
    static getUnitAllActorListAndWhere(unit: unit, clazz?: string, kind?: string, tag?: string): Actor[] {
        let actorList = ActorUtil.getUnitAllActorList(unit);
        if (actorList == null) {
            return
        }
        let result: Actor[] = []
        for (let i = actorList.length - 1; i >= 0; i--) {
            let actor = actorList[i];
            if (clazz != null && clazz != actor.get("class")) {
                continue
            }
            if (kind != null && kind != actor.get("kind")) {
                continue
            }
            if (tag != null && tag != actor.get("tag")) {
                continue
            }
            result.push(actor);
        }
        return result;
    }

    /**
     * 获取单位身上所有演员 的属性值
     * @param unit
     * @param attributeHandlers
     */
    static getUnitAllActorAttributes(unit: unit, attributeHandlers?: ActorAttributeHandler[]): AppAttribute[] {
        let attributeArray: AppAttribute[] = null;
        let actorList = ActorUtil.getUnitAllActorList(unit);
        if (actorList && actorList.length > 0) {
            for (let actor of actorList) {
                attributeArray = ActorUtil.collectActorAllAttributes(attributeArray, actor, attributeHandlers);
            }
        }
        return attributeArray;
    }

    /**
     * 统计演员所有属性
     * @param resultAttributeArray
     * @param actor
     * @param attributeHandlers 属性处理 装备增幅可以用这个来提升属性倍率
     */
    static collectActorAllAttributes(resultAttributeArray: AppAttribute[], actor: Actor, attributeHandlers?: ActorAttributeHandler[]): AppAttribute[] {
        if (actor == null) {
            return resultAttributeArray;
        }
        let resultAttribute = actor.attribute;
        if (resultAttribute) {
            if (resultAttributeArray == null) {
                resultAttributeArray = []
            }
            if (attributeHandlers && attributeHandlers.length > 0) {
                resultAttribute = {...actor.attribute}
                for (let attributeHandler of attributeHandlers) {
                    resultAttribute = attributeHandler(actor, resultAttribute)
                }
            }
            resultAttributeArray.push(resultAttribute)
        }
        let _sl_extAttributes = actor._sl_extAttributes;
        if (_sl_extAttributes) {
            if (resultAttributeArray == null) {
                resultAttributeArray = []
            }
            for (let extName in _sl_extAttributes) {
                let resultAttribute = _sl_extAttributes[extName];
                if (resultAttribute) {
                    if (attributeHandlers && attributeHandlers.length > 0) {
                        resultAttribute = {...actor.attribute}
                        for (let attributeHandler of attributeHandlers) {
                            resultAttribute = attributeHandler(actor, resultAttribute)
                        }
                    }
                    resultAttributeArray.push(resultAttribute)
                }
            }
        }
        return resultAttributeArray;
    }


    /**
     * 如果单位是否持有某个类型的演员
     * @param unit
     * @param callBack
     * @param actorTypeId
     */
    static ifUnitHasActor(unit: unit, actorTypeId: string, callBack: (actor: Actor) => void): void {
        let unitAllActorList = ActorUtil.getUnitAllActorList(unit);
        if (unitAllActorList == null) {
            return;
        }
        for (let actor of unitAllActorList) {
            if (actor.actorTypeId == actorTypeId) {
                callBack(actor);
                return;
            }
        }
    }

    /**
     * 判断单位是否持有某个类型的演员(物品 技能 buff)
     * @param unit
     * @param actorTypeIds 是否全有这些类型
     */
    static isUnitHasActor(unit: unit, ...actorTypeIds: string[]): boolean {
        let unitAllActorList = ActorUtil.getUnitAllActorList(unit);
        if (unitAllActorList == null || actorTypeIds == null) {
            return false;
        }
        if (actorTypeIds.length > 1) {
            let hasActorTypeIds: boolean[] = [];
            for (let i = 0; i < actorTypeIds.length; i++) {
                hasActorTypeIds[i] = false;
            }
            for (let actor of unitAllActorList) {
                for (let i = 0; i < actorTypeIds.length; i++) {
                    if (actor.actorTypeId == actorTypeIds[i]) {
                        hasActorTypeIds[i] = true;
                    }
                }
            }
            for (let i = 0; i < hasActorTypeIds.length; i++) {
                if (hasActorTypeIds[i] == false) {
                    return false;
                }
            }
            return true;
        } else {
            for (let actor of unitAllActorList) {
                if (actor.actorTypeId == actorTypeIds[0]) {
                    return true;
                }
            }
            return false;
        }
    }

    /**
     * 触发单位身上所有演员的自定义事件
     * @param unit 需要接收自定义事件的单位
     * @param type 自定义事件类型
     * @param data 传参数据
     */
    static fireEvent2UnitAllActors<Key extends keyof AppActorEventType>(unit: unit, type: Key, data?: AppActorEventType[Key]): void {
        let actorList = ActorUtil.getUnitAllActorList(unit);
        if (actorList != null && actorList.length > 0) {
            for (let i = actorList.length - 1; i >= 0; i--) {
                let actor = actorList[i];
                //严格判断 因为在遍历过程中 可能会销毁此单位已有的一些Actor
                if (!actor.isDestroyed() && !actor.isDisable() && actor.unit == unit) {
                    actor.fireEvent(type, data);
                }
            }
        }
    }

    /**
     * 添加任意演员创建事件 监听回调
     */
    static addAnyActorCreatedListener(onActorCreatedListener: (actor: Actor) => void) {
        Actor._sl_anyActorCreatedListeners.push(onActorCreatedListener);
    }

    /**
     * 添加任意演员叠加层数改变事件 监听回调
     */
    static addAnyActorLevelChangeListener(onActorLevelChangeListener: (actor: Actor, stackAdd: number) => void) {
        Actor._sl_anyActorLevelChangeListeners.push(onActorLevelChangeListener);
    }

    /**
     * 添加任意演员销毁事件 监听回调
     */
    static addAnyActorDestroyListener(onActorDestroyListener: (actor: Actor) => void) {
        Actor._sl_anyActorDestroyListeners.push(onActorDestroyListener);
    }

}