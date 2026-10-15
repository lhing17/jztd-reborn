import Actor from "@/Actor";
import ObjectTemplateUtil from "@/ObjectTemplateUtil";
import DataBase from "@/DataBase";
import ActorAbility from "@/ActorAbility";
import ActorTypeShopUtil from "@/ActorTypeShopUtil";
import FrameControl from "@/FrameControl";
import UnitStateUtil from "@/UnitStateUtil";
import ArrayUtil from "@/ArrayUtil";
import ActorAbilityUtil from "@/ActorAbilityUtil";
import UnitTypeUtil from "@/UnitTypeUtil";
import ActorLearnableAbilitiesUtil from "@/ActorLearnableAbilitiesUtil";

/**
 * 演员单位
 * 演员单位的类型是公用的。
 *
 */
export default class ActorUnit extends Actor {
    /** 拥有UI的单位 比如模拟血条*/
    static _sl_hasFrameActorUnits: { [uuid: string]: ActorUnit } = {};
    static _sl_sellActorItemPageSize: number = 9;
    static allActorUnits: { [actorUuid: string]: ActorUnit } = {};
    /** 模版单位类型 */
    unitTypeID: string;
    /** 售卖物品分页当前页 */
    _sl_sellActorItemPageIndex: number = 0;
    /** 售卖物品的演员技能 */
    sellItemAbilityList: ActorAbility[] = [];
    /** 学习技能的模拟加号魔法书 */
    learnableAbilitieActorAbility: ActorAbility = null;

    constructor(actorTypeId: string, player: player, x: number, y: number, face: number = 270) {
        super(actorTypeId);
        ActorUnit.allActorUnits[this.uuid] = this;
        //单位模板 即用即还
        let templateType: string = this.getTemplateType();
        if (templateType == null || templateType.length == 0) {
            log.errorWithTraceBack("创建演员单位必须设置模板类型!演员id=" + actorTypeId + " (解决办法:请为演员类型指定templateType属性)");
            return;
        }
        ObjectTemplateUtil._sl_init();
        if (!ObjectTemplateUtil.hasTemplate(templateType) && templateType.length == 4) {
            //直接使用原生物编id 当模板
            this.unitTypeID = templateType;
        } else {
            let autoTemplateAllocPolicy = this.actorType.templateAllocPolicy;
            if (this.templateCacheKey == null) {
                //模版充裕时候 自动独占模板 以获得更好的模拟效果(比如框选时能根据单位类型分组)
                if ((this.actorType.templateAllocPolicy == null && ObjectTemplateUtil.getTemplateMaxCount(this._actorType.templateType) > 10)) {
                    this.templateCacheKey = "_sltap_ats:" + this._actorType.id;
                    autoTemplateAllocPolicy = "actorTypeShare";
                } else {
                    this.templateCacheKey = "_sltap_tts:" + this._actorType.templateType;
                }
            }
            let unitTypeID = ObjectTemplateUtil.borrowTemplate(templateType, this.templateCacheKey, this.uuid);
            this.unitTypeID = unitTypeID;
            this.templateId = unitTypeID;
            if (autoTemplateAllocPolicy == "actorTypeShare") {
                //名字
                DzSetUnitTypeName(FourCC(this.unitTypeID), this.getName())
                UnitTypeUtil.setUnitIcon(this.unitTypeID, this.getIcon())
                UnitTypeUtil.setUnitTypeTip(this.unitTypeID, this.getName())
                //描述
                UnitTypeUtil.setUnitTypeUbertip(this.unitTypeID, this.getDescribe())
            }
            // //大部分单位模板 即用即还
            // if (this.templateCacheKey) {
            //     //销毁此单位时 才归还建造者模版
            //     let templateCacheKey = this.templateCacheKey;
            //     let uuid = this.uuid;
            //     this.childDestroyList.push({
            //         destroy(): any {
            //             ObjectTemplateUtil.returnTemplate(templateType, unitTypeID, templateCacheKey, uuid);
            //         }
            //     })
            // } else {
            //     ObjectTemplateUtil.returnTemplate(templateType, this.unitTypeID, this.templateCacheKey, this.uuid);
            // }
        }
        if (this.unitTypeID == null || this.unitTypeID.length != 4) {
            log.errorWithTraceBack("物编模板id获取失败:" + tostring(templateType) + " -> " + tostring(this.unitTypeID))
            return;
        }
        //
        if (this.actorType.sellItems && this.actorType.sellItems.length > 0 && this.actorType.onUnitInterval == null) {
            ActorTypeShopUtil.autoDisableSellingAbilityOnNoStoreTarget(actorTypeId)
        }
        //
        if (this.actorType.foodCost && this.actorType.foodCost != 0) {
            //占用人口
            DzSetUnitDataCacheInteger(FourCC(this.unitTypeID), 92, 0, this.actorType.foodCost);
        }
        this.unit = CreateUnit(player, this.unitTypeID, x, y, face);
        if (this.actorType.foodCost == null || this.actorType.foodCost == 0) {
            SetUnitUseFood(this.unit, false)
        }
        //
        DataBase.getUnitSolarData(this.unit)._SL_solarActorUnit = this;
        this._sl_init();
        this.update();
        //设置英雄左上角图标
        if (IsHeroUnitId(GetUnitTypeId(this.unit)) && FrameSetOriginButtonTexture && GetLocalPlayer() == player) {
            for (let i = 5; i >= 0; i--) {
                let heroBarButton = DzFrameGetHeroBarButton(i);
                //把最后一个图标 设置为正确的英雄图标
                if (FrameIsShow(heroBarButton)) {
                    FrameSetOriginButtonTexture(heroBarButton, this.getIcon());
                    break;
                }
            }
        }
    }

