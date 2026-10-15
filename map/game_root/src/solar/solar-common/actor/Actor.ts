import DataBase from "@/DataBase";
import ObjectTemplateUtil from "@/ObjectTemplateUtil";
import LangUtil from "@/LangUtil";
import STimer from "@/STimer";
import UnitStateUtil from "@/UnitStateUtil";
import BaseUtil from "@/BaseUtil";
import FrameControl from "@/FrameControl";
import SyncUtil from "@/SyncUtil";
import {Unit} from "@/unit";

let index = 0;
/**
 * 基础的演员 (演员是一种通用的数据结构 通过标准的的数据结构可以转接到模拟 单位 物品 技能 buff 等)
 * 演员 是模拟系统的 具体解决方案 可以通过演员方便的模拟技能 物品 以抽取出统一的方法和数据结构 到基类Actor
 *
 *
 * 单位演员多个实例都是公用一个类型的。
 *
 * 为保证物编模板足够使用 需要在演员实例不需要使用时进行销毁 这样会把占用的物编模板id归还以供下次新建演员实例使用
 *
 * PS: 所有玩法功能应尽可能使用Actor编写逻辑代码 避免使用子类ActorItem，ActorBuff等等，因为子类太具体了 不利于灵活的应对策划变化。比如将一个物品吞噬为buff。
 *
 */
/**
 * 演员模版分配规则
 * templateAllocPolicy?: "auto" | "unique" | "actorTypeShare"| "templateTypeShare",
 *
 * unique：独享:每个演员Actor实例都对应一个唯一的基础物编模板 即相同演员类型的多个演员物品/技能等获取到的原始物品模板id也是不同的。//灵活性最高 可单独修改实例任何数据
 * actorTypeShare: 演员类型共享:相同actorType.id的Actor实例 共享一个基础物编模版 (比如需要原生的批量操作，如选取多个步兵后批量使用举盾的技能) //修改实例部分数据会导致相同演员类型的数据全被改了
 * templateTypeShare：演员模版共享:相同的actorType.templateType的Actor实例 共享一个基础物编模版 //暂时只有单位在使用此分配规则 好在单位大部分api都是改单位实例的 所以单位使用这种分配规则依然灵活性高 且节省模版数量
 * 通常情况下:
 * 物品演员:
 * unique: 物品主要使用这个分配规则（即物品模版数量 > 游戏中物品实例数量）
 * actorTypeShare : 特殊需求需要这个 比如抓羊任务(羊是物品 没必要每个羊独占模版)
 *
 * 技能演员:
 * unique 大部分情况都是这个分配规则
 * actorTypeShare 部分太阳内部模拟的系统使用此分配。比如模拟建造升级
 *
 * 单位演员:
 * unique : 建造图建造者使用了独占模版 (单位很少用unique分配规则，不然场上1000个单位 会对应1000x单位种类的模版数量 那样模版物编太多 开发进图太卡了)
 * actorTypeShare : 主要是建造图塔防图使用，如建造者建造模版
 * templateTypeShare (大部分情况使用此分配规则)
 *
 *
 */

export default class Actor implements Destroyable {

    /** 是否需要更新属性  用于缓存演员属性系统的相关更新状态 修改属性后这里设置为true 演员系统定时更新完属性后 设置这里为false */
    static _sl_needUpdateAttribute = false;
    static allActors: { [actorUuid: string]: Actor } = {};

    //uuid 可能是异步的 不要进行同步计算 是否异步取决于是否异步新建了演员 （现有系统还是同步的 后面可能会加入异步演员类型）
    readonly uuid: string = "sa" + index++;
    /**可以为 技能模板id 物品模板id 单位模板id*/
    templateId: string
    templateCacheKey?: string
    protected _actorType: AppActorType;
    /** 正在更新中... */
    updating: boolean = false;
    /** 创建时间  秒单位 */
    creationTime: number;

