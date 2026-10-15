import Cache from "@/Cache";
import ActorTypeUtil from "@/ActorTypeUtil";
import ActorAbility from "@/ActorAbility";
import PlayerUtil from "@/PlayerUtil";
import SyncUtil from "@/SyncUtil";
import ActorItemUtil from "@/ActorItemUtil";
import ActorAbilityUtil from "@/ActorAbilityUtil";
import ActorFrameUtil from "@/ActorFrameUtil";
import Actor from "@/Actor";
import SolarConfig from "@/SolarConfig";
import ActorUnit from "@/ActorUnit";
import DataBase from "@/DataBase";

declare interface BuyActorDataType {
    i: string,//技能uuid
    u: number,
}

/**
 * 演员类型 商店相关工具
 * 比如单位可以售卖演员物品
 */
export default class ActorTypeShopUtil {

    static cache = new Cache();
    static _sl_baseSellingAbilityClass = "太阳演员技能售卖"

    /**
     * 自动在演员商店 没有目标时  对玩家异步禁用 以防止点技能
     */

    static autoDisableSellingAbilityOnNoStoreTarget(shopActorUnitTypeId: string) {
        if (GetStoreTarget == null) {
            return
        }
        let actorType = ActorTypeUtil.getActorType(shopActorUnitTypeId);
        actorType.interval = 1;
        if (actorType.onUnitInterval != null) {
            print("不要重复设置商店单位的onUnitInterval回调:" + shopActorUnitTypeId)
        }
        actorType.onUnitInterval = (actor) => {

            let unit = GetStoreTarget(actor.unit, GetLocalPlayer());
            //异步数据 所以这里只能做暗图标的显示和提示 但是同步数据这里是不能改的 否则点击这个技能就会异步
            if (IsHandle(unit)) {
                if (actor.tempBool != true) {
                    actor.tempBool = true;
                    ActorAbilityUtil.forUnitActorAbilityList(actor.unit, actor => {
                        if (!actor.isDisable() && actor.get("class") == ActorTypeShopUtil._sl_baseSellingAbilityClass) {
                            actor.getRootFrameControl().getDisableFrame().visible = false;
                        }
                    });
                }
            } else {
                if (actor.tempBool != false) {
                    actor.tempBool = false;
                    ActorAbilityUtil.forUnitActorAbilityList(actor.unit, actor => {
                        if (actor.get("class") == ActorTypeShopUtil._sl_baseSellingAbilityClass) {
                            actor.getRootFrameControl().getDisableFrame().visible = true;
                        }
                    });
                }
            }

        }

    }


    /**
     * 是演员物品技能售卖类型
     * @param actorAbilityType
     */
    static isActorItemSellingAbilityType(actorAbilityType: AppActorType) {
        if (actorAbilityType == null) {
            return false;
        }
        if (actorAbilityType.class != ActorTypeShopUtil._sl_baseSellingAbilityClass) {
            return false;
        }
        return actorAbilityType.actorItemTypeId != null;
    }

    /**
     * 获取演员物品售卖技能的 售卖的物品类型
     * @param actorAbilityType
     */
    static getSellActorItemType(actorAbilityType: AppActorType): AppActorType {
        if (actorAbilityType == null) {
            return null;
        }
        if (actorAbilityType.class != ActorTypeShopUtil._sl_baseSellingAbilityClass) {
            return null;
        }
        if (actorAbilityType.actorItemTypeId == null) {
            return null;
        }
        return ActorTypeUtil.getActorType(actorAbilityType.actorItemTypeId);
    }


