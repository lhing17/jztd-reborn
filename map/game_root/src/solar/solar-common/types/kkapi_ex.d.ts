/** @noSelfInFile **/

/**
 * kkapi jass层面函数封装的api
 */


/**
 * 注册鼠标事件
 * 任意玩家 ${key} ${actionkey} 时
 * 请使用“获取触发硬件事件的玩家”来获取触发玩家
 * @params  gamekeyaction mousekey
 */
declare function DzTriggerRegisterMouseEventTrg(trg: trigger, status: number, btn: number): void;


/**
 * 键盘事件
 * 任意玩家 ${keyaction} ${key} 时
 * 请使用“获取触发硬件事件的玩家”来获取触发玩家
 * @params  gamekeyaction gamekey
 */
declare function DzTriggerRegisterKeyEventTrg(trg: trigger, status: number, btn: number): void;


/**
 * 鼠标移动事件
 * 任意玩家移动鼠标
 * 请使用“获取触发硬件事件的玩家”来获取触发玩家
 */
declare function DzTriggerRegisterMouseMoveEventTrg(trg: trigger): void;


/**
 * 鼠标滚轮事件
 * 任意玩家滑动鼠标滚轮
 * 请使用“获取触发硬件事件的玩家”来获取触发玩家，滚轮的方向由“获取滚轮变化值”的正负来判断
 */
declare function DzTriggerRegisterMouseWheelEventTrg(trg: trigger): void;


/**
 * 窗口大小变化事件
 * 任意玩家改变窗口大小
 * 请使用“获取触发硬件事件的玩家”来获取触发玩家。这个事件会在玩家拖动窗口大小时频繁触发
 */
declare function DzTriggerRegisterWindowResizeEventTrg(trg: trigger): void;


/**
 * 转换 Frame 为 整数
 * 转换 ${Frame} 为 整数
 * @params  frame
 * @return integer
 */
declare function DzF2I(i: number): number;


/**
 * 转换 整数 为 Frame
 * 转换 ${Integer} 为 Frame
 * @params  integer
 * @return frame
 */
declare function DzI2F(i: number): number;


/**
 * 转换 按键 为 整数
 * 转换 ${Key} 为 整数
 * @params  gamekey
 * @return integer
 */
declare function DzK2I(i: number): number;


/**
 * 转换 整数 为 按键
 * 转换 ${Integer} 为 按键
 * @params  integer
 * @return gamekey
 */
declare function DzI2K(i: number): number;


/**
 * 玩家获得地图商城道具事件（实时）
 * 注册玩家获得地图商城道具事件（实时）
 * 玩家背包中新获得了当前地图商城道具的回调事件，用于地图实现玩家在游戏内商城购买成功后在游戏内立即生效。'触发的商城道具事件的玩家'、'触发的商城道具'和'商城道具最后变动的数量'使用。
 */
declare function DzTriggerRegisterMallItemSyncData(trig: trigger): void;


/**
 * 玩家消耗地图商城道具事件（实时）
 * 注册玩家消耗地图商城道具事件（实时）
 * 玩家背包中消耗或使用商城道具的回调事件。可在事件内配合'触发的商城道具事件的玩家'、'触发的商城道具'和'商城道具最后变动的数量'使用。
 */
declare function DzTriggerRegisterMallItemConsumeEvent(trig: trigger): void;


/**
 * 玩家删除地图商城道具事件（实时）
 * 注册玩家删除地图商城道具事件（实时）
 * 玩家背包中删除地图商城道具的回调事件。可在事件内配合'触发的商城道具事件的玩家'和'商城道具最后变动的数量'使用。（该事件一般不太可能用到，一般为商城商品被删除才会触发）
 */
declare function DzTriggerRegisterMallItemRemoveEvent(trig: trigger): void;


/**
 * 事件响应 - 触发的商城道具事件的玩家
 * 触发的商城道具事件的玩家
 * 可以用于【玩家获取商城道具事件】、【玩家消耗使用商城道具事件】和【玩家删除商城道具事件】后。
 * @return player
 */
declare function DzGetTriggerMallItemPlayer(): player;


/**
 * 事件响应 - 触发的商城道具（实时）
 * 触发的商城道具
 * 可以用于【玩家获取商城道具事件】、【玩家消耗使用商城道具事件】和【玩家删除商城道具事件】后。
 * @return string
 */
declare function DzGetTriggerMallItem(): string;


/**
 * 设置加速倍率
 * 设置加速倍率： ${ratio}
 * @params  real
 */
declare function DzSetSpeed(value: number): void;


/**
 * 刷新小地图
 * ps:设置小地图为默认小地图 (DzSetWar3MapMap可以设置自定义的小地图)
 */
declare function DzUpdateMinimap(): void;


/**
 * 修改单位透明度
 * 设置单位 ${单位} 的透明度为${透明度}  ${true} 强制更新
 * @params  unit integer boolean
 */
declare function DzUnitChangeAlpha(whichUnit: unit, alpha: number, forceUpdate: boolean): void;


/**
 * 沉默单位
 * 设置单位 ${单位} 的沉默状态为 ${true}
 * @params  unit boolean
 */
declare function DzUnitSilence(whichUnit: unit, disable: boolean): void;


/**
 * 禁用攻击
 * 设置单位 ${单位}  ${true} 物理攻击
 * @params  unit disableenableoption
 */
declare function DzUnitDisableAttack(whichUnit: unit, disable: boolean): void;


/**
 * 禁用道具
 * 设置单位 ${单位}  ${true} 物品栏
 * @params  unit disableenableoption
 */
declare function DzUnitDisableInventory(whichUnit: unit, disable: boolean): void;


/**
 * 修改单位选中状态
 * 设置单位 ${单位}  ${state} 被选中
 * @params  unit canorcantoption
 */
declare function DzUnitSetCanSelect(whichUnit: unit, state: boolean): void;


/**
 * 修改单位是否可以被设置为目标
 * 设置单位 ${单位}  ${state} 设置为目标
 * @params  unit canorcantoption
 */
declare function DzUnitSetTargetable(whichUnit: unit, state: boolean): void;


/**
 * 保存内存数据
 * 保存内存数据： ${state}
 * @params  string
 */
declare function DzSaveMemoryCache(cache: string): void;


/**
 * 读取内存数据
 * 读取内存数据
 * @return string
 */
declare function DzGetMemoryCache(): string;


/**
 * 转换地图坐标为屏幕坐标-异步
 * 转换地图坐标（ ${x}，${Y}，${z}）为屏幕坐标执行动作
 * 动作里用“转换后的屏幕X坐标”和“转换后的屏幕Y坐标”去读取
 * @params  real real real
 */
declare function DzConvertWorldPosition(x: number, y: number, z: number, callback: () => void): boolean;


/**
 * 获取转换后的屏幕 X 坐标
 * 获取转换后的屏幕 X 坐标
 * 用于转换世界坐标为屏幕坐标动作后面
 * @return real
 */
declare function DzGetConvertWorldPositionX(): number;


/**
 * 获取转换后的屏幕 Y 坐标
 * 获取转换后的屏幕 Y 坐标
 * 用于转换世界坐标为屏幕坐标动作后面
 * @return real
 */
declare function DzGetConvertWorldPositionY(): number;


/**
 * 创建技能按钮
 * 在 ${界面} 的创建技能按钮：贴图:${path} 名称:${name} 描述：${desc})
 * @params  frame string string string
 * @return frame
 */
declare function DzCreateCommandButton(parent: number, icon: string, name: string, desc: string): number;


/**
 * 转换世界坐标为屏幕x坐标[同步]
 * 转换地图坐标（ ${x}，${Y}，${z}）为屏幕x坐标
 * @params  real real real
 * @return real
 */
declare function DzConvertWorldPositionX(x: number, y: number, z: number): number;


/**
 * 转换世界坐标为屏幕y坐标[同步]
 * 转换地图坐标（ ${x}，${Y}，${z}）为屏幕y坐标
 * @params  real real real
 * @return real
 */
declare function DzConvertWorldPositionY(x: number, y: number, z: number): number;


/**
 * 转换世界坐标为屏幕深度[同步]
 * 转换地图坐标（ ${x}，${Y}，${z}）为屏幕深度
 * @params  real real real
 * @return real
 */
declare function DzConvertWorldPositionDepth(x: number, y: number, z: number): number;


declare function DzSetUnitMoveType(unit: unit, moveType: string): void;