    /** 关联的单位 */
    private _sl_unit?: unit
    /** 上一个单位 在单位改变事件时 通过这个可以获取之前的单位 */
    private _sl_lastUnit?: unit
    /** 演员的等级 创建完毕时默认为1级*/
    private _sl_level: number = 0;
    private _sl_isInitializedOnUnitInRangeEvent: boolean = false;
    private _sl_lastReadyTime: { [timerKey: string]: number } = {};

    /** ui */
    protected _sl_rootFrameControl: FrameControl;
    /** 右下角数字 类似物品使用次数 */
    protected _sl_numberOverlay?: number;

    /** 产生这个演员的单位 施法者 可为空 */
    creator?: unit;
    /** 基础战斗属性  */
    protected _attribute?: AppAttribute;
    /** 扩展战斗属性 如宝石 洗练词条 附魔等等  */
    _sl_extAttributes?: { [name: string]: AppAttribute };

    /** 部分被动技能需要的循环计时器
     * */
    sTimer?: STimer
    /**
     * onUnitInterval事件 则可能会在演员失去单位时自动销毁此计时器 比如单位丢弃演员物品时
     * */
    protected _sl_intervalTimer?: STimer
    /**
     * 子销毁列表
     *  会在此演员销毁时 自动调用此此列表中的destroy
     * */
    childDestroyList: Destroyable[] = []
    /** 预置 特效变量
     *  会在演员销毁时 自动销毁这些预置的变量 所以使用预置变量时请确保这些变量的生命周期是与演员同步的
     * */
    effect?: effect
    /**
     * 临时 数字变量 可以在事件里方便编码
     * */
    tempNum?: number
    /**
     * 临时 布尔变量 可以在事件里方便编码
     * */
    tempBool?: boolean


    /** 基础数据 */
    private data: { [key: string]: any } = {};
    /** 扩展数据 用作自定义得数据集合 */
    extData: { [key: string]: any } = {};

    /** 扩展显示提示 (在标准提示前面)*/
    extDescribeFirst1?: string
    extDescribeFirst2?: string
    /** 扩展显示提示 (在标准提示后面追加)*/
    extDescribeLast1?: string
    extDescribeLast2?: string
    /**
     * 示例:extDescribeLasts.当前附加几率 = " 10"
     * 会自动在提示后面 拼接为 "当前附加几率 10"
     * 以name为key这种方式 方便刷新提示数据
     * */
    _sl_extDescribesFirst?: { [name: string]: string };
    _sl_extDescribes?: { [name: string]: string };

    /** 任意附加数据 */
    [key: string]: any

    //
    private _sl_isInitialized = false;
    protected _sl_isDestroyed = false;

    constructor(actorTypeId: string) {
        this._actorType = DataBase.getSolarActorType(actorTypeId);
        if (this._actorType == null) {
            log.errorWithTraceBack("不能创建不存在的演员类型:" + tostring(actorTypeId));
            return
        }
        if (this._actorType.attribute) {
            this._attribute = {...this._actorType.attribute}
            Actor._sl_needUpdateAttribute = true;
        }
        Actor.allActors[this.uuid] = this;
        if (this.templateCacheKey == null) {
            if (this._actorType.templateAllocPolicy == "actorTypeShare") {
                this.templateCacheKey = "_sltap_ats:" + this._actorType.id;
            } else if (this._actorType.templateAllocPolicy == "templateTypeShare") {
                this.templateCacheKey = "_sltap_tts:" + this._actorType.templateType;
            } else if (this._actorType.templateType == "建造者") {
                let builds: string[] = this._actorType.builds
                if (builds) {
                    this.templateCacheKey = "_sltap_jzz:"
                    for (let build of builds) {
                        this.templateCacheKey = this.templateCacheKey + ":" + build;
                    }
                }
            }
        }
    }

