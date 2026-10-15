import DataBase from "@/common/DataBase";
import HandleUtil from "@/HandleUtil";
import UnitUtil from "@/UnitUtil";
import PlayerUtil from "@/PlayerUtil";
import TextUtil from "@/TextUtil";

/**
 * 属性与SolarData的区别为:
 * 属性(Attribute)本质也是存放在SolarData里 属性主要额外提供了可在单位携带物品或buff等时会自动计算总属性值。
 * 通常与战斗相关的伤害词条或携带物品、buff等需要叠加到单位身上的可选择存放在属性里
 *
 * 其他不需要叠加到单位的值可存在SolarData 如玩家杀敌数 单位伤害总计 英雄的职业 物品的归类
 */
export default class AttributeUtil {

    /**
     * index 可作为排序使用 最好不要重复
     */
    static keyInfos: { [k: string]: { name: string, index?: number, isPercentage?: boolean } } = {
        attack: {name: "攻击", index: 1, isPercentage: false},
        attack_p: {name: "攻击增幅", index: 2, isPercentage: true},
        life: {name: "生命", index: 3, isPercentage: false},
        life_p: {name: "生命增幅", index: 4, isPercentage: true},
        mana: {name: "魔法", index: 5, isPercentage: false},
        mana_p: {name: "魔法增幅", index: 6, isPercentage: true},
        miss_p: {name: "闪避几率", index: 7, isPercentage: true},
        def: {name: "护甲", index: 8, isPercentage: false},
        def_p: {name: "护甲增幅", index: 9, isPercentage: true},
        def_pierce: {name: "护甲穿透", index: 10, isPercentage: false},
        def_pierce_p: {name: "护甲穿透比例", index: 11, isPercentage: true},
        full_property: {name: "全属性", index: 12, isPercentage: false},
        full_property_p: {name: "全属性增幅", index: 13, isPercentage: true},
        strength: {name: "力量", index: 14, isPercentage: false},
        strength_p: {name: "力量增幅", index: 15, isPercentage: true},
        agility: {name: "敏捷", index: 16, isPercentage: false},
        agility_p: {name: "敏捷增幅", index: 17, isPercentage: true},
        intelligence: {name: "智力", index: 18, isPercentage: false},
        intelligence_p: {name: "智力增幅", index: 19, isPercentage: true},
        attackSpd_p: {name: "攻击速度", index: 20, isPercentage: true},
        move_speed: {name: "移动速度", index: 21, isPercentage: false},
        damage_cool: {name: "攻击间隔", index: 22, isPercentage: false},
        damage_range: {name: "攻击范围", index: 23, isPercentage: false},
        attack_damage_increased: {name: "攻击增伤", index: 24, isPercentage: true},
        physical_damage_increased: {name: "物理增伤", index: 25, isPercentage: true},
        physical_damage_reduction: {name: "物理抗性", index: 26, isPercentage: true},
        magic_damage_increased: {name: "法术增伤", index: 27, isPercentage: true},
        physical_critical_chance: {name: "物理暴击几率", index: 28, isPercentage: true},
        physical_critical_damage: {name: "物理暴击伤害", index: 29, isPercentage: true},
        magic_power: {name: "法术强度", index: 30, isPercentage: false},
        magic_damage_reduction: {name: "法术抗性", index: 31, isPercentage: true},
        magic_critical_chance: {name: "法术暴击几率", index: 32, isPercentage: true},
        magic_critical_damage: {name: "法术暴击伤害", index: 33, isPercentage: true},

        damage_increased: {name: "全伤害增幅", index: 34, isPercentage: true},
        damage_reduction: {name: "|cff00ff00伤害减免|r", index: 35, isPercentage: true},
        // blood_sucking: {name: "伤害吸血", index: 1, isPercentage: false},
        blood_sucking: {name: "|cffff0000伤害吸血|r", index: 36, isPercentage: true},
        split_damage_range: {name: "分裂范围", index: 37, isPercentage: false},
        split_damage: {name: "分裂伤害", index: 38, isPercentage: true},
        primary_property: {name: "主属性", index: 39, isPercentage: false},
        primary_property_p: {name: "主属性百分比", index: 40, isPercentage: true}
    }

