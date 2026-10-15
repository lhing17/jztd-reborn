import ActorUtil from "@/ActorUtil";
import ItemAttributeState from "@/ItemAttributeState";
import DataBase from "@/DataBase";
import SingletonUtil from "@/SingletonUtil";
import GameCenter from "@/GameCenter";
import ActorBuffUtil from "@/ActorBuffUtil";
import BaseUtil from "@/BaseUtil";

declare global {
    interface AppUnitData {
        maxUniqueAttributes?: { [key: string]: AppAttribute };
    }
}
type UniqueAttributeInfo = {
    /** 属性key */
    key: AppAttributeKey,//比如致命一击
    /**
     * 权重算法 如致命一击取 几率x伤害 为权重 保留权重最高的
     */
    weightAlgorithm: (attribute: AppAttribute) => number

}
/**
 * 唯一最高属性配置
 * 模拟类似 原生致命一击 取最高伤害的属性 才生效的效果
 */
export default class UniqueAttributeState {
    static uniqueAttributeInfos: UniqueAttributeInfo[] = [];
    static _sl_isStart = false;

    /**
     * 注册唯一属性相关信息 如致命一击 重击 等等唯一取最高效果的
     * @param uniqueAttributeInfo
     */
    static registerUniqueAttribute(uniqueAttributeInfo: UniqueAttributeInfo) {
        UniqueAttributeState.uniqueAttributeInfos.push(uniqueAttributeInfo);
        //自动启动
        if (!UniqueAttributeState._sl_isStart) {
            new UniqueAttributeState();
        }
    }

    /**
     * 可使用registerUniqueAttribute 自动启动
     * @private
     */
    constructor() {
        UniqueAttributeState._sl_isStart = true;
        if (SingletonUtil.notFirstTime(UniqueAttributeState)) {
            print("不能重复new UniqueAttributeState()")
            return;
        }
        se.onUnitPickupItem(e => {
            UniqueAttributeState.updateMaxAttribute(e.trigUnit)
        });
        se.onUnitDropItem(e => {
            let unit = e.trigUnit;
            BaseUtil.runLater(0.01, () => {
                UniqueAttributeState.updateMaxAttribute(unit);
            });
        });
        //实时刷新
        se.on("属性刷新", (data, solarTrigger) => {
            if (data?.unit) {
                UniqueAttributeState.updateMaxAttribute(data.unit);
            } else {
                //遍历所有
                let allUnits = GameCenter.getAllUnits();
                for (let unitHandle of allUnits) {
                    UniqueAttributeState.updateMaxAttribute(unitHandle);
                }
            }

        })
        //实时刷新
        ActorBuffUtil.addAnyActorBuffCreatedListener(buff => {
            if (buff.attribute) {
                UniqueAttributeState.updateMaxAttribute(buff.unit)
            }
        });
    }

    static updateMaxAttribute(unit: unit) {

        let itemAttributes: AppAttribute[] = ItemAttributeState.getItemsAttributes(unit);
        let actorAttributes = ActorUtil.getUnitAllActorAttributes(unit);
        //
        if (itemAttributes == null && actorAttributes == null) {
            if (DataBase.getUnitSolarData(unit, false)?.maxUniqueAttributes) {
                DataBase.getUnitSolarData(unit, true).maxUniqueAttributes = {};
            }
            return
        }
        let attributeList = [];
        if (itemAttributes) {
            attributeList.push(...itemAttributes)
        }
        if (actorAttributes) {
            attributeList.push(...actorAttributes)
        }

        let maxUniqueAttributes: { [key: string]: AppAttribute } = {};
        let _sl_maxUniqueAttributeWeights: { [key: string]: number } = {};


        for (let attribute of attributeList) {
            //计算最大属性词条
            for (let uniqueAttributeInfo of UniqueAttributeState.uniqueAttributeInfos) {
                //
                if (attribute[uniqueAttributeInfo.key]) {
                    let weight = uniqueAttributeInfo.weightAlgorithm(attribute);
                    if (weight > (_sl_maxUniqueAttributeWeights[uniqueAttributeInfo.key] || 0)) {
                        _sl_maxUniqueAttributeWeights[uniqueAttributeInfo.key] = weight;
                        maxUniqueAttributes[uniqueAttributeInfo.key] = attribute;
                    }
                }
            }
        }

        DataBase.getUnitSolarData(unit, true).maxUniqueAttributes = maxUniqueAttributes;

    }

}