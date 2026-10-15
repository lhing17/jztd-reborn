/** @noSelfInFile */
/**
 * ydwe constant
 */
declare var ABILITY_STATE_COOLDOWN
declare var ABILITY_DATA_TARGS: number // integer
declare var ABILITY_DATA_CAST: number // real
declare var ABILITY_DATA_DUR: number // real
declare var ABILITY_DATA_HERODUR: number // real
declare var ABILITY_DATA_COST: number // integer
declare var ABILITY_DATA_COOL: number // real
declare var ABILITY_DATA_AREA: number // real
declare var ABILITY_DATA_RNG: number // real
declare var ABILITY_DATA_DATA_A: number // real 108
declare var ABILITY_DATA_DATA_B: number // real 109
declare var ABILITY_DATA_DATA_C: number // real 110
declare var ABILITY_DATA_DATA_D: number // real 111
declare var ABILITY_DATA_DATA_E: number // real 112
declare var ABILITY_DATA_DATA_F: number // real 113
declare var ABILITY_DATA_DATA_G: number // real
declare var ABILITY_DATA_DATA_H: number // real
declare var ABILITY_DATA_DATA_I: number // real
declare var ABILITY_DATA_UNITID: number // integer 117
declare var ABILITY_DATA_HOTKET: number // integer
declare var ABILITY_DATA_UNHOTKET: number // integer
declare var ABILITY_DATA_RESEARCH_HOTKEY: number // integer
declare var ABILITY_DATA_NAME: number // string
declare var ABILITY_DATA_ART: number // string
declare var ABILITY_DATA_TARGET_ART: number // string
declare var ABILITY_DATA_CASTER_ART: number // string
declare var ABILITY_DATA_EFFECT_ART: number // string
declare var ABILITY_DATA_AREAEFFECT_ART: number // string
declare var ABILITY_DATA_MISSILE_ART: number // string
declare var ABILITY_DATA_SPECIAL_ART: number // string
declare var ABILITY_DATA_LIGHTNING_EFFECT: number // string
declare var ABILITY_DATA_BUFF_TIP: number // string
declare var ABILITY_DATA_BUFF_UBERTIP: number // string
declare var ABILITY_DATA_RESEARCH_TIP: number // string
declare var ABILITY_DATA_TIP: number // string
declare var ABILITY_DATA_UNTIP: number // string
declare var ABILITY_DATA_RESEARCH_UBERTIP: number // string
declare var ABILITY_DATA_UBERTIP: number // string
declare var ABILITY_DATA_UNUBERTIP: number // string
declare var ABILITY_DATA_UNART: number // string
//EVENT_DAMAGE_DATA
declare var EVENT_DAMAGE_DATA_VAILD: number
declare var EVENT_DAMAGE_DATA_IS_PHYSICAL: number
declare var EVENT_DAMAGE_DATA_IS_ATTACK: number
declare var EVENT_DAMAGE_DATA_IS_RANGED: number
declare var EVENT_DAMAGE_DATA_DAMAGE_TYPE: number
declare var EVENT_DAMAGE_DATA_WEAPON_TYPE: number
declare var EVENT_DAMAGE_DATA_ATTACK_TYPE: number
//
/**骰子数量*/
declare var UnitStateDamageDice: unitstate
/**骰子面数*/
declare var UnitStateDamageSide: unitstate
/**
 * 基础伤害
 * 基础攻击力 = 物编里定义的 dmgplus1
 * 白字攻击（游戏面板显示的白字） =   基础攻击力+白字主属性奖励的攻击
 * unitstate UnitStateDamageBase获取的攻击 = 基础攻击力+白字主属性奖励的攻击+绿字主属性奖励的攻击
 *
 * SetUnitState(unitHandle, UnitStateDamageBase, damageBase) 会 根据值自动调整基础攻击力)
 *
 * */
declare var UnitStateDamageBase: unitstate
/**附加伤害*/
declare var UnitStateDamageBonus: unitstate
/**攻击最小值*/
declare var UnitStateDamageMix: unitstate
/**攻击最大值*/
declare var UnitStateDamageMax: unitstate
/**攻击范围*/
declare var UnitStateDamageRange: unitstate
/**攻击间隔*/
declare var UnitStateDamageCool: unitstate
/**攻击速度*/
declare var UnitStateAttackSpeed: unitstate
/**护甲
 *   英雄绿字护甲 = 附加护甲+英雄绿字敏捷加的护甲
 *   英雄白字护甲 = 总护甲-绿字护甲 = 基础护甲+英雄白字敏捷加的护甲
 * */
declare var UnitStateArmor: unitstate

/**
 * base from japi
 * 重置变换 [JAPI] [New!]
 * 重置 ${特效}
 * 清空所有的旋转和缩放，重置为初始状态。
 * @params  effect
 */
declare function EXEffectMatReset(effect: effect): any;

/**

 * 设置动画速度 [JAPI] [New!]
 * 设置 ${特效} 的动画速度为 ${动画速度}
 * @params  effect real
 */