    /**
     * 获取演员的类型
     */
    get actorType(): AppActorUnitType {
        return this._actorType;
    }

    protected _sl_rawset<Key extends keyof AppActorUnitType>(key: Key, value: AppActorUnitType[Key]) {
        super._sl_rawset(key, value);
        if (!IsHandle(this.unit)) {
            return
        }
        switch (key) {
            case "name":
                SetUnitName?.(this.unit, value)
                SetUnitProperName?.(this.unit, value)
                break;
            case "model":
                if (SetUnitModel) {
                    SetUnitModel(this.unit, value)
                } else {
                    DzSetUnitModel(this.unit, value)
                    //设置大头像
                    SetUnitPortrait?.(this.unit, value)
                }
                break;
            case "modelScale":
                SetUnitScale(this.unit, value, value, value)
                break;
            case "selectScale":
                DzSetUnitSelectScale?.(this.unit, value);
                break;
            case "pressUIVisible":
                if (SetUnitPressUIVisible) {
                    SetUnitPressUIVisible(this.unit, value);
                } else if (DzSetUnitPreselectUIVisible) {
                    DzSetUnitPreselectUIVisible(this.unit, value);
                }
                break;
            case "colorR":
                SetUnitVertexColor(this.unit, value || 255, this.get("colorG", 255),
                    this.get("colorB", 255), this.get("alpha", 255))
                break;
            case "colorG":
                SetUnitVertexColor(this.unit, this.get("colorR", 255), value || 255,
                    this.get("colorB", 255), this.get("alpha", 255))
                break;
            case "colorB":
                SetUnitVertexColor(this.unit, this.get("colorR", 255), this.get("colorG", 255),
                    value || 255, this.get("alpha", 255))
                break;
            case "alpha":
                SetUnitVertexColor(this.unit, this.get("colorR", 255), this.get("colorG", 255),
                    this.get("colorB", 255), value || 255)
                break;
            case "missileModel":
                SetUnitMissileModel?.(this.unit, value)
                break;
            case "moveType":
                UnitStateUtil.setMoveType(this.unit, value)
                break;
            case "flyHeight":
                UnitAddAbility(this.unit, FourCC('Amrf'));
                UnitRemoveAbility(this.unit, FourCC('Amrf'));
                SetUnitFlyHeight(this.unit, value, 0)
                break;
            case "maxLife":
                SetUnitState(this.unit, UNIT_STATE_MAX_LIFE, value)
                SetUnitState(this.unit, UNIT_STATE_LIFE, value)
                break;
            case "maxMana":
                SetUnitState(this.unit, UNIT_STATE_MAX_MANA, value)
                SetUnitState(this.unit, UNIT_STATE_MANA, value)
                break;
            //设置感知敌人距离
            case "ignoreGuard":
                if (value == true) {
                    RemoveGuardPosition(this.unit);
                } else {
                    RecycleGuardPosition(this.unit);
                }
                break;
            case "acquireRange":
                SetUnitAcquireRange(this.unit, value)
                break;
            case "range":
                SetUnitState(this.unit, UnitStateDamageRange, value)
                break;
            case "damage":
                SetUnitState(this.unit, UnitStateDamageBase, value)
                break;
            case "damageCd":
                SetUnitState(this.unit, UnitStateDamageCool, value)
                break;
            case "strength":
                SetHeroStr(this.unit, value, true)
                break;
            case "agility":
                SetHeroAgi(this.unit, value, true)
                break;
            case "intelligence":
                SetHeroInt(this.unit, value, true)
                break;
            case "hide":
                ShowUnit(this.unit, value == false);
                break;
            case "def":
                SetUnitState(this.unit, UnitStateArmor, value)
                break;
            case "turnRate":
                SetUnitTurnSpeed(this.unit, value)
                break;
            case "moveSpeed":
                SetUnitMoveSpeed(this.unit, value)
                break;
            case "learnableAbilities":
                let learnableAbilities: string[] = value as any;
                this.setLearnableAbilities(learnableAbilities)
                break;
            case "builds":
                let builds: string[] = value as any;
                this.setBuilds(builds)
                break;
            case "upgradeUnits":
                let upgradeUnits: string[] = value as any;
                this.setUpgradeUnits2unit(upgradeUnits)
                break;
            case "trainUnits":
                let trainUnits: string[] = value as any;
                this.setTrainUnits2unit(trainUnits)
                break;
            case "sellItems":
                let sellItems: string[] = value as any;
                this.setSellItems(sellItems)
                break;
            case "abilities":
                let abilities: string[] = value as any;
                if (abilities && abilities.length > 0) {
                    this.addAbility(...abilities)
                }
                break;
        }
    }