/**
 * 获取玩家的平台ID
 *  ${whichPlayer} 平台ID
 * 返回的是一个32位的字符串
 * @params  player
 * @return string
 */
declare function KKApiPlayerGUID(p: player): string;


/**
 * 玩家在地图自定义排行榜上的排名
 * 获取玩家 ${whichPlayer} 自定义排行榜KEY(开发者平台填写)： ${key} 的排名，【请注意100名以外的玩家获取的值为0！】
 * 【100名以外的玩家排名为0】该功能适用于开发者平台-服务器存档-自定义排行榜
 * @params  player integer
 * @return integer
 */
declare function DzAPI_Map_CommentTotalCount1(whichPlayer: player, id: number): number;


/**
 * 自定义排行榜上榜人数
 * 获取自定义排行榜 ${key} 的上榜人数
 * key为开发者平台所配置的自定义排行榜key值,值为1~9
 * @params  integer
 * @return integer
 */
declare function DzAPI_Map_CustomRankCount(rankKey: number): number;


/**
 * 自定义排行榜上的玩家昵称
 * 获取自定义排行榜 ${key} 的排名第 ${ranking} 的玩家昵称
 * key为开发者平台所配置的自定义排行榜key值,值为1~9
 * @params  integer integer
 * @return string
 */
declare function DzAPI_Map_CustomRankPlayerName(rankKey: number, index: number): string;


/**
 * 自定义排行榜上的玩家数值
 * 获取自定义排行榜 ${key} 排名第 ${ranking} 的数值
 * key为开发者平台所配置的自定义排行榜key值,值为1~9
 * @params  integer integer
 * @return integer
 */
declare function DzAPI_Map_CustomRankValue(rankKey: number, index: number): number;


/**
 * 【批量存档】开始保存
 *  ${whichPlayer} 开始批量保存存档
 * 对添加批量保存存档条目进行保存。
 * @params  player
 */
declare function KKApiBeginBatchSaveArchive(whichPlayer: player): boolean;


/**
 * 【批量存档】添加条目
 * 设置 ${whichPlayer} 批量存档添加条目 ${key} ，数据： ${value} ， ${caseInsensitive} 区分大小写
 * 对添加批量保存存档条目进行保存。
 * @params  player string string boolean
 */
declare function KKApiAddBatchSaveArchive(whichPlayer: player, key: string, value: string, caseInsensitive: boolean): boolean;


/**
 * 【批量存档】结束保存
 * 设置 ${whichPlayer}  ${abandon} 结束批量保存存档
 * 结束批量保存存档。
 * @params  player boolean
 */
declare function KKApiEndBatchSaveArchive(whichPlayer: player, abandon: boolean): boolean;


/**
 * 玩家抽取指定地图宝箱次数
 * 获取 ${whichPlayer} 第 ${n} 个地图宝箱的累计抽取次数
 * 第二个参数为0代表第一个宝箱也为默认宝箱，为1代表第二个宝箱
 * @params  player integer
 * @return integer
 */
declare function DzAPI_Map_GetLotteryUsedCountEx(whichPlayer: player, index: number): number;


/**
 * 玩家抽取地图宝箱总次数
 *  ${whichPlayer} 玩家抽取地图宝箱总次数
 * @params  player
 * @return integer
 */
declare function DzAPI_Map_GetLotteryUsedCount(whichPlayer: player): number;


/**
 * 【随机只读存档】生成随机数
 * 设置 ${whichPlayer} 对随机只读存档 ${key} 的组 ${groupkey} 生成随机数
 * 生成一个服务器随机数并关联组ID，可以在开发者平台对组ID进行防刷分管理，同组ID下各个Key共享CD和次数。
 * @params  player string string
 * @return boolean
 */
declare function KKApiRequestBackendLogic(whichPlayer: player, key: string, groupkey: string): boolean;


/**
 * 【随机只读存档】判断随机数是否存在
 *  ${whichPlayer} 随机只读存档 ${key} 是否存在
 * 判断指定KEY生成的随机数是否存在，存在返回true
 * @params  player string
 * @return boolean
 */
declare function KKApiCheckBackendLogicExists(whichPlayer: player, key: string): boolean;


/**
 * 【随机只读存档】读取随机数的值
 * 获取 ${whichPlayer} 随机只读存档 ${key} 的值
 * 读取指定KEY生成的服务器随机数的值，返回整数。
 * @params  player string
 * @return integer
 */
declare function KKApiGetBackendLogicIntResult(whichPlayer: player, key: string): number;


/**
 * 【随机只读存档】读取随机数的生成时间
 * 获取 ${whichPlayer} 随机只读存档 ${key} 的生成时间
 * 读取指定KEY生成的服务器随机数生成的时间戳，返回整数。
 * @params  player string
 * @return integer
 */
declare function KKApiGetBackendLogicUpdateTime(whichPlayer: player, key: string): number;


/**
 * 【随机只读存档】读取随机数的组ID
 * 获取 ${whichPlayer} 随机只读存档 ${key} 的组ID
 * 读取指定KEY生成的服务器随机数生成的组ID，返回整数
 * @params  player string
 * @return string
 */
declare function KKApiGetBackendLogicGroup(whichPlayer: player, key: string): string;


/**
 * 设置单位类型名[API][new]
 * 设置 ${单位} 类型名字： ${name}
 * @params  unitcode string
 */
declare function DzSetUnitTypeName(uid: number, name: string): void;


/**
 * 设置英雄类型称谓名[API][new]
 * 设置 ${英雄} 类型的称谓名： ${name}
 * @params  unitcode string
 */
declare function DzSetHeroTypeProperName(uid: number, name: string): void;


/**
 * 攻击类型[JAPI]
 * [${whichUnit}] ${index} 的攻击类型为 ${attackType}
 * @params  unit Dmgplus attacktype
 * @return boolean
 */
declare function DzIsUnitAttackType(whichUnit: unit, index: number, attackType: attacktype): boolean;


/**
 * 设置攻击类型[API]
 * 设置 ${单位} ${~index} 的攻击类型为 ${attackType}
 * @params  unit Dmgplus attacktype
 */
declare function DzSetUnitAttackType(whichUnit: unit, index: number, attackType: attacktype): void;


/**
 * 护甲类型[JAPI]
 * [${whichUnit}] 的护甲类型为 ${defenseType}
 * @params  unit defensetype
 * @return boolean
 */
declare function DzIsUnitDefenseType(whichUnit: unit, defenseType: number): boolean;


/**
 * 设置护甲类型[API]
 * 设置 ${单位} 的护甲类型为 ${defenseType}
 * @params  unit defensetype
 */
declare function DzSetUnitDefenseType(whichUnit: unit, defenseType: number): void;


/**
 * 设置单位整数物编数据
 * 设置 ${单位} 的 ${id} 数值为 ${data}
 * @params  unitcode UnitCacheIntegerData integer
 */
declare function KKWESetUnitDataCacheInteger(uid: number, id: number, v: number): void;


/**
 * 设置单位物编数据(建筑升级)
 * 设置 ${单位} 的第 ${id} 个建筑升级 ${单位类型}
 * @params  unitcode integer unitcode
 */
declare function KKWEUnitUIAddUpgradesIds(uid: number, id: number, v: number): void;


/**
 * 设置单位物编数据(农民可建造建筑)
 * 设置 ${单位} 的第 ${id} 个可建造建筑 ${单位类型}
 * @params  unitcode integer unitcode
 */
declare function KKWEUnitUIAddBuildsIds(uid: number, id: number, v: number): void;


/**
 * 设置单位物编数据(可研究的科技)
 * 设置 ${单位} 的第 ${id} 个可研究的科技 ${科技类型}
 * @params  unitcode integer techcode
 */
declare function KKWEUnitUIAddResearchesIds(uid: number, id: number, v: number): void;


/**
 * 设置单位物编数据(可训练的单位)
 * 设置 ${单位} 的第 ${id} 个可训练的单位 ${单位类型}
 * @params  unitcode integer unitcode
 */
declare function KKWEUnitUIAddTrainsIds(uid: number, id: number, v: number): void;


/**
 * 设置单位物编数据(出售的单位)
 * 设置 ${单位} 的第 ${id} 个可出售的单位 ${单位类型}
 * @params  unitcode integer unitcode
 */
declare function KKWEUnitUIAddSellsUnitIds(uid: number, id: number, v: number): void;


/**
 * 设置单位物编数据(出售的物品)
 * 设置 ${单位} 的第 ${id} 个可出售的物品 ${物品类型}
 * @params  unitcode integer itemcode
 */
