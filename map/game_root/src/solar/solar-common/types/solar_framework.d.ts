/** @noSelfInFile */
/**
 * 太阳框架
 */

/**
 * 大属性模式 (属性可突破100万 21亿限制  达到数百涧 涧=10的36次方)
 * (此模式下 会重写一些与属性相关的函数 如玩家金币 木材 单位的攻击护甲 英雄的3维等)
 * 默认为false 不开启大属性模式
 * （在大属性模式下 不能斤斤计较）
 * see attribute/BigAttributeCompatibleState
 */
declare let isBigAttributeMode: boolean

/**
 * 太阳伤害系统 是否启用
 */
declare let isSolarDamageEnable: boolean
/**
 * 是否太阳独立游戏
 */
declare let isSolarIndieGame: boolean


/**
 * 游戏设置
 * 比如伤害显示 物品锁 或其他设置
 */
declare let settings: AppSettings


declare interface SolarGlobalVariable {
    /**
     * 下一波倒计时
     */
    nextWaveCountdown?: number
    /**
     * 敌人等级
     */
    enemyLevel?: number
    /**
     * 当前敌人数量
     */
    enemyCount?: number
    /**
     * 判断 UnitDropItemSlot 正在执行 (这个函数也会触发EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER 事件  可以判断这个来做一些逻辑)
     */
    isUnitDropItemSlotExecIng?: boolean

    /**
     * 是否正在重新加载
     */
    reloadIng?: boolean
    /**
     * 上一次造成伤害的数值
     */
    _sl_lastDamage?: number

    /**
     * 任意全局变量
     */
    [key: string]: any
}

/**
 *  全局变量
 */
declare let gv: AppGlobalVariable

/**
 *  太阳事件总线自定义事件类型
 *  (通过中心事件可以解耦各个系统的数据逻辑交互)
 */
declare interface SolarEventType {
    "_sl_重载脚本"?: any
    "选择模式"?: string
    "选择难度"?: number
    /** 玩家按下回城按钮 */
    "回城"?: player
    "练功房"?: player
    "任务点"?: player
    /**选择英雄 被选中的英雄*/
    "选择英雄"?: unit
    //参数为打开ui的id 如果不是自己的话 可以关闭自身显示 是自身类型的才显示
    "打开UI"?: string
    /** 刷新图标面板 可能在图标面板做操作时 修改了图标 禁用/启用 文本 可以触发这个事件也实时显示效果
     * 否则要等下次打开图标面板才会刷新最新的数据 */
    "刷新图标面板"?: void
    /**通用基础的ui刷新*/
    "刷新UI"?: void
    "英雄阵亡": { unit: unit }
    /**羁绊卡牌*/
    "获得卡牌": { unit: unit, id: string, type?: string };
    "技能吞噬": { unit: unit, abilityOrAbilityActor?: any, abilityId?: string, type?: string };
    "装备吞噬": { unit: unit, item: item, itemId?: string, type?: string };
    "装备洗炼": { unit: unit, item: item };
    "战斗力改变": { pid: number, combat: number, unit?: unit };
    /** p = 玩家id */
    "接受任务"?: { id: string, p: number, type?: string, tip?: string, lv?: number, max?: number, [key: string]: any }
    /** p = 玩家id */
    "任务进度"?: {
        id: string,
        p: number,
        type?: string,
        tip?: string,
        workDone?: number,
        max?: number,
        [key: string]: any
    }
    /** p = 玩家id */
    "完成任务"?: { id: string, p: number, type?: string, tip?: string, lv?: number, max?: number, [key: string]: any }
    /** 存档 */
    "保存存档"?: {
        pid: number
        archiveNo?: number
        byAuto?: boolean
        byUser?: boolean
        saveAll?: boolean
        saveTypes?: string[]
    }
    "加载存档"?: {
        pid: number
        archiveNo?: number
    }
    "删除存档"?: {
        pid: number
        archiveNo?: number
        deleteAll?: boolean
        deleteTypes?: string[]
    }
    /**
     * unit  转生的英雄单位
     * level 转生后的等级
     */
    "转生"?: { unit: unit, level: number }
    /**用作出怪的提前预警 参数为多少秒后开始出怪*/
    "准备出怪"?: number
    "开始出怪"?: void
    /**用作每波需要改变的功能 参数为第几波*/
    "敌人波数改变"?: number
    "敌人进攻"?: void
    "特殊怪进攻"?: void
    "Boss进攻"?: void
    "双击选择单位"?: unit
    "建造完成"?: unit
    "升级开始"?: unit
    "升级完成"?: unit
    /**没有玩家则认为是所有玩家*/
    "游戏胜利"?: player
    "游戏失败"?: player
    "游戏结束"?: player
    /**需要及时刷新属性的时候可以发送这个事件
     * 其他属性系统监听这个事件以进行及时刷新
     * 需要刷新指定单位的可以传unit参数(节省计算量) 不传则全部刷新 */
    "属性刷新"?: { type?: string, unit?: unit }
    "自动合成"?: player
    "存档验证失败"?: { p: number, key?: string, val?: any }
    /**
     * key:奖励名字
     * val:奖励值（可以为对象 比如属性对象）
     * */
    "给与玩家奖励"?: { p: number, key: string, val: any }
    /**
     * 可以用这个把挑战NPC跟刷怪系统解耦
     * key:奖励名字
     * val:挑战值
     * count:挑战数量
     * */
    "挑战"?: { p: number, key: string | "基础刷怪", val: any, count?: number, unitCallback?: (unit: unit) => void }