    /**
     * 获取属性提示信息 (可以根据配置的属性自动生成对应的属性文字描述)
     * @param attribute
     * @param prefx 前缀 如 全队
     */
    static getAttributeInfo(attribute: AppAttribute, prefx: string = ""): string {
        let info = "";
        if (attribute == null) {
            return info;
        }
        let keys: string[] = []
        //收集key
        for (let key in attribute) {
            if (typeof attribute[key] != "number") {
                continue
            }
            keys.push(key);
        }
        //排序key
        keys.sort((k1, k2) => {
            let k1i = AttributeUtil.keyInfos[k1]?.index || 1000000;
            let k2i = AttributeUtil.keyInfos[k2]?.index || 1000000;
            return k1i - k2i;
        })
        //取值
        for (let key of keys) {
            let name = key;
            let val = attribute[key] as number;
            let valStr: any = val;
            let keyInfo = AttributeUtil.keyInfos[key];
            //是否负数
            if (keyInfo) {
                name = keyInfo.name;
                if (keyInfo.isPercentage) {
                    valStr = TextUtil.toPercentage(val);
                } else if (val > 10000) {
                    valStr = TextUtil.toCnUnit(val);
                }
            }
            if (val >= 0) {
                info += prefx + name + " + " + valStr + "|n";
            } else {
                //负数自带 - 号
                info += prefx + name + " " + valStr + "|n";
            }

        }
        return info;
    }

    /**
     * 获取属性
     * 如果属性为空则返回null
     * (取值时可使用?.安全访问 与??使用默认值)
     * @param unitHandle
     * @param createDefault 是否在属性对象对象为空时默认创建一个属性对象对象
     */
    static getUnitAttribute(unitHandle: unit, createDefault = false): AppAttribute | null {
        if (isDebug && createDefault && !UnitUtil.isHero(unitHandle)) {
            if (!UnitAlive(unitHandle) || !HandleUtil.isUnitHandle(unitHandle)) {
                log.errorWithTraceBack("警告：你正在给一个死亡的单位创建属性: " + tostring(GetUnitName(unitHandle)) + " 如果只是查询数据请将createDefault参数传false")
            }
        }
        let solarData = db.getUnitSolarData(unitHandle, createDefault);
        if (createDefault && !solarData._SL_solarAttribute) {
            solarData._SL_solarAttribute = {}
        }
        return solarData?._SL_solarAttribute;
    }

    /**
     * 获取单位类型的属性
     * 如果属性为空则返回null
     * (取值时可使用?.安全访问 与??使用默认值)
     * @param unitTypeId
     * @param createDefault 是否在属性对象对象为空时默认创建一个属性对象对象
     */
    static getUnitTypeAttribute(unitTypeId: string, createDefault = false): AppAttribute | null {
        let solarData = db.getUnitTypeSolarData(unitTypeId, createDefault);
        if (createDefault && !solarData._SL_solarAttribute) {
            solarData._SL_solarAttribute = {}
        }
        return solarData?._SL_solarAttribute;
    }

    /**
     * 添加单位属性
     * @param playerHandle
     * @param addAttribute
     */
    static addUnitAttribute(unitHandle: unit, addAttribute: AppAttribute): void {
        if (!addAttribute) {
            return;
        }
        let baseAttribute = AttributeUtil.getUnitAttribute(unitHandle, true);
        for (let key in addAttribute) {
            if (typeof addAttribute[key] == "number") {
                baseAttribute[key] = (baseAttribute[key] as number ?? 0) + (addAttribute[key] as number)
            } else if (baseAttribute[key] == null) {
                baseAttribute[key] = addAttribute[key]
            } else {
                print("未覆盖单位旧属性值:" + key)
            }
        }
    }

    /**
     * 获取物品的属性
     * @param itemHandle
     * @param createDefault 是否在属性对象对象为空时默认创建一个属性对象对象
     */
    static getItemAttribute(itemHandle: item, createDefault = false): AppAttribute | null {
        let solarData = db.getItemSolarData(itemHandle, createDefault);
        if (createDefault && !solarData._SL_solarAttribute) {
            solarData._SL_solarAttribute = {}
        }
        return solarData?._SL_solarAttribute;
    }