declare function KKWEUnitUIAddSellsItemIds(uid: number, id: number, v: number): void;


/**
 * 设置单位物编数据(制造的物品)
 * 设置 ${单位} 的第 ${id} 个可制造的物品 ${物品类型}
 * @params  unitcode integer itemcode
 */
declare function KKWEUnitUIAddMakesItemIds(uid: number, id: number, v: number): void;


/**
 * 设置单位物编数据(科技需求)[单位]
 * 设置 ${单位} 的第 ${id} 个科技需求 ${单位类型}
 * @params  unitcode integer unitcode
 */
declare function KKWEUnitUIAddRequiresUnitCode(uid: number, id: number, v: number): void;


/**
 * 设置单位物编数据(科技需求)[科技]
 * 设置 ${单位} 的第 ${id} 个科技需求 ${科技类型}
 * @params  unitcode integer techcode
 */
declare function KKWEUnitUIAddRequiresTechcode(uid: number, id: number, v: number): void;


/**
 * 设置单位物编数据(科技需求值)
 * 设置 ${单位} 的第 ${id} 个科技需求值 ${数量}
 * @params  unitcode integer integer
 */
declare function KKWEUnitUIAddRequiresAmounts(uid: number, id: number, v: number): void;


declare function DzIsLeapYear(year: number): boolean;


declare function DzGetTimeDateFromTimestamp(timestamp: number): string;


/**
 * 转换时间戳为具体时间 [NEW]
 * 转换 ${时间戳} 为具体时间
 * 返回值类似：2025-1-10 17:4:40
 * @params  integer
 * @return string
 */
declare function KKAPIGetTimeDateFromTimestamp(timestamp: number): string;


/**
 * 获取时间戳年份 [NEW]
 *  ${时间戳} 的年份
 * @params  integer
 * @return integer
 */
declare function KKAPIGetTimestampYear(timestamp: number): number;


/**
 * 获取时间戳月份 [NEW]
 *  ${时间戳} 的月份
 * @params  integer
 * @return integer
 */
declare function KKAPIGetTimestampMonth(timestamp: number): number;


/**
 * 获取时间戳日份 [NEW]
 *  ${时间戳} 的日份
 * @params  integer
 * @return integer
 */
declare function KKAPIGetTimestampDay(timestamp: number): number;


/**
 * 转化 - 整数为技能ID
 * 转换 ${整数} 为技能ID
 * @params  integer
 * @return abilcode
 */
declare function KKConvertInt2AbilId(i: number): number;


/**
 * 转化 - 技能ID为整数
 * 转换 ${技能ID} 为整数
 * @params  abilcode
 * @return integer
 */
declare function KKConvertAbilId2Int(i: number): number;


/**
 * 转化 - 转整数为颜色
 * 转换 ${整数} 为颜色
 * @params  integer
 * @return rgba2color
 */
declare function KKConvertInt2Color(i: number): number;


/**
 * 转化 - 转颜色为整数
 * 转换 ${颜色} 为整数
 * @params  rgba2color
 * @return integer
 */
declare function KKConvertColor2Int(i: number): number;

/** @noSelfInFile **/

/**

 * kkapi jass层面函数封装的api
 */


/**
 * 保存服务器存档
 *  ${玩家} 保存存档[ ${存档名称} ][ ${存档内容} ]最大长度64位
 * 保存服务器存档
 * @params  player string string
 */
declare function DzAPI_Map_SaveServerValue(whichPlayer: player, key: string, value: string): boolean;


/**
 * 读取服务器存储的数据
 * 获取 ${whichPlayer}  ${key} 里的数据
 * @params  player string
 * @return string
 */
declare function DzAPI_Map_GetServerValue(whichPlayer: player, key: string): string;


/**
 * 本局游戏的开始时间
 * 本局游戏的开始时间
 * 获取本局游戏开始时的服务器时间。
 * @return integer
 */
declare function DzAPI_Map_GetGameStartTime(): number;


/**
 * 本局游戏是否天梯排位赛
 * 判断地图是否在RPG天梯
 * 本局游戏是否通过RPG天梯启动，如果地图配置了多个天梯模式，可通过获取本局游戏的地图模式接口获取具体选定的是哪一个天梯模式。
 * @return boolean
 */
declare function DzAPI_Map_IsRPGLadder(): boolean;


/**
 * 本局游戏的地图模式
 * 本局游戏的地图模式
 * 获取本局游戏所选择地图模式，地图模式均由作者在开发者平台进行配置（包括天梯排位赛模式、快速匹配模式、建房间时房主所选定的地图模式）。
 * @return integer
 */
declare function DzAPI_Map_GetMatchType(): number;


/**
 * 上报房间内显示的数据
 * 设置 ${whichPlayer} 房间的 ${key} 项目显示 ${value}
 * 作者可以将游戏内的关键数值或结果上报给平台，用于在平台游戏房间内展示以方便玩家相互快速了解实力，数据上报后需在开发者平台进行配置后才能展示出来。比如：比如获得MVP次数、最高通关难度等。
 * @params  player string string
 */
declare function DzAPI_Map_Stat_SetStat(whichPlayer: player, key: string, value: string): void;


/**
 * 天梯提交字符串数据
 * 提交 ${whichPlayer} 天梯项目: ${key} 的值为: ${value}
 * @params  player string string
 */
declare function DzAPI_Map_Ladder_SetStat(whichPlayer: player, key: string, value: string): void;


declare function DzAPI_Map_Ladder_SetPlayerStat(whichPlayer: player, key: string, value: string): void;


declare function DzAPI_Map_GetServerValueErrorCode(whichPlayer: player): number;


/**
 * 玩家天梯等级
 * 获取 ${player} 天梯等级
 * 获取玩家在当前游戏局所采用的天梯模式下的天梯等级，仅天梯模式下的游戏局有效。
 * @params  player
 * @return integer
 */
declare function DzAPI_Map_GetLadderLevel(whichPlayer: player): number;


/**
 * 获取玩家身份类型
 *  ${whichPlayer} 的身份是 ${key}
 * @params  player IdentityType
 * @return boolean
 */
declare function KKApiPlayerIdentityType(whichPlayer: player, id: number): boolean;


/**
 * 玩家是否平台认证的职业选手
 * 判断 ${player} 是否是职业选手
 * 判断玩家是否平台认证的职业选手（红V）。
 * @params  player
 * @return boolean
 */
declare function DzAPI_Map_IsRedVIP(whichPlayer: player): boolean;


/**
 * 玩家是否平台认证的主播
 * 判断 ${player} 平台认证的主播（蓝V）
 * 判断指定玩家是否平台认证的主播（蓝V）。
 * @params  player
 * @return boolean
 */
declare function DzAPI_Map_IsBlueVIP(whichPlayer: player): boolean;


/**
 * 玩家天梯排名
 * 获取 ${player} 天梯排名
 * 排名>1000的获取值为0，获取玩家在当前游戏局所采用的天梯模式下的天梯排名，仅天梯模式下的游戏局有效。
 * @params  player
 * @return integer
 */
declare function DzAPI_Map_GetLadderRank(whichPlayer: player): number;


/**
 * 玩家在地图等级排行榜上的排名
 * 获取 ${player} 在地图等级排行榜上的排名
 * 排名>100的获取值为0
 * @params  player
 * @return integer
 */
declare function DzAPI_Map_GetMapLevelRank(whichPlayer: player): number;


/**
 * 玩家在公会的职责【废弃】
 * 获取 ${whichPlayer} 公会职责
 * 获取玩家公会职责 Member=10 Admin=20 Leader=30
 * @params  player
 * @return integer
 */
declare function DzAPI_Map_GetGuildRole(whichPlayer: player): number;


/**
 * 本局游戏是否处于RPG游戏大厅
 * 本局游戏是否处于RPG游戏大厅
 * 获取当前游戏局是否通过RPG游戏大厅启动。
 * @return boolean
 */
declare function DzAPI_Map_IsRPGLobby(): boolean;


declare function DzAPI_Map_MissionComplete(whichPlayer: player, key: string, value: string): void;


declare function DzAPI_Map_GetActivityData(): string;


/**
 * 地图配置参数
 * 获取: ${key} 地图配置参数
 * 获取作者在开发者平台配置的地图参数（原只读类型的地图全局存档），作者可以通过此接口实现节日活动开关、口令等功能。
 * @params  string
 * @return string
 */
declare function DzAPI_Map_GetMapConfig(key: string): string;


