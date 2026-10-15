import Actor from "@/Actor";
import ObjectTemplateUtil from "@/ObjectTemplateUtil";
import AbilityUtil from "@/AbilityUtil";
import AbilityButtonUtil from "@/AbilityButtonUtil";
import BaseUtil from "@/BaseUtil";
import DataBase from "@/DataBase";
import AbilityAvailableOrderList from "@/AbilityAvailableOrderList";
import ArrayUtil from "@/ArrayUtil";

/**
 * 优先保证写法兼容ActorBuff 这样吞噬后才有效果（既不要过多使用此子类中的具体功能）
 */
export default class ActorAbility extends Actor {
    /** 所有演员技能集合 */
    static allActorAbilitys: { [actorUuid: string]: ActorAbility } = {};
    /** 模版原生物编id */
    abilityId?: string
    /**  位置起始 从技能起始位置开始找到的空位值 */
    startPosNum?: number
    /** 从技能起始位置开始找到的 技能实际位置 此值>=startPosNum */
    posNum?: number
    /** 当前演员是否是魔法书 */
    isSpellBook?: boolean
    /** 法术列表 的子演员技能 */
    spellListActorAbilitys: ActorAbility[] = null

    /**
     * 添加一个演员技能
     * @param actorTypeId
     * @param unit 拥有技能的单位 不能为空
     * @param startPosNum 指定技能位置 可为null 从技能起始位置开始找到的空位值 (比如5则为第二排左到右第1个位置。9为最下面1排的左到右第一个位置)
     */
    constructor(actorTypeId: string, unit?: unit, startPosNum?: number) {
        super(actorTypeId);
        //不存在此id
        if (this._actorType == null) {
            return
        }
        ActorAbility.allActorAbilitys[this.uuid] = this;
        this.startPosNum = startPosNum;
        this.isSpellBook = (this._actorType.templateType == "魔法书")
        if (this.isSpellBook && this._actorType.spellList == null) {
            //如果类型没有填spellList 则为spellList默认一个空的法术列表
            this.set("spellList", [])
        }
        if (unit == null) {
            //演员物品继承此类 但是物品创建时是没有关联单位的 物品是在拾取时才有关联单位
            return;
        }
        if (startPosNum != null) {//优先从传入的startPos 开始查找空位  未传startPos 则按演员技能定义的xy当做起始位置查找空位
            this.posNum = ObjectTemplateUtil.getUnitAbilityTemplateNextNumber(unit, startPosNum)
        } else if (this.get("y") != null) {
            let basePos = AbilityButtonUtil.getNumberByPos(this.get("x", 0), this.get("y"))
            this.posNum = ObjectTemplateUtil.getUnitAbilityTemplateNextNumber(unit, basePos)
        } else {
            this.posNum = ObjectTemplateUtil.getUnitAbilityTemplateNextNumber(unit, 1)
        }
        //
        this.unit = unit
        this.addUnitAbilityTemplate(this.posNum);
        //
        this._sl_init()
        this.update()
    }


