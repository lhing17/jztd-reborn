import ShortIDUtil from "@/ShortIDUtil";

export default class SerializeUtil {


    /**
     * 将属性对象序列化为字符串
     * @param attribute
     */
    static attribute2String(attribute: AppAttribute): string {
        let simpleAttribute = {};
        for (let attributeKey in attribute) {
            let simpleKey = ShortIDUtil.fullId2shortId(attributeKey, "属性key");
            simpleAttribute[simpleKey] = attribute[attributeKey];
        }
        let jsonStr = JSON.stringify(simpleAttribute);
        return jsonStr;
    }

    /**
     * 将字符串反序列化为属性对象
     * @param simpleAttributeJsonStr
     */
    static string2Attribute(simpleAttributeJsonStr: string): AppAttribute {
        if (simpleAttributeJsonStr == null || simpleAttributeJsonStr.length < 2) {
            return null;
        }
        let simpleAttribute = JSON.parse(simpleAttributeJsonStr);
        let attribute = {};
        for (let simpleKey in simpleAttribute) {
            let attributeKey = ShortIDUtil.shortId2fullId(simpleKey, "属性key");
            attribute[attributeKey] = simpleAttribute[simpleKey];
        }
        return attribute;
    }


}