import Actor from "@/Actor";
import ActorItem from "@/ActorItem";
import DataBase from "@/DataBase";
import PlayerUtil from "@/PlayerUtil";
import TextTagUtil from "@/TextTagUtil";

/**
 * see ActorUtil 优先使用演员通用工具 不要把演员局限到技能或物品或buff上 这样会导致演员不够通用切换形态
 */
export default class ActorItemUtil {

    /**
     * 创建一个物品或演员物品
     * @param itemOrActorTypeId 可以填演员物品id或者原生物品id
     * @param player
     * @param x
     * @param y
     */
    static createItem(itemOrActorTypeId: string, x: number, y: number, player?: player): item {
        if (DataBase.getSolarActorType(itemOrActorTypeId) == null) {
            let item = CreateItem(itemOrActorTypeId, x, y);
            if (player) {
                SetItemPlayer(item, player, true)
            }
            return item
        } else {
            return ActorItemUtil.createActorItem(itemOrActorTypeId, x, y, player)?.item
        }
    }

    /**
     * 创建一个演员物品
     * @param itemActorTypeId 只能填演员物品id
     * @param player
     * @param x
     * @param y
     */
    static createActorItem(itemActorTypeId: string, x: number, y: number, player?: player): ActorItem {
        let actorItem = new ActorItem(itemActorTypeId, x, y);
        if (IsHandle(player)) {
            SetItemPlayer(actorItem.item, player, true)
        }
        return actorItem;
    }

    /**
     * 创建一个物品或演员物品给单位
     * @param itemOrActorTypeId
     * @param unit
     * @param uses 使用次数
     */
    static addItemForUnit(itemOrActorTypeId: string, unit: unit, uses?: number): item {
        if (DataBase.getSolarActorType(itemOrActorTypeId) == null) {
            let item = CreateItem(itemOrActorTypeId, GetUnitX(unit), GetUnitY(unit));
            if (uses) {
                SetItemCharges(item, uses);
            }
            UnitAddItem(unit, item);
            return item
        } else {
            return ActorItemUtil.addActorItemForUnit(itemOrActorTypeId, unit, uses)?.item
        }
    };

    /**
     * 创建一个演员物品给单位
     * @param itemActorTypeId
     * @param unit
     * @param uses 使用次数
     */
    static addActorItemForUnit(itemActorTypeId: string, unit: unit, uses?: number): ActorItem {
        if (itemActorTypeId == null || !IsHandle(unit)) {
            log.errorWithTraceBack("错误的参数:" + tostring(itemActorTypeId) + " unit=" + tostring(unit))
            return;
        }
        let actor = new ActorItem(itemActorTypeId, GetUnitX(unit), GetUnitY(unit));
        if (uses) {
            actor.setUses(uses);
        }
        UnitAddItem(unit, actor.item);
        return actor;
    }

    /**
     *
     * 如果有演员物品数据
     * @param item
     * @param callBack
     * @param actorTypeId
     */
    static ifHasActorItem(item: item, callBack: (actor: ActorItem) => void, actorTypeId?: string) {
        let actor: ActorItem = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
        if (actor == null) {
            return
        }
        if (actorTypeId != null && actorTypeId != actor.actorTypeId) {
            return;
        }
        callBack(actor);
    }

    /**
     * 根据物品 获得对应的演员物品数据
     * @param item
     * @param actorTypeId
     */
    static getActorItem(item: item, actorTypeId?: string): ActorItem {
        if (!IsHandle(item)) {
            return null;
        }
        let actor: ActorItem = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
        if (actor == null) {
            return null;
        }
        if (actorTypeId != null && actorTypeId != actor.actorTypeId) {
            return null;
        }
        return actor
    }

    /**
     * 根据物品 获得对应的演员物品类型id 或原始id
     * @param item 物品
     */
    static getItemId(item: item): string {
        let actor: ActorItem = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
        if (actor != null) {
            return actor.actorTypeId
        }
        return id2string(GetItemTypeId(item));
    }


    /**
     * 贩卖物品
     * @param soldItem
     * @param who
     */
    static sellItem(soldItem: item, who: unit) {
        ActorItemUtil.ifHasActorItem(soldItem, (actor) => {
            if (actor.get("pawnable") != false) {
                if (actor.get("goldCost") != null && actor.get("goldCost") > 0) {
                    let add = actor.getPawnGold();
                    if (add > 0) {
                        PlayerUtil.addGoldState(GetOwningPlayer(who), add)
                        TextTagUtil.textGold("" + add, who);
                    }
                }
                if (actor.get("lumberCost") != null && actor.get("lumberCost") > 0) {
                    let add = actor.getPawnLumber();
                    if (add > 0) {
                        let texttag = TextTagUtil.textLumber("" + add, who);
                        SetTextTagVelocity(texttag, 0.04, 0)
                    }
                }
            }
            actor.unit = null;
            actor.destroy();
        })
    }

    /**
     * 根据物品 获得对应的演员物品类型id
     * @param item 物品
     */
    static getActorItemTypeId(item: item): string {
        let actor: ActorItem = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
        if (actor == null) {
            return null
        }
        return actor.actorTypeId
    }