    get<Key extends keyof AppActorUnitType>(key: Key, defaultValue?: AppActorUnitType[Key]): AppActorUnitType[Key] {
        return super.get(key, defaultValue);
    }

    setXY(x: number, y: number) {
        super.setXY(x, y);
        SetUnitPosition(this.unit, x, y)
    }

    getRootFrameControl(createDefault: boolean = true, parent?: number): FrameControl {
        if (createDefault && this._sl_rootFrameControl == null) {
            ActorUnit._sl_hasFrameActorUnits[this.uuid] = this;
        }
        return super.getRootFrameControl(createDefault, parent);
    }


    /**
     * 设置可学习的技能类型id列表
     */
    setLearnableAbilities(learnableAbilities: string[]) {
        if (this.learnableAbilitieActorAbility != null) {
            this.learnableAbilitieActorAbility.destroy();
        }
        this.learnableAbilitieActorAbility = ActorLearnableAbilitiesUtil.setLearnableAbilities2unit(this.unit, learnableAbilities);
    }

    /**
     *
     */
    setBuilds(builds: string[]) {
        // ActorTypeBuildMenuUtil.setBuilds2unit(this.unit, builds);
        _sl_funs.setBuilds2unit(this.unit, builds);
    }

    /**
     *
     */
    setUpgradeUnits2unit(upgradeUnits: string[]) {
        _sl_funs.setUpgradeUnits2unit(this.unit, upgradeUnits);
    }