/**
 * 保存服务器存档组
 * 在服务器存档组:存储 ${whichPlayer} 数据,名称： ${key} ,值: ${value}
 * 将变量保存到当前作者账号下的服务器存档组中。
 * @params  player string string
 */
declare function DzAPI_Map_SavePublicArchive(whichPlayer: player, key: string, value: string): boolean;


/**
 * 读取服务器存档组
 * 在服务器存档组读取 ${whichPlayer} ,名称: ${key} 里的数据
 * 读取当前作者账号下的服务器存档组变量数据。。
 * @params  player string
 * @return string
 */
declare function DzAPI_Map_GetPublicArchive(whichPlayer: player, key: string): string;


/**
 * 使用地图商城道具（局数型）
 * 设置该局消耗 ${whichPlayer} 地图商城道具： ${key} 一个
 * 扣减玩家背包中的局数型道具1个，多次对同一个道具调用也只扣减1次。需先通过获取道具剩余数量确保玩家背包中的道具剩余数量大于0。
 * @params  player string
 */
declare function DzAPI_Map_UseConsumablesItem(whichPlayer: player, key: string): void;


/**
 * 触发BOSS击杀
 * 设置 ${whichPlayer} 触发击杀 ${bosskey}
 * 告知平台服务器游戏内发生了BOSS击杀，请求平台服务器计算BOSS掉落内容。触发之后用[DzAPI_Map_GetServerArchiveEquip]和[DzAPI_Map_GetServerArchiveDrop]读取
 * @params  player string
 */
declare function DzAPI_Map_OrpgTrigger(whichPlayer: player, key: string): void;


/**
 * BOSS击杀后的掉落内容
 * 获取 ${whichPlayer} 击杀boss ${bosskey} 掉落的装备
 * 游戏内调用触发BOSS击杀后，获取本次掉落内容。
 * @params  player string
 * @return string
 */
declare function DzAPI_Map_GetServerArchiveDrop(whichPlayer: player, key: string): string;


/**
 * BOSS击杀后的掉落数量
 * 读取 ${whichPlayer} BOSS击杀后的 ${itemkey} 掉落的数量
 * 游戏内调用[触发BOSS击杀]后，获取本次掉落数量。
 * @params  player string
 * @return integer
 */
declare function DzAPI_Map_GetServerArchiveEquip(whichPlayer: player, key: string): number;


declare function DzAPI_Map_GetPlatformVIP(whichPlayer: player): number;


/**
 * 玩家是否平台尊享会员
 * 玩家 ${player} 是平台尊享会员
 * 判断玩家是否平台的尊享会员。
 * @params  player
 * @return boolean
 */
declare function DzAPI_Map_IsPlatformVIP(whichPlayer: player): boolean;


/**
 * 读取全局存档
 * 读取全局存档 名称 ${key}
 * 只读的公共存档请使用另一个API读取
 * @params  string
 * @return string
 */
declare function DzAPI_Map_Global_GetStoreString(key: string): string;


/**
 * 保存全局存档
 * 在全局存档 ${key} ,存储值: ${value}
 * 将变量数据存储到平台服务器上的全局存档中，保存时会受到开发者平台所配置的保存规则限制。保存成功后本局游戏及同一时间正在进行的其他游戏局内的所有玩家都会收到全局存档变化事件的事件广播。
 * @params  string string
 */
declare function DzAPI_Map_Global_StoreString(key: string, value: string): void;


/**
 * 全局存档变化事件
 * 全局存档发生变化
 * 本局游戏或其他游戏保存的全局存档都会触发这个事件，请使用'同步'分类下的获取同步数据来获得发生变化的全局存档KEY值
 */
declare function DzAPI_Map_Global_ChangeMsg(trig: trigger): void;


/**
 * 读取服务器存档（区分大小写）
 * 获取服务器存储的数据（区分大小写） 玩家 ${player} 名称 ${key}
 * 从服务器上读取变量数据，存档变量Key区分大小写，保存时会受到开发者平台所配置的防刷分规则限制。
 * @params  player string
 * @return string
 */
declare function DzAPI_Map_ServerArchive(whichPlayer: player, key: string): string;


/**
 * 保存服务器存档（区分大小写）
 * 保存服务器存档（区分大小写） 玩家 ${player} 名称 ${key} 值 ${value}
 * 用将变量存储到服务器，存档变量Key区分大小写。
 * @params  player string string
 */
declare function DzAPI_Map_SaveServerArchive(whichPlayer: player, key: string, value: string): void;


/**
 * 本局游戏是否快速匹配
 * 判断玩家是否是通过匹配模式进入游戏
 * 本局游戏是否通过RPG快速匹配启动，如果地图配置了多个匹配模式，可通过[获取本局游戏的地图模式]接口获取具体选定的是哪一个匹配模式。
 * @return boolean
 */
declare function DzAPI_Map_IsRPGQuickMatch(): boolean;


/**
 * 玩家地图商城道具剩余数量
 * 获取 玩家 ${player} 地图商城道具 ${key} 的剩余库存次数
 * 获取玩家地图商城道具剩余数量。仅对次数消耗型商品有效
 * @params  player string
 * @return integer
 */
declare function DzAPI_Map_GetMallItemCount(whichPlayer: player, key: string): number;


/**
 * 使用地图商城道具（数量型）
 * 设置 ${whichPlayer} 使用地图商城道具 ${key}  ${数量} 个
 * 扣减玩家地图商城中的数量消耗型道具，可以多次调用。
 * @params  player string integer
 */
declare function DzAPI_Map_ConsumeMallItem(whichPlayer: player, key: string, count: number): boolean;


/**
 * 开启/关闭游戏内辅助功能
 * 设置 ${player} 的 ${option} 号平台功能为 ${enable}
 * 地图可以根据自身特点，强制打开或关闭视距调整、显示血条/蓝条、智能施法功能。1号功能为锁定镜头距离，2号功能为显示血、蓝条
 * @params  player platformFunction optionEnable
 */
declare function DzAPI_Map_EnablePlatformSettings(whichPlayer: player, option: number, enable: boolean): boolean;


/**
 * 玩家服务器存档是否读取成功
 *  ${whichPlayer} 服务器存档是否读取成功.
 * 如果返回false代表读取失败,反之成功,之后游戏里平台不会再发送“服务器保存失败”的信息，所以希望地图作者在游戏开始给玩家发下信息服务器存档是否正确读取。
 * @params  player
 * @return boolean
 */
declare function GetPlayerServerValueSuccess(whichPlayer: player): boolean;


/**
 * 服务器存储整数（区分大小写）
 * 服务器存储整数（区分大小写） 玩家 ${player} 名称 ${key} 值 ${value}
 * 这是经过封装的接口，实际Key会在原Key前面加”I”，与普通存档共用KEY
 * @params  player string integer
 */
declare function DzAPI_Map_StoreIntegerEX(whichPlayer: player, key: string, value: number): void;


/**
 * 获取服务器存储的整数（区分大小写）
 * 获取服务器存储的整数（区分大小写） 玩家 ${player} 名称 ${key}
 * 这是经过封装的接口，实际Key会在原Key前面加”I”，用于开发者平台设置的防刷分存档，与普通存档共用KEY
 * @params  player string
 * @return integer
 */
declare function DzAPI_Map_GetStoredIntegerEX(whichPlayer: player, key: string): number;


/**
 * 保存整数变量至服务器
 * 服务器存档:存储 ${whichPlayer} 数据,名称： ${key} ,值: ${value} 最大长度63位
 * 这是经过封装的接口，实际Key会在原Key前面加”I,（如您的key是AA，实际key为IAA。【IAA用于开发者平台填写，在编辑器上获取和读都填写AA就可以了】）”
 * @params  player string integer
 */
declare function DzAPI_Map_StoreInteger(whichPlayer: player, key: string, value: number): void;


/**
 * 读取服务器上的整数变量
 * 获取 ${whichPlayer} 数据名称: ${key} 里存储的整数.
 * 这是经过封装的接口，实际Key会在原Key前面加”I”
 * @params  player string
 * @return integer
 */
declare function DzAPI_Map_GetStoredInteger(whichPlayer: player, key: string): number;


/**
 * 保存实数变量至服务器
 * 服务器存档:存储 ${whichPlayer} 数据,名称： ${key} ,值: ${value} 最大长度63位
 * 这是经过封装的接口，实际Key会在原Key前面加”R,（如您的key是AA，实际key为RAA。【RAA用于开发者平台填写，在编辑器上获取和读都填写AA就可以了】”
 * @params  player string real
 */