    /**
     * 获取一个单位身上的所有 演员物品
     * @param unit
     * @param actorTypeId
     */
    static getUnitActorItemList(unit: unit, actorTypeId?: string): ActorItem[] {
        let actorList: ActorItem[] = null
        for (let i = 0; i < 6; i++) {
            let item = UnitItemInSlot(unit, i);
            if (IsHandle(item)) {
                let actor = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
                if (actor != null) {
                    if (actorTypeId != null && actorTypeId != actor.actorTypeId) {
                        continue;
                    }
                    if (actorList == null) {
                        actorList = [];
                    }
                    actorList.push(actor as ActorItem)
                }
            }
        }
        return actorList;
    }

    /**
     * 获取一个单位身上的所有 演员物品
     * @param unit
     * @param kind
     */
    static getUnitActorItemListByKind(unit: unit, kind: string): ActorItem[] {
        let actorList: ActorItem[] = null
        for (let i = 0; i < 6; i++) {
            let item = UnitItemInSlot(unit, i);
            if (IsHandle(item)) {
                let actor = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
                if (actor != null) {
                    if (kind != actor.get("kind")) {
                        continue;
                    }
                    if (actorList == null) {
                        actorList = [];
                    }
                    actorList.push(actor as ActorItem)
                }
            }
        }
        return actorList;
    }


    /**
     * 获取一个单位身上的第一个指定演员类型的演员物品
     * @param unit
     * @param actorTypeId
     */
    static getUnitActorItem(unit: unit, actorTypeId: string): ActorItem {
        for (let i = 0; i < 6; i++) {
            let item = UnitItemInSlot(unit, i);
            if (IsHandle(item)) {
                let actor = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
                if (actor != null && actorTypeId == actor.actorTypeId) {
                    return actor as ActorItem;
                }
            }
        }
        return null;
    }


    /**
     * 使用此函数前请优先考虑使用ActorUtil.ifUnitHasActor（那样吞噬为buff等也有效，游戏代码写灵活点才能应对随时可能改变的玩法）
     * 如果单位是否持有某个类型的演员物品
     * @param unit
     * @param callBack
     * @param actorTypeId
     */
    static ifUnitHasActorItem(unit: unit, callBack: (actor: ActorItem) => void, actorTypeId: string) {
        for (let i = 0; i < 6; i++) {
            let item = UnitItemInSlot(unit, i);
            if (IsHandle(item)) {
                let actor = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
                if (actor != null && actor.actorTypeId == actorTypeId) {
                    callBack(actor as ActorItem)
                }
            }
        }
    }

    /**
     * 使用此函数前请优先考虑使用ActorUtil.isUnitHasActor 以尽量保证演员的功能不局限于某一种演员类型 方便吞噬等转换
     * 判断单位是否持有某个类型的演员物品
     * @param unit
     * @param actorTypeId
     */
    static isUnitHasActorItem(unit: unit, actorTypeId: string): boolean {
        for (let i = 0; i < 6; i++) {
            let item = UnitItemInSlot(unit, i);
            if (IsHandle(item)) {
                let actor = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
                if (actor != null && actor.actorTypeId == actorTypeId) {
                    return true;
                }
            }
        }
        return false
    }

    /**
     *  获得物品和使用次数
     * @param unit
     */
    static getItemAndActorItemAndChargesFromUnit(unit: unit): { [id: string]: number } {
        let items: { [id: string]: number } = {}
        for (let i = 0; i < 6; i++) {
            let item = UnitItemInSlot(unit, i)
            if (!IsHandle(item)) {
                continue
            }
            let itemTypeStr = id2string(GetItemTypeId(item))
            let itemCharges = GetItemCharges(item);
            if (!itemCharges || itemCharges < 1) {
                itemCharges = 1;
            }
            //添加值
            let actor: ActorItem = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
            if (actor != null) {
                items[actor.actorType.id] = (items[actor.actorType.id] || 0) + itemCharges
            } else {
                items[itemTypeStr] = (items[itemTypeStr] || 0) + itemCharges
            }
        }
        return items;
    }

    /**
     * 消耗玩家拥有的物品类型（或者演员物品类型） 的物品使用次数
     * @param unit
     * @param itemIdOrActorTypeId 物品4字符串id 或者演员物品字符串id
     * @param charges
     */
    static costItemAndActorItemChargesFromUnit(unit: unit, itemIdOrActorTypeId: string, charges: number): number {
        let costCharges = 0//已经消耗的次数
        let needCostCharges = 0 //还需要消耗的次数
        for (let i = 0; i < 6; i++) {
            needCostCharges = charges - costCharges
            if (costCharges >= charges) {
                return costCharges
            }
            let item = UnitItemInSlot(unit, i)
            //
            if (id2string(GetItemTypeId(item)) != itemIdOrActorTypeId) {
                //判断是否演员物品类型
                let actor: Actor = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
                if (actor == null || itemIdOrActorTypeId != actor.actorType.id) {
                    continue
                }
            }
            let itemCharges = GetItemCharges(item);
            if (!itemCharges || itemCharges < 1) {
                itemCharges = 1;
            }
            //消耗值
            if (itemCharges <= needCostCharges) {
                costCharges = costCharges + itemCharges
                RemoveItem(item)
            } else if (itemCharges > needCostCharges) {
                costCharges = costCharges + needCostCharges
                SetItemCharges(item, itemCharges - needCostCharges)
            }
        }
        return costCharges;
    }


    /**
     * 获取物品的名字
     * @param item
     */
    static getItemName(item: item) {
        let actor = ActorItemUtil.getActorItem(item);
        if (actor != null) {
            return actor.getName();
        }
        return GetItemName(item);
    }


}