    /**
     * 将类型中的模板数据设置到实例中
     */
    protected _sl_init() {
        if (this._sl_isInitialized) {
            return
        }
        if (this._actorType == null) {
            return;
        }
        this._sl_isInitialized = true;
        this.creationTime = _g_time / 1000;
        // for (let key in this._actorType) {
        //     let value = this._actorType[key];
        //     if (!LangUtil.isFunction(value) && "attribute" != key) {
        //         this._sl_rawset(key, value)
        //     }
        // }
        //如果没有名字 则 将id刷新到名字上
        if (this._actorType.name == null) {
            this.setName(this._actorType.id);
        }

        //计时器启动 by interval 和 onInterval
        let timeoutS = this.get("interval");
        if (timeoutS != null && timeoutS > 0 && this.get("onInterval") != null) {
            this.startIntervalTimer(timeoutS, () => {
                this.interval();
            })
        }
        //
        this.get("onCreated")?.(this);
        //任意Actor创建 事件回调
        for (let listner of Actor._sl_anyActorCreatedListeners) {
            listner(this);
        }
        //
        this.level = 1;

    }

    /**
     * 获取演员的类型
     */
    get actorType(): AppActorType {
        return this._actorType;
    }

    get solarData(): AppSolarActorData {
        return DataBase.getSolarActorSolarData(this.uuid)
    }

    set solarData(obj: { [key: string]: any }) {
        DataBase.setSolarActorSolarData(this.uuid, obj)
    }

    protected _sl_rawset<Key extends keyof AppActorType>(key: Key, value: AppActorType[Key]): void {
        Actor._sl_needUpdateAttribute = true;
    }

    set<Key extends keyof AppActorType>(key: Key, value: AppActorType[Key]): void {
        this.data[key] = value;
        this._sl_rawset(key, value);

    }

    get<Key extends keyof AppActorType>(key: Key, defaultValue?: AppActorType[Key]): AppActorType[Key] {
        if (this.data[key] != null) {
            return this.data[key] as any
        }
        if (this._actorType?.[key] != null) {
            return this._actorType[key]
        }
        return defaultValue;
    }

    /**
     * 刷新
     * 更新应该是无副作用的 即保证冥等性
     */
    update() {
        if (this._sl_isDestroyed) {
            return
        }
        //更新类型数据
        for (let key in this._actorType) {
            let value = this._actorType[key];
            if (!LangUtil.isFunction(value) && "attribute" != key && this.data[key] == null) {
                this._sl_rawset(key, value)
            }
        }
        //更新当前演员对象手动指定的数据
        for (let dataKey in this.data) {
            this._sl_rawset(dataKey, this.data[dataKey])
        }
        this.get("onUpdate")?.(this);
    }


    get attribute(): AppAttribute {
        if (this.isDisable()) {
            return null;
        }
        return this._attribute;
    }

    set attribute(value: AppAttribute) {
        this._attribute = value;
    }

    /**
     * 获取类型id
     */
    get actorTypeId(): string {
        return this._actorType.id
    }


    /**
     * 获取模板类型
     */
    getTemplateType(): string {
        return this.get("templateType")
    }

    getAttribute(createDefault = false): AppAttribute | null {
        if (!this._attribute && createDefault) {
            this._attribute = {};
        }
        return this._attribute;
    }

    /**
     * 获取最后一个有效的单位
     */
    get lastUnit(): unit {
        return this._sl_lastUnit;
    }

    /**
     * 获取关联单位的包装对象(方便调用属性或方法)
     */
    get unitObj(): Unit {
        return Unit.fromHandle(this.unit);
    }

    /**
     * 获取关联单位
     */
    get unit(): unit {
        return this._sl_unit;
    }