    /**
     * 设置本地商店点击技能事件 将本地点击技能时的商店选择的玩家单位同步到技能 issueOrderUnitSync 属性上
     * @param actorType
     */
    static addBuyActorLocalClickEvent(actorType: AppActorType) {
        ActorTypeShopUtil._sl_initBuyActor();
        //异步中
        actorType.onLocalClick = (actor, btn) => {
            if (btn != 1) {
                //右键点击 不用拦截 以免影响到注册了右键点击同步事件的回调
                return true;
            }
            let actorAbility = actor as ActorAbility;
            if (actorAbility.getCooldown() > 0) {
                //还在技能中 忽略点击
                return false;
            }
            if ((_g_time - (actor.tempNum || 0)) < 400) {
                //不要快速点击 以免买多了
                return false;
            }
            actor.tempNum = _g_time;
            let p = GetLocalPlayer();

            //购买单位
            let unit = GetStoreTarget(actor.unit, p);
            if (!IsHandle(unit)) {
                PlayerUtil.message("没有购买单位!请将需要购买物品的单位靠近此单位!", 10, p)
                return false;
            }
            if (!PlayerUtil.hasEnoughState(p, actorAbility.get("goldCost"))) {
                //
                ActorFrameUtil.showTipText(actor, "|cffff0000金币不足,还差:" + (actorAbility.get("goldCost") - PlayerUtil.getGold(p)), 1, p)
                return false;
            }
            if (!PlayerUtil.hasEnoughState(p, null, actorAbility.get("lumberCost"))) {
                //
                ActorFrameUtil.showTipText(actor, "|cffff0000木材不足,还差:" + (actorAbility.get("lumberCost") - PlayerUtil.getLumber(p)), 1, p)
                return false;
            }


            //有库存限制的逻辑
            if (actorAbility.numberOverlay) {
                if (actorAbility.numberOverlay < 1) {
                    PlayerUtil.message("没有库存了!", 10, p)
                    ActorFrameUtil.showTipText(actor, "|cffff0000库存不足", 1, p)
                    return false;
                } else {
                    //在同步逻辑 onAction 中去减少库存
                }
            }
            //走购买同步逻辑
            SyncUtil.syncObjData("_sl_:buyActor", {
                i: actor.uuid,
                u: h2i(unit),
            } as BuyActorDataType)
            return true;
        }
    }

    /***
     * 将演员物品类型 包装注册一个对应的演员技能类型 在单位释放这个技能时会模拟购买物品的逻辑
     * @param actorItemTypeId
     * 返回包装后的技能演员类型
     */
    static warpActorItem2SellingAbility(actorItemTypeId: string): AppActorAbilityType {
        if (GetStoreTarget == null) {
            let info = "|cffff0000无GetStoreTarget环境此API无效:" + actorItemTypeId
            BJDebugMsg(info);
            log.errorWithTraceBack(info);
            return null;
        }
        return ActorTypeShopUtil.cache.get("warpActorItem2SellingAbility:" + actorItemTypeId, () => {
            let actorType: AppActorItemType = ActorTypeUtil.getActorType(actorItemTypeId);
            if (actorType == null) {
                log.errorWithTraceBack("不存在此演员物品类型:" + actorItemTypeId)
                return null;
            }
            let actorAbilityType: AppActorAbilityType = {
                id: "_sl_SellingAbility:" + actorItemTypeId,
                class: ActorTypeShopUtil._sl_baseSellingAbilityClass,
                name: actorType.sell_name || actorType.name,
                icon: actorType.icon,
                disable: actorType.disable,
                hide: actorType.hide,
                requiredTip: actorType.requiredTip,
                describe: actorType.sell_describe || actorType.describe,
                goldCost: actorType.goldCost,
                lumberCost: actorType.lumberCost,
                x: actorType.x,
                y: actorType.y,
                manaCost: 0,
                maxCd: actorType.sellCd || 0.2,
                actorItemTypeId: actorItemTypeId
            }
            ActorTypeShopUtil.addBuyActorLocalClickEvent(actorAbilityType);
            actorAbilityType.onAction = (actorAbility) => {
                //购买逻辑
                let issueOrderUnitSync: unit = actorAbility.issueOrderUnitSync;
                actorAbility.issueOrderUnitSync = null;
                if (IsHandle(issueOrderUnitSync)) {
                    //正常网络延迟情况下 应该走这里
                    ActorTypeShopUtil._sl_buyActorItemByActorAbility(actorAbility, issueOrderUnitSync, actorItemTypeId)
                } else {
                    //syncData 的数据 还未到达 不知道是谁点技能的 等待一下再购买
                    if (isEmbedJapi) {
                        //按shift 或技能快捷键 也会导致没有触发本地点击 就释放技能
                        // PlayerUtil.message("网络卡顿,请购买物品的玩家重新点击购买!")
                        print("网络卡顿,请购买物品的玩家重新点击购买!")
                    } else {
                        //ydlua 没法拦截localClick
                        print("网络卡顿,或购买资源不足!")
                    }

                    // BaseUtil.onTimer(0.1, (count) => {
                    //     if (count >= 50) {
                    //         PlayerUtil.message("网络卡顿,请重新购买!")
                    //         return false
                    //     }
                    //     let issueOrderUnitSync: unit = actorAbility.issueOrderUnitSync;
                    //     actorAbility.issueOrderUnitSync = null;
                    //     if (IsHandle(issueOrderUnitSync)) {
                    //         ActorTypeShopUtil._sl_buyActorItemByActorAbility(actorAbility, issueOrderUnitSync, actorItemTypeId)
                    //         PlayerUtil.message("购买耗时:" + count)
                    //         return false
                    //     } else {
                    //         return true
                    //     }
                    // });
                    return
                }
            }
            ActorTypeUtil.registerActorType(actorAbilityType)
            return actorAbilityType;
        });
    }