    /**
     *
     */
    setTrainUnits2unit(trainUnits: string[]) {
        _sl_funs.setTrainUnits2unit(this.unit, trainUnits);
    }


    /**
     * 安全的添加售卖物品。区别是可以重复调用此方法 不会添加重复的物品去售卖
     */
    setSellItems(sellItems: string[]) {
        if (sellItems == null || sellItems.length == 0) {
            return
        }
        let nowSellItems: string[] = sellItems;
        this.removeAllSellItems();
        if (sellItems.length > (ActorUnit._sl_sellActorItemPageSize + 2)) {
            let start = this._sl_sellActorItemPageIndex * ActorUnit._sl_sellActorItemPageSize;
            let end = start + ActorUnit._sl_sellActorItemPageSize;
            if (end > sellItems.length) {
                end = sellItems.length;
            }
            nowSellItems = sellItems.slice(start, end);
        }
        for (let sellItemId of nowSellItems) {
            if (this.hasSellItem(sellItemId)) {
                print_r(sellItems)
                log.errorWithTraceBack("removeAllSellItems移除有问题！没有移除干净！" + this.getName())
            } else {
                let sellingAbilityTypeId = ActorTypeShopUtil.warpActorItem2SellingAbility(sellItemId).id;
                let actorAbility = this.addActorAbility(sellingAbilityTypeId);
                this.sellItemAbilityList.push(actorAbility);
            }
        }
        if (sellItems.length > (ActorUnit._sl_sellActorItemPageSize + 2)) {
            let maxPageSize = Math.ceil(sellItems.length / ActorUnit._sl_sellActorItemPageSize);
            if (this._sl_sellActorItemPageIndex > 0) {
                let previousAbility = this.addActorAbility(ActorTypeShopUtil.getPagePrevious().id);
                previousAbility.setName("上一页 (" + (this._sl_sellActorItemPageIndex + 1) + "/" + maxPageSize + ")");
                previousAbility.getRootFrameControl(true).setNumberOverlayText((this._sl_sellActorItemPageIndex + 1) + "/" + maxPageSize);
                previousAbility.setDescribe((this._sl_sellActorItemPageIndex + 1) + "/" + maxPageSize);
            } else {
                this.removeActorAbility(ActorTypeShopUtil.getPagePrevious().id);
            }
            if (this._sl_sellActorItemPageIndex < (maxPageSize - 1)) {
                let nextAbility = this.addActorAbility(ActorTypeShopUtil.getPageNext().id);
                nextAbility.getRootFrameControl(true).setNumberOverlayText((this._sl_sellActorItemPageIndex + 1) + "/" + maxPageSize);
                nextAbility.setName("下一页 (" + (this._sl_sellActorItemPageIndex + 1) + "/" + maxPageSize + ")");
                nextAbility.setDescribe((this._sl_sellActorItemPageIndex + 1) + "/" + maxPageSize);
            } else {
                this.removeActorAbility(ActorTypeShopUtil.getPageNext().id);
            }
        }
    }

    /**
     * 安全的添加售卖物品。区别是可以重复调用此方法 不会添加重复的物品去售卖
     */
    addSellItem(...sellItems: string[]) {
        for (let sellItemId of sellItems) {
            if (!this.hasSellItem(sellItemId)) {
                let sellingAbilityTypeId = ActorTypeShopUtil.warpActorItem2SellingAbility(sellItemId).id;
                let actorAbility = this.addActorAbility(sellingAbilityTypeId);
                this.sellItemAbilityList.push(actorAbility);
            }
        }
    }

    /**
     * 是否已有某个演员物品的售卖
     * @param sellItemId
     */
    hasSellItem(sellItemId: string): boolean {
        let sellingAbilityTypeId = ActorTypeShopUtil.warpActorItem2SellingAbility(sellItemId).id;
        for (let sellItemAbility of this.sellItemAbilityList) {
            if (sellItemAbility.actorType.id == sellingAbilityTypeId) {
                return true;
            }
        }
        return false;
    }