    set unit(value: unit) {
        if (this._sl_isDestroyed) {
            return
        }
        let oldUnit = this._sl_unit;
        this._sl_unit = value;
        this.get("onUnitChange")?.(this, value, oldUnit);
        //延迟启动 以避免不必要的启动 比如怪物掉落装备有被动周期效果 如果装备没有单位拾取就没必要去启动这个计时器 可能被当做材料去合成其他装备了
        //计时器启动 by interval 和 onWithUnitInterval
        if (this._sl_intervalTimer == null) {
            //启动计时器
            if (this.get("onUnitInterval") != null && IsHandle(this._sl_unit)) {
                let timeoutS = this.get("interval");
                if (timeoutS != null && timeoutS > 0) {
                    this.startIntervalTimer(timeoutS, () => {
                        this.interval();
                    })
                }
            }
        } else if (value == null && this.get("onUnitInterval") != null && this.get("onInterval") == null) {
            //脱下装备时 销毁onUnitInterval计时器
            this._sl_intervalTimer.destroy();
            this._sl_intervalTimer = null;
        }
        //关联单位事件
        if (IsHandle(this._sl_unit)) {
            //关联单位范围事件
            if (this._sl_isInitializedOnUnitInRangeEvent == false &&
                this.actorType.onUnitInRange != null && this.get("unitInRangeValue") != null) {
                this._sl_isInitializedOnUnitInRangeEvent = true;
                se.onUnitInRange(value, this.get("unitInRangeValue"), () => {
                    this.get("onUnitInRange")?.(this, GetEnteringUnit())
                });
            }

            //onUnitAddActor
            se.emit("_sl_:单位获得演员", {u: this.unit, a: this})

            //保存一下上一个单位
            this._sl_lastUnit = this._sl_unit;
        } else {
            //onUnitAddActor
            se.emit("_sl_:单位失去演员", {u: this._sl_lastUnit, a: this})
        }


    }

    /**
     * 获取关联单位的 坐标x
     */
    get unitX(): number {
        return GetUnitX(this._sl_unit)
    }

    /**
     * 获取关联单位的 坐标y
     */
    get unitY(): number {
        return GetUnitY(this._sl_unit)
    }

    /**
     * 获取当前单位的名字
     */
    get unitName(): string {
        if (!IsHandle(this._sl_unit)) {
            return null;
        }
        let actor: Actor = DataBase.getUnitSolarData(this._sl_unit, false)?._SL_solarActorUnit;
        if (actor != null) {
            return actor.getName()
        }
        return GetUnitName(this._sl_unit)
    }

    /**
     * 获取当前单位的等级
     */
    get unitLevel(): number {
        return GetUnitLevel(this._sl_unit)
    }

    /**
     * 获取关联单位的 面向角度
     */
    get unitFacing(): number {
        return GetUnitFacing(this._sl_unit)
    }

    /**
     * 获取关联单位的 玩家
     */
    get unitOwner(): player {
        return GetOwningPlayer(this._sl_unit)
    }

    /**
     * 获取关联单位的 玩家id
     */
    get unitOwnerId(): number {
        return GetPlayerId(GetOwningPlayer(this._sl_unit))
    }

    //dispatchEvent
    //fireEvent
    /**
     * 触发自定义事件
     * @param type 自定义事件类型
     * @param data 传参数据
     */
    fireEvent<Key extends keyof AppActorEventType>(type: Key, data?: AppActorEventType[Key]): void {
        this.get("onEvent")?.(this, type, data);
    }

    // /**
    //  * 获取释放点x
    //  * （示例:在onAction中可以使用）
    //  */
    // getSpellTargetX() {
    //     return GetSpellTargetX();
    // }
    //
    // /**
    //  * 获取释放点y
    //  * （示例:在onAction中可以使用）
    //  */
    // getSpellTargetY() {
    //     return GetSpellTargetY();
    // }
    //
    // /**
    //  * 获取技能释放目标
    //  * （示例:在onAction中可以使用）
    //  */
    // getSpellTargetUnit() {
    //     return GetSpellTargetUnit();
    // }

    /**
     * 获取该演员对应的ui 根Frame （该ui会自动在合适的位置显示和隐藏 技能就是在技能按钮上 物品就是在物品按钮上）
     * 可以把自己的ui绑定位置到这个节点上 以自动在合适的时候合适的位置显示自己的ui
     * @param createDefault 如果没有初始化则默认创建一个
     * @param parent
     */
    getRootFrameControl(createDefault: boolean = true, parent?: number): FrameControl {
        if (createDefault && this._sl_rootFrameControl == null) {
            this._sl_rootFrameControl = new FrameControl(parent);
            this._sl_rootFrameControl.rootFrame.setSize(0.04, 0.04);
        }
        return this._sl_rootFrameControl;
    }