declare function DzAPI_Map_StoreReal(whichPlayer: player, key: string, value: number): void;


/**
 * 读取服务器上的实数变量
 * 获取 ${whichPlayer} 数据名称: ${key} 里存储的实数
 * 这是经过封装的接口，实际Key会在原Key前面加”R”
 * @params  player string
 * @return real
 */
declare function DzAPI_Map_GetStoredReal(whichPlayer: player, key: string): number;


/**
 * 保存布尔值变量至服务器
 * 服务器存档:存储 ${whichPlayer} 数据,名称: ${key} ,值: ${value} 最大长度63位
 * 这是经过封装的接口，实际Key会在原Key前面加”B，（如您的key是AA，实际key为BAA。【BAA用于开发者平台填写，在编辑器上获取和读都填写AA就可以了】）”
 * @params  player string boolean
 */
declare function DzAPI_Map_StoreBoolean(whichPlayer: player, key: string, value: boolean): void;


/**
 * 读取服务器上的布尔变量
 * 获取 ${whichPlayer} 数据名称: ${key} 里存储的布尔值
 * 这是经过封装的接口，实际Key会在原Key前面加”B”
 * @params  player string
 * @return boolean
 */
declare function DzAPI_Map_GetStoredBoolean(whichPlayer: player, key: string): boolean;


/**
 * 保存字符串变量至服务器
 * 服务器存档:存储 ${whichPlayer} 数据,名称: ${key} ,值: ${value} 最大长度63位
 * 这是经过封装的接口，实际Key会在原Key前面加”S,（如您的key是AA，实际key为SAA。【SAA用于开发者平台填写，在编辑器上获取和读都填写AA就可以了】”
 * @params  player string string
 */
declare function DzAPI_Map_StoreString(whichPlayer: player, key: string, value: string): void;


/**
 * 读取服务器上的字符串变量
 * 获取 ${whichPlayer} 数据名称: ${key} 里存储的字符串
 * 这是经过封装的接口，实际Key会在原Key前面加”S”
 * @params  player string
 * @return string
 */
declare function DzAPI_Map_GetStoredString(whichPlayer: player, key: string): string;


/**
 * 服务器存储字符串（区分大小写）
 * 服务器存储字符串（区分大小写） 玩家 ${player} 名称 ${key} 值 ${value}
 * 这是经过封装的接口，实际Key会在原Key前面加”S”，与普通存档共用KEY
 * @params  player string string
 */
declare function DzAPI_Map_StoreStringEX(whichPlayer: player, key: string, value: string): void;


/**
 * 获取服务器存储的字符串（区分大小写）
 * 获取服务器存储的字符串（区分大小写） 玩家 ${player} 名称 ${key}
 * 这是经过封装的接口，实际Key会在原Key前面加”S”，用于开发者平台设置的防刷分存档，与普通存档共用KEY
 * @params  player string
 * @return string
 */
declare function DzAPI_Map_GetStoredStringEX(whichPlayer: player, key: string): string;


/**
 * 读取服务器存储的单位类型
 * 获取 ${whichPlayer} 数据名称: ${key} 里存储的单位类型
 * 这是经过封装的接口，实际Key会在原Key前面加”I”
 * @params  player string
 * @return integer
 */
declare function DzAPI_Map_GetStoredUnitType(whichPlayer: player, key: string): number;


/**
 * 读取服务器存储的技能类型
 * 获取 ${whichPlayer} 数据名称: ${key} 里存储的技能类型
 * 这是经过封装的接口，实际Key会在原Key前面加”I”
 * @params  player string
 * @return integer
 */
declare function DzAPI_Map_GetStoredAbilityId(whichPlayer: player, key: string): number;


/**
 * 清理服务器数据
 * 服务器数据：清理 ${whichPlayer} 数据,名称： ${key}
 * 清理封装的接口记得在前面加对应的B、I、R、S
 * @params  player string
 */
declare function DzAPI_Map_FlushStoredMission(whichPlayer: player, key: string): void;


/**
 * 天梯提交整数数据
 * 提交 ${whichPlayer} 天梯项目: ${key} 的值为: ${value}
 * @params  player string integer
 */
declare function DzAPI_Map_Ladder_SubmitIntegerData(whichPlayer: player, key: string, value: number): void;


/**
 * 天梯提交单位类型数据
 * 提高 ${whichPlayer} 天梯项目: ${key} 的值为: ${value}
 * @params  player string unitcode
 */
declare function DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer: player, key: string, value: number): void;


declare function DzAPI_Map_Stat_SubmitUnitData(whichPlayer: player, key: string, value: unit): void;


/**
 * 天梯提交技能数据
 * 提交 ${whichPlayer} 天梯项目: ${key} 的值为: ${value}
 * @params  player string abilcode
 */
declare function DzAPI_Map_Ladder_SubmitAblityIdData(whichPlayer: player, key: string, value: number): void;


/**
 * 天梯提交物品数据
 * 提交 ${whichPlayer} 天梯项目: ${key} 的值为: ${value}
 * @params  player string itemcode
 */
declare function DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer: player, key: string, value: number): void;


declare function DzAPI_Map_Ladder_SubmitItemData(whichPlayer: player, key: string, value: item): void;


/**
 * 天梯提交布尔值数据
 * 提交 ${whichPlayer} 天梯项目: ${key} 的目的 ${value}
 * @params  player string completionoption
 */
declare function DzAPI_Map_Ladder_SubmitBooleanData(whichPlayer: player, key: string, value: boolean): void;


/**
 * 天梯提交获得称号
 * 提交 ${whichPlayer} 获得称号: ${key}
 * @params  player string
 */
declare function DzAPI_Map_Ladder_SubmitTitle(whichPlayer: player, value: string): void;


/**
 * 天梯提交玩家排名
 * 设置 ${whichPlayer} 的游戏排名为: ${value}
 * @params  player integer
 */
declare function DzAPI_Map_Ladder_SubmitPlayerRank(whichPlayer: player, value: number): void;


/**
 * 天梯设置玩家额外分
 * 设置 ${whichPlayer} 的额外分为 ${value}
 * 最多30分
 * @params  player integer
 */
declare function DzAPI_Map_Ladder_SubmitPlayerExtraExp(whichPlayer: player, value: number): void;


/**
 * 玩家累计游戏局数
 * 获取 ${whichPlayer} 游戏局数
 * 获取玩家中游戏局数
 * @params  player
 * @return integer
 */
declare function DzAPI_Map_PlayedGames(whichPlayer: player): number;


/**
 * 评论次数【废弃】
 * 获取 ${whichPlayer} 评论次数
 * 获取玩家的评论次数，该功能已失效，始终返回1
 * @params  player
 * @return integer
 */
declare function DzAPI_Map_CommentCount(whichPlayer: player): number;


/**
 * 玩家好友数量【废弃】
 * 获取 ${whichPlayer} 好友数量
 * 该功能废弃
 * @params  player
 * @return integer
 */
declare function DzAPI_Map_FriendCount(whichPlayer: player): number;


/**
 * 玩家是否平台认证的鉴赏家[废弃]
 *  ${whichPlayer} 是鉴赏家
 * 评论里的鉴赏家
 * @params  player
 * @return boolean
 */
declare function DzAPI_Map_IsConnoisseur(whichPlayer: player): boolean;


/**
 * 玩家是否当前地图作者
 *  ${whichPlayer} 是本图作者
 * 判断指定玩家是否为本地图的作者。
 * @params  player
 * @return boolean
 */
declare function DzAPI_Map_IsAuthor(whichPlayer: player): boolean;


/**
 * 地图评论次数
 * 该图总评论次数
 * 获取该图总评论次数
 * @return integer
 */
declare function DzAPI_Map_CommentTotalCount(): number;


/**
 * 上报埋点数据
 * 上报埋点数据： ${whichPlayer} ，埋点key： ${eventKey} ，子key： ${不填} ，次数 ${value}
 * 可以在游戏内的关键行为操作进行埋点，以便进行游戏内的玩家行为数据统计分析（比如某个英雄选择次数），上报前需先在开发者平台创建埋点。
 * @params  player string string integer
 */
declare function DzAPI_Map_Statistics(whichPlayer: player, eventKey: string, eventType: string, value: number): void;