    protected _sl_rawset<Key extends keyof AppActorAbilityType>(key: Key, value: AppActorAbilityType[Key]) {
        super._sl_rawset(key, value);
        let ability = this.getAbility();
        if (ability == null) {
            return
        }
        switch (key) {
            case "id":
                EXSetAbilityDataString(ability, 1, ABILITY_DATA_NAME, this.uuid)
                break;
            case "name":
                EXSetAbilityDataString(ability, 1, ABILITY_DATA_TIP, value)
                break;
            case "icon":
                EXSetAbilityDataString(ability, 1, ABILITY_DATA_ART, value)
                break;
            case "disable":
                //使用扩展函数优化体验
                if (DzSetUnitAbilityEnable) {
                    AbilityUtil.setUnitAbilityEnable(this.unit, this.abilityId, !value);
                    break;
                }
                //编队后狂按会闪烁暗图标黑遮罩
                if (this.get("disable")) {
                    this.getRootFrameControl().getDisableFrame().visible = true;
                } else {
                    let disableFrame = this.getRootFrameControl(false)?.getDisableFrame(false);
                    if (disableFrame) {
                        disableFrame.visible = false;
                    }
                }
                break;
            case "describe":
                EXSetAbilityDataString(ability, 1, ABILITY_DATA_UBERTIP, value)
                break;
            case "passive":
                //在其他地方判断是否是被动 然后取消释放命令
                //设置为瞬发无目标类型的 以在准备施法时停止单位(如果是点目标 会有选择的步骤)
                if (value == true) {
                    EXSetAbilityDataReal(ability, 1, ABILITY_DATA_DATA_C, 1);
                    EXSetAbilityDataReal(ability, 1, ABILITY_DATA_DATA_B, 0);
                } else if (this.get("targetType") != null) {
                    AbilityUtil.setTargetType(ability, this.get("targetType"))
                }
                break;
            case "hide":
                SetPlayerAbilityAvailable(GetOwningPlayer(this.unit), this.abilityId, !value);
                break;
            case "hotKey":
                if (DzSetUnitAbilityHotkey) {
                    DzSetUnitAbilityHotkey(this.unit, FourCC(this.abilityId), value);
                    DzSetUnitAbilityUpdate(this.unit, FourCC(this.abilityId));
                } else {
                    EXSetAbilityDataInteger(ability, 1, ABILITY_DATA_HOTKET, char2number(value) || 0);
                }
                break;
            case "range":
                EXSetAbilityDataReal(ability, 1, 0x6B, value)
                break;
            case "area":
                EXSetAbilityDataReal(ability, 1, 0x6A, value)
                break;
            case "targetType":
                if (this.isPassive()) {//被动物品的技能 只能是无目标
                    EXSetAbilityDataReal(ability, 1, ABILITY_DATA_DATA_C, 1);
                    EXSetAbilityDataReal(ability, 1, ABILITY_DATA_DATA_B, 0);
                } else {
                    AbilityUtil.setTargetType(ability, value)
                }
                break;
            case "targetAllow":
                AbilityUtil.setTargetAllow(ability, value)
                break;
            case "dur":
                EXSetAbilityDataInteger(ability, 1, ABILITY_DATA_DUR, value)
                EXSetAbilityDataInteger(ability, 1, ABILITY_DATA_HERODUR, value)
                break;
            case "manaCost":
                EXSetAbilityDataInteger(ability, 1, 0x68, value)
                break;
            case "maxCd":
                EXSetAbilityDataReal(ability, 1, ABILITY_DATA_COOL, value)
                break;
            case "spellList":
                if (this.isSpellBook) {
                    this.setSpellList(value);
                }
                break;
        }
    }

    get<Key extends keyof AppActorAbilityType>(key: Key, defaultValue?: AppActorAbilityType[Key]): AppActorAbilityType[Key] {
        return super.get(key, defaultValue);
    }

    /**
     * 获取演员的类型
     */
    get actorType(): AppActorAbilityType {
        return this._actorType;
    }

    setPassive(passive: boolean) {
        this.set("passive", passive)
    }


    isPassive(): boolean {
        return this.get("passive", false)
    }


    setXY(x: number, y: number) {
        super.setXY(x, y);
        this.setAbilityPos(AbilityButtonUtil.getNumberByPos(x, y))
    }

    /**
     * 设置位置
     * @param pos
     */
    setAbilityPos(pos: number) {
        let ability = this.getAbility();
        if (ability == null) {
            return
        }
        if (this.isSpellBook) {
            this.removeUnitAbilityTemplate();
            this.addUnitAbilityTemplate(pos);
            this.update();
        } else {
            let vector = AbilityButtonUtil.getPos(pos);
            DzSetUnitAbilityButtonPos(this.unit, FourCC(this.abilityId), vector.x, vector.y)
        }

    }


    private addUnitAbilityTemplate(pos: number) {
        let templateType: string = this.isSpellBook ? "魔法书" : null;
        this.abilityId = ObjectTemplateUtil.addUnitAbilityTemplate(this.unit, pos, this.templateCacheKey, this.uuid, templateType);
        if (this.abilityId == null) {
            log.errorWithTraceBack("获取技能模版id为null。可能当前位置已有技能了!pos=" + pos)
            return
        }
        this.templateId = this.abilityId
        SetPlayerAbilityAvailable(GetOwningPlayer(this.unit), this.abilityId, true);
        let unitSolarData = DataBase.getUnitSolarData(this.unit, true);
        if (unitSolarData._SL_solarActorAbilitys == null) {
            unitSolarData._SL_solarActorAbilitys = {};
        }
        unitSolarData._SL_solarActorAbilitys[this.templateId] = this;
    }

    private removeUnitAbilityTemplate() {
        if (this.abilityId != null) {
            // DataBase.getAbilityTypeSolarData(this.abilityId, true)._SL_solarActorAbility = null;
            if (this.unit != null) {
                //移除技能
                ObjectTemplateUtil.removeUnitAbilityTemplate(this.unit, this.abilityId, this.templateCacheKey, this.uuid);
                let solarActorAbilitys = DataBase.getUnitSolarData(this.unit, false)?._SL_solarActorAbilitys;
                if (solarActorAbilitys && solarActorAbilitys[this.abilityId]) {
                    solarActorAbilitys[this.abilityId] = null;
                }
            }
        }

    }

