import ObjectPool from "@/ObjectPool";
import DataBase from "@/DataBase";
import DebugUtil from "@/DebugUtil";
import TextUtil from "@/TextUtil";
import AbilityAvailableOrderList from "@/AbilityAvailableOrderList";

/**
 * 物编模板
 *   使用前需添加基础物编模板（可在太阳编辑器文件树右键新建中一键添加）
 *
 */
export default class ObjectTemplateUtil {


    static templateInfo: { [templateType: string]: string[] } = {}
    static _sl_templateStateInfo: {
        [templateType: string]: {
            objectPool: ObjectPool<string>
            /** 内部模版使用的总数 */
            useIndex: number
            /** 外部提取的次数 每次提取+1*/
            borrowCount: number
            _sl_templateCache: {
                [cacheKey: string]: {
                    refs: { [cacheRefKey: string]: boolean }
                    templateId: string
                }
            }
        }
    } = {}


    /**
     * 是否有此类型的模板
     * @param templateType
     */
    static hasTemplate(templateType: string): boolean {
        ObjectTemplateUtil._sl_init();
        let strings = ObjectTemplateUtil.templateInfo[templateType];
        if (strings && strings.length > 0) {
            return true;
        }
        return false;
    }

    /**
     * 获取模板总计最大数量
     * @param templateType
     */
    static getTemplateMaxCount(templateType: string) {
        let templateIds = ObjectTemplateUtil.templateInfo[templateType];
        if (templateIds == null) {
            return 0;
        }
        return templateIds.length;
    }

    /**
     * 获取模板可用的空闲模板数量
     * @param templateType
     */
    static getTemplateIdleCount(templateType: string) {
        let templateIds = ObjectTemplateUtil.templateInfo[templateType];
        if (templateIds == null) {
            return 0;
        }
        let state = ObjectTemplateUtil._sl_templateStateInfo[templateType];
        return templateIds.length - ((state?.useIndex || -1) + 1) + (state?.objectPool?.getNumIdle() || 0)
    }

    /**
     * 打印模板id相关信息 方便调试
     */
    static printTemplateInfo() {
        ObjectTemplateUtil._sl_init()
        print("=======ObjectTemplate Start======");
        BJDebugMsg("=======ObjectTemplate Start======");
        let itemKey: string[] = []
        let abilityKey: string[] = []
        let unitKey: string[] = []
        for (let templateInfoKey in ObjectTemplateUtil.templateInfo) {
            if (templateInfoKey.indexOf("物品") >= 0) {
                itemKey.push(templateInfoKey)
            } else if (templateInfoKey != "主动技能" && templateInfoKey.indexOf("主动") >= 0) {
                abilityKey.push(templateInfoKey)
            } else {
                unitKey.push(templateInfoKey)
            }
        }
        abilityKey.sort((a, b) => {
            let an = a.substring(6)
            let bn = b.substring(6)
            return tonumber(an) - tonumber(bn);
        })
        let allKey: string[] = [];
        allKey.push(...itemKey)
        allKey.push(...abilityKey)
        allKey.push("哨塔")
        for (let templateInfoKey of allKey) {
            let strings = ObjectTemplateUtil.templateInfo[templateInfoKey];
            let state = ObjectTemplateUtil._sl_templateStateInfo[templateInfoKey];
            let nameCol = TextUtil.rightPad(templateInfoKey, 8, " ")

            let useInfo = TextUtil.rightPad((state?.objectPool?.getNumActive() || 0) + " / " + ((state?.useIndex || -1) + 1) + " / " + strings.length, 6, " ")
            let info = nameCol + "    [ " + useInfo + " ]:  " + strings[0] + "  ......";
            print(info)
            if (state?._sl_templateCache) {
                print_r(state._sl_templateCache)
            }
            BJDebugMsg(info)
        }
        // let uinfo = ""
        // for (let templateInfoKey of unitKey) {
        //     if (uinfo != "") {
        //         uinfo += ","
        //     }
        //     uinfo += templateInfoKey
        // }
        // print(uinfo)
        // BJDebugMsg(uinfo)
        // print("=======ObjectTemplate End======");
        // BJDebugMsg("=======ObjectTemplate End======");
    }

    /**
     * 清洗通魔 ability
     * 使所有数据恢复的初始默认值
     * @param ability
     */
    static cleanAbility(ability: ability) {
        if (!IsHandle(ability)) {
            return
        }
        EXSetAbilityDataReal(ability, 1, ABILITY_DATA_COOL, 0.5)
        EXSetAbilityDataInteger(ability, 1, ABILITY_DATA_HOTKET, 0)
        //默认为 无目标
        EXSetAbilityDataReal(ability, 1, ABILITY_DATA_DATA_C, 1);
        EXSetAbilityDataReal(ability, 1, ABILITY_DATA_DATA_B, 0);
    }