/**
 * 是否回流/收藏过地图的用户
 *  ${whichPlayer}  ${label}
 * 超过7天未玩地图的用户再次登录被称为地图回流用户，地图回流BUFF会存在7天，7天后消失。平台回流用户的BUFF存在15天，15天后消失。建议设置奖励，鼓励玩家回来玩地图！
 * @params  player ReturnUser
 * @return boolean
 */
declare function DzAPI_Map_Returns(whichPlayer: player, label: number): boolean;


/**
 * 玩家签到天数
 *  ${whichPlayer}  ${label}
 * 获取玩家在指定地图的地图签到数据。
 * @params  player ContinuousCountType
 * @return integer
 */
declare function DzAPI_Map_ContinuousCount(whichPlayer: player, id: number): number;


/**
 * 玩家是否为真实玩家
 *  ${whichPlayer} 是否为真实玩家
 * 当作者开启匹配模式的虚拟电脑玩家(AI)补位功能后，可通过此接口判定是否真实玩家。
 * @params  player
 * @return boolean
 */
declare function DzAPI_Map_IsPlayer(whichPlayer: player): boolean;


/**
 * 玩家累计游戏时长
 *  ${whichPlayer} 累计游戏时长
 * 获取玩家在当前地图的累计游戏时长
 * @params  player
 * @return integer
 */
declare function DzAPI_Map_MapsTotalPlayed(whichPlayer: player): number;


/**
 * 玩家在指定地图的地图等级
 *  ${whichPlayer} 在地图: ${mapId} 的地图等级
 * 获取玩家在指定地图的地图等级。
 * @params  player integer
 * @return integer
 */
declare function DzAPI_Map_MapsLevel(whichPlayer: player, mapId: number): number;


/**
 * 玩家在指定地图累计消耗平台金币【已废弃】
 *  ${whichPlayer} 在地图： ${mapId} 的平台金币消耗
 * 获取玩家在指定地图的累计消耗平台金币数量。
 * @params  player integer
 * @return integer
 */
declare function DzAPI_Map_MapsConsumeGold(whichPlayer: player, mapId: number): number;


/**
 * 玩家在指定地图的平台木材消耗【已废弃】
 *  ${whichPlayer} 地图： ${mapId} 的平台木材消耗
 * @params  player integer
 * @return integer
 */
declare function DzAPI_Map_MapsConsumeLumber(whichPlayer: player, mapId: number): number;


/**
 * 玩家在指定地图累计消费金额区间（1~199）
 *  ${whichPlayer} 在地图 ${地图id} 消费在（1~199）区间
 * 检测消费是否在（1~199）区间
 * @params  player integer
 * @return boolean
 */
declare function DzAPI_Map_MapsConsumeLv1(whichPlayer: player, mapId: number): boolean;


/**
 * 玩家在指定地图累计消费金额区间（200~499）
 *  ${whichPlayer} 在地图 ${地图id} 消费在（200~499）区间
 * 检测消费是否在（200~499）区间
 * @params  player integer
 * @return boolean
 */
declare function DzAPI_Map_MapsConsumeLv2(whichPlayer: player, mapId: number): boolean;


/**
 * 玩家在指定地图累计消费金额区间（500~999）
 *  ${whichPlayer} 在地图 ${地图id} 消费在（500~999）区间
 * 检测消费是否在（500~999）区间
 * @params  player integer
 * @return boolean
 */
declare function DzAPI_Map_MapsConsumeLv3(whichPlayer: player, mapId: number): boolean;


/**
 * 玩家在指定地图累计消费金额区间（1000+）
 *  ${whichPlayer} 在地图 ${地图id} 消费在（1000+）区间
 * 检测消费是否在（1000+）区间
 * @params  player integer
 * @return boolean
 */
declare function DzAPI_Map_MapsConsumeLv4(whichPlayer: player, mapId: number): boolean;


/**
 * 玩家是否装备指定平台装饰
 *  ${whichPlayer} 装备了 ${skinType} 的 ${id} 道具
 * 检查玩家是否装备着指定平台装饰（仅限平台和地图的合作装饰）。
 * @params  player SKINTYPE integer
 * @return boolean
 */
declare function DzAPI_Map_IsPlayerUsingSkin(whichPlayer: player, skinType: number, id: number): boolean;


/**
 * 玩家在地图社区上的互动数据
 *  ${whichPlayer}  ${whichData}
 * “获取玩家在当前地图的社区内的行为统计数据及身份数据。
 * @params  player ForumData
 * @return integer
 */
declare function DzAPI_Map_GetForumData(whichPlayer: player, whichData: number): number;


/**
 * 玩家标记
 *  ${whichPlayer} 是 ${label}
 * 获取玩家在当前地图上的身份标记（当前是否回流用户、是否收藏地图）。
 * @params  player ReturnUser
 * @return boolean
 */
declare function DzAPI_Map_PlayerFlags(whichPlayer: player, label: number): boolean;


/**
 * 打开地图商城道具购买界面
 *  ${whichPlayer} 打开地图商城道具 ${道具key} 购买界面
 * 打开游戏内置商城的道具购买页面，用于作者在地图内开发引导消费场景。购买成功后可通过玩家获得平台道具事件实现在游戏内立即生效。
 * @params  player string
 */
declare function DzAPI_Map_OpenMall(whichPlayer: player, whichkey: string): boolean;


/**
 * 上报本局游戏玩家数据
 * 上报本局游戏： ${whichPlayer} 项目： ${key} 数据： ${value}
 * 上报本局游戏的玩家数据，比如战斗力、杀敌数等。
 * @params  player string string
 */
declare function DzAPI_Map_GameResult_CommitData(whichPlayer: player, key: string, value: string): void;


/**
 * 上报本局游戏玩家称号
 * 上报本局游戏： ${whichPlayer} 称号： ${key}
 * 上报本局游戏玩家所获得的称号，请注意**称号Key**不能和[上报本局游戏玩家数据]的**数据项Key**重复。
 * @params  player string
 */
declare function DzAPI_Map_GameResult_CommitTitle(whichPlayer: player, value: string): void;


/**
 * 上报本局游戏玩家排名
 * 上报本局游戏 ${whichPlayer} 的排名为： ${value}
 * 对于乱斗模式的地图，上报每一名玩家的名次。
 * @params  player integer
 */
declare function DzAPI_Map_GameResult_CommitPlayerRank(whichPlayer: player, value: number): void;


/**
 * 上报本局游戏模式
 * 上报本局游戏模式： ${模式名}
 * 上报本局游戏所选择的地图模式名称。
 * @params  string
 */
declare function DzAPI_Map_GameResult_CommitGameMode(value: string): void;


/**
 * 上报本局游戏结果
 * 上报本局游戏结果： ${whichPlayer}  ${value}
 * 上报本局游戏玩家游戏结果（胜负），提交后会立即结束游戏。
 * @params  player winorfail
 */
declare function DzAPI_Map_GameResult_CommitGameResult(whichPlayer: player, value: number): void;


/**
 * 上报本局游戏结果（不结束游戏）
 * 上报本局游戏结果： ${whichPlayer}  ${value} [不结束游戏]
 * 上报本局游戏玩家游戏结果（胜负），提交后不会立即结束游戏，适用于游戏正常结束后还有奖励关的地图。
 * @params  player winorfail
 */
declare function DzAPI_Map_GameResult_CommitGameResultNoEnd(whichPlayer: player, value: number): void;


/**
 * 玩家本局游戏距上一局游戏的时间差
 *  ${whichPlayer} 本局游戏距上一局游戏的时间差
 * 返查询该玩家上次玩游戏时间至本次玩游戏时间的差值，可以利用此接口实现离线收益之类的功能。
 * @params  player
 * @return integer
 */
declare function DzAPI_Map_GetSinceLastPlayedSeconds(whichPlayer: player): number;


/**
 * 使用U币快速购买地图商城道具
 * 向 ${whichPlayer} 弹出商品 ${key} 的购买窗口，购买数量 ${数量} 窗口持续时间 ${时间} 秒
 * 弹出提示框询问玩家是否使用U币直接购买指定道具，作者需已在商城上架对应商品（商品信息中的**道具和数量**与接口所请求的参数一致）。如果前一次购买的提示框未关闭的情况下再次调用此接口，后续请求无效。购买成功后可通过[玩家获得平台道具事件]实现在游戏内立即生效。
 * @params  player string integer integer
 */
declare function DzAPI_Map_QuickBuy(whichPlayer: player, key: string, count: number, seconds: number): boolean;