    /**
     * 设置右下角数字
     */
    set numberOverlay(num: number | null) {
        this._sl_numberOverlay = num;
        if (num) {
            this.getRootFrameControl().setNumberOverlayText("" + num)
        } else {
            this.getRootFrameControl(false)?.setNumberOverlayText(null)
        }
    }

    /**
     * 获取右下角数字
     */
    get numberOverlay() {
        return this._sl_numberOverlay;
    }

    /**
     * 是否准备好 比如做有冷却时间的相关逻辑 可使用这个
     * @param timeSec 冷却时间 （秒单位）
     * @param onReady 准备好的回调
     * @param timerKey 任务名称 （每个Actor对象独立的）
     */
    ifReady(timeSec: number, onReady: () => void, timerKey = "base") {
        if (((_g_time / 1000) - (this._sl_lastReadyTime[timerKey] || -10000)) >= timeSec) {
            this._sl_lastReadyTime[timerKey] = (_g_time / 1000);
            onReady();
        }
    }

    get level() {
        return this._sl_level;
    }

    set level(value) {
        if (value == null) {
            return;
        }
        if (this._sl_level == value) {
            return;
        }
        let delta = value - (this._sl_level || 0)
        this._sl_level = value;
        //任意actor等级改变事件
        for (let listener of Actor._sl_anyActorLevelChangeListeners) {
            listener(this, delta);
        }
        this.get("onActorLevelChange")?.(this, delta)
        //可能在事件里重新设置了属性
        Actor._sl_needUpdateAttribute = true;
    }

    /**
     * 启动此演员的 内部太阳计时器 循环周期执行
     * 此计时器会在演员 销毁时 自动销毁此计时器
     * (如果此演员具有onUnitInterval事件 则可能会在演员失去单位时自动销毁此计时器 比如单位丢弃演员物品时)
     * @param timeoutS  （单位：秒 精度为小数点后2位 0.01）
     * @param handlerFunc
     */
    protected startIntervalTimer(timeoutS: number, handlerFunc: (this: void, timer: STimer) => void): STimer {
        if (this._sl_intervalTimer != null) {
            log.errorWithTraceBack("已经启动过计时器了。 再启动新计时器请手动在外部自行管理。(有interval事件的演员会自动启动计时器!)")
            return null;
        }
        this._sl_intervalTimer = new STimer();
        this._sl_intervalTimer.start(timeoutS, handlerFunc, true)
        return this._sl_intervalTimer;
    }

    /**
     * 设置名字
     * @param name
     */
    setName(name: AppActorType["name"]) {
        this.set("name", name)
    }

    getName(): string {
        let name = this.get("name");
        if (name == null) {
            return this.actorTypeId
        }
        return name;
    }

    /**
     * 设置图标
     * @param icon
     */
    setIcon(icon: AppActorType["icon"]) {
        this.set("icon", icon)
    }

    getIcon(): string {
        return this.get("icon")
    }

    /**
     * 设置模型
     * @param model
     */
    setModel(model: AppActorType["model"]) {
        this.set("model", model)
    }

    getModel(): string {
        return this.get("model")
    }

    /**
     * 设置描述
     * @param describe
     */
    setDescribe(describe: AppActorType["describe"]) {
        this.set("describe", describe)
    }