    /**
     * 获取一个模版技能id
     * @param unit
     * @param abilityNum 技能所在位置序号 1-12 不传则自动计算空的位置
     * @param cacheKey
     * @param cacheRefKey
     * @param templateType
     */
    static addUnitAbilityTemplate(unit: unit, abilityNum?: number, cacheKey?: string, cacheRefKey?: string, templateType?: string): string {
        let abilityTemplate = DataBase.getUnitSolarData(unit)._SL_abilityTemplate;
        if (abilityTemplate == null) {
            abilityTemplate = {};
            DataBase.getUnitSolarData(unit)._SL_abilityTemplate = abilityTemplate
        }
        //如果为空则自动分配一个位置
        if (abilityNum == null || abilityNum <= 0) {
            for (let i = 1; i <= 12; i++) {
                if (abilityTemplate[i] == null) {
                    abilityNum = i;
                    break;
                }
            }
        }
        if (abilityTemplate[abilityNum] == null) {
            if (templateType == null) {
                templateType = "主动" + abilityNum;
            }
            let abilityTemplateIdStr = ObjectTemplateUtil.borrowTemplate(templateType, cacheKey, cacheRefKey)
            abilityTemplate[abilityNum] = abilityTemplateIdStr;
            UnitAddAbility(unit, abilityTemplateIdStr)
            if (templateType == null) {
                //通魔技能恢复到原模版的样子 以免没有填值的能使用统一的默认值 而不受旧数据污染
                ObjectTemplateUtil.cleanAbility(EXGetUnitAbility(unit, abilityTemplate[abilityNum]))
            } else if (templateType == "魔法书") {
                //魔法书清理
                DzSetUnitAbilitySpellBookList(unit, FourCC(abilityTemplateIdStr), "", false);
                let mfsBorrowCount = this._sl_templateStateInfo["魔法书"].borrowCount;
                let order_id = AbilityAvailableOrderList[mfsBorrowCount % (AbilityAvailableOrderList.length - 13) + 13];
                DzSetUnitAbilityOrderId(unit, FourCC(abilityTemplateIdStr), order_id);
            }
            return abilityTemplate[abilityNum];
        } else {
            log.errorWithTraceBack("这个位置已经有模板实例了。请先销毁这个位置的技能引用实例。" +
                GetUnitName(unit) + "->" + tostring(abilityNum) + "=" + abilityTemplate[abilityNum])
            return null;
        }

    }

    /**
     * 从单位移除一个模版技能
     * @param unit
     * @param abilityId
     * @param cacheKey
     * @param cacheRefKey
     */
    static removeUnitAbilityTemplate(unit: unit, abilityId: string, cacheKey?: string, cacheRefKey?: string): void {
        let abilityTemplate = DataBase.getUnitSolarData(unit, false)?._SL_abilityTemplate;
        if (abilityTemplate != null) {
            for (let key in abilityTemplate) {
                if (abilityTemplate[key] == abilityId) {
                    abilityTemplate[key] = null;
                }
            }
        }
        let abilityObj = _g_objs.ability[abilityId];
        if ((abilityObj.code == "ANcl")) {
            ObjectTemplateUtil.cleanAbility(EXGetUnitAbility(unit, abilityId));
        }
        UnitRemoveAbility(unit, abilityId);

        ObjectTemplateUtil.returnTemplate(abilityObj['Tip1'] || abilityObj.Tip, abilityId, cacheKey, cacheRefKey)
    }

    /**
     * 获取单位 默认的下一个技能位置序号
     * @param unit
     * @param startNum
     */
    static getUnitAbilityTemplateNextNumber(unit: unit, startNum: number = 1) {
        let abilityTemplate = DataBase.getUnitSolarData(unit)._SL_abilityTemplate;
        if (abilityTemplate == null) {
            return startNum;
        }
        //如果为空则自动分配一个位置
        for (let i = startNum; i <= 12; i++) {
            if (abilityTemplate[i] == null) {
                return i;
            }
        }
        log.errorWithTraceBack("单位" + GetUnitName(unit) + "从起始位置" + startNum + "开始已经没有多余的空位置了!")
        return 12;
    }

    /**
     * 获取单位 是否有模版技能空位
     * @param unit
     * @param minNum
     * @param maxNum
     */
    static hasUnitAbilityTemplateSpace(unit: unit, minNum: number = 1, maxNum: number = 1): boolean {
        let abilityTemplate = DataBase.getUnitSolarData(unit)._SL_abilityTemplate;
        if (abilityTemplate == null) {
            return true;
        }
        //如果为空则自动分配一个位置
        for (let i = minNum; i <= maxNum; i++) {
            if (abilityTemplate[i] == null) {
                return true;
            }
        }
        return false;
    }