/**
 * 关闭U币快速购买界面
 * 关闭 ${whichPlayer} U币快速购买窗口
 * 关闭最后一次打开的U币快速购买窗口，结合打开U币快速购买窗口使用。
 * @params  player
 */
declare function DzAPI_Map_CancelQuickBuy(whichPlayer: player): boolean;


/**
 * 本局游戏是否处于平台自测服
 * 本局游戏是否处于平台自测服
 * 获取当前游戏局所处的平台环境。
 * @return boolean
 */
declare function DzAPI_Map_IsMapTest(): boolean;


/**
 * 玩家地图商城道具是否读取成功
 *  ${whichPlayer} 地图商城道具是否读取成功
 * 判断本局游戏中玩家的商城道具是否正确加载。
 * @params  player
 * @return boolean
 */
declare function DzAPI_Map_PlayerLoadedItems(whichPlayer: player): boolean;


/**
 * 玩家在KK对战平台的完整昵称
 *  ${whichPlayer} 在KK对战平台的完整昵称
 * 获取玩家的KK平台完整昵称“基础昵称#编号”
 * @params  player
 * @return string
 */
declare function DzAPI_Map_GetPlayerUserName(whichPlayer: player): string;


/**
 * 获取服务器存档限制余额
 * 获取 ${whichPlayer} 存档 ${key} 上限余额
 * 获取服务器存档当天上限余额，需要在开发者平台对指定KEY设置每天上限，获取的值为余额。如存档A上限为100，当天使用了80，返回20
 * @params  player string
 * @return integer
 */
declare function KKApiGetServerValueLimitLeft(whichPlayer: player, key: string): number;


/**
 * 【随机只读存档】读取随机数的值
 * 获取 ${whichPlayer} 随机只读存档 ${key} 的值
 * 读取指定KEY生成的服务器随机数的值
 * @params  player string
 * @return string
 */
declare function KKApiGetBackendLogicStrResult(whichPlayer: player, key: string): string;


/**
 * 【随机只读存档】删除随机数
 * 删除 ${whichPlayer} 随机只读存档 ${key} 的随机数
 * 删除指定KEY生成的服务器生成的随机数
 * @params  player string
 * @return boolean
 */
declare function KKApiRemoveBackendLogicResult(whichPlayer: player, key: string): boolean;


/**
 * 【随机只读存档】剩余次数
 *  ${whichPlayer} 随机只读存档的组 ${groupkey} 今日的剩余次数
 * @params  player string
 * @return integer
 */
declare function KKApiRandomSaveGameCount(whichPlayer: player, groupkey: string): number;


/**
 * 注册随机存档更新事件
 * 注册随机存档更新事件
 * 当玩家随机存档更新的时候触发该事件。用'当前变动的随机存档'来获取变动的随机存档key。
 */
declare function KKApiTriggerRegisterBackendLogicUpdata(trig: trigger): void;


/**
 * 注册随机存档删除事件
 * 注册随机存档删除事件
 * 当玩家随机存档删除的时候触发该事件。用'当前变动的随机存档”来获取变动的随机存档key
 */
declare function KKApiTriggerRegisterBackendLogicDelete(trig: trigger): void;


/**
 * 获取变动的随机存档
 * 获取变动的随机存档
 * 用在注册随机存档更新和删除事件之后
 * @return string
 */
declare function KKApiGetSyncBackendLogic(): string;


/**
 * 是否在平台正常游戏中
 * 是否在平台正常游戏中
 * 主要试用于平台运行中区分正常游戏和观战模式，返回true代表是正常游戏模式，反之为观战模式
 * @return boolean
 */
declare function KKApiIsGameMode(): boolean;


/**
 * 初始化平台键位显示设置
 * 设置 ${whichPlayer} 的第 ${n} 套方案的键位： ${key} 设置描述： ${描述}
 * 初始化键位设置会显示在平台改键界面上，最多2套方案。
 * @params  player integer string string
 */
declare function KKApiInitializeGameKey(whichPlayer: player, setIndex: number, k: string, data: string): boolean;


/**
 * 玩家地图任务状态
 *  ${whichPlayer} 地图任务： ${setIndex} 在 ${taskstat} 状态
 * @params  player integer TaskInProgress
 * @return boolean
 */
declare function KKApiIsTaskInProgress(whichPlayer: player, setIndex: number, taskstat: number): boolean;


/**
 * 玩家地图任务当前进度
 *  ${whichPlayer} 地图任务： ${setIndex} 的当前进度
 * @params  player integer
 * @return integer
 */
declare function KKApiQueryTaskCurrentProgress(whichPlayer: player, setIndex: number): number;


/**
 * 玩家地图任务总进度
 *  ${whichPlayer} 地图任务： ${setIndex} 总进度
 * @params  player integer
 * @return integer
 */
declare function KKApiQueryTaskTotalProgress(whichPlayer: player, setIndex: number): number;


/**
 * 玩家平台该地图成就是否完成
 *  ${whichPlayer} 平台该地图成就： ${key} 已经完成
 * 完成返回true
 * @params  player string
 * @return boolean
 */
declare function KKApiIsAchievementCompleted(whichPlayer: player, id: string): boolean;


/**
 * 玩家平台该地图成就点数
 *  ${whichPlayer} 平台该地图成就点数
 * @params  player
 * @return integer
 */
declare function KKApiAchievementPoints(whichPlayer: player): number;


/**
 * 判定测试大厅游戏时长区间
 *  ${whichPlayer} 在测试大厅的游戏时长是否在区间（ ${minHours} 到 ${maxHours} ）小时
 * 判断测试大厅游戏时长是否满足该区间 ，0表示不限制，单位为小时
 * @params  player integer integer
 * @return boolean
 */
declare function KKApiPlayedTime(whichPlayer: player, minHours: number, maxHours: number): boolean;


/**
 * 【批量存档】添加条目-整数
 * 设置 ${whichPlayer} 批量存档添加条目 ${key} ，数据： ${value}
 * 对添加批量保存存档条目进行保存。KEY不区分大小写
 * @params  player string integer
 */
declare function KKApiAddBatchSaveArchiveInteger(whichPlayer: player, key: string, value: number): void;


/**
 * 【批量存档】添加条目-实数
 * 设置 ${whichPlayer} 批量存档添加条目 ${key} ，数据： ${value}
 * 对添加批量保存存档条目进行保存。KEY不区分大小写
 * @params  player string real
 */
declare function KKApiAddBatchSaveArchiveReal(whichPlayer: player, key: string, value: number): void;


/**
 * 【批量存档】添加条目-布尔值
 * 设置 ${whichPlayer} 批量存档添加条目 ${key} ，数据： ${value}
 * 对添加批量保存存档条目进行保存。KEY不区分大小写
 * @params  player string boolean
 */
declare function KKApiAddBatchSaveArchiveBoolean(whichPlayer: player, key: string, value: boolean): void;


/**
 * 【批量存档】添加条目-字符串
 * 设置 ${whichPlayer} 批量存档添加条目 ${key} ，数据： ${value}
 * 对添加批量保存存档条目进行保存。KEY不区分大小写
 * @params  player string string
 */
declare function KKApiAddBatchSaveArchiveString(whichPlayer: player, key: string, value: string): void;


/**
 * 注册天梯投降事件
 * 注册天梯投降事件
 * 当玩家在天梯投降时候触发该事件。用'获取投降的队伍id'来获取。
 */
declare function KKApiTriggerRegisterLadderSurrender(trig: trigger): void;


/**
 * 获取天梯投降的队伍ID
 * 获取天梯投降的队伍ID
 * 用于天梯投降事件动作里
 * @return integer
 */
declare function KKApiGetLadderSurrenderTeamId(): number;


/**
 * 玩家在公会的等级
 * 获取 ${whichPlayer} 公会等级
 * 获取玩家公会等级
 * @params  player
 * @return integer
 */
declare function KKApiGetGuildLevel(whichPlayer: player): number;


/**
 * 宠物探险次数
 *  ${whichPlayer} 宠物探险次数
 * 获取平台宠物探险次数
 * @params  player
 * @return integer
 */
declare function KKApiMapExplorationNum(whichPlayer: player): number;


/**
 * 宠物探险时间
 *  ${whichPlayer} 宠物探险时间
 * 获取平台宠物探险时间
 * @params  player
 * @return integer
 */
declare function KKApiMapExplorationTime(whichPlayer: player): number;


/**
 * 测试大厅预约人数
 * 测试大厅预约人数
 * @return integer
 */
declare function KKApiMapOrderNum(): number;


