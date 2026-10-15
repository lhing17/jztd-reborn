import ActorAbility from "@/ActorAbility";
import DataBase from "@/DataBase";
import ActorItem from "@/ActorItem";
import AbilityButtonUtil from "@/AbilityButtonUtil";

/**
 * see ActorUtil 优先使用演员工具 不要把演员局限到技能或物品上 这样会导致演员不够统一
 */
export default class ActorAbilityUtil {


    /**
     *
     * 给单位添加一个演员技能
     * @param actorTypeId
     * @param unit
     * @param startPosNum
     * @param allocHotKey
     */
    static createActorAbility(actorTypeId: string, unit: unit, startPosNum?: number, allocHotKey?: boolean): ActorAbility {
        let actorAbility = new ActorAbility(actorTypeId, unit, startPosNum);
        if (allocHotKey && !actorAbility.isPassive()) {
            actorAbility.setHotKey(AbilityButtonUtil.getHotKeyByNumber(actorAbility.posNum));
        }
        return actorAbility;
    }

    /**
     * 移除并销毁单位身上指定演员类型的演员技能
     * @param unit
     * @param actorTypeId
     */
    static destroyUnitAbility(unit: unit, actorTypeId: string,): boolean {
        let actorAbility = ActorAbilityUtil.getUnitActorAbility(unit, actorTypeId);
        if (actorAbility == null) {
            return false
        }
        actorAbility.destroy();
        return true;
    }

    /**
     * 获取单位身上指定演员类型的演员技能
     * @param unit
     * @param actorTypeId 技能演员类型id
     */
    static getUnitActorAbility(unit: unit, actorTypeId: string): ActorAbility {
        if (!IsHandle(unit)) {
            return null;
        }
        let actorAbilitys = DataBase.getUnitSolarData(unit, false)?._SL_solarActorAbilitys;
        if (actorAbilitys == null) {
            return null;
        }
        for (let abilityTemplateKey in actorAbilitys) {
            let actor = actorAbilitys[abilityTemplateKey];
            if (actor != null && actor.actorTypeId == actorTypeId) {
                return actor as ActorAbility;
            }
        }
        return null;
    }

    /**
     * 获取单位身上指定位置的演员技能 1=左上角 12=右下角
     * @param unit
     * @param pos
     */
    static getUnitActorAbilityByPos(unit: unit, pos: number): ActorAbility {
        let abilityTemplate = DataBase.getUnitSolarData(unit, false)?._SL_abilityTemplate;
        if (abilityTemplate == null) {
            return null;
        }
        let actorAbilitys = DataBase.getUnitSolarData(unit, false)?._SL_solarActorAbilitys;
        if (actorAbilitys == null) {
            return null;
        }
        if (abilityTemplate[pos] == null) {
            return null;
        }
        let actor = actorAbilitys[abilityTemplate[pos]];
        if (actor != null) {
            return actor as ActorAbility;
        }
        return null;
    }

    /**
     * 如果有演员技能数据
     * @param abilityId
     * @param callBack
     * @param unit
     */
    static ifHasActorAbility(abilityId: string, callBack: (actor: ActorAbility) => void, unit: unit) {
        let actor: ActorAbility = ActorAbilityUtil.getActorAbilityByBaseId(abilityId, unit);
        if (actor) {
            callBack(actor);
        }
    }

    // /**
    //  * 是否有演员技能数据
    //  * @param abilityId
    //  * @param actorTypeId
    //  * @param unit
    //  */
    // static isHasActorAbility(abilityId: string, unit: unit, actorTypeId?: string): boolean {
    //     let actor: ActorAbility = ActorAbilityUtil.getActorAbilityByBaseId(abilityId, unit);
    //     if (actor == null) {
    //         return false;
    //     }
    //     if (actorTypeId != null && actorTypeId != actor.actorTypeId) {
    //         return false;
    //     }
    //     return true;
    // }

    /**
     * 获取演员技能数据
     * @param abilityId 技能id 如 q001 基础物编id 如果是演员类型id请使用
     * @param unit 尝试根据单位拥有的演员技能获得
     * @param includeActorItem
     */
    static getActorAbilityByBaseId(abilityId: string, unit: unit, includeActorItem: boolean = false): ActorAbility {
        if (!IsHandle(unit)) {
            return null;
        }
        let solarActorAbilitys = DataBase.getUnitSolarData(unit, false)?._SL_solarActorAbilitys;
        let actorAbility = solarActorAbilitys?.[abilityId];
        if (actorAbility) {
            return actorAbility;
        }
        if (includeActorItem) {
            let invSize = UnitInventorySize(unit)
            for (let i = 0; i < invSize; i++) {
                let item = UnitItemInSlot(unit, i);
                if (IsHandle(item)) {
                    let actorItem: ActorItem = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
                    if (actorItem != null && actorItem.abilityId == abilityId) {
                        return actorItem;
                    }
                }
            }
        }
        return null;
    }