    /**
     * 移除某个演员物品的售卖
     * @param sellItemId
     */
    removeSellItem(sellItemId: string): boolean {
        let sellingAbilityTypeId = ActorTypeShopUtil.warpActorItem2SellingAbility(sellItemId).id;
        for (let i = this.sellItemAbilityList.length - 1; i >= 0; i--) {
            let sellItemAbility = this.sellItemAbilityList[i];
            if (sellItemAbility.actorType.id == sellingAbilityTypeId) {
                sellItemAbility.destroy();
                this.sellItemAbilityList.splice(i, 1)
            }
        }
        return false;
    }

    /**
     * 移除此单位所有演员物品的售卖
     */
    removeAllSellItems(): void {
        for (let i = this.sellItemAbilityList.length - 1; i >= 0; i--) {
            let sellItemAbility = this.sellItemAbilityList[i];
            sellItemAbility.destroy();
            ArrayUtil.removeElement(this.sellItemAbilityList, sellItemAbility);
        }
        let actorAbilityList = ActorAbilityUtil.getUnitActorAbilityList(this.unit);
        if (actorAbilityList) {
            for (let actor of actorAbilityList) {
                if (actor != null && ActorTypeShopUtil.isActorItemSellingAbilityType(actor.actorType)) {
                    actor.destroy();
                }
            }
        }
    }

    /**
     * 应用生命类型
     * @param duration
     * @param buffid
     */
    applyTimedLife(duration: number, buffid: number | string = 'BHwe') {
        UnitApplyTimedLife(this.unit, buffid, duration)
    }


    /**
     * 添加技能(或者演员技能)
     */
    addAbility(...abilities: string[]): void {
        if (abilities && abilities.length > 0) {
            for (let ability of abilities) {
                if (DataBase.getSolarActorType(ability) != null) {
                    if (this.getActorAbility(ability) == null) {
                        this.addActorAbility(ability)
                    }
                } else {
                    UnitAddAbility(this.unit, ability)
                }
            }
        }
    }

    /**
     * 添加一个演员技能
     * @param actorAbilityTypeId
     * @param startPosNum 指定技能位置
     */
    addActorAbility(actorAbilityTypeId: string, startPosNum?: number): ActorAbility {
        let actorAbility = this.getActorAbility(actorAbilityTypeId);
        if (actorAbility == null) {
            actorAbility = new ActorAbility(actorAbilityTypeId, this.unit, startPosNum);
        }
        return actorAbility;
    }

    /**
     * 移除一个演员技能
     * @param actorAbilityTypeId
     * @param startPosNum 指定技能位置
     */
    removeActorAbility(actorAbilityTypeId: string): boolean {
        let actorAbility = this.getActorAbility(actorAbilityTypeId);
        if (actorAbility == null) {
            return false;
        }
        actorAbility.destroy();
        return true;
    }


    /**
     * 获取单位身上的指定类型的演员技能
     * @param actorTypeId
     */
    getActorAbility(actorTypeId: string): ActorAbility {
        return ActorAbilityUtil.getUnitActorAbility(this.unit, actorTypeId);
    }


    /**
     * 销毁此单位身上的所有 演员技能
     * @param unit
     */
    destroyAllActorAbility(): void {
        ActorAbilityUtil.destroyUnitAllActorAbility(this.unit)
    }

    destroy() {
        let unit = this.unit
        super.destroy();
        if (this._sl_RootFrame != null) {
            deleteKey(ActorUnit._sl_hasFrameActorUnits, this.uuid)
        }
        //这里可能为null 比如多次调用了destroy 后面调用的都没有东西可以清理了
        if (IsHandle(unit)) {
            RemoveUnit(unit)
        }
        deleteKey(ActorUnit.allActorUnits, this.uuid);
    }

}