    /**
     * 获取物品类型的属性
     * @param itemTypeId
     * @param createDefault 是否在属性对象对象为空时默认创建一个属性对象对象
     */
    static getItemTypeAttribute(itemTypeId: string, createDefault = false): AppAttribute | null {
        let solarData = db.getItemTypeSolarData(itemTypeId, createDefault);
        if (createDefault && !solarData._SL_solarAttribute) {
            solarData._SL_solarAttribute = {}
        }
        return solarData?._SL_solarAttribute;
    }

    /**
     * 设置物品类型的属性
     * @param itemTypeId 既可以为真实物编id 也可以为模拟的物品id
     * @param attribute
     * @param allowCover 通常为false 除非你确定你自己在干嘛
     */
    static setItemTypeAttribute(itemTypeId: string, attribute: AppAttribute, allowCover = false): AppAttribute {
        let solarData = db.getItemTypeSolarData(itemTypeId);
        let oldAttribute = solarData._SL_solarAttribute;
        if (oldAttribute && !allowCover) {
            log.errorWithTraceBack("此物品类型已有属性了，无法覆盖所有属性!可直接修改已有属性的对应词条!" + itemTypeId)
            return oldAttribute;
        }
        solarData._SL_solarAttribute = attribute;
        return oldAttribute;
    }

    /**
     * 获取玩家属性
     * @param playerHandle
     * @param createDefault
     */
    static getPlayerAttribute(playerHandle: player, createDefault = false): AppPlayerAttribute | null {
        let solarData = db.getPlayerSolarData(playerHandle, createDefault);
        if (createDefault && !solarData._SL_solarAttribute) {
            solarData._SL_solarAttribute = {}
        }
        return solarData?._SL_solarAttribute;
    }

    /**
     * 添加玩家属性
     * @param playerHandle
     * @param addAttribute
     */
    static addPlayerAttribute(playerHandle: player, addAttribute: AppAttribute): void {
        if (!addAttribute) {
            return;
        }
        let basePlayerAttribute = AttributeUtil.getPlayerAttribute(playerHandle, true);
        for (let key in addAttribute) {
            if (typeof addAttribute[key] == "number") {
                basePlayerAttribute[key] = (basePlayerAttribute[key] as number ?? 0) + (addAttribute[key] as number)
            } else if (basePlayerAttribute[key] == null) {
                basePlayerAttribute[key] = addAttribute[key]
            } else {
                print("未覆盖玩家旧属性值:" + key)
            }
        }
    }


    /**
     * 设置所有属性
     * @param playerHandle
     * @param attribute
     * @param allowCover = 允许覆盖旧的属性 (不确定的时候不要覆盖旧属性 以免引起属性增减出错)
     */
    static setPlayerAttribute(playerHandle: player, attribute: AppAttribute, allowCover = false): AppPlayerAttribute {
        let solarData = db.getPlayerSolarData(playerHandle);
        let oldAttribute = solarData._SL_solarAttribute;
        if (oldAttribute && !allowCover) {
            log.errorWithTraceBack("此玩家已有属性了，无法覆盖所有属性!可直接修改已有属性的对应词条!" + GetPlayerId(playerHandle))
            return oldAttribute;
        }
        solarData._SL_solarAttribute = attribute;
        return oldAttribute;
    }

    /**
     * 设置单位所有属性
     * @param unitHandle
     * @param attribute
     * @param allowCover 是否允许覆盖 若为false时 则不能为一个已有属性的单位重新设置全部属性  通常为false 除非你确定你自己在干嘛
     */
    static setUnitAttribute(unitHandle: unit, attribute: AppAttribute, allowCover = false): AppAttribute {
        let unitSolarData = db.getUnitSolarData(unitHandle);
        let oldAttribute = unitSolarData._SL_solarAttribute;
        if (oldAttribute && !allowCover) {
            log.errorWithTraceBack("此单位已有属性了，无法覆盖所有属性!可直接修改已有属性的对应词条!" + tostring(GetUnitName(unitHandle)))
            return oldAttribute;
        }
        unitSolarData._SL_solarAttribute = attribute;
        return oldAttribute;
    }

