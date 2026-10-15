/** @noSelfInFile **/
declare interface agent extends handle {
    __agent: never;
}

declare interface event extends agent {
    __event: never;
}

declare interface player extends agent {
    __player: never;
}

declare interface widget extends agent {
    __widget: never;
}

declare interface unit extends widget {
    __unit: never;
}

declare interface destructable extends widget {
    __destructable: never;
}

declare interface item extends widget {
    __item: never;
}

declare interface ability extends agent {
    __ability: never;
}

declare interface buff extends ability {
    __buff: never;
}

declare interface force extends agent {
    __force: never;
}

declare interface group extends agent {
    __group: never;
}

declare interface trigger extends agent {
    __trigger: never;
}

declare interface triggercondition extends agent {
    __triggercondition: never;
}

declare interface triggeraction extends handle {
    __triggeraction: never;
}

declare interface timer extends agent {
    __timer: never;
}

declare interface location extends agent {
    __location: never;
}

declare interface region extends agent {
    __region: never;
}

declare interface rect extends agent {
    __rect: never;
}

declare interface boolexpr extends agent {
    __boolexpr: never;
}

declare interface sound extends agent {
    __sound: never;
}

declare interface conditionfunc extends boolexpr {
    __conditionfunc: never;
}

declare interface filterfunc extends boolexpr {
    __filterfunc: never;
}

declare interface unitpool extends handle {
    __unitpool: never;
}

declare interface itempool extends handle {
    __itempool: never;
}

declare interface race extends handle {
    __race: never;
}

declare interface alliancetype extends handle {
    __alliancetype: never;
}

declare interface racepreference extends handle {
    __racepreference: never;
}

declare interface gamestate extends handle {
    __gamestate: never;
}

declare interface igamestate extends gamestate {
    __igamestate: never;
}

declare interface fgamestate extends gamestate {
    __fgamestate: never;
}

declare interface playerstate extends handle {
    __playerstate: never;
}

declare interface playerscore extends handle {
    __playerscore: never;
}

declare interface playergameresult extends handle {
    __playergameresult: never;
}

declare interface unitstate extends handle {
    __unitstate: never;
}

declare interface aidifficulty extends handle {
    __aidifficulty: never;
}

declare interface eventid extends handle {
    __eventid: never;
}

declare interface gameevent extends eventid {
    __gameevent: never;
}

declare interface playerevent extends eventid {
    __playerevent: never;
}

declare interface playerunitevent extends eventid {
    __playerunitevent: never;
}

declare interface unitevent extends eventid {
    __unitevent: never;
}

declare interface limitop extends eventid {
    __limitop: never;
}

declare interface widgetevent extends eventid {
    __widgetevent: never;
}

declare interface dialogevent extends eventid {
    __dialogevent: never;
}

declare interface unittype extends handle {
    __unittype: never;
}

declare interface gamespeed extends handle {
    __gamespeed: never;
}

declare interface gamedifficulty extends handle {
    __gamedifficulty: never;
}

declare interface gametype extends handle {
    __gametype: never;
}

declare interface mapflag extends handle {
    __mapflag: never;
}

declare interface mapvisibility extends handle {
    __mapvisibility: never;
}

declare interface mapsetting extends handle {
    __mapsetting: never;
}

declare interface mapdensity extends handle {
    __mapdensity: never;
}

declare interface mapcontrol extends handle {
    __mapcontrol: never;
}

declare interface playerslotstate extends handle {
    __playerslotstate: never;
}

declare interface volumegroup extends handle {
    __volumegroup: never;
}

declare interface camerafield extends handle {
    __camerafield: never;
}

declare interface camerasetup extends handle {
    __camerasetup: never;
}

declare interface playercolor extends handle {
    __playercolor: never;
}

declare interface placement extends handle {
    __placement: never;
}

declare interface startlocprio extends handle {
    __startlocprio: never;
}

declare interface raritycontrol extends handle {
    __raritycontrol: never;
}

declare interface blendmode extends handle {
    __blendmode: never;
}

declare interface texmapflags extends handle {
    __texmapflags: never;
}

declare interface effect extends agent {
    __effect: never;
}

declare interface effecttype extends handle {
    __effecttype: never;
}

declare interface weathereffect extends handle {
    __weathereffect: never;
}

declare interface terraindeformation extends handle {
    __terraindeformation: never;
}

declare interface fogstate extends handle {
    __fogstate: never;
}

declare interface fogmodifier extends agent {
    __fogmodifier: never;
}

declare interface dialog extends agent {
    __dialog: never;
}

declare interface button extends agent {
    __button: never;
}

declare interface quest extends agent {
    __quest: never;
}

declare interface questitem extends agent {
    __questitem: never;
}

declare interface defeatcondition extends agent {
    __defeatcondition: never;
}

declare interface timerdialog extends agent {
    __timerdialog: never;
}

declare interface leaderboard extends agent {
    __leaderboard: never;
}

declare interface multiboard extends agent {
    __multiboard: never;
}

declare interface multiboarditem extends agent {
    __multiboarditem: never;
}

declare interface trackable extends agent {
    __trackable: never;
}

declare interface gamecache extends agent {
    __gamecache: never;
}

declare interface version extends handle {
    __version: never;
}

declare interface itemtype extends handle {
    __itemtype: never;
}

declare interface texttag extends handle {
    __texttag: never;
}

declare interface attacktype extends handle {
    __attacktype: never;
}

declare interface damagetype extends handle {
    __damagetype: never;
}

declare interface weapontype extends handle {
    __weapontype: never;
}

declare interface soundtype extends handle {
    __soundtype: never;
}

declare interface lightning extends handle {
    __lightning: never;
}

declare interface pathingtype extends handle {
    __pathingtype: never;
}

declare interface image extends handle {
    __image: never;
}

declare interface ubersplat extends handle {
    __ubersplat: never;
}

declare interface hashtable extends agent {
    __hashtable: never;
}

/**
 * made by solar
 */

//solar made
/**
 * 转换种族
 */
declare function ConvertRace(i: number): race;

/**
 * 转换联盟类型
 */
declare function ConvertAllianceType(i: number): alliancetype;

/**
 * 转换种族
 */
declare function ConvertRacePref(i: number): racepreference;

/**
 * 转换I游戏状态
 */
declare function ConvertIGameState(i: number): igamestate;

/**
 * 转换F游戏状态
 */
declare function ConvertFGameState(i: number): fgamestate;

/**
 * 玩家状态转换
 */
declare function ConvertPlayerState(i: number): playerstate;

/**
 * 转换玩家得分
 */
declare function ConvertPlayerScore(i: number): playerscore;

/**
 * 转换玩家游戏结果
 */
declare function ConvertPlayerGameResult(i: number): playergameresult;

/**
 * 转换单位状态
 */
declare function ConvertUnitState(i: number): unitstate;

/**
 * 转换AI难度
 */
declare function ConvertAIDifficulty(i: number): aidifficulty;

/**
 * 转换游戏事件
 */
declare function ConvertGameEvent(i: number): gameevent;

/**
 * 转换玩家事件
 */
declare function ConvertPlayerEvent(i: number): playerevent;

/**
 * 转换玩家单位事件
 */
declare function ConvertPlayerUnitEvent(i: number): playerunitevent;

/**
 * 转换组件事件
 */
declare function ConvertWidgetEvent(i: number): widgetevent;

/**
 * 转换对话框事件
 */
declare function ConvertDialogEvent(i: number): dialogevent;

/**
 * 转换单位事件
 */
declare function ConvertUnitEvent(i: number): unitevent;

/**
 * 转换限制操作
 */
declare function ConvertLimitOp(i: number): limitop;

/**
 * 转换单位类型
 */
declare function ConvertUnitType(i: number): unittype;

/**
 * 转换游戏速度
 */
declare function ConvertGameSpeed(i: number): gamespeed;

/**
 * 转换位置
 */
declare function ConvertPlacement(i: number): placement;

/**
 * 转换起始位置优先
 */
declare function ConvertStartLocPrio(i: number): startlocprio;

/**
 * 游戏难度
 */
declare function ConvertGameDifficulty(i: number): gamedifficulty;

/**
 * 游戏类型
 */
declare function ConvertGameType(i: number): gametype;

/**
 * 地图标记
 */
declare function ConvertMapFlag(i: number): mapflag;

/**
 * 地图可见性
 */
declare function ConvertMapVisibility(i: number): mapvisibility;

/**
 * 地图设置
 */
declare function ConvertMapSetting(i: number): mapsetting;

/**
 * 地图密度
 */
declare function ConvertMapDensity(i: number): mapdensity;

/**
 * 地图控制器
 */
declare function ConvertMapControl(i: number): mapcontrol;

/**
 * 玩家颜色
 */
declare function ConvertPlayerColor(i: number): playercolor;

/**
 * 玩家位置状态
 */
declare function ConvertPlayerSlotState(i: number): playerslotstate;

/**
 * 音量组
 */
declare function ConvertVolumeGroup(i: number): volumegroup;

/**
 * 照相机领域
 */
declare function ConvertCameraField(i: number): camerafield;

/**
 * 混合模式
 */
declare function ConvertBlendMode(i: number): blendmode;

/**
 * 罕见的控制
 */
declare function ConvertRarityControl(i: number): raritycontrol;

/**
 * 纹理贴图标志
 */
declare function ConvertTexMapFlags(i: number): texmapflags;

/**
 * 迷雾状态
 */
declare function ConvertFogState(i: number): fogstate;

/**
 * 特效类型
 */
declare function ConvertEffectType(i: number): effecttype;

/**
 * 版本
 */
declare function ConvertVersion(i: number): version;

/**
 * 物品类型
 */
declare function ConvertItemType(i: number): itemtype;

/**
 * 攻击类型
 */
declare function ConvertAttackType(i: number): attacktype;

/**
 * 伤害类型
 */
declare function ConvertDamageType(i: number): damagetype;

/**
 * 武器类型
 */
declare function ConvertWeaponType(i: number): weapontype;

/**
 * 声音类型
 */
declare function ConvertSoundType(i: number): soundtype;

/**
 * 路径类型
 */
declare function ConvertPathingType(i: number): pathingtype;

/**
 * 命令id
 */
declare function OrderId(orderIdString: string): number;

/**
 * 命令id转字符串
 */
declare function OrderId2String(orderid: number): string;

/**
 * 单位id
 */
declare function UnitId(unitIdString: string): number;

/**
 * 单位id转字符串
 */
declare function UnitId2String(unitid: number): string;

/**
 * Not currently working correctly...
 */
declare function AbilityId(abilityIdString: string): number;

declare function AbilityId2String(abilityid: number): string;

/**
 * Looks up the "name" field for any object (unit, item, ability)
 */
/**
 * 物体名称 [C]
 * ${物体ID} 的名称
 * 如'A01Z',物体编辑器中物体的名字
 * @params  scriptcode
 * @return string
 */
declare function GetObjectName(objectid: number): string;

/**
 * 获取最大的玩家数
 */
declare function GetBJMaxPlayers(): number;

/**
 * 玩家中立的受害者
 */
declare function GetBJPlayerNeutralVictim(): number;

/**
 * 获得bj玩家中立额外
 */
declare function GetBJPlayerNeutralExtra(): number;

/**
 * 获得最大玩家插槽
 */
declare function GetBJMaxPlayerSlots(): number;

/**
 * 玩家中立被动
 */
declare function GetPlayerNeutralPassive(): number;

/**
 * 玩家中立敌对
 */
declare function GetPlayerNeutralAggressive(): number;

/**
 * end global var declaration
 */
//============================================================================
/**
 * MathAPI
 */
/**
 * 转换 度 到 弧度
 * 转换角度为弧度
 * 转换角度 ${Degrees} 为弧度
 * @params  degree
 * @return radian
 */
declare function Deg2Rad(degrees: number): number;

/**
 * 转换 弧度 到 度
 * 转换弧度为角度
 * 转换弧度 ${Radians} 为角度
 * @params  radian
 * @return degree
 */
declare function Rad2Deg(radians: number): number;

/**
 * 正弦(弧度) [R]
 * Sin(${Angle})
 * 采用弧度制计算.
 * @params  radian
 * @return real
 */
declare function Sin(radians: number): number;

/**
 * 余弦(弧度) [R]
 * Cos(${Angle})
 * 采用弧度制计算.
 * @params  radian
 * @return real
 */
declare function Cos(radians: number): number;

/**
 * 正切(弧度) [R]
 * Tan(${Angle})
 * 采用弧度制计算.
 * @params  radian
 * @return real
 */
declare function Tan(radians: number): number;

/**
 * Expect values between -1 and 1...returns 0 for invalid input
 */
/**
 * 反正弦(弧度) [R]
 * Asin(${数值})
 * 采用弧度制计算. 返回弧度取值-π/2 — π/2.
 * @params  real
 * @return radian
 */
declare function Asin(y: number): number;

/**
 * 反余弦(弧度) [R]
 * Acos(${数值})
 * 采用弧度制计算. 返回弧度取值0 — π.
 * @params  real
 * @return radian
 */
declare function Acos(x: number): number;

/**
 * 反正切(弧度) [R]
 * Atan(${数值})
 * 采用弧度制计算. 返回弧度取值-π/2 — π/2.
 * @params  real
 * @return radian
 */
declare function Atan(x: number): number;

/**
 * Returns 0 if x and y are both 0
 */
/**
 * 反正切(Y:X)(弧度) [R]
 * Atan(${Y} : ${X})
 * 采用弧度制计算. 返回弧度取值-π/2 — π/2.
 * @params  real real
 * @return radian
 */
declare function Atan2(y: number, x: number): number;

/**
 * Returns 0 if x <= 0
 */
/**
 * 平方根
 * ${实数} 的平方根
 * @params  real
 * @return real
 */
declare function SquareRoot(x: number): number;

/**
 * computes x to the y power
 */
/**
 * y == 0.0             => 1
 */
/**
 * x ==0.0 and y < 0    => 0
 */

//
/**
 * 求幂
 * 幂运算
 * ${实数} 的 ${实数} 次幂
 * @params  real real
 * @return real
 */
declare function Pow(x: number, power: number): number;

declare function MathRound(r: number): number;

//============================================================================
/**
 * String Utility API
 */
/**
 * 转换整数变量为实数
 * 转换整数为实数
 * 转换 ${Integer} 为实数
 * @params  integer
 * @return real
 */
declare function I2R(i: number): number;

/**
 * 转换实数为整数
 * 转换 ${Real} 为整数
 * 舍弃小数部分.
 * 注意精度问题 R2I(67207174) = 67207176
 * @params  real
 * @return integer
 */
declare function R2I(r: number): number;

/**
 * 将整数转换为字符串
 * 转换整数为字符串
 * 转换 ${Integer} 为字符串
 * @params  integer
 * @return string
 */
declare function I2S(i: number): string;

/**
 * 将实数转换为字符串
 * 转换实数为字符串
 * 转换 ${Real} 为字符串
 * @params  real
 * @return string
 */
declare function R2S(r: number): string;

/**
 * 将实数转换为格式化字符串
 * 格式转换实数为字符串
 * 转换 ${Real} 为字符串,最小宽度: ${Width} ,小数位数: ${Precision}
 * 如: 转换(1.234, 7, 2)后为''   1.23''. 转换(1.234, 2, 5)后为''1.23400''.
 * @params  real integer integer
 * @return string
 */
declare function R2SW(r: number, width: number, precision: number): string;

/**
 * 转换字串符为整数
 * 转换字符串为整数
 * 转换 ${String} 为整数
 * @params  string
 * @return integer
 */
declare function S2I(s: string): number;

/**
 * 转换字符串为实数
 * 转换 ${String} 为实数
 * @params  string
 * @return real
 */
declare function S2R(s: string): number;

/**
 * 获取句柄id    tips:一般用于hashtable key
 * <1.24> 获取对象的h2i值 [C]
 * 转换 ${Handle} 为整数
 * 创建一个对应该handle的临时密钥,可以在哈希表中作为索引号使用.当该handle被彻底销毁时,密钥会被回收.
 * @params  handle
 * @return integer
 */
declare function GetHandleId(h: handle): number;

/**
 * 截取字符串 [R]
 * 截取 ${字符串} 的 ${Start} - ${End} 字节部分(不包括首字节)
 * 例: 截取''Grunts stink''的2 - 4字节部分 = ''un''.
 * @params  string integer integer
 * @return string
 */
declare function SubString(source: string, start: number, end: number): string;

/**
 * 字串符长度
 * 字符串长度
 * ${String}的长度
 * @params  string
 * @return integer
 */
declare function StringLength(s: string): number;

/**
 * 将字串符转换为大小写字母
 * 大小写转换
 * 转换 ${字符串} 为 ${Lower/Upper Case} 形式
 * @params  StringExt stringcaseoption
 * @return string
 */
declare function StringCase(source: string, upper: boolean): string;

/**
 * 转换字符串为哈希码
 * 获取字符串的哈希值
 * (${String})的哈希值
 * 获取一个对应该字符串的密钥，不同的字符串的密钥基本不可能相同，也很难找到两个不同的字符串他们有着相同的密钥。可以用于制作密码等功能。
 * @params  string
 * @return integer
 */
declare function StringHash(s: string): number;

/**
 * 本地字符串 [R]
 * 本地字符串: ${文字}
 * 获取ui\\framedef\\globalstrings.fdf中定义的字符串.
 * @params  string
 * @return string
 */
declare function GetLocalizedString(source: string): string;

/**
 * 本地热键
 * 本地热键
 * 本地热键: ${文字}
 * 获取ui\\miscui.txt中定义的热键.
 * @params  string
 * @return integer
 */
declare function GetLocalizedHotkey(source: string): number;

//============================================================================
/**
 * Map Setup API
 */
//
/**
 * These are native functions for describing the map configuration
 */
/**
 * these funcs should only be used in the "config" function of
 */

/**
 * a map script. The functions should also be called in this order
 */
/**
 * ( i.e. call SetPlayers before SetPlayerColor...
 */
//
declare function SetMapName(name: string): void;

declare function SetMapDescription(description: string): void;

declare function SetTeams(teamcount: number): void;

declare function SetPlayers(playercount: number): void;

declare function DefineStartLocation(whichStartLoc: number, x: number, y: number): void;

declare function DefineStartLocationLoc(whichStartLoc: number, whichLocation: location): void;

declare function SetStartLocPrioCount(whichStartLoc: number, prioSlotCount: number): void;

declare function SetStartLocPrio(whichStartLoc: number, prioSlotIndex: number, otherStartLocIndex: number, priority: startlocprio): void;

declare function GetStartLocPrioSlot(whichStartLoc: number, prioSlotIndex: number): number;

declare function GetStartLocPrio(whichStartLoc: number, prioSlotIndex: number): startlocprio;

declare function SetEnemyStartLocPrioCount(whichStartLoc: number, prioSlotCount: number): void;

declare function SetEnemyStartLocPrio(whichStartLoc: number, prioSlotIndex: number, otherStartLocIndex: number, priority: startlocprio): void;

declare function SetGameTypeSupported(whichGameType: gametype, value: boolean): void;

/**
 * 设置地图参数
 * 设置 ${Map Flag} 为 ${On/Off}
 * @params  mapflag onoffoption
 */
declare function SetMapFlag(whichMapFlag: mapflag, value: boolean): void;

declare function SetGamePlacement(whichPlacementType: placement): void;

/**
 * 设定游戏速度
 * 设定游戏速度为 ${Speed}
 * 你可以通过'游戏 - 锁定游戏速度'动作来锁定游戏速度.
 * @params  gamespeed
 */
declare function SetGameSpeed(whichspeed: gamespeed): void;

/**
 * 设置游戏难度 [R]
 * 设置当前游戏难度为 ${GameDifficulty}
 * 游戏难度只是作为运行AI的一个参考值,没有AI的地图该功能无用.
 * @params  gamedifficulty
 */
declare function SetGameDifficulty(whichdifficulty: gamedifficulty): void;

declare function SetResourceDensity(whichdensity: mapdensity): void;

declare function SetCreatureDensity(whichdensity: mapdensity): void;

/**
 * 队伍数量
 * 队伍数量
 * @return integer
 */
declare function GetTeams(): number;

/**
 * 玩家数量
 * 玩家数量
 * 地图编辑器中开启的玩家数量(1-12).
 * @return integer
 */
declare function GetPlayers(): number;

/**
 * 是否支持游戏类型
 */
declare function IsGameTypeSupported(whichGameType: gametype): boolean;

/**
 * 游戏选择类型
 */
declare function GetGameTypeSelected(): gametype;

/**
 * 地图参数
 * 地图参数设置
 * ${Map Flag} 已设置
 * @params  mapflag
 * @return boolean
 */
declare function IsMapFlagSet(whichMapFlag: mapflag): boolean;

declare function GetGamePlacement(): placement;

/**
 * 当前游戏速度
 * 当前游戏速度
 * @return gamespeed
 */
declare function GetGameSpeed(): gamespeed;

/**
 * 难度等级
 * 当前游戏难度
 * 当前游戏难度
 * @return gamedifficulty
 */
declare function GetGameDifficulty(): gamedifficulty;

declare function GetResourceDensity(): mapdensity;

declare function GetCreatureDensity(): mapdensity;

declare function GetStartLocationX(whichStartLocation: number): number;

declare function GetStartLocationY(whichStartLocation: number): number;

declare function GetStartLocationLoc(whichStartLocation: number): location;

/**
 * 设置玩家队伍
 * 设置 ${Player} 的队伍为 ${队伍ID}
 * @params  player integer
 */
declare function SetPlayerTeam(whichPlayer: player, whichTeam: number): void;

/**
 * 设置玩家开始点
 */
declare function SetPlayerStartLocation(whichPlayer: player, startLocIndex: number): void;

/**
 * forces player to have the specified start loc and marks the start loc as occupied
 */
/**
 * which removes it from consideration for subsequently placed players
 */
/**
 * ( i.e. you can use this to put people in a fixed loc and then
 */
/**
 * use random placement for any unplaced players etc )
 */

/**
 * use random placement for any unplaced players etc )
 */
/**
 * 势力玩家开始点
 */
declare function ForcePlayerStartLocation(whichPlayer: player, startLocIndex: number): void;

/**
 * 改变玩家颜色 [R]
 * 将 ${Player} 的玩家颜色改为 ${Color}
 * 不改变现有单位的颜色.
 * @params  player playercolor
 */
declare function SetPlayerColor(whichPlayer: player, color: playercolor): void;

/**
 * 设置联盟状态(指定项目) [R]
 * 命令 ${Player} 对 ${Player} 设置 ${Alliance Type} ${On/Off}
 * 注意:可以对玩家自己设置联盟状态. 可用来实现一些特殊效果.
 * @params  player player alliancetype onoffoption
 */
declare function SetPlayerAlliance(sourcePlayer: player, otherPlayer: player, whichAllianceSetting: alliancetype, value: boolean): void;

/**
 * 设置税率 [R]
 * 设置 ${Player} 交纳给 ${Player} 的 ${Resource} 所得税为 ${Rate} %
 * 缴纳所得税所损失的资源可以通过'玩家得分'的'税务损失的黄金/木材'来获取. 所得税最高为100%. 且玩家1对玩家2和玩家3都交纳80%所得税.则玩家1采集黄金时将给玩家2 8黄金,玩家3 2黄金.
 * @params  player player playerresource integer
 */
declare function SetPlayerTaxRate(sourcePlayer: player, otherPlayer: player, whichResource: playerstate, rate: number): void;

/**
 * 设置玩家种族
 */
declare function SetPlayerRacePreference(whichPlayer: player, whichRacePreference: racepreference): void;

/**
 * 设置玩家种族可选
 */
declare function SetPlayerRaceSelectable(whichPlayer: player, value: boolean): void;

/**
 * 设置玩家控制器
 */
declare function SetPlayerController(whichPlayer: player, controlType: mapcontrol): void;

/**
 * 设置玩家名字
 * 更改名字
 * 更改 ${Player} 的名字为 ${文字}
 * @params  player StringExt
 */
declare function SetPlayerName(whichPlayer: player, name: string): void;

/**
 * 显示/隐藏计分屏显示 [R]
 * 设置 ${Player} ${Show/Hide} 在计分屏的显示.
 * @params  player showhideoption
 */
declare function SetPlayerOnScoreScreen(whichPlayer: player, flag: boolean): void;

/**
 * 玩家在的队伍
 * 玩家队伍
 * ${Player} 所属队伍编号
 * @params  player
 * @return integer
 */
declare function GetPlayerTeam(whichPlayer: player): number;

/**
 * 玩家开始点
 */
declare function GetPlayerStartLocation(whichPlayer: player): number;

/**
 * 玩家的颜色
 * 玩家颜色
 * ${Player} 的颜色
 * @params  player
 * @return playercolor
 */
declare function GetPlayerColor(whichPlayer: player): playercolor;

/**
 * 玩家是否可选
 */
declare function GetPlayerSelectable(whichPlayer: player): boolean;

/**
 * 玩家控制者
 * ${Player} 的控制者
 * @params  player
 * @return mapcontrol
 */
declare function GetPlayerController(whichPlayer: player): mapcontrol;

/**
 * 玩家游戏属性
 * 玩家游戏状态
 * ${Player} 的游戏状态
 * @params  player
 * @return playerslotstate
 */
declare function GetPlayerSlotState(whichPlayer: player): playerslotstate;

/**
 * 玩家税率 [R]
 * ${Player} 需要交纳给 ${Player} 的 ${Resource} 所得税
 * 所得税取值范围0-100.
 * @params  player player playerresource
 * @return integer
 */
declare function GetPlayerTaxRate(sourcePlayer: player, otherPlayer: player, whichResource: playerstate): number;

/**
 * 玩家的种族选择
 * ${Player} 选择了 ${RacePreference}
 * @params  player racepreference
 * @return boolean
 */
declare function IsPlayerRacePrefSet(whichPlayer: player, pref: racepreference): boolean;

/**
 * 玩家名字
 * ${Player} 的名字
 * @params  player
 * @return string
 */
declare function GetPlayerName(whichPlayer: player): string;

//============================================================================
/**
 * Timer API
 */

//
/**
 * 新建计时器 [R]
 * 新建的计时器
 * 会创建计时器.
 * @return timer
 */
declare function CreateTimer(): timer;

/**
 * 删除计时器 [R]
 * 删除 ${计时器}
 * 一般来说,计时器并不需要删除.只为某些有特别需求的用户提供.
 * @params  timer
 */
declare function DestroyTimer(whichTimer: timer): void;

/**
 * 运行计时器 [C]
 * @deprecated 请尽量使用BaseUtil.runLater 中心计时器替代 以减少内存泄漏
 * (或者handlerFunc 使用命名函数 以减少内存泄漏)
 * 运行计时器 [C]
 * 运行 ${计时器}，周期: ${时间} 秒，模式: ${模式}，运行函数: ${函数}
 * 等同于TimerStart
 * @params  timer real periodicoption scriptcode
 */
declare function TimerStart(whichTimer: timer, timeout: number, periodic: boolean, handlerFunc: () => void): void;

/**
 * 计时器经过的时间
 * 逝去时间
 * ${计时器} 的逝去时间
 * @params  timer
 * @return real
 */
declare function TimerGetElapsed(whichTimer: timer): number;

/**
 * 计时器剩余时间
 * ${计时器} 的剩余时间
 * @params  timer
 * @return real
 */
declare function TimerGetRemaining(whichTimer: timer): number;

/**
 * 计时器初始的时间
 * 设置时间
 * ${计时器} 设置的时间
 * @params  timer
 * @return real
 */
declare function TimerGetTimeout(whichTimer: timer): number;

/**
 * 暂停计时器 [R]
 * 暂停 ${计时器}
 * @params  timer
 */
declare function PauseTimer(whichTimer: timer): void;

/**
 * 恢复计时器 [R]
 * 恢复 ${计时器}
 * @params  timer
 */
declare function ResumeTimer(whichTimer: timer): void;

/**
 * 事件响应 - 计时器期满
 * 到期的计时器
 * 到期的计时器
 * 响应'时间 - 计时器到期'事件.
 * @return timer
 */
declare function GetExpiredTimer(): timer;

//============================================================================
/**
 * Group API
 */

//
/**
 * 新建的单位组 [R]
 * 新建的空单位组
 * 会创建单位组.
 * @return group
 */
declare function CreateGroup(): group;

/**
 * 删除单位组 [R]
 * 删除 ${单位组}
 * @params  group
 */
declare function DestroyGroup(whichGroup: group): void;

/**
 * 添加单位 [R]
 * 为 ${单位组} 添加 ${单位}
 * 并不影响单位本身.
 * @params  group unit
 */
declare function GroupAddUnit(whichGroup: group, whichUnit: unit): boolean;

/**
 * 移除单位 [R]
 * 为 ${单位组} 删除 ${单位}
 * 并不影响单位本身.
 * @params  group unit
 */
declare function GroupRemoveUnit(whichGroup: group, whichUnit: unit): boolean;

// /**
//  * 单位组添加单位组 [快速的]
//  */
// declare function BlzGroupAddGroupFast(whichGroup: group, addGroup: group): number;
// /**
//  * 单位组移除单位组 [快速的]
//  */
// declare function BlzGroupRemoveGroupFast(whichGroup: group, removeGroup: group): number;
/**
 * 清除
 * 清空单位组
 * 清空 ${单位组} 内所有单位
 * 并不影响单位本身.
 * @params  group
 */
declare function GroupClear(whichGroup: group): void;

// /**
//  * 获取单组大小
//  */
// declare function BlzGroupGetSize(whichGroup: group): number;
//
// /**
//  * 获取单位组中下标的单位
//  */
// declare function BlzGroupUnitAt(whichGroup: group, index: number): unit;
/**
 * 通过单位类型匹配单位
 */
declare function GroupEnumUnitsOfType(whichGroup: group, unitname: string, filter: boolexpr): void;

/**
 * 通过玩家匹配单位
 */
declare function GroupEnumUnitsOfPlayer(whichGroup: group, whichPlayer: player, filter: boolexpr): void;

/**
 * 通过单位类型匹配单位 [countLimit 上限]
 */
declare function GroupEnumUnitsOfTypeCounted(whichGroup: group, unitname: string, filter: boolexpr, countLimit: number): void;

/**
 * 匹配范围单位
 */
declare function GroupEnumUnitsInRect(whichGroup: group, r: rect, filter: boolexpr): void;

/**
 * 匹配范围单位 [countLimit 上限]
 */
declare function GroupEnumUnitsInRectCounted(whichGroup: group, r: rect, filter: boolexpr, countLimit: number): void;

/**
 * 选取单位添加到单位组(坐标)
 * 为 ${单位组} 添加以( ${坐标X} , ${坐标Y} )为圆心，${半径} 为半径的圆范围内，满足 ${条件} 的单位
 * @params  group real real real boolexpr
 */
declare function GroupEnumUnitsInRange(whichGroup: group, x: number, y: number, radius: number, filter: boolexpr): void;

/**
 * 选取单位添加到单位组(点)
 * 为 ${单位组} 添加以 ${点} 为圆心，${半径} 为半径的圆范围内，满足 ${条件} 的单位
 * @params  group location real boolexpr
 */
declare function GroupEnumUnitsInRangeOfLoc(whichGroup: group, whichLocation: location, radius: number, filter: boolexpr): void;

/**
 * 选取单位添加到单位组(坐标)(不建议使用)
 * 为 ${单位组} 添加以( ${坐标X} , ${坐标Y} )为圆心，${半径} 为半径的圆范围内，满足 ${条件} 的单位。无效项( ${N} )
 * 最后一项是无效项，建议用上一个UI
 * @params  group real real real boolexpr integer
 */
declare function GroupEnumUnitsInRangeCounted(whichGroup: group, x: number, y: number, radius: number, filter: boolexpr, countLimit: number): void;

/**
 * 选取单位添加到单位组(点)(不建议使用)
 * 为 ${单位组} 添加以 ${点} 为圆心，${半径} 为半径的圆范围内，满足 ${条件} 的单位。无效项( ${N} )
 * 最后一项是无效项，建议用上一个UI
 * @params  group location real boolexpr integer
 */
declare function GroupEnumUnitsInRangeOfLocCounted(whichGroup: group, whichLocation: location, radius: number, filter: boolexpr, countLimit: number): void;

declare function GroupEnumUnitsSelected(whichGroup: group, whichPlayer: player, filter: boolexpr): void;

/**
 * 发送单位组命令到 没有目标
 * 发布命令(无目标)
 * 对 ${单位组}发布 ${Order}
 * 最多只能对单位组中12个单位发布命令.
 * @params  group unitordernotarg
 */
declare function GroupImmediateOrder(whichGroup: group, order: string): boolean;

/**
 * 发布命令(无目标)(ID)
 * 对 ${单位组}发布 ${Order}
 * 最多只能对单位组中12个单位发布命令.
 * @params  group ordercodenotarg
 */
declare function GroupImmediateOrderById(whichGroup: group, order: number): boolean;

/**
 * 发布命令(指定坐标) [R]
 * 对 ${单位组}发布 ${Order} 命令,目标点:(${X},${Y})
 * 最多只能对单位组中12个单位发布命令.
 * @params  group unitorderptarg real real
 */
declare function GroupPointOrder(whichGroup: group, order: string, x: number, y: number): boolean;

/**
 * 发送单位组命令到 点
 * 发布命令(指定点)
 * 对 ${单位组}发布 ${Order} 命令,目标: ${指定点}
 * 最多只能对单位组中12个单位发布命令.
 * @params  group unitorderptarg location
 */
declare function GroupPointOrderLoc(whichGroup: group, order: string, whichLocation: location): boolean;

/**
 * 发布命令(指定坐标)(ID)
 * 对 ${单位组}发布 ${Order} 命令,目标点:(${X},${Y})
 * 最多只能对单位组中12个单位发布命令.
 * @params  group ordercodeptarg real real
 */
declare function GroupPointOrderById(whichGroup: group, order: number, x: number, y: number): boolean;

/**
 * 发布命令(指定点)(ID)
 * 对 ${单位组}发布 ${Order} 命令,目标: ${指定点}
 * 最多只能对单位组中12个单位发布命令.
 * @params  group ordercodeptarg location
 */
declare function GroupPointOrderByIdLoc(whichGroup: group, order: number, whichLocation: location): boolean;

/**
 * 发送单位组命令到 单位
 * 发布命令(指定单位)
 * 对 ${单位组} 发布 ${Order} 命令,目标: ${单位}
 * 最多只能对单位组中12个单位发布命令.
 * @params  group unitorderutarg unit
 */
declare function GroupTargetOrder(whichGroup: group, order: string, targetWidget: widget): boolean;

/**
 * 发布命令(指定单位)(ID)
 * 对 ${单位组} 发布 ${Order} 命令,目标: ${单位}
 * 最多只能对单位组中12个单位发布命令.
 * @params  group ordercodeutarg unit
 */
declare function GroupTargetOrderById(whichGroup: group, order: number, targetWidget: widget): boolean;

/**
 * This will be difficult to support with potentially disjoint, cell-based regions
 */
/**
 * as it would involve enumerating all the cells that are covered by a particularregion
 */
/**
 * a better implementation would be a trigger that adds relevant units as they enter
 */

/**
 * and removes them if they leave...
 */
/**
 * 选取所有单位在单位组做 多动作
 * @deprecated 请使用GroupUtil.for  以减少内存泄漏
 * 选取单位组内单位做动作
 * 选取 ${单位组} 内所有单位 ${做动作}
 * 使用'选取单位'来取代相应的单位. 对于单位组内每个单位都会运行一次动作(包括死亡的,不包括隐藏的). 等待不能在组动作中运行.
 * @params  group code
 */
declare function ForGroup(whichGroup: group, callback: () => void): void;

/**
 * 单位组中第一个单位
 * ${单位组} 中第一个单位
 * @params  group
 * @return unit
 */
declare function FirstOfGroup(whichGroup: group): unit;

//============================================================================
/**
 * Force API
 */

//
/**
 * 新建玩家组 [R]
 * 新建空玩家组
 * 会创建玩家组.
 * @return force
 */
declare function CreateForce(): force;

/**
 * 删除玩家组 [R]
 * 删除 ${玩家组}
 * 注意: 不要删除系统预置的玩家组.
 * @params  force
 */
declare function DestroyForce(whichForce: force): void;

/**
 * 添加玩家 [R]
 *  ${玩家组} 添加 ${玩家}
 * 并不影响玩家本身.
 * @params  force player
 */
declare function ForceAddPlayer(whichForce: force, whichPlayer: player): void;

/**
 * 移除玩家 [R]
 * 从 ${玩家组} 中移除 ${玩家}
 * 并不影响玩家本身.
 * @params  force player
 */
declare function ForceRemovePlayer(whichForce: force, whichPlayer: player): void;

// declare function BlzForceHasPlayer(whichForce: force, whichPlayer: player): boolean;
/**
 * 清除玩家
 * 清空玩家组
 * 清空 ${玩家组} 内所有玩家
 * 并不影响玩家本身.
 * @params  force
 */
declare function ForceClear(whichForce: force): void;

/**
 * 匹配玩家
 */
declare function ForceEnumPlayers(whichForce: force, filter: boolexpr): void;

/**
 * 匹配玩家 [countLimit 上限]
 */
declare function ForceEnumPlayersCounted(whichForce: force, filter: boolexpr, countLimit: number): void;

/**
 * 匹配联盟
 */
declare function ForceEnumAllies(whichForce: force, whichPlayer: player, filter: boolexpr): void;

/**
 * 匹配敌对
 */
declare function ForceEnumEnemies(whichForce: force, whichPlayer: player, filter: boolexpr): void;

/**
 * 选取所有玩家在玩家组做动作(单一的)
 * 选取玩家组内玩家做动作
 * 选取 ${玩家组} 内所有玩家 ${做动作}
 * 玩家组动作中可使用'选取玩家'来获取对应的玩家. 等待不能在组动作中运行.
 * @params  force code
 */
declare function ForForce(whichForce: force, callback: () => void): void;

//============================================================================
/**
 * Region and Location API
 */

//
/**
 * 将坐标转换为区域
 * 新建矩形区域(指定边角坐标)
 * 左下角为(${X1}, ${Y1}),右上角为(${X2}, ${Y2})的矩形区域
 * 会创建矩形区域.
 * @params  real real real real
 * @return rect
 */
declare function Rect(minx: number, miny: number, maxx: number, maxy: number): rect;

/**
 * 将点转换为区域
 * 新建矩形区域(指定边角点)
 * 左下角为 ${点1} ,右上角为 ${点2} 的矩形区域
 * 会创建矩形区域.
 * @params  location location
 * @return rect
 */
declare function RectFromLoc(min: location, max: location): rect;

/**
 * 删除矩形区域 [R]
 * 删除 ${矩形区域}
 * @params  rect
 */
declare function RemoveRect(whichRect: rect): void;

/**
 * 设置矩形区域(指定坐标) [R]
 * 重新设置 ${矩形区域} ,左下角坐标为(${X},${Y}), 右上角坐标为(${X},${Y})
 * 该区域必须是一个变量. 重新设置矩形区域的大小和位置.
 * @params  rect real real real real
 */
declare function SetRect(whichRect: rect, minx: number, miny: number, maxx: number, maxy: number): void;

/**
 * 设置矩形区域(指定点) [R]
 * 重新设置 ${矩形区域} ,左下角点为 ${点} 右上角点为 ${点}
 * 该区域必须是一个变量. 重新设置矩形区域的大小和位置.
 * @params  rect location location
 */
declare function SetRectFromLoc(whichRect: rect, min: location, max: location): void;

/**
 * 移动矩形区域(指定坐标) [R]
 * 移动 ${矩形区域} 到(${X},${Y})
 * 该区域必须是一个变量. 目标点将作为该区域的新中心点.
 * @params  rect real real
 */
declare function MoveRectTo(whichRect: rect, newCenterX: number, newCenterY: number): void;

/**
 * 移动区域
 * 移动矩形区域(指定点)
 * 移动 ${矩形区域} 到 ${目标点}
 * 该区域必须是一个变量. 目标点将作为该区域的新中心点.
 * @params  rect location
 */
declare function MoveRectToLoc(whichRect: rect, newCenterLoc: location): void;

/**
 * 区域中心的 X 坐标
 * 中心X坐标
 * ${矩形区域} 的中心X坐标
 * @params  rect
 * @return real
 */
declare function GetRectCenterX(whichRect: rect): number;

/**
 * 区域中心的 Y 坐标
 * 中心Y坐标
 * ${矩形区域} 的中心Y坐标
 * @params  rect
 * @return real
 */
declare function GetRectCenterY(whichRect: rect): number;

/**
 * 区域最小 X 坐标
 * 左下角X坐标
 * ${矩形区域} 的左下角X坐标
 * @params  rect
 * @return real
 */
declare function GetRectMinX(whichRect: rect): number;

/**
 * 区域最小 Y 坐标
 * 左下角Y坐标
 * ${矩形区域} 的左下角Y坐标
 * @params  rect
 * @return real
 */
declare function GetRectMinY(whichRect: rect): number;

/**
 * 区域最大 X 坐标
 * 右上角X坐标
 * ${矩形区域} 的右上角X坐标
 * @params  rect
 * @return real
 */
declare function GetRectMaxX(whichRect: rect): number;

/**
 * 区域最大 Y 坐标
 * 右上角Y坐标
 * ${矩形区域} 的右上角Y坐标
 * @params  rect
 * @return real
 */
declare function GetRectMaxY(whichRect: rect): number;

/**
 * 新建区域 [R]
 * 新建区域
 * 会创建一个新的不规则区域,如果不往该区域添加点或地区,则该区域无效果.
 * @return region
 */
declare function CreateRegion(): region;

/**
 * 删除不规则区域 [R]
 * 删除 ${不规则区域}
 * @params  region
 */
declare function RemoveRegion(whichRegion: region): void;

/**
 * 添加区域 [R]
 * 对 ${不规则区域} 添加 ${矩形区域}
 * 区域是游戏中一个游戏地区的集合体,可以包含地区和点.
 * @params  region rect
 */
declare function RegionAddRect(whichRegion: region, r: rect): void;

/**
 * 移除区域 [R]
 * 在 ${不规则区域} 中移除 ${矩形区域}
 * @params  region rect
 */
declare function RegionClearRect(whichRegion: region, r: rect): void;

/**
 * 添加单元点(指定坐标) [R]
 * 对 ${不规则区域} 添加单元点: (${X},${Y})
 * 单元点大小为32x32.
 * @params  region real real
 */
declare function RegionAddCell(whichRegion: region, x: number, y: number): void;

/**
 * 添加单元点(指定点) [R]
 * 对 ${不规则区域} 添加单元点: ${点}
 * 单元点大小为32x32.
 * @params  region location
 */
declare function RegionAddCellAtLoc(whichRegion: region, whichLocation: location): void;

/**
 * 移除单元点(指定坐标) [R]
 * 在 ${不规则区域} 中移除单元点: (${X},${Y})
 * 单元点大小为32x32.
 * @params  region real real
 */
declare function RegionClearCell(whichRegion: region, x: number, y: number): void;

/**
 * 移除单元点(指定点) [R]
 * 在 ${不规则区域} 中移除单元点: ${点}
 * 单元点大小为32x32.
 * @params  region location
 */
declare function RegionClearCellAtLoc(whichRegion: region, whichLocation: location): void;

/**
 * 转换坐标到点
 * 坐标点
 * 坐标(${X}, ${Y})
 * 会创建点.
 * @params  real real
 * @return location
 */
declare function Location(x: number, y: number): location;

/**
 * 清除点 [R]
 * 清除 ${点}
 * 点是堆积最多的垃圾资源,不需要再使用的点都要记得清除掉.
 * @params  location
 */
declare function RemoveLocation(whichLocation: location): void;

/**
 * 移动点 [R]
 * 移动 ${点} 到(${X},${Y})
 * 该点必须是一个变量. 因为移动一个不可重用的点是无意义的.
 * @params  location real real
 */
declare function MoveLocation(whichLocation: location, newX: number, newY: number): void;

/**
 * X 坐标
 * 点的X轴坐标
 * ${点} 的X轴坐标
 * @params  location
 * @return real
 */
declare function GetLocationX(whichLocation: location): number;

/**
 * Y 坐标
 * 点的Y轴坐标
 * ${点} 的Y轴坐标
 * @params  location
 * @return real
 */
declare function GetLocationY(whichLocation: location): number;

/**
 * This function is asynchronous. The values it returns are not guaranteed synchronous between each player.
 */

/**
 * If you attempt to use it in a synchronous manner, it may cause a desync.
 */
/**
 * 点的Z轴高度 [R]
 * ${点} 的Z轴高度
 * @params  location
 * @return real
 */
declare function GetLocationZ(whichLocation: location): number;

/**
 * 单位检查
 * 在不规则区域内 [R]
 * ${不规则区域} 内存在 ${单位}
 * @params  region unit
 * @return boolean
 */
declare function IsUnitInRegion(whichRegion: region, whichUnit: unit): boolean;

/**
 * 包含坐标
 * ${不规则区域} 内包含坐标(${X},${Y})
 * TC_REGION
 * @params  region real real
 * @return boolean
 */
declare function IsPointInRegion(whichRegion: region, x: number, y: number): boolean;

/**
 * 包含点
 * ${不规则区域} 内包含点: ${点}
 * TC_REGION
 * @params  region location
 * @return boolean
 */
declare function IsLocationInRegion(whichRegion: region, whichLocation: location): boolean;

/**
 * Returns full map bounds, including unplayable borders, in world coordinates
 */

/**
 * Returns full map bounds, including unplayable borders, in world coordinates
 */
/**
 * 获取可用地图范围
 */
declare function GetWorldBounds(): rect;

//============================================================================
/**
 * Native trigger interface
 */

//
/**
 * 新建触发 [R]
 * 新建触发
 * 会创建一个新的触发器,如果对该功能不熟悉请慎用.
 * @return trigger
 */
declare function CreateTrigger(): trigger;

/**
 * 删除触发器 [R]
 * 删除 ${触发器}
 * 对不再使用的触发器可以使用该动作来删除.
 * @params  trigger
 */
declare function DestroyTrigger(whichTrigger: trigger): void;

/**
 * 重置触发
 */
declare function ResetTrigger(whichTrigger: trigger): void;

/**
 * 打开触发器
 * 开启触发
 * 开启 ${Trigger}
 * @params  trigger
 */
declare function EnableTrigger(whichTrigger: trigger): void;

/**
 * 关掉触发器
 * 关闭触发
 * 关闭 ${Trigger}
 * @params  trigger
 */
declare function DisableTrigger(whichTrigger: trigger): void;

/**
 * 触发器打开
 * 触发开启
 * ${触发} 处于开启状态
 * @params  trigger
 * @return boolean
 */
declare function IsTriggerEnabled(whichTrigger: trigger): boolean;

/**
 * 挂起触发
 */
declare function TriggerWaitOnSleeps(whichTrigger: trigger, flag: boolean): void;

/**
 * 触发是否挂起
 */
declare function IsTriggerWaitOnSleeps(whichTrigger: trigger): boolean;

/**
 * 匹配的单位
 * 匹配单位
 * 匹配单位
 * 在'选取单位满足条件'之类功能的条件中,指代被判断单位.
 * @return unit
 */
declare function GetFilterUnit(): unit;

/**
 * 选取的单位
 * 选取单位
 * 选取单位
 * 使用'选取单位做动作'时, 指代相应的单位.
 * @return unit
 */
declare function GetEnumUnit(): unit;

/**
 * 匹配的可毁坏物
 * 匹配的可破坏物
 * 匹配的可破坏物
 * 在'选取可破坏物满足条件'之类功能的条件中,指代被判断的可破坏物.
 * @return destructable
 */
declare function GetFilterDestructable(): destructable;

/**
 * 选取的可毁坏物
 * 选取的可破坏物
 * 选取的可破坏物
 * 使用'选取可破坏物做动作'时, 指代相应的可破坏物.
 * @return destructable
 */
declare function GetEnumDestructable(): destructable;

/**
 * 匹配的物品
 * 匹配物品
 * 匹配物品
 * 在'选取物品满足条件'之类功能的条件中,指代被判断单位.
 * @return item
 */
declare function GetFilterItem(): item;

/**
 * 选取的物品
 * 选取物品
 * 选取物品
 * 使用'选取物品做动作'时, 指代相应的物品.
 * @return item
 */
declare function GetEnumItem(): item;

/**
 * 解析tags
 */
declare function ParseTags(taggedString: string): string;

/**
 * 匹配的玩家
 * 匹配玩家
 * 匹配玩家
 * 在'选取玩家满足条件'之类功能的条件中,指代被判断玩家.
 * @return player
 */
declare function GetFilterPlayer(): player;

/**
 * 选取的玩家
 * 选取玩家
 * 选取玩家
 * 使用'选取玩家做动作'时, 指代相应的玩家.
 * @return player
 */
declare function GetEnumPlayer(): player;

/**
 * 当前触发器
 * 当前触发
 * 当前所运行的触发器.
 * @return trigger
 */
declare function GetTriggeringTrigger(): trigger;

/**
 * 获取触发ID
 */
declare function GetTriggerEventId(): eventid;

/**
 * 触发器赋值统计
 * 触发条件判断次数
 * ${Trigger} 的触发条件判断次数
 * @params  trigger
 * @return integer
 */
declare function GetTriggerEvalCount(whichTrigger: trigger): number;

/**
 * 触发器运行次数统计
 * 触发动作运行次数
 * ${Trigger} 的触发动作运行次数
 * @params  trigger
 * @return integer
 */
declare function GetTriggerExecCount(whichTrigger: trigger): number;

/**
 * 运行函数 [R] (只能同步使用)
 * 运行: ${函数名}
 * 使用该功能运行的函数与触发独立, 只能运行自定义无参数函数.
 * @params  string
 */
declare function ExecuteFunc(funcName: string): void;

//============================================================================
/**
 * Boolean Expr API ( for compositing trigger conditions and unit filter funcs...)
 */
//============================================================================
/**
 * ============================================================================
 */
/**
 * and
 */
declare function And(operandA: boolexpr, operandB: boolexpr): boolexpr;

/**
 * or
 */
declare function Or(operandA: boolexpr, operandB: boolexpr): boolexpr;

/**
 * not
 */
declare function Not(operand: boolexpr): boolexpr;

/**
 * 限制条件为
 * @deprecated 推荐在动作里使用if判断条件
 */
declare function Condition(func: () => boolean): conditionfunc;

/**
 * 销毁条件
 */
declare function DestroyCondition(c: conditionfunc): void;

/**
 * 过滤
 * @deprecated 推荐在动作里使用if判断条件
 */
declare function Filter(func: () => boolean): filterfunc;

/**
 * 销毁过滤
 */
declare function DestroyFilter(f: filterfunc): void;

/**
 * 销毁条件表达式
 */
declare function DestroyBoolExpr(e: boolexpr): void;

//============================================================================
/**
 * Trigger Game Event API
 */

//============================================================================
/**
 * 变量的值
 * 实数变量事件
 * ${变量} 的值 ${Operation} ${值}
 * 这个事件只适用于实数类型的变量.
 * @params  VarAsString_Real limitop real
 */
declare function TriggerRegisterVariableEvent(whichTrigger: trigger, varName: string, opcode: limitop, limitval: number): event;

/**
 * EVENT_GAME_VARIABLE_LIMIT
 */
//constant native string GetTriggeringVariableName takes nothing returns string
/**
 * Creates it's own timer and triggers when it expires
 */

/**
 * Creates it's own timer and triggers when it expires
 */
/**
 * 注册计时器事件
 */
declare function TriggerRegisterTimerEvent(whichTrigger: trigger, timeout: number, periodic: boolean): event;

/**
 * Triggers when the timer you tell it about expires
 */

/**
 * Triggers when the timer you tell it about expires
 */
/**
 * 计时器到期事件
 */
declare function TriggerRegisterTimerExpireEvent(whichTrigger: trigger, t: timer): event;

/**
 * 游戏状态事件
 */
declare function TriggerRegisterGameStateEvent(whichTrigger: trigger, whichState: gamestate, opcode: limitop, limitval: number): event;

/**
 * 对话框事件
 */
declare function TriggerRegisterDialogEvent(whichTrigger: trigger, whichDialog: dialog): event;

/**
 * 对话框按钮被点击 [R]
 * ${对话框按钮} 被点击
 * 指定对话框按钮被点击,该事件一般需要在其他触发为其添加.
 * @params  button
 */
declare function TriggerRegisterDialogButtonEvent(whichTrigger: trigger, whichButton: button): event;

/**
 * EVENT_GAME_STATE_LIMIT
 */

/**
 * EVENT_GAME_STATE_LIMIT
 */
/**
 * 获取游戏状态
 */
declare function GetEventGameState(): gamestate;

/**
 * 比赛游戏事件
 * 该游戏将在 ${Event Type} 后结束
 * 该事件只出现在Battle.net的自动匹配游戏.
 * @params  gameevent
 */
declare function TriggerRegisterGameEvent(whichTrigger: trigger, whichGameEvent: gameevent): event;

/**
 * EVENT_GAME_VICTORY
 */

/**
 * EVENT_GAME_VICTORY
 */
/**
 * 过去胜利玩家
 */
declare function GetWinningPlayer(): player;

/**
 * 单位进入不规则区域(指定条件) [R]
 * 单位进入 ${区域} 并满足 ${条件}
 * 使用'事件响应 - 进入的单位'来响应进入该区域的单位. 该事件需要在其他触发为其添加.
 * @params  region boolexpr
 */
declare function TriggerRegisterEnterRegion(whichTrigger: trigger, whichRegion: region, filter: boolexpr): event;

/**
 * EVENT_GAME_ENTER_REGION
 */
/**
 * 触发区域 [R]
 * 触发区域
 * 响应单位进入/离开不规则区域事件.
 * @return region
 */
declare function GetTriggeringRegion(): region;

/**
 * 正在进入的单位
 * 进入的单位
 * 响应'单位进入区域'单位事件.
 * @return unit
 */
declare function GetEnteringUnit(): unit;

/**
 * EVENT_GAME_LEAVE_REGION
 */
/**
 * 单位离开不规则区域(指定条件) [R]
 * 单位离开 ${区域} 并满足 ${条件}
 * 使用'事件响应 - 离开的单位'来响应离开该区域的单位. 该事件需要在其他触发为其添加.
 * @params  region boolexpr
 */
declare function TriggerRegisterLeaveRegion(whichTrigger: trigger, whichRegion: region, filter: boolexpr): event;

/**
 * 正在离开的单位
 * 离开的单位
 * 响应'单位离开区域'单位事件.
 * @return unit
 */
declare function GetLeavingUnit(): unit;

/**
 * 鼠标点击可追踪物 [R]
 * 鼠标点击 ${可追踪物}
 * @params  trackable
 */
declare function TriggerRegisterTrackableHitEvent(whichTrigger: trigger, t: trackable): event;

/**
 * 鼠标移动到追踪对象 [R]
 * 鼠标移动到 ${可追踪物}
 * @params  trackable
 */
declare function TriggerRegisterTrackableTrackEvent(whichTrigger: trigger, t: trackable): event;

/**
 * EVENT_COMMAND_BUTTON_CLICK
 */
/**
 * 命令事件
 */
declare function TriggerRegisterCommandEvent(whichTrigger: trigger, whichAbility: number, order: string): event;

declare function TriggerRegisterUpgradeCommandEvent(whichTrigger: trigger, whichUpgrade: number): event;

/**
 * EVENT_GAME_TRACKABLE_HIT
 */

/**
 * EVENT_GAME_TRACKABLE_TRACK
 */
/**
 * 事件响应 - 触发可追踪物 [R]
 * 事件响应 - 触发可追踪物
 * @return trackable
 */
declare function GetTriggeringTrackable(): trackable;

/**
 * EVENT_DIALOG_BUTTON_CLICK
 */

/**
 * EVENT_DIALOG_BUTTON_CLICK
 */
/**
 * 获取点击按钮
 */
declare function GetClickedButton(): button;

/**
 * 获取点击对话框
 */
declare function GetClickedDialog(): dialog;

/**
 * EVENT_GAME_TOURNAMENT_FINISH_SOON
 */
/**
 * 比赛剩余时间
 * 比赛剩余时间
 * 响应'比赛事件'游戏将要结束. 单位为秒.
 * @return real
 */
declare function GetTournamentFinishSoonTimeRemaining(): number;

/**
 * 比赛结束规则
 * 比赛结束规则
 * 1表示游戏开始时间已经超过限定时,无法以平局结束. 其他值表示游戏还在初期阶段,此时退出游戏将以平局结束..
 * @return integer
 */
declare function GetTournamentFinishNowRule(): number;

/**
 * 比赛结束玩家
 */
declare function GetTournamentFinishNowPlayer(): player;

/**
 * 对战比赛得分
 * ${Player} 的当前对战比赛得分
 * 对战游戏时如果游戏时间过长,系统将以该值来决定胜负.
 * @params  player
 * @return integer
 */
declare function GetTournamentScore(whichPlayer: player): number;

/**
 * EVENT_GAME_SAVE
 */
/**
 * 储存游戏文件名
 * 存档文件名
 * 存档文件名
 * 响应'游戏 - 保存进度'事件.
 * @return string
 */
declare function GetSaveBasicFilename(): string;

//============================================================================
/**
 * Trigger Player Based Event API
 */

//============================================================================
/**
 * 玩家事件
 */
declare function TriggerRegisterPlayerEvent(whichTrigger: trigger, whichPlayer: player, whichPlayerEvent: playerevent): event;

/**
 * EVENT_PLAYER_DEFEAT
 */

/**
 * EVENT_PLAYER_VICTORY
 */
/**
 * 触发玩家
 * 触发玩家
 * @return player
 */
declare function GetTriggerPlayer(): player;

/**
 * 玩家单位事件
 */
declare function TriggerRegisterPlayerUnitEvent(whichTrigger: trigger, whichPlayer: player, whichPlayerUnitEvent: playerunitevent, filter: boolexpr): event;

/**
 * EVENT_PLAYER_HERO_LEVEL
 */

/**
 * EVENT_UNIT_HERO_LEVEL
 */
/**
 * 英雄升级
 * 升级的英雄
 * 升级的英雄
 * 响应'提升等级'单位事件.
 * @return unit
 */
declare function GetLevelingUnit(): unit;

/**
 * EVENT_PLAYER_HERO_SKILL
 */

/**
 * EVENT_UNIT_HERO_SKILL
 */
/**
 * 学习技能的英雄
 * 学习技能的英雄
 * 响应'学习技能'单位事件.
 * @return unit
 */
declare function GetLearningUnit(): unit;

/**
 * 学习技能 [R]
 * 学习技能
 * 响应'学习技能'单位事件, 指代被学习的技能.
 * @return abilcode
 */
declare function GetLearnedSkill(): number;

/**
 * 学习的技能的等级
 * 学习技能等级
 * 学习技能等级
 * 响应'学习技能'单位事件,指代被学习技能的等级. 注意,该值为学习后的等级.
 * @return integer
 */
declare function GetLearnedSkillLevel(): number;

/**
 * EVENT_PLAYER_HERO_REVIVABLE
 */
/**
 * 可复活的英雄
 * 可复活英雄
 * 可复活英雄
 * 响应'变为可复活的'单位事件.
 * @return unit
 */
declare function GetRevivableUnit(): unit;

/**
 * EVENT_PLAYER_HERO_REVIVE_START
 */
/**
 * EVENT_PLAYER_HERO_REVIVE_CANCEL
 */
/**
 * EVENT_PLAYER_HERO_REVIVE_FINISH
 */
/**
 * EVENT_UNIT_HERO_REVIVE_START
 */
/**
 * EVENT_UNIT_HERO_REVIVE_CANCEL
 */

/**
 * EVENT_UNIT_HERO_REVIVE_FINISH
 */
/**
 * 复活英雄
 * 复活英雄
 * 响应'开始/取消/完成复活'单位事件.
 * @return unit
 */
declare function GetRevivingUnit(): unit;

/**
 * EVENT_PLAYER_UNIT_ATTACKED
 */
/**
 * 攻击的单位
 * 攻击单位
 * 攻击单位
 * 响应'被攻击'单位事件.
 * @return unit
 */
declare function GetAttacker(): unit;

/**
 * EVENT_PLAYER_UNIT_RESCUED
 */
/**
 * EVENT_PLAYER_UNIT_RESCUED
 */
declare function GetRescuer(): unit;

/**
 * EVENT_PLAYER_UNIT_DEATH
 */
/**
 * 垂死的单位
 * 死亡单位
 * 死亡单位
 * 响应'死亡'单位事件.
 * @return unit
 */
declare function GetDyingUnit(): unit;

/**
 * 凶手单位
 */
declare function GetKillingUnit(): unit;

/**
 * EVENT_PLAYER_UNIT_DECAY
 */
/**
 * 尸体腐烂单位
 * 腐化的单位
 * 腐化的单位
 * 响应'开始腐化'单位事件.
 * @return unit
 */
declare function GetDecayingUnit(): unit;

/**
 * EVENT_PLAYER_UNIT_SELECTED
 */
//constant native GetSelectedUnit takes nothing returns unit
/**
 * EVENT_PLAYER_UNIT_CONSTRUCT_START
 */
/**
 * 正在建造的建筑
 * 正在建造的建筑
 * 响应'开始建造建筑'单位事件.
 * @return unit
 */
declare function GetConstructingStructure(): unit;

/**
 * EVENT_PLAYER_UNIT_CONSTRUCT_FINISH
 */

/**
 * EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL
 */
/**
 * 取消建造中的建筑
 * 被取消的建筑
 * 被取消的建筑
 * 响应'取消建造建筑'单位事件.
 * @return unit
 */
declare function GetCancelledStructure(): unit;

/**
 * 已建造的建筑
 * 完成的建筑
 * 完成的建筑
 * 响应'完成建造建筑'单位事件.
 * @return unit
 */
declare function GetConstructedStructure(): unit;

/**
 * EVENT_PLAYER_UNIT_RESEARCH_START
 */
/**
 * EVENT_PLAYER_UNIT_RESEARCH_CANCEL
 */

/**
 * EVENT_PLAYER_UNIT_RESEARCH_FINISH
 */
/**
 * 研究科技单位
 * 研究科技的单位
 * 研究科技的单位
 * 响应'开始/取消/完成科技研究'单位事件.
 * @return unit
 */
declare function GetResearchingUnit(): unit;

/**
 * 研究的 科技-类型
 * 被研究科技
 * 被研究科技
 * 响应'开始/取消/完成科技研究'单位事件.
 * @return techcode
 */
declare function GetResearched(): number;

/**
 * EVENT_PLAYER_UNIT_TRAIN_START
 */
/**
 * EVENT_PLAYER_UNIT_TRAIN_CANCEL
 */
/**
 * EVENT_PLAYER_UNIT_TRAIN_FINISH
 */

/**
 * EVENT_PLAYER_UNIT_TRAIN_FINISH
 */
/**
 * 训练单位类型
 * 训练单位类型
 * 响应'开始/取消/完成训练单位'单位事件, 指代所训练的单位类型.
 * @return unitcode
 */
declare function GetTrainedUnitType(): number;

/**
 * EVENT_PLAYER_UNIT_TRAIN_FINISH
 */
/**
 * 训练单位
 * 训练单位
 * 响应'完成训练单位'单位事件,指代被训练单位.
 * @return unit
 */
declare function GetTrainedUnit(): unit;

/**
 * EVENT_PLAYER_UNIT_DETECTED
 */

/**
 * EVENT_PLAYER_UNIT_DETECTED
 */
/**
 * 检测单位
 */
declare function GetDetectedUnit(): unit;

/**
 * EVENT_PLAYER_UNIT_SUMMONED
 */
/**
 * 正在召唤的单位
 * 召唤者
 * 召唤者
 * 响应'召唤单位'单位事件.
 * @return unit
 */
declare function GetSummoningUnit(): unit;

/**
 * 已召唤单位
 * 召唤单位
 * 响应'召唤单位'单位事件,指代被召唤单位.
 * @return unit
 */
declare function GetSummonedUnit(): unit;

/**
 * EVENT_PLAYER_UNIT_LOADED
 */

/**
 * EVENT_PLAYER_UNIT_LOADED
 */
/**
 * 传送单位
 */
declare function GetTransportUnit(): unit;

/**
 * 加载单位
 */
declare function GetLoadedUnit(): unit;

/**
 * EVENT_PLAYER_UNIT_SELL
 */
/**
 * 出售单位
 * 贩卖者
 * 贩卖者
 * 响应'出售单位','出售物品'或'抵押物品'单位事件.
 * @return unit
 */
declare function GetSellingUnit(): unit;

/**
 * 被出售单位
 * 被贩卖单位
 * 被贩卖单位
 * 响应'出售单位'单位事件.
 * @return unit
 */
declare function GetSoldUnit(): unit;

/**
 * 在购买的单位
 * 购买者
 * 购买者
 * 响应'出售单位','出售物品'或'抵押物品'单位事件.
 * @return unit
 */
declare function GetBuyingUnit(): unit;

/**
 * EVENT_PLAYER_UNIT_SELL_ITEM
 */
/**
 * 卖出的物品
 * 被售出物品
 * 被售出物品
 * 响应'出售物品'或'抵押物品'单位事件.
 * @return item
 */
declare function GetSoldItem(): item;

/**
 * EVENT_PLAYER_UNIT_CHANGE_OWNER
 */
/**
 * 改变了所有者的单位
 * 被改变所有者的单位
 * 被改变所有者的单位
 * 响应'改变所有者'单位事件.
 * @return unit
 */
declare function GetChangingUnit(): unit;

/**
 * 前一个所有者
 * 原所有者
 * 原所有者
 * 响应'改变所有者'单位事件,指代单位原来的所有者.
 * @return player
 */
declare function GetChangingUnitPrevOwner(): player;

/**
 * EVENT_PLAYER_UNIT_DROP_ITEM
 */
/**
 * EVENT_PLAYER_UNIT_PICKUP_ITEM
 */

/**
 * EVENT_PLAYER_UNIT_USE_ITEM
 */
/**
 * 获取操作物品的单位
 * 操作物品的单位
 * 响应'使用/获得/丢失物品'单位事件.
 * @return unit
 */
declare function GetManipulatingUnit(): unit;

/**
 * 被操作的物品
 * 被操作物品
 * 被操作物品
 * 响应'使用/得到/丢弃物品'单位事件.
 * @return item
 */
declare function GetManipulatedItem(): item;

/**
 * EVENT_PLAYER_UNIT_ISSUED_ORDER
 */
/**
 * 收到命令的单位
 * 发布命令的单位
 * 发布命令的单位
 * 响应'发布命令'单位事件.
 * @return unit
 */
declare function GetOrderedUnit(): unit;

/**
 * 发出命令的单位
 */
declare function GetIssuedOrderId(): number;

/**
 * EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER
 */
/**
 * 命令发布点X坐标 [R]
 * 命令发布点X坐标
 * 用坐标代替点可以省去创建、删除点的麻烦.
 * @return real
 */
declare function GetOrderPointX(): number;

/**
 * 命令发布点Y坐标 [R]
 * 命令发布点Y坐标
 * 用坐标代替点可以省去创建、删除点的麻烦.
 * @return real
 */
declare function GetOrderPointY(): number;

/**
 * 目标的位置
 * 命令发布点
 * 命令发布点
 * 响应'发布指定点目标命令'单位事件. 会创建点.
 * @return location
 */
declare function GetOrderPointLoc(): location;

/**
 * EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER
 */
/**
 * EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER
 */
declare function GetOrderTarget(): widget;

/**
 * 目标的可毁坏物
 * 命令发布目标(可破坏物)
 * 命令发布目标
 * 响应'发布指定物体目标命令'单位事件并以可破坏物为目标时.
 * @return destructable
 */
declare function GetOrderTargetDestructable(): destructable;

/**
 * 目标的物品
 * 命令发布目标
 * 命令发布目标
 * 响应'发布指定物体目标命令'单位事件并以物品为目标时.
 * @return item
 */
declare function GetOrderTargetItem(): item;

/**
 * 目标的单位
 * 命令发布目标
 * 命令发布目标
 * 响应'发布指定物体目标命令'单位事件并以单位为目标时.
 * @return unit
 */
declare function GetOrderTargetUnit(): unit;

/**
 * EVENT_UNIT_SPELL_CHANNEL
 */
/**
 * EVENT_UNIT_SPELL_CAST
 */
/**
 * EVENT_UNIT_SPELL_EFFECT
 */
/**
 * EVENT_UNIT_SPELL_FINISH
 */
/**
 * EVENT_UNIT_SPELL_ENDCAST
 */
/**
 * EVENT_PLAYER_UNIT_SPELL_CHANNEL
 */
/**
 * EVENT_PLAYER_UNIT_SPELL_CAST
 */
/**
 * EVENT_PLAYER_UNIT_SPELL_EFFECT
 */
/**
 * EVENT_PLAYER_UNIT_SPELL_FINISH
 */

/**
 * EVENT_PLAYER_UNIT_SPELL_ENDCAST
 */
/**
 * 技能单位
 * 施法单位
 * 施法单位
 * 响应'施放技能'单位事件.
 * @return unit
 */
declare function GetSpellAbilityUnit(): unit;

/**
 * 使用的技能
 * 施放技能
 * 施放技能
 * 响应施放技能单位事件, 指代被施放的技能.
 * @return abilcode
 */
declare function GetSpellAbilityId(): number;

/**
 * 使用的技能
 */
declare function GetSpellAbility(): ability;

/**
 * 对其使用技能的目标点
 * 技能施放点
 * 技能施放点
 * 响应'技能施放'单位事件. 注意技能施放结束将无法捕获该点. 会创建点.
 * @return location
 */
declare function GetSpellTargetLoc(): location;

/**
 * 对其使用技能的目标点x
 * 技能施放点X坐标
 * 获取技能目标点的X坐标
 * 这是1.24的函数，但已加入函数库，在1.20也可以使用。
 * @return real
 */
declare function GetSpellTargetX(): number;

/**
 * 对其使用技能的目标点y
 * 技能施放点Y坐标
 * 获取技能目标点的Y坐标
 * 这是1.24的函数，但已加入函数库，在1.20也可以使用。
 * @return real
 */
declare function GetSpellTargetY(): number;

/**
 * 对其使用技能的目标可毁坏物
 * 技能施放目标(可破坏物)
 * 技能施放目标
 * 响应'施放技能'单位事件并以可破坏物为目标时. 注意: 技能施放结束将无法捕获施放目标.
 * @return destructable
 */
declare function GetSpellTargetDestructable(): destructable;

/**
 * 对其使用技能的目标物品
 * 技能施放目标
 * 技能施放目标
 * 响应施放技能单位事件并以物品为目标时. 注意: 技能施放结束将无法捕获施放目标.
 * @return item
 */
declare function GetSpellTargetItem(): item;

/**
 * 对其使用技能的目标单位
 * 技能施放目标
 * 技能施放目标
 * 响应'施放技能'单位事件并以单位为目标时. 注意: 技能施放结束将无法捕获施放目标.
 * @return unit
 */
declare function GetSpellTargetUnit(): unit;

/**
 * 联盟状态改变(特殊)
 * 联盟状态更改(指定项目)
 * ${Player} 更改 ${Alliance Type} 设置
 * 当改变项目为【共享单位】时，(触发玩家)会不生效，此时不建议使用【任意玩家】事件。
 * @params  player alliancetype
 */
declare function TriggerRegisterPlayerAllianceChange(whichTrigger: trigger, whichPlayer: player, whichAlliance: alliancetype): event;

/**
 * 属性
 * @deprecated 如果属性变化太频繁可能导致大量的 plsd handle。 比如注册玩家金币属性变化 然后杀敌金币奖励过多 可以采用计时器主动固定频率判断
 * 属性事件
 * ${玩家} 的 ${Property} 属性 ${Operation} ${值}
 * @params  player playerstate limitop real
 */
declare function TriggerRegisterPlayerStateEvent(whichTrigger: trigger, whichPlayer: player, whichState: playerstate, opcode: limitop, limitval: number): event;

/**
 * EVENT_PLAYER_STATE_LIMIT
 */

/**
 * EVENT_PLAYER_STATE_LIMIT
 */
/**
 * 获取玩家属性
 */
declare function GetEventPlayerState(): playerstate;

/**
 * 玩家输入聊天信息
 * ${玩家} 输入 ${Text} ,信息过滤方式 ${Match Type}
 * 事件ID是(096)
 * @params  player string chatmatchtype
 */
declare function TriggerRegisterPlayerChatEvent(whichTrigger: trigger, whichPlayer: player, chatMessageToDetect: string, exactMatchOnly: boolean): event;

/**
 * EVENT_PLAYER_CHAT
 */
/**
 * returns the actual string they typed in ( same as what you registered for
 */

/**
 * if you required exact match )
 */
/**
 * 输入的聊天字符
 * 输入的聊天信息
 * 输入的聊天信息
 * @return string
 */
declare function GetEventPlayerChatString(): string;

/**
 * returns the string that you registered for
 */
/**
 * 匹配的聊天字符
 * 匹配的聊天信息
 * 匹配的聊天信息
 * @return string
 */
declare function GetEventPlayerChatStringMatched(): string;

/**
 * 可毁坏物死亡
 * 可破坏物死亡
 * ${可破坏物} 死亡
 * 使用'事件响应 - 死亡的可破坏物'来获取死亡物体.
 * @params  destructable
 */
declare function TriggerRegisterDeathEvent(whichTrigger: trigger, whichWidget: widget): event;

//============================================================================
/**
 * Trigger Unit Based Event API
 */
//============================================================================
/**
 * returns handle to unit which triggered the most recent event when called from
 */

/**
 * within a trigger action function...returns null handle when used incorrectly
 */
/**
 * 触发单位
 * 触发单位
 * @return unit
 */
declare function GetTriggerUnit(): unit;

/**
 * 单位状态事件
 */
declare function TriggerRegisterUnitStateEvent(whichTrigger: trigger, whichUnit: unit, whichState: unitstate, opcode: limitop, limitval: number): event;

/**
 * EVENT_UNIT_STATE_LIMIT
 */

/**
 * EVENT_UNIT_STATE_LIMIT
 */
/**
 * 获取单位状态
 */
declare function GetEventUnitState(): unitstate;

/**
 * 详细单位的事件
 * 指定单位事件
 * ${指定单位} ${事件}
 * @params  unit unitevent
 */
declare function TriggerRegisterUnitEvent(whichTrigger: trigger, whichUnit: unit, whichEvent: unitevent): event;

/**
 * EVENT_UNIT_DAMAGED
 */
/**
 * 被伤害的生命值
 * 伤害值
 * 单位所受伤害
 * 响应'受到伤害'单位事件,指代单位所受伤害.
 * @return real
 */
declare function GetEventDamage(): number;

/**
 * 伤害来源
 * 伤害来源
 * 响应'受到伤害'单位事件.
 * @return unit
 */
declare function GetEventDamageSource(): unit;

/**
 * EVENT_UNIT_DEATH
 */
/**
 * EVENT_UNIT_DECAY
 */
/**
 * Use the GetDyingUnit and GetDecayingUnit funcs above
 */
/**
 * EVENT_UNIT_DETECTED
 */

/**
 * EVENT_UNIT_DETECTED
 */
/**
 * 事件检测的玩家
 */
declare function GetEventDetectingPlayer(): player;

/**
 * 特定玩家事件
 */
declare function TriggerRegisterFilterUnitEvent(whichTrigger: trigger, whichUnit: unit, whichEvent: unitevent, filter: boolexpr): event;

/**
 * EVENT_UNIT_ACQUIRED_TARGET
 */

/**
 * EVENT_UNIT_TARGET_IN_RANGE
 */
/**
 * 目标单位
 * 事件目标单位
 * 事件目标单位
 * 响应'注意到/获取攻击目标'单位事件,指代目标单位.
 * @return unit
 */
declare function GetEventTargetUnit(): unit;

/**
 * EVENT_UNIT_ATTACKED
 */
/**
 * Use GetAttacker from the Player Unit Event API Below...
 */
/**
 * EVENT_UNIT_RESCUEDED
 */
/**
 * Use GetRescuer from the Player Unit Event API Below...
 */
/**
 * EVENT_UNIT_CONSTRUCT_CANCEL
 */
/**
 * EVENT_UNIT_CONSTRUCT_FINISH
 */
/**
 * See the Player Unit Construction Event API above for event info funcs
 */
/**
 * EVENT_UNIT_TRAIN_START
 */
/**
 * EVENT_UNIT_TRAIN_CANCELLED
 */
/**
 * EVENT_UNIT_TRAIN_FINISH
 */
/**
 * See the Player Unit Training Event API above for event info funcs
 */
/**
 * EVENT_UNIT_SELL
 */
/**
 * See the Player Unit Sell Event API above for event info funcs
 */
/**
 * EVENT_UNIT_DROP_ITEM
 */
/**
 * EVENT_UNIT_PICKUP_ITEM
 */
/**
 * EVENT_UNIT_USE_ITEM
 */
/**
 * See the Player Unit/Item manipulation Event API above for event info funcs
 */
/**
 * EVENT_UNIT_ISSUED_ORDER
 */
/**
 * EVENT_UNIT_ISSUED_POINT_ORDER
 */
/**
 * EVENT_UNIT_ISSUED_TARGET_ORDER
 */

/**
 * See the Player Unit Order Event API above for event info funcs
 */
/**
 * 范围内玩家事件
 */
declare function TriggerRegisterUnitInRange(whichTrigger: trigger, whichUnit: unit, range: number, filter: boolexpr): event;

/**
 * 添加触发器限制条件
 * @deprecated see AddAction 推荐在动作里使用if判断条件
 */
declare function TriggerAddCondition(whichTrigger: trigger, condition: boolexpr): triggercondition;

/**
 * 移除触发器限制条件
 */
declare function TriggerRemoveCondition(whichTrigger: trigger, whichCondition: triggercondition): void;

/**
 * 清空触发器限制条件
 */
declare function TriggerClearConditions(whichTrigger: trigger): void;

/**
 * 添加触发器动作
 */
declare function TriggerAddAction(whichTrigger: trigger, actionFunc: () => void): triggeraction;

/**
 * 移除触发器动作
 */
declare function TriggerRemoveAction(whichTrigger: trigger, whichAction: triggeraction): void;

/**
 * 清空触发器动作
 */
declare function TriggerClearActions(whichTrigger: trigger): void;

/**
 * 等待
 * @deprecated
 * 等待(玩家时间)
 * 等待 ${Time} 秒
 * 该延迟功能受真实时间的影响(也就是玩家机器上的时间). 因此每个玩家所延迟的时间可能不一致.
 * @params  real
 */
declare function TriggerSleepAction(timeout: number): void;

/**
 * @deprecated
 * @param s
 * @param offset
 * @constructor
 */
declare function TriggerWaitForSound(s: sound, offset: number): void;

/**
 * 触发器条件成立
 * 触发条件成立
 * ${触发} 的条件成立
 * @params  trigger
 * @return boolean
 */
declare function TriggerEvaluate(whichTrigger: trigger): boolean;

/**
 * 运行触发器 (忽略条件)
 * 运行触发(无视条件)
 * 运行 ${触发} (无视条件)
 * 无视事件和条件,运行触发动作.
 * @params  trigger
 */
declare function TriggerExecute(whichTrigger: trigger): void;

declare function TriggerExecuteWait(whichTrigger: trigger): void;

declare function TriggerSyncStart(): void;

/**
 * @deprecated
 */
declare function TriggerSyncReady(): void;

//============================================================================
/**
 * Widget API
 */
/**
 * Widget API
 */
declare function GetWidgetLife(whichWidget: widget): number;

declare function SetWidgetLife(whichWidget: widget, newLife: number): void;

declare function GetWidgetX(whichWidget: widget): number;

declare function GetWidgetY(whichWidget: widget): number;

declare function GetTriggerWidget(): widget;

//============================================================================
/**
 * Destructable Object API
 */

/**
 * Facing arguments are specified in degrees
 */
/**
 * Facing arguments are specified in degrees
 */
declare function CreateDestructable(objectid: number | string, x: number, y: number, face: number, scale: number, variation: number): destructable;

/**
 * 新建可破坏物 [R]
 * 新建的 ${可破坏物类型} 在(${X},${Y},${Z}),面向角度: ${Direction} 尺寸缩放: ${Scale} 样式: ${Variation}
 * 坐标为(X,Y,Z)格式. 面向角度采用角度制,0度为正东方向,90度为正北方向.
 * @params  destructablecode real real real real real integer
 * @return destructable
 */
declare function CreateDestructableZ(objectid: number | string, x: number, y: number, z: number, face: number, scale: number, variation: number): destructable;

declare function CreateDeadDestructable(objectid: number | string, x: number, y: number, face: number, scale: number, variation: number): destructable;

/**
 * 新建可破坏物(死亡的) [R]
 * 新建死亡的 ${可破坏物类型} 在(${X},${Y},${Z"),面向角度: "}${Direction} 尺寸缩放: ${Scale} 样式: ${Variation}
 * 坐标为(X,Y,Z)格式. 面向角度采用角度制,0度为正东方向,90度为正北方向.
 * @params  destructablecode real real real real real integer
 * @return destructable
 */
declare function CreateDeadDestructableZ(objectid: number | string, x: number, y: number, z: number, face: number, scale: number, variation: number): destructable;

/**
 * 删除 可毁坏物
 * 删除 ${可破坏物}
 * @params  destructable
 */
declare function RemoveDestructable(d: destructable): void;

/**
 * 杀死 可毁坏物
 * 杀死 ${可破坏物}
 * @params  destructable
 */
declare function KillDestructable(d: destructable): void;

declare function SetDestructableInvulnerable(d: destructable, flag: boolean): void;

declare function IsDestructableInvulnerable(d: destructable): boolean;

declare function EnumDestructablesInRect(r: rect, filter: boolexpr, actionFunc: () => void): void;

/**
 * 建筑的类型
 * 指定可破坏物的类型
 * ${可破坏物} 的类型
 * @params  destructable
 * @return destructablecode
 */
declare function GetDestructableTypeId(d: destructable): number;

/**
 * 可破坏物所在X轴坐标 [R]
 * ${可破坏物} 所在X轴坐标
 * @params  destructable
 * @return real
 */
declare function GetDestructableX(d: destructable): number;

/**
 * 可破坏物所在Y轴坐标 [R]
 * ${可破坏物} 所在Y轴坐标
 * @params  destructable
 * @return real
 */
declare function GetDestructableY(d: destructable): number;

/**
 * 设置 可毁坏物 生命 (值)
 * 设置生命值(指定值)
 * 设置 ${可破坏物} 的生命值为 ${Value}
 * @params  destructable real
 */
declare function SetDestructableLife(d: destructable, life: number): void;

/**
 * 生命值 (可毁坏物)
 * ${可破坏物} 的当前生命值
 * @params  destructable
 * @return real
 */
declare function GetDestructableLife(d: destructable): number;

//设置可破坏物的最大生命值
declare function SetDestructableMaxLife(d: destructable, max: number): void;

/**
 * 最大生命值 (可毁坏物)
 * ${可破坏物} 的最大生命值
 * @params  destructable
 * @return real
 */
declare function GetDestructableMaxLife(d: destructable): number;

/**
 * 复活 可毁坏物
 * 复活 ${Destructible} ,设置生命值为 ${Value} 并 ${Show/Hide} 生长动画
 * @params  destructable real showhideoption
 */
declare function DestructableRestoreLife(d: destructable, life: number, birth: boolean): void;

//队列可破坏物的动画
declare function QueueDestructableAnimation(d: destructable, whichAnimation: string): void;

//设置可破坏物的动画
declare function SetDestructableAnimation(d: destructable, whichAnimation: string): void;

/**
 * 改变可破坏物动画播放速度 [R]
 * 改变 ${可破坏物} 的动画播放速度为正常的 ${Percent}倍
 * 设置1倍动画播放速度来恢复正常状态.
 * @params  destructable real
 */
declare function SetDestructableAnimationSpeed(d: destructable, speedFactor: number): void;

/**
 * 显示/隐藏 [R]
 * 设置 ${可破坏物} 的状态为 ${Show/Hide}
 * 隐藏的可破坏物不被显示,但仍影响通行和视线.
 * @params  destructable showhideoption
 */
declare function ShowDestructable(d: destructable, flag: boolean): void;

/**
 * 闭塞高度 (可毁坏物)
 * ${可破坏物} 的闭塞高度
 * @params  destructable
 * @return real
 */
declare function GetDestructableOccluderHeight(d: destructable): number;

/**
 * 设置闭塞高度
 * 设置 ${可破坏物} 的闭塞高度为 ${Height}
 * @params  destructable real
 */
declare function SetDestructableOccluderHeight(d: destructable, height: number): void;

/**
 * 可毁坏物的名字
 * 物件名字
 * ${物件} 的名字
 * @params  destructable
 * @return string
 */
declare function GetDestructableName(d: destructable): string;

/**
 * 获取触发可破坏物
 */
declare function GetTriggerDestructable(): destructable;

//============================================================================
/**
 * Item API
 */
/**
 * 创建
 * 物品创建完 ItemPlayer默认是中立被动 pid=15
 * 新建物品 [R]
 * 新建 ${物品} 在(${X},${Y})
 * @params  itemcode real real
 * @return item
 */
declare function CreateItem(itemid: number | string, x: number, y: number): item;

/**
 * 删除物品
 * 删除 ${物品}
 * @params  item
 */
declare function RemoveItem(whichItem: item): void;

/**
 * 物品的所有者
 * 物品创建完默认是中立被动 pid=15
 * 物品所属玩家
 * ${物品} 的所属玩家
 * 与持有者无关,默认为中立被动玩家.
 * @params  item
 * @return player
 */
declare function GetItemPlayer(whichItem: item): player;

/**
 * 物品的类别
 * 指定物品的类型
 * ${物品} 的类型
 * @params  item
 * @return itemcode
 */
declare function GetItemTypeId(i: item): number;

/**
 * 物品的X轴坐标 [R]
 * ${物品} 的X轴坐标
 * @params  item
 * @return real
 */
declare function GetItemX(i: item): number;

/**
 * 物品的Y轴坐标 [R]
 * ${物品} 的Y轴坐标
 * @params  item
 * @return real
 */
declare function GetItemY(i: item): number;

/**
 * 移动物品到坐标(立即)(指定坐标) [R]
 * 移动 ${物品} 到(${X},${Y})
 * @params  item real real
 */
declare function SetItemPosition(i: item, x: number, y: number): void;

/**
 * 设置物品是否死亡时掉落
 */
declare function SetItemDropOnDeath(whichItem: item, flag: boolean): void;

/**
 * 设置物品可以丢弃
 */
declare function SetItemDroppable(i: item, flag: boolean): void;

/**
 * 设置物品能否变卖
 * 设置物品可否抵押
 * 设置 ${物品} ${Pawnable/Unpawnable}
 * 不可抵押物品不能被卖到商店.
 * @params  item pawnableoption
 */
declare function SetItemPawnable(i: item, flag: boolean): void;

/**
 * 设置物品所属
 */
declare function SetItemPlayer(whichItem: item, whichPlayer: player, changeColor: boolean): void;

/**
 * 设置物品是否无敌的
 */
declare function SetItemInvulnerable(whichItem: item, flag: boolean): void;

/**
 * 物品是无敌的
 * 物品无敌
 * ${物品} 是无敌的
 * @params  item
 * @return boolean
 */
declare function IsItemInvulnerable(whichItem: item): boolean;

/**
 * 显示/隐藏 [R]
 * 设置 ${物品} 的状态为: ${Show/Hide}
 * 只对在地面的物品有效,不会影响在物品栏中的物品. 单位通过触发得到一个隐藏物品时,会自动显示该物品.
 * @params  item showhideoption
 */
declare function SetItemVisible(whichItem: item, show: boolean): void;

/**
 * 物品可见 [R]
 * ${物品} 是可见的
 * 物品不被隐藏且不被单位持有时即为可见的.
 * @params  item
 * @return boolean
 */
declare function IsItemVisible(whichItem: item): boolean;

/**
 * 物品被持有
 * ${物品} 是被持有的
 * 在物品栏中的物品都是被持有的. 就算单位正处于死亡状态.
 * @params  item
 * @return boolean
 */
declare function IsItemOwned(whichItem: item): boolean;

/**
 * 物品是拾取时自动使用的 [R]
 * ${物品} 是拾取时自动使用类物品
 * @params  item
 * @return boolean
 */
declare function IsItemPowerup(whichItem: item): boolean;

/**
 * 物品可被市场随机出售 [R]
 * ${物品} 可被市场随机出售
 * @params  item
 * @return boolean
 */
declare function IsItemSellable(whichItem: item): boolean;

/**
 * 物品可被抵押 [R]
 * ${物品} 可被抵押
 * @params  item
 * @return boolean
 */
declare function IsItemPawnable(whichItem: item): boolean;

/**
 * 物品可以充能
 */
declare function IsItemIdPowerup(itemid: number | string): boolean;

/**
 * 物品可以销售
 */
declare function IsItemIdSellable(itemid: number | string): boolean;

/**
 * 物品可以抵押
 */
declare function IsItemIdPawnable(itemid: number | string): boolean;

/**
 * 选取 区域内 所有物品在 做动作 r = 区域 ， filter = 条件 ， actionFunc = 动作
 * @deprecated see 优先考虑使用 ItemUtil.forItemsInRect
 */
declare function EnumItemsInRect(r: rect, filter: boolexpr, actionFunc: () => void): void;

/**
 * 物品等级
 * ${物品} 的物品等级
 * @params  item
 * @return integer
 */
declare function GetItemLevel(whichItem: item): number;

/**
 * 获取物品类型
 * 指定物品的分类
 * ${物品} 的分类
 * @params  item
 * @return itemtype
 */
declare function GetItemType(whichItem: item): itemtype;

/**
 * 设置重生神符的产生单位类型
 * 设置 ${物品} 产生 ${单位类型}
 * 设置重生神符对应的单位类型后，当英雄吃了重生神符，则会产生指定类型的单位。
 * @params  item unitcode
 */
declare function SetItemDropID(whichItem: item, unitid: number | string): void;

/**
 * 物品名
 * 物品名字
 * ${物品} 的名字
 * @params  item
 * @return string
 */
declare function GetItemName(whichItem: item): string;

/**
 * 物品的数量
 * 使用次数
 * ${物品} 的使用次数
 * 无限使用物品将返回0.
 * @params  item
 * @return integer
 */
declare function GetItemCharges(whichItem: item): number;

/**
 * 设置物品数量[使用次数]
 * 设置物品使用次数
 * 设置 ${物品} 的使用次数为 ${Charges}
 * 设置为0可以使物品能无限次使用.
 * @params  item integer
 */
declare function SetItemCharges(whichItem: item, charges: number): void;

/**
 * 物品自定义值
 * ${物品} 的自定义值
 * 可以使用'物品 - 设置自定义值'来设置该值.
 * @params  item
 * @return integer
 */
declare function GetItemUserData(whichItem: item): number;

/**
 * 设置物品自定义数据
 * 设置物品自定义值
 * 设置 ${物品} 的自定义值为 ${Index}
 * 物品自定义值只用于触发器. 可以用来为物品绑定一个整型数据.
 * @params  item integer
 */
declare function SetItemUserData(whichItem: item, data: number): void;

//============================================================================
/**
 * Unit API
 */

/**
 * Facing arguments are specified in degrees
 */
/**
 * 新建单位(指定坐标) [R]
 * 新建 ${玩家} 的 ${单位} 在(${X},${Y}),面向角度:${Face} 度
 * 在坐标创建单位，不能被'最后创建的单位'获得。
 * 0-11  = 玩家1-12
 * 12=中立敌对
 * 13=中立受害
 * 14=中立特殊
 * 15=中立被动
 * @params  player unitcode real real degree
 * @return unit
 */
declare function CreateUnit(id: player, unitid: number | string, x: number, y: number, face: number): unit;

/**
 * 新建单位(指定坐标) [R]
 */
declare function CreateUnitByName(whichPlayer: player, unitname: string, x: number, y: number, face: number): unit;

/**
 * 新建单位(指定点) [R]
 * 新建 ${玩家} 的 ${单位} 在 ${点} 面向角度:${Face} 度
 * @params  player unitcode location degree
 * @return unit
 */
declare function CreateUnitAtLoc(id: player, unitid: number | string, whichLocation: location, face: number): unit;

/**
 * 新建单位(指定点) [R]
 */
declare function CreateUnitAtLocByName(id: player, unitname: string, whichLocation: location, face: number): unit;

/**
 * 新建尸体 [R]
 * 新建 ${玩家} 的 ${单位} 的尸体在(${X},${Y}),面向角度:${Face} 度
 * @params  player unitcode real real degree
 * @return unit
 */
declare function CreateCorpse(whichPlayer: player, unitid: number | string, x: number, y: number, face: number): unit;

/**
 * 杀死单位
 * 杀死 ${单位}
 * @params  unit
 */
declare function KillUnit(whichUnit: unit): void;

/**
 * 删除单位
 * 删除 ${单位}
 * 被删除的单位不会留下尸体. 如果是英雄则不能再被复活.
 * @params  unit
 */
declare function RemoveUnit(whichUnit: unit): void;

/**
 * 显示/隐藏 [R]
 * 设置 ${单位} 的状态为 ${显示/隐藏}
 * 隐藏单位不会被'区域内单位'所选取.
 * @params  unit showhideoption
 */
declare function ShowUnit(whichUnit: unit, show: boolean): void;

/**
 * 设置单位属性 [R]
 * 设置 ${单位} 的 ${属性} 为 ${Value}
 * @params  unit unitstatesec real
 */
declare function SetUnitState(whichUnit: unit, whichUnitState: unitstate, newVal: number): void;

/**
 * 设置X坐标 [R]
 * （不会停止当前 单位命令等行为）
 * @deprecated SetUnitPosition (单独分开设置坐标一个轴 可能会触发进入新x 旧y所在的区域事件 还是同时设置xy稳定)
 * 设置X坐标 [R]
 * 设置 ${单位} 的X坐标为 ${X}
 * 注意如果坐标超出地图边界是会出错的.
 * @params  unit real
 */
declare function SetUnitX(whichUnit: unit, newX: number): void;

/**
 * 设置Y坐标 [R]
 * （不会停止当前 单位命令等行为）
 * @deprecated see SetUnitPosition (单独分开设置坐标一个轴 可能会触发进入新y 旧x所在的区域事件 还是同时设置xy稳定)
 * 设置Y坐标 [R]
 * 设置 ${单位} 的Y坐标为 ${Y}
 * 注意如果坐标超出地图边界是会出错的.
 * @params  unit real
 */
declare function SetUnitY(whichUnit: unit, newY: number): void;

/**
 * 移动单位(立即)(指定坐标) [R]
 * (会停止当前命令 如果在技能释放中 可能会造成技能不进入cd 如需不停止命令的可以使用DzSetUnitXY)
 * ps: 0移速的，高度变化 面向变化 位置变化，需提前设置一下SetUnitPosition
 * 移动单位(立即)(指定坐标) [R]
 * 立即移动 ${单位} 到(${X},${Y})
 * @params  unit real real
 */
declare function SetUnitPosition(whichUnit: unit, newX: number, newY: number): void;

/**
 * 移动单位 (立刻)
 * 移动单位(立即)(指定点)
 * 立即移动 ${单位} 到 ${指定点}
 * @params  unit location
 */
declare function SetUnitPositionLoc(whichUnit: unit, whichLocation: location): void;

/**
 * 设置单位面向角度 [R]
 * 可能受限于转身速度？
 * see EXSetUnitFacing 这个快一点
 * ps: 0移速的，高度变化 面向变化 位置变化，需提前设置一下SetUnitPosition 延迟设置2次有效
 *
 * 设置单位面向角度 [R]
 * 设置 ${单位} 的面向角度为 ${Angle} 度
 * 面向角度采用角度制,0度为正东方向,90度为正北方向。速度等于单位的转身速度。
 * @params  unit degree
 */
declare function SetUnitFacing(whichUnit: unit, facingAngle: number): void;

/**
 * 设置单位面对角度
 * 设置单位面向角度(指定时间)
 * 设置 ${单位} 的面向角度为 ${Angle} 度,使用时间 ${Time} 秒
 * 面向角度采用角度制,0度为正东方向,90度为正北方向。不能超过单位的转身速度。
 * @params  unit degree real
 */
declare function SetUnitFacingTimed(whichUnit: unit, facingAngle: number, duration: number): void;

/**
 * 设置单位移动速度
 * 设置移动速度
 * 设置 ${单位} 的移动速度为 ${Speed}
 * @params  unit real
 */
declare function SetUnitMoveSpeed(whichUnit: unit, newSpeed: number): void;

//设定单位飞行高度
declare function SetUnitFlyHeight(whichUnit: unit, newHeight: number, rate: number): void;

//设定单位转向速度
declare function SetUnitTurnSpeed(whichUnit: unit, newTurnSpeed: number): void;

/**
 * 禁止单位移动 可以设置为0
 * 改变单位转向角度(弧度制) [R]
 * 当设置为0时 单位可以转向 但不能移动
 * 改变 ${单位} 的转向角度为 ${数值} (弧度制)
 * 设置单位转身时的转向角度. 数值越大转向幅度越大.
 * @params  unit radian
 */
declare function SetUnitPropWindow(whichUnit: unit, newPropWindowAngle: number): void;

/**
 * 主动去攻击的范围
 * 设置感知敌人距离
 */
declare function SetUnitAcquireRange(whichUnit: unit, newAcquireRange: number): void;

/**
 * 锁定指定单位的警戒点 [R]
 * 设置 ${单位} 的警戒点: ${option}
 * 锁定并防止 AI 脚本改动单位警戒点.
 * @params  unit lockunlockoption
 */
declare function SetUnitCreepGuard(whichUnit: unit, creepGuard: boolean): void;

/**
 * 单位主动攻击范围 (当前)
 * 当前主动攻击范围
 * ${单位} 的当前主动攻击范围
 * @params  unit
 * @return real
 */
declare function GetUnitAcquireRange(whichUnit: unit): number;

/**
 * 转向速度 (当前)
 * 当前转身速度
 * ${单位} 的当前转身速度
 * 转身速度表示单位改变面向方向时的速度. 数值越小表示转身越慢.
 * @params  unit
 * @return real
 */
declare function GetUnitTurnSpeed(whichUnit: unit): number;

/**
 * 当前转向角度(弧度制) [R]
 * ${单位} 的当前转向角度(弧度制)
 * 单位转身时的转向角度. 数值越大转向幅度越大.
 * @params  unit
 * @return radian
 */
declare function GetUnitPropWindow(whichUnit: unit): number;

/**
 * 飞行高度 (当前)
 * 当前飞行高度
 * ${单位} 的当前飞行高度
 * 飞行单位可以直接改变飞行高度. 其他单位通过添加/删除 替换为飞行单位的变身技能(如乌鸦形态)之后,也能改变飞行高度.
 * @params  unit
 * @return real
 */
declare function GetUnitFlyHeight(whichUnit: unit): number;

/**
 * 单位射程 (默认)
 * 默认主动攻击范围
 * ${单位} 的默认主动攻击范围
 * @params  unit
 * @return real
 */
declare function GetUnitDefaultAcquireRange(whichUnit: unit): number;

/**
 * 转向速度 (默认)
 * 默认转身速度
 * ${单位} 的默认转身速度
 * 转身速度表示单位改变面向方向时的速度. 数值越小表示转身越慢.
 * @params  unit
 * @return real
 */
declare function GetUnitDefaultTurnSpeed(whichUnit: unit): number;

declare function GetUnitDefaultPropWindow(whichUnit: unit): number;

/**
 * 飞行高度 (默认)
 * 默认飞行高度
 * ${单位} 的默认飞行高度
 * 飞行单位可以直接改变飞行高度. 其他单位通过添加/删除 替换为飞行单位的变身技能(如乌鸦形态)之后,也能改变飞行高度.
 * @params  unit
 * @return real
 */
declare function GetUnitDefaultFlyHeight(whichUnit: unit): number;

/**
 * 改变单位所有者
 * 改变所属
 * 改变 ${单位} 所属为 ${Player} 并 ${Change/Retain Color}
 * @params  unit player colorchangeoption
 */
declare function SetUnitOwner(whichUnit: unit, whichPlayer: player, changeColor: boolean): void;

/**
 * 改变单位颜色
 * 改变队伍颜色
 * 改变 ${单位} 的队伍颜色为 ${Color}
 * 改变队伍颜色并不会改变单位所属.
 * @params  unit playercolor
 */
declare function SetUnitColor(whichUnit: unit, whichColor: playercolor): void;

/**
 * 改变单位尺寸(按倍数) [R]
 * 改变 ${单位} 的尺寸缩放为:(${X},${Y},${Z})
 * 缩放尺寸使用(长,宽,高)格式.
 * @params  unit real real real
 */
declare function SetUnitScale(whichUnit: unit, scaleX: number, scaleY: number, scaleZ: number): void;

/**
 * 改变单位动画播放速度(按倍数) [R]
 * 改变 ${单位} 的动画播放速度为正常速度的 ${Percent} 倍
 * 设置1倍动画播放速度来恢复正常状态.
 * @params  unit real
 */
declare function SetUnitTimeScale(whichUnit: unit, timeScale: number): void;

declare function SetUnitBlendTime(whichUnit: unit, blendTime: number): void;

/**
 * 改变单位的颜色(RGB:0-255) [R]
 * 改变 ${单位} 的颜色值: (${Red},${Green},${Blue}), 透明值: ${Transparency}
 * 颜色格式为(红,绿,蓝). 大多数单位使用(255,255,255)的颜色值和255的Alpha值. 透明值为0是不可见的.颜色值和Alpha值取值范围为0-255.
 * @params  unit integer integer integer integer
 */
declare function SetUnitVertexColor(whichUnit: unit, red: number, green: number, blue: number, alpha: number): void;

//队列单位动作
declare function QueueUnitAnimation(whichUnit: unit, whichAnimation: string): void;

/**
 * 播放单位动作
 * 播放单位动画
 * 播放 ${Unit} 的 ${动画名} 动作
 * 通过 '重置单位动作' 恢复到普通的动作.
 * @params  unit string
 */
declare function SetUnitAnimation(whichUnit: unit, whichAnimation: string): void;

/**
 * 播放单位指定序号动动作 [R]
 * 播放 ${单位} 的第${序号} 号动作
 * 可以指定播放所有的单位动画,不过需要自己多尝试.每个单位的动作序号不一样的.
 * @params  unit integer
 */
declare function SetUnitAnimationByIndex(whichUnit: unit, whichAnimation: number): void;

/**
 * 播放单位动作 (指定概率)
 * 播放单位动运作(指定概率)
 * 播放 ${单位} 的 ${Animation Name} 动作,只用 ${Rarity} 动作
 * 通过 '重置单位动作' 恢复到普通的动作.
 * @params  unit string raritycontrol
 */
declare function SetUnitAnimationWithRarity(whichUnit: unit, whichAnimation: string, rarity: raritycontrol): void;

/**
 * 添加/删除 单位动画附加名 [R]
 * 给 ${单位} 附加动作 ${Tag} ,状态为 ${Add/Remove}
 * 比如恶魔猎手添加'alternate'会显示为恶魔形态;农民添加'gold'则为背负黄金形态.
 * @params  unit string addremoveoption
 */
declare function AddUnitAnimationProperties(whichUnit: unit, animProperties: string, add: boolean): void;

/**
 * 锁定单位脸面对方向
 * 锁定身体朝向
 * 锁定 ${单位} 的 ${Source} 朝向 ${目标单位} ,偏移坐标 (${X}, ${Y}, ${Z})
 * 单位的该身体部件会一直朝向目标单位的偏移坐标点处,直到使用'重置身体朝向'. 坐标偏移以目标单位脚下为坐标原点.
 * @params  unit unitfacingbone unit real real real
 */
declare function SetUnitLookAt(whichUnit: unit, whichBone: string, lookAtTarget: unit, offsetX: number, offsetY: number, offsetZ: number): void;

/**
 * 重置单位面对方向
 * 重置身体朝向
 * 重置 ${单位} 的身体朝向
 * 恢复单位的身体朝向为正常状态.
 * @params  unit
 */
declare function ResetUnitLookAt(whichUnit: unit): void;

/**
 * 设置可否营救(对玩家) [R]
 * 设置 ${单位} 对 ${玩家}${Rescuable/Unrescuable}
 * @params  unit player rescuableoption
 */
declare function SetUnitRescuable(whichUnit: unit, byWhichPlayer: player, flag: boolean): void;

/**
 * 设置营救单位的营救距离
 * 设置营救范围
 * 设置 ${单位} 的营救范围为 ${Range}
 * @params  unit real
 */
declare function SetUnitRescueRange(whichUnit: unit, range: number): void;

/**
 * 设置英雄力量 [R]
 * 设置 ${英雄} 的力量为 ${Value} ,(${Permanent}永久奖励)
 * 永久奖励貌似无效项,不需要理会.
 * @params  unit integer enabledisableoption
 */
declare function SetHeroStr(whichHero: unit, newStr: number, permanent: boolean): void;

/**
 * 设置英雄敏捷 [R]
 * 设置 ${英雄} 的敏捷为 ${Value} ,(${Permanent}永久奖励)
 * 永久奖励貌似无效项,不需要理会.
 * @params  unit integer enabledisableoption
 */
declare function SetHeroAgi(whichHero: unit, newAgi: number, permanent: boolean): void;

/**
 * 设置英雄智力 [R]
 * 设置 ${英雄} 的智力为 ${Value} ,(${Permanent}永久奖励)
 * 永久奖励貌似无效项,不需要理会.
 * @params  unit integer enabledisableoption
 */
declare function SetHeroInt(whichHero: unit, newInt: number, permanent: boolean): void;

/**
 * 英雄力量 [R]
 * ${英雄} 的力量值(${Include/Exclude} 加成)
 * @params  unit includeoption
 * @return integer
 */
declare function GetHeroStr(whichHero: unit, includeBonuses: boolean): number;

/**
 * 英雄敏捷 [R]
 * ${英雄} 的敏捷值(${Include/Exclude} 加成)
 * @params  unit includeoption
 * @return integer
 */
declare function GetHeroAgi(whichHero: unit, includeBonuses: boolean): number;

/**
 * 英雄智力 [R]
 * ${英雄} 的智力值(${Include/Exclude} 加成)
 * @params  unit includeoption
 * @return integer
 */
declare function GetHeroInt(whichHero: unit, includeBonuses: boolean): number;

/**
 * 降低等级 [R]
 * 降低 ${Hero} ${Level} 个等级
 * 只能降低等级. 英雄经验将重置为该等级的初始值.
 * @params  unit integer
 */
declare function UnitStripHeroLevel(whichHero: unit, howManyLevels: number): boolean;

/**
 * 英雄的经验值
 * 英雄经验值
 * ${英雄} 的经验值
 * @params  unit
 * @return integer
 */
declare function GetHeroXP(whichHero: unit): number;

/**
 * 设置英雄经验值
 * 设置经验值
 * 设置 ${Hero} 的经验值为 ${Quantity} , ${Show/Hide} 升级动画
 * 经验值不能倒退.
 * @params  unit integer showhideoption
 */
declare function SetHeroXP(whichHero: unit, newXpVal: number, showEyeCandy: boolean): void;

/**
 * 未用完的技能点数
 * 未分配技能点数
 * ${英雄} 的未分配技能点数
 * @params  unit
 * @return integer
 */
declare function GetHeroSkillPoints(whichHero: unit): number;

/**
 * 添加剩余技能点 [R]
 * 增加 ${英雄} ${Value} 点剩余技能点
 * @params  unit integer
 */
declare function UnitModifySkillPoints(whichHero: unit, skillPointDelta: number): boolean;

/**
 * 增加经验值 [R]
 * 增加 ${Hero} ${Quantity} 点经验值, ${Show/Hide} 升级动画
 * 经验值不能倒退.
 * @params  unit integer showhideoption
 */
declare function AddHeroXP(whichHero: unit, xpToAdd: number, showEyeCandy: boolean): void;

/**
 * 设置英雄等级
 * 设置等级
 * 设置 ${Hero} 的英雄等级为 ${Level} , ${Show/Hide} 升级动画
 * 如果等级有变动,英雄经验将重置为该等级的初始值.
 * @params  unit integer showhideoption
 */
declare function SetHeroLevel(whichHero: unit, level: number, showEyeCandy: boolean): void;

/**
 * 英雄等级
 * ${英雄} 的英雄等级
 * @params  unit
 * @return integer
 */
declare function GetHeroLevel(whichHero: unit): number;

/**
 * 单位等级
 * ${单位} 的等级
 * 对于英雄则会返回其英雄等级.
 * @params  unit
 * @return integer
 */
declare function GetUnitLevel(whichUnit: unit): number;

/**
 * 英雄的姓名
 * 英雄称谓
 * ${Hero} 的称谓
 * 如圣骑士会返回'无惧的布赞恩'而不是'圣骑士'.
 * @params  unit
 * @return string
 */
declare function GetHeroProperName(whichHero: unit): string;

/**
 * 允许/禁止经验获取 [R]
 * ${Enable/Disable} ${Hero} 的经验获取
 * @params  unit suspendresumeoption_R
 */
declare function SuspendHeroXP(whichHero: unit, flag: boolean): void;

/**
 * 英雄获得经验值
 * 经验不可获得
 * ${Hero} 不可获得经验
 * 可使用'英雄 - 允许/禁止经验获取'来设置该项.
 * @params  unit
 * @return boolean
 */
declare function IsSuspendedXP(whichHero: unit): boolean;

/**
 * 英雄学习技能
 * 命令 ${Hero} 学习技能 ${Skill}
 * 只有当英雄有剩余技能点时有效.
 * @params  unit heroskillcode
 */
declare function SelectHeroSkill(whichHero: unit, abilcode: number | string): void;

/**
 * 单位技能等级 [R]
 * ${单位} 的 ${技能} 技能等级
 * 如果单位没有该技能,则返回0.
 * @params  unit abilcode
 * @return integer
 */
declare function GetUnitAbilityLevel(whichUnit: unit, abilcode: number | string): number;

/**
 * 降低技能等级 [R]
 * 使 ${单位} 的 ${技能} 等级降低1级
 * 改变死亡单位的光环技能会导致魔兽崩溃.
 * @params  unit abilcode
 */
declare function DecUnitAbilityLevel(whichUnit: unit, abilcode: number | string): number;

/**
 * 提升技能等级 [R]
 * 使 ${单位} 的 ${技能} 等级提升1级
 * 改变死亡单位的光环技能会导致魔兽崩溃.
 * @params  unit abilcode
 */
declare function IncUnitAbilityLevel(whichUnit: unit, abilcode: number | string): number;

/**
 * 设置技能等级 [R]
 * 设置 ${单位} 的 ${技能} 等级为 ${Level}
 * 改变死亡单位的光环技能会导致魔兽崩溃.
 * @params  unit abilcode integer
 */
declare function SetUnitAbilityLevel(whichUnit: unit, abilcode: number | string, level: number): number;

/**
 * 立即复活(指定坐标) [R]
 * (Tips:如果复活不了可能底层handle已被销毁 玩家英雄handle超过7个死亡的会自动销毁 或者是可用人口不足。)
 * 立即复活 ${英雄} 在(${X},${Y}), ${Show/Hide} 复活动画
 * 如果英雄正在祭坛复活,则会退回部分花费(默认为100%).
 * @params  unit real real showhideoption
 */
declare function ReviveHero(whichHero: unit, x: number, y: number, doEyecandy: boolean): boolean;

/**
 * 复活英雄（立即）
 * 立即复活(指定点)
 * 立即复活 ${英雄} 在 ${指定点} , ${Show/Hide} 复活动画
 * 如果英雄正在祭坛复活,则会退回部分花费(默认为100%).
 * @params  unit location showhideoption
 */
declare function ReviveHeroLoc(whichHero: unit, loc: location, doEyecandy: boolean): boolean;

declare function SetUnitExploded(whichUnit: unit, exploded: boolean): void;

/**
 * 设置单位 无敌/可攻击
 * 设置无敌/可攻击
 * 设置 ${单位} ${Invulnerable/Vulnerable}
 * @params  unit invulnerableoption
 */
declare function SetUnitInvulnerable(whichUnit: unit, flag: boolean): void;

/**
 * 暂停/恢复 [R]
 * 底层无计数 无论暂停多少次 只需一次取消暂停即可恢复
 * 设置 ${单位} ${Pause/Unpause}
 * @params  unit pauseunpauseoption
 */
declare function PauseUnit(whichUnit: unit, flag: boolean): void;

declare function IsUnitPaused(whichHero: unit): boolean;

/**
 * 设置碰撞 打开/关闭
 * 设置碰撞开关
 * 设置 ${单位} ${On/Off} 碰撞
 * 关闭碰撞的单位无视障碍物,但其他单位仍视其为障碍物.
 * @params  unit pathingoption
 */
declare function SetUnitPathing(whichUnit: unit, flag: boolean): void;

/**
 * 清除所有选定
 * 清空选择(所有玩家)
 * 清空所有玩家的选择
 * 使玩家取消选择所有已选单位.
 * @params  nothing
 */
declare function ClearSelection(): void;

declare function SelectUnit(whichUnit: unit, flag: boolean): void;

/**
 * 单位的 附加值
 * 单位附加值
 * ${单位} 的附加值
 * 单位附加值不可改变. 可以做一些特殊用途. 比如TD地图中的建筑贩卖价格.
 * @params  unit
 * @return integer
 */
declare function GetUnitPointValue(whichUnit: unit): number;

/**
 * 单位-类型的 附加值
 * 单位附加值(指定单位类型)
 * ${单位类型} 的附加值
 * 单位附加值不可改变. 可以做一些特殊用途. 比如TD地图中的建筑贩卖价格.
 * @params  unitcode
 * @return integer
 */
declare function GetUnitPointValueByType(unitType: number): number;

//native        SetUnitPointValueByType takes integer unitType, integer newPointValue returns nothing
/**
 * 给予物品 [R]
 * 给予 ${单位} ${物品}
 * @params  unit item
 */
declare function UnitAddItem(whichUnit: unit, whichItem: item): boolean;

declare function UnitAddItemById(whichUnit: unit, itemid: number | string): item;

/**
 * 新建物品到指定物品栏 [R]
 * 给予 ${单位} ${物品类型} 并放在物品栏# ${数值}
 * 注意: 物品栏编号从0-5,而不是1-6. 该动作创建的物品不被'最后创建的物品'所记录.
 * @params  unit itemcode integer
 */
declare function UnitAddItemToSlotById(whichUnit: unit, itemid: number | string, itemSlot: number): boolean;

declare function UnitRemoveItem(whichUnit: unit, whichItem: item): void;

declare function UnitRemoveItemFromSlot(whichUnit: unit, itemSlot: number): item;

/**
 * 英雄已有物品
 * 持有物品
 * ${Hero} 拥有 ${物品}
 * @params  unit item
 * @return boolean
 */
declare function UnitHasItem(whichUnit: unit, whichItem: item): boolean;

/**
 * 单位持有物品
 * ${单位} 物品栏第 ${Index} 格的物品
 * 第一个单位格的位置为0.
 * @params  unit integer
 * @return item
 */
declare function UnitItemInSlot(whichUnit: unit, itemSlot: number): item;

declare function UnitInventorySize(whichUnit: unit): number;

/**
 * 发布丢弃物品命令(指定坐标) [R]
 * (可使用 SetItemPosition或UnitRemoveItem 立即从背包丢弃物品 到地形上 以防止玩家通过其他命令中断了此丢弃物品的命令)
 * 命令 ${单位} 丢弃物品 ${物品} 到坐标:(${X},${Y})
 * @params  unit item real real
 * @return boolean
 */
declare function UnitDropItemPoint(whichUnit: unit, whichItem: item, x: number, y: number): boolean;

/**
 * 移动物品到物品栏 [R]
 * 命令 ${单位} 移动 ${物品} 到物品栏# ${Index}
 * 只有当单位持有该物品时才有效. 注意: 该函数中物品栏编号从0-5,而不是1-6.
 * 此函数会打断单位当前命令
 * @params  unit item integer
 * @return boolean
 */
declare function UnitDropItemSlot(whichUnit: unit, whichItem: item, slot: number): boolean;

declare function UnitDropItemTarget(whichUnit: unit, whichItem: item, target: widget): boolean;

/**
 * 使用物品
 * 使用物品(无目标)
 * 命令 ${单位} 使用 ${物品}
 * @params  unit item
 */
declare function UnitUseItem(whichUnit: unit, whichItem: item): boolean;

/**
 * 使用物品(指定坐标)
 * 命令 ${单位} 使用 ${物品} ,目标坐标:(${X},${Y})
 * @params  unit item real real
 */
declare function UnitUseItemPoint(whichUnit: unit, whichItem: item, x: number, y: number): boolean;

/**
 * 对单位使用物品
 * 使用物品(对单位)
 * 命令 ${单位} 使用 ${物品} ,目标: ${单位}
 * @params  unit item unit
 */
declare function UnitUseItemTarget(whichUnit: unit, whichItem: item, target: widget): boolean;

/**
 * 单位所在X轴坐标 [R]
 * ${单位} 所在X轴坐标
 * @params  unit
 * @return real
 */
declare function GetUnitX(whichUnit: unit): number;

/**
 * 单位所在Y轴坐标 [R]
 * ${单位} 所在Y轴坐标
 * @params  unit
 * @return real
 */
declare function GetUnitY(whichUnit: unit): number;

/**
 * 单位的位置
 * @deprecated see GetUnitX 推荐使用xy坐标 不要使用点 以提高性能 和不用排泄点
 * 单位位置
 * ${单位} 的位置
 * 会创建点.
 * @params  unit
 * @return location
 */
declare function GetUnitLoc(whichUnit: unit): location;

/**
 * 单位面向角度
 * ${单位} 的面向角度
 * 采用角度制. 0度为正东方向, 90度为正北方向.
 * @params  unit
 * @return degree
 */
declare function GetUnitFacing(whichUnit: unit): number;

/**
 * 单位移动速度 (当前)
 * 当前移动速度
 * ${单位} 的当前移动速度
 * @params  unit
 * @return real
 */
declare function GetUnitMoveSpeed(whichUnit: unit): number;

/**
 * 单位移动速度 (默认)
 * 默认移动速度
 * ${单位} 的默认移动速度
 * @params  unit
 * @return real
 */
declare function GetUnitDefaultMoveSpeed(whichUnit: unit): number;

/**
 * 属性 [R]
 * ${单位} 的 ${Property}
 * @params  unit unitstate
 * @return real
 */
declare function GetUnitState(whichUnit: unit, whichUnitState: unitstate): number;

/**
 * 单位的所有者
 * 单位所有者
 * ${单位} 的所有者
 * @params  unit
 * @return player
 */
declare function GetOwningPlayer(whichUnit: unit): player;

/**
 * 单位的类型
 * 如果要将整数number转4字符串类型 可使用  id2string(GetUnitTypeId(unit));
 * 指定单位的类型
 * ${单位} 的类型
 * @params  unit
 * @return unitcode
 */
declare function GetUnitTypeId(whichUnit: unit): number;

/**
 * 单位的种族
 * 单位种族
 * ${单位} 所属种族
 * 物体编辑器中设置的单位所属种族.
 * @params  unit
 * @return race
 */
declare function GetUnitRace(whichUnit: unit): race;

/**
 * 单位名字
 * ${单位} 的名字
 * @params  unit
 * @return string
 */
declare function GetUnitName(whichUnit: unit): string;

/**
 * 单位使用人口
 * 单位使用人口数量
 * ${单位} 使用的人口数量
 * @params  unit
 * @return integer
 */
declare function GetUnitFoodUsed(whichUnit: unit): number;

/**
 * 单位提供人口数量
 * ${单位} 提供的人口数量
 * @params  unit
 * @return integer
 */
declare function GetUnitFoodMade(whichUnit: unit): number;

/**
 * 单位-类型 提供的人口
 * 单位提供人口数量(指定单位类型)
 * ${单位类型} 提供的人口数量
 * @params  unitcode
 * @return integer
 */
declare function GetFoodMade(unitid: number | string): number;

/**
 * 单位-类型 使用的人口
 * 单位使用人口数量(指定单位类型)
 * ${单位类型} 使用的人口数量
 * @params  unitcode
 * @return integer
 */
declare function GetFoodUsed(unitid: number | string): number;

/**
 * 允许/禁止 人口占用 [R]
 * 设置 ${单位} : ${Enable/Disable} 其人口占用
 * @params  unit enabledisableoption
 */
declare function SetUnitUseFood(whichUnit: unit, useFood: boolean): void;

/**
 * 聚集点
 * 单位集结点
 * ${单位} 的集结点位置
 * 如果单位没有设置集结点,则返回null. 设置自己为集结点可取消集结点设置. 会创建点.
 * @params  unit
 * @return location
 */
declare function GetUnitRallyPoint(whichUnit: unit): location;

/**
 * 拥有源聚集点单位
 * 单位集结点目标
 * ${单位} 的集结点目标
 * 如果指定单位没有设置集结点到单位目标,则返回null.
 * @params  unit
 * @return unit
 */
declare function GetUnitRallyUnit(whichUnit: unit): unit;

/**
 * 单位 聚集点
 * 单位集结点目标
 * ${单位} 的集结点目标
 * 如果指定单位没有设置集结点到可破坏物上,则返回null.
 * @params  unit
 * @return destructable
 */
declare function GetUnitRallyDestructable(whichUnit: unit): destructable;

/**
 * 单位在 单位组
 * 在单位组
 * ${单位} 在 ${单位组} 中
 * @params  unit group
 * @return boolean
 */
declare function IsUnitInGroup(whichUnit: unit, whichGroup: group): boolean;

/**
 * 是玩家组里玩家的单位
 * ${单位} 属于 ${玩家组} 里的玩家
 * 判断单位是否属于这个玩家组里的玩家。
 * @params  unit force
 * @return boolean
 */
declare function IsUnitInForce(whichUnit: unit, whichForce: force): boolean;

/**
 * 是玩家的单位
 * ${单位} 属于 ${Player}
 * 判断单位是否属于这个玩家。
 * @params  unit player
 * @return boolean
 */
declare function IsUnitOwnedByPlayer(whichUnit: unit, whichPlayer: player): boolean;

/**
 * 单位所属玩家的同盟玩家
 * 是玩家的同盟单位
 * ${单位} 是 ${Player} 的同盟单位
 * 包括中立状态. 单向判断玩家对单位是否为不侵犯状态.
 * @params  unit player
 * @return boolean
 */
declare function IsUnitAlly(whichUnit: unit, whichPlayer: player): boolean;

/**
 * 单位所属玩家的敌对玩家
 * 是玩家的敌对单位
 * ${单位} 是 ${Player} 的敌对单位
 * 不包括中立状态. 单向判断玩家对单位是否为敌对侵犯.
 * @params  unit player
 * @return boolean
 */
declare function IsUnitEnemy(whichUnit: unit, whichPlayer: player): boolean;

/**
 * 单位对于玩家可见
 * 单位可见
 * ${单位} 对 ${Player} 可见
 * @params  unit player
 * @return boolean
 */
declare function IsUnitVisible(whichUnit: unit, whichPlayer: player): boolean;

/**
 * 被检测到
 * ${单位} 处在 ${玩家} 的真实视野范围内
 * 用来判断单位在这个玩家反隐形范围内，注：不包含该玩家同盟的反隐范围。
 * @params  unit player
 * @return boolean
 */
declare function IsUnitDetected(whichUnit: unit, whichPlayer: player): boolean;

/**
 * 单位对于玩家不可见
 * 单位不可见
 * ${单位} 对 ${Player} 不可见
 * @params  unit player
 * @return boolean
 */
declare function IsUnitInvisible(whichUnit: unit, whichPlayer: player): boolean;

/**
 * 单位被战争迷雾遮挡
 * 单位在迷雾中
 * ${单位} 在 ${Player} 的迷雾范围内
 * 黑色阴影内的单位不被计算在内.
 * @params  unit player
 * @return boolean
 */
declare function IsUnitFogged(whichUnit: unit, whichPlayer: player): boolean;

/**
 * 单位被黑色阴影遮挡
 * 单位在黑色阴影中
 * ${单位} 在 ${Player} 的黑色阴影内
 * @params  unit player
 * @return boolean
 */
declare function IsUnitMasked(whichUnit: unit, whichPlayer: player): boolean;

/**
 * 玩家已选定单位
 * 被玩家选择
 * ${单位} 被 ${Player} 选择
 * @params  unit player
 * @return boolean
 */
declare function IsUnitSelected(whichUnit: unit, whichPlayer: player): boolean;

/**
 * 单位种族检查
 * ${单位} 是 ${Race}
 * @params  unit race
 * @return boolean
 */
declare function IsUnitRace(whichUnit: unit, whichRace: race): boolean;

/**
 * 检查单位 分类
 * 单位类别检查
 * ${单位} 是 ${Type}
 * @params  unit unittype
 * @return boolean
 */
declare function IsUnitType(whichUnit: unit, whichUnitType: unittype): boolean;

/**
 * 是单位
 * 单位检查
 * ${单位} 与 ${单位}相同
 * 用来判断两个单位是否相等。
 * @params  unit unit
 * @return boolean
 */
declare function IsUnit(whichUnit: unit, whichSpecifiedUnit: unit): boolean;

/**
 * 在指定单位范围内 [R]
 * ${单位} 在距离 ${指定单位} ${范围} 范围内
 * @params  unit unit real
 * @return boolean
 */
declare function IsUnitInRange(whichUnit: unit, otherUnit: unit, distance: number): boolean;

/**
 * 在指定坐标范围内 [R]
 * ${单位} 在距离坐标(${X},${Y}) ${范围} 范围内
 * @params  unit real real real
 * @return boolean
 */
declare function IsUnitInRangeXY(whichUnit: unit, x: number, y: number, distance: number): boolean;

/**
 * 在指定点范围内 [R]
 * ${单位} 在距离 ${指定点} ${范围} 范围内
 * @params  unit location real
 * @return boolean
 */
declare function IsUnitInRangeLoc(whichUnit: unit, whichLocation: location, distance: number): boolean;

/**
 * 是隐藏单位
 */
declare function IsUnitHidden(whichUnit: unit): boolean;

//是镜像单位
declare function IsUnitIllusion(whichUnit: unit): boolean;

/**
 * 是运输单元
 */
declare function IsUnitInTransport(whichUnit: unit, whichTransport: unit): boolean;

//单位加载
declare function IsUnitLoaded(whichUnit: unit): boolean;

/**
 * 单位类型是英雄单位
 * ${UnitType} 是英雄单位
 * @params  unitcode
 * @return boolean
 */
declare function IsHeroUnitId(unitid: number | string): boolean;

/**
 * 检查单位-类型 分类
 * 单位类别检查(指定单位类型)
 * ${单位类型} 是 ${Type}
 * @params  unitcode unittype
 * @return boolean
 */
declare function IsUnitIdType(unitid: number | string, whichUnitType: unittype): boolean;

/**
 * 共享视野 [R]
 * 设置 ${单位} 的视野对 ${Player} ${on/off}
 * @params  unit player onoffoption
 */
declare function UnitShareVision(whichUnit: unit, whichPlayer: player, share: boolean): void;

/**
 * 暂停尸体腐烂 [R]
 *  设置 ${单位} 的尸体腐烂状态: ${Suspend/Resume}
 * 只对已完成死亡动作的尸体有效.
 * @params  unit suspendresumeoption_R
 */
declare function UnitSuspendDecay(whichUnit: unit, suspend: boolean): void;

/**
 * 添加类别 [R]
 * 为 ${单位} 添加 ${Classification} 类别
 * 已去除所有无效类别.
 * @params  unit unittypeaddable
 */
declare function UnitAddType(whichUnit: unit, whichUnitType: unittype): boolean;

/**
 * 删除类别 [R]
 * 为 ${单位} 删除 ${Classification} 类别
 * 已去除所有无效类别.
 * @params  unit unittypeaddable
 */
declare function UnitRemoveType(whichUnit: unit, whichUnitType: unittype): boolean;

/**
 * 添加技能 [R]
 * 为 ${单位} 添加 ${技能}
 * @params  unit abilcode
 */
declare function UnitAddAbility(whichUnit: unit, abilityid: number | string): boolean;

/**
 * 删除技能 [R]
 * 为 ${单位} 删除 ${技能}
 * @params  unit abilcode
 */
declare function UnitRemoveAbility(whichUnit: unit, abilityid: number | string): boolean;

/**
 * 设置技能永久性 [R]
 * 设置 ${单位} ${是否} ${技能} 永久性
 * 如触发添加给单位的技能就是非永久性的,非永久性技能在变身并回复之后会丢失掉. 这类情况就需要设置技能永久性.
 * @params  unit onoffoption abilcode
 */
declare function UnitMakeAbilityPermanent(whichUnit: unit, permanent: boolean, abilityid: number | string): boolean;

/**
 * 删除魔法效果(指定极性) [R]
 * 删除 ${单位} 的附带Buff,(${Include/Exclude} 正面Buff, ${Include/Exclude} 负面Buff)
 * @params  unit includeoption includeoption
 */
declare function UnitRemoveBuffs(whichUnit: unit, removePositive: boolean, removeNegative: boolean): void;

/**
 * 删除魔法效果(详细类别) [R]
 * 删除 ${单位} 的附带Buff,(${Include/Exclude} 正面Buff, ${Include/Exclude} 负面Buff${Include/Exclude} 魔法Buff, ${Include/Exclude} 物理Buff${Include/Exclude} 生命周期, ${Include/Exclude} 光环效果${Include/Exclude} 不可驱散Buff)
 * @params  unit includeoption includeoption includeoptionnot includeoptionnot includeoption includeoption includeoptionnot
 */
declare function UnitRemoveBuffsEx(whichUnit: unit, removePositive: boolean, removeNegative: boolean, magic: boolean, physical: boolean, timedLife: boolean, aura: boolean, autoDispel: boolean): void;

/**
 * 拥有Buff [R]
 */
declare function UnitHasBuffsEx(whichUnit: unit, removePositive: boolean, removeNegative: boolean, magic: boolean, physical: boolean, timedLife: boolean, aura: boolean, autoDispel: boolean): boolean;

/**
 * 拥有Buff数量 [R]
 * ${单位} 的附带Buff数量,(${Include/Exclude} 正面Buff, ${Include/Exclude} 负面Buff${Include/Exclude} 魔法Buff, ${Include/Exclude} 物理Buff${Include/Exclude} 生命周期, ${Include/Exclude} 光环效果${Include/Exclude} 不可驱散Buff)
 * @params  unit includeoption includeoption includeoptionnot includeoptionnot includeoption includeoption includeoptionnot
 * @return integer
 */
declare function UnitCountBuffsEx(whichUnit: unit, removePositive: boolean, removeNegative: boolean, magic: boolean, physical: boolean, timedLife: boolean, aura: boolean, autoDispel: boolean): number;

/**
 * 单位添加睡眠
 */
declare function UnitAddSleep(whichUnit: unit, add: boolean): void;

/**
 * 单位可以睡眠
 */
declare function UnitCanSleep(whichUnit: unit): boolean;

/**
 * 设置单位睡眠(无论何时)
 * 控制单位睡眠状态
 * 使 ${单位} ${Sleep/Remain Awake}
 * 使用该功能前必须用触发为单位添加'一直睡眠'技能.
 * @params  unit sleepwakeoption
 */
declare function UnitAddSleepPerm(whichUnit: unit, add: boolean): void;

/**
 * 单位在睡觉
 * 允许控制睡眠状态
 * 允许控制 ${单位} 的睡眠状态
 * 即该单位拥有'一直睡眠'技能.
 * @params  unit
 * @return boolean
 */
declare function UnitCanSleepPerm(whichUnit: unit): boolean;

/**
 * 单位在睡眠
 */
declare function UnitIsSleeping(whichUnit: unit): boolean;

declare function UnitWakeUp(whichUnit: unit): void;

/**
 * 设置生命周期 [R]
 * 为 ${单位} 设置 ${Buff Type} 类型的生命周期,持续时间为 ${Duration} 秒
 * @params  unit timedlifebuffcode real
 */
declare function UnitApplyTimedLife(whichUnit: unit, buffid: number | string, duration: number): void;

//单位忽略报警
declare function UnitIgnoreAlarm(whichUnit: unit, flag: boolean): boolean;

//单位忽略报警开关
declare function UnitIgnoreAlarmToggled(whichUnit: unit): boolean;

/**
 * 重设单位技能Cooldown
 * 重置技能CD
 * 重置 ${单位} 的所有技能冷却时间
 * 如果要重置单一技能的CD,可以通过删除技能+添加技能+设置技能等级来完成.
 * @params  unit
 */
declare function UnitResetCooldown(whichUnit: unit): void;

/**
 * 设置建筑物 建筑升级比
 * 设置建筑建造进度条
 * 设置 ${Building} 的建造进度条为 ${Progress}%
 * 只作用于正在建造的建筑.
 * @params  unit integer
 */
declare function UnitSetConstructionProgress(whichUnit: unit, constructionPercentage: number): void;

/**
 * 设置建筑物 科技升级比
 * 设置建筑升级进度条
 * 设置 ${Building} 的升级进度条为 ${Progress}%
 * 只作用于正在升级的建筑. 是建筑A升级为建筑B的升级,不是科技的研究.
 * @params  unit integer
 */
declare function UnitSetUpgradeProgress(whichUnit: unit, upgradePercentage: number): void;

/**
 * 暂停/恢复生命周期 [R]
 * 使 ${单位} ${Pause/Unpause} 生命周期
 * 只有召唤单位有生命周期.
 * @params  unit pauseunpauseoption
 */
declare function UnitPauseTimedLife(whichUnit: unit, flag: boolean): void;

/**
 * 设置单位小地图图标
 */
declare function UnitSetUsesAltIcon(whichUnit: unit, flag: boolean): void;

/**
 * 伤害区域 [R]
 * 命令 ${单位} 在 ${Seconds} 秒后对半径为 ${Size} 圆心为(${X},${Y})的范围造成 ${Amount} 点伤害(${是} 攻击伤害, ${是}远程攻击) 攻击类型: ${AttackType} 伤害类型: ${DamageType} 装甲类型: ${WeaponType}
 * 该动作不会打断单位动作. 由该动作伤害/杀死单位同样正常触发'受到伤害'和'死亡'单位事件.
 * @params  unit real real real real real isnotoption isnotoption attacktype damagetype weapontype
 * @return boolean
 */
declare function UnitDamagePoint(whichUnit: unit, delay: number, radius: number, x: number, y: number, amount: number, attack: boolean, ranged: boolean, attackType: attacktype, damageType: damagetype, weaponType: weapontype): boolean;

/**
 * 伤害目标 [R]
 * 命令 ${单位} 对 ${Target} 造成 ${Amount} 点伤害(${是} 攻击伤害, ${是}远程攻击) 攻击类型: ${AttackType} 伤害类型: ${DamageType} 武器类型: ${WeaponType}
 * 该动作不会打断单位动作. 由该动作伤害/杀死单位同样正常触发'受到伤害'和'死亡'单位事件.
 * @params  unit unit real isnotoption isnotoption attacktype damagetype weapontype
 * @return boolean
 */
declare function UnitDamageTarget(whichUnit: unit, target: widget, amount: number, attack: boolean, ranged: boolean, attackType: attacktype, damageType: damagetype, weaponType: weapontype): boolean;

/**
 * 给单位发送命令到 没有目标
 * 发布命令(无目标)
 * 对 ${单位} 发布 ${Order} 命令
 * @params  unit unitordernotarg
 * @return boolean
 */
declare function IssueImmediateOrder(whichUnit: unit, order: string): boolean;

/**
 * 发布命令(无目标)(ID)
 * 对 ${单位} 发布 ${Order} 命令
 * @params  unit ordercodenotarg
 * @return boolean
 */
declare function IssueImmediateOrderById(whichUnit: unit, order: number): boolean;

/**
 * 发布命令(指定坐标)
 * 发布命令(指定坐标) [R]
 * 对 ${单位} 发布 ${Order} 命令到坐标:(${X},${Y})
 * @params  unit unitorderptarg real real
 * @return boolean
 */
declare function IssuePointOrder(whichUnit: unit, order: string, x: number, y: number): boolean;

/**
 * 给单位发送命令到 点
 * 发布命令(指定点)
 * 对 ${单位} 发布 ${Order} 命令到目标点: ${指定点}
 * @params  unit unitorderptarg location
 * @return boolean
 */
declare function IssuePointOrderLoc(whichUnit: unit, order: string, whichLocation: location): boolean;

/**
 * 发布命令(指定坐标)(ID)
 * 对 ${单位} 发布 ${Order} 命令到坐标:(${X},${Y})
 * @params  unit ordercodeptarg real real
 * @return boolean
 */
declare function IssuePointOrderById(whichUnit: unit, order: number, x: number, y: number): boolean;

/**
 * 发布命令(指定点)(ID)
 * 对 ${单位} 发布 ${Order} 命令到目标点: ${指定点}
 * @params  unit ordercodeptarg location
 * @return boolean
 */
declare function IssuePointOrderByIdLoc(whichUnit: unit, order: number, whichLocation: location): boolean;

/**
 * 给单位发送命令到 单位
 * 发布命令(指定单位)
 * 对 ${单位} 发布 ${Order} 命令到目标: ${单位}
 * @params  unit unitorderutarg unit
 * @return boolean
 */
declare function IssueTargetOrder(whichUnit: unit, order: string, targetWidget: widget): boolean;

/**
 * 发布命令(指定单位)(ID)
 * 对 ${单位} 发布 ${Order} 命令到目标: ${单位}
 * @params  unit ordercodeutarg unit
 * @return boolean
 */
declare function IssueTargetOrderById(whichUnit: unit, order: number, targetWidget: widget): boolean;

/**
 * 发布命令(指定坐标)
 */
declare function IssueInstantPointOrder(whichUnit: unit, order: string, x: number, y: number, instantTargetWidget: widget): boolean;

/**
 * 发布命令(指定点)(ID)
 */
declare function IssueInstantPointOrderById(whichUnit: unit, order: number, x: number, y: number, instantTargetWidget: widget): boolean;

/**
 * 发布命令(指定单位)
 */
declare function IssueInstantTargetOrder(whichUnit: unit, order: string, targetWidget: widget, instantTargetWidget: widget): boolean;

/**
 * 发布命令(指定单位)(ID)
 */
declare function IssueInstantTargetOrderById(whichUnit: unit, order: number, targetWidget: widget, instantTargetWidget: widget): boolean;

/**
 * 发布建造命令(指定坐标) [R]
 */
declare function IssueBuildOrder(whichPeon: unit, unitToBuild: string, x: number, y: number): boolean;

/**
 * 发布建造命令(指定坐标) [R]
 * 命令 ${单位} 建造 ${单位类型} 在坐标:(${X},${Y})
 * @params  unit unitcode real real
 * @return boolean
 */
declare function IssueBuildOrderById(whichPeon: unit, unitid: number | string, x: number, y: number): boolean;

/**
 * 发布中介命令(无目标)
 * 使 ${玩家} 对 ${单位} 发布 ${Order} 命令
 * 可以用来对非本玩家单位发布命令.
 * @params  player unit unitordernotarg
 * @return boolean
 */
declare function IssueNeutralImmediateOrder(forWhichPlayer: player, neutralStructure: unit, unitToBuild: string): boolean;

/**
 * 发布中介命令(无目标)(ID)
 * 使 ${玩家} 对 ${单位} 发布 ${Order} 命令
 * 可以用来对非本玩家单位发布命令.
 * @params  player unit ordercodenotarg
 * @return boolean
 */
declare function IssueNeutralImmediateOrderById(forWhichPlayer: player, neutralStructure: unit, unitid: number | string): boolean;

/**
 * 发布中介命令(指定坐标)
 * 使 ${玩家} 对 ${单位} 发布 ${Order} 命令到坐标:(${X},${Y})
 * 可以用来对非本玩家单位发布命令.
 * @params  player unit unitorderptarg real real
 * @return boolean
 */
declare function IssueNeutralPointOrder(forWhichPlayer: player, neutralStructure: unit, unitToBuild: string, x: number, y: number): boolean;

/**
 * 发布中介命令(指定坐标)(ID)
 * 使 ${玩家} 对 ${单位} 发布 ${Order} 命令到坐标:(${X},${Y})
 * 可以用来对非本玩家单位发布命令.
 * @params  player unit ordercodeptarg real real
 * @return boolean
 */
declare function IssueNeutralPointOrderById(forWhichPlayer: player, neutralStructure: unit, unitid: number | string, x: number, y: number): boolean;

/**
 * 发布中介命令(指定单位)
 * 使 ${玩家} 对 ${单位} 发布 ${Order} 命令到目标: ${单位}
 * 可以用来对非本玩家单位发布命令.
 * @params  player unit unitorderutarg unit
 * @return boolean
 */
declare function IssueNeutralTargetOrder(forWhichPlayer: player, neutralStructure: unit, unitToBuild: string, target: widget): boolean;

/**
 * 发布中介命令(指定单位)(ID)
 * 使 ${玩家} 对 ${单位} 发布 ${Order} 命令到目标: ${单位}
 * 可以用来对非本玩家单位发布命令.
 * @params  player unit ordercodeutarg unit
 * @return boolean
 */
declare function IssueNeutralTargetOrderById(forWhichPlayer: player, neutralStructure: unit, unitid: number | string, target: widget): boolean;

/**
 * 单位当前的命令
 * 当前命令ID
 * ${单位} 的当前命令ID.
 * @params  unit
 * @return ordercode
 */
declare function GetUnitCurrentOrder(whichUnit: unit): number;

/**
 * 设置金矿资源
 * 设置黄金储量
 * 设置 ${金矿} 的黄金储量为 ${Quantity}
 * @params  unit integer
 */
declare function SetResourceAmount(whichUnit: unit, amount: number): void;

/**
 * 添加金矿资源
 */
declare function AddResourceAmount(whichUnit: unit, amount: number): void;

/**
 * 黄金资源数量
 * 储金量
 * ${金矿} 的储金量
 * 只对金矿有效.
 * @params  unit
 * @return integer
 */
declare function GetResourceAmount(whichUnit: unit): number;

/**
 * 传送门目的地X坐标
 * ${传送门} 的目的地X坐标
 * @params  unit
 * @return real
 */
declare function WaygateGetDestinationX(waygate: unit): number;

/**
 * 传送门目的地Y坐标
 * ${传送门} 的目的地Y坐标
 * @params  unit
 * @return real
 */
declare function WaygateGetDestinationY(waygate: unit): number;

/**
 * 设置传送门目的坐标 [R]
 * 设置 ${传送门} 的目的地为(${X},${Y})
 * @params  unit real real
 */
declare function WaygateSetDestination(waygate: unit, x: number, y: number): void;

//传送门激活
declare function WaygateActivate(waygate: unit, activate: boolean): void;

//传送门状态
declare function WaygateIsActive(waygate: unit): boolean;

/**
 * 增加 物品-类型 (到所有商店)
 * 添加物品(所有市场)
 * 添加 ${物品类型} 到所有市场并设置库存量: ${Count} 最大库存量: ${Max}
 * 影响所有拥有'出售物品'技能的单位.
 * @params  itemcode integer integer
 */
declare function AddItemToAllStock(itemid: number | string, currentStock: number, stockMax: number): void;

/**
 * 增加 物品-类型 (到商店)
 */
declare function AddItemToStock(whichUnit: unit, itemid: number | string, currentStock: number, stockMax: number): void;

/**
 * 增加 单位-类型 (到所有商店)
 * 添加单位(所有市场)
 * 添加 ${单位类型} 到所有市场并设置库存量: ${Count} 最大库存量: ${Max}
 * 影响所有拥有'出售单位'技能的单位.
 * @params  unitcode integer integer
 */
declare function AddUnitToAllStock(unitid: number | string, currentStock: number, stockMax: number): void;

/**
 * 增加 单位-类型 (到商店)
 */
declare function AddUnitToStock(whichUnit: unit, unitid: number | string, currentStock: number, stockMax: number): void;

/**
 * 删除 物品-类型 (从所有商店)
 * 删除物品(所有市场)
 * 删除 ${物品类型} 从所有市场
 * 影响所有拥有'出售物品'技能的单位.
 * @params  itemcode
 */
declare function RemoveItemFromAllStock(itemid: number | string): void;

/**
 * 删除 物品-类型 (从商店)
 */
declare function RemoveItemFromStock(whichUnit: unit, itemid: number | string): void;

/**
 * 删除 单位-类型 (从所有商店)
 * 删除单位(所有市场)
 * 删除 ${单位类型} 从所有市场
 * 影响所有拥有'出售单位'技能的单位.
 * @params  unitcode
 */
declare function RemoveUnitFromAllStock(unitid: number | string): void;

/**
 * 删除 单位-类型 (从商店)
 */
declare function RemoveUnitFromStock(whichUnit: unit, unitid: number | string): void;

/**
 * 限制物品的位置 (从所有商店)
 * 限制物品种类(所有市场)
 * 限制所有市场的可出售物品种类数为 ${Quantity}
 * 影响所有拥有'出售物品'技能的单位.
 * @params  integer
 */
declare function SetAllItemTypeSlots(slots: number): void;

/**
 * 限制单位的位置 (从所有商店)
 * 限制单位种类(所有市场)
 * 限制所有市场的可出售单位种类数为 ${Quantity}
 * 影响所有拥有'出售单位'技能的单位.
 * @params  integer
 */
declare function SetAllUnitTypeSlots(slots: number): void;

/**
 * 限制物品的位置 (从商店)
 * 限制物品种类(指定市场)
 * 限制 ${Marketplace} 的可出售物品种类数为 ${Quantity}
 * 只影响有'出售物品'技能的单位.
 * @params  unit integer
 */
declare function SetItemTypeSlots(whichUnit: unit, slots: number): void;

/**
 * 限制单位的位置 (从商店)
 * 限制单位种类(指定市场)
 * 限制 ${Marketplace} 的可出售单位种类数为 ${Quantity}
 * 只影响有'出售单位'技能的单位.
 * @params  unit integer
 */
declare function SetUnitTypeSlots(whichUnit: unit, slots: number): void;

/**
 * 单位自定义值
 * ${单位} 的自定义值
 * 可使用'单位 - 设置自定义值'来设置该值.
 * @params  unit
 * @return integer
 */
declare function GetUnitUserData(whichUnit: unit): number;

/**
 * 设置单位自定义数据
 * 设置自定义值
 * 设置 ${单位} 的自定义值为 ${Index}
 * 单位自定义值仅用于触发器. 可用来给单位绑定一个整型数据.
 * @params  unit integer
 */
declare function SetUnitUserData(whichUnit: unit, data: number): void;

//============================================================================
/**
 * Player API
 */
/**
 * 玩家(下标0)
 * 0-11  = 玩家1-12
 * 12=中立敌对
 * 13=中立受害
 * 14=中立特殊
 * 15=中立被动
 */
declare function Player(number: number): player;

/**
 * 本地玩家 [R]
 * 本地玩家
 * 指代玩家自己,所以对每个玩家返回值都不一样. 如果不清楚该函数的话千万别用,因为很可能因为不同步而导致掉线.
 * @return player
 */
declare function GetLocalPlayer(): player;

/**
 * 玩家是玩家的同盟
 * 是玩家的盟友
 * ${Player} 是 ${Player} 的盟友
 * 包括中立状态. 单向判断玩家A对玩家B联盟不侵犯,即表示玩家A是玩家B的盟友.
 * @params  player player
 * @return boolean
 */
declare function IsPlayerAlly(whichPlayer: player, otherPlayer: player): boolean;

/**
 * 玩家是玩家的敌人
 * ${Player} 是 ${Player} 的敌人
 * 不包括中立状态. 单向判断玩家A对玩家B敌对侵犯,即表示玩家A是玩家B的盟友.
 * @params  player player
 * @return boolean
 */
declare function IsPlayerEnemy(whichPlayer: player, otherPlayer: player): boolean;

/**
 * 玩家在玩家组
 * ${Player} 在 ${玩家组} 中
 * @params  player force
 * @return boolean
 */
declare function IsPlayerInForce(whichPlayer: player, whichForce: force): boolean;

/**
 * 玩家是裁判或观察者 [R]
 * ${Player}是裁判或观察者
 * @params  player
 * @return boolean
 */
declare function IsPlayerObserver(whichPlayer: player): boolean;

/**
 * 坐标可见
 * 坐标(${x},${y}) 对 ${玩家} 可见
 * @params  real real player
 * @return boolean
 */
declare function IsVisibleToPlayer(x: number, y: number, whichPlayer: player): boolean;

/**
 * 点对于玩家可见
 * 点可见
 * ${指定点}对 ${Player} 可见
 * @params  location player
 * @return boolean
 */
declare function IsLocationVisibleToPlayer(whichLocation: location, whichPlayer: player): boolean;

/**
 * 坐标在迷雾中
 * 坐标(${x},${y}) 在 ${玩家} 的迷雾范围内
 * 黑色阴影内的坐标不被计算在内。
 * @params  real real player
 * @return boolean
 */
declare function IsFoggedToPlayer(x: number, y: number, whichPlayer: player): boolean;

/**
 * 点被迷雾遮挡
 * 点在迷雾中
 * ${指定点} 在 ${Player} 的迷雾范围内
 * 黑色阴影内的点不被计算在内.
 * @params  location player
 * @return boolean
 */
declare function IsLocationFoggedToPlayer(whichLocation: location, whichPlayer: player): boolean;

/**
 * 坐标在黑色阴影中
 * 坐标(${x},${y}) 在 ${玩家} 的黑色阴影内
 * @params  real real player
 * @return boolean
 */
declare function IsMaskedToPlayer(x: number, y: number, whichPlayer: player): boolean;

/**
 * 点被黑色阴影遮挡
 * 点在黑色阴影中
 * ${指定点} 在 ${Player} 的黑色阴影内
 * @params  location player
 * @return boolean
 */
declare function IsLocationMaskedToPlayer(whichLocation: location, whichPlayer: player): boolean;

/**
 * 玩家的种族
 * ${Player} 的种族
 * @params  player
 * @return race
 */
declare function GetPlayerRace(whichPlayer: player): race;

/**
 * 玩家ID - 1 [R]
 * ${Player} 的玩家ID - 1
 * 玩家ID取值1-16.
 * 0-11  = 玩家1-12
 * 12=中立敌对
 * 13=中立受害
 * 14=中立特殊
 * 15=中立被动
 * @params  player
 * @return integer
 */
declare function GetPlayerId(whichPlayer: player): number;

/**
 * 单位数量(非建筑)
 * 非建筑单位数量
 * ${Player} 拥有的非建筑单位数量(${Include/Exclude} 未完成的)
 * @params  player includeoption
 * @return integer
 */
declare function GetPlayerUnitCount(whichPlayer: player, includeIncomplete: boolean): number;

//获取玩家特定单位数
declare function GetPlayerTypedUnitCount(whichPlayer: player, unitName: string, includeIncomplete: boolean, includeUpgrades: boolean): number;

/**
 * 获得建筑数量
 * ${Player} 拥有的建筑数量(${Include/Exclude} 未完成的)
 * @params  player includeoption
 * @return integer
 */
declare function GetPlayerStructureCount(whichPlayer: player, includeIncomplete: boolean): number;

/**
 * 获得玩家属性
 * ${Player} ${Property}
 * @params  player playerstate
 * @return integer
 */
declare function GetPlayerState(whichPlayer: player, whichPlayerState: playerstate): number;

/**
 * 获得玩家得分
 * ${Player} ${Score}
 * @params  player playerscore
 * @return integer
 */
declare function GetPlayerScore(whichPlayer: player, whichPlayerScore: playerscore): number;

/**
 * 玩家与玩家结盟
 * 联盟状态设置
 * ${Player} 对 ${Player} 开启 ${Alliance Type}
 * @params  player player alliancetype
 * @return boolean
 */
declare function GetPlayerAlliance(sourcePlayer: player, otherPlayer: player, whichAllianceSetting: alliancetype): boolean;

//经验上限 [R]
declare function GetPlayerHandicap(whichPlayer: player): number;

//经验获得率 [R]
declare function GetPlayerHandicapXP(whichPlayer: player): number;

//玩家障碍恢复时间
declare function GetPlayerHandicapReviveTime(whichPlayer: player): number;

//玩家遭受残疾伤害
declare function GetPlayerHandicapDamage(whichPlayer: player): number;

/**
 * 设置经验上限 [R]
 * 设置生命上限 [R]
 * 设置 ${Player} 的生命障碍为正常的 ${Percent}倍
 * 生命上限影响玩家拥有单位的生命最大值. 生命之书并不受生命上限限制,所以对英雄血量可能会有偏差.
 * @params  player real
 */
declare function SetPlayerHandicap(whichPlayer: player, handicap: number): void;

/**
 * 设置经验获得率 [R]
 * 设置 ${Player} 的经验获得率为正常的 ${Value} 倍
 * @params  player real
 */
declare function SetPlayerHandicapXP(whichPlayer: player, handicap: number): void;

//设置玩家障碍恢复时间
declare function SetPlayerHandicapReviveTime(whichPlayer: player, handicap: number): void;

//设置玩家残障伤害
declare function SetPlayerHandicapDamage(whichPlayer: player, handicap: number): void;

//允许玩家的科技上限
declare function SetPlayerTechMaxAllowed(whichPlayer: player, techid: number | string, maximum: number): void;

/**
 * 获取允许玩家的科技上限
 * 单位默认建造数量为2147483647 */
declare function GetPlayerTechMaxAllowed(whichPlayer: player, techid: number | string): number;

/**
 * 增加科技等级
 * 增加 ${玩家} 的 ${科技} 科技 ${整数} 级
 * 科技等级不能倒退。
 * @params  player techcode integer
 */
declare function AddPlayerTechResearched(whichPlayer: player, techid: number | string, levels: number): void;

/**
 * 设置玩家科技等级
 */
declare function SetPlayerTechResearched(whichPlayer: player, techid: number | string, setToLevel: number): void;

/**
 * 获取玩家科技是否已经研究
 */
declare function GetPlayerTechResearched(whichPlayer: player, techid: number | string, specificonly: boolean): boolean;

/**
 * 获取玩家科技数量
 */
declare function GetPlayerTechCount(whichPlayer: player, techid: number | string, specificonly: boolean): number;

/**
 * 设置单位所属玩家
 */
declare function SetPlayerUnitsOwner(whichPlayer: player, newOwner: number): void;

/**
 * 削弱玩家
 */
declare function CripplePlayer(whichPlayer: player, toWhichPlayers: force, flag: boolean): void;

/**
 * 允许/禁用 技能 [R]
 * 设置 ${Player} 的 ${技能} 为 ${Enable/Disable}
 * 设置玩家能否使用该技能.
 * @params  player abilcode enabledisableoption
 */
declare function SetPlayerAbilityAvailable(whichPlayer: player, abilid: number | string, avail: boolean): void;

/**
 * 设置玩家属性
 * 设置属性
 * 设置 ${Player} 的 ${Property} 为 ${Value}
 * @params  player playerstate integer
 */
declare function SetPlayerState(whichPlayer: player, whichPlayerState: playerstate, value: number): void;

/**
 * 踢除玩家
 * 踢除 ${Player} ，玩家的游戏结果为 ${文字}
 * @params  player playergameresult
 */
declare function RemovePlayer(whichPlayer: player, gameResult: playergameresult): void;

/**
 * Used to store hero level data for the scorescreen
 */

/**
 * before units are moved to neutral passive in melee games
 */
/**
 * 缓存玩家数据
 */
declare function CachePlayerHeroData(whichPlayer: player): void;

//============================================================================
/**
 * Fog of War API
 */
/**
 * 设置地图迷雾(矩形区域) [R]
 * 为 ${玩家} 设置 ${FogStateVisible} 在 ${矩形区域} (对盟友 ${共享} 视野)
 * @params  player fogstate rect sharevisionoption
 */
declare function SetFogStateRect(forWhichPlayer: player, whichState: fogstate, where: rect, useSharedVision: boolean): void;

/**
 * 设置地图迷雾(圆范围) [R]
 * 为 ${玩家} 设置 ${FogStateVisible} 在圆心为(${X},${Y}) 半径为 ${数值} 的范围, (对盟友 ${共享} 视野)
 * @params  player fogstate real real real sharevisionoption
 */
declare function SetFogStateRadius(forWhichPlayer: player, whichState: fogstate, centerx: number, centerY: number, radius: number, useSharedVision: boolean): void;

/**
 * 设置地图迷雾(圆范围) [R]
 */
declare function SetFogStateRadiusLoc(forWhichPlayer: player, whichState: fogstate, center: location, radius: number, useSharedVision: boolean): void;

/**
 * 启用/禁用黑色阴影 [R]
 * ${启用/禁用} 黑色阴影
 * @params  enableddisabledoption
 */
declare function FogMaskEnable(enable: boolean): void;

/**
 * 允许黑色阴影
 * 黑色阴影开启
 * 黑色阴影开启
 * @return boolean
 */
declare function IsFogMaskEnabled(): boolean;

/**
 * 启用/禁用 战争迷雾 [R]
 * ${启用/禁用} 战争迷雾
 * @params  enableddisabledoption
 */
declare function FogEnable(enable: boolean): void;

/**
 * 允许战争迷雾
 * 战争迷雾开启
 * 战争迷雾开启
 * @return boolean
 */
declare function IsFogEnabled(): boolean;

/**
 * 新建可见度修正器(矩形区域) [R]
 * 新建的 ${玩家} 可见度修正器. 可见度: ${FogStateVisible} 影响区域: ${矩形区域} (对盟友 ${共享} 视野, ${覆盖} 单位视野)
 * 会创建可见度修正器.
 * @params  player fogstate rect sharevisionoption converunitoption
 * @return fogmodifier
 */
declare function CreateFogModifierRect(forWhichPlayer: player, whichState: fogstate, where: rect, useSharedVision: boolean, afterUnits: boolean): fogmodifier;

/**
 * 新建可见度修正器(圆范围) [R]
 * 新建的 ${玩家} 可见度修正器. 可见度: ${FogStateVisible} 圆心坐标:(${X},${Y}) 半径: ${数值} (对盟友 ${共享} 视野, ${覆盖} 单位视野)
 * 会创建可见度修正器.
 * @params  player fogstate real real real sharevisionoption converunitoption
 * @return fogmodifier
 */
declare function CreateFogModifierRadius(forWhichPlayer: player, whichState: fogstate, centerx: number, centerY: number, radius: number, useSharedVision: boolean, afterUnits: boolean): fogmodifier;

/**
 * 新建可见度修正器(圆范围) [R]
 */
declare function CreateFogModifierRadiusLoc(forWhichPlayer: player, whichState: fogstate, center: location, radius: number, useSharedVision: boolean, afterUnits: boolean): fogmodifier;

/**
 * 删除可见度修正器
 * 删除 ${Visibility Modifier}
 * @params  fogmodifier
 */
declare function DestroyFogModifier(whichFogModifier: fogmodifier): void;

/**
 * 允许可见度修正器
 * 启用可见度修正器
 * 启用 ${Visibility Modifier}
 * @params  fogmodifier
 */
declare function FogModifierStart(whichFogModifier: fogmodifier): void;

/**
 * 禁止可见度修正器
 * 禁用可见度修正器
 * 禁用 ${Visibility Modifier}
 * @params  fogmodifier
 */
declare function FogModifierStop(whichFogModifier: fogmodifier): void;

//============================================================================
/**
 * Game API
 */
/**
 * 获取版本
 */
declare function VersionGet(): version;

/**
 * 版本兼容
 */
declare function VersionCompatible(whichVersion: version): boolean;

/**
 * 版本支持
 */
declare function VersionSupported(whichVersion: version): boolean;

/**
 * 最后阶段
 */
declare function EndGame(doScoreScreen: boolean): void;

/**
 * Async only!
 */
/**
 * 切换关卡 [R]
 * 切换到关卡: ${Filename} (${Show/Skip} 计分屏)
 * @params  anyfile useskipoption
 */
declare function ChangeLevel(newLevel: string, doScoreScreen: boolean): void;

/**
 * 重启游戏
 */
declare function RestartGame(doScoreScreen: boolean): void;

/**
 * 从加载游戏
 */
declare function ReloadGame(): void;

/**
 * %%% SetCampaignMenuRace is deprecated.  It must remain to support
 */
/**
 * old maps which use it, but all new maps should use SetCampaignMenuRaceEx
 */

/**
 * old maps which use it, but all new maps should use SetCampaignMenuRaceEx
 */
/**
 * 设置战役菜单竞赛 @deprecated("这方法不建议使用,应该使用SetCampaignMenuRaceEx代替")
 */
declare function SetCampaignMenuRace(r: race): void;

/**
 * 设置战役菜单竞赛
 */
declare function SetCampaignMenuRaceEx(campaignIndex: number): void;

/**
 * 部队行动选择画面
 */
declare function ForceCampaignSelectScreen(): void;

/**
 * 加载游戏
 */
declare function LoadGame(saveFileName: string, doScoreScreen: boolean): void;

/**
 * 保存进度 [R]
 * 保存游戏进度为: ${Filename}
 * @params  anyfile
 */
declare function SaveGame(saveFileName: string): void;

/**
 * 重命名保存目录
 */
declare function RenameSaveDirectory(sourceDirName: string, destDirName: string): boolean;

/**
 * 移除保存目录
 */
declare function RemoveSaveDirectory(sourceDirName: string): boolean;

/**
 * 复制保存目录
 */
declare function CopySaveGame(sourceSaveName: string, destSaveName: string): boolean;

/**
 * 游戏进度是存在的
 * 游戏存档存在
 * ${存档文件} 已存在
 * @params  anyfile
 * @return boolean
 */
declare function SaveGameExists(saveName: string): boolean;

/**
 * 设置最大关卡保存
 */
declare function SetMaxCheckpointSaves(maxCheckpointSaves: number): void;

/**
 * 保存关卡
 */
declare function SaveGameCheckpoint(saveFileName: string, showWindow: boolean): void;

/**
 * 同步选择
 * runtime.sleep (默认为 false)
 * common.j 中包含 sleep 操作的函数有 4 个，
 * TriggerSleepAction/TriggerSyncReady/TriggerWaitForSound/SyncSelections。
 * 当此项为 false 时，lua 引擎会忽略这 4 个函数的调用，并给予运行时警告。当此项为 true 时，这 4 个函数将会得到正确的执行。
 *
 * 但请注意此项为 true 时将降低 lua 引擎的运行效率，即使你没有使用这 4 个函数。
 *
 * 这个函数内部包含了等待
 *@deprecated
 */
declare function SyncSelections(): void;

declare function SetFloatGameState(whichFloatGameState: fgamestate, value: number): void;

declare function GetFloatGameState(whichFloatGameState: fgamestate): number;

declare function SetIntegerGameState(whichIntegerGameState: igamestate, value: number): void;

declare function GetIntegerGameState(whichIntegerGameState: igamestate): number;

//============================================================================
/**
 * Campaign API
 */
/**
 * Campaign API
 */
declare function SetTutorialCleared(cleared: boolean): void;

declare function SetMissionAvailable(campaignNumber: number, missionNumber: number, available: boolean): void;

declare function SetCampaignAvailable(campaignNumber: number, available: boolean): void;

declare function SetOpCinematicAvailable(campaignNumber: number, available: boolean): void;

declare function SetEdCinematicAvailable(campaignNumber: number, available: boolean): void;

declare function GetDefaultDifficulty(): gamedifficulty;

declare function SetDefaultDifficulty(g: gamedifficulty): void;

declare function SetCustomCampaignButtonVisible(whichButton: number, visible: boolean): void;

declare function GetCustomCampaignButtonVisible(whichButton: number): boolean;

/**
 * 关闭游戏录像功能 [R]
 * 关闭游戏录像功能
 * 游戏结束时不保存游戏录像.
 */
declare function DoNotSaveReplay(): void;

//============================================================================
/**
 * Dialog API
 */
/**
 * 新建对话框 [R]
 * 新建对话框
 * 创建新的对话框.
 * @return dialog
 */
declare function DialogCreate(): dialog;

/**
 * 删除对话框 [R]
 * 删除 [R]
 * 删除 ${对话框}
 * 将对话框清除出内存.一般来说对话框并不需要删除.
 * @params  dialog
 */
declare function DialogDestroy(whichDialog: dialog): void;

/**
 * 清空对话框
 */
declare function DialogClear(whichDialog: dialog): void;

/**
 * 设置对话框信息
 */
declare function DialogSetMessage(whichDialog: dialog, messageText: string): void;

/**
 * 添加对话框按钮 [R]
 * 给 ${对话框} 添加按钮, 使用标题: ${文字} 快捷键: ${HotKey}
 * 会创建对话框按钮.
 * @params  dialog StringExt hotkeyint
 * @return button
 */
declare function DialogAddButton(whichDialog: dialog, buttonText: string, hotkey: number): button;

/**
 * 添加退出游戏按钮 [R]
 * 为 ${对话框} 添加退出游戏按钮(${跳过} 计分屏) 按钮标题为: ${文字} 快捷键为: ${HotKey}
 * 该函数创建的按钮并不被纪录到'最后创建的对话框按钮'.当该按钮被点击时会退出游戏
 * @params  dialog useskipoption StringExt hotkeyint
 */
declare function DialogAddQuitButton(whichDialog: dialog, doScoreScreen: boolean, buttonText: string, hotkey: number): button;

/**
 * 显示/隐藏 [R]
 * 对 ${Player} 设置 ${对话框} 的状态为 ${Show/Hide}
 * 对话框不能应用于地图初始化事件.
 * @params  player dialog showhideoption
 */
declare function DialogDisplay(whichPlayer: player, whichDialog: dialog, flag: boolean): void;

/**
 * Creates a new or reads in an existing game cache file stored
 */
/**
 * in the current campaign profile dir
 */

//
/**
 * 读取所有缓存
 * 读取本地缓存数据
 * 从本地硬盘读取缓存数据
 * 只对单机游戏有效,从本地硬盘读取缓存数据,主要用来实现战役关卡间的数据传递.
 * @params  nothing
 */
declare function ReloadGameCachesFromDisk(): boolean;

/**
 * 新建游戏缓存 [R]
 * 新建游戏缓存: ${缓存名}
 * 创建一个新的游戏缓存,一个地图最多只有有256个游戏缓存.
 * @params  string
 * @return gamecache
 */
declare function InitGameCache(campaignFile: string): gamecache;

/**
 * 保存游戏缓存
 */
declare function SaveGameCache(whichCache: gamecache): boolean;

/**
 * 记录整数
 * 缓存: ${Game Cache}  类别名: ${Category} 使用名称: ${文字} 记录: ${整数}
 * 使用'游戏缓存 - 读取整数'来读取该数值. 名称和类别名不能包含空格.
 * @params  gamecache string string integer
 */
declare function StoreInteger(cache: gamecache, missionKey: string, key: string, value: number): void;

/**
 * 记录实数
 * 缓存: ${Game Cache}  类别名: ${Category} 使用名称: ${文字} 记录: ${实数}
 * 使用'游戏缓存 - 读取实数'来读取该数值. 名称和类别名不能包含空格.
 * @params  gamecache string string real
 */
declare function StoreReal(cache: gamecache, missionKey: string, key: string, value: number): void;

/**
 * 记录布尔值
 * 缓存: ${Game Cache}  类别名: ${Category} 使用名称: ${文字} 记录: ${布尔值}
 * 使用'游戏缓存 - 读取布尔值'来读取该值. 名称和类别名不能包含空格.
 * @params  gamecache string string boolean
 */
declare function StoreBoolean(cache: gamecache, missionKey: string, key: string, value: boolean): void;

/**
 * 记录单位
 */
declare function StoreUnit(cache: gamecache, missionKey: string, key: string, whichUnit: unit): boolean;

/**
 * 记录字符串
 * 缓存: ${Game Cache}  类别名: ${Category} 使用名称: ${文字} 记录: ${字符串}
 * 使用'游戏缓存 - 读取字符串'来读取该值. 名称和类别名不能包含空格.
 * @params  gamecache string string string
 */
declare function StoreString(cache: gamecache, missionKey: string, key: string, value: string): boolean;

declare function SyncStoredInteger(cache: gamecache, missionKey: string, key: string): void;

declare function SyncStoredReal(cache: gamecache, missionKey: string, key: string): void;

declare function SyncStoredBoolean(cache: gamecache, missionKey: string, key: string): void;

declare function SyncStoredUnit(cache: gamecache, missionKey: string, key: string): void;

declare function SyncStoredString(cache: gamecache, missionKey: string, key: string): void;

declare function HaveStoredInteger(cache: gamecache, missionKey: string, key: string): boolean;

declare function HaveStoredReal(cache: gamecache, missionKey: string, key: string): boolean;

declare function HaveStoredBoolean(cache: gamecache, missionKey: string, key: string): boolean;

declare function HaveStoredUnit(cache: gamecache, missionKey: string, key: string): boolean;

declare function HaveStoredString(cache: gamecache, missionKey: string, key: string): boolean;

/**
 * 删除缓存 [C]
 * 删除 ${GameCache}
 * 删除并清空该缓存的所有数据.和原版UI完全一致，但却不能兼容原版UI，它的存在完全是在添乱啊
 * @params  gamecache
 */
declare function FlushGameCache(cache: gamecache): void;

/**
 * 删除类别
 * 删除缓存 ${GameCache} 中 ${Category} 类别
 * 清空该类别下的所有缓存数据.
 * @params  gamecache string
 */
declare function FlushStoredMission(cache: gamecache, missionKey: string): void;

/**
 * 删除整数
 */
declare function FlushStoredInteger(cache: gamecache, missionKey: string, key: string): void;

/**
 * 删除实数
 */
declare function FlushStoredReal(cache: gamecache, missionKey: string, key: string): void;

/**
 * 删除布尔值
 */
declare function FlushStoredBoolean(cache: gamecache, missionKey: string, key: string): void;

/**
 * 删除单位
 */
declare function FlushStoredUnit(cache: gamecache, missionKey: string, key: string): void;

/**
 * 删除字符串
 */
declare function FlushStoredString(cache: gamecache, missionKey: string, key: string): void;

/**
 * Will return 0 if the specified value's data is not found in the cache
 */
/**
 * 缓存读取整数 [C]
 * 从${Game Cache}中读取整数值,类别: ${Category},名称: ${文字}
 * 如果该值不存在则返回0.
 * @params  gamecache string string
 * @return integer
 */
declare function GetStoredInteger(cache: gamecache, missionKey: string, key: string): number;

/**
 * 缓存读取实数 [C]
 * 从 ${Game Cache} 中读取实数,类别: ${Category} 名称: ${文字}
 * 如果该值不存在则返回0.
 * @params  gamecache string string
 * @return real
 */
declare function GetStoredReal(cache: gamecache, missionKey: string, key: string): number;

/**
 * 读取布尔值[R]
 * 从${Game Cache}中读取布尔值,类别: ${Category},名称: ${文字}
 * 如果该值不存在则返回false.
 * @params  gamecache string string
 * @return boolean
 */
declare function GetStoredBoolean(cache: gamecache, missionKey: string, key: string): boolean;

/**
 * 读取字符串 [C]
 * 从 ${Game Cache} 中读取字符串,类别: ${Category} 名称: ${文字}
 * 如果该值不存在,则返回空字符串. 注意,空字符串不等于null
 * @params  gamecache string string
 * @return string
 */
declare function GetStoredString(cache: gamecache, missionKey: string, key: string): string;

/**
 * 恢复单位
 */
declare function RestoreUnit(cache: gamecache, missionKey: string, key: string, forWhichPlayer: player, x: number, y: number, facing: number): unit;

/**
 * <1.24> 新建哈希表 [C]
 * 创建一个新的哈希表
 * 您可以使用哈希表来储存临时数据
 */
declare function InitHashtable(): hashtable;

/**
 * <1.24> 保存整数 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存整数 ${Value}
 * 使用 '哈希表 - 从哈希表提取整数' 可以取出保存的值
 * @params  hashtable integer integer integer
 */
declare function SaveInteger(table: hashtable, parentKey: number, childKey: number, value: number): void;

/**
 * <1.24> 保存实数 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存实数 ${Value}
 * 使用 '哈希表 - 从哈希表提取实数' 可以取出保存的值
 * @params  hashtable integer integer real
 */
declare function SaveReal(table: hashtable, parentKey: number, childKey: number, value: number): void;

/**
 * <1.24> 保存布尔 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存布尔 ${Value}
 * 使用 '哈希表 - 从哈希表提取布尔' 可以取出保存的值
 * @params  hashtable integer integer boolean
 */
declare function SaveBoolean(table: hashtable, parentKey: number, childKey: number, value: boolean): void;

/**
 * <1.24> 保存字符串 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存字符串 ${Value}
 * 使用 '哈希表 - 从哈希表提取字符串' 可以取出保存的值
 * @params  hashtable integer integer string
 */
declare function SaveStr(table: hashtable, parentKey: number, childKey: number, value: string): boolean;

/**
 * <1.24> 保存玩家 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存玩家 ${Value}
 * 使用 '哈希表 - 从哈希表提取玩家' 可以取出保存的值
 * @params  hashtable integer integer player
 */
declare function SavePlayerHandle(table: hashtable, parentKey: number, childKey: number, whichPlayer: player): boolean;

declare function SaveWidgetHandle(table: hashtable, parentKey: number, childKey: number, whichWidget: widget): boolean;

/**
 * <1.24> 保存可破坏物 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存可破坏物 ${Value}
 * 使用 '哈希表 - 从哈希表提取可破坏物' 可以取出保存的值
 * @params  hashtable integer integer destructable
 */
declare function SaveDestructableHandle(table: hashtable, parentKey: number, childKey: number, whichDestructable: destructable): boolean;

/**
 * <1.24> 保存物品 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存物品 ${Value}
 * 使用 '哈希表 - 从哈希表提取物品' 可以取出保存的值
 * @params  hashtable integer integer item
 */
declare function SaveItemHandle(table: hashtable, parentKey: number, childKey: number, whichItem: item): boolean;

/**
 * <1.24> 保存单位 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存单位 ${Value}
 * 使用 '哈希表 - 从哈希表提取单位' 可以取出保存的值
 * @params  hashtable integer integer unit
 */
declare function SaveUnitHandle(table: hashtable, parentKey: number, childKey: number, whichUnit: unit): boolean;

declare function SaveAbilityHandle(table: hashtable, parentKey: number, childKey: number, whichAbility: ability): boolean;

/**
 * <1.24> 保存计时器 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存计时器 ${Value}
 * 使用 '哈希表 - 从哈希表提取计时器' 可以取出保存的值
 * @params  hashtable integer integer timer
 */
declare function SaveTimerHandle(table: hashtable, parentKey: number, childKey: number, whichTimer: timer): boolean;

/**
 * <1.24> 保存触发器 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存触发器 ${Value}
 * 使用 '哈希表 - 从哈希表提取触发器' 可以取出保存的值
 * @params  hashtable integer integer trigger
 */
declare function SaveTriggerHandle(table: hashtable, parentKey: number, childKey: number, whichTrigger: trigger): boolean;

/**
 * <1.24> 保存触发条件 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存触发条件 ${Value}
 * 使用 '哈希表 - 从哈希表提取触发条件' 可以取出保存的值
 * @params  hashtable integer integer triggercondition
 */
declare function SaveTriggerConditionHandle(table: hashtable, parentKey: number, childKey: number, whichTriggercondition: triggercondition): boolean;

/**
 * <1.24> 保存触发动作 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存触发动作 ${Value}
 * 使用 '哈希表 - 从哈希表提取触发动作' 可以取出保存的值
 * @params  hashtable integer integer triggeraction
 */
declare function SaveTriggerActionHandle(table: hashtable, parentKey: number, childKey: number, whichTriggeraction: triggeraction): boolean;

/**
 * <1.24> 保存触发事件 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存触发事件 ${Value}
 * 使用 '哈希表 - 从哈希表提取触发事件' 可以取出保存的值
 * @params  hashtable integer integer event
 */
declare function SaveTriggerEventHandle(table: hashtable, parentKey: number, childKey: number, whichEvent: event): boolean;

/**
 * <1.24> 保存玩家组 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存玩家组 ${Value}
 * 使用 '哈希表 - 从哈希表提取玩家组' 可以取出保存的值
 * @params  hashtable integer integer force
 */
declare function SaveForceHandle(table: hashtable, parentKey: number, childKey: number, whichForce: force): boolean;

/**
 * <1.24> 保存单位组 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存单位组 ${Value}
 * 使用 '哈希表 - 从哈希表提取单位组' 可以取出保存的值
 * @params  hashtable integer integer group
 */
declare function SaveGroupHandle(table: hashtable, parentKey: number, childKey: number, whichGroup: group): boolean;

/**
 * <1.24> 保存点 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存点 ${Value}
 * 使用 '哈希表 - 从哈希表提取点' 可以取出保存的值
 * @params  hashtable integer integer location
 */
declare function SaveLocationHandle(table: hashtable, parentKey: number, childKey: number, whichLocation: location): boolean;

/**
 * <1.24> 保存区域(矩型) [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存区域(矩型) ${Value}
 * 使用 '哈希表 - 从哈希表提取区域(矩型)' 可以取出保存的值
 * @params  hashtable integer integer rect
 */
declare function SaveRectHandle(table: hashtable, parentKey: number, childKey: number, whichRect: rect): boolean;

/**
 * <1.24> 保存布尔表达式 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存布尔表达式 ${Value}
 * 使用 '哈希表 - 从哈希表提取布尔表达式' 可以取出保存的值
 * @params  hashtable integer integer boolexpr
 */
declare function SaveBooleanExprHandle(table: hashtable, parentKey: number, childKey: number, whichBoolexpr: boolexpr): boolean;

/**
 * <1.24> 保存音效 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存音效 ${Value}
 * 使用 '哈希表 - 从哈希表提取音效' 可以取出保存的值
 * @params  hashtable integer integer sound
 */
declare function SaveSoundHandle(table: hashtable, parentKey: number, childKey: number, whichSound: sound): boolean;

/**
 * <1.24> 保存特效 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存特效 ${Value}
 * 使用 '哈希表 - 从哈希表提取特效' 可以取出保存的值
 * @params  hashtable integer integer effect
 */
declare function SaveEffectHandle(table: hashtable, parentKey: number, childKey: number, whichEffect: effect): boolean;

/**
 * <1.24> 保存单位池 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存单位池 ${Value}
 * 使用 '哈希表 - 从哈希表提取单位池' 可以取出保存的值
 * @params  hashtable integer integer unitpool
 */
declare function SaveUnitPoolHandle(table: hashtable, parentKey: number, childKey: number, whichUnitpool: unitpool): boolean;

/**
 * <1.24> 保存物品池 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存物品池 ${Value}
 * 使用 '哈希表 - 从哈希表提取物品池' 可以取出保存的值
 * @params  hashtable integer integer itempool
 */
declare function SaveItemPoolHandle(table: hashtable, parentKey: number, childKey: number, whichItempool: itempool): boolean;

/**
 * <1.24> 保存任务 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存任务 ${Value}
 * 使用 '哈希表 - 从哈希表提取任务' 可以取出保存的值
 * @params  hashtable integer integer quest
 */
declare function SaveQuestHandle(table: hashtable, parentKey: number, childKey: number, whichQuest: quest): boolean;

/**
 * <1.24> 保存任务要求 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存任务要求 ${Value}
 * 使用 '哈希表 - 从哈希表提取任务要求' 可以取出保存的值
 * @params  hashtable integer integer questitem
 */
declare function SaveQuestItemHandle(table: hashtable, parentKey: number, childKey: number, whichQuestitem: questitem): boolean;

/**
 * <1.24> 保存失败条件 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存失败条件 ${Value}
 * 使用 '哈希表 - 从哈希表提取失败条件' 可以取出保存的值
 * @params  hashtable integer integer defeatcondition
 */
declare function SaveDefeatConditionHandle(table: hashtable, parentKey: number, childKey: number, whichDefeatcondition: defeatcondition): boolean;

/**
 * <1.24> 保存计时器窗口 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存计时器窗口 ${Value}
 * 使用 '哈希表 - 从哈希表提取计时器窗口' 可以取出保存的值
 * @params  hashtable integer integer timerdialog
 */
declare function SaveTimerDialogHandle(table: hashtable, parentKey: number, childKey: number, whichTimerdialog: timerdialog): boolean;

/**
 * <1.24> 保存排行榜 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存排行榜 ${Value}
 * 使用 '哈希表 - 从哈希表提取排行榜' 可以取出保存的值
 * @params  hashtable integer integer leaderboard
 */
declare function SaveLeaderboardHandle(table: hashtable, parentKey: number, childKey: number, whichLeaderboard: leaderboard): boolean;

/**
 * <1.24> 保存多面板 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存多面板 ${Value}
 * 使用 '哈希表 - 从哈希表提取多面板' 可以取出保存的值
 * @params  hashtable integer integer multiboard
 */
declare function SaveMultiboardHandle(table: hashtable, parentKey: number, childKey: number, whichMultiboard: multiboard): boolean;

/**
 * <1.24> 保存多面板项目 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存多面板项目 ${Value}
 * 使用 '哈希表 - 从哈希表提取多面板项目' 可以取出保存的值
 * @params  hashtable integer integer multiboarditem
 */
declare function SaveMultiboardItemHandle(table: hashtable, parentKey: number, childKey: number, whichMultiboarditem: multiboarditem): boolean;

/**
 * <1.24> 保存可追踪物 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存可追踪物 ${Value}
 * 使用 '哈希表 - 从哈希表提取可追踪物' 可以取出保存的值
 * @params  hashtable integer integer trackable
 */
declare function SaveTrackableHandle(table: hashtable, parentKey: number, childKey: number, whichTrackable: trackable): boolean;

/**
 * <1.24> 保存对话框 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存对话框 ${Value}
 * 使用 '哈希表 - 从哈希表提取对话框' 可以取出保存的值
 * @params  hashtable integer integer dialog
 */
declare function SaveDialogHandle(table: hashtable, parentKey: number, childKey: number, whichDialog: dialog): boolean;

/**
 * <1.24> 保存对话框按钮 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存对话框按钮 ${Value}
 * 使用 '哈希表 - 从哈希表提取对话框按钮' 可以取出保存的值
 * @params  hashtable integer integer button
 */
declare function SaveButtonHandle(table: hashtable, parentKey: number, childKey: number, whichButton: button): boolean;

/**
 * <1.24> 保存漂浮文字 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存漂浮文字 ${Value}
 * 使用 '哈希表 - 从哈希表提取漂浮文字' 可以取出保存的值
 * @params  hashtable integer integer texttag
 */
declare function SaveTextTagHandle(table: hashtable, parentKey: number, childKey: number, whichTexttag: texttag): boolean;

/**
 * <1.24> 保存闪电效果 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存闪电效果 ${Value}
 * 使用 '哈希表 - 从哈希表提取闪电效果' 可以取出保存的值
 * @params  hashtable integer integer lightning
 */
declare function SaveLightningHandle(table: hashtable, parentKey: number, childKey: number, whichLightning: lightning): boolean;

/**
 * <1.24> 保存图像 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存图像 ${Value}
 * 使用 '哈希表 - 从哈希表提取图像' 可以取出保存的值
 * @params  hashtable integer integer image
 */
declare function SaveImageHandle(table: hashtable, parentKey: number, childKey: number, whichImage: image): boolean;

/**
 * <1.24> 保存地面纹理变化 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存地面纹理变化 ${Value}
 * 使用 '哈希表 - 从哈希表提取地面纹理变化' 可以取出保存的值
 * @params  hashtable integer integer ubersplat
 */
declare function SaveUbersplatHandle(table: hashtable, parentKey: number, childKey: number, whichUbersplat: ubersplat): boolean;

/**
 * <1.24> 保存区域(不规则) [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存区域(不规则) ${Value}
 * 使用 '哈希表 - 从哈希表提取区域(不规则)' 可以取出保存的值
 * @params  hashtable integer integer region
 */
declare function SaveRegionHandle(table: hashtable, parentKey: number, childKey: number, whichRegion: region): boolean;

/**
 * <1.24> 保存迷雾状态 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存迷雾状态 ${Value}
 * 使用 '哈希表 - 从哈希表提取迷雾状态' 可以取出保存的值
 * @params  hashtable integer integer fogstate
 */
declare function SaveFogStateHandle(table: hashtable, parentKey: number, childKey: number, whichFogState: fogstate): boolean;

/**
 * <1.24> 保存可见度修正器 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存可见度修正器 ${Value}
 * 使用 '哈希表 - 从哈希表提取可见度修正器' 可以取出保存的值
 * @params  hashtable integer integer fogmodifier
 */
declare function SaveFogModifierHandle(table: hashtable, parentKey: number, childKey: number, whichFogModifier: fogmodifier): boolean;

/**
 * <1.24> 保存实体对象 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存对象 ${Value}
 * 实体对象即一切需要计算变量连接数的对象
 * @params  hashtable integer integer agent
 */
declare function SaveAgentHandle(table: hashtable, parentKey: number, childKey: number, whichAgent: agent): boolean;

/**
 * <1.24> 保存哈希表 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 中保存哈希表 ${Value}
 * 使用 '哈希表 - 从哈希表提取哈希表' 可以取出保存的值
 * @params  hashtable integer integer hashtable
 */
declare function SaveHashtableHandle(table: hashtable, parentKey: number, childKey: number, whichHashtable: hashtable): boolean;

/**
 * <1.24> 从哈希表提取整数 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取整数
 * 如果不存在则返回0
 * @params  hashtable integer integer
 * @return integer
 */
declare function LoadInteger(table: hashtable, parentKey: number, childKey: number): number;

/**
 * <1.24> 从哈希表提取实数 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取实数
 * 如果不存在则返回0.00
 * @params  hashtable integer integer
 * @return real
 */
declare function LoadReal(table: hashtable, parentKey: number, childKey: number): number;

/**
 * <1.24> 从哈希表提取布尔 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取布尔
 * 如果不存在则返回False
 * @params  hashtable integer integer
 * @return boolean
 */
declare function LoadBoolean(table: hashtable, parentKey: number, childKey: number): boolean;

/**
 * <1.24> 从哈希表提取字符串 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取字符串
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return string
 */
declare function LoadStr(table: hashtable, parentKey: number, childKey: number): string;

/**
 * <1.24> 从哈希表提取玩家 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取玩家
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return player
 */
declare function LoadPlayerHandle(table: hashtable, parentKey: number, childKey: number): player;

declare function LoadWidgetHandle(table: hashtable, parentKey: number, childKey: number): widget;

/**
 * <1.24> 从哈希表提取可破坏物 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取可破坏物
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return destructable
 */
declare function LoadDestructableHandle(table: hashtable, parentKey: number, childKey: number): destructable;

/**
 * <1.24> 从哈希表提取物品 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取物品
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return item
 */
declare function LoadItemHandle(table: hashtable, parentKey: number, childKey: number): item;

/**
 * <1.24> 从哈希表提取单位 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取单位
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return unit
 */
declare function LoadUnitHandle(table: hashtable, parentKey: number, childKey: number): unit;

declare function LoadAbilityHandle(table: hashtable, parentKey: number, childKey: number): ability;

/**
 * <1.24> 从哈希表提取计时器 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取计时器
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return timer
 */
declare function LoadTimerHandle(table: hashtable, parentKey: number, childKey: number): timer;

/**
 * <1.24> 从哈希表提取触发器 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取触发器
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return trigger
 */
declare function LoadTriggerHandle(table: hashtable, parentKey: number, childKey: number): trigger;

/**
 * <1.24> 从哈希表提取触发条件 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取触发条件
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return triggercondition
 */
declare function LoadTriggerConditionHandle(table: hashtable, parentKey: number, childKey: number): triggercondition;

/**
 * <1.24> 从哈希表提取触发动作 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取触发动作
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return triggeraction
 */
declare function LoadTriggerActionHandle(table: hashtable, parentKey: number, childKey: number): triggeraction;

/**
 * <1.24> 从哈希表提取触发事件 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取触发事件
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return event
 */
declare function LoadTriggerEventHandle(table: hashtable, parentKey: number, childKey: number): event;

/**
 * <1.24> 从哈希表提取玩家组 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取玩家组
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return force
 */
declare function LoadForceHandle(table: hashtable, parentKey: number, childKey: number): force;

/**
 * <1.24> 从哈希表提取单位组 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取单位组
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return group
 */
declare function LoadGroupHandle(table: hashtable, parentKey: number, childKey: number): group;

/**
 * <1.24> 从哈希表提取点 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取点
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return location
 */
declare function LoadLocationHandle(table: hashtable, parentKey: number, childKey: number): location;

/**
 * <1.24> 从哈希表提取区域(矩型) [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取区域(矩型)
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return rect
 */
declare function LoadRectHandle(table: hashtable, parentKey: number, childKey: number): rect;

/**
 * <1.24> 从哈希表提取布尔表达式 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取布尔表达式
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return boolexpr
 */
declare function LoadBooleanExprHandle(table: hashtable, parentKey: number, childKey: number): boolexpr;

/**
 * <1.24> 从哈希表提取音效 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取音效
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return sound
 */
declare function LoadSoundHandle(table: hashtable, parentKey: number, childKey: number): sound;

/**
 * <1.24> 从哈希表提取特效 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取特效
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return effect
 */
declare function LoadEffectHandle(table: hashtable, parentKey: number, childKey: number): effect;

/**
 * <1.24> 从哈希表提取单位池 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取单位池
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return unitpool
 */
declare function LoadUnitPoolHandle(table: hashtable, parentKey: number, childKey: number): unitpool;

/**
 * <1.24> 从哈希表提取物品池 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取物品池
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return itempool
 */
declare function LoadItemPoolHandle(table: hashtable, parentKey: number, childKey: number): itempool;

/**
 * <1.24> 从哈希表提取任务 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取任务
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return quest
 */
declare function LoadQuestHandle(table: hashtable, parentKey: number, childKey: number): quest;

/**
 * <1.24> 从哈希表提取任务要求 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取任务要求
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return questitem
 */
declare function LoadQuestItemHandle(table: hashtable, parentKey: number, childKey: number): questitem;

/**
 * <1.24> 从哈希表提取失败条件 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取失败条件
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return defeatcondition
 */
declare function LoadDefeatConditionHandle(table: hashtable, parentKey: number, childKey: number): defeatcondition;

/**
 * <1.24> 从哈希表提取计时器窗口 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取计时器窗口
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return timerdialog
 */
declare function LoadTimerDialogHandle(table: hashtable, parentKey: number, childKey: number): timerdialog;

/**
 * <1.24> 从哈希表提取排行榜 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取排行榜
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return leaderboard
 */
declare function LoadLeaderboardHandle(table: hashtable, parentKey: number, childKey: number): leaderboard;

/**
 * <1.24> 从哈希表提取多面板 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取多面板
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return multiboard
 */
declare function LoadMultiboardHandle(table: hashtable, parentKey: number, childKey: number): multiboard;

/**
 * <1.24> 从哈希表提取多面板项目 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取多面板项目
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return multiboarditem
 */
declare function LoadMultiboardItemHandle(table: hashtable, parentKey: number, childKey: number): multiboarditem;

/**
 * <1.24> 从哈希表提取可追踪物 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取可追踪物
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return trackable
 */
declare function LoadTrackableHandle(table: hashtable, parentKey: number, childKey: number): trackable;

/**
 * <1.24> 从哈希表提取对话框 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取对话框
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return dialog
 */
declare function LoadDialogHandle(table: hashtable, parentKey: number, childKey: number): dialog;

/**
 * <1.24> 从哈希表提取对话框按钮 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取对话框按钮
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return button
 */
declare function LoadButtonHandle(table: hashtable, parentKey: number, childKey: number): button;

/**
 * <1.24> 从哈希表提取漂浮文字 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取漂浮文字
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return texttag
 */
declare function LoadTextTagHandle(table: hashtable, parentKey: number, childKey: number): texttag;

/**
 * <1.24> 从哈希表提取闪电效果 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取闪电效果
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return lightning
 */
declare function LoadLightningHandle(table: hashtable, parentKey: number, childKey: number): lightning;

/**
 * <1.24> 从哈希表提取图象 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取图象
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return image
 */
declare function LoadImageHandle(table: hashtable, parentKey: number, childKey: number): image;

/**
 * <1.24> 从哈希表提取地面纹理变化 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取地面纹理变化
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return ubersplat
 */
declare function LoadUbersplatHandle(table: hashtable, parentKey: number, childKey: number): ubersplat;

/**
 * <1.24> 从哈希表提取区域(不规则) [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取区域(不规则)
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return region
 */
declare function LoadRegionHandle(table: hashtable, parentKey: number, childKey: number): region;

/**
 * <1.24> 从哈希表提取迷雾状态 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取迷雾状态
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return fogstate
 */
declare function LoadFogStateHandle(table: hashtable, parentKey: number, childKey: number): fogstate;

/**
 * <1.24> 从哈希表提取可见度修正器 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取可见度修正器
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return fogmodifier
 */
declare function LoadFogModifierHandle(table: hashtable, parentKey: number, childKey: number): fogmodifier;

/**
 * <1.24> 从哈希表提取哈希表 [C]
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value} 内提取哈希表
 * 如果不存在则返回空
 * @params  hashtable integer integer
 * @return hashtable
 */
declare function LoadHashtableHandle(table: hashtable, parentKey: number, childKey: number): hashtable;

/**
 * <1.24> 清空哈希表 [C]
 * 清空 ${Hashtable}
 * 清空哈希表所有数据
 * @params  hashtable
 */
declare function FlushParentHashtable(table: hashtable): void;

/**
 * <1.24> 清空哈希表主索引 [C]
 * 清空 ${Hashtable} 中位于主索引 ${Value}  之内的所有数据
 * 清空哈希表主索引下的所有数据
 * @params  hashtable integer
 */
declare function FlushChildHashtable(table: hashtable, parentKey: number): void;

//============================================================================
/**
 * Randomization API
 */
/**
 * 随机数字
 * 随机整数
 * 随机整数,最小值: ${Minimum} 最大值: ${Maximum}
 * 【只能在同步里使用，异步环境可以使用RandomUtil.nextLocalInt()】
 * @params  integer integer
 * @return integer
 */
declare function GetRandomInt(lowBound: number, highBound: number): number;

/**
 * 随机数
 * 随机实数
 * 随机实数,最小值: ${Minimum} 最大值: ${Maximum}
 * 【只能在同步里使用，异步环境可以使用RandomUtil.nextLocalReal()】
 * @params  real real
 * @return real
 */
declare function GetRandomReal(lowBound: number, highBound: number): number;

/**
 * 新建单位池 [R]
 * 新建的空单位池
 * 会创建单位池。
 * @return unitpool
 */
declare function CreateUnitPool(): unitpool;

/**
 * 删除单位池 [R]
 * 删除 ${单位池}
 * @params  unitpool
 */
declare function DestroyUnitPool(whichPool: unitpool): void;

/**
 * 添加单位类型 [R]
 * 在 ${单位池} 中添加一个 ${单位} 比重为 ${数值}
 * 比重越高被选择的机率越大
 * @params  unitpool unitcode real
 */
declare function UnitPoolAddUnitType(whichPool: unitpool, unitid: number | string, weight: number): void;

/**
 * 删除单位类型 [R]
 * 从 ${单位池} 中删除 ${单位}
 * @params  unitpool unitcode
 */
declare function UnitPoolRemoveUnitType(whichPool: unitpool, unitid: number | string): void;

/**
 * 选择放置单位 [R]
 * 从 ${单位池} 中为 ${玩家} 任意选择一个单位并放置到点( ${X} , ${Y} ) 面向 ${度}
 * 从单位池中随机选取一个单位类型.
 * @params  unitpool player real real degree
 * @return unit
 */
declare function PlaceRandomUnit(whichPool: unitpool, forWhichPlayer: player, x: number, y: number, facing: number): unit;

/**
 * 新建物品池 [R]
 * 新建的空物品池
 * 会创建物品池.
 * @return itempool
 */
declare function CreateItemPool(): itempool;

/**
 * 删除物品池 [R]
 * 删除 ${物品池}
 * @params  itempool
 */
declare function DestroyItemPool(whichItemPool: itempool): void;

/**
 * 添加物品类型 [R]
 * 在 ${物品池} 中添加一个 ${物品} 比重为 ${数值}
 * 比重越高被选择的机率越大.
 * @params  itempool itemcode real
 */
declare function ItemPoolAddItemType(whichItemPool: itempool, itemid: number | string, weight: number): void;

/**
 * 删除物品类型 [R]
 * 从 ${物品池} 中删除 ${物品}
 * @params  itempool itemcode
 */
declare function ItemPoolRemoveItemType(whichItemPool: itempool, itemid: number | string): void;

/**
 * 选择放置物品 [R]
 * 从 ${物品池} 中任意选择一个物品并放置到( ${X} , ${Y} )点
 * @params  itempool real real
 * @return item
 */
declare function PlaceRandomItem(whichItemPool: itempool, x: number, y: number): item;

/**
 * Choose any random unit/item. (NP means Neutral Passive)
 */
/**
 * Choose any random unit/item. (NP means Neutral Passive)
 */
declare function ChooseRandomCreep(level: number): number;

declare function ChooseRandomNPBuilding(): number;

declare function ChooseRandomItem(level: number): number;

declare function ChooseRandomItemEx(whichType: itemtype, level: number): number;

/**
 * 设置随机种子
 * 设置随机种子数为：${整数}
 * 设置游戏的随机种子，随机种子会影响随机整数，攻击骰子之类的随机数。
 * @params  integer
 */
declare function SetRandomSeed(seed: number): void;

//============================================================================
/**
 * Visual API
 */
/**
 * Visual API
 */
declare function SetTerrainFog(a: number, b: number, c: number, d: number, e: number): void;

declare function ResetTerrainFog(): void;

declare function SetUnitFog(a: number, b: number, c: number, d: number, e: number): void;

/**
 * 设置迷雾 [R]
 * 迷雾风格: ${Style}, Z轴开始端: ${Z-Start}, Z轴结束端: ${Z-End}, 密度: ${Density} 颜色:(${Red},${Green},${Blue})
 * 颜色格式为(红,绿,蓝). 取值范围0.00-1.00.
 * @params  fogstyle real real real real real real
 */
declare function SetTerrainFogEx(style: number, zstart: number, zend: number, density: number, red: number, green: number, blue: number): void;

/**
 * 对玩家显示文本消息(自动限时) [R]
 * 对 ${玩家} 在屏幕位移(${X},${Y})处显示文本: ${文字}
 * 显示时间取决于文字长度. 位移的取值在0-1之间. 可使用'本地玩家'实现对所有玩家发送消息.
 * @params  player real real StringExt
 */
declare function DisplayTextToPlayer(toPlayer: player, x: number, y: number, message: string): void;

/**
 * 对玩家显示文本消息(指定时间) [R]
 * 对 ${玩家} 在屏幕位移(${X},${Y})处显示 ${时间} 秒的文本信息: ${文字}
 * 位移的取值在0-1之间. 可使用'本地玩家[R]'实现对所有玩家发送消息.
 * @params  player real real real StringExt
 */
declare function DisplayTimedTextToPlayer(toPlayer: player, x: number, y: number, duration: number, message: string): void;

declare function DisplayTimedTextFromPlayer(toPlayer: player, x: number, y: number, duration: number, message: string): void;

/**
 * 清空文本信息(所有玩家) [R]
 * 清空玩家屏幕上的文本信息
 * @params  nothing
 */
declare function ClearTextMessages(): void;

declare function SetDayNightModels(terrainDNCFile: string, unitDNCFile: string): void;

declare function SetPortraitLight(portraitDNCFile: string): void;

/**
 * 设置天空
 * 设置天空模型为 ${Sky}
 * @params  skymodelstring
 */
declare function SetSkyModel(skyModelFile: string): void;

/**
 * 启用/禁用玩家控制权(所有玩家) [R]
 * ${启用/禁用} 玩家控制权
 * @params  onoffoption
 */
declare function EnableUserControl(b: boolean): void;

declare function EnableUserUI(b: boolean): void;

declare function SuspendTimeOfDay(b: boolean): void;

/**
 * 设置昼夜时间流逝速度 [R]
 * 设置昼夜时间流逝速度为默认值的 ${Value}倍
 * 设置100%来恢复正常值. 该值并不影响游戏速度.
 * @params  real
 */
declare function SetTimeOfDayScale(r: number): void;

declare function GetTimeOfDayScale(): number;

/**
 * 开启/关闭 信箱模式(所有玩家) [R]
 * ${开启/关闭} 信箱模式,转换时间为 ${Duration} 秒
 * 使用电影镜头模式,隐藏游戏界面.
 * @params  onoffnotoption real
 */
declare function ShowInterface(flag: boolean, fadeDuration: number): void;

/**
 * 暂停/恢复游戏 [R]
 * ${暂停/恢复} 游戏
 * @params  pauseresumeoption
 */
declare function PauseGame(flag: boolean): void;

/**
 * 闪动指示器(对单位) [R]
 * 对 ${单位} 闪动指示器,使用颜色:(${Red}%, ${Green}%, ${Blue}%) Alpha通道值: ${Transparency}
 * 颜色格式为(红,绿,蓝). Alpha通道值0为不可见. 颜色值和Alpha通道值取值范围为0-255.
 * @params  unit integer integer integer integer
 */
declare function UnitAddIndicator(whichUnit: unit, red: number, green: number, blue: number, alpha: number): void;

declare function AddIndicator(whichWidget: widget, red: number, green: number, blue: number, alpha: number): void;

/**
 * 小地图信号(所有玩家) [R]
 * 对所有玩家发送小地图信号到坐标(${X},${Y}) 持续时间: ${Duration} 秒
 * @params  real real real
 */
declare function PingMinimap(x: number, y: number, duration: number): void;

/**
 * 小地图信号(指定颜色)(所有玩家) [R]
 * 对所有玩家发送小地图信号到坐标(${X},${Y}) 持续时间: ${Duration} 秒, 信号颜色:(${Red},${Green},${Blue}) 信号类型: ${Style}
 * 颜色格式为(红,绿,蓝). 颜色值取值范围为0-255.
 * @params  real real real integer integer integer pingstyle
 */
declare function PingMinimapEx(x: number, y: number, duration: number, red: number, green: number, blue: number, extraEffects: boolean): void;

/**
 * 允许/禁止闭塞(所有玩家) [R]
 * ${Enable/Disable} 闭塞
 * @params  enabledisableoption
 */
declare function EnableOcclusion(flag: boolean): void;

declare function SetIntroShotText(introText: string): void;

declare function SetIntroShotModel(introModelPath: string): void;

/**
 * 允许/禁止 边界染色(所有玩家) [R]
 * ${Enable/Disable} 边界染色,应用于所有玩家
 * 禁用边界染色时边界为普通地形,不显示为黑色,但仍是不可通行的.
 * @params  enabledisableoption
 */
declare function EnableWorldFogBoundary(b: boolean): void;

declare function PlayModelCinematic(modelName: string): void;

declare function PlayCinematic(movieName: string): void;

declare function ForceUIKey(key: string): void;

declare function ForceUICancel(): void;

declare function DisplayLoadDialog(): void;

/**
 * 改变小地图的特殊图标
 * 设置小地图特殊标志
 * 设置小地图特殊标志为 ${Image}
 * 必须使用16x16的图像.
 * @params  imagefile
 */
declare function SetAltMinimapIcon(iconPath: string): void;

/**
 * 禁用 重新开始任务按钮
 * 设置 重新开始任务按钮可以点击为 ${}
 * 当单人游戏时，可以设置重新开始任务按钮能否允许点击。
 * @params  boolean
 */
declare function DisableRestartMission(flag: boolean): void;

/**
 * 新建漂浮文字 [R]
 * 新建的空漂浮文字
 * 会创建漂浮文字.
 * @return texttag
 */
declare function CreateTextTag(): texttag;

declare function DestroyTextTag(t: texttag): void;

/**
 * 改变文字内容 [R]
 * 改变 ${Floating Text} 的内容为 ${文字} ,字体大小: ${Size}
 * 采用原始字体大小单位. 字体大小不能超过0.5.
 * @params  texttag StringExt real
 */
declare function SetTextTagText(t: texttag, s: string, height: number): void;

/**
 * 改变位置(坐标) [R]
 * 改变 ${Floating Text} 的位置为(${X},${Y}) ,Z轴高度为 ${Z}
 * @params  texttag real real real
 */
declare function SetTextTagPos(t: texttag, x: number, y: number, heightOffset: number): void;

declare function SetTextTagPosUnit(t: texttag, whichUnit: unit, heightOffset: number): void;

/**
 * 改变颜色 [R]
 * 改变 ${Floating Text} 的颜色为(${Red},${Green},${Blue}) 透明值为 ${Transparency}
 * 颜色格式为(红,绿,蓝). 透明值0为不可见. 颜色值和透明值取值范围为0-255.
 * @params  texttag integer integer integer integer
 */
declare function SetTextTagColor(t: texttag, red: number, green: number, blue: number, alpha: number): void;

/**
 * 设置速率 [R]
 * 设置 ${Floating Text} 的X轴速率: ${XSpeed} ,Y轴速率: ${YSpeed}
 * 对移动后的漂浮文字设置速率,该漂浮文字会先回到原点再向设定的角度移动. 这里的1约等于游戏中的1800速度.
 * @params  texttag real real
 */
declare function SetTextTagVelocity(t: texttag, xvel: number, yvel: number): void;

/**
 * 显示/隐藏 (所有玩家) [R]
 * 对所有玩家 ${Show/Hide} ${Floating Text}
 * @params  texttag showhideoption
 */
declare function SetTextTagVisibility(t: texttag, flag: boolean): void;

/**
 * 保留英雄按钮
 * 保留英雄图标
 * 为玩家保留 ${Number} 个左上角英雄图标.
 * 因为共享单位而被控制的其他玩家英雄的图标将在保留位置之后开始显示.
 * @params  integer
 */
declare function SetReservedLocalHeroButtons(reserved: number): void;

/**
 * 结盟滤色镜的设置值
 * 联盟颜色显示设置
 * 联盟颜色显示设置
 * 0为不开启. 1为小地图显示. 2为小地图和游戏都显示.
 * @return integer
 */
declare function GetAllyColorFilterState(): number;

/**
 * 设置结盟滤色镜
 * 设置联盟颜色显示
 * 设置联盟颜色显示状态为 ${State}
 * 0为不开启. 1为小地图显示. 2为小地图和游戏都显示. 相当于游戏中Alt+A功能.
 * @params  integer
 */
declare function SetAllyColorFilterState(state: number): void;

/**
 * 野生单位显示是开启的
 * 小地图中立生物显示开启
 * 小地图中立生物显示开启
 * @return boolean
 */
declare function GetCreepCampFilterState(): boolean;

/**
 * 显示/隐藏野生生物图标在小地图
 * 设置小地图中立生物显示
 * 小地图 ${Show/Hide} 中立生物
 * 相当于游戏中Alt+R功能.
 * @params  showhideoption
 */
declare function SetCreepCampFilterState(state: boolean): void;

/**
 * 允许/禁止小地图按钮
 * 允许/禁用小地图按钮
 * ${Enable/Disable} 联盟颜色显示按钮, ${Enable/Disable} 中立生物显示按钮
 * @params  enabledisableoption enabledisableoption
 */
declare function EnableMinimapFilterButtons(enableAlly: boolean, enableCreep: boolean): void;

/**
 * 允许/禁止框选
 * 允许/禁用框选
 * ${Enable/Disable} 框选功能 (${Enable/Disable} 显示选择框)
 * @params  enabledisableoption enabledisableoption
 */
declare function EnableDragSelect(state: boolean, ui: boolean): void;

/**
 * 允许/禁止预选
 * 允许/禁用预选
 * ${Enable/Disable} 预选功能 (${Enable/Disable} 显示预选圈,生命槽,物体信息)
 * @params  enabledisableoption enabledisableoption
 */
declare function EnablePreSelect(state: boolean, ui: boolean): void;

/**
 * 允许/禁止选择
 * 允许/禁用选择
 * ${Enable/Disable} 选择和取消选择功能 (${Enable/Disable} 显示选择圈)
 * 禁用选择后仍可以通过触发来选择物体. 只有允许选择功能时才会显示选择圈.
 * @params  enabledisableoption enabledisableoption
 */
declare function EnableSelect(state: boolean, ui: boolean): void;

/**
 * Trackable API
 */
/**
 * 新建可追踪物 [R]
 * 新建的可追踪物, 使用模型: ${模型名字} 所在位置: ( ${X轴} , ${Y轴} ) 面向角度: ${数值} 度
 * 可用来响应鼠标的移动和点击. 会创建可追踪物.
 * @params  modelfile real real degree
 * @return trackable
 */
declare function CreateTrackable(trackableModelPath: string, x: number, y: number, facing: number): trackable;

/**
 * Quest API
 */
/**
 * 新建任务 [R]
 * 新建任务
 * 新建一个任务.注：这条毫无用处，别用——everguo
 * @return quest
 */
declare function CreateQuest(): quest;

/**
 * 销毁任务
 */
declare function DestroyQuest(whichQuest: quest): void;

/**
 * 设置任务标题
 */
declare function QuestSetTitle(whichQuest: quest, title: string): void;

/**
 * 设置任务介绍
 */
declare function QuestSetDescription(whichQuest: quest, description: string): void;

/**
 * 设置任务图标
 */
declare function QuestSetIconPath(whichQuest: quest, iconPath: string): void;

declare function QuestSetRequired(whichQuest: quest, required: boolean): void;

declare function QuestSetCompleted(whichQuest: quest, completed: boolean): void;

declare function QuestSetDiscovered(whichQuest: quest, discovered: boolean): void;

declare function QuestSetFailed(whichQuest: quest, failed: boolean): void;

/**
 * 启用/禁用 任务 [R]
 * 设置 ${Quest} ${Enable/Disable}
 * 被禁用的任务将不会显示在任务列表.
 * @params  quest enabledisableoption
 */
declare function QuestSetEnabled(whichQuest: quest, enabled: boolean): void;

/**
 * 任务是必须完成的
 * 是主要任务
 * ${Quest} 是主要任务
 * @params  quest
 * @return boolean
 */
declare function IsQuestRequired(whichQuest: quest): boolean;

/**
 * 任务完成
 * ${Quest} 已完成
 * @params  quest
 * @return boolean
 */
declare function IsQuestCompleted(whichQuest: quest): boolean;

/**
 * 任务找到
 * 任务被发现
 * ${Quest} 已被发现
 * @params  quest
 * @return boolean
 */
declare function IsQuestDiscovered(whichQuest: quest): boolean;

/**
 * 任务失败
 * ${Quest} 失败
 * @params  quest
 * @return boolean
 */
declare function IsQuestFailed(whichQuest: quest): boolean;

/**
 * 允许任务
 * 任务激活
 * ${Quest} 已激活
 * @params  quest
 * @return boolean
 */
declare function IsQuestEnabled(whichQuest: quest): boolean;

/**
 * 任务创建物品
 */
declare function QuestCreateItem(whichQuest: quest): questitem;

/**
 * 任务物品介绍
 */
declare function QuestItemSetDescription(whichQuestItem: questitem, description: string): void;

/**
 * 任务物品发货
 */
declare function QuestItemSetCompleted(whichQuestItem: questitem, completed: boolean): void;

/**
 * 任务条件完成
 * 任务项目完成
 * ${Quest Requirement} 已完成
 * @params  questitem
 * @return boolean
 */
declare function IsQuestItemCompleted(whichQuestItem: questitem): boolean;

/**
 * 创建失败条件
 */
declare function CreateDefeatCondition(): defeatcondition;

/**
 * 销毁失败条件
 */
declare function DestroyDefeatCondition(whichCondition: defeatcondition): void;

/**
 * 失败条件描述
 */
declare function DefeatConditionSetDescription(whichCondition: defeatcondition, description: string): void;

declare function FlashQuestDialogButton(): void;

declare function ForceQuestDialogUpdate(): void;

//============================================================================
/**
 * Timer Dialog API
 */
/**
 * 新建计时器窗口 [R]
 * 为 ${计时器} 新建计时窗口
 * 为一个计时器创建一个新建计时器窗口.
 * @params  timer
 * @return timerdialog
 */
declare function CreateTimerDialog(t: timer): timerdialog;

/**
 * 销毁计时器窗口
 */
declare function DestroyTimerDialog(whichDialog: timerdialog): void;

/**
 * 设置计时器窗口标题
 */
declare function TimerDialogSetTitle(whichDialog: timerdialog, title: string): void;

/**
 * 改变计时器窗口文字颜色 [R]
 * 改变 ${Timer Window} 文字颜色为(${Red},${Green},${Blue}) 透明值为: ${Transparency}
 * 颜色格式为(红,绿,蓝). Alpha通道值0为不可见. 颜色值和透明值值取值范围为0-255.
 * @params  timerdialog integer integer integer integer
 */
declare function TimerDialogSetTitleColor(whichDialog: timerdialog, red: number, green: number, blue: number, alpha: number): void;

/**
 * 改变计时器窗口计时颜色 [R]
 * 改变 ${Timer Window} 的计间颜色为(${Red},${Green},${Blue}) 透明值为: ${Transparency}
 * 颜色格式为(红,绿,蓝). Alpha通道值0为不可见. 颜色值和透明值值取值范围为0-255.
 * @params  timerdialog integer integer integer integer
 */
declare function TimerDialogSetTimeColor(whichDialog: timerdialog, red: number, green: number, blue: number, alpha: number): void;

/**
 * 设置计时器窗口速率 [R]
 * 设置 ${Timer Window} 的时间流逝速度为 ${Factor} 倍
 *  同时计时器显示时间也会随之变化. 就是说60秒的计时器设置为2倍速则显示时间也会变为120秒.
 * @params  timerdialog real
 */
declare function TimerDialogSetSpeed(whichDialog: timerdialog, speedMultFactor: number): void;

/**
 * 显示/隐藏 计时器窗口(所有玩家) [R]
 * 设置 ${计时器窗口} 的状态为${Show/Hide}
 * 计时器窗口不能在地图初始化时显示.
 * @params  timerdialog showhideoption
 */
declare function TimerDialogDisplay(whichDialog: timerdialog, display: boolean): void;

/**
 * 判断计时器窗口是否显示
 */
declare function IsTimerDialogDisplayed(whichDialog: timerdialog): boolean;

/**
 * 可以修改倒计时窗口的时间，可以开启另一个计时器每隔一段时间，修改倒计时窗口时间，从而实现正计时
 */
declare function TimerDialogSetRealTimeRemaining(whichDialog: timerdialog, timeRemaining: number): void;

//============================================================================
/**
 * Leaderboard API
 */

/**
 * Create a leaderboard object
 */
/**
 * 新建排行榜 [R]
 * 新建的空排行榜
 * 会创建排行榜.
 * @return leaderboard
 */
declare function CreateLeaderboard(): leaderboard;

//删除排行榜
declare function DestroyLeaderboard(lb: leaderboard): void;

/**
 * 显示/隐藏 [R]
 * 设置 ${排行榜} ${Show/Hide}
 * 排行榜不能在地图初始化时显示.
 * @params  leaderboard showhideoption
 */
declare function LeaderboardDisplay(lb: leaderboard, show: boolean): void;

/**
 * 是否显示排行榜
 */
declare function IsLeaderboardDisplayed(lb: leaderboard): boolean;

/**
 * 行数
 * ${Leaderboard} 的行数
 * @params  leaderboard
 * @return integer
 */
declare function LeaderboardGetItemCount(lb: leaderboard): number;

declare function LeaderboardSetSizeByItemCount(lb: leaderboard, count: number): void;

declare function LeaderboardAddItem(lb: leaderboard, label: string, value: number, p: player): void;

declare function LeaderboardRemoveItem(lb: leaderboard, index: number): void;

declare function LeaderboardRemovePlayerItem(lb: leaderboard, p: player): void;

/**
 * 清空 [R]
 * 清空 ${排行榜}
 * 清空排行榜中所有内容.
 * @params  leaderboard
 */
declare function LeaderboardClear(lb: leaderboard): void;

declare function LeaderboardSortItemsByValue(lb: leaderboard, ascending: boolean): void;

declare function LeaderboardSortItemsByPlayer(lb: leaderboard, ascending: boolean): void;

declare function LeaderboardSortItemsByLabel(lb: leaderboard, ascending: boolean): void;

declare function LeaderboardHasPlayerItem(lb: leaderboard, p: player): boolean;

declare function LeaderboardGetPlayerIndex(lb: leaderboard, p: player): number;

declare function LeaderboardSetLabel(lb: leaderboard, label: string): void;

declare function LeaderboardGetLabelText(lb: leaderboard): string;

/**
 * 设置玩家使用的排行榜 [R]
 * 设置 ${Player} 使用 ${排行榜}
 * 每个玩家只能显示一个排行榜.
 * @params  player leaderboard
 */
declare function PlayerSetLeaderboard(toPlayer: player, lb: leaderboard): void;

declare function PlayerGetLeaderboard(toPlayer: player): leaderboard;

/**
 * 设置文字颜色 [R]
 * 设置 ${Leaderboard} 的文字颜色为(${Red},${Green},${Blue}) Alpha通道值为: ${Transparency}
 * 颜色格式为(红,绿,蓝). Alpha通道值0为不可见. 颜色值和Alpha通道值取值范围为0-255.
 * @params  leaderboard integer integer integer integer
 */
declare function LeaderboardSetLabelColor(lb: leaderboard, red: number, green: number, blue: number, alpha: number): void;

/**
 * 设置数值颜色 [R]
 * 设置 ${Leaderboard} 的数值颜色为(${Red},${Green},${Blue}) Alpha通道值为: ${Transparency}
 * 颜色格式为(红,绿,蓝). Alpha通道值0为不可见. 颜色值和Alpha通道值取值范围为0-255.
 * @params  leaderboard integer integer integer integer
 */
declare function LeaderboardSetValueColor(lb: leaderboard, red: number, green: number, blue: number, alpha: number): void;

declare function LeaderboardSetStyle(lb: leaderboard, showLabel: boolean, showNames: boolean, showValues: boolean, showIcons: boolean): void;

declare function LeaderboardSetItemValue(lb: leaderboard, whichItem: number, val: number): void;

declare function LeaderboardSetItemLabel(lb: leaderboard, whichItem: number, val: string): void;

declare function LeaderboardSetItemStyle(lb: leaderboard, whichItem: number, showLabel: boolean, showValue: boolean, showIcon: boolean): void;

declare function LeaderboardSetItemLabelColor(lb: leaderboard, whichItem: number, red: number, green: number, blue: number, alpha: number): void;

declare function LeaderboardSetItemValueColor(lb: leaderboard, whichItem: number, red: number, green: number, blue: number, alpha: number): void;

//============================================================================
/**
 * Multiboard API
 */
//============================================================================
/**
 * Create a multiboard object
 */
/**
 * 新建多面板 [R]
 * 新建的空多面板
 * 会创建多面板.
 * @return multiboard
 */
declare function CreateMultiboard(): multiboard;

declare function DestroyMultiboard(lb: multiboard): void;

/**
 * 显示/隐藏 [R]
 * 设置 ${Multiboard} ${Show/Hide}
 * 多面板不能在地图初始化时显示.
 * @params  multiboard showhideoption
 */
declare function MultiboardDisplay(lb: multiboard, show: boolean): void;

/**
 * 多列面板 是已显示的
 * 多面板显示
 * ${Multiboard} 是显示的
 * @params  multiboard
 * @return boolean
 */
declare function IsMultiboardDisplayed(lb: multiboard): boolean;

/**
 * 最大/最小化 [R]
 * 设置 ${Multiboard} ${Minimize/Maximize}
 * 最小化的多面板只显示标题.
 * @params  multiboard minimizeoption
 */
declare function MultiboardMinimize(lb: multiboard, minimize: boolean): void;

/**
 * 多列面板 是最小化的
 * 多面板最小化
 * ${Multiboard} 是最小化的
 * @params  multiboard
 * @return boolean
 */
declare function IsMultiboardMinimized(lb: multiboard): boolean;

/**
 * 清除 多列面板
 * 清空多面板
 * 清空 ${Multiboard}
 * 清空该多面板中的所有行和列.
 * @params  multiboard
 */
declare function MultiboardClear(lb: multiboard): void;

/**
 * 改变 多列面板 标题
 * 设置标题
 * 设置 ${Multiboard} 的标题为 ${文字}
 * @params  multiboard StringExt
 */
declare function MultiboardSetTitleText(lb: multiboard, label: string): void;

/**
 * 多列面板 的标题
 * 多面板标题
 * ${Multiboard} 的标题
 * @params  multiboard
 * @return string
 */
declare function MultiboardGetTitleText(lb: multiboard): string;

/**
 * 设置标题颜色 [R]
 * 设置 ${Multiboard} 的标题颜色为(${Red},${Green},${Blue}), Alpha值为 ${Transparency}
 * 颜色格式为(红,绿,蓝). Alpha值为0是不可见的. 颜色值和Alpha值取值范围为0-255.
 * @params  multiboard integer integer integer integer
 */
declare function MultiboardSetTitleTextColor(lb: multiboard, red: number, green: number, blue: number, alpha: number): void;

/**
 * 获得多列面板 的行数
 * ${Multiboard} 的行数
 * @params  multiboard
 * @return integer
 */
declare function MultiboardGetRowCount(lb: multiboard): number;

/**
 * 获得多列面板 的列数
 * ${Multiboard} 的列数
 * @params  multiboard
 * @return integer
 */
declare function MultiboardGetColumnCount(lb: multiboard): number;

/**
 * 改变多列面板'列数'
 * 设置列数
 * 设置 ${Multiboard} 的列数为 ${Columns}
 * @params  multiboard integer
 */
declare function MultiboardSetColumnCount(lb: multiboard, count: number): void;

/**
 * 改变多列面板'行数'
 * 设置行数
 * 设置 ${Multiboard} 的行数为 ${Rows}
 * @params  multiboard integer
 */
declare function MultiboardSetRowCount(lb: multiboard, count: number): void;

/**
 * broadcast settings to all items
 */
/**
 * 设置所有项目显示风格 [R]
 * 设置 ${多面板} 的所有项目显示风格: ${Show/Hide} 文字 ${Show/Hide} 图标
 * @params  multiboard showhideoption showhideoption
 */
declare function MultiboardSetItemsStyle(lb: multiboard, showValues: boolean, showIcons: boolean): void;

/**
 * 设置所有项目文本 [R]
 * 设置 ${多面板} 的所有项目文本为 ${文字}
 * @params  multiboard StringExt
 */
declare function MultiboardSetItemsValue(lb: multiboard, value: string): void;

/**
 * 设置所有项目颜色 [R]
 * 设置 ${多面板} 的所有项目颜色为(${Red},${Green},${Blue}), Alpha值为 ${Transparency}
 * 颜色格式为(红,绿,蓝). Alpha值为0是不可见的. 颜色值和Alpha值取值范围为0-255.
 * @params  multiboard integer integer integer integer
 */
declare function MultiboardSetItemsValueColor(lb: multiboard, red: number, green: number, blue: number, alpha: number): void;

/**
 * 设置所有项目宽度 [R]
 * 设置 ${多面板} 的所有项目宽度为 ${Width} 倍屏幕宽度
 * @params  multiboard real
 */
declare function MultiboardSetItemsWidth(lb: multiboard, width: number): void;

/**
 * 设置所有项目图标 [R]
 * 设置 ${多面板} 的所有项目图标为 ${Icon File}
 * @params  multiboard imagefile
 */
declare function MultiboardSetItemsIcon(lb: multiboard, iconPath: string): void;

/**
 * funcs for modifying individual items
 */
/**
 * 多面板项目 [R]
 * ${多面板} 的第 ${X} 行,第 ${Y} 列项
 * (0,0)作为多面板首项,会创建多面板项目.
 * @params  multiboard integer integer
 * @return multiboarditem
 */
declare function MultiboardGetItem(lb: multiboard, row: number, column: number): multiboarditem;

/**
 * 删除多面板项目 [R]
 * 删除 ${多面板项目}
 * 并不会影响对多面板的显示. 多面板项目指向多面板但不附属于多面板.
 * @params  multiboarditem
 */
declare function MultiboardReleaseItem(mbi: multiboarditem): void;

/**
 * 设置指定项目显示风格 [R]
 * 设置 ${多面板项目} 的显示风格: ${Show/Hide} 文字 ${Show/Hide} 图标
 * @params  multiboarditem showhideoption showhideoption
 */
declare function MultiboardSetItemStyle(mbi: multiboarditem, showValue: boolean, showIcon: boolean): void;

/**
 * 设置指定项目文本 [R]
 * 设置 ${多面板项目} 的项目文本为 ${文字}
 * @params  multiboarditem StringExt
 */
declare function MultiboardSetItemValue(mbi: multiboarditem, val: string): void;

/**
 * 设置指定项目颜色 [R]
 * 设置 ${多面板项目} 的项目颜色为(${Red},${Green},${Blue}), Alpha值为 ${Transparency}
 * 颜色格式为(红,绿,蓝). Alpha值为0是不可见的. 颜色值和Alpha值取值范围为0-255.
 * @params  multiboarditem integer integer integer integer
 */
declare function MultiboardSetItemValueColor(mbi: multiboarditem, red: number, green: number, blue: number, alpha: number): void;

/**
 * 设置指定项目宽度 [R]
 * 设置 ${多面板项目} 的项目宽度为 ${Width} 倍屏幕宽度
 * @params  multiboarditem real
 */
declare function MultiboardSetItemWidth(mbi: multiboarditem, width: number): void;

/**
 * 设置指定项目图标 [R]
 * 设置 ${多面板项目} 的项目图标为 ${Icon File}
 * @params  multiboarditem imagefile
 */
declare function MultiboardSetItemIcon(mbi: multiboarditem, iconFileName: string): void;

/**
 * meant to unequivocally suspend display of existing and
 */
/**
 * subsequently displayed multiboards
 */

//
/**
 * 显示/隐藏多面板模式 [R]
 * ${打开/关闭} 隐藏多面板模式
 * 隐藏多面板模式将无法显示多面板.
 * @params  onoffoption
 */
declare function MultiboardSuppressDisplay(flag: boolean): void;

//============================================================================
/**
 * Camera API
 */
declare function SetCameraPosition(x: number, y: number): void;

/**
 * 设置空格键转向点(所有玩家) [R]
 * 设置玩家的空格键转向点为(${X},${Y})
 * 按下空格键时镜头转向的位置.
 * @params  real real
 */
declare function SetCameraQuickPosition(x: number, y: number): void;

/**
 * 设置可用镜头区域(所有玩家) [R]
 * 设置玩家可用镜头区域: 左下角(${X},${Y}), 左上角(${X},${Y}), 右上角(${X},${Y}), 右下角(${X},${Y})
 * 该动作同样会影响小地图的显示. 但小地图的图片是无法改变的. 实际可用区域要大于可用镜头区域.
 * @params  real real real real real real real real
 */
declare function SetCameraBounds(x1: number, y1: number, x2: number, y2: number, x3: number, y3: number, x4: number, y4: number): void;

/**
 * 停止播放镜头(所有玩家) [R]
 * 让所有玩家停止播放镜头
 * 比如在平移镜头的过程中可用该动作来中断平移.
 */
declare function StopCamera(): void;

/**
 * 重置游戏镜头(所有玩家) [R]
 * 重置玩家镜头为游戏默认状态,持续  ${Time} 秒
 * @params  real
 */
declare function ResetToGameCamera(duration: number): void;

/**
 * 平移镜头
 */
declare function PanCameraTo(x: number, y: number): void;

/**
 * 平移镜头(所有玩家)(限时) [R]
 * 平移玩家镜头到(${X},${Y}),持续 ${Time} 秒
 * @params  real real real
 */
declare function PanCameraToTimed(x: number, y: number, duration: number): void;

/**
 * 平移镜头(包含z轴)
 */
declare function PanCameraToWithZ(x: number, y: number, zOffsetDest: number): void;

/**
 * 指定高度平移镜头(所有玩家)(限时) [R]
 * 平移玩家镜头到(${X},${Y}),镜头距离地面高度为 ${Z},持续 ${Time} 秒
 * 在指定移动路径上镜头不会低于地面高度.
 * @params  real real real real
 */
declare function PanCameraToTimedWithZ(x: number, y: number, zOffsetDest: number, duration: number): void;

/**
 * 播放电影镜头(所有玩家) [R]
 * 对所有玩家播放电影镜头: ${Camera File}
 * 在'Objects\\CinematicCameras'目录下有一些电影镜头,可用Mpq工具来查询.
 * @params  modelfile
 */
declare function SetCinematicCamera(cameraModelFile: string): void;

/**
 * 指定点旋转镜头(所有玩家)(弧度)(限时) [R]
 * 以(${X},${Y})为中心,旋转弧度为${Rad}, 持续: ${Time} 秒
 * @params  real real radian real
 */
declare function SetCameraRotateMode(x: number, y: number, radiansToSweep: number, duration: number): void;

/**
 * 设置镜头属性(所有玩家)(限时) [R]
 * 设置玩家的镜头属性 ${Field} 为 ${数值},持续 ${Time} 秒
 * @params  camerafield real real
 */
declare function SetCameraField(whichField: camerafield, value: number, duration: number): void;

declare function AdjustCameraField(whichField: camerafield, offset: number, duration: number): void;

/**
 * 锁定镜头到单位(所有玩家) [R]
 * 锁定玩家镜头到 ${单位}, 偏移坐标(${X}, ${Y}) ,使用 ${Rotation Source}
 * 偏移坐标(X,Y)以单位脚底为原点坐标.
 * @params  unit real real cameraorientationoption
 */
declare function SetCameraTargetController(whichUnit: unit, xoffset: number, yoffset: number, inheritOrientation: boolean): void;

/**
 * 锁定镜头到单位(固定镜头源)(所有玩家) [R]
 * 锁定玩家镜头到 ${单位}, 偏移坐标(${X}, ${Y})
 * 偏移坐标(X,Y)以单位脚底为原点坐标.
 * @params  unit real real
 */
declare function SetCameraOrientController(whichUnit: unit, xoffset: number, yoffset: number): void;

declare function CreateCameraSetup(): camerasetup;

declare function CameraSetupSetField(whichSetup: camerasetup, whichField: camerafield, value: number, duration: number): void;

/**
 * 镜头属性(指定镜头) [R]
 * ${镜头} 的 ${Camera Field}
 * @params  camerasetup camerafield
 * @return real
 */
declare function CameraSetupGetField(whichSetup: camerasetup, whichField: camerafield): number;

declare function CameraSetupSetDestPosition(whichSetup: camerasetup, x: number, y: number, duration: number): void;

/**
 * 摄象机的目标
 * 镜头目标点
 * ${镜头} 的目标点
 * 会创建点.
 * @params  camerasetup
 * @return location
 */
declare function CameraSetupGetDestPositionLoc(whichSetup: camerasetup): location;

declare function CameraSetupGetDestPositionX(whichSetup: camerasetup): number;

declare function CameraSetupGetDestPositionY(whichSetup: camerasetup): number;

declare function CameraSetupApply(whichSetup: camerasetup, doPan: boolean, panTimed: boolean): void;

declare function CameraSetupApplyWithZ(whichSetup: camerasetup, zDestOffset: number): void;

/**
 * 应用镜头(所有玩家)(限时) [R]
 * 将 ${镜头} 应用方式设置为 ${Apply Method},持续 ${Time} 秒
 * @params  camerasetup cameraapplyoption real
 */
declare function CameraSetupApplyForceDuration(whichSetup: camerasetup, doPan: boolean, forceDuration: number): void;

declare function CameraSetupApplyForceDurationWithZ(whichSetup: camerasetup, zDestOffset: number, forceDuration: number): void;

declare function BlzCameraSetupSetLabel(whichSetup: camerasetup, label: string): void;

declare function BlzCameraSetupGetLabel(whichSetup: camerasetup): string;

declare function CameraSetTargetNoise(mag: number, velocity: number): void;

declare function CameraSetSourceNoise(mag: number, velocity: number): void;

/**
 * 摇晃镜头目标(所有玩家) [R]
 * 摇晃玩家的镜头源, 摇晃幅度: ${Magnitude} 速率: ${Velocity} 摇晃方式: ${方式}
 * 使用'镜头 - 重置镜头'或设置摇晃幅度和速率为0来停止摇晃.
 * @params  real real vertonlyoption
 */
declare function CameraSetTargetNoiseEx(mag: number, velocity: number, vertOnly: boolean): void;

/**
 * 摇晃镜头源(所有玩家) [R]
 * 摇晃玩家的镜头源, 摇晃幅度: ${Magnitude} 速率: ${Velocity} 摇晃方式: ${方式}
 * 使用'镜头 - 重置镜头'或设置摇晃幅度和速率为0来停止摇晃.
 * @params  real real vertonlyoption
 */
declare function CameraSetSourceNoiseEx(mag: number, velocity: number, vertOnly: boolean): void;

declare function CameraSetSmoothingFactor(factor: number): void;

declare function CameraSetFocalDistance(distance: number): void;

declare function CameraSetDepthOfFieldScale(scale: number): void;

declare function SetCineFilterTexture(filename: string): void;

declare function SetCineFilterBlendMode(whichMode: blendmode): void;

declare function SetCineFilterTexMapFlags(whichFlags: texmapflags): void;

declare function SetCineFilterStartUV(minu: number, minv: number, maxu: number, maxv: number): void;

declare function SetCineFilterEndUV(minu: number, minv: number, maxu: number, maxv: number): void;

declare function SetCineFilterStartColor(red: number, green: number, blue: number, alpha: number): void;

declare function SetCineFilterEndColor(red: number, green: number, blue: number, alpha: number): void;

declare function SetCineFilterDuration(duration: number): void;

declare function DisplayCineFilter(flag: boolean): void;

declare function IsCineFilterDisplayed(): boolean;

declare function SetCinematicScene(portraitUnitid: number | string, color: playercolor, speakerTitle: string, text: string, sceneDuration: number, voiceoverDuration: number): void;

declare function EndCinematicScene(): void;

declare function ForceCinematicSubtitles(flag: boolean): void;

declare function SetCinematicAudio(cinematicAudio: boolean): void;

declare function GetCameraMargin(whichMargin: number): number;

/**
 * These return values for the local players camera only...
 */
/**
 * These return values for the local players camera only...
 */
declare function GetCameraBoundMinX(): number;

declare function GetCameraBoundMinY(): number;

declare function GetCameraBoundMaxX(): number;

declare function GetCameraBoundMaxY(): number;

/**
 * 当前摄象机的数值
 * 镜头属性(当前镜头)
 * 当前镜头的 ${Camera Field}
 * 注意:该函数对各玩家返回值不同,请确定你知道自己在做什么,否则很容易引起掉线.
 * @params  camerafield
 * @return real
 */
declare function GetCameraField(whichField: camerafield): number;

/**
 * 当前摄象机的目标的 X 坐标
 * 当前镜头目标X坐标
 * 当前镜头目标X坐标
 * 注意:该函数对各玩家返回值不同,请确定你知道自己在做什么,否则很容易引起掉线.
 * @return real
 */
declare function GetCameraTargetPositionX(): number;

/**
 * 当前摄象机的目标的 Y 坐标
 * 当前镜头目标Y坐标
 * 当前镜头目标Y坐标
 * 注意:该函数对各玩家返回值不同,请确定你知道自己在做什么,否则很容易引起掉线.
 * @return real
 */
declare function GetCameraTargetPositionY(): number;

/**
 * 当前摄象机的目标的 Z 坐标
 * 当前镜头目标Z坐标
 * 当前镜头目标Z坐标
 * 注意:该函数对各玩家返回值不同,请确定你知道自己在做什么,否则很容易引起掉线.
 * @return real
 */
declare function GetCameraTargetPositionZ(): number;

/**
 * 当前摄象机的目标
 * 当前镜头目标点
 * 当前镜头目标点
 * 会创建点. 注意:该函数对各玩家返回值不同,请确定你知道自己在做什么,否则很容易引起掉线.
 * @return location
 */
declare function GetCameraTargetPositionLoc(): location;

/**
 * 当前摄象机的位置的 X 坐标
 * 当前镜头源X坐标
 * 当前镜头源X坐标
 * 注意:该函数对各玩家返回值不同,请确定你知道自己在做什么,否则很容易引起掉线.
 * @return real
 */
declare function GetCameraEyePositionX(): number;

/**
 * 当前摄象机的位置的 Y 坐标
 * 当前镜头源Y坐标
 * 当前镜头源Y坐标
 * 注意:该函数对各玩家返回值不同,请确定你知道自己在做什么,否则很容易引起掉线.
 * @return real
 */
declare function GetCameraEyePositionY(): number;

/**
 * 当前摄象机的位置的 Z 坐标
 * 当前镜头源Z坐标
 * 当前镜头源Z坐标
 * 注意:该函数对各玩家返回值不同,请确定你知道自己在做什么,否则很容易引起掉线.
 * @return real
 */
declare function GetCameraEyePositionZ(): number;

/**
 * 当前照相机的位置
 * 当前镜头源位置
 * 当前镜头源位置
 * 会创建点. 注意:该函数对各玩家返回值不同,请确定你知道自己在做什么,否则很容易引起掉线.
 * @return location
 */
declare function GetCameraEyePositionLoc(): location;

//============================================================================
/**
 * Sound API
 */

//
/**

 * 设置环境音效 [new]
 * 设置环境音效为 ${environmentName}
 * @params  SoundEnvironment
 */
declare function NewSoundEnvironment(environmentName: string): void;

/**

 * 创建声音 [new]
 * 创建声音，路径：${fileName}，是否循环播放 ${looping}，是否为3D声音 ${is3D}，超出范围是否停止 ${stopwhenoutofrange}，淡入速率 ${fadeInRate}，淡出速率 ${fadeOutRate}，效果 ${eaxSetting}
 * @params  string boolean boolean boolean integer integer EaxSetting
 * @return sound
 */
declare function CreateSound(fileName: string, looping: boolean, is3D: boolean, stopwhenoutofrange: boolean, fadeInRate: number, fadeOutRate: number, eaxSetting: string): sound;

/**

 * 根据文件名和标签创建声音 [new]
 * 创建声音， 路径：${fileName} ，是否循环播放 ${looping}，是否为3D声音 ${is3D}，超出范围是否停止 ${stopwhenoutofrange}，淡入速率 ${fadeInRate}，淡出速率 ${fadeOutRate} 设置标签 ${SLKEntryName}
 * @params  string boolean boolean boolean integer integer string
 * @return sound
 */
declare function CreateSoundFilenameWithLabel(fileName: string, looping: boolean, is3D: boolean, stopwhenoutofrange: boolean, fadeInRate: number, fadeOutRate: number, SLKEntryName: string): sound;

/**

 * 从标签创建声音 [new]
 * 根据标签 ${soundLabel} 创建声音，是否循环播放 ${looping}，是否为3D声音 ${is3D}，超出范围是否停止 ${stopwhenoutofrange}，淡入速率 ${fadeInRate}，淡出速率 ${fadeOutRate}
 * @params  string boolean boolean boolean integer integer
 * @return sound
 */
declare function CreateSoundFromLabel(soundLabel: string, looping: boolean, is3D: boolean, stopwhenoutofrange: boolean, fadeInRate: number, fadeOutRate: number): sound;

/**

 * 创建MIDI音乐 [new]
 * 创建MIDI音乐，标签为 ${soundLabel}，淡入速率 ${fadeInRate}，淡出速率 ${fadeOutRate}
 * @params  string integer integer
 * @return sound
 */
declare function CreateMIDISound(soundLabel: string, fadeInRate: number, fadeOutRate: number): sound;

/**

 * 设置声音标签 [new]
 * 设置 ${soundLabel} 的标签：${soundHandle}
 * @params  sound string
 */
declare function SetSoundParamsFromLabel(soundHandle: sound, soundLabel: string): void;

declare function SetSoundDistanceCutoff(soundHandle: sound, cutoff: number): void;

/**

 * 设置声音的声道 [new]
 * 设置 ${soundHandle} 的声道：${channel}
 * @params  sound SoundChannel
 */
declare function SetSoundChannel(soundHandle: sound, channel: number): void;

/**
 * 设置音效音量 [R]
 * 设置 ${音效} 的音量为 ${Volume}
 * 音量取值范围0-127.
 * @params  sound integer
 */
declare function SetSoundVolume(soundHandle: sound, volume: number): void;

declare function SetSoundPitch(soundHandle: sound, pitch: number): void;

/**
 * the following method must be called immediately after calling "StartSound"
 */
/**
 * 设置音效播放时间点 [R]
 * 设置 ${音效} 的播放时间点为 ${Offset} 毫秒
 * 音效必须是正在播放的. 不能用于3D音效.
 * @params  sound integer
 */
declare function SetSoundPlayPosition(soundHandle: sound, millisecs: number): void;

/**
 * these calls are only valid if the sound was created with 3d enabled
 */
/**
 * 设置3D声音距离
 * 设置3D音效衰减范围
 * 设置 ${3D音效} 的衰减最小范围: ${数值} 最大范围: ${数值}
 * 该动作仅用于3D音效. 注意不一定要达到最大范围,音量衰减到一定程度也会变没的.
 * @params  sound real real
 */
declare function SetSoundDistances(soundHandle: sound, minDist: number, maxDist: number): void;

/**

 * 设置声音的角度 [new]
 * 设置 ${soundHandle} 的内圆锥角度： ${inside}，外圆锥角度：${outside}，外圆锥音量：${outsideVolume}
 * @params  sound real real integer
 */
declare function SetSoundConeAngles(soundHandle: sound, inside: number, outside: number, outsideVolume: number): void;

/**

 * 设置声音的传播方向 [new]
 * 设置 ${soundHandle} 的传播方向(${x}, ${y}, ${z})
 * @params  sound real real real
 */
declare function SetSoundConeOrientation(soundHandle: sound, x: number, y: number, z: number): void;

/**
 * 设置3D音效位置(指定坐标) [R]
 * 设置 ${3D音效} 的播放位置为(${X},${Y}), Z轴高度为 ${Z}
 * 该动作仅用于3D音效.
 * @params  sound real real real
 */
declare function SetSoundPosition(soundHandle: sound, x: number, y: number, z: number): void;

/**

 * 设置声音的速度 [new]
 * 设置 ${soundHandle} 的速度设置为 (${x}, ${y}, ${z})
 * @params  sound real real real
 */
declare function SetSoundVelocity(soundHandle: sound, x: number, y: number, z: number): void;

declare function AttachSoundToUnit(soundHandle: sound, whichUnit: unit): void;

declare function StartSound(soundHandle: sound): void;

declare function StopSound(soundHandle: sound, killWhenDone: boolean, fadeOut: boolean): void;

declare function KillSoundWhenDone(soundHandle: sound): void;

/**
 * Music Interface. Note that if music is disabled, these calls do nothing
 */
/**
 * 设置背景音乐列表 [R]
 * 设置背景音乐列表为: ${Music} , ${允许/禁止} 随机播放, 开始播放序号为 ${Index}
 * 可指定播放文件或播放目录.
 * @params  musicfile enabledisableoption integer
 */
declare function SetMapMusic(musicName: string, random: boolean, index: number): void;

declare function ClearMapMusic(): void;

declare function PlayMusic(musicName: string): void;

declare function PlayMusicEx(musicName: string, frommsecs: number, fadeinmsecs: number): void;

declare function StopMusic(fadeOut: boolean): void;

declare function ResumeMusic(): void;

/**
 * 播放主题音乐 [C]
 * 播放 ${Music Theme} 主题音乐
 * 播放主题音乐一次,然后恢复原来的音乐.
 * @params  musictheme
 */
declare function PlayThematicMusic(musicFileName: string): void;

/**
 * 跳播主题音乐 [R]
 * 播放 ${Music Theme} 主题音乐,跳过开始 ${Offset} 毫秒
 * @params  musictheme integer
 */
declare function PlayThematicMusicEx(musicFileName: string, frommsecs: number): void;

/**
 * 停止主题音乐[C]
 * 停止正在播放的主题音乐
 * @params  nothing
 */
declare function EndThematicMusic(): void;

/**
 * 设置背景音乐音量 [R]
 * 设置背景音乐音量为 ${Volume}
 * 音量取值范围为0-127.
 * @params  integer
 */
declare function SetMusicVolume(volume: number): void;

/**
 * 设置背景音乐播放时间点 [R]
 * 设置当前背景音乐的播放时间点为 ${Offset} 毫秒
 * @params  integer
 */
declare function SetMusicPlayPosition(millisecs: number): void;

declare function SetThematicMusicVolume(volume: number): void;

/**
 * 设置主题音乐播放时间点 [R]
 * 设置当前主题音乐播放时间点为 ${Offset} 毫秒
 * @params  integer
 */
declare function SetThematicMusicPlayPosition(millisecs: number): void;

/**
 * other music and sound calls
 */
declare function SetSoundDuration(soundHandle: sound, duration: number): void;

declare function GetSoundDuration(soundHandle: sound): number;

declare function GetSoundFileDuration(musicFileName: string): number;

/**
 * 设置多通道音量 [R]
 * 设置 ${Volume Channel} 的音量为 ${Volume}
 * 音量取值范围0-1.
 * @params  volumegroup real
 */
declare function VolumeGroupSetVolume(vgroup: volumegroup, scale: number): void;

declare function VolumeGroupReset(): void;

/**

 * 声音在播放 [new]
 *  ${soundHandle} 在播放
 * @params  sound
 * @return boolean
 */
declare function GetSoundIsPlaying(soundHandle: sound): boolean;

/**

 * 声音在加载 [new]
 *  ${soundHandle} 在加载
 * @params  sound
 * @return boolean
 */
declare function GetSoundIsLoading(soundHandle: sound): boolean;

/**

 * 注册堆叠音效 [new]
 * 设置 ${soundHandle} 的堆叠，是否按位置来处理堆叠：${byPosition},堆叠区域的宽度：${rectwidth}, 堆叠区域的高度：${rectheight}
 * @params  sound boolean real real
 */
declare function RegisterStackedSound(soundHandle: sound, byPosition: boolean, rectwidth: number, rectheight: number): void;

/**

 * 取消注册的堆叠音效设置 [new]
 * 取消 ${soundHandle} 的堆叠，是否按位置来处理堆叠：${byPosition},堆叠区域的宽度：${rectwidth}, 堆叠区域的高度：${rectheight}
 * @params  sound boolean real real
 */
declare function UnregisterStackedSound(soundHandle: sound, byPosition: boolean, rectwidth: number, rectheight: number): void;

declare function SetSoundFacialAnimationLabel(soundHandle: sound, animationLabel: string): boolean;

declare function SetSoundFacialAnimationGroupLabel(soundHandle: sound, groupLabel: string): boolean;

declare function SetSoundFacialAnimationSetFilepath(soundHandle: sound, animationSetFilepath: string): boolean;

//Subtitle support that is attached to the soundHandle rather than as disperate data with the legacy UI
/**
 * Subtitle support that is attached to the soundHandle rather than as disperate data with the legacy UI
 */
declare function SetDialogueSpeakerNameKey(soundHandle: sound, speakerName: string): boolean;

declare function GetDialogueSpeakerNameKey(soundHandle: sound): string;

declare function SetDialogueTextKey(soundHandle: sound, dialogueText: string): boolean;

declare function GetDialogueTextKey(soundHandle: sound): string;

//============================================================================
/**
 * Effects API
 */

//
/**
 * 新建天气效果 [R]
 * 新建的在 ${矩形区域} 的天气效果: ${WeatherId}
 * 会创建天气效果.
 * @params  rect weathereffectcode
 * @return weathereffect
 */
declare function AddWeatherEffect(where: rect, effectid: number | string): weathereffect;

declare function RemoveWeatherEffect(whichEffect: weathereffect): void;

/**
 * 打开/关闭天气效果
 * 启用/禁用 天气效果
 * 设置 ${Weather Effect} 的状态为: ${On/Off}
 * 可以使用'环境 - 创建天气效果'动作来创建天气效果.
 * @params  weathereffect onoffoption
 */
declare function EnableWeatherEffect(whichEffect: weathereffect, enable: boolean): void;

/**
 * 新建地形变化:弹坑 [R]
 * 新建的弹坑变形. 中心坐标:(${X},${Y}) 半径: ${Radius} 深度: ${Depth} 持续时间: ${Duration} 毫秒, 变化类型: ${Type}
 * 深度可取负数. 永久地形变化在保存游戏时不会被记录.
 * @params  real real real real integer cratertype
 * @return terraindeformation
 */
declare function TerrainDeformCrater(x: number, y: number, radius: number, depth: number, duration: number, permanent: boolean): terraindeformation;

/**
 * 新建地形变化:波纹 [R]
 * 新建的波纹变形. 中心坐标:(${X},${Y}) 最终半径: ${Radius} 深度: ${Depth} 持续时间: ${Duration} 毫秒, 变化次数: ${Count} 面波数: ${SpaceWave} 总波数: ${TimeWave} 初始半径率: ${数值} 变化类型: ${Type}
 * 初始半径率=初始半径/最终半径.
 * @params  real real real real integer integer real real real rippletype
 * @return terraindeformation
 */
declare function TerrainDeformRipple(x: number, y: number, radius: number, depth: number, duration: number, count: number, spaceWaves: number, timeWaves: number, radiusStartPct: number, limitNeg: boolean): terraindeformation;

/**
 * 新建地形变化:冲击波 [R]
 * 新建的冲击波变形. 起始坐标:(${X},${Y}) 波方向:(${X},${Y}) 波距离: ${distance} 波速度: ${speed} 波半径: ${radius} 深度: ${Depth} 变形效果持续时间: ${Delay} 毫秒, 变化次数: ${Count}
 * 深度可取负数. 方向以(X,Y)坐标形式表示,如(1,1)表示45度.
 * @params  real real real real real real real real integer integer
 * @return terraindeformation
 */
declare function TerrainDeformWave(x: number, y: number, dirX: number, dirY: number, distance: number, speed: number, radius: number, depth: number, trailTime: number, count: number): terraindeformation;

/**
 * 新建地形变化:随机 [R]
 * 新建的随机变形. 中心坐标:(${X},${Y}) 半径: ${Radius} 最小高度变化: ${Depth} 最大高度变化: ${Depth} 持续时间: ${Duration} 毫秒, 变化周期: ${Duration} 毫秒
 * @params  real real real real real integer integer
 * @return terraindeformation
 */
declare function TerrainDeformRandom(x: number, y: number, radius: number, minDelta: number, maxDelta: number, duration: number, updateInterval: number): terraindeformation;

/**
 * 停止地形变化 [R]
 * 停止 ${Terrain Deformation} ,衰退时间: ${Duration} 毫秒
 * 地形变化会平滑地过渡到无.
 * @params  terraindeformation integer
 */
declare function TerrainDeformStop(deformation: terraindeformation, duration: number): void;

/**
 * 停止所有地域变形
 * 停止所有地形变化
 * 停止所有地形变化
 * 包括由技能引起的地形变化.
 * @params  nothing
 */
declare function TerrainDeformStopAll(): void;

/**
 * 新建特效(创建到坐标) [R]
 * 新建特效 ${Model File} 在(${X},${Y})处
 * 会创建特效.
 * @params  modelfile real real
 * @return effect
 */
declare function AddSpecialEffect(modelName: string, x: number, y: number): effect;

/**
 * 新建特效(创建到点) [R]
 * 新建特效 ${Model File} 在 ${指定点} 处
 * 会创建特效.
 * @params  modelfile location
 * @return effect
 */
declare function AddSpecialEffectLoc(modelName: string, where: location): effect;

/**
 * 新建特效(创建到单位) [R]
 * 新建特效 ${Model File} 并绑定到 ${单位} 的 ${Attachment Point} 附加点上
 * 会创建特效.
 * @params  modelfile unit string
 * @return effect
 */
declare function AddSpecialEffectTarget(modelName: string, targetWidget: widget, attachPointName: string): effect;

/**
 * 销毁特效
 */
declare function DestroyEffect(whichEffect: effect): void;

declare function AddSpellEffect(abilityString: string, t: effecttype, x: number, y: number): effect;

declare function AddSpellEffectLoc(abilityString: string, t: effecttype, where: location): effect;

/**
 * 新建特效(指定技能，创建到坐标) [R]
 * ${技能} 的 ${EffectType} , 创建到坐标(${X},${Y})
 * 会创建特效.
 * @params  abilcode effecttype real real
 * @return effect
 */
declare function AddSpellEffectById(abilityid: number | string, t: effecttype, x: number, y: number): effect;

/**
 * 新建特效(指定技能，创建到点) [R]
 * ${技能} 的 ${EffectType} , 创建到 ${指定点}
 * 会创建特效.
 * @params  abilcode effecttype location
 * @return effect
 */
declare function AddSpellEffectByIdLoc(abilityid: number | string, t: effecttype, where: location): effect;

declare function AddSpellEffectTarget(modelName: string, t: effecttype, targetWidget: widget, attachPoint: string): effect;

/**
 * 新建特效(指定技能，创建到单位) [R]
 * ${技能} 的 ${EffectType} , 绑定到 ${单位} 的 ${String} 附加点
 * 会创建特效.
 * @params  abilcode effecttype unit string
 * @return effect
 */
declare function AddSpellEffectTargetById(abilityid: number | string, t: effecttype, targetWidget: widget, attachPoint: string): effect;

/**
 * 新建闪电效果 [R]
 * 新建闪电效果: ${闪电效果} (${Boolean}检查可见性) 起始点:(${X},${Y}) 终结点:(${X},${Y})
 * 会创建闪电效果. 允许检查可见性则在起始点和终结点都不可见时将不创建闪电效果.
 * @params  lightningtype allowdontoption real real real real
 * @return lightning
 */
declare function AddLightning(codeName: string, checkVisibility: boolean, x1: number, y1: number, x2: number, y2: number): lightning;

/**
 * 新建闪电效果(指定Z轴) [R]
 * 新建闪电效果: ${闪电效果} (${Boolean}检查可见性) 起始点:(${X},${Y},${Z}) 终结点:(${X},${Y},${Z})
 * 会创建闪电效果. 允许检查可见性则在起始点和终结点都不可见时将不创建闪电效果.
 * @params  lightningtype allowdontoption real real real real real real
 * @return lightning
 */
declare function AddLightningEx(codeName: string, checkVisibility: boolean, x1: number, y1: number, z1: number, x2: number, y2: number, z2: number): lightning;

/**
 * 销毁闪电特效
 */
declare function DestroyLightning(whichBolt: lightning): boolean;

/**
 * 移动闪电效果
 */
declare function MoveLightning(whichBolt: lightning, checkVisibility: boolean, x1: number, y1: number, x2: number, y2: number): boolean;

/**
 * 移动闪电效果(指定坐标) [R]
 * 移动 ${Lightning} 到新位置,(${Boolean} 检查可见性) 新起始点: (${X},${Y},${Z}) 新终结点: (${X},${Y},${Z})
 * 可指定Z坐标. 允许检查可见性则在指定起始点和终结点都不可见时将不移动闪电效果.
 * @params  lightning allowdontoption real real real real real real
 */
declare function MoveLightningEx(whichBolt: lightning, checkVisibility: boolean, x1: number, y1: number, z1: number, x2: number, y2: number, z2: number): boolean;

declare function GetLightningColorA(whichBolt: lightning): number;

declare function GetLightningColorR(whichBolt: lightning): number;

declare function GetLightningColorG(whichBolt: lightning): number;

declare function GetLightningColorB(whichBolt: lightning): number;

declare function SetLightningColor(whichBolt: lightning, r: number, g: number, b: number, a: number): boolean;

declare function GetAbilityEffect(abilityString: string, t: effecttype, index: number): string;

declare function GetAbilityEffectById(abilityid: number | string, t: effecttype, index: number): string;

declare function GetAbilitySound(abilityString: string, t: soundtype): string;

declare function GetAbilitySoundById(abilityid: number | string, t: soundtype): string;

//============================================================================
/**
 * Terrain API
 */

//
/**
 * 地形悬崖高度(指定坐标) [R]
 * 坐标(${X},${Y})处的地形悬崖高度
 * 悬崖高度:深水区为0, 浅水区为1, 平原为2, 之后每层+1.
 * @params  real real
 * @return integer
 */
declare function GetTerrainCliffLevel(x: number, y: number): number;

/**
 * 设置水颜色 [R]
 * 设置水颜色为:(${Red},${Green},${Blue}), 透明值为: ${Transparency}
 * 颜色格式为(红,绿,蓝). 透明值0为不可见. 颜色值和透明道值取值范围为0-255.
 * @params  integer integer integer integer
 */
declare function SetWaterBaseColor(red: number, green: number, blue: number, alpha: number): void;

/**
 * 设置 水变形 开/关
 * 开启/关闭 水面变形
 * ${On/Off} 水面变形
 * 开启时当发生地形变化时水面高度也会随着变化. 对永久变形无效.
 * @params  onoffoption
 */
declare function SetWaterDeforms(val: boolean): void;

/**
 * 指定坐标地形 [R]
 * 坐标(${X},${Y})处的地形
 * @params  real real
 * @return terraintype
 */
declare function GetTerrainType(x: number, y: number): number;

/**
 * 地形样式(指定坐标) [R]
 * 坐标(${X},${Y})处的地形样式
 * @params  real real
 * @return integer
 */
declare function GetTerrainVariance(x: number, y: number): number;

/**
 * 改变地形类型(指定坐标) [R]
 * 改变(${X},${Y})处的地形为 ${Terrain Type} ,使用样式: ${Variation} 范围: ${Area} 形状: ${Shape}
 * 地形样式-1表示随机样式. 范围即地形编辑器中的刷子大小.1表示128x128范围
 * @params  real real terraintype integer integer terrainshape
 */
declare function SetTerrainType(x: number, y: number, terrainType: number, variation: number, area: number, shape: number): void;

/**
 * 地形通行状态关闭(指定坐标) [R]
 * 坐标(${X},${Y})处的 ${Pathing Type} 通行状态为关闭
 * 指定类型单位不能通行即通行状态为关闭. 如该点不能造建筑就是'建造'通行状态为关闭. 可使用'环境 - 设置地形通行状态'来改变通行状态.
 * @params  real real pathingtype
 * @return boolean
 */
declare function IsTerrainPathable(x: number, y: number, t: pathingtype): boolean;

/**
 * 设置地形通行状态(指定坐标) [R]
 * 设置(${X},${Y})处单元点的 ${Pathing} 地形通行状态为: ${On/Off}
 * 例:设置'建造'通行状态为开,则该点可以建造建筑. 一个单元点范围为32x32.
 * @params  real real pathingtype onoffoption
 */
declare function SetTerrainPathable(x: number, y: number, t: pathingtype, flag: boolean): void;

//============================================================================
/**
 * Image API
 */

//
/**
 * 新建图像 [R]
 * 新建图像: ${Image} 大小:(${X},${Y},${Z}) 创建点:(${X},${Y},${Z}) 原点坐标:(${X},${Y},${Z}) 图像类型: ${Type}
 * 使用'图像 - 设置永久渲染状态'动作才能显示图像. 大小、创建点和原点格式为(X,Y,Z). 创建点作为图像的左下角位置. 会创建图像.
 * @params  string real real real real real real real real real imagetype
 * @return image
 */
declare function CreateImage(file: string, sizeX: number, sizeY: number, sizeZ: number, posX: number, posY: number, posZ: number, originX: number, originY: number, originZ: number, imageType: number): image;

/**
 * 删除图像
 * 删除 ${图像}
 * @params  image
 */
declare function DestroyImage(whichImage: image): void;

/**
 * 显示/隐藏 [R]
 * 设置 ${Image} ${Show/Hide}
 * @params  image showhideoption
 */
declare function ShowImage(whichImage: image, flag: boolean): void;

/**
 * 改变图像高度
 * 设置图像高度
 * 设置 ${Image} ${Enable/Disable} Z轴显示,并设置高度为 ${Height}
 * 实际显示高度为图像高度+Z轴偏移. 只有允许Z轴显示时才有效.
 * @params  image enabledisableoption real
 */
declare function SetImageConstantHeight(whichImage: image, flag: boolean, height: number): void;

/**
 * 改变图像位置(指定坐标) [R]
 * 改变 ${Image} 的位置为(${X},${Y}),Z轴偏移为 ${Z}
 * 指图像的左下角位置.
 * @params  image real real real
 */
declare function SetImagePosition(whichImage: image, x: number, y: number, z: number): void;

/**
 * 改变图像颜色 [R]
 * 设置 ${Image} 的颜色值为(${Red},${Green},${Blue}) Alpha值为 ${Alpha}
 * 颜色格式为(红,绿,蓝). Alpha值为0是不可见的. 颜色值和Alpha值取值范围0-255.
 * @params  image integer integer integer integer
 */
declare function SetImageColor(whichImage: image, red: number, green: number, blue: number, alpha: number): void;

/**
 * 改变图像着色状态
 * 设置图像渲染状态
 * 设置 ${Image} : ${Enable/Disable} 显示状态
 * 未发现有任何作用.
 * @params  image enabledisableoption
 */
declare function SetImageRender(whichImage: image, flag: boolean): void;

/**
 * 改变图像永久着色状态
 * 设置图像永久渲染状态
 * 设置 ${Image} : ${Enable/Disable} 永久显示状态
 * 要显示图像则必须开启该项.
 * @params  image enabledisableoption
 */
declare function SetImageRenderAlways(whichImage: image, flag: boolean): void;

/**
 * 改变图像水上状态
 * 图像水面显示状态
 * 设置 ${Image} : ${Enable/Disable} 水面显示, ${Enable/Disable} 水的Alpha通道
 * 前者设置图像在水面或是水底显示. 后者设置图像是否受水的Alpha通道影响.
 * @params  image enabledisableoption enabledisableoption
 */
declare function SetImageAboveWater(whichImage: image, flag: boolean, useWaterAlpha: boolean): void;

/**
 * 改变图像类型
 * 改变 ${Image} 类型为 ${Type}
 * @params  image imagetype
 */
declare function SetImageType(whichImage: image, imageType: number): void;

//============================================================================
/**
 * Ubersplat API
 */

//
/**
 * 新建地面纹理变化 [R]
 * 新建的地面纹理变化在点(${X},${Y}),使用图像: ${Type} 颜色值为(${Red},${Green},${Blue}) Alpha值为${Transparency} (${Enable/Disable} 暂停状态, ${Enble/Disable} 跳过出生动画)
 * 颜色值和Alpha值取值范围0-255. 使用'地面纹理变化 - 设置永久渲染状态' 来显示创建的纹理变化. 暂停状态表示动画播放完毕后是否继续保留该纹理变化. 会创建纹理变化.
 * @params  real real ubersplattype integer integer integer integer enabledisableoption enabledisableoption
 * @return ubersplat
 */
declare function CreateUbersplat(x: number, y: number, name: string, red: number, green: number, blue: number, alpha: number, forcePaused: boolean, noBirthTime: boolean): ubersplat;

/**
 * 删除地面纹理
 * 删除地面纹理变化
 * 删除 ${Ubersplat}
 * @params  ubersplat
 */
declare function DestroyUbersplat(whichSplat: ubersplat): void;

/**
 * 重置地面纹理
 * 重置地面纹理变化
 * 重置 ${Ubersplat}
 * @params  ubersplat
 */
declare function ResetUbersplat(whichSplat: ubersplat): void;

/**
 * 完成地面纹理
 * 结束地面纹理变化
 * 结束 ${Ubersplat}
 * 在动画播放完毕时自动清除该地面纹理变化.
 * @params  ubersplat
 */
declare function FinishUbersplat(whichSplat: ubersplat): void;

/**
 * 显示/隐藏 地面纹理变化[R]
 * 设置 ${Ubersplat} 状态为 ${Show/Hide}
 * @params  ubersplat showhideoption
 */
declare function ShowUbersplat(whichSplat: ubersplat, flag: boolean): void;

/**
 * 改变地面纹理着色状态
 * 设置渲染状态
 * 设置 ${Ubersplat} : ${Enable/Disable} 渲染状态
 * 未发现有任何作用.
 * @params  ubersplat enabledisableoption
 */
declare function SetUbersplatRender(whichSplat: ubersplat, flag: boolean): void;

/**
 * 改变地面纹理永久着色状态
 * 设置永久渲染状态
 * 设置 ${Ubersplat} : ${Enable/Disable} 永久渲染状态
 * 要显示地面纹理变化则必须开启该项.
 * @params  ubersplat enabledisableoption
 */
declare function SetUbersplatRenderAlways(whichSplat: ubersplat, flag: boolean): void;

//============================================================================
/**
 * Blight API
 */

//
/**
 * 创建/删除荒芜地表(圆范围)(指定坐标) [R]
 * 为 ${Player} 在圆心为(${X},${Y}),半径为 ${R} 的圆范围内 ${Create/Remove} 一块荒芜地表
 * @params  player real real real createremoveoption
 */
declare function SetBlight(whichPlayer: player, x: number, y: number, radius: number, addBlight: boolean): void;

/**
 * 创建/删除荒芜地表(矩形区域) [R]
 * 为 ${Player} 在 ${Region} ${Create/Remove} 一块荒芜地表
 * @params  player rect createremoveoption
 */
declare function SetBlightRect(whichPlayer: player, r: rect, addBlight: boolean): void;

/**
 * 设置荒芜地表位置
 */
declare function SetBlightPoint(whichPlayer: player, x: number, y: number, addBlight: boolean): void;

/**
 * 设置荒芜地表点
 */
declare function SetBlightLoc(whichPlayer: player, whichLocation: location, radius: number, addBlight: boolean): void;

/**
 * 新建不死族金矿 [R]
 * 新建 ${玩家} 的不死族金矿在(${X},${Y}),面向角度:${Face} 度
 * @params  player real real degree
 * @return unit
 */
declare function CreateBlightedGoldmine(id: player, x: number, y: number, face: number): unit;

/**
 * 坐标点被荒芜地表覆盖 [R]
 * 坐标点(${X},${Y})被荒芜地表覆盖
 * @params  real real
 * @return boolean
 */
declare function IsPointBlighted(x: number, y: number): boolean;

//============================================================================
/**
 * Doodad API
 */

//
/**
 * 播放圆范围内地形装饰物动画 [R]
 * 选取圆心为(${X},${Y}),半径为 ${半径} 的圆范围内的 ${装饰物类型}(选取方式:${选取方式}), 做 ${Animation Name} 动作(${允许/禁止} 随机播放)
 * 特殊动画名: 'show', 'hide', 'soundon', 'soundoff'. 随机播放:比如某装饰物有好几个'stand'动作,则允许该项时会随机抽取某个动作播放,而禁止该项时只播放首个动作.
 * @params  real real real doodadcode nearestonlyoption string enabledisableoption
 */
declare function SetDoodadAnimation(x: number, y: number, radius: number, doodadid: number | string, nearestOnly: boolean, animName: string, animRandom: boolean): void;

/**
 * 播放矩形区域内地形装饰物动画 [R]
 * 播放 ${Rect} 内所有 ${装饰物类型} 的 ${Animation Name} 动作(${允许/禁止} 随机播放)
 * 特殊动画名: 'show', 'hide', 'soundon', 'soundoff'. 随机播放:比如某装饰物有好几个'stand'动作,则允许该项时会随机抽取某个动作播放,而禁止该项时只播放首个动作.
 * @params  rect doodadcode string enabledisableoption
 */
declare function SetDoodadAnimationRect(r: rect, doodadid: number | string, animName: string, animRandom: boolean): void;

//============================================================================
/**
 * Computer AI interface
 */

//
/**
 * 启动对战 AI
 * 启用对战AI
 * 为 ${Player} 启用对战AI: ${Script}
 * AI只能对电脑玩家使用,当运行该动作后,与之配匹的电脑玩家会强制执行该AI脚本.
 * @params  player aiscript
 */
declare function StartMeleeAI(num: player, script: string): void;

/**
 * 启动战役 AI
 * 启用战役AI
 * 为 ${Player} 启用战役AI: ${Script}
 * AI只能对电脑玩家使用,当运行该动作后,与之配匹的电脑玩家会强制执行该AI脚本.
 * @params  player aiscript
 */
declare function StartCampaignAI(num: player, script: string): void;

/**
 * 发送 AI 命令
 * 发送AI命令
 * 对 ${Player} 发送AI命令:(${命令}, ${数据})
 * 发送的AI命令将被AI脚本所使用.
 * @params  player integer integer
 */
declare function CommandAI(num: player, command: number, data: number): void;

/**
 * 暂停/恢复 AI脚本运行 [R]
 * 设定 ${Player} ${暂停/恢复} 当前AI脚本的运行
 * 事实上该函数是有问题的,可以这么理解:设玩家当前AI脚本的运行状态R为0,暂停1次则R+1,恢复1次则R-1,仅当R=0时该玩家才会运行AI. 在使用前请先理解这段话的意思.
 * @params  player pauseresumeoption
 */
declare function PauseCompAI(p: player, pause: boolean): void;

/**
 * 对战 AI
 * 玩家的AI难度
 * ${Player} 的对战AI难度
 * 对非AI玩家返回普通难度.
 * @params  player
 * @return aidifficulty
 */
declare function GetAIDifficulty(num: player): aidifficulty;

/**
 * 忽略单位的防守职责
 * 忽视指定单位的警戒点
 * 忽视 ${单位} 的警戒点
 * 单位将不会自动返回原警戒点. 一个很有用的功能就是刷怪进攻时忽视单位警戒范围的话,怪就不会想家了.
 * @params  unit
 */
declare function RemoveGuardPosition(hUnit: unit): void;

/**
 * 恢复单位的防守职责
 * 恢复指定单位的警戒点
 * 恢复 ${单位} 的警戒点
 * 这个动作通过 AI 来恢复特定单位的警戒点.
 * @params  unit
 */
declare function RecycleGuardPosition(hUnit: unit): void;

/**
 * 忽略所有单位的防守职责
 * 忽视所有单位的警戒点
 * 忽视 ${Player} 的所有单位的警戒点
 * 单位将不会自动返回原警戒点. 一个很有用的功能就是刷怪进攻时忽视单位警戒范围的话,怪就不会想家了.
 * @params  player
 */
declare function RemoveAllGuardPositions(num: player): void;

//============================================================================
/**
 * ** Cheat标签 **
 * 输入作弊码 [R]
 * 输入作弊码: ${String}
 * 作弊码只在单机有效.
 * @params  string
 */
declare function Cheat(cheatStr: string): void;

/**
 * 无法胜利 [R]
 * 玩家开启作弊模式: 无法胜利
 * 单机作弊码开启的模式.
 * @return boolean
 */
declare function IsNoVictoryCheat(): boolean;

/**
 * 无法失败 [R]
 * 玩家开启作弊模式: 无法失败
 * 单机作弊码开启的模式.
 * @return boolean
 */
declare function IsNoDefeatCheat(): boolean;

/**
 * 预读文件
 * 预载文件
 * 预载 ${文件}
 * 可以事先载入文件并调入到游戏内存,以加快游戏的速度.
 * @params  anyfile
 */
declare function Preload(filename: string): void;

/**
 * 开始预读
 * 开始预载
 * 开始预载, 超时设置 ${Time} 秒
 * 将文件调入到游戏内存中.
 * @params  real
 */
declare function PreloadEnd(timeout: number): void;

/**
 * 预加载开始
 */
declare function PreloadStart(): void;

/**
 * 预加载刷新
 */
declare function PreloadRefresh(): void;

/**
 * 预加载结束
 */
declare function PreloadEndEx(): void;

declare function PreloadGenClear(): void;

declare function PreloadGenStart(): void;

declare function PreloadGenEnd(filename: string): void;

/**
 * 预读一批文件
 * 批量预载
 * 预载所有在 ${文件} 中列出的文件
 * @params  preloadfile
 */
declare function Preloader(filename: string): void;

/**
 *  base from cj
 * <1.24> 哈希项存有整数值 <new>
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value}  存储有整数值
 * @params  hashtable integer integer
 * @return boolean
 */
declare function HaveSavedInteger(table: hashtable, parentKey: number, childKey: number): boolean;

/**

 * <1.24> 哈希项存有实数值 <new>
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value}  存储有实数值
 * @params  hashtable integer integer
 * @return boolean
 */
declare function HaveSavedReal(table: hashtable, parentKey: number, childKey: number): boolean;

/**

 * <1.24> 哈希项存有布尔值 <new>
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value}  存储有布尔值
 * @params  hashtable integer integer
 * @return boolean
 */
declare function HaveSavedBoolean(table: hashtable, parentKey: number, childKey: number): boolean;

/**

 * <1.24> 哈希项存有字符串 <new>
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value}  存储有字符串
 * @params  hashtable integer integer
 * @return boolean
 */
declare function HaveSavedString(table: hashtable, parentKey: number, childKey: number): boolean;

/**

 * <1.24> 哈希项存有句柄 <new>
 * 在 ${Hashtable} 的主索引 ${Value} 子索引 ${Value}  存储有句柄
 * @params  hashtable integer integer
 * @return boolean
 */
declare function HaveSavedHandle(table: hashtable, parentKey: number, childKey: number): boolean;

/**

 * 清理哈希项存储的整数值 <new>
 * 清空 ${Hashtable}  主索引  ${Value}  子索引${childKey}  之内的整数值
 * 清空哈希表主索引下的整数值
 * @params  hashtable integer integer
 */
declare function RemoveSavedInteger(table: hashtable, parentKey: number, childKey: number): void;

/**

 * 清理哈希项存储的实数值 <new>
 * 清空 ${Hashtable}  主索引  ${Value}  子索引${childKey}  之内的实数值
 * 清空哈希表主索引下的实数值
 * @params  hashtable integer integer
 */
declare function RemoveSavedReal(table: hashtable, parentKey: number, childKey: number): void;

/**

 * 清理哈希项存储的布尔值 <new>
 * 清空 ${Hashtable}  主索引  ${Value}  子索引${childKey}  之内的布尔值
 * 清空哈希表主索引下的布尔值
 * @params  hashtable integer integer
 */
declare function RemoveSavedBoolean(table: hashtable, parentKey: number, childKey: number): void;

/**

 * 清理哈希项存储的字符串 <new>
 * 清空 ${Hashtable}  主索引  ${Value}  子索引${childKey}  之内的字符串
 * 清空哈希表主索引下的字符串
 * @params  hashtable integer integer
 */
declare function RemoveSavedString(table: hashtable, parentKey: number, childKey: number): void;

/**

 * 清理哈希项存储的句柄 <new>
 * 清空 ${Hashtable}  主索引  ${Value}  子索引${childKey}  之内的句柄
 * 清空哈希表主索引下的句柄
 * @params  hashtable integer integer
 */
declare function RemoveSavedHandle(table: hashtable, parentKey: number, childKey: number): void;

declare function SetTextTagSuspended(t: texttag, flag: boolean): void;

declare function SetTextTagPermanent(t: texttag, flag: boolean): void;

declare function SetTextTagAge(t: texttag, age: number): void;

declare function SetTextTagLifespan(t: texttag, lifespan: number): void;

declare function SetTextTagFadepoint(t: texttag, fadepoint: number): void;

declare let FALSE: boolean;
declare let TRUE: boolean;
declare let JASS_MAX_ARRAY_SIZE: number;
/**
 * 0-11  = 玩家1-12
 * 12=中立敌对
 * 13=中立受害
 * 14=中立特殊
 * 15=中立被动
 */
//15=中立被动
declare let PLAYER_NEUTRAL_PASSIVE: number;
/**
 * 0-11  = 玩家1-12
 * 12=中立敌对
 * 13=中立受害
 * 14=中立特殊
 * 15=中立被动
 */
//12=中立敌对
declare let PLAYER_NEUTRAL_AGGRESSIVE: number;
/**
 *  红色
 */
declare let PLAYER_COLOR_RED: playercolor;
/**
 *  蓝色
 */
declare let PLAYER_COLOR_BLUE: playercolor;
/**
 *  青色
 */
declare let PLAYER_COLOR_CYAN: playercolor;
/**
 *  紫色
 */
declare let PLAYER_COLOR_PURPLE: playercolor;
/**
 *  黄色
 */
declare let PLAYER_COLOR_YELLOW: playercolor;
/**
 *  橙色
 */
declare let PLAYER_COLOR_ORANGE: playercolor;
/**
 *  绿色
 */
declare let PLAYER_COLOR_GREEN: playercolor;
/**
 *  粉红色
 */
declare let PLAYER_COLOR_PINK: playercolor;
/**
 *  灰色
 */
declare let PLAYER_COLOR_LIGHT_GRAY: playercolor;
/**
 *  淡蓝色
 */
declare let PLAYER_COLOR_LIGHT_BLUE: playercolor;
/**
 *  暗绿色
 */
declare let PLAYER_COLOR_AQUA: playercolor;
/**
 *  棕色
 */
declare let PLAYER_COLOR_BROWN: playercolor;
/**
 *  人族
 */
declare let RACE_HUMAN: race;
/**
 *  兽族
 */
declare let RACE_ORC: race;
/**
 *  不死族
 */
declare let RACE_UNDEAD: race;
/**
 *  暗夜精灵族
 */
declare let RACE_NIGHTELF: race;
/**
 *  恶魔
 */
declare let RACE_DEMON: race;
declare let RACE_OTHER: race;
/**
 *  胜利
 */
declare let PLAYER_GAME_RESULT_VICTORY: playergameresult;
/**
 *  失败
 */
declare let PLAYER_GAME_RESULT_DEFEAT: playergameresult;
/**
 *  平局
 */
declare let PLAYER_GAME_RESULT_TIE: playergameresult;
declare let PLAYER_GAME_RESULT_NEUTRAL: playergameresult;
/**
 *  结盟(不侵犯)
 */
declare let ALLIANCE_PASSIVE: alliancetype;
/**
 *  救援请求
 */
declare let ALLIANCE_HELP_REQUEST: alliancetype;
/**
 *  救援回应
 */
declare let ALLIANCE_HELP_RESPONSE: alliancetype;
/**
 *  共享经验
 */
declare let ALLIANCE_SHARED_XP: alliancetype;
/**
 *  盟友魔法锁定
 */
declare let ALLIANCE_SHARED_SPELLS: alliancetype;
/**
 *  共享视野
 */
declare let ALLIANCE_SHARED_VISION: alliancetype;
/**
 *  共享单位
 */
declare let ALLIANCE_SHARED_CONTROL: alliancetype;
/**
 *  共享完全控制权
 */
declare let ALLIANCE_SHARED_ADVANCED_CONTROL: alliancetype;
declare let ALLIANCE_RESCUABLE: alliancetype;
declare let ALLIANCE_SHARED_VISION_FORCED: alliancetype;
declare let VERSION_REIGN_OF_CHAOS: version;
declare let VERSION_FROZEN_THRONE: version;
/**
 *  普通 x 【法术】
 *  （//通法术 we里触发伤害目标 法术类型 转jass后为 ATTACK_TYPE_NORMAL 此类型受 平衡性常数 伤害奖励-法术 影响 )
 *  PS:jass传null时默认为此攻击类型
 */
declare let ATTACK_TYPE_NORMAL: attacktype;
/**
 *  近战 x 【普通】
 *  （//通普通 we里触发伤害目标 普通类型 转jass后为 ATTACK_TYPE_MELEE 此类型受 平衡性常数 伤害奖励-普通 影响 )
 */
declare let ATTACK_TYPE_MELEE: attacktype;
/**
 *  穿刺
 */
declare let ATTACK_TYPE_PIERCE: attacktype;
/**
 *  攻城
 */
declare let ATTACK_TYPE_SIEGE: attacktype;
/**
 *  魔法
 */
declare let ATTACK_TYPE_MAGIC: attacktype;
/**
 *  混乱
 *  默认对所有护甲类型造成100%伤害
 */
declare let ATTACK_TYPE_CHAOS: attacktype;
/**
 *  英雄
 */
declare let ATTACK_TYPE_HERO: attacktype;
/**
 *  未知
 */
declare let DAMAGE_TYPE_UNKNOWN: damagetype;
/**
 *  普通
 */
declare let DAMAGE_TYPE_NORMAL: damagetype;
/**
 *  强化
 */
declare let DAMAGE_TYPE_ENHANCED: damagetype;
/**
 *  火焰
 */
declare let DAMAGE_TYPE_FIRE: damagetype;
/**
 *  冰冻
 */
declare let DAMAGE_TYPE_COLD: damagetype;
/**
 *  闪电
 */
declare let DAMAGE_TYPE_LIGHTNING: damagetype;
/**
 *  毒药
 */
declare let DAMAGE_TYPE_POISON: damagetype;
/**
 *  疾病
 */
declare let DAMAGE_TYPE_DISEASE: damagetype;
/**
 *  神圣
 */
declare let DAMAGE_TYPE_DIVINE: damagetype;
/**
 *  魔法
 */
declare let DAMAGE_TYPE_MAGIC: damagetype;
/**
 *  音速
 */
declare let DAMAGE_TYPE_SONIC: damagetype;
/**
 *  酸性
 */
declare let DAMAGE_TYPE_ACID: damagetype;
/**
 *  力量
 */
declare let DAMAGE_TYPE_FORCE: damagetype;
/**
 *  死亡
 */
declare let DAMAGE_TYPE_DEATH: damagetype;
/**
 *  精神
 */
declare let DAMAGE_TYPE_MIND: damagetype;
/**
 *  植物
 */
declare let DAMAGE_TYPE_PLANT: damagetype;
/**
 *  防御
 */
declare let DAMAGE_TYPE_DEFENSIVE: damagetype;
/**
 *  破坏
 */
declare let DAMAGE_TYPE_DEMOLITION: damagetype;
/**
 *  慢性毒药
 */
declare let DAMAGE_TYPE_SLOW_POISON: damagetype;
/**
 *  灵魂锁链
 */
declare let DAMAGE_TYPE_SPIRIT_LINK: damagetype;
/**
 *  暗影突袭
 */
declare let DAMAGE_TYPE_SHADOW_STRIKE: damagetype;
/**
 *  通用
 */
declare let DAMAGE_TYPE_UNIVERSAL: damagetype;
/**
 *  无
 */
declare let WEAPON_TYPE_WHOKNOWS: weapontype;
/**
 *  金属轻砍
 */
declare let WEAPON_TYPE_METAL_LIGHT_CHOP: weapontype;
/**
 *  金属中砍
 */
declare let WEAPON_TYPE_METAL_MEDIUM_CHOP: weapontype;
/**
 *  金属重砍
 */
declare let WEAPON_TYPE_METAL_HEAVY_CHOP: weapontype;
/**
 *  金属轻切
 */
declare let WEAPON_TYPE_METAL_LIGHT_SLICE: weapontype;
/**
 *  金属中切
 */
declare let WEAPON_TYPE_METAL_MEDIUM_SLICE: weapontype;
/**
 *  金属重切
 */
declare let WEAPON_TYPE_METAL_HEAVY_SLICE: weapontype;
/**
 *  金属中击
 */
declare let WEAPON_TYPE_METAL_MEDIUM_BASH: weapontype;
/**
 *  金属重击
 */
declare let WEAPON_TYPE_METAL_HEAVY_BASH: weapontype;
declare let WEAPON_TYPE_METAL_MEDIUM_STAB: weapontype;
declare let WEAPON_TYPE_METAL_HEAVY_STAB: weapontype;
declare let WEAPON_TYPE_WOOD_LIGHT_SLICE: weapontype;
declare let WEAPON_TYPE_WOOD_MEDIUM_SLICE: weapontype;
declare let WEAPON_TYPE_WOOD_HEAVY_SLICE: weapontype;
/**
 *  木头轻击
 */
declare let WEAPON_TYPE_WOOD_LIGHT_BASH: weapontype;
/**
 *  木头中击
 */
declare let WEAPON_TYPE_WOOD_MEDIUM_BASH: weapontype;
/**
 *  木头重击
 */
declare let WEAPON_TYPE_WOOD_HEAVY_BASH: weapontype;
declare let WEAPON_TYPE_WOOD_LIGHT_STAB: weapontype;
declare let WEAPON_TYPE_WOOD_MEDIUM_STAB: weapontype;
declare let WEAPON_TYPE_CLAW_LIGHT_SLICE: weapontype;
declare let WEAPON_TYPE_CLAW_MEDIUM_SLICE: weapontype;
declare let WEAPON_TYPE_CLAW_HEAVY_SLICE: weapontype;
/**
 *  斧头中砍
 */
declare let WEAPON_TYPE_AXE_MEDIUM_CHOP: weapontype;
/**
 *  岩石重击
 */
declare let WEAPON_TYPE_ROCK_HEAVY_BASH: weapontype;
/**
 *  任意
 */
declare let PATHING_TYPE_ANY: pathingtype;
/**
 *  可通行地面
 */
declare let PATHING_TYPE_WALKABILITY: pathingtype;
/**
 *  空中单位可通行
 */
declare let PATHING_TYPE_FLYABILITY: pathingtype;
/**
 *  可建造地面
 */
declare let PATHING_TYPE_BUILDABILITY: pathingtype;
/**
 *  矿工采集可通行
 */
declare let PATHING_TYPE_PEONHARVESTPATHING: pathingtype;
/**
 *  荒芜地表
 */
declare let PATHING_TYPE_BLIGHTPATHING: pathingtype;
/**
 *  可通行海面
 */
declare let PATHING_TYPE_FLOATABILITY: pathingtype;
/**
 *  两栖单位可通行
 */
declare let PATHING_TYPE_AMPHIBIOUSPATHING: pathingtype;
/**
 *  人族
 */
declare let RACE_PREF_HUMAN: racepreference;
/**
 *  兽族
 */
declare let RACE_PREF_ORC: racepreference;
/**
 *  暗夜精灵族
 */
declare let RACE_PREF_NIGHTELF: racepreference;
/**
 *  不死族
 */
declare let RACE_PREF_UNDEAD: racepreference;
declare let RACE_PREF_DEMON: racepreference;
/**
 *  随机
 */
declare let RACE_PREF_RANDOM: racepreference;
declare let RACE_PREF_USER_SELECTABLE: racepreference;
/**
 *  用户
 */
declare let MAP_CONTROL_USER: mapcontrol;
/**
 *  电脑
 */
declare let MAP_CONTROL_COMPUTER: mapcontrol;
/**
 *  可营救
 */
declare let MAP_CONTROL_RESCUABLE: mapcontrol;
/**
 *  中立被动
 */
declare let MAP_CONTROL_NEUTRAL: mapcontrol;
/**
 *  中立敌对
 */
declare let MAP_CONTROL_CREEP: mapcontrol;
/**
 *  没有
 */
declare let MAP_CONTROL_NONE: mapcontrol;
declare let GAME_TYPE_MELEE: gametype;
declare let GAME_TYPE_FFA: gametype;
declare let GAME_TYPE_USE_MAP_SETTINGS: gametype;
declare let GAME_TYPE_BLIZ: gametype;
declare let GAME_TYPE_ONE_ON_ONE: gametype;
declare let GAME_TYPE_TWO_TEAM_PLAY: gametype;
declare let GAME_TYPE_THREE_TEAM_PLAY: gametype;
declare let GAME_TYPE_FOUR_TEAM_PLAY: gametype;
/**
 *  可见度 - 隐藏地形
 */
declare let MAP_FOG_HIDE_TERRAIN: mapflag;
/**
 *  可见度 - 可见地形
 */
declare let MAP_FOG_MAP_EXPLORED: mapflag;
/**
 *  可见度 - 总是可见
 */
declare let MAP_FOG_ALWAYS_VISIBLE: mapflag;
/**
 *  生命障碍
 */
declare let MAP_USE_HANDICAPS: mapflag;
/**
 *  允许观看者
 */
declare let MAP_OBSERVERS: mapflag;
/**
 *  失败时作为观看者
 */
declare let MAP_OBSERVERS_ON_DEATH: mapflag;
declare let MAP_FIXED_COLORS: mapflag;
/**
 *  锁定资源交易
 */
declare let MAP_LOCK_RESOURCE_TRADING: mapflag;
/**
 *  限制盟友资源交易
 */
declare let MAP_RESOURCE_TRADING_ALLIES_ONLY: mapflag;
/**
 *  锁定联盟设置
 */
declare let MAP_LOCK_ALLIANCE_CHANGES: mapflag;
/**
 *  隐藏联盟设置
 */
declare let MAP_ALLIANCE_CHANGES_HIDDEN: mapflag;
declare let MAP_CHEATS: mapflag;
declare let MAP_CHEATS_HIDDEN: mapflag;
declare let MAP_LOCK_SPEED: mapflag;
declare let MAP_LOCK_RANDOM_SEED: mapflag;
declare let MAP_SHARED_ADVANCED_CONTROL: mapflag;
/**
 *  使用随机英雄
 */
declare let MAP_RANDOM_HERO: mapflag;
/**
 *  使用随机种族
 */
declare let MAP_RANDOM_RACES: mapflag;
/**
 *  地图转换
 */
declare let MAP_RELOADED: mapflag;
declare let MAP_PLACEMENT_RANDOM: placement;
declare let MAP_PLACEMENT_FIXED: placement;
declare let MAP_PLACEMENT_USE_MAP_SETTINGS: placement;
declare let MAP_PLACEMENT_TEAMS_TOGETHER: placement;
declare let MAP_LOC_PRIO_LOW: startlocprio;
declare let MAP_LOC_PRIO_HIGH: startlocprio;
declare let MAP_LOC_PRIO_NOT: startlocprio;
/**
 *  无
 */
declare let MAP_DENSITY_NONE: mapdensity;
/**
 *  轻
 */
declare let MAP_DENSITY_LIGHT: mapdensity;
/**
 *  中
 */
declare let MAP_DENSITY_MEDIUM: mapdensity;
/**
 *  重
 */
declare let MAP_DENSITY_HEAVY: mapdensity;
/**
 *  简单
 */
declare let MAP_DIFFICULTY_EASY: gamedifficulty;
/**
 *  普通
 */
declare let MAP_DIFFICULTY_NORMAL: gamedifficulty;
/**
 *  困难
 */
declare let MAP_DIFFICULTY_HARD: gamedifficulty;
declare let MAP_DIFFICULTY_INSANE: gamedifficulty;
/**
 *  最慢速
 */
declare let MAP_SPEED_SLOWEST: gamespeed;
/**
 *  慢速
 */
declare let MAP_SPEED_SLOW: gamespeed;
/**
 *  普通
 */
declare let MAP_SPEED_NORMAL: gamespeed;
/**
 *  快速
 */
declare let MAP_SPEED_FAST: gamespeed;
/**
 *  最快速
 */
declare let MAP_SPEED_FASTEST: gamespeed;
/**
 *  没有使用
 */
declare let PLAYER_SLOT_STATE_EMPTY: playerslotstate;
/**
 *  正在游戏
 */
declare let PLAYER_SLOT_STATE_PLAYING: playerslotstate;
/**
 *  已离开游戏
 */
declare let PLAYER_SLOT_STATE_LEFT: playerslotstate;
/**
 *  单位移动音效
 */
declare let SOUND_VOLUMEGROUP_UNITMOVEMENT: volumegroup;
/**
 *  单位回应音效
 */
declare let SOUND_VOLUMEGROUP_UNITSOUNDS: volumegroup;
/**
 *  战斗音效
 */
declare let SOUND_VOLUMEGROUP_COMBAT: volumegroup;
/**
 *  动画和技能音效
 */
declare let SOUND_VOLUMEGROUP_SPELLS: volumegroup;
/**
 *  用户界面音效
 */
declare let SOUND_VOLUMEGROUP_UI: volumegroup;
/**
 *  音乐
 */
declare let SOUND_VOLUMEGROUP_MUSIC: volumegroup;
/**
 *  环境音效
 */
declare let SOUND_VOLUMEGROUP_AMBIENTSOUNDS: volumegroup;
/**
 *  火焰音效
 */
declare let SOUND_VOLUMEGROUP_FIRE: volumegroup;
declare let GAME_STATE_DIVINE_INTERVENTION: igamestate;
declare let GAME_STATE_DISCONNECTED: igamestate;
declare let GAME_STATE_TIME_OF_DAY: fgamestate;
/**
 *  游戏得分
 */
declare let PLAYER_STATE_GAME_RESULT: playerstate;
/**
 *  现有黄金
 */
declare let PLAYER_STATE_RESOURCE_GOLD: playerstate;
/**
 *  现有木材
 */
declare let PLAYER_STATE_RESOURCE_LUMBER: playerstate;
/**
 *  剩余可用英雄
 */
declare let PLAYER_STATE_RESOURCE_HERO_TOKENS: playerstate;
/**
 *  可用人口数
 */
declare let PLAYER_STATE_RESOURCE_FOOD_CAP: playerstate;
/**
 *  已使用人口数
 */
declare let PLAYER_STATE_RESOURCE_FOOD_USED: playerstate;
/**
 *  最大人口上限
 */
declare let PLAYER_STATE_FOOD_CAP_CEILING: playerstate;
/**
 *  给予奖励
 */
declare let PLAYER_STATE_GIVES_BOUNTY: playerstate;
/**
 *  联盟胜利
 */
declare let PLAYER_STATE_ALLIED_VICTORY: playerstate;
declare let PLAYER_STATE_PLACED: playerstate;
declare let PLAYER_STATE_OBSERVER_ON_DEATH: playerstate;
declare let PLAYER_STATE_OBSERVER: playerstate;
/**
 *  不可跟随
 */
declare let PLAYER_STATE_UNFOLLOWABLE: playerstate;
/**
 *  金钱维修费率
 */
declare let PLAYER_STATE_GOLD_UPKEEP_RATE: playerstate;
/**
 *  木材维修费率
 */
declare let PLAYER_STATE_LUMBER_UPKEEP_RATE: playerstate;
/**
 *  总黄金采集量
 */
declare let PLAYER_STATE_GOLD_GATHERED: playerstate;
/**
 *  总木材采集量
 */
declare let PLAYER_STATE_LUMBER_GATHERED: playerstate;
declare let PLAYER_STATE_NO_CREEP_SLEEP: playerstate;
/**
 *  生命值
 */
declare let UNIT_STATE_LIFE: unitstate;
/**
 *  最大生命值
 */
declare let UNIT_STATE_MAX_LIFE: unitstate;
/**
 *  魔法值
 */
declare let UNIT_STATE_MANA: unitstate;
/**
 *  最大魔法值
 */
declare let UNIT_STATE_MAX_MANA: unitstate;
/**
 *  简单AI
 */
declare let AI_DIFFICULTY_NEWBIE: aidifficulty;
/**
 *  普通AI
 */
declare let AI_DIFFICULTY_NORMAL: aidifficulty;
/**
 *  疯狂AI
 */
declare let AI_DIFFICULTY_INSANE: aidifficulty;
/**
 *  训练单位数量
 */
declare let PLAYER_SCORE_UNITS_TRAINED: playerscore;
/**
 *  杀死单位数量
 */
declare let PLAYER_SCORE_UNITS_KILLED: playerscore;
/**
 *  建造建筑数量
 */
declare let PLAYER_SCORE_STRUCT_BUILT: playerscore;
/**
 *  摧毁建筑数量
 */
declare let PLAYER_SCORE_STRUCT_RAZED: playerscore;
/**
 *  科技百分比
 */
declare let PLAYER_SCORE_TECH_PERCENT: playerscore;
/**
 *  最大可用人口数
 */
declare let PLAYER_SCORE_FOOD_MAXPROD: playerscore;
/**
 *  最大使用人口数
 */
declare let PLAYER_SCORE_FOOD_MAXUSED: playerscore;
/**
 *  杀死英雄次数
 */
declare let PLAYER_SCORE_HEROES_KILLED: playerscore;
/**
 *  获得物品数量
 */
declare let PLAYER_SCORE_ITEMS_GAINED: playerscore;
/**
 *  雇佣单位数量
 */
declare let PLAYER_SCORE_MERCS_HIRED: playerscore;
/**
 *  总黄金采集量
 */
declare let PLAYER_SCORE_GOLD_MINED_TOTAL: playerscore;
/**
 *  实际黄金采集量(带有维修费)
 */
declare let PLAYER_SCORE_GOLD_MINED_UPKEEP: playerscore;
/**
 *  维修费损失的黄金数量
 */
declare let PLAYER_SCORE_GOLD_LOST_UPKEEP: playerscore;
/**
 *  所得税损失的黄金数量
 */
declare let PLAYER_SCORE_GOLD_LOST_TAX: playerscore;
/**
 *  给予盟友的黄金数量
 */
declare let PLAYER_SCORE_GOLD_GIVEN: playerscore;
/**
 *  从盟友那里收到的黄金数量
 */
declare let PLAYER_SCORE_GOLD_RECEIVED: playerscore;
/**
 *  总木材采集量
 */
declare let PLAYER_SCORE_LUMBER_TOTAL: playerscore;
/**
 *  维修费损失的木材数量
 */
declare let PLAYER_SCORE_LUMBER_LOST_UPKEEP: playerscore;
/**
 *  所得税损失的木材数量
 */
declare let PLAYER_SCORE_LUMBER_LOST_TAX: playerscore;
/**
 *  给予盟友的木材数量
 */
declare let PLAYER_SCORE_LUMBER_GIVEN: playerscore;
/**
 *  从盟友那里收到的木材数量
 */
declare let PLAYER_SCORE_LUMBER_RECEIVED: playerscore;
/**
 *  总单位得分
 */
declare let PLAYER_SCORE_UNIT_TOTAL: playerscore;
/**
 *  总英雄得分
 */
declare let PLAYER_SCORE_HERO_TOTAL: playerscore;
/**
 *  总资源得分
 */
declare let PLAYER_SCORE_RESOURCE_TOTAL: playerscore;
/**
 *  整体得分
 */
declare let PLAYER_SCORE_TOTAL: playerscore;
/**
 *  (000)游戏事件 - 游戏胜利
 */
declare let EVENT_GAME_VICTORY: gameevent;
/**
 *  (001)游戏事件 - 游戏结束
 */
declare let EVENT_GAME_END_LEVEL: gameevent;
/**
 *  (002)游戏事件 - 变量改变
 */
declare let EVENT_GAME_VARIABLE_LIMIT: gameevent;
/**
 *  (003)游戏事件 - 状态改变
 */
declare let EVENT_GAME_STATE_LIMIT: gameevent;
/**
 *  (004)游戏事件 - 计时器到期
 */
declare let EVENT_GAME_TIMER_EXPIRED: gameevent;
/**
 *  (005)游戏事件 - 进入区域
 */
declare let EVENT_GAME_ENTER_REGION: gameevent;
/**
 *  (006)游戏事件 - 离开区域
 */
declare let EVENT_GAME_LEAVE_REGION: gameevent;
/**
 *  (007)游戏事件 - 鼠标点击可追踪物
 */
declare let EVENT_GAME_TRACKABLE_HIT: gameevent;
/**
 *  (008)游戏事件 - 鼠标移动到可追踪物
 */
declare let EVENT_GAME_TRACKABLE_TRACK: gameevent;
/**
 *  (009)游戏事件 - 英雄技能按钮被点击
 */
declare let EVENT_GAME_SHOW_SKILL: gameevent;
declare let EVENT_GAME_BUILD_SUBMENU: gameevent;
/**
 *  (011)玩家事件 - 属性变化
 */
declare let EVENT_PLAYER_STATE_LIMIT: playerevent;
/**
 *  (012)玩家事件 - 联盟状态变化
 */
declare let EVENT_PLAYER_ALLIANCE_CHANGED: playerevent;
/**
 *  (013)玩家事件 - 游戏失败
 */
declare let EVENT_PLAYER_DEFEAT: playerevent;
/**
 *  (014)玩家事件 - 游戏胜利
 */
declare let EVENT_PLAYER_VICTORY: playerevent;
/**
 *  (015)玩家事件 - 离开游戏
 */
declare let EVENT_PLAYER_LEAVE: playerevent;
/**
 *  (016)玩家事件 - (废弃的事件)
 */
declare let EVENT_PLAYER_CHAT: playerevent;
/**
 *  (017)玩家事件 - 按下Esc键
 */
declare let EVENT_PLAYER_END_CINEMATIC: playerevent;
/**
 *  (018)玩家单位事件 - 被攻击
 */
declare let EVENT_PLAYER_UNIT_ATTACKED: playerunitevent;
/**
 *  (019)玩家单位事件 - 被营救
 */
declare let EVENT_PLAYER_UNIT_RESCUED: playerunitevent;
//任意单位死亡事件
/**
 *  (020)玩家单位事件 - 死亡
 */
declare let EVENT_PLAYER_UNIT_DEATH: playerunitevent;
/**
 *  (021)玩家单位事件 - 开始腐化
 */
declare let EVENT_PLAYER_UNIT_DECAY: playerunitevent;
/**
 *  (022)玩家单位事件 - 被侦测到
 */
declare let EVENT_PLAYER_UNIT_DETECTED: playerunitevent;
/**
 *  (023)玩家单位事件 - 被隐藏
 */
declare let EVENT_PLAYER_UNIT_HIDDEN: playerunitevent;
/**
 *  (024)玩家单位事件 - 被选择
 */
declare let EVENT_PLAYER_UNIT_SELECTED: playerunitevent;
/**
 *  (025)玩家单位事件 - 被取消选择
 */
declare let EVENT_PLAYER_UNIT_DESELECTED: playerunitevent;
/**
 *  (026)玩家单位事件 - 开始被建造
 */
declare let EVENT_PLAYER_UNIT_CONSTRUCT_START: playerunitevent;
/**
 *  (027)玩家单位事件 - 被取消建造
 */
declare let EVENT_PLAYER_UNIT_CONSTRUCT_CANCEL: playerunitevent;
/**
 *  (028)玩家单位事件 - 完成建造
 */
declare let EVENT_PLAYER_UNIT_CONSTRUCT_FINISH: playerunitevent;
/**
 *  (029)玩家单位事件 - 开始建筑升级
 */
declare let EVENT_PLAYER_UNIT_UPGRADE_START: playerunitevent;
/**
 *  (030)玩家单位事件 - 取消建筑升级
 */
declare let EVENT_PLAYER_UNIT_UPGRADE_CANCEL: playerunitevent;
/**
 *  (031)玩家单位事件 - 完成建筑升级
 */
declare let EVENT_PLAYER_UNIT_UPGRADE_FINISH: playerunitevent;
/**
 *  (032)玩家单位事件 - 开始训练单位
 */
declare let EVENT_PLAYER_UNIT_TRAIN_START: playerunitevent;
/**
 *  (033)玩家单位事件 - 取消训练单位
 */
declare let EVENT_PLAYER_UNIT_TRAIN_CANCEL: playerunitevent;
/**
 *  (034)玩家单位事件 - 完成训练单位
 */
declare let EVENT_PLAYER_UNIT_TRAIN_FINISH: playerunitevent;
/**
 *  (035)玩家单位事件 - 开始研究科技
 */
declare let EVENT_PLAYER_UNIT_RESEARCH_START: playerunitevent;
/**
 *  (036)玩家单位事件 - 取消研究科技
 */
declare let EVENT_PLAYER_UNIT_RESEARCH_CANCEL: playerunitevent;
/**
 *  (037)玩家单位事件 - 完成研究科技
 */
declare let EVENT_PLAYER_UNIT_RESEARCH_FINISH: playerunitevent;
/**
 *  (038)玩家单位事件 - 发布无目标指令
 */
declare let EVENT_PLAYER_UNIT_ISSUED_ORDER: playerunitevent;
/**
 *  (039)玩家单位事件 - 发布指定点目标指令
 */
declare let EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER: playerunitevent;
/**
 *  (040)玩家单位事件 - 发布指定物体目标指令
 *  UnitDropItemSlot 也会触发调用这个
 */
declare let EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER: playerunitevent;
declare let EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER: playerunitevent;
/**
 *  (041)玩家单位事件 - 提升等级
 */
declare let EVENT_PLAYER_HERO_LEVEL: playerunitevent;
/**
 *  (042)玩家单位事件 - 学习技能
 */
declare let EVENT_PLAYER_HERO_SKILL: playerunitevent;
/**
 *  (043)玩家单位事件 - 变得可重生
 */
declare let EVENT_PLAYER_HERO_REVIVABLE: playerunitevent;
/**
 *  (044)玩家单位事件 - 开始复活英雄
 */
declare let EVENT_PLAYER_HERO_REVIVE_START: playerunitevent;
/**
 *  (045)玩家单位事件 - 取消复活英雄
 */
declare let EVENT_PLAYER_HERO_REVIVE_CANCEL: playerunitevent;
/**
 *  (046)玩家单位事件 - 完成复活英雄
 */
declare let EVENT_PLAYER_HERO_REVIVE_FINISH: playerunitevent;
/**
 *  (047)玩家单位事件 - 被召唤
 */
declare let EVENT_PLAYER_UNIT_SUMMON: playerunitevent;
/**
 *  (048)玩家单位事件 - 丢弃物品
 */
declare let EVENT_PLAYER_UNIT_DROP_ITEM: playerunitevent;
/**
 *  (049)玩家单位事件 - 获得物品
 */
declare let EVENT_PLAYER_UNIT_PICKUP_ITEM: playerunitevent;
/**
 *  (050)玩家单位事件 - 使用物品
 */
declare let EVENT_PLAYER_UNIT_USE_ITEM: playerunitevent;
/**
 *  (051)玩家单位事件 - 被运输机装载
 */
declare let EVENT_PLAYER_UNIT_LOADED: playerunitevent;
/**
 *  (052)单位事件 - 接受伤害
 */
declare let EVENT_UNIT_DAMAGED: unitevent;
/**
 *  (053)单位事件 - 死亡
 */
declare let EVENT_UNIT_DEATH: unitevent;
/**
 *  (054)单位事件 - 开始腐化
 */
declare let EVENT_UNIT_DECAY: unitevent;
/**
 *  (055)单位事件 - 被侦测到
 */
declare let EVENT_UNIT_DETECTED: unitevent;
/**
 *  (056)单位事件 - 被隐藏
 */
declare let EVENT_UNIT_HIDDEN: unitevent;
/**
 *  (057)单位事件 - 被选择
 */
declare let EVENT_UNIT_SELECTED: unitevent;
/**
 *  (058)单位事件 - 被取消选择
 */
declare let EVENT_UNIT_DESELECTED: unitevent;
/**
 *  (059)单位事件 - 生命值/魔法值发生变化
 */
declare let EVENT_UNIT_STATE_LIMIT: unitevent;
/**
 *  (060)单位事件 - 注意到攻击目标
 */
declare let EVENT_UNIT_ACQUIRED_TARGET: unitevent;
/**
 *  (061)单位事件 - 获取攻击目标
 */
declare let EVENT_UNIT_TARGET_IN_RANGE: unitevent;
/**
 *  (062)单位事件 - 被攻击
 */
declare let EVENT_UNIT_ATTACKED: unitevent;
/**
 *  (063)单位事件 - 被营救
 */
declare let EVENT_UNIT_RESCUED: unitevent;
/**
 *  (064)单位事件 - 被取消建造
 */
declare let EVENT_UNIT_CONSTRUCT_CANCEL: unitevent;
/**
 *  (065)单位事件 - 完成建造
 */
declare let EVENT_UNIT_CONSTRUCT_FINISH: unitevent;
/**
 *  (066)单位事件 - 开始建筑升级
 */
declare let EVENT_UNIT_UPGRADE_START: unitevent;
/**
 *  (067)单位事件 - 取消建筑升级
 */
declare let EVENT_UNIT_UPGRADE_CANCEL: unitevent;
/**
 *  (068)单位事件 - 完成建筑升级
 */
declare let EVENT_UNIT_UPGRADE_FINISH: unitevent;
/**
 *  (069)单位事件 - 开始训练单位
 */
declare let EVENT_UNIT_TRAIN_START: unitevent;
/**
 *  (070)单位事件 - 取消训练单位
 */
declare let EVENT_UNIT_TRAIN_CANCEL: unitevent;
/**
 *  (071)单位事件 - 完成训练单位
 */
declare let EVENT_UNIT_TRAIN_FINISH: unitevent;
/**
 *  (072)单位事件 - 开始研究科技
 */
declare let EVENT_UNIT_RESEARCH_START: unitevent;
/**
 *  (073)单位事件 - 取消研究科技
 */
declare let EVENT_UNIT_RESEARCH_CANCEL: unitevent;
/**
 *  (074)单位事件 - 完成研究科技
 */
declare let EVENT_UNIT_RESEARCH_FINISH: unitevent;
/**
 *  (075)单位事件 - 发布无目标指令
 */
declare let EVENT_UNIT_ISSUED_ORDER: unitevent;
/**
 *  (076)单位事件 - 发布指定点目标指令
 */
declare let EVENT_UNIT_ISSUED_POINT_ORDER: unitevent;
/**
 *  (077)单位事件 - 发布指定物体目标指令
 */
declare let EVENT_UNIT_ISSUED_TARGET_ORDER: unitevent;
/**
 *  (078)单位事件 - 提升等级
 */
declare let EVENT_UNIT_HERO_LEVEL: unitevent;
/**
 *  (079)单位事件 - 学习技能
 */
declare let EVENT_UNIT_HERO_SKILL: unitevent;
/**
 *  (080)单位事件 - 变得可重生
 */
declare let EVENT_UNIT_HERO_REVIVABLE: unitevent;
/**
 *  (081)单位事件 - 开始复活英雄
 */
declare let EVENT_UNIT_HERO_REVIVE_START: unitevent;
/**
 *  (082)单位事件 - 取消复活英雄
 */
declare let EVENT_UNIT_HERO_REVIVE_CANCEL: unitevent;
/**
 *  (083)单位事件 - 完成复活英雄
 */
declare let EVENT_UNIT_HERO_REVIVE_FINISH: unitevent;
/**
 *  召唤一个单位
 */
declare let EVENT_UNIT_SUMMON: unitevent;
/**
 *  (085)单位事件 - 丢弃物品
 */
declare let EVENT_UNIT_DROP_ITEM: unitevent;
/**
 *  (086)单位事件 - 获得物品
 */
declare let EVENT_UNIT_PICKUP_ITEM: unitevent;
/**
 *  (087)单位事件 - 使用物品
 */
declare let EVENT_UNIT_USE_ITEM: unitevent;
/**
 *  (088)单位事件 - 被运输机装载
 */
declare let EVENT_UNIT_LOADED: unitevent;
/**
 *  (089)widget事件 - 死亡
 */
declare let EVENT_WIDGET_DEATH: widgetevent;
/**
 *  (090)对话框事件 - 对话框按钮被点击
 */
declare let EVENT_DIALOG_BUTTON_CLICK: dialogevent;
/**
 *  (091)对话框事件 - 对话框被点击
 */
declare let EVENT_DIALOG_CLICK: dialogevent;
/**
 *  (256)游戏事件 - 游戏读档
 */
declare let EVENT_GAME_LOADED: gameevent;
/**
 *  (257)游戏事件 - 游戏将在现在结束
 */
declare let EVENT_GAME_TOURNAMENT_FINISH_SOON: gameevent;
/**
 *  (258)游戏事件 - 游戏将在不久结束
 */
declare let EVENT_GAME_TOURNAMENT_FINISH_NOW: gameevent;
/**
 *  (259)游戏事件 - 游戏存档
 */
declare let EVENT_GAME_SAVE: gameevent;
/**
 *  (261)玩家键盘事件 - 按下Left键
 */
declare let EVENT_PLAYER_ARROW_LEFT_DOWN: playerevent;
/**
 *  (262)玩家键盘事件 - 松开Left键
 */
declare let EVENT_PLAYER_ARROW_LEFT_UP: playerevent;
/**
 *  (263)玩家键盘事件 - 按下Right键
 */
declare let EVENT_PLAYER_ARROW_RIGHT_DOWN: playerevent;
/**
 *  (264)玩家键盘事件 - 松开Right键
 */
declare let EVENT_PLAYER_ARROW_RIGHT_UP: playerevent;
/**
 *  (265)玩家键盘事件 - 按下Down键
 */
declare let EVENT_PLAYER_ARROW_DOWN_DOWN: playerevent;
/**
 *  (266)玩家键盘事件 - 松开Down键
 */
declare let EVENT_PLAYER_ARROW_DOWN_UP: playerevent;
/**
 *  (267)玩家键盘事件 - 按下Up键
 */
declare let EVENT_PLAYER_ARROW_UP_DOWN: playerevent;
/**
 *  (268)玩家键盘事件 - 松开Up键
 */
declare let EVENT_PLAYER_ARROW_UP_UP: playerevent;
/**
 *  (269)玩家单位事件 - 出售单位
 */
declare let EVENT_PLAYER_UNIT_SELL: playerunitevent;
/**
 *  (270)玩家单位事件 - 改变所有者
 */
declare let EVENT_PLAYER_UNIT_CHANGE_OWNER: playerunitevent;
/**
 *  (271)玩家单位事件 - 出售物品
 */
declare let EVENT_PLAYER_UNIT_SELL_ITEM: playerunitevent;
/**
 *  (272)玩家单位事件 - 准备施放技能
 */
declare let EVENT_PLAYER_UNIT_SPELL_CHANNEL: playerunitevent;
/**
 *  (273)玩家单位事件 - 开始施放技能
 */
declare let EVENT_PLAYER_UNIT_SPELL_CAST: playerunitevent;
/**
 *  (273)玩家单位事件 - 发动技能效果
 */
declare let EVENT_PLAYER_UNIT_SPELL_EFFECT: playerunitevent;
/**
 *  (275)玩家单位事件 - 施放技能结束
 */
declare let EVENT_PLAYER_UNIT_SPELL_FINISH: playerunitevent;
/**
 *  (276)玩家单位事件 - 停止施放技能
 */
declare let EVENT_PLAYER_UNIT_SPELL_ENDCAST: playerunitevent;
/**
 *  (277)玩家单位事件 - 抵押物品
 */
declare let EVENT_PLAYER_UNIT_PAWN_ITEM: playerunitevent;
/**
 *  (286)单位事件 - 出售单位
 */
declare let EVENT_UNIT_SELL: unitevent;
/**
 *  (287)单位事件 - 改变所有者
 */
declare let EVENT_UNIT_CHANGE_OWNER: unitevent;
/**
 *  出售物品
 */
declare let EVENT_UNIT_SELL_ITEM: unitevent;
/**
 *  (289)单位事件 - 准备施放技能
 */
declare let EVENT_UNIT_SPELL_CHANNEL: unitevent;
/**
 *  (290)单位事件 - 开始施放技能
 */
declare let EVENT_UNIT_SPELL_CAST: unitevent;
/**
 *  (291)单位事件 - 发动技能效果
 */
declare let EVENT_UNIT_SPELL_EFFECT: unitevent;
/**
 *  (292)单位事件 - 施放技能结束
 */
declare let EVENT_UNIT_SPELL_FINISH: unitevent;
/**
 *  (293)单位事件 - 停止施放技能
 */
declare let EVENT_UNIT_SPELL_ENDCAST: unitevent;
/**
 *  (294)单位事件 - 抵押物品
 */
declare let EVENT_UNIT_PAWN_ITEM: unitevent;
/**
 *  小于
 */
declare let LESS_THAN: limitop;
/**
 *  小于或等于
 */
declare let LESS_THAN_OR_EQUAL: limitop;
/**
 *  等于
 */
declare let EQUAL: limitop;
/**
 *  大于或等于
 */
declare let GREATER_THAN_OR_EQUAL: limitop;
/**
 *  大于
 */
declare let GREATER_THAN: limitop;
/**
 *  不等于
 */
declare let NOT_EQUAL: limitop;
/**
 *  英雄
 */
declare let UNIT_TYPE_HERO: unittype;
/**
 *  死亡的
 */
declare let UNIT_TYPE_DEAD: unittype;
/**
 *  建筑
 */
declare let UNIT_TYPE_STRUCTURE: unittype;
/**
 *  飞行单位
 */
declare let UNIT_TYPE_FLYING: unittype;
/**
 *  地面单位
 */
declare let UNIT_TYPE_GROUND: unittype;
/**
 *  可攻击飞行物的单位
 */
declare let UNIT_TYPE_ATTACKS_FLYING: unittype;
/**
 *  可攻击地面的单位
 */
declare let UNIT_TYPE_ATTACKS_GROUND: unittype;
/**
 *  近战单位
 */
declare let UNIT_TYPE_MELEE_ATTACKER: unittype;
/**
 *  远程单位
 */
declare let UNIT_TYPE_RANGED_ATTACKER: unittype;
/**
 *  泰坦族
 */
declare let UNIT_TYPE_GIANT: unittype;
/**
 *  召唤单位
 */
declare let UNIT_TYPE_SUMMONED: unittype;
/**
 *  被枷锁的
 */
declare let UNIT_TYPE_STUNNED: unittype;
/**
 *  附带瘟疫的
 */
declare let UNIT_TYPE_PLAGUED: unittype;
/**
 *  被束缚的
 */
declare let UNIT_TYPE_SNARED: unittype;
/**
 *  不死族
 */
declare let UNIT_TYPE_UNDEAD: unittype;
/**
 *  机械
 */
declare let UNIT_TYPE_MECHANICAL: unittype;
/**
 *  工人
 */
declare let UNIT_TYPE_PEON: unittype;
/**
 *  自爆工兵
 */
declare let UNIT_TYPE_SAPPER: unittype;
/**
 *  城镇大厅
 */
declare let UNIT_TYPE_TOWNHALL: unittype;
/**
 *  古树
 */
declare let UNIT_TYPE_ANCIENT: unittype;
/**
 *  牛头人
 */
declare let UNIT_TYPE_TAUREN: unittype;
/**
 *  中毒的
 */
declare let UNIT_TYPE_POISONED: unittype;
/**
 *  被变形的
 */
declare let UNIT_TYPE_POLYMORPHED: unittype;
/**
 *  被催眠的
 */
declare let UNIT_TYPE_SLEEPING: unittype;
/**
 *  有抗性皮肤
 */
declare let UNIT_TYPE_RESISTANT: unittype;
/**
 *  处于虚无状态
 */
declare let UNIT_TYPE_ETHEREAL: unittype;
/**
 *  魔法免疫
 */
declare let UNIT_TYPE_MAGIC_IMMUNE: unittype;
/**
 *  永久
 */
declare let ITEM_TYPE_PERMANENT: itemtype;
/**
 *  可充
 */
declare let ITEM_TYPE_CHARGED: itemtype;
/**
 *  能量提升
 */
declare let ITEM_TYPE_POWERUP: itemtype;
/**
 *  人造
 */
declare let ITEM_TYPE_ARTIFACT: itemtype;
/**
 *  可购买
 */
declare let ITEM_TYPE_PURCHASABLE: itemtype;
/**
 *  战役
 */
declare let ITEM_TYPE_CAMPAIGN: itemtype;
/**
 *  混杂
 */
declare let ITEM_TYPE_MISCELLANEOUS: itemtype;
/**
 *  未知
 */
declare let ITEM_TYPE_UNKNOWN: itemtype;
/**
 *  任何
 */
declare let ITEM_TYPE_ANY: itemtype;
declare let ITEM_TYPE_TOME: itemtype;
/**
 *  镜头距离(距离到目标)
 */
declare let CAMERA_FIELD_TARGET_DISTANCE: camerafield;
/**
 *  远景截断距离(远景剪裁)
 */
declare let CAMERA_FIELD_FARZ: camerafield;
/**
 *  X轴旋转角度(水平角度)
 */
declare let CAMERA_FIELD_ANGLE_OF_ATTACK: camerafield;
/**
 *  镜头区域(观察区域)
 */
declare let CAMERA_FIELD_FIELD_OF_VIEW: camerafield;
/**
 *  Y轴旋转角度(滚动)
 */
declare let CAMERA_FIELD_ROLL: camerafield;
/**
 *  Z轴旋转角度(旋转)
 */
declare let CAMERA_FIELD_ROTATION: camerafield;
/**
 *  Z轴偏移(高度位移)
 */
declare let CAMERA_FIELD_ZOFFSET: camerafield;
/**
 *  无混合物
 */
declare let BLEND_MODE_NONE: blendmode;
declare let BLEND_MODE_DONT_CARE: blendmode;
/**
 *  关键的Alpha混合物
 */
declare let BLEND_MODE_KEYALPHA: blendmode;
/**
 *  普通混合物
 */
declare let BLEND_MODE_BLEND: blendmode;
/**
 *  附加的混合物
 */
declare let BLEND_MODE_ADDITIVE: blendmode;
/**
 *  调整的混合物
 */
declare let BLEND_MODE_MODULATE: blendmode;
/**
 *  调整的2倍混合物
 */
declare let BLEND_MODE_MODULATE_2X: blendmode;
/**
 *  普通的
 */
declare let RARITY_FREQUENT: raritycontrol;
declare let RARITY_RARE: raritycontrol;
declare let TEXMAP_FLAG_NONE: texmapflags;
declare let TEXMAP_FLAG_WRAP_U: texmapflags;
declare let TEXMAP_FLAG_WRAP_V: texmapflags;
declare let TEXMAP_FLAG_WRAP_UV: texmapflags;
/**
 *  黑色迷雾
 */
declare let FOG_OF_WAR_MASKED: fogstate;
/**
 *  战争迷雾
 */
declare let FOG_OF_WAR_FOGGED: fogstate;
/**
 *  可见
 */
declare let FOG_OF_WAR_VISIBLE: fogstate;
declare let CAMERA_MARGIN_LEFT: number;
declare let CAMERA_MARGIN_RIGHT: number;
declare let CAMERA_MARGIN_TOP: number;
declare let CAMERA_MARGIN_BOTTOM: number;
/**
 *  点目标效果
 */
declare let EFFECT_TYPE_EFFECT: effecttype;
/**
 *  目标效果
 */
declare let EFFECT_TYPE_TARGET: effecttype;
/**
 *  施法者效果
 */
declare let EFFECT_TYPE_CASTER: effecttype;
/**
 *  特殊效果
 */
declare let EFFECT_TYPE_SPECIAL: effecttype;
/**
 *  区域效果
 */
declare let EFFECT_TYPE_AREA_EFFECT: effecttype;
/**
 *  投射物效果
 */
declare let EFFECT_TYPE_MISSILE: effecttype;
/**
 *  闪电效果
 */
declare let EFFECT_TYPE_LIGHTNING: effecttype;
/**
 *  音效
 */
declare let SOUND_TYPE_EFFECT: soundtype;
/**
 *  循环音效
 */
declare let SOUND_TYPE_EFFECT_LOOPED: soundtype;