    /**
     * 获取技能Handle
     */
    getAbility(): ability | null {
        if (this.abilityId != null && this.unit != null) {
            return EXGetUnitAbility(this.unit, this.abilityId);
        }
        return null
    }

    /**
     * 获取最大 maxCd
     */
    getMaxCd(): number {
        return this.get("maxCd", 0)
    }

    /**
     * 设置最大cd 最大300 超过无效
     * @param maxCd
     */
    setMaxCd(maxCd: number) {
        this.set("maxCd", maxCd)
    }

    /**
     * 设置当前cd 最大300 超过无效
     * @param cd
     */
    setCooldown(cd: number) {
        EXSetAbilityState(this.getAbility(), 1, cd)
    }

    /**
     * 获取当前cd
     * @param cd
     */
    getCooldown(): number {
        return EXGetAbilityState(this.getAbility(), 1)
    }

    /**
     * 设置当前热键
     * @param hotKey
     */
    setHotKey(hotKey: string) {
        this.set("hotKey", hotKey)
    }


    update() {
        if (this._sl_isDestroyed) {
            return
        }
        super.update();
        let ability = this.getAbility();
        if (ability == null) {
            return
        }

        if (this.isSpellBook) {
            //魔法书 手动设置技能位置
            if (this.get("x") && this.get("y")) {
                DzSetUnitAbilityButtonPos(this.unit, FourCC(this.abilityId), this.get("x"), this.get("y"))
            }
        } else {
            //魔法书就不要更新了 否则魔法书内部模拟的通魔命令ID设置会被重置 (猜测其他设置的参数也会重置)
            AbilityUtil.refreshAbility(this.unit, this.abilityId)
        }
        //待证实  目标要延迟设置才能保证100%成功
        if (this.get("targetAllow") || this.get("targetType")) {
            BaseUtil.runLater(0.01, () => {
                if (this.get("targetType")) {
                    this._sl_rawset("targetType", this.get("targetType"))
                }
                if (this.get("targetAllow")) {
                    this._sl_rawset("targetAllow", this.get("targetAllow"))
                }
                AbilityUtil.refreshAbility(this.unit, this.abilityId)
            })
        }
    }

    action(x: number, y: number, targetUnit?: unit) {
        if (this.isPassive()) {
            return
        }
        super.action(x, y, targetUnit);
    }


    destroy() {
        if (this.isSpellBook) {
            this.clearSpellList();
        }
        this.removeUnitAbilityTemplate();
        super.destroy();
        deleteKey(ActorAbility.allActorAbilitys, this.uuid);
    }

    /**
     * 魔法书相关
     */
    /**
     * 清空魔法书法术列表
     */
    clearSpellList() {
        if (!this.isSpellBook) {
            log.errorWithTraceBack("只有魔法书才可以调用此方法!")
            return;
        }
        //魔法书清理
        let unit = this.unit;
        if (!IsHandle(unit)) {
            return
        }
        DzSetUnitAbilitySpellBookList(unit, FourCC(this.abilityId), "", false);
        //
        if (this.spellListActorAbilitys && this.spellListActorAbilitys.length > 0) {
            for (let spellListActorAbility of this.spellListActorAbilitys) {
                spellListActorAbility.destroy();
            }
        }
    }

    /**
     * 设置魔法书法术列表
     * @param spellList
     */
    setSpellList(spellList: string[]) {
        if (!this.isSpellBook) {
            log.errorWithTraceBack("只有魔法书才可以调用此方法!")
            return;
        }
        let unit = this.unit;
        if (!IsHandle(unit)) {
            return
        }
        this.clearSpellList();
        this.spellListActorAbilitys = [];
        if (spellList && spellList.length > 0) {
            this.addSpellList(...spellList);
        }
    }

    /**
     * 添加魔法书法术列表 (不会清空已有的法术列表)
     * @param spellList
     * 返回删除是否成功
     */
    removeSpellList(...spellList: string[]): boolean {
        if (!this.isSpellBook) {
            log.errorWithTraceBack("只有魔法书才可以调用此方法!")
            return;
        }
        let unit = this.unit;
        if (!IsHandle(unit)) {
            return
        }
        let removeCount = 0;

        if (spellList && spellList.length > 0) {
            for (let i = 0; i < spellList.length; i++) {
                let subSpellActorType = db.getSolarActorType(spellList[i]);
                //删除数据里的spellList 防止update后重置到类型初始指定的spellList了
                ArrayUtil.removeElement(this.get("spellList"), spellList[i]);
                if (subSpellActorType == null) {
                    //原生技能
                    if (_g_objs.ability[spellList[i]]) {
                        DzSetUnitAbilitySpellBookRemoveAbility(unit, FourCC(this.abilityId), FourCC(spellList[i]));
                    } else {
                        print("警告:未发现此魔法书[" + this.actorTypeId + "]子列表对应的技能:" + spellList[i]);
                    }
                    continue;
                }
                for (let j = this.spellListActorAbilitys.length - 1; j >= 0; j--) {
                    let actorAbility = this.spellListActorAbilitys[j];
                    if (actorAbility.actorTypeId == subSpellActorType.id) {
                        actorAbility.destroy();
                        ArrayUtil.removeElementByIndex(this.spellListActorAbilitys, j);
                        removeCount++;
                    }
                }
            }
            if (removeCount == spellList.length) {
                return true;
            }
        }
        return true;
    }