    /**
     * 设置单位类型所有属性
     * @param unitTypeId
     * @param attribute
     * @param allowCover 是否允许覆盖 若为false时 则不能为一个已有属性的单位重新设置全部属性  通常为false 除非你确定你自己在干嘛
     */
    static setUnitTypeAttribute(unitTypeId: string, attribute: AppAttribute, allowCover = false): AppAttribute {
        let solarData = db.getUnitTypeSolarData(unitTypeId, true);
        let oldAttribute = solarData._SL_solarAttribute;
        if (oldAttribute && !allowCover) {
            log.errorWithTraceBack("此单位已有属性了，无法覆盖所有属性!可直接修改已有属性的对应词条!" + unitTypeId)
            return oldAttribute;
        }
        solarData._SL_solarAttribute = attribute;
        return oldAttribute;
    }

    /**
     * 设置物品所有属性
     * @param itemHandle
     * @param attribute
     * @param allowCover
     */
    static setItemAttribute(itemHandle: item, attribute: AppAttribute, allowCover = false): AppAttribute {
        let solarData = db.getItemSolarData(itemHandle);
        let oldAttribute = solarData._SL_solarAttribute;
        if (oldAttribute && !allowCover) {
            log.errorWithTraceBack("此物品已有属性了，无法覆盖所有属性!可直接修改已有属性的对应词条!" + GetItemName(itemHandle))
            return oldAttribute;
        }
        solarData._SL_solarAttribute = attribute;
        return oldAttribute;
    }

    /**
     * 循环地图上 所有有属性的单位
     */
    static forAllUnitsAttribute(callback: (unitHandle: unit, attribute: AppAttribute) => void): void {
        DataBase.forUnitSolarDatas((u, solarData) => {
            let solarAttribute = solarData?._SL_solarAttribute;
            if (solarAttribute) {
                callback(u, solarAttribute)
            }
        });
    }


    /**
     * 遍历所有玩家主英雄的属性
     * (玩家主英雄需要用PlayerUtil.setHero 设置)
     */
    static forAllPlayerHeroAttribute(callback: (hero: unit, attribute: AppAttribute) => void, createDefault = false): void {
        for (let pid = 0; pid < bj_MAX_PLAYER_SLOTS; pid++) {
            let tempPlayer = Player(pid);
            if (GetPlayerSlotState(tempPlayer) == PLAYER_SLOT_STATE_PLAYING) {
                let hero = PlayerUtil.getHero(tempPlayer);
                if (IsHandle(hero)) {
                    let heroAttribute = AttributeUtil.getUnitAttribute(hero, createDefault);
                    if (heroAttribute) {
                        callback(hero, heroAttribute)
                    }
                }
            }
        }
    }

    /**
     * 循环所有玩家属性
     */
    static forAllPlayerAttribute(callback: (player: player, playerAttribute: AppPlayerAttribute) => void, createDefault = false): void {
        PlayerUtil.forPlayingPlayers(player => {
            let playerAttribute = AttributeUtil.getPlayerAttribute(player, createDefault);
            if (playerAttribute) {
                callback(player, playerAttribute)
            }
        });
    }


    /**
     * 统计属性集合的总值属性集合
     * @param attributes
     */
    static sumAttributes(attributes: SolarAttribute[]): AppAttribute {
        let result: SolarAttribute = {}
        if (attributes == null) {
            return result
        }
        for (let attribute of attributes) {
            for (let key in attribute) {
                if (typeof attribute[key] != "number") {
                    continue
                }
                if (!result[key]) {
                    result[key] = 0
                }
                result[key] = (result[key] as number) + (attribute[key] as number)
            }

        }
        return result;
    }

    /**
     *  属性对象相加
     *  attribute1 + attribute2
     */
    static add(attribute: SolarAttribute, _attribute: SolarAttribute): void {
        if (!_attribute) {
            return
        }
        for (let key in _attribute) {
            if (typeof _attribute[key] == "number") {
                attribute[key] = (attribute[key] as number ?? 0) + (_attribute[key] as number)
            }
        }
    }