declare function EXSetEffectSpeed(...args: any[]): any;

/**

 * 缩放 [JAPI] [New!]
 * 设置 ${特效} 的X轴缩放[ ${缩放} ]，Y轴缩放[ ${缩放} ]，Z轴缩放[ ${缩放} ]。
 * 多次调用，效果会叠加，不想叠加需要先重置为初始状态。设置为2,2,2时相当于大小变为2倍。设置为负数时，就是镜像翻转。
 * @params  effect real real real
 */
declare function EXEffectMatScale(h: effect, sx: number, sy: number, sz: number): any;

declare function EXGetAbilityDataInteger(...args: any[]): any;

/**
 * declare function GetUnitState(whichUnit: unit, whichUnitState: unitstate): number;
 */
/**
 * 暂停/恢复 [R]
 * 底层有计数 暂停多少次 需恢复相同次数 才可真正恢复
 */
declare function EXPauseUnit(p1: unit, flag: boolean): void;

/**

 * 设置单位的碰撞类型 [JAPI] [New!]
 * ${启用/禁用} ${单位} 对 ${碰撞} 的碰撞
 * @params  onoffoption unit CollisionType
 */
declare function EXSetUnitCollisionType(...args: any[]): any;

/**
 * Type可选示例
 * constant integer UNIT_STRING_MODEL_PATH = 13
 *
 * constant integer UNIT_STRING_MODEL_PORTRAIT_PATH = 14
 *
 * constant integer UNIT_STRING_SHADOW_PATH = 0x13
 *
 * constant integer UNIT_REAL_MODEL_SCALE = 0x2c
 *
 * constant integer UNIT_REAL_SHADOW_X = 0x20
 *
 * constant integer UNIT_REAL_SHADOW_Y = 0x21
 *
 * constant integer UNIT_REAL_SHADOW_W = 0x22
 *
 * constant integer UNIT_REAL_SHADOW_H = 0x23
 */
declare function EXGetUnitString(unitcode: number, Type: number): string;

declare function EXSetUnitString(unitcode: number, Type: number, value: string): boolean;

declare function EXGetUnitReal(unitcode: number, Type: number): number;

declare function EXSetUnitReal(unitcode: number, Type: number, value: number): boolean;

declare function EXGetUnitInteger(unitcode: number, Type: number): number;

declare function EXSetUnitInteger(unitcode: number, Type: number, value: number): boolean;

declare function EXGetUnitArrayString(unitcode: number, Type: number, index: number): string;

declare function EXSetUnitArrayString(unitcode: number, Type: number, index: number, value: string): string;

/**
 * 设置单位移动类型
 * 设置单位的移动类型 [JAPI] [New!]
 * 设置 ${单位} 的移动类型为 ${Value}
 * @params  unit MoveType
 */
declare function EXSetUnitMoveType(handle: unit, ydlx: number): void;

/**

 * 设置单位面向角度 [JAPI] [New!]
 * 设置 ${单位} 的面向角度为 ${Angle} 度
 * 立即转身
 * @params  unit degree
 */
declare function EXSetUnitFacing(...args: any[]): any;

declare function EXExecuteScript(...args: any[]): any;

//native EXGetUnitAbility        takes unit u, integer abilcode returns ability
declare function EXGetUnitAbility(u: unit, abilcode: number | string): ability;

//单位handle, 索引 0-100
declare function EXGetUnitAbilityByIndex(unit: unit, index: number): ability;

//EXGetAbilityId(EXGetUnitAbilityByIndex())
declare function EXGetAbilityId(arg: ability): number;

declare function EXGetAbilityState(abil: ability, data_type: number): number;

declare function EXSetAbilityState(abil: ability, data_type: number, value: number): boolean;

declare function EXGetAbilityDataReal(abil: ability, level: number, data_type: number): number;

//108 = dataa,   109 = datab
declare function EXSetAbilityDataReal(abil: ability, level: number, data_type: number, value: number): any;

//native EXSetAbilityDataInteger takes ability abil, integer level, integer data_type, integer value returns boolean
declare function EXSetAbilityDataInteger(abil: ability, level: number, data_type: number, value: number): boolean;

declare function EXGetAbilityDataString(abil: ability, level: number, data_type: number): string;

declare function EXSetAbilityDataString(abil: ability, level: number, data_type: number, value: string): any;

declare function EXSetBuffDataString(buffId: any, data_type: number, value: string): any;

declare function EXGetAbilityString(abilcode: number | string, level: number, data_type: number): string;

declare function EXSetAbilityString(abilcode: number | string, level: number, data_type: number, value: string): boolean;

declare function EXGetItemDataString(itemcode: number | string, data_type: number): string;

//4 = 提示,   3 = 提示（扩展）
/**
 * YDWESetItemDataString takes integer itemcode, integer data_type, string value returns boolean
 */
declare function EXSetItemDataString(itemcode: number | string, data_type: number, value: string): boolean;