/**
 * 发送云脚本数据
 * 发送云脚本数据 ${玩家}  ${事件}  ${数据}
 * 发送云脚本数据
 * @params  player string string
 */
declare function KKApiMlScriptEvent(whichPlayer: player, eventName: string, payload: string): boolean;


/**
 * 事件响应 - 商城道具最后变动的数量
 *  ${whichPlayer} 商城道具： ${key} 最后更新的数量
 * 获取的是当次玩家商城背包新增或消耗的数量，如果是时效型道具获取的是剩余时间，可以用于【玩家获取商城道具事件】、【玩家消耗使用商城道具事件】和【玩家删除商城道具事件】后。
 * @params  player string
 * @return integer
 */
declare function KKApiGetMallItemUpdateCount(whichPlayer: player, key: string): number;


/**
 * 获取地图版本号[new]
 * 获取地图版本号
 * @return string
 */
declare function KKApiGetMapVersion(): string;


/**
 * 获取赛事模式[new]
 * 获取赛事模式
 * @return string
 */
declare function KKApiGetCompetitionGameMode(): string;


/**
 * 获取玩家当天总游戏局数[new]
 * 获取 ${whichPlayer} 当天总游戏局数
 * 为当天玩家玩该地图的有效局数，10分钟算一局，每天05:00刷新
 * @params  player
 * @return integer
 */
declare function KKApiDayRounds(whichPlayer: player): number;


/**
 * 获取玩家在指定地图会员等级[new]
 * 获取 ${whichPlayer} 在地图 ${mapId} 的会员等级
 * @params  player integer
 * @return integer
 */
declare function KKApiConsumeLevel(whichPlayer: player, mapId: number): number;


/**
 * 判断玩家当前地图在游戏大厅置顶状态[new]
 *  ${whichPlayer} 当前地图在游戏大厅置顶状态
 * 玩家在游戏大厅首页置顶该地图后返回true
 * @params  player
 * @return boolean
 */
declare function KKApiIsPinned(whichPlayer: player): boolean;


/**
 * 仅只读存档[new]
 * 只读存档: 读取玩家 ${player} 名称 ${key} 的数据
 * 只能读取只读存档，不可读取可写存档
 * @params  player string
 * @return string
 */
declare function DzAPI_Map_SystemArchive(whichPlayer: player, key: string): string;


/**
 * 获取玩家赏金助力榜排名
 * 获取 ${whichPlayer} 赏金助力榜排名
 * 0=未上榜，1=第一名，依此类推
 * @params  player
 * @return integer
 */
declare function KKApiBountyRank(whichPlayer: player): number;


/**
 * 获取玩家赏金助力值
 * 获取 ${whichPlayer} 赏金助力值
 * 获取玩家赏金助力值
 * @params  player
 * @return integer
 */
declare function KKApiBountyValue(whichPlayer: player): number;


declare function Init(): void;


/**
 * 世界坐标 - 绑定Frame到物品实时位置
 * 绑定Frame ${frame} 到物品 ${item} 的实时位置, 偏移世界坐标(X ${X} , Y ${Y} , Z ${Z})偏移屏幕坐标(X ${SX} , Y ${SY})战争迷雾可见 ${fog_visible} 物品隐藏时一起隐藏 ${item_visible}
 * 绑定后会清除控件锚点, 每帧设置控件中心坐标为 世界坐标+偏移 转屏幕坐标 +偏移后的位置, 超出屏幕，或者不满足条件的情况下会对控件隐藏, 在删除物品，或者删除控件前解除绑定。
 * @params  frame item real real real real real boolean boolean
 */
declare function KKFrameBindItem(frame: number, u: widget, world_x: number, world_y: number, world_z: number, screen_x: number, screen_y: number, fog_visible: boolean, item_visible: boolean): void;


/**
 * 单位 - 是否可以被放置到点
 * 判断单位 ${单位} 是否可以放置到该点 ${location}
 * 判断地面通行条件以及碰撞范围
 * @params  unit location
 * @return boolean
 */
declare function KKUnitCanPlaceAroundLoc(obj: widget, loc: location): boolean;


/**
 * 物品 - 是否可以被放置到坐标
 * 判断物品 ${物品} 是否可以放置到该坐标(${X轴}, ${Y轴})
 * 判断地面通行条件以及碰撞范围
 * @params  item real real
 * @return boolean
 */
declare function kkUnitCanPlaceAroundItem(obj: widget, x: number, y: number): boolean;


/**
 * 物品 - 是否可以被放置到点
 * 判断物品 ${物品} 是否可以放置到该点 ${location}
 * 判断地面通行条件以及碰撞范围
 * @params  item location
 * @return boolean
 */
declare function KKUnitCanPlaceAroundLocItem(obj: widget, loc: location): boolean;


/**
 * 点 - 是否可以能够通过物体
 * 判断 地形点 ${location} 是否可以能够通过 碰撞范围 ${collision} 碰撞类型 ${collision_type} 的物体
 * 根据碰撞范围 碰撞类型判断地面通行条件
 * @params  location real CollisionType
 * @return boolean
 */
declare function KKPositionCanPlaceAroundLoc(loc: location, collision_size: number, collision_type: number): boolean;


/**
 * 转化 - 字符串转目标允许
 * 转换 ${字符串} 为目标允许
 * 例如“ground,friend,vuln,invu”
 * @params  string
 * @return TargetFlags
 */
declare function KKConvertStr2Targs(s: string): number;


/**
 * 特效组 - 创建空的特效组
 * 创建空的特效组
 * 会创建特效组,需要排泄,可以用最后创建的特效组
 * @return dzeffectgroup
 */
declare function DzEffectGroupCreateBJ(): dzeffectgroup;


/**
 * 特效组 - 选取范围内的特效
 * 选取 X:${x} Y:${y} 范围:${range} 内的特效
 * 会创建特效组,需要排泄,可以用最后创建的特效组
 * @params  real real real
 * @return dzeffectgroup
 */
declare function DzEffectGroupCreateEnumRangeBJ(x: number, y: number, range: number): dzeffectgroup;


/**
 * 特效组 - 选取区域内的特效
 * 选取 ${rect} 内的特效到新建特效组
 * 会创建特效组,需要排泄,可以用最后创建的特效组
 * @params  rect
 * @return dzeffectgroup
 */
declare function DzEffectGroupCreateEnumRectBJ(whichRect: rect): dzeffectgroup;


/**
 * 特效组 - 添加
 * 添加 ${特效} 到 ${特效组} 允许重复 ${flag}
 * @params  effect dzeffectgroup boolean
 */
declare function DzEffectGroupAddBJ(whichEffect: effect, whichEffectGroup: dzeffectgroup, allowDuplicate: boolean): number;


/**
 * 特效组 - 添加范围内的特效
 * 选取 X:${x} Y:${y} 范围:${range} 内的特效添加到 ${特效组} (清空${clear} 允许重复${duplicate})
 * @params  real real real dzeffectgroup boolean boolean
 */
declare function DzEffectGroupEnumRangeBJ(x: number, y: number, range: number, whichEffectGroup: dzeffectgroup, clear: boolean, allowDuplicate: boolean): number;


/**
 * 特效组 - 添加区域内的特效
 * 选取 ${rect} 内的特效添加到 ${特效组} (清空${clear} 允许重复${duplicate})
 * @params  rect dzeffectgroup boolean boolean
 */
declare function DzEffectGroupEnumRectBJ(whichRect: rect, whichEffectGroup: dzeffectgroup, clear: boolean, allowDuplicate: boolean): number;


/**
 * 特效 - 延迟立即删除(不播放死亡动画)
 * 在 ${duration} 秒延迟后, 立即删除 ${特效}
 * 不会播放死亡动画且时间到会立即删除特效
 * @params  real effect
 */
declare function DzRemoveEffectTimedBJ(time: number, whichEffect: effect): boolean;


/**
 * 特效 - 延迟删除
 * 在 ${duration} 秒延迟后, 删除 ${特效}
 * 时间到后会播放死亡动画并在平衡性常数时间后删除特效
 * @params  real effect
 */
declare function DzDieEffectTimedBJ(time: number, whichEffect: effect): boolean;


/**
 * 特效组 - 获取 特效组 的整数地址
 * 获取 ${特效组} 的整数地址
 * 可以把一个特效组转成整数，方便存入缓存或Hash表。
 * @params  dzeffectgroup
 * @return integer
 */
declare function DzGetEffectGroupIdBJ(g: dzeffectgroup): number;