    getDescribe(includeExts: boolean = false): string {
        let realDescribe = this.get("describe", "")
        if (includeExts == false) {
            return realDescribe;
        }
        //包含扩展提示
        if (this.extDescribeFirst2 && this.extDescribeFirst2.length > 0) {
            realDescribe = this.extDescribeFirst2 + "|r|n" + realDescribe;
        }
        if (this.extDescribeFirst1 && this.extDescribeFirst1.length > 0) {
            realDescribe = this.extDescribeFirst1 + "|r|n" + realDescribe;
        }
        if (this._sl_extDescribesFirst) {
            //排序遍历 以免每次游戏的 提示顺序不一样 影响体验
            LangUtil.forEachSort(this._sl_extDescribesFirst, (name, text) => {
                realDescribe = name + text + "|r|n" + realDescribe;
            });
        }
        if (this.extDescribeLast1 && this.extDescribeLast1.length > 0) {
            realDescribe += "|r|n" + this.extDescribeLast1;
        }
        if (this.extDescribeLast2 && this.extDescribeLast2.length > 0) {
            realDescribe += "|r|n" + this.extDescribeLast2;
        }
        if (this._sl_extDescribes) {
            //排序遍历 以免每次游戏的 提示顺序不一样 影响体验
            LangUtil.forEachSort(this._sl_extDescribes, (name, text) => {
                realDescribe += "|r|n" + name + text;
            });
        }
        return realDescribe;
    }

    /**
     * 设置扩展的提示信息 在某些地方 如鼠标移上物品技能按钮时 会显示这些信息
     * @param name
     * @param text
     */
    setExtDescribeFirst(name: string, text: string) {
        if (this._sl_extDescribesFirst == null) {
            this._sl_extDescribesFirst = {};
        }
        this._sl_extDescribesFirst[name] = text;
    }

    /**
     * 移除某个扩展提示
     * @param name
     */
    removeExtDescribeFirst(name: string) {
        deleteKey(this._sl_extDescribesFirst, name);
    }

    /**
     * 清空所有扩展提示
     */
    clearExtDescribesFirst() {
        LangUtil.clearObject(this._sl_extDescribesFirst)
    }

    /**
     * 设置扩展的提示信息 在某些地方 如鼠标移上物品技能按钮时 会显示这些信息
     * @param name
     * @param text
     */
    setExtDescribe(name: string, text: string) {
        if (this._sl_extDescribes == null) {
            this._sl_extDescribes = {};
        }
        this._sl_extDescribes[name] = text;
    }

    /**
     * 移除某个扩展提示
     * @param name
     */
    removeExtDescribe(name: string) {
        deleteKey(this._sl_extDescribes, name);
    }

    /**
     * 清空所有扩展提示
     */
    clearExtDescribes() {
        LangUtil.clearObject(this._sl_extDescribes)
    }

    /**
     * 设置扩展的属性 如 宝石 附魔等等
     * @param name
     * @param attribute
     */
    setExtAttribute(name: string, attribute: AppAttribute) {
        if (this._sl_extAttributes == null) {
            this._sl_extAttributes = {};
        }
        this._sl_extAttributes[name] = attribute;
    }

    /**
     * 移除某个扩展的属性
     * @param name
     */
    removeExtAttribute(name: string) {
        deleteKey(this._sl_extAttributes, name);
    }

    /**
     * 清空所有扩展的属性
     */
    clearExtAttributes() {
        LangUtil.clearObject(this._sl_extAttributes)
    }


    /**
     * 设置Dur 持续时间
     * @param dur
     */
    setDur(dur: AppActorType["dur"]) {
        this.set("dur", dur)
    }

    getDur(): number {
        return this.get("dur")
    }


    setDisable(disable: AppActorType["disable"]) {
        this.set("disable", disable)
        //可能在事件里重新设置了属性
        Actor._sl_needUpdateAttribute = true;
    }

    isDisable(): boolean {
        return this.get("disable", false)
    }


    /**
     * 设置xy位置
     */
    setXY(x: number, y: number): void {
        this.set("x", x)
        this.set("y", y)
    }

    /**
     * 获取xy位置
     */
    getXY(): Vector {
        return {x: this.get("x"), y: this.get("y")}
    }


    setHide(hide: boolean) {
        this.set("hide", hide)
    }

    isHide(): boolean {
        return this.get("hide", false)
    }


    clone(): void {

    }

