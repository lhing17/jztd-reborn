import LangUtil from "@/LangUtil";

export default class UnitTypeUtil {


    /**
     * 设置单位类型名字
     * @param idOrIdStr
     * @param value
     */
    static setUnitTypeName(idOrIdStr: number | string, value: string) {
        let uid = LangUtil.getIntId(idOrIdStr);
        EXSetUnitArrayString(uid, 10, 0, value);
        EXSetUnitInteger(uid, 10, 1);
    }

    /**
     * 设置单位类型英雄称谓
     * @param idOrIdStr
     * @param value
     */
    static setHeroTypeProperName(idOrIdStr: number | string, value: string) {
        let uid = LangUtil.getIntId(idOrIdStr);
        EXSetUnitArrayString(uid, 61, 0, value);
        EXSetUnitInteger(uid, 61, 1);
    }

    /**
     * 设置单位类型图标 (只能对还没有被使用的单位类型有效，(如没有创建此单位类型的单位实例,或创建了建造列表有此单位类型的单位等等))
     * @param idOrIdStr
     * @param value
     */
    static setUnitIcon(idOrIdStr: number | string, value: string) {
        let uid = LangUtil.getIntId(idOrIdStr);
        EXSetUnitArrayString(uid, 146, 0, value);
        EXSetUnitInteger(uid, 146, 1);
    }
    /**
     * 设置单位类型提示
     * @param idOrIdStr
     * @param value
     */
    static setUnitTypeTip(idOrIdStr: number | string, value: string) {
        let uid = LangUtil.getIntId(idOrIdStr);
        EXSetUnitArrayString(uid, 151, 0, value);
        EXSetUnitInteger(uid, 151, 1);
    }

    /**
     * 设置单位类型描述
     * @param idOrIdStr
     * @param value
     */
    static setUnitTypeUbertip(idOrIdStr: number | string, value: string) {
        let uid = LangUtil.getIntId(idOrIdStr);
        EXSetUnitArrayString(uid, 154, 0, value);
        EXSetUnitInteger(uid, 154, 1);
    }

    /**
     * 设置单位类型模型
     * @param idOrIdStr
     * @param value
     */
    static setUnitTypeModel(idOrIdStr: number | string, value: string) {
        let uid = LangUtil.getIntId(idOrIdStr);
        EXSetUnitString(uid, 13, value);
    }

    /**
     * 设置单位类型大头像模型
     * @param idOrIdStr
     * @param value
     */
    static setUnitTypePortraitModel(idOrIdStr: number | string, value: string) {
        let uid = LangUtil.getIntId(idOrIdStr);
        EXSetUnitString(uid, 14, value);
    }

    /**
     * 设置单位类型模型缩放
     * @param idOrIdStr
     * @param value
     */
    static setUnitTypeModelScale(idOrIdStr: number | string, value: number) {
        let uid = LangUtil.getIntId(idOrIdStr);
        EXSetUnitReal(uid, 0x2c, value);
    }


}