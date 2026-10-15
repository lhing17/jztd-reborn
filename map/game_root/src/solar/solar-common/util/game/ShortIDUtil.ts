import NumberUtil from "@/NumberUtil";
import ActorTypeUtil from "@/ActorTypeUtil";
import AttributeUtil from "@/AttributeUtil";

/**
 * 演员id等表格id 通常为方便人记忆的中文长字符
 * 存档时可以使用此工具映射短id以节省存储
 */

type ClazzType = "默认" | "属性key" | "icon" | string;

/** @noSelf **/
export default class ShortIDUtil {

    static clazzMaps: {
        [clazzName: ClazzType]: {
            shortIdFullIdMap: { [shortId: string]: string }
            fullIdShortIdMap: { [full_id: string]: string }
        }
    } = {}

    /**
     * 类别初始化函数 当读取映射id不存在此类别时 会执行这里的初始化函数
     */
    static clazzDefaultInitFuns: {
        [clazzName: ClazzType]: () => void
    } = {
        "属性key": () => {
            ShortIDUtil.initAllAttributeKeyShortIDs();
        }
    }


    /**
     * 初始化所有属性key的短id
     */
    static initAllAttributeKeyShortIDs() {
        for (let key in AttributeUtil.keyInfos) {
            let keyInfo = AttributeUtil.keyInfos[key];
            let shortId = key;
            if (keyInfo.index == null) {
                print("keyInfo.index==null key=" + key);
                shortId = ShortIDUtil.calculateShortId(key);
            } else {
                shortId = ShortIDUtil.calculateShortIdByIndexNumber(keyInfo.index);
            }
            ShortIDUtil.setFullIdAndShortIdMap(key, shortId, "属性key");
        }
    }

    /**
     * 初始化所有演员的短id
     */
    static initAllActorTypeShortIDs() {
        ActorTypeUtil.forAllActorTypesAndLaterRegister(actorType => {
            let shortId = actorType.shortId;
            if (actorType.shortIdindex) {
                shortId = ShortIDUtil.calculateShortIdByIndexNumber(actorType.shortIdindex)
            }
            if (shortId == null) {
                shortId = ShortIDUtil.calculateShortId(actorType.id)
            }
            ShortIDUtil.setFullIdAndShortIdMap(actorType.id, shortId);
        });
    }


    /**
     * 计算 完整id 的 id哈希短编码
     * @param full_id
     */
    static calculateShortId(full_id: string) {
        let stringHash = Math.abs(StringHash(full_id));
        return NumberUtil.toUnsignedString(stringHash, 74);
    }

    /**
     * 计算 完整id 的 短id
     * @param indexNumber 这个在类别里是唯一的
     * @param prefix 可使用a-z A-Z 单字母 或更长字符
     */
    static calculateShortIdByIndexNumber(indexNumber: number, prefix?: string): string {
        let ijz = NumberUtil.toUnsignedString(indexNumber, 86);
        if (prefix) {
            return prefix + ":" + ijz;
        }
        return ijz;
    }

    /**
     * 设置 完整id 与 id短编码 映射关系
     * @param full_id
     * @param shortId
     * @param clazz 类别 指定类别可以防止短id冲突 但是在使用时都需要传对应的类别
     */
    static setFullIdAndShortIdMap(full_id: string, shortId: string, clazz: ClazzType = "默认"): void {
        let clazzMap = ShortIDUtil.clazzMaps[clazz];
        if (clazzMap?.shortIdFullIdMap[shortId] && clazzMap.shortIdFullIdMap[shortId] != full_id) {
            log.errorWithTraceBack(clazz + "fullId2shortId映射冲突:[" + clazzMap.shortIdFullIdMap[shortId] + "]和[" + full_id + "]都映射到短id:" + shortId);
            return;
        }
        if (!clazzMap) {
            clazzMap = {
                fullIdShortIdMap: {},
                shortIdFullIdMap: {}
            }
            ShortIDUtil.clazzMaps[clazz] = clazzMap;
        }
        clazzMap.fullIdShortIdMap[full_id] = shortId;
        clazzMap.shortIdFullIdMap[shortId] = full_id;
    }

    /**
     * 判断是否有 完整id 的 id短编码 映射关系
     * @param full_id
     * @param clazz
     */
    static hasFullIdAndShortIdMap(full_id: string, clazz: ClazzType = "默认"): boolean {
        return ShortIDUtil.clazzMaps[clazz]?.fullIdShortIdMap[full_id] != null;
    }

    /**
     * 完整id转 id短编码 如果之前没有映射短id则返回传入参数
     * @param full_id
     * @param clazz
     */
    static fullId2shortId(full_id: string, clazz: ClazzType = "默认"): string {
        if (full_id == null) {
            return null;
        }
        if (ShortIDUtil.clazzMaps[clazz] == null) {
            ShortIDUtil.clazzDefaultInitFuns[clazz]?.();
        }
        //重新获取 ShortIDUtil.clazzMaps[clazz] 以支持clazzDefaultInitFuns可能的初始创建
        return ShortIDUtil.clazzMaps[clazz]?.fullIdShortIdMap[full_id] || full_id;
    }

    /**
     * id短编码 转完整的id 如果之前没有映射短id则返回传入参数
     * @param shortId
     * @param clazz
     */
    static shortId2fullId(shortId: string, clazz: ClazzType = "默认"): string {
        if (shortId == null) {
            return null;
        }
        if (ShortIDUtil.clazzMaps[clazz] == null) {
            ShortIDUtil.clazzDefaultInitFuns[clazz]?.();
        }
        //重新获取 ShortIDUtil.clazzMaps[clazz] 以支持clazzDefaultInitFuns可能的初始创建
        return ShortIDUtil.clazzMaps[clazz]?.shortIdFullIdMap[shortId] || shortId;
    }


}