    /**
     * 添加魔法书法术列表 (不会清空已有的法术列表)
     * @param spellList
     */
    addSpellList(...spellList: string[]) {
        if (!this.isSpellBook) {
            log.errorWithTraceBack("只有魔法书才可以调用此方法!")
            return;
        }
        let unit = this.unit;
        if (!IsHandle(unit)) {
            return
        }
        if (spellList && spellList.length > 0) {
            for (let i = 0; i < spellList.length; i++) {
                let subSpellActorType = db.getSolarActorType(spellList[i]);
                //添加到数据里的spellList 注意防重复
                if (this.get("spellList")) {
                    let spellList_data: string[] = this.get("spellList")
                    if (!spellList_data.includes(spellList[i])) {
                        spellList_data.push(spellList[i]);
                    }
                }
                if (subSpellActorType == null) {
                    //原生技能
                    if (_g_objs.ability[spellList[i]]) {
                        DzSetUnitAbilitySpellBookAddAbility(unit, FourCC(this.abilityId), FourCC(spellList[i]));
                    } else {
                        print("警告:未发现此魔法书[" + this.actorTypeId + "]子列表对应的技能:" + spellList[i]);
                    }
                    continue;
                }
                let isSubSpellSpellBook = subSpellActorType.templateType == "魔法书";
                let subSpellTemplateType = isSubSpellSpellBook ? "魔法书" : "主动技能";
                let spellListBaseAbilityId = ObjectTemplateUtil.borrowTemplate(subSpellTemplateType, this.templateCacheKey, this.uuid);
                DzSetUnitAbilitySpellBookAddAbility(unit, FourCC(this.abilityId), FourCC(spellListBaseAbilityId))
                let order_id = null;
                if (isSubSpellSpellBook) {
                    //魔法书技能 命令不能跟当前单位其他魔法书技能命令重复 不然会融合为一本魔法书技能
                    let stateInfo = ObjectTemplateUtil._sl_templateStateInfo["魔法书"];
                    //尽量分配到不同的命令id 如果需完全保证不重复只能给单位做一个技能命令池手动判断是否重复了 后面有时间了再搞 通常地图少于10000个魔法书技能没那么容易冲突的
                    //+13 保证不跟普通技能重复 以免跟普通技能冲突
                    order_id = AbilityAvailableOrderList[stateInfo.borrowCount % (AbilityAvailableOrderList.length - 13) + 13];
                } else {
                    //普通通魔技能 命令不跟本页面重合即可 使用this.spellListActorAbilitys.length才能真正获取当前页面多少个自定义分配的技能
                    order_id = AbilityAvailableOrderList[this.spellListActorAbilitys.length];
                }
                DzSetUnitAbilityOrderId(unit, FourCC(spellListBaseAbilityId), order_id)
                //创建演员技能
                let actorAbility = ActorAbility.createActorAbilityByAbility(unit, subSpellActorType.id, spellListBaseAbilityId);
                actorAbility.set("templateType", subSpellTemplateType);
                this.spellListActorAbilitys.push(actorAbility);

            }

        }

    }

    /**
     * 根据单位已有的技能创建演员技能 ()
     * @param unit
     * @param actorAbilityId
     * @param unitHasAbilityId
     */
    static createActorAbilityByAbility(unit: unit, actorAbilityId: string, unitHasAbilityId: string): ActorAbility {
        let actorAbility = new ActorAbility(actorAbilityId);
        actorAbility.unit = unit;
        actorAbility.abilityId = unitHasAbilityId;
        actorAbility.update();
        // DataBase.getAbilityTypeSolarData(tongMoIds[i], true)._SL_solarActorAbility = actorAbility;
        if (db.getUnitSolarData(unit, true)._SL_solarActorAbilitys == null) {
            db.getUnitSolarData(unit, true)._SL_solarActorAbilitys = {};
        }
        db.getUnitSolarData(unit, true)._SL_solarActorAbilitys[actorAbility.abilityId] = actorAbility;
        return actorAbility;
    }
}