    private static _sl_buyActorItemByActorAbility(actorAbility: Actor, issueOrderUnitSync: unit, actorItemTypeId: string) {
        if (actorAbility.actorType._sl_buyActorItemByActorAbility) {
            if (!actorAbility.actorType._sl_buyActorItemByActorAbility(actorAbility, issueOrderUnitSync, actorItemTypeId)) {
                return false;
            }
        }
        if (PlayerUtil.costEnoughState(GetOwningPlayer(issueOrderUnitSync), actorAbility.get("goldCost"), actorAbility.get("lumberCost"))) {
            if (actorAbility.numberOverlay) {
                //
                if (actorAbility.numberOverlay < 1) {
                    PlayerUtil.message("|cffff0000没有库存了!", 10, GetOwningPlayer(issueOrderUnitSync))
                    return false;
                }
                actorAbility.numberOverlay--;
            }
            let buyingUnit = issueOrderUnitSync
            let actorItem = ActorItemUtil.addActorItemForUnit(actorItemTypeId, buyingUnit);
            if (actorItem.get("stackMax", 0) > 1 && actorItem.get("destroyOnNoUses") == true) {
                //消耗品 默认加上使用次数
                actorItem.setUses(actorItem.get("uses", 1));
            }
            actorItem.get("onBuy")?.(actorItem, buyingUnit)
        } else {
            log.errorWithTraceBack("购买物品的资源消耗不足！请保证技能校验资源与实际资源需求是一样的！")
        }
    }


    //
    private static _sl_inited = false;

    private static _sl_initBuyActor() {
        if (ActorTypeShopUtil._sl_inited) {
            return
        }
        ActorTypeShopUtil._sl_inited = true;
        //

        //走购买同步逻辑
        SyncUtil.onSyncObjData("_sl_:buyActor", (p, obj: BuyActorDataType) => {
            let actorAbility = Actor.allActors[obj.i];
            if (actorAbility == null) {
                log.errorWithTraceBack("售卖技能演员为null!")
                return
            }
            //只有在发布命令单位为null时才设置 单位。即先点的先购买 后点的需要等先点击的走完同步购买逻辑才行
            if (!IsHandle(actorAbility.issueOrderUnitSync)) {
                actorAbility.issueOrderUnitSync = i2h(obj.u);
            }
        })

    }


    /**
     * 获得下一页的技能演员类型
     */
    static getPageNext(): AppActorAbilityType {
        return ActorTypeShopUtil.cache.get("getPageNext", () => {
            let actorAbilityType: AppActorAbilityType = {
                id: "_sl_SellingAbility:PageNext",
                class: "_sl_Page",
                name: "下一页",
                icon: SolarConfig.defaultDownPath,
                describe: "下一页",
                manaCost: 0,
                maxCd: 0.1,
                x: 2,
                y: 2
            };
            actorAbilityType.onAction = (actor, x, y, targetUnit) => {

                let actorUnit: ActorUnit = DataBase.getUnitSolarData(actor.unit, false)?._SL_solarActorUnit;
                if (actorUnit) {
                    actorUnit._sl_sellActorItemPageIndex++;
                    actorUnit.set("sellItems", actorUnit.get("sellItems"));
                }

            }
            ActorTypeUtil.registerActorType(actorAbilityType);
            return actorAbilityType;
        });
    }


    /**
     * 获得上一页的技能演员类型
     */
    static getPagePrevious(): AppActorAbilityType {
        return ActorTypeShopUtil.cache.get("getPagePrevious", () => {
            let actorAbilityType: AppActorAbilityType = {
                id: "_sl_SellingAbility:PagePrevious",
                class: "_sl_Page",
                name: "上一页",
                icon: SolarConfig.defaultUpPath,
                describe: "上一页",
                manaCost: 0,
                maxCd: 0.1,
                x: 1,
                y: 2
            };
            actorAbilityType.onAction = (actor, x, y, targetUnit) => {
                let actorUnit: ActorUnit = DataBase.getUnitSolarData(actor.unit, false)?._SL_solarActorUnit;
                if (actorUnit) {
                    actorUnit._sl_sellActorItemPageIndex--;
                    actorUnit.set("sellItems", actorUnit.get("sellItems"));
                }
            }
            ActorTypeUtil.registerActorType(actorAbilityType);
            return actorAbilityType;
        });
    }


}