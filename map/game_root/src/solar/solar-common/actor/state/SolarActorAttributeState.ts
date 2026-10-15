import {Trigger} from "@/trigger";
import Actor from "@/Actor";
import DataBase from "@/DataBase";
import ActorBuffUtil from "@/ActorBuffUtil";
import UnitStateUtil from "@/UnitStateUtil";
import AttributeUtil from "@/AttributeUtil";
import UnitAttributeState from "@/UnitAttributeState";
import SingletonUtil from "@/SingletonUtil";
import BaseUtil from "@/BaseUtil";
import ActorItem from "@/ActorItem";
import ActorBuff from "@/ActorBuff";
import GameCenter from "@/GameCenter";
import ActorUtil from "@/ActorUtil";

export default class SolarActorAttributeState {

    /**
     * 演员物品属性处理器 (可以在这里做装备加成等增幅)
     *
     * resultAttribute 返回的最终给单位加上的属性 可以与ActorItem.attribute 不一样 以免改到基础属性
     * resultAttribute 初始为复制的ActorItem.attribute
     * 处理器通常应直接return resultAttribute
     */
    static itemAttributeHandlers: ActorAttributeHandler[] = [];
    static buffAttributeHandlers: ActorAttributeHandler[] = [];
    /** 启用装备属性 (部分Orpg模拟穿戴装备的可以使用false 禁用物品栏里的演员物品属性效果) */
    static enableItemAttribute = true;


    constructor() {
        if (SingletonUtil.notFirstTime(SolarActorAttributeState)) {
            print("不能重复new SolarActorAttributeState()")
            return;
        }
        /**buff 属性更新到单位属性*/
        let trigger2 = new Trigger();
        let noUpdateAttributeTime = 0;
        trigger2.registerTimerEvent(0.99, true)
        trigger2.addAction(() => {
            //每秒定时更新  超过5秒没更新时 强制更新 保底机制可以提高框架鲁棒性
            if (Actor._sl_needUpdateAttribute == false && noUpdateAttributeTime < 5) {
                noUpdateAttributeTime++;
                return
            }
            Actor._sl_needUpdateAttribute = false;
            noUpdateAttributeTime = 0;
            //遍历所有
            DataBase.forUnitSolarDatas((u, solarData: AppData) => {
                SolarActorAttributeState.refreshActorAttributes2UnitSolarAttribute(u)
            })

        });
        //实时刷新
        se.on("属性刷新", (data, solarTrigger) => {
            if (data?.unit) {
                SolarActorAttributeState.refreshActorAttributes2UnitSolarAttribute(data.unit);
            } else {
                //遍历所有
                let allUnits = GameCenter.getAllUnits();
                for (let unitHandle of allUnits) {
                    SolarActorAttributeState.refreshActorAttributes2UnitSolarAttribute(unitHandle);
                }
            }
        });
        //实时刷新
        ActorBuffUtil.addAnyActorBuffCreatedListener(buff => {
            if (buff.attribute) {
                SolarActorAttributeState.refreshActorAttributes2UnitSolarAttribute(buff.unit)
            }
        });
        se.onUnitPickupItem(e => {
            let trigUnit = e.trigUnit;
            BaseUtil.runLater(0.1, () => {
                SolarActorAttributeState.refreshActorAttributes2UnitSolarAttribute(trigUnit);
            });
        });
        se.onUnitDropItem(e => {
            //延迟 刷新 此时可能装备还在身上 或其他物品修改逻辑
            let trigUnit = e.trigUnit;
            BaseUtil.runLater(0.1, () => {
                SolarActorAttributeState.refreshActorAttributes2UnitSolarAttribute(trigUnit);
            });
        });

    }

    static refreshActorAttributes2UnitSolarAttribute(unitHandle: unit) {
        //死亡单位不刷新
        if (!UnitStateUtil.isAlive(unitHandle)) {
            return;
        }
        let attributes: AppAttribute[] = SolarActorAttributeState.getUnitAllActorAttributes(unitHandle);
        let oldAttr: AppAttribute = DataBase.getUnitSolarData(unitHandle, false)?._SL_totalActorsSolarAttribute;
        if (oldAttr == null) {//如果之前没有旧buff属性 则退出后续逻辑  否则还需将之前的旧属性 移除
            if (attributes == null || attributes.length == 0) {
                return
            }
        }
        let totalAttribute: SolarAttribute = AttributeUtil.sumAttributes(attributes);

        /**
         属性 系统
         */
        let solarData = DataBase.getUnitSolarData(unitHandle);
        if (!solarData._SL_solarAttribute) {
            solarData._SL_solarAttribute = {}
        }

        AttributeUtil.subtract(solarData._SL_solarAttribute, oldAttr);
        AttributeUtil.add(solarData._SL_solarAttribute, totalAttribute);

        solarData._SL_totalActorsSolarAttribute = totalAttribute;
        //发送属性改变事件
        UnitAttributeState.refreshUnitSolarAttribute(unitHandle)
    }


    /**
     * 获取单位身上所有演员 的属性值
     * @param unit
     */
    static getUnitAllActorAttributes(unit: unit): AppAttribute[] {
        let attributeArray: AppAttribute[] = null;
        let solarData = DataBase.getUnitSolarData(unit, false);

        if (solarData != null) {
            //单位
            let attribute: AppAttribute = solarData._SL_solarActorUnit?.attribute;
            if (attribute != null) {
                attributeArray = [attribute];
            }
            //技能
            let actorAbilitys = solarData._SL_solarActorAbilitys;
            if (actorAbilitys != null) {
                if (attributeArray == null) {
                    attributeArray = [];
                }
                for (let abilityTemplateKey in actorAbilitys) {
                    attributeArray = ActorUtil.collectActorAllAttributes(attributeArray, actorAbilitys[abilityTemplateKey])
                }
            }
            //演员buff
            let _SL_solarActorBuffSet: ActorBuff[] = solarData._SL_solarActorBuffs;
            if (_SL_solarActorBuffSet) {
                for (let actorBuff of _SL_solarActorBuffSet) {
                    attributeArray = ActorUtil.collectActorAllAttributes(attributeArray, actorBuff, SolarActorAttributeState.buffAttributeHandlers)
                }
            }
        }
        if (SolarActorAttributeState.enableItemAttribute) {
            let invSize = UnitInventorySize(unit)
            for (let i = 0; i < invSize; i++) {
                let item = UnitItemInSlot(unit, i);
                if (IsHandle(item)) {
                    let actorItem: ActorItem = DataBase.getItemSolarData(item, false)?._SL_solarActorItem;
                    if (actorItem && actorItem.attribute != null) {
                        if (attributeArray == null) {
                            attributeArray = [];
                        }
                        attributeArray = ActorUtil.collectActorAllAttributes(attributeArray, actorItem, SolarActorAttributeState.itemAttributeHandlers)
                    }
                }
            }
        }
        return attributeArray;
    }
}