    /**
     * 获取一个单位身上的所有 演员技能 的数量
     * @param unit
     * @param clazz 同class 类别
     */
    static getUnitActorAbilityListSize(unit: unit, clazz: string): number {
        let abilityList = ActorAbilityUtil.getUnitActorAbilityList(unit, clazz);
        if (abilityList == null) {
            return 0;
        }
        return abilityList.length;
    }

    /**
     * 获取一个单位身上的所有 演员技能
     * @param unit
     * @param clazz 同class 类别
     */
    static getUnitActorAbilityList(unit: unit, clazz?: string): ActorAbility[] {
        let solarActorAbilitys = DataBase.getUnitSolarData(unit, false)?._SL_solarActorAbilitys;
        if (solarActorAbilitys == null) {
            return null;
        }
        let actorList: ActorAbility[] = null
        for (let abilityTemplateKey in solarActorAbilitys) {
            let actor = solarActorAbilitys[abilityTemplateKey];
            if (actor != null) {
                if (clazz != null && clazz != actor.actorType.class) {
                    continue;
                }
                if (actorList == null) {
                    actorList = []
                }
                actorList.push(actor)
            }
        }
        return actorList;
    }

    /**
     * 遍历一个单位身上的所有 演员技能
     * @param unit
     * @param callBack
     * @param clazz 同class 类别
     */
    static forUnitActorAbilityList(unit: unit, callBack: (actor: ActorAbility) => void, clazz?: string): void {
        let actorAbilitys = DataBase.getUnitSolarData(unit, false)?._SL_solarActorAbilitys;
        if (actorAbilitys == null) {
            return null;
        }
        for (let abilityTemplateKey in actorAbilitys) {
            let actor = actorAbilitys[abilityTemplateKey]
            if (actor != null) {
                if (clazz != null && clazz != actor.actorType.class) {
                    continue;
                }
                callBack(actor);
            }
        }
    }

    /**
     * 使用此函数前请优先考虑使用ActorUtil.ifUnitHasActor 以尽量保证演员的功能不局限于某一种演员类型 方便吞噬等转换
     * 如果单位是有拥有某个类型的 演员技能
     * @param unit
     * @param callBack
     * @param actorTypeId
     */
    static ifUnitHasActorAbility(unit: unit, callBack: (actor: ActorAbility) => void, actorTypeId: string): void {
        let actorAbilitys = DataBase.getUnitSolarData(unit, false)?._SL_solarActorAbilitys;
        if (actorAbilitys == null) {
            return;
        }
        for (let abilityTemplateKey in actorAbilitys) {
            let actor = actorAbilitys[abilityTemplateKey];
            if (actor != null && actor.actorTypeId == actorTypeId) {
                callBack(actor as ActorAbility)
                return;
            }
        }
        return;
    }

    /**
     * 使用此函数前请优先考虑使用ActorUtil.isUnitHasActor 以尽量保证演员的功能不局限于某一种演员类型 方便吞噬等转换
     * 判断单位是有拥有某个类型的 演员技能
     * @param unit
     * @param actorTypeIds 是否全有这些类型
     */
    static isUnitHasActorAbility(unit: unit, ...actorTypeIds: string[]) {
        let actorAbilitys = DataBase.getUnitSolarData(unit, false)?._SL_solarActorAbilitys;
        if (actorAbilitys == null || actorTypeIds == null) {
            return false;
        }
        //
        if (actorTypeIds.length > 1) {
            let hasActorTypeIds: boolean[] = [];
            for (let i = 0; i < actorTypeIds.length; i++) {
                hasActorTypeIds[i] = false;
            }
            for (let abilityTemplateKey in actorAbilitys) {
                let actor = actorAbilitys[abilityTemplateKey];
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
            for (let abilityTemplateKey in actorAbilitys) {
                let actor = actorAbilitys[abilityTemplateKey];
                if (actor != null && actor.actorTypeId == actorTypeIds[0]) {
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
    static fireEvent2UnitAllActorAbility<Key extends keyof AppActorEventType>(unit: unit, type: Key, data?: AppActorEventType[Key]): void {
        let actorList = ActorAbilityUtil.getUnitActorAbilityList(unit);
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
     * 销毁一个单位身上的所有 演员技能
     * @param unit
     * @param clazz
     */
    static destroyUnitAllActorAbility(unit: unit, clazz?: string): void {
        if (!IsHandle(unit)) {
            return
        }
        let actorAbilitys = DataBase.getUnitSolarData(unit, false)?._SL_solarActorAbilitys;
        if (actorAbilitys == null) {
            return null;
        }
        for (let abilityTemplateKey in actorAbilitys) {
            let actor = actorAbilitys[abilityTemplateKey];
            if (actor != null) {
                if (clazz == null || clazz == actor.actorType.class) {
                    actor.destroy();
                }
            }
        }
    }

}