    /**
     *  属性对象相减
     *  attribute1 - attribute2
     */
    static subtract(attribute: SolarAttribute, _attribute: SolarAttribute): void {
        if (!_attribute) {
            return
        }
        for (let key in _attribute) {
            if (typeof _attribute[key] == "number") {
                attribute[key] = (attribute[key] as number ?? 0) - (_attribute[key] as number)
            }
        }
    }

    /**
     *  属性对象缩放
     *  attribute * scale
     */
    static multiply(attribute: SolarAttribute, scale: number, store?: SolarAttribute): AppAttribute {
        if (!attribute) {
            return
        }
        if (scale == 0) {
            return {}
        }
        if (store == null) {
            store = {}
        }
        for (let key in attribute) {
            if (typeof attribute[key] == "number") {
                store[key] = (attribute[key] as number ?? 0) * scale;
            }
        }
        return store;
    }

    /**
     *  属性值是否相等
     */
    static isEquals(attribute: SolarAttribute, otherAttribute?: SolarAttribute): boolean {
        if (attribute == otherAttribute) {
            return true;
        }
        if (attribute == null || otherAttribute == null) {
            return false;
        }
        let keys1: string[] = Object.keys(attribute);
        let keys2: string[] = Object.keys(otherAttribute);
        if (keys1.length != keys2.length) {
            return false;
        }
        for (let key of keys1) {
            if (attribute[key] != otherAttribute[key]) {
                return false;
            }
        }
        return true;
    }


    /**
     * addons
     */

    /**
     * 获取 技能cd 比例 -0.1为降低10%冷却时间
     * (比如某个装备会减少某个技能的cd)
     * @param unitHandle
     * @param abilityIdStr
     */
    static getAbilityCDP(unitHandle: unit, abilityIdStr: string): number {
        let attribute = AttributeUtil.getUnitAttribute(unitHandle, false);
        return (attribute?.["ability_cd_p_" + abilityIdStr] as number) || 0
    }

    /**
     * 设置技能cd 比例
     * @param unitHandle
     * @param abilityIdStr
     * @param val
     */
    static setAbilityCDP(unitHandle: unit, abilityIdStr: string, val: number): void {
        let attribute = AttributeUtil.getUnitAttribute(unitHandle, true);
        attribute["ability_cd_p_" + abilityIdStr] = val;
    }

    /**
     * 增加技能cd 比例
     * @param unitHandle
     * @param abilityIdStr
     * @param val
     */
    static addAbilityCDP(unitHandle: unit, abilityIdStr: string, val: number): void {
        let attribute = AttributeUtil.getUnitAttribute(unitHandle, true);
        let key = "ability_cd_p_" + abilityIdStr;
        attribute[key] = (attribute[key] as number || 0) + val;
    }

    /**
     * 获取 技能cd 附加(单位秒) -0.1为降低 0.1秒 冷却时间
     * (比如某个装备会减少某个技能的cd)
     * @param unitHandle
     * @param abilityIdStr
     */
    static getAbilityCD(unitHandle: unit, abilityIdStr: string): number {
        let attribute = AttributeUtil.getUnitAttribute(unitHandle, false);
        return (attribute?.["ability_cd_" + abilityIdStr] as number) || 0
    }

    /**
     * 设置技能cd 附加 -0.1为降低 0.1秒 冷却时间
     * @param unitHandle
     * @param abilityIdStr
     * @param val
     */
    static setAbilityCD(unitHandle: unit, abilityIdStr: string, val: number): void {
        let attribute = AttributeUtil.getUnitAttribute(unitHandle, true);
        attribute["ability_cd_" + abilityIdStr] = val;
    }

    /**
     * 增加技能cd 附加
     * @param unitHandle
     * @param abilityIdStr
     * @param val
     */
    static addAbilityCD(unitHandle: unit, abilityIdStr: string, val: number): void {
        let attribute = AttributeUtil.getUnitAttribute(unitHandle, true);
        let key = "ability_cd_" + abilityIdStr;
        attribute[key] = (attribute[key] as number || 0) + val;
    }

}