    [id: string]: any
}

/**
 * 第一个参数url = 需要请求的网址
 *
 * 第二个参数data = 需要发送请求报文数据
 *
 * 第三个参数onResult = http响应后的异步回调，记得使用同步方法同步到其他玩家
 * @deprecated 不要收集玩家用户的信息 以免触犯规则
 */
declare function HttpRequest(url: string, data: string, onResult: (result: string) => void): any;


declare function char2number(char: string): number;


/**
 * 根据这些key的值乘以对应的单位属性 获得属性对应的公式值
 */
declare interface StateFormula {
    /** 概率 0.1 =10% 如果有此值的话 则计算概率 不在概率中会返回0 外部使用可以根据伤害是否大于0再做 逻辑 */
    chance?: number
    /** 基础值 */
    base?: number
    /** 基础(来源)单位 */
    /** 攻击力 */
    attack?: number,
    /** 护甲 */
    def?: number,
    /** 全属性 */
    fullPros?: number,
    /** 主属性 */
    primaryPros?: number,
    /** 力量 */
    str?: number,
    /** 敏捷 */
    agi?: number,
    /** 智力 */
    int?: number,
    /** 当前生命值 */
    hp?: number,
    /** 当前魔法值 */
    mana?: number,
    /** 最大生命值 */
    maxHp?: number,
    /** 最大魔法值 */
    maxMana?: number,
    /** 已损失生命值 */
    loseHp?: number,
    /** 已损失魔法值 */
    loseMana?: number,


    /** 受害(目标)单位 */
    target_attack?: number,
    /** 目标护甲 */
    target_def?: number,
    /** 目标全属性 */
    target_fullPros?: number,
    /** 目标主属性 */
    target_primaryPros?: number,
    /** 目标力量 */
    target_str?: number,
    /** 目标敏捷 */
    target_agi?: number,
    /** 目标智力 */
    target_int?: number,
    /** 目标当前生命值 */
    target_hp?: number,
    /** 目标当前魔法值 */
    target_mana?: number,
    /** 目标最大生命值 PS:按boss最大生命值的通常不要走伤害系统增幅了否则可能会直接秒杀，应该使用直接扣血(若血量低于扣值则使用伤害方式以保证有凶手单位)的方式*/
    target_maxHp?: number,
    /** 目标最大魔法值 */
    target_maxMana?: number,
    /** 目标已损失生命值 */
    target_loseHp?: number,
    /** 目标已损失魔法值 */
    target_loseMana?: number,


    /** 玩家相关 */
    /** 金币 */
    gold?: number
    /** 木材 */
    lumber?: number
    /** 人口(食物) */
    food?: number
    /** 杀敌数 */
    kills?: number


    /** 最终数值增幅 0.5=增加50%*/
    increased?: number
}

declare interface Destroyable {
    destroy(): any;
}

/** 辅助解决文件动态回调的变量 辅助解耦模块 */
declare interface AppFunctions {
    /** 返回false 代表不可穿戴 没有注册此函数时默取决于回调发起方逻辑 */
    是否可穿戴装备?: (unit: unit, itemId: string) => boolean;
    /** 此方法需支持异步调用 可能ui需要获取本地玩家的杀敌数来显示 */
    获取玩家杀敌数?: (player: player) => number;
}

declare let functions: AppFunctions;


/** 辅助解决文件相互依赖的函数 */
declare let _sl_funs: {
    setBuilds2unit(unit: unit, builds: string[]): void;
    setUpgradeUnits2unit(unit: unit, upgradeUnits: string[]): void;
    setTrainUnits2unit(unit: unit, trainUnits: string[]): void;
    borrowTemplate(templateType: string, cacheKey?: string, cacheRefKey?: string): string;
    returnTemplate(templateType: string, objIdStr: string, cacheKey?: string, cacheRefKey?: string): boolean;
}
/** 辅助解决文件相互依赖的变量 */
declare let _sl_vars: {}


declare type FrameType = "BACKDROP" | "TEXT" | "GLUETEXTBUTTON" | "BUTTON" | "TEXTBUTTON" | "TEXTAREA" | "FRAME"
    | "CHECKBOX" | "EDITBOX" | "GLUEBUTTON" | "SCROLLBAR" | "SLIDER" | "SPRITE" | "POPUPMENU" | "CONTROL" | "DIALOG"
    | "HIGHLIGHT" | "LISTBOX" | "MENU" | "CHATDISPLAY" | "GLUECHECKBOX" | "SIMPLEFRAME" | "SIMPLEBUTTON";