    /**
     * btn 1=左键 2=右键
     * @param btn
     * @param x
     * @param y
     */
    localClick(btn: number, x: number, y: number): boolean {
        //异步检查 是否禁用了 此演员
        if (this._sl_rootFrameControl != null) {
            let disableFrame = this._sl_rootFrameControl.getDisableFrame(false);
            if (disableFrame?.visible == true) {
                return false;
            }
        }
        isAsync = true;
        let b = this.get("onLocalClick")?.(this, btn, x, y, this.actorType);
        isAsync = false;
        if (b == false) {
            return false;
        }
        //同步点击
        if (this.get("onClick") != null) {
            SyncUtil.syncObjData("_sl_:a:onClick", {
                i: this.uuid,
                b: btn,
            });
        }
        return true;
    }

    action(x: number, y: number, targetUnit?: unit) {
        if (this.isDisable()) {
            return
        }
        this.get("onAction")?.(this, x, y, targetUnit);
        //可能在事件里重新设置了属性
        Actor._sl_needUpdateAttribute = true;
    }

    protected interval() {
        if (this.isDisable()) {
            return
        }
        let onInterval = this.get("onInterval");
        if (onInterval) {
            onInterval(this)
            //可能在事件里重新设置了属性
            Actor._sl_needUpdateAttribute = true;
        }
        if (this._sl_unit != null && UnitStateUtil.isAlive(this._sl_unit)) {
            let onUnitInterval = this.get("onUnitInterval");
            if (onUnitInterval) {
                onUnitInterval(this)
                //可能在事件里重新设置了属性
                Actor._sl_needUpdateAttribute = true;
            }
        }
    }

    /**
     * 是否已经销毁了
     */
    isDestroyed(): boolean {
        return this._sl_isDestroyed;
    }

    /**
     * 销毁此actor
     * 注意 销毁后的unit会被清空 所以销毁后不要去获取unit了！
     */
    destroy(forceDestroy: boolean = false): void {
        //如果有创建事件监听 则回调此事件监听
        if (this._sl_isDestroyed) {
            return;
        }
        let onDestroy = this.get("onDestroy");
        if (onDestroy) {
            let flag = onDestroy(this);
            if (flag == false && forceDestroy == false) {
                return
            }
        }
        //任意actor销毁事件
        for (let listener of Actor._sl_anyActorDestroyListeners) {
            listener(this);
        }
        this.unit = null;
        this._sl_isDestroyed = true;
        this.sTimer?.destroy();
        this._sl_intervalTimer?.destroy();
        if (this.childDestroyList && this.childDestroyList.length > 0) {
            for (let destroyable of this.childDestroyList) {
                destroyable.destroy();
            }
            this.childDestroyList = null;
        }
        if (this.effect) {
            DestroyEffect(this.effect)
            this.effect = null;
        }
        if (this._sl_rootFrameControl != null) {
            this._sl_rootFrameControl.rootFrame.visible = false;
            this._sl_rootFrameControl.destroy();
            this._sl_rootFrameControl = null;
        }

        if (this.templateId != null) {
            if (this.getTemplateType() != null) {
                //returnTemplate 支持幂等性 无论调用多少次返回 都跟调用一次效果一样
                ObjectTemplateUtil.returnTemplate(this.getTemplateType(), this.templateId, this.templateCacheKey, this.uuid);
            }
        }
        this.solarData = null;
        deleteKey(Actor.allActors, this.uuid);
        Actor._sl_needUpdateAttribute = true;
    }

    /**
     * 指定时间后 销毁此Actor
     * @param timeOut
     */
    destroyLater(timeOut: number) {
        BaseUtil.runLater(timeOut, () => {
            //触发一次更新 以检测可能的间隔到期
            this.destroy();
        })
    }


    /**
     * 全局任意演员 事件
     */
    static _sl_anyActorCreatedListeners: ((buff: Actor) => void)[] = [];
    static _sl_anyActorLevelChangeListeners: ((buff: Actor, delta: number) => void)[] = [];
    static _sl_anyActorDestroyListeners: ((buff: Actor) => void)[] = [];
}