    /**
     * 领取一个模板
     * @param templateType
     * @param cacheKey 使用缓存的公用模版
     * @param cacheRefKey 使用缓存的公用模版引用key
     */
    static borrowTemplate(templateType: string, cacheKey?: string, cacheRefKey?: string): string {
        ObjectTemplateUtil._sl_init();
        //
        let stateInfo = ObjectTemplateUtil._sl_templateStateInfo[templateType];
        if (stateInfo == null) {
            let objTemplates = ObjectTemplateUtil.templateInfo[templateType];
            if (objTemplates == null || objTemplates.length == 0) {
                let info = `****>>>> 没有找到基础物编模板${templateType} 使用此功能需添加基础物编模板! 解决办法:在太阳RPG编辑器 左侧文件树 点击鼠标右键 -> 新建 -> 添加基础物编模板 <<<<****`;
                log.errorWithTraceBack(info);
                BJDebugMsg(info);
                print(info);
                return null;
            }
            let objectPool = new ObjectPool<string>(() => {
                stateInfo.useIndex++;
                if (stateInfo.useIndex >= objTemplates.length) {
                    let info = "模板不足!请增加基础模板物编的数量!当前类型的模板数量:" + templateType + " -> " + objTemplates?.length;
                    log.errorWithTraceBack(info);
                    BJDebugMsg(info)
                    print("请检查是否有模板泄漏的情况。比如移除物品时未归还模板id。");
                    return null;
                } else if (objTemplates.length > 10 && (stateInfo.useIndex + 3) > objTemplates.length) {
                    //提前警告 以免报错时 一大堆堆栈信息。事实上我们只需要知道是哪个模板不足的信息就可以了
                    BJDebugMsg("|cffff0000【太阳TS框架提示】《" + templateType + "》(" + objTemplates.length + ")模板不足！" +
                        "请作者增加模板!玩家可减少场上存在的技能或物品等，以免地图逻辑出错！")
                }
                return objTemplates[stateInfo.useIndex]
            });
            stateInfo = {
                useIndex: -1,
                borrowCount: 0,
                objectPool: objectPool,
                _sl_templateCache: {}
            }
            ObjectTemplateUtil._sl_templateStateInfo[templateType] = stateInfo;
        }
        //
        stateInfo.borrowCount++;
        if (cacheKey) {
            let cacheElement = stateInfo._sl_templateCache[cacheKey];
            if (cacheElement == null) {
                cacheElement = {
                    templateId: stateInfo.objectPool.borrowObject(),
                    refs: {}
                }
                stateInfo._sl_templateCache[cacheKey] = cacheElement;
            }
            cacheElement.refs[cacheRefKey] = true;
            return cacheElement.templateId;
        } else {
            return stateInfo.objectPool.borrowObject();
        }

    }

    /**
     * 返还一个模板技能
     * （当模板技能领取后不再使用时可以使用此方法返还这个技能 以让后续的其他需要获取的地方能继续使用这个模板技能）
     * @param templateType
     * @param objIdStr
     * @param cacheKey
     * @param cacheRefKey
     */
    static returnTemplate(templateType: string, objIdStr: string, cacheKey?: string, cacheRefKey?: string): boolean {
        let stateInfo = ObjectTemplateUtil._sl_templateStateInfo[templateType];
        if (stateInfo == null) {
            return;
        }
        if (cacheKey) {
            let cacheElement = stateInfo._sl_templateCache[cacheKey];
            if (cacheElement) {
                if (cacheElement.templateId != objIdStr) {
                    log.errorWithTraceBack("缓存的模版id。借还不一样！")
                }
                deleteKey(cacheElement.refs, cacheRefKey)
                // cacheElement.refs[cacheRefKey] = false;
                let refCount = 0;
                for (let refsKey in cacheElement.refs) {
                    if (cacheElement.refs[refsKey] == true) {
                        refCount++;
                        break
                    }
                }
                if (refCount <= 0) {
                    cacheElement.templateId = null;
                    cacheElement.refs = null;
                    stateInfo._sl_templateCache[cacheKey] = null;
                    return stateInfo.objectPool.returnObject(objIdStr)
                }
            }
        } else {
            return stateInfo.objectPool.returnObject(objIdStr)
        }
    }


    /**
     * 初始化模板技能 数据
     * @private
     */
    private static _sl_isInitialized = false

    static _sl_init() {
        if (ObjectTemplateUtil._sl_isInitialized) {
            return
        }
        DebugUtil.refreshCodeExecStartTime();
        let _sl_templateName = "[$ST]";
        for (let objId in _g_objs.ability) {
            let objInfo = _g_objs.ability[objId];
            if (objInfo.Name == _sl_templateName) {
                this.addTemplate(objInfo.Tip1 || objInfo.Tip, objId)
            }
        }
        for (let objId in _g_objs.item) {
            let objInfo = _g_objs.item[objId];
            if (objInfo.Name == _sl_templateName) {
                this.addTemplate(objInfo.Tip, objId)
            }
        }
        for (let objId in _g_objs.unit) {
            let objInfo = _g_objs.unit[objId];
            if (objInfo.Name == _sl_templateName) {
                this.addTemplate(objInfo.Tip, objId)
            }
        }
        //
        ObjectTemplateUtil._sl_isInitialized = true;
        let number = DebugUtil.countCodeExecuteTime();
        if (number > 0.01) {
            print("模板初始化耗时:" + number)
        }
        se.onPlayerChat("-sl-tmpl", (e, solarTrigger) => {
            ObjectTemplateUtil.printTemplateInfo()
        })
    }

    static addTemplate(template: string, objIdStr: string) {
        let templates = ObjectTemplateUtil.templateInfo[template];
        if (templates == null) {
            templates = []
            ObjectTemplateUtil.templateInfo[template] = templates;
        }
        templates.push(objIdStr)
    }


}