/**
 edd_type :可选择：
 constant integer EVENT_DAMAGE_DATA_VAILD       = 0
 constant integer EVENT_DAMAGE_DATA_IS_PHYSICAL = 1//是否物理伤害 (UnitDamageTarget只能造成非物理伤害)
 constant integer EVENT_DAMAGE_DATA_IS_ATTACK   = 2//是否攻击伤害
 constant integer EVENT_DAMAGE_DATA_IS_RANGED   = 3//是否远程
 constant integer EVENT_DAMAGE_DATA_DAMAGE_TYPE = 4 //伤害类型
 constant integer EVENT_DAMAGE_DATA_WEAPON_TYPE = 5//武器类型
 constant integer EVENT_DAMAGE_DATA_ATTACK_TYPE = 6//攻击类型
 * @constructor
 * @param edd_type
 */
declare function EXGetEventDamageData(edd_type: number): number;

//function YDWESetEventDamage takes real amount returns boolean
declare function EXSetEventDamage(amount: number): boolean;

/**

 * 设置大小 [JAPI] [New!]
 * 设置 ${特效} 的大小为 ${大小}
 * @params  effect real
 */
declare function EXSetEffectSize(handle: effect, size: number): any;

declare function EXDisplayChat(...args: any[]): any;

declare function EXDclareButtonIcon(path: string): void;

/**
 * 只能对64x64大小的blp图片进行操作
 * @param topPath 上层图片
 * @param bgPath 背景底图
 * @param resultPath 融合后的保存结果
 * @constructor
 */
declare function EXBlendButtonIcon(topPath: string, bgPath: string, resultPath: string): any;

/**

 * 移动到坐标 [JAPI] [New!]
 * 移动 ${特效} 到（ ${X}, ${Y} ）
 * @params  effect real real
 */
declare function EXSetEffectXY(args: effect, x: number, y: number): any;

/**
 * 绑定到单位的特效 如果单位移除后 调用EXSetEffectZ设置这个特效会导致崩溃
 * @param handle
 * @param val
 * @constructor
 * 设置高度 [JAPI] [New!]
 * 设置 ${特效} 的高度为 ${高度}
 * @params  effect real
 */
declare function EXSetEffectZ(handle: effect, val: number): any;

/**

 * X轴坐标 [JAPI] [New!]
 * ${特效} 的X轴坐标
 * @params  effect
 * @return real
 */
declare function EXGetEffectX(args: effect): number;

/**

 * Y轴坐标 [JAPI] [New!]
 * ${特效} 的Y轴坐标
 * @params  effect
 * @return real
 */
declare function EXGetEffectY(args: effect): number

/**

 * 高度 [JAPI] [New!]
 * ${特效} 的高度
 * @params  effect
 * @return real
 */
declare function EXGetEffectZ(args: effect): number;

/**

 * 大小 [JAPI] [New!]
 * ${特效} 的大小
 * @params  effect
 * @return real
 */
declare function EXGetEffectSize(handle: effect): any;

/**

 * 绕X轴旋转 [JAPI] [New!]
 * ${特效} 绕X轴旋转 ${度} 度
 * 多次调用，效果会叠加，不想叠加需要先重置为初始状态。
 * @params  effect degree
 */
declare function EXEffectMatRotateX(handle: effect, val: number): any;

/**

 * 绕Y轴旋转 [JAPI] [New!]
 * ${特效} 绕Y轴旋转 ${度} 度
 * 多次调用，效果会叠加，不想叠加需要先重置为初始状态。
 * @params  effect degree
 */
declare function EXEffectMatRotateY(handle: effect, val: number): any;

/**

 * 绕Z轴旋转 [JAPI] [New!]
 * ${特效} 绕Z轴旋转 ${度} 度
 * 多次调用，效果会叠加，不想叠加需要先重置为初始状态。
 * @params  effect degree
 */
declare function EXEffectMatRotateZ(handle: effect, val: number): any;

declare let _g_objs: {
    ability: { [id: string]: aobj }
    upgrade: { [id: string]: upobj }
    buff: { [id: string]: bobj }
    misc: { [id: string]: { [key: string]: string } }
    destructable: { [id: string]: deobj }
    doodad: { [id: string]: dobj }
    item: { [id: string]: iobj }
    unit: { [id: string]: uobj }
};

/**
 * 其他lua api
 */
/**
 * 本地玩家的鼠标坐标 (游戏坐标)
 * @param x
 * @param y
 */
declare function mouse(): LuaMultiReturn<[number, number]>;

/**
 * 本地玩家技能按钮的状态
 *  根据格子找到技能id，命令id，目标类型
 *  ability, order, target_type = message.button(x, y)
 * @param x
 * @param y
 */
declare function button(x: number, y: number): LuaMultiReturn<[number, number, number]>;

/**
 * 获得本地玩家当前选中单位
 * 多选时返回选择列表里的第一个单位
 */
declare function selection(): unit;