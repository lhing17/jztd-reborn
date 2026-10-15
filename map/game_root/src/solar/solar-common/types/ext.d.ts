/** @noSelfInFile **/

/**
 * made by solar
 */
/**
 * 显示Debug消息[C]
 * 显示Debug消息 [C]
 * 显示Debug信息: ${文字}
 * 对玩家发送持续60秒的信息. 一般用于地图调试.
 * @params  StringExt
 */
declare function BJDebugMsg(msg: string): void;

/**
 * 最小值
 * 取较小值
 * 取(${实数1}, ${实数2})中较小值
 * @params  real real
 * @return real
 */
declare function RMinBJ(a: number, b: number): number;

/**
 * 最大值
 * 取较大值
 * 取(${实数1}, ${实数2})中较大值
 * @params  real real
 * @return real
 */
declare function RMaxBJ(a: number, b: number): number;

/**
 * 绝对值Abs
 * ${实数} 的绝对值
 * @params  real
 * @return real
 */
declare function RAbsBJ(a: number): number;

/**
 * 标记
 * 符号标志
 * ${实数} 的符号标志
 * 负数为-1. 非负数为1.
 * @params  real
 * @return real
 */
declare function RSignBJ(a: number): number;

/**
 * 取最小值
 * 取较小值
 * 取(${整数1}, ${整数2})中较小值
 * @params  integer integer
 * @return integer
 */
declare function IMinBJ(a: number, b: number): number;

/**
 * 取最大值
 * 取较大值
 * 取(${整数1}, ${整数2})中较大值
 * @params  integer integer
 * @return integer
 */
declare function IMaxBJ(a: number, b: number): number;

/**
 * 绝对值Abs
 * ${整数} 的绝对值
 * @params  integer
 * @return integer
 */
declare function IAbsBJ(a: number): number;

/**
 * 标记
 * 符号标志
 * ${整数} 的符号标志
 * 负数为-1. 非负数为1.
 * @params  integer
 * @return integer
 */
declare function ISignBJ(a: number): number;

/**
 * 正弦
 * 正弦(角度)
 * Sin(${Angle})
 * 采用角度制计算.
 * @params  degree
 * @return real
 */
declare function SinBJ(degrees: number): number;

/**
 * 余弦
 * 余弦(角度)
 * Cos(${Angle})
 * 采用角度制计算.
 * @params  degree
 * @return real
 */
declare function CosBJ(degrees: number): number;

/**
 * 正切
 * 正切(角度)
 * Tan(${Angle})
 * 采用角度制计算.
 * @params  degree
 * @return real
 */
declare function TanBJ(degrees: number): number;

/**
 * 反正弦
 * 反正弦(角度)
 * Asin(${数值})
 * 采用角度制计算. 返回角度取值-90 — 90.
 * @params  real
 * @return degree
 */
declare function AsinBJ(degrees: number): number;

/**
 * 反余弦
 * 反余弦(角度)
 * Acos(${数值})
 * 采用角度制计算. 返回角度取值0 — 180.
 * @params  real
 * @return degree
 */
declare function AcosBJ(degrees: number): number;

/**
 * 反正切 (From Angle)
 * 反正切(角度)
 * Atan(${数值})
 * 采用角度制计算. 返回角度取值-90 — 90.
 * @params  real
 * @return degree
 */
declare function AtanBJ(degrees: number): number;

/**
 * 和正半轴角度
 * 反正切(角度)(Y:X)
 * Atan(${Y} : ${X})
 * 采用角度制计算. 返回角度取值-90 — 90.
 * @params  real real
 * @return degree
 */
declare function Atan2BJ(y: number, x: number): number;

/**
 * 两个坐标之间的角度
 * 两点间方向
 * ${点} 到 ${点} 的角度
 * 取值-180 - 180.
 * @params  location location
 * @return degree
 */
declare function AngleBetweenPoints(locA: location, locB: location): number;

/**
 * 坐标之间的距离
 * 两点间距
 * ${点} 和 ${点} 之间的距离
 * @params  location location
 * @return real
 */
declare function DistanceBetweenPoints(locA: location, locB: location): number;

/**
 * 点向方向 位移
 * 极坐标位移点
 * 从 ${指定点} 开始,距离 ${Distance} ,方向为 ${Angle} 度的位移处
 * 会创建点.
 * @params  location real degree
 * @return location
 */
declare function PolarProjectionBJ(source: location, dist: number, angle: number): location;

/**
 * 随机角度
 * 随机角度
 * 0-360的随机角度.
 * @return degree
 */
declare function GetRandomDirectionDeg(): number;

/**
 * 随机百分数
 * 随机百分数
 * 0-100的随机实数.
 * @return real
 */
declare function GetRandomPercentageBJ(): number;

/**
 * 区域内的随机地点
 * 矩形区域内随机点
 * ${矩形区域} 内的随机点
 * 会创建点.
 * @params  rect
 * @return location
 */
declare function GetRandomLocInRect(whichRect: rect): location;

/**
 * Calculate the modulus/remainder of (dividend) divided by (divisor).
 */
/**
 * Examples:  18 mod 5 = 3.  15 mod 5 = 0.  -8 mod 5 = 2.
 */

//
/**
 * 取余数
 * 模
 * ${被除数} mod ${除数}
 * 取模计算,例: 13 mod 5 = 3.
 * @params  integer integer
 * @return integer
 */
declare function ModuloInteger(dividend: number, divisor: number): number;

/**
 * Calculate the modulus/remainder of (dividend) divided by (divisor).
 */
/**
 * Examples:  13.000 mod 2.500 = 0.500.  -6.000 mod 2.500 = 1.500.
 */

//
/**
 * 取余数
 * 模
 * ${被除数} mod ${除数}
 * 取模计算,例: 9.0 mod 2.5 = 1.5.
 * @params  real real
 * @return real
 */
declare function ModuloReal(dividend: number, divisor: number): number;

/**
 * 点的坐标
 * 坐标位移点
 * ${指定点} 坐标位移 (${X}, ${Y})处
 * 会创建点.
 * @params  location real real
 * @return location
 */
declare function OffsetLocation(loc: location, dx: number, dy: number): location;

/**
 * 区域位移
 * 位移创建矩形区域
 * 与 ${矩形区域} 位移 (${X}, ${Y}) 坐标之后等价的矩形区域
 * 会创建矩形区域.
 * @params  rect real real
 * @return rect
 */
declare function OffsetRectBJ(r: rect, dx: number, dy: number): rect;

/**
 * 将点,大小转换为区域
 * 新建矩形区域(指定中心点)
 * 以 ${指定点} 为中心,宽 ${数值} ,高 ${数值} 的矩形区域
 * 会创建矩形区域.
 * @params  location real real
 * @return rect
 */
declare function RectFromCenterSizeBJ(center: location, width: number, height: number): rect;

/**
 * 矩形是否包含坐标
 */
declare function RectContainsCoords(r: rect, x: number, y: number): boolean;

/**
 * 区域是否包含点
 * ${矩形区域} 内包含 ${点}
 * @params  rect location
 * @return boolean
 */
declare function RectContainsLoc(r: rect, loc: location): boolean;

/**
 * 单位在区域
 * 在矩形区域内
 * ${矩形区域} 内存在 ${单位}
 * @params  rect unit
 * @return boolean
 */
declare function RectContainsUnit(r: rect, whichUnit: unit): boolean;

/**
 * 物品在区域
 * 物品在矩形区域
 * ${物品} 在 ${矩形区域}
 * 单位持有的物品不会被计算在内.
 * @params  item rect
 * @return boolean
 */
declare function RectContainsItem(whichItem: item, r: rect): boolean;

//***************************************************************************
//*
//*  Utility Constructs
//*
//***************************************************************************
/**
 * Runs the trigger's actions if the trigger's conditions evaluate to true.
 */

//
/**
 * 运行触发器 (检查条件)
 * 运行触发(检查条件)
 * 运行 ${触发} (检查条件)
 * 如果其触发条件成立则运行触发动作.
 * @params  trigger
 */
declare function ConditionalTriggerExecute(trig: trigger): void;

/**
 * Runs the trigger's actions if the trigger's conditions evaluate to true.
 */

//
/**
 * 运行触发器
 */
declare function TriggerExecuteBJ(trig: trigger, checkConditions: boolean): boolean;

/**
 * Arranges for a trigger to fire almost immediately, except that the calling
 */
/**
 * trigger is not interrupted as is the case with a TriggerExecute call.
 */
/**
 * Since the trigger executes normally, its conditions are still evaluated.
 */

//
/**
 * 执行触发器
 */
declare function PostTriggerExecuteBJ(trig: trigger, checkConditions: boolean): boolean;

/**
 * Debug - Display the contents of the trigger queue (as either null or "x"
 */

/**
 * for each entry).
 */
/**
 * 队列触发器检查
 */
declare function QueuedTriggerCheck(): void;

/**
 * Searches the queue for a given trigger, returning the index of the
 */
/**
 * trigger within the queue if it is found, or -1 if it is not found.
 */
//
/**
 * 队列中获取触发器下标
 */
/**
 * Determine which, if any, of the queued triggers is being removed.
 */
declare function QueuedTriggerGetIndex(trig: trigger): number;

/**
 * Removes a trigger from the trigger queue, shifting other triggers down
 */
/**
 * to fill the unused space.  If the currently running trigger is removed
 */
/**
 * in this manner, this function does NOT attempt to run the next trigger.
 */

//
/**
 * 队列中移除下标对应的触发器
 */
declare function QueuedTriggerRemoveByIndex(trigIndex: number): boolean;

/**
 * Attempt to execute the first trigger in the queue.  If it fails, remove
 */
/**
 * it and execute the next one.  Continue this cycle until a trigger runs,
 */
/**
 * or until the queue is empty.
 */

//
/**
 * 队列中尝试执行触发器
 */
declare function QueuedTriggerAttemptExec(): boolean;

/**
 * Queues a trigger to be executed, assuring that such triggers are not
 */
/**
 * executed at the same time.
 */
//
/**
 * 增加触发器到队列
 */
/**
 * Make sure our queue isn't full.  If it is, return failure.
 * 添加到触发队列
 * 添加 ${触发} 到触发队列(${Checking/Ignoring} 条件)
 * 个人认为触发队列属于没用的功能.
 * @params  trigger checkingignoringoption
 */
declare function QueuedTriggerAddBJ(trig: trigger, checkConditions: boolean): boolean;

/**
 * Denotes the end of a queued trigger. Be sure to call this only once per
 */
/**
 * queued trigger, or risk stepping on the toes of other queued triggers.
 */

//
/**
 * 清除触发器队列
 * 移出触发队列
 * 将 ${触发} 移出触发队列
 * 如果触发正在运行,从队列移出该单位将允许后面的触发运行,但不影响本身的动作.
 * @params  trigger
 */
declare function QueuedTriggerRemoveBJ(trig: trigger): void;

/**
 * Denotes the end of a queued trigger. Be sure to call this only once per
 */
/**
 * queued trigger, lest you step on the toes of other queued triggers.
 */

//
/**
 * 触发器队列完成
 */
declare function QueuedTriggerDoneBJ(): void;

/**
 * Empty the trigger queue.
 */

//
/**
 * 清除触发器所有队列
 * 清空触发队列
 * 清空触发队列中所有触发
 * @params  nothing
 */
declare function QueuedTriggerClearBJ(): void;

/**
 * Remove all but the currently executing trigger from the trigger queue.
 */

//
/**
 * 清除触发器队列中未执行任务
 * 清空未运行触发
 * 清空触发队列中所有未运行触发
 * 只有正在运行的触发不会被移出队列.
 * @params  nothing
 */
declare function QueuedTriggerClearInactiveBJ(): void;

/**
 * 触发器队列中触发器的数量
 * 队列中触发数量
 * 触发队列中的触发数量
 * 可使用'触发器 - 添加到队列'和'触发器 - 移出队列'动作来操作触发队列.
 * @return integer
 */
declare function QueuedTriggerCountBJ(): number;

/**
 * 触发器队列是空的
 * 触发队列为空
 * 触发队列为空
 * 可使用'触发器 - 添加到队列'和'触发器 - 移出队列'动作来操作触发队列.
 * @return boolean
 */
declare function IsTriggerQueueEmptyBJ(): boolean;

/**
 * 触发器在队列中
 * 触发在队列中
 * ${触发} 在队列中
 * 可使用'触发器 - 添加到队列'和'触发器 - 移出队列'动作来操作触发队列.
 * @params  trigger
 * @return boolean
 */
declare function IsTriggerQueuedBJ(trig: trigger): boolean;

/**
 * 循环整数 A
 * 循环整数A
 * 循环整数A
 * @return integer
 */
declare function GetForLoopIndexA(): number;

/**
 * 设置循环索引 A
 * 设置循环整数A [R]
 * 设置循环整数A的值为 ${数值}
 * @params  integer
 */
declare function SetForLoopIndexA(newIndex: number): void;

/**
 * 循环整数 B
 * 循环整数B
 * 循环整数B
 * @return integer
 */
declare function GetForLoopIndexB(): number;

/**
 * 设置循环索引 B
 * 设置循环整数B [R]
 * 设置循环整数B的值为 ${数值}
 * @params  integer
 */
declare function SetForLoopIndexB(newIndex: number): void;

/**
 * We can't do game-time waits, so this simulates one by starting a timer
 */

/**
 * and polling until the timer expires.
 */
/**
 * 等待 (游戏时间)
 * 等待(游戏时间)
 * 等待 ${Time} 秒(游戏时间)
 * 该延迟功能受游戏时间的影响.通过调整游戏速度来调节该功能的具体延迟时间的长短.
 * @params  real
 */
declare function PolledWait(duration: number): void;

declare function IntegerTertiaryOp(flag: boolean, valueA: number, valueB: number): number;

//***************************************************************************
//*
//*  General Utility Functions
//*  These functions exist purely to make the trigger dialogs cleaner and
//*  more comprehensible.
//*
//***************************************************************************
/**
 * 不做任何动作
 * 不做任何动作
 * @params  nothing
 */
declare function DoNothing(): void;

/**
 * This function does nothing.  WorldEdit should should eventually ignore
 */
/**
 * CommentString triggers during script generation, but until such a time,
 */
/**
 * this function will serve as a stub.
 */

//
/**
 * 注释
 * 文本注释
 * -------- ${注释文本} --------
 * @params  scriptcode
 */
declare function CommentString(commentString: string): void;

/**
 * This function returns the input string, converting it from the localized text, if necessary
 */

//
/**
 * 格式化字串符
 * 本地字符串
 * 本地字符串: ${文字}
 * 获取ui\\framedef\\globalstrings.fdf中定义的字符串.
 * @params  string
 * @return string
 */
declare function StringIdentity(theString: string): string;

/**
 * 条件A和条件B    比较
 * And
 * ${条件 1} 且 ${条件 2}
 * 条件1 和条件2 均成立.
 * @params  boolcall boolcall
 */
declare function GetBooleanAnd(valueA: boolean, valueB: boolean): boolean;

/**
 * 条件A或条件B    比较
 * Or
 * ${条件 1} or ${条件 2}
 * 条件1 和条件2 任意成立.
 * @params  boolcall boolcall
 */
declare function GetBooleanOr(valueA: boolean, valueB: boolean): boolean;

/**
 * Converts a percentage (real, 0..100) into a scaled integer (0..max),
 */
/**
 * clipping the result to 0..max in case the input is invalid.
 */

//
/**
 * 百分比轉換為整數
 */
declare function PercentToInt(percentage: number, max: number): number;

/**
 * 百分比小数(0-1)转(0-255)
 */
declare function PercentTo255(percentage: number): number;

/**
 * 游戏当前的时间
 * 游戏时间
 * 游戏时间
 * 游戏中的昼夜时间.
 * @return real
 */
declare function GetTimeOfDay(): number;

/**
 * 设置游戏的时间
 * 设置游戏时间
 * 设置游戏时间为 ${Time}
 * 游戏时间采用24小时制.
 * @params  real
 */
declare function SetTimeOfDay(whatTime: number): void;

/**
 * 设置时间流逝速度
 * 设置昼夜时间流逝速度
 * 设置昼夜时间流逝速度为默认值的 ${Percent}%
 * 设置100%来恢复正常值. 该值并不影响游戏速度.
 * @params  real
 */
declare function SetTimeOfDayScalePercentBJ(scalePercent: number): void;

/**
 * 游戏时间的速度
 * 昼夜时间流逝速度
 * 昼夜时间流逝速度
 * 百分比数值, 100为默认值.
 * @return real
 */
declare function GetTimeOfDayScalePercentBJ(): number;

/**
 * 播放声音
 */
declare function PlaySound(soundName: string): void;

/**
 * 比对两个点是否是同一个
 */
declare function CompareLocationsBJ(A: location, B: location): boolean;

/**
 * 比对两个矩形是否是同一个
 */
declare function CompareRectsBJ(A: rect, B: rect): boolean;

/**
 * Returns a square rect that exactly encompasses the specified circle.
 */

//
/**
 * 内切圆矩形
 */
declare function GetRectFromCircleBJ(center: location, radius: number): rect;

//***************************************************************************
//*
//*  Camera Utility Functions
//*
//***************************************************************************
/**
 * 当前的视角
 * 玩家当前镜头
 * 玩家当前镜头
 * 注意:该函数对各玩家返回值不同,请确定你知道自己在做什么,否则很容易引起掉线. 会创建镜头对象,但每个玩家只会有一个当前镜头.
 * @return camerasetup
 */
declare function GetCurrentCameraSetup(): camerasetup;

/**
 * 应用摄像机 (限时)
 * 应用镜头(指定玩家)(限时)
 * ${应用方式} ${镜头} 作用于 ${Player},持续 ${Time} 秒
 * @params  cameraapplyoption camerasetup player real
 */
declare function CameraSetupApplyForPlayer(doPan: boolean, whichSetup: camerasetup, whichPlayer: player, duration: number): void;

declare function CameraSetupApplyForPlayerSmooth(doPan: boolean, whichSetup: camerasetup, whichPlayer: player, forcedDuration: number, easeInDuration: number, easeOutDuration: number, smoothFactor: number): void;

/**
 * 摄像机的数值
 * 镜头属性(指定镜头)
 * ${Camera Field} 对 ${镜头}
 * @params  camerafield camerasetup
 * @return real
 */
declare function CameraSetupGetFieldSwap(whichField: camerafield, whichSetup: camerasetup): number;

/**
 * 设定摄像机属性 (限时)
 * 设置镜头属性(指定玩家)(限时)
 * 设置 ${Player} 的镜头属性 ${Field} 为 ${Value},持续 ${Time} 秒
 * @params  player camerafield real real
 */
declare function SetCameraFieldForPlayer(whichPlayer: player, whichField: camerafield, value: number, duration: number): void;

/**
 * 锁定摄像机目标到单位
 * 锁定镜头到单位(指定玩家)
 * 锁定 ${Player} 的镜头到 ${单位}, 偏移坐标(${X}, ${Y}) ,使用 ${Rotation Source}
 * 偏移坐标(X,Y)以单位脚底为原点坐标.
 * @params  player unit real real cameraorientationoption
 */
declare function SetCameraTargetControllerNoZForPlayer(whichPlayer: player, whichUnit: unit, xoffset: number, yoffset: number, inheritOrientation: boolean): void;

/**
 * 设置玩家的镜头位置
 */
declare function SetCameraPositionForPlayer(whichPlayer: player, x: number, y: number): void;

/**
 * 设置玩家的镜头位置
 */
declare function SetCameraPositionLocForPlayer(whichPlayer: player, loc: location): void;

/**
 * 旋转摄像机 (限时)
 * 指定点旋转镜头(指定玩家)(角度)(限时)
 * 旋转角度为${Angle} 度,以 ${点} 为中心,应用于 ${Player},持续 ${Time} 秒
 * @params  degree location player real
 */
declare function RotateCameraAroundLocBJ(degrees: number, loc: location, whichPlayer: player, duration: number): void;

/**
 * 平移摄像机
 */
declare function PanCameraToForPlayer(whichPlayer: player, x: number, y: number): void;

/**
 * 平移摄像机
 */
declare function PanCameraToLocForPlayer(whichPlayer: player, loc: location): void;

/**
 * 平移摄像机 定时
 */
declare function PanCameraToTimedForPlayer(whichPlayer: player, x: number, y: number, duration: number): void;

/**
 * 平移摄像机 (限时)
 * 平移镜头(指定玩家)(限时)
 * 平移 ${Player} 的镜头到 ${点},持续 ${Time} 秒
 * @params  player location real
 */
declare function PanCameraToTimedLocForPlayer(whichPlayer: player, loc: location, duration: number): void;

/**
 * 在指定高度平移摄像机 (限时)
 * 指定高度平移镜头(指定玩家)(限时)
 * 平移 ${Player} 的镜头到 ${Point} 距离地面高度为 ${Z},持续 ${Time} 秒
 * 在指定移动路径上镜头不会低于地面高度.
 * @params  player location real real
 */
declare function PanCameraToTimedLocWithZForPlayer(whichPlayer: player, loc: location, zOffset: number, duration: number): void;

/**
 * 必要时平移摄像机 (限时)
 * 在必要时平移镜头(指定玩家)(限时)
 * 在必要时平移 ${Player} 的镜头到 ${指定点} ,持续 ${Time} 秒
 * 如果距离过远则直接跳转镜头,如果过近则不做动作.
 * @params  player location real
 */
declare function SmartCameraPanBJ(whichPlayer: player, loc: location, duration: number): void;

/**
 * 播放动画摄像机
 * 播放电影镜头(指定玩家)
 * 对 ${Player} 播放电影镜头: ${Camera File}
 * 在'Objects\\CinematicCameras'目录下有一些电影镜头,可用Mpq工具来查询.
 * @params  player modelfile
 */
declare function SetCinematicCameraForPlayer(whichPlayer: player, cameraModelFile: string): void;

/**
 * 重置游戏摄像机
 * 重置游戏镜头(指定玩家)
 * 重置 ${Player} 的镜头为游戏默认状态,持续 ${Time} 秒
 * @params  player real
 */
declare function ResetToGameCameraForPlayer(whichPlayer: player, duration: number): void;

/**
 * 摇摆摄像机来源
 * 摇晃镜头源(指定玩家)
 * 摇晃 ${Player} 的镜头源, 摇晃幅度: ${Magnitude} 速率: ${Velocity}
 * 使用'镜头 - 重置镜头'或'镜头 - 停止摇晃镜头'来停止摇晃.
 * @params  player real real
 */
declare function CameraSetSourceNoiseForPlayer(whichPlayer: player, magnitude: number, velocity: number): void;

/**
 * 摇摆摄像机目标
 * 摇晃镜头目标(指定玩家)
 * 摇晃 ${Player} 的镜头目标, 摇晃幅度: ${Magnitude} 速率: ${Velocity}
 * 使用'镜头 - 重置镜头'或'镜头 - 停止摇晃镜头'来停止摇晃.
 * @params  player real real
 */
declare function CameraSetTargetNoiseForPlayer(whichPlayer: player, magnitude: number, velocity: number): void;

/**
 * 摇动摄像机
 * 震动镜头(指定玩家)
 * 震动 ${Player} 的镜头, 震动幅度: ${Magnitude}
 * 使用'镜头 - 重置镜头'或'镜头 - 停止震动镜头'来停止震动.
 * @params  player real
 */
declare function CameraSetEQNoiseForPlayer(whichPlayer: player, magnitude: number): void;

/**
 * 停止 摇摆/摇动 摄像机
 * 停止摇晃/震动镜头(指定玩家)
 * 停止 ${Player} 镜头的摇晃和震动
 * 可以用本地玩家实现对所有玩家停止摇晃/震动镜头.
 * @params  player
 */
declare function CameraClearNoiseForPlayer(whichPlayer: player): void;

/**
 * Query the current camera bounds.
 */

//
/**
 * 当前的摄象机范围
 * 当前可用镜头范围
 * 当前可用镜头范围
 * 会创建矩形区域. 注意:该函数对各玩家返回值不同,请确定你知道自己在做什么,否则很容易引起掉线.
 * @return rect
 */
declare function GetCurrentCameraBoundsMapRectBJ(): rect;

/**
 * Query the initial camera bounds, as defined at map init.
 */

//
/**
 * 初始游戏时的摄象机范围
 * 初始可用镜头范围
 * 初始可用镜头范围
 * 在地图编辑器的地图属性中设置.
 * @return rect
 */
declare function GetCameraBoundsMapRect(): rect;

/**
 * Query the playable map area, as defined at map init.
 */

//
/**
 * 可玩的地图区域
 * 可用地图区域
 * 可用地图区域
 * 在地图编辑器的地图属性中设置.
 * @return rect
 */
declare function GetPlayableMapRect(): rect;

/**
 * Query the entire map area, as defined at map init.
 */

//
/**
 * 全地图
 * 完整地图区域
 * 完整地图区域
 * 在地图编辑器的地图属性中设置. 会创建矩形区域.
 * @return rect
 */
declare function GetEntireMapRect(): rect;

/**
 * 设置摄像机边界
 */
declare function SetCameraBoundsToRect(r: rect): void;

/**
 * 设置镜头范围
 * 设置可用镜头区域(指定玩家)
 * 设置 ${Player} 的可用镜头区域为 ${地区}
 * 该动作同样会影响小地图的显示. 但小地图的图片是无法改变的. 实际可用区域要大于可用镜头区域.
 * @params  player rect
 */
declare function SetCameraBoundsToRectForPlayerBJ(whichPlayer: player, r: rect): void;

/**
 * 调整相机边界
 */
declare function AdjustCameraBoundsBJ(adjustMethod: number, dxWest: number, dxEast: number, dyNorth: number, dySouth: number): void;

/**
 * 扩展/收缩摄像绑定
 * 扩张/收缩 可用镜头区域(指定玩家)
 * ${Extend/Shrink} ${Player} 的可用镜头区域, 西: ${West} ,东 ${East} ,北: ${North} ,南: ${South}
 * 该动作同样会影响小地图的显示. 但小地图的图片是无法改变的. 实际可用区域要大于可用镜头区域.
 * @params  cameraboundsadjusttype player real real real real
 */
declare function AdjustCameraBoundsForPlayerBJ(adjustMethod: number, whichPlayer: player, dxWest: number, dxEast: number, dyNorth: number, dySouth: number): void;

/**
 * 设置相机位置 (快速)
 */
declare function SetCameraQuickPositionForPlayer(whichPlayer: player, x: number, y: number): void;

/**
 * 设置空格点击 切换镜头目标
 */
/**
 * 设置相机位置 (快速)
 * 设置空格键转向点(指定玩家)
 * 设置 ${Player} 的空格键转向点为 ${指定点}
 * 按下空格键时镜头转向的位置.
 * @params  player location
 */
declare function SetCameraQuickPositionLocForPlayer(whichPlayer: player, loc: location): void;

declare function SetCameraQuickPositionLoc(loc: location): void;

/**
 * 停止摄像机
 * 停止播放镜头(指定玩家)
 * 让 ${Player} 停止播放镜头
 * 比如在平移镜头的过程中可用该动作来中断平移.
 * @params  player
 */
declare function StopCameraForPlayerBJ(whichPlayer: player): void;

/**
 * 锁定摄像机方向到单位
 * 锁定镜头到单位(固定镜头源)(指定玩家)
 * 锁定 ${Player} 的镜头到 ${单位}, 偏移坐标(${X}, ${Y})
 * 偏移坐标(X,Y)以单位脚底为原点坐标.
 * @params  player unit real real
 */
declare function SetCameraOrientControllerForPlayerBJ(whichPlayer: player, whichUnit: unit, xoffset: number, yoffset: number): void;

/**
 * 改变摄像机平滑参数
 * 设置镜头平滑参数
 * 设置镜头平滑参数为 ${Factor}
 * 数值越大,镜头转换越平滑.
 * @params  real
 */
declare function CameraSetSmoothingFactorBJ(factor: number): void;

/**
 * 重置摄像机平滑参数
 * 重置镜头平滑参数
 * 重置镜头平滑参数为游戏默认值
 * 其实就是设置镜头平滑参数为0.
 * @params  nothing
 */
declare function CameraResetSmoothingFactorBJ(): void;

//***************************************************************************
//*
//*  Text Utility Functions
//*
//***************************************************************************
/**
 * 文本消息(自动计时)
 * 对玩家组显示文本消息(自动限时)
 * 对 ${玩家组} 发送文本信息: ${文字}
 * 显示时间取决于文字长度.
 * @params  force StringExt
 */
declare function DisplayTextToForce(toForce: force, message: string): void;

/**
 * 文本消息(指定计时)
 * 对玩家组显示文本消息(指定时间)
 * 对 ${玩家组} 发送显示 ${Time} 秒的文本信息: ${文字}
 * @params  force real StringExt
 */
declare function DisplayTimedTextToForce(toForce: force, duration: number, message: string): void;

/**
 * 清空文本信息
 * 清空文本信息(指定玩家组)
 * 清空 ${玩家组} 屏幕上的文本信息
 * @params  force
 */
declare function ClearTextMessagesBJ(toForce: force): void;

/**
 * The parameters for the API Substring function are unintuitive, so this
 */
/**
 * merely performs a translation for the starting index.
 */

//
/**
 * 切割字符串
 * 截取字符串
 * 截取 ${字符串} 的 ${Start} - ${End} 字节部分
 * 例: 截取''Grunts stink''的2 - 4字节部分 = ''run''.
 * @params  string integer integer
 * @return string
 */
declare function SubStringBJ(source: string, start: number, end: number): string;

/**
 * 获取句柄整数地址
 * <1.24> 获取对象的h2i值
 * 转换 ${Handle} 为整数
 * 创建一个对应该handle的临时密钥,可以在哈希表中作为索引号使用.当该handle被彻底销毁时,密钥会被回收.
 * @params  handle
 * @return integer
 */
declare function GetHandleIdBJ(h: handle): number;

/**
 * 字符串哈希
 * <1.24> 获取字符串的哈希值
 * 转换 ${String} 为整数
 * 创建一个对应该字符串的永久密钥,可以在哈希表中作为索引号使用
 * @params  string
 * @return integer
 */
declare function StringHashBJ(s: string): number;

//***************************************************************************
//*
//*  Event Registration Utility Functions
//*
//***************************************************************************
/**
 * 循环逝去的时间
 * 游戏计时(循环)
 * 每当游戏逝去 ${Time} 秒
 * 从事件开始的那一刻开始计时,直到计时完毕后双重新开始计时.
 * @params  real
 */
declare function TriggerRegisterTimerEventPeriodic(trig: trigger, timeout: number): event;

/**
 * 游戏开始逝去的时间
 * 游戏计时(单次)
 * 当游戏逝去 ${Time} 秒
 * 从事件开始的那一刻开始计时.
 * @params  real
 */
declare function TriggerRegisterTimerEventSingle(trig: trigger, timeout: number): event;

/**
 * 计时器期满
 * 计时器到期
 * ${计时器} 到期
 * 当计时器到0时触发该事件. 循环计时器可以多次触发该事件. 使用'事件响应 - 到期的计时器'来获取该计时器.
 * @params  timer
 */
declare function TriggerRegisterTimerExpireEventBJ(trig: trigger, t: timer): event;

/**
 * 玩家单位的事件
 * 玩家单位事件
 * ${Player} 的单位 ${Event}
 * @params  player playerunitevent
 */
declare function TriggerRegisterPlayerUnitEventSimple(trig: trigger, whichPlayer: player, whichEvent: playerunitevent): event;

/**
 * 单位的事件
 * 任意单位事件
 * 任意单位 ${Event}
 * @params  playerunitevent
 */
declare function TriggerRegisterAnyUnitEventBJ(trig: trigger, whichEvent: playerunitevent): void;

/**
 * 选择单位事件
 * ${玩家} ${Selects/Deselects} 一个单位
 * 通过'事件回应 - 触发单位' 操作被玩家选择的单位.
 * @params  player seldeseloption
 */
declare function TriggerRegisterPlayerSelectionEventBJ(trig: trigger, whichPlayer: player, selected: boolean): event;

/**
 * 键盘事件
 * ${玩家} ${Presses/Releases} ${Key}
 * 目前游戏只支持'Up/Down/Left/Right'四个方向键.
 * @params  player keyeventtype keyeventkey
 */
declare function TriggerRegisterPlayerKeyEventBJ(trig: trigger, whichPlayer: player, keType: number, keKey: number): event;

declare function TriggerRegisterPlayerMouseEventBJ(trig: trigger, whichPlayer: player, meType: number): event;

/**
 * 胜利
 * 游戏胜利
 * ${玩家} 胜利后离开游戏
 * @params  player
 */
declare function TriggerRegisterPlayerEventVictory(trig: trigger, whichPlayer: player): event;

/**
 * 失败
 * 游戏失败
 * ${玩家} 失败后离开游戏
 * @params  player
 */
declare function TriggerRegisterPlayerEventDefeat(trig: trigger, whichPlayer: player): event;

/**
 * 玩家离开游戏
 * ${玩家} 离开游戏
 * 这个事件通过玩家离开游戏来开启.
 * @params  player
 */
declare function TriggerRegisterPlayerEventLeave(trig: trigger, whichPlayer: player): event;

/**
 * 联盟状态改变(任何状态)
 * 联盟状态事件(任意状态)
 * ${玩家} 改变联盟状态设定
 * @params  player
 */
declare function TriggerRegisterPlayerEventAllianceChanged(trig: trigger, whichPlayer: player): event;

/**
 * 按ESC键(跳过动画)
 * 按下Esc键
 * ${玩家} 按下Esc键(跳过电影)
 * 该事件在玩家按下'Escape'键时触发(可能是玩家要跳过当前所播放的电影).
 * @params  player
 */
declare function TriggerRegisterPlayerEventEndCinematic(trig: trigger, whichPlayer: player): event;

/**
 * 游戏时间改变
 * 游戏时间事件
 * 当游戏时间 ${Operation} ${时间}
 * 游戏时间采用24小时制.早上从6:00开始,下午从18:00开始.
 * @params  limitop real
 */
declare function TriggerRegisterGameStateEventTimeOfDay(trig: trigger, opcode: limitop, limitval: number): event;

/**
 * 单位-任意单位进入不规则区域
 * 单位进入不规则区域 [R]
 * 任意单位进入 ${区域}
 * 使用'事件响应 - 进入的单位'来响应进入该区域的单位. 该事件需要在其他触发为其添加.
 * @params  region
 */
declare function TriggerRegisterEnterRegionSimple(trig: trigger, whichRegion: region): event;

/**
 * 单位-任意单位离开不规则区域
 * 单位离开不规则区域 [R]
 * 任意单位离开 ${区域}
 * 使用'事件响应 - 离开的单位'来响应离开该区域的单位. 该事件需要在其他触发为其添加.
 * @params  region
 */
declare function TriggerRegisterLeaveRegionSimple(trig: trigger, whichRegion: region): event;

/**
 * 单位进入区域
 * 单位进入矩形区域
 * 任意单位进入 ${矩形区域}
 * 使用'事件响应 - 进入的单位'来响应进入该区域的单位. 事实上是创建不规则区域，并注册单位进入不规则区域事件,所以之后改动该矩形区域对事件不会产生任何影响.
 * @params  rect
 */
declare function TriggerRegisterEnterRectSimple(trig: trigger, r: rect): event;

/**
 * 单位离开区域
 * 单位离开矩形区域
 * 任意单位离开 ${矩形区域}
 * 使用'事件响应 - 离开的单位'来响应离开该区域的单位. 事实上是创建不规则区域，并注册单位离开不规则区域事件,所以之后改动该矩形区域对事件不会产生任何影响.
 * @params  rect
 */
declare function TriggerRegisterLeaveRectSimple(trig: trigger, r: rect): event;

/**
 * 两单位之间的距离
 */
declare function TriggerRegisterDistanceBetweenUnits(trig: trigger, whichUnit: unit, condition: boolexpr, range: number): event;

/**
 * 进入单位的范围
 * 进入指定单位的范围
 * 任意单位进入 ${范围} 以 ${Unit} 为中心的范围内
 * 通过 '事件响应 - 触发单位' 来获取进入范围的单位.
 * @params  real unit
 */
declare function TriggerRegisterUnitInRangeSimple(trig: trigger, range: number, whichUnit: unit): event;

/**
 * 单位生命值
 * 生命值变化
 * ${指定单位} 的生命值变为 ${Operation} ${Value}
 * 从不成立变为成立时触发该事件. 注意:该参照值在注册事件时即被确定为常量,是不会变动的.
 * @params  unit limitop real
 */
declare function TriggerRegisterUnitLifeEvent(trig: trigger, whichUnit: unit, opcode: limitop, limitval: number): event;

/**
 * 单位魔法值
 * 魔法值变化
 * ${指定单位} 的魔法值变为${Operation} ${Value}
 * 从不成立变为成立时触发该事件. 注意:该参照值在注册事件时即被确定为常量,是不会变动的.
 * @params  unit limitop real
 */
declare function TriggerRegisterUnitManaEvent(trig: trigger, whichUnit: unit, opcode: limitop, limitval: number): event;

/**
 * 对话框按钮点击
 * 对话框被点击
 * ${对话框} 被点击
 * 通过 '事件响应 - 被点击的对话框' 操作事件中的对话框.
 * @params  dialog
 */
declare function TriggerRegisterDialogEventBJ(trig: trigger, whichDialog: dialog): event;

/**
 * 英雄学习技能按钮被点击
 * 英雄技能按钮被点击
 * 英雄技能按钮被点击
 * @params  nothing
 */
declare function TriggerRegisterShowSkillEventBJ(trig: trigger): event;

/**
 * 建造建筑物按钮被点击
 * 建造建筑按钮被点击
 * 建造建筑按钮被点击
 * @params  nothing
 */
declare function TriggerRegisterBuildSubmenuEventBJ(trig: trigger): event;

declare function TriggerRegisterBuildCommandEventBJ(trig: trigger, unitId: number): event;

declare function TriggerRegisterTrainCommandEventBJ(trig: trigger, unitId: number): event;

declare function TriggerRegisterUpgradeCommandEventBJ(trig: trigger, techId: number): event;

declare function TriggerRegisterCommonCommandEventBJ(trig: trigger, order: string): event;

/**
 * 读取游戏
 * 游戏读档
 * 读取游戏存档
 * 当游戏读取完毕时,该事件生效.
 * @params  nothing
 */
declare function TriggerRegisterGameLoadedEventBJ(trig: trigger): event;

/**
 * 储存游戏
 * 游戏存档
 * 保存游戏存档
 * 在切入保存游戏界面前,该事件生效.
 * @params  nothing
 */
declare function TriggerRegisterGameSavedEventBJ(trig: trigger): event;

/**
 * 注册可破坏物在区域内死亡(矩形区域)
 */
declare function RegisterDestDeathInRegionEnum(): void;

/**
 * 可毁坏物在 区域 死亡
 * 可破坏物在区域内死亡(矩形区域)
 * 可破坏物在 ${矩形区域} 内死亡
 * 默认该事件只能监视最多64个可破坏物. 可以使用'设置 bj_destInRegionDiesCount'来设置该值. 不建议新手使用该触发.
 * @params  rect
 */
declare function TriggerRegisterDestDeathInRegionEvent(trig: trigger, r: rect): void;

//***************************************************************************
//*
//*  Environment Utility Functions
//*
//***************************************************************************
/**
 * 创造天气效果
 * 添加天气效果
 * 给 ${Rect} 添加天气效果: ${Weather Id}
 * 用'最后添加的天气效果'来获得所添加的天气效果.
 * @params  rect weathereffectcode
 */
declare function AddWeatherEffectSaveLast(where: rect, effectID: number): weathereffect;

/**
 * 最后创建的天气效果
 * 最后创建的天气效果
 * 最后一个使用'环境 - 创建天气效果'动作创建的天气效果.
 * @return weathereffect
 */
declare function GetLastCreatedWeatherEffect(): weathereffect;

/**
 * 删除天气效果
 * 删除 ${天气效果}
 * @params  weathereffect
 */
declare function RemoveWeatherEffectBJ(whichWeatherEffect: weathereffect): void;

/**
 * 创造地域变形 :弹坑
 * 创建地形变化:弹坑
 * 创建一个持续 ${Duration} 秒的 ${Type} 弹坑变形在 ${指定点} ,半径: ${Radius}深度: ${Depth}
 * 使用'最后创建的地形变化'来获取该变化. 深度可取负数. 永久地形变化在保存游戏时不会被记录.
 * @params  real cratertype location real real
 */
declare function TerrainDeformationCraterBJ(duration: number, permanent: boolean, where: location, radius: number, depth: number): terraindeformation;

/**
 * 创造地域变形: 波纹
 * 创建地形变化:波纹
 * 创建一个持续 ${Duration} 秒的 ${Type} 波纹变形在 ${指定点} ,开始半径: ${Radius} ,结束半径: ${Radius} ,深度: ${Depth} 周期: ${Time} 秒,波间距: ${Distance}
 * 使用'最后创建的地形变化'来获取该变化.
 * @params  real rippletype location real real real real real
 */
declare function TerrainDeformationRippleBJ(duration: number, limitNeg: boolean, where: location, startRadius: number, endRadius: number, depth: number, wavePeriod: number, waveWidth: number): terraindeformation;

/**
 * 创造地域变形: 波
 * 创建地形变化:冲击波
 * 创建一个持续 ${Duration} 秒的冲击波变形从 ${Source} 到 ${Target} ,半径: ${Radius} ,深度: ${Depth} ,效果存在时间: ${Delay} 秒
 * 使用'最后创建的地形变化'来获取该变化. 深度可取负数.
 * @params  real location location real real real
 */
declare function TerrainDeformationWaveBJ(duration: number, source: location, target: location, radius: number, depth: number, trailDelay: number): terraindeformation;

/**
 * 创造地域变形: 随机
 * 创建地形变化:随机
 * 创建一个持续 ${Duration} 秒的随机变形变形在 ${指定点} ,半径: ${Radius} 最小深度: ${Minimum} 最大深度: ${Maximum}, 变形间隔: ${Update Interval} 秒
 * 使用'最后创建的地形变化'来获取该变化.
 * @params  real location real real real real
 */
declare function TerrainDeformationRandomBJ(duration: number, where: location, radius: number, minDelta: number, maxDelta: number, updateInterval: number): terraindeformation;

/**
 * 停止地域变形
 * 停止地形变化
 * 停止 ${Terrain Deformation} ,衰退时间: ${Duration} 秒
 * 地形变化会平滑地过渡到无.
 * @params  terraindeformation real
 */
declare function TerrainDeformationStopBJ(deformation: terraindeformation, duration: number): void;

/**
 * 最后创建的可毁坏物
 * 最后创建的地形变化
 * 最后创建的地形变化
 * 最后一个由'环境 - 创建地形变化'动作创建的地形变化.
 * @return terraindeformation
 */
declare function GetLastCreatedTerrainDeformation(): terraindeformation;

/**
 * 创建闪电效果于指定点
 * 创建一道 ${Type} 闪电效果,从 ${点} 到 ${点}
 * @params  lightningtype location location
 */
declare function AddLightningLoc(codeName: string, where1: location, where2: location): lightning;

/**
 * 删除闪电效果
 * 删除 ${Lightning}
 * @params  lightning
 */
declare function DestroyLightningBJ(whichBolt: lightning): boolean;

/**
 * 移动闪电效果到指定点
 * 移动闪电效果(指定点)
 * 移动 ${Lightning} ,使其连接 ${点} 到 ${点}
 * @params  lightning location location
 */
declare function MoveLightningLoc(whichBolt: lightning, where1: location, where2: location): boolean;

/**
 * 闪电的Alpha通道颜色
 * Alpha通道值
 * ${Lightning} 的Alpha通道值
 * 取值范围0-1. Alpha通道值为0是完全透明的. 可使用'闪电效果 - 改变颜色'动作来改变Alpha通道值.
 * @params  lightning
 * @return real
 */
declare function GetLightningColorABJ(whichBolt: lightning): number;

/**
 * 闪电的红色通道颜色
 * 红颜色值
 * ${Lightning} 的红颜色值
 * 取值范围0-1. 可使用'闪电效果 - 改变颜色'动作来改变颜色值.
 * @params  lightning
 * @return real
 */
declare function GetLightningColorRBJ(whichBolt: lightning): number;

/**
 * 闪电的绿色通道颜色
 * 绿颜色值
 * ${Lightning} 的绿颜色值
 * 取值范围0-1. 可使用'闪电效果 - 改变颜色'动作来改变颜色值.
 * @params  lightning
 * @return real
 */
declare function GetLightningColorGBJ(whichBolt: lightning): number;

/**
 * 闪电的蓝色通道颜色
 * 蓝颜色值
 * ${Lightning} 的蓝颜色值
 * 取值范围0-1. 可使用'闪电效果 - 改变颜色'动作来改变颜色值.
 * @params  lightning
 * @return real
 */
declare function GetLightningColorBBJ(whichBolt: lightning): number;

/**
 * 设置闪电效果颜色
 * 改变闪电效果颜色
 * 改变 ${Lightning} 的颜色值为(${Red} ${Green} ${Blue}) Alpha通道值为 ${Alpha}
 * 颜色格式为(红,绿,蓝). 颜色和Alpha通道值取值范围0-1. Alpha通道值为0即完全透明.
 * @params  lightning real real real real
 */
declare function SetLightningColorBJ(whichBolt: lightning, r: number, g: number, b: number, a: number): boolean;

/**
 * 最后创建的闪电效果
 * 最后创建的闪电效果
 * 最后一个使用'闪电效果 - 创建'动作创建的闪电效果.
 * @return lightning
 */
declare function GetLastCreatedLightningBJ(): lightning;

/**
 * 技能效果图像
 * 技能效果路径名
 * ${技能} 的 ${EffectType} 路径名(序号: ${Index})
 * 返回技能效果的模型路径,不管该效果是否存在.实际上就是技能编辑器中按Ctrl+D看到的文本内容. 该效果有多个模型时,序号表示取哪一个模型,如果该序号对应的文本内容不存在则返回上一序号.
 * @params  abilcode effecttype integer
 * @return string
 */
declare function GetAbilityEffectBJ(abilcode: number, t: effecttype, index: number): string;

/**
 * 技能效果音
 * 技能音效名
 * ${技能} 的 ${SoundType} 名字
 * 同样,实际上就是技能编辑器中按Ctrl+D看到的文本内容.
 * @params  abilcode soundtype
 * @return string
 */
declare function GetAbilitySoundBJ(abilcode: number, t: soundtype): string;

/**
 * 悬崖的高度
 * 地形悬崖高度(指定点)
 * ${指定点} 处的地形悬崖高度
 * 悬崖高度:深水区为0, 浅水区为1, 平原为2, 之后每层+1.
 * @params  location
 * @return integer
 */
declare function GetTerrainCliffLevelBJ(where: location): number;

/**
 * 地形类型
 * 指定点地形
 * ${指定点} 处的地形
 * @params  location
 * @return terraintype
 */
declare function GetTerrainTypeBJ(where: location): number;

/**
 * 地形形态
 * 地形样式(指定点)
 * ${指定点} 处的地形样式
 * @params  location
 * @return integer
 */
declare function GetTerrainVarianceBJ(where: location): number;

/**
 * 改变地形类型
 * 改变地形类型(指定点)
 * 改变 ${指定点} 处的地形为 ${Terrain Type} ,使用样式: ${Variation} 范围: ${Area} 形状: ${Shape}
 * 地形样式-1表示随机样式. 范围即地形编辑器中的刷子大小.1表示128x128范围
 * @params  location terraintype integer integer terrainshape
 */
declare function SetTerrainTypeBJ(where: location, terrainType: number, variation: number, area: number, shape: number): void;

/**
 * 地形是否为对应路径
 * 地形通行状态关闭(指定点)
 * ${指定点} 处的 ${Pathing Type} 通行状态为关闭
 * 指定类型单位不能通行即通行状态为关闭. 如该点不能造建筑就是'建造'通行状态为关闭. 可使用'环境 - 设置地形通行状态'来改变通行状态.
 * @params  location pathingtype
 * @return boolean
 */
declare function IsTerrainPathableBJ(where: location, t: pathingtype): boolean;

/**
 * 设置 地形路径 开/关
 * 设置地形通行状态(指定点)
 * 设置 ${指定点} 处单元点的 ${Pathing} 地形通行状态为: ${On/Off}
 * 例:设置'建造'通行状态为开,则该点可以建造建筑. 一个单元点范围为32x32.
 * @params  location pathingtype onoffoption
 */
declare function SetTerrainPathableBJ(where: location, t: pathingtype, flag: boolean): void;

/**
 * 设置 水 颜色
 * 设置水颜色
 * 设置水颜色为(${Red}%, ${Green}%, ${Blue}%) 透明度为 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 100%透明的水是不可见的.
 * @params  real real real real
 */
declare function SetWaterBaseColorBJ(red: number, green: number, blue: number, transparency: number): void;

/**
 * 创建可见度修正器(矩形区域)
 */
declare function CreateFogModifierRectSimple(whichPlayer: player, whichFogState: fogstate, r: rect, afterUnits: boolean): fogmodifier;

/**
 * 创建可见度修正器(圆范围)
 */
declare function CreateFogModifierRadiusLocSimple(whichPlayer: player, whichFogState: fogstate, center: location, radius: number, afterUnits: boolean): fogmodifier;

/**
 * Version of CreateFogModifierRect that assumes use of sharedVision and
 */
/**
 * gives the option of immediately enabling the modifier, so that triggers
 */
/**
 * can default to modifiers that are immediately enabled.
 */

//
/**
 * 创造 区域 可见度修正器
 * 创建可见度修正器(矩形区域)
 * 创建一个状态为 ${Enabled/Disabled} 的可见度修正器给 ${Player} ,设置 ${Visibility State} 在 ${Region}
 * 会创建可见度修正器.
 * @params  enableddisabledoption player fogstate rect
 */
declare function CreateFogModifierRectBJ(enabled: boolean, whichPlayer: player, whichFogState: fogstate, r: rect): fogmodifier;

/**
 * Version of CreateFogModifierRadius that assumes use of sharedVision and
 */
/**
 * gives the option of immediately enabling the modifier, so that triggers
 */
/**
 * can default to modifiers that are immediately enabled.
 */

//
/**
 * 创造 圆周 可见度修正器
 * 创建可见度修正器(圆范围)
 * 创建一个状态为 ${Enabled/Disabled} 的可见度修正器给 ${Player} ,设置 ${Visibility State} 在圆心为 ${指定点} 半径为 ${Radius} 的圆范围
 * 会创建可见度修正器.
 * @params  enableddisabledoption player fogstate location real
 */
declare function CreateFogModifierRadiusLocBJ(enabled: boolean, whichPlayer: player, whichFogState: fogstate, center: location, radius: number): fogmodifier;

/**
 * 最后创建的可见度修正器
 * 最后创建的可见度修正器
 * 最后一个由'可见度 - 创建可见度修正器'动作创建的可见度修正器.
 * @return fogmodifier
 */
declare function GetLastCreatedFogModifier(): fogmodifier;

/**
 * 允许战争迷雾
 * 启用战争迷雾
 * 启用战争迷雾
 * @params  nothing
 */
declare function FogEnableOn(): void;

/**
 * 禁止战争迷雾
 * 禁用战争迷雾
 * 禁用战争迷雾
 * @params  nothing
 */
declare function FogEnableOff(): void;

/**
 * 允许黑色阴影
 * 启用黑色阴影
 * 启用黑色阴影
 * @params  nothing
 */
declare function FogMaskEnableOn(): void;

/**
 * 禁止黑色阴影
 * 禁用黑色阴影
 * 禁用黑色阴影
 * @params  nothing
 */
declare function FogMaskEnableOff(): void;

/**
 * 打开/关闭日夜循环
 * 开启/关闭 昼夜交替
 * ${On/Off} 昼夜交替
 * @params  onoffoption
 */
declare function UseTimeOfDayBJ(flag: boolean): void;

/**
 * 设置 迷雾
 * 设置迷雾
 * 迷雾风格: ${Style}, Z轴开始端: ${Z-Start}, Z轴结束端: ${Z-End}, 密度: ${Density} 颜色:(${Red}%, ${Green}%, ${Blue}%)
 * 颜色格式为(红,绿,蓝).
 * @params  fogstyle real real real real real real
 */
declare function SetTerrainFogExBJ(style: number, zstart: number, zend: number, density: number, red: number, green: number, blue: number): void;

/**
 * 重置 迷雾
 * 重置迷雾
 * 重置迷雾为默认设置
 * @params  nothing
 */
declare function ResetTerrainFogBJ(): void;

/**
 * 播放圆周内地形装饰物的动作
 * 播放圆范围内地形装饰物动画
 * 播放 ${Animation Name} 动作对所有 ${装饰物类型} 在半径为 ${Radius} 圆心为 ${指定点} 的圆范围内
 * 特殊动画名: 'show', 'hide', 'soundon', 'soundoff'
 * @params  string doodadcode real location
 */
declare function SetDoodadAnimationBJ(animName: string, doodadID: number, radius: number, center: location): void;

/**
 * 播放区域内地形装饰物的动作
 * 播放矩形区域内地形装饰物动画
 * 播放 ${Animation Name} 动作对所有 ${装饰物类型} 在 ${Rect} 内
 * 特殊动画名: 'show', 'hide', 'soundon', 'soundoff'
 * @params  string doodadcode rect
 */
declare function SetDoodadAnimationRectBJ(animName: string, doodadID: number, r: rect): void;

/**
 * 添加/删除 单位动画 标签
 * 添加/删除单位动画附加名
 * ${Add/Remove} ${Tag} 动画附加名给 ${单位}
 * 比如恶魔猎手添加'alternate'会显示为恶魔形态;农民添加'gold'则为背负黄金形态.
 * @params  addremoveoption string unit
 */
declare function AddUnitAnimationPropertiesBJ(add: boolean, animProperties: string, whichUnit: unit): void;

/**
 * 创建图像
 * 使用图像: ${Image} 大小: ${Size} 创建点: ${指定点} Z轴偏移: ${Z} 图像类型: ${Type}
 * 使用'图像 - 设置永久渲染状态'才能显示图像. 创建点作为图像的左下角位置. 该功能存在Bug,会在图像上和右面多出256象素. 所以需要支持Alpha通道的图像且上和右面最后一行像素为透明才能完美显示.
 * @params  string real location real imagetype
 */
declare function CreateImageBJ(file: string, size: number, where: location, zOffset: number, imageType: number): image;

/**
 * 显示/隐藏图像
 * ${Show/Hide} ${Image}
 * @params  showhideoption image
 */
declare function ShowImageBJ(flag: boolean, whichImage: image): void;

/**
 * 改变图像位置
 * 改变图像位置(指定点)
 * 改变 ${Image} 的位置为 ${Position} ,Z轴偏移为 ${Z}
 * 指图像的左下角位置.
 * @params  image location real
 */
declare function SetImagePositionBJ(whichImage: image, where: location, zOffset: number): void;

/**
 * 改变图像颜色
 * 设置 ${Image} 的颜色值为(${Red}%, ${Green}%, ${Blue}%) 透明度为 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  image real real real real
 */
declare function SetImageColorBJ(whichImage: image, red: number, green: number, blue: number, alpha: number): void;

/**
 * 最后创建的图像
 * 最后创建的图像
 * 最后一个使用'图像 - 创建'动作创建的图像.
 * @return image
 */
declare function GetLastCreatedImage(): image;

/**
 * 创建地面纹理
 * 创建地面纹理变化
 * 创建一个地面纹理变化在 ${指定点} ,使用图像: ${Type} 颜色值:(${Red}%, ${Green}%, ${Blue}%) 透明度${Transparency}% (${Enable/Disable} 暂停状态, ${Enble/Disable} 跳过出生动画)
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的. 使用'地面纹理变化 - 设置永久渲染状态' 来显示创建的纹理变化. 暂停状态表示动画播放完毕后是否继续保留该纹理变化.
 * @params  location ubersplattype real real real real allowdontoption allowdontoption
 */
declare function CreateUbersplatBJ(where: location, name: string, red: number, green: number, blue: number, alpha: number, forcePaused: boolean, noBirthTime: boolean): ubersplat;

/**
 * 显示/隐藏地面纹理
 * 显示/隐藏 地面纹理变化
 * ${Show/Hide} ${Ubersplat}
 * @params  showhideoption ubersplat
 */
declare function ShowUbersplatBJ(flag: boolean, whichSplat: ubersplat): void;

/**
 * 最后创建的地面纹理
 * 最后创建的地面纹理变化
 * 最后创建的地面纹理变化
 * 最后一个使用'地面纹理 - 创建'动作创建的纹理变化.
 * @return ubersplat
 */
declare function GetLastCreatedUbersplat(): ubersplat;

/**
 * 播放声音
 * 播放音效
 * 播放 ${音效}
 * 音效不能在地图初始化时播放. 注意3D音效必须指定地点播放.
 * @params  sound
 */
declare function PlaySoundBJ(soundHandle: sound): void;

/**
 * 停止声音
 * 停止音效
 * 停止播放 ${音效} ${After Fading/Immediately}
 * @params  sound fadedontoption
 */
declare function StopSoundBJ(soundHandle: sound, fadeOut: boolean): void;

/**
 * 设置声音音量
 * 设置音效音量
 * 设置 ${音效} 的音量为 ${Volume}%
 * @params  sound real
 */
declare function SetSoundVolumeBJ(soundHandle: sound, volumePercent: number): void;

/**
 * 跳跃播放声音
 * 设置音效播放时间点
 * 设置播放时间点为 ${Offset} 秒对 ${音效}
 * 音效必须是正在播放的. 不能用于3D音效.
 * @params  real sound
 */
declare function SetSoundOffsetBJ(newOffset: number, soundHandle: sound): void;

/**
 * 设置声音距离
 * 设置声音截断距离
 * 设置 ${音效} 的截断距离为 ${数值}
 * 地图距离,玩家镜头距离音源超过该范围则切断声音.
 * @params  sound real
 */
declare function SetSoundDistanceCutoffBJ(soundHandle: sound, cutoff: number): void;

/**
 * 设置声音定调
 * 设置声音速率
 * 设置 ${音效} 的速率为 ${数值}
 * 表示正常速率的倍数.
 * @params  sound real
 */
declare function SetSoundPitchBJ(soundHandle: sound, pitch: number): void;

/**
 * 设置3D声音位置
 * 设置3D音效位置(指定点)
 * 设置 ${3D音效} 的播放位置为 ${指定点} Z轴高度为 ${Z}
 * 该动作仅用于3D音效.
 * @params  sound location real
 */
declare function SetSoundPositionLocBJ(soundHandle: sound, loc: location, z: number): void;

/**
 * 捆绑3D声音到单位
 * 绑定单位
 * 将 ${3D音效} 绑定到 ${单位}
 * 该动作仅用于3D音效.
 * @params  sound unit
 */
declare function AttachSoundToUnitBJ(soundHandle: sound, whichUnit: unit): void;

declare function SetSoundConeAnglesBJ(soundHandle: sound, inside: number, outside: number, outsideVolumePercent: number): void;

/**
 * 破坏声音
 * 删除音效
 * 删除 ${音效}
 * 如果音效正在播放则在播放结束时删除.
 * @params  sound
 */
declare function KillSoundWhenDoneBJ(soundHandle: sound): void;

/**
 * 播放声音在点
 * 播放3D音效(指定点)
 * 播放 ${3D音效} ,音量: ${Volume}% 播放位置: ${指定点} Z轴高度: ${Z}
 * 音效不能在地图初始化时播放. 该动作只能用于播放3D音效.
 * @params  sound real location real
 */
declare function PlaySoundAtPointBJ(soundHandle: sound, volumePercent: number, loc: location, z: number): void;

/**
 * 播放声音单位
 * 播放3D音效(跟随单位)
 * 播放 ${3D音效} ,音量: ${Volume}%, 跟随单位: ${目标单位}
 * 音效不能在地图初始化时播放. 该动作只能用于播放3D音效.
 * @params  sound real unit
 */
declare function PlaySoundOnUnitBJ(soundHandle: sound, volumePercent: number, whichUnit: unit): void;

/**
 * 播放声音 有等待时间
 * 跳播音效
 * 播放 ${音效},音量: ${Volume}%,跳过开始 ${Offset} 秒
 * 音效不能在地图初始化时播放.该动作不能用于3D音效.
 * @params  sound real real
 */
declare function PlaySoundFromOffsetBJ(soundHandle: sound, volumePercent: number, startingOffset: number): void;

/**
 * 播放音乐
 * 播放背景音乐
 * 播放 ${背景音乐}
 * @params  musicfile
 */
declare function PlayMusicBJ(musicFileName: string): void;

/**
 * 播放音乐(跳跃)
 * 跳播背景音乐
 * 播放 ${背景音乐} ,跳过开始 ${Offset} 秒,淡入时间: ${Fade Time} 秒
 * @params  musicfile real real
 */
declare function PlayMusicExBJ(musicFileName: string, startingOffset: number, fadeInTime: number): void;

/**
 * 跳越音乐
 * 设置背景音乐播放时间点
 * 设置当前背景音乐的播放时间点为 ${Offset} 秒
 * @params  real
 */
declare function SetMusicOffsetBJ(newOffset: number): void;

/**
 * 播放主题音乐
 * 播放 ${Music Theme} 主题音乐
 * 播放主题音乐一次,然后恢复原来的音乐.
 * @params  musictheme
 */
declare function PlayThematicMusicBJ(musicName: string): void;

/**
 * 播放主题音乐(跳跃)
 * 跳播主题音乐
 * 播放 ${Music Theme} 主题音乐,跳过开始 ${Offset} 秒
 * 播放主题音乐一次,然后恢复原来的音乐.
 * @params  musictheme real
 */
declare function PlayThematicMusicExBJ(musicName: string, startingOffset: number): void;

/**
 * 跳越音乐主题曲
 * 设置主题音乐播放时间点
 * 设置当前主题音乐播放时间点为 ${Offset} 秒
 * @params  real
 */
declare function SetThematicMusicOffsetBJ(newOffset: number): void;

/**
 * 停放主题曲
 * 停止主题音乐
 * 停止正在播放的主题音乐
 * @params  nothing
 */
declare function EndThematicMusicBJ(): void;

/**
 * 停止音乐
 * 停止背景音乐
 * 停止背景音乐 ${After Fading/Immediately}
 * @params  fadedontoption
 */
declare function StopMusicBJ(fadeOut: boolean): void;

/**
 * 继续音乐
 * 恢复背景音乐
 * 恢复背景音乐
 * @params  nothing
 */
declare function ResumeMusicBJ(): void;

/**
 * 设置音乐音量
 * 设置背景音乐音量
 * 设置背景音乐音量为 ${Volume}%
 * @params  real
 */
declare function SetMusicVolumeBJ(volumePercent: number): void;

declare function SetThematicMusicVolumeBJ(volumePercent: number): void;

/**
 * 声音长度
 * 音效长度
 * ${音效} 的长度
 * 单位为秒.
 * @params  sound
 * @return real
 */
declare function GetSoundDurationBJ(soundHandle: sound): number;

/**
 * 音乐长度
 * ${音乐} 的长度
 * 单位为秒.
 * @params  musicfile
 * @return real
 */
declare function GetSoundFileDurationBJ(musicFileName: string): number;

/**
 * 最后播放的声音
 * 最后播放的音效
 * 最后播放的音效
 * 最后一个由'声音 - 播放音效'或'电影 - 播放单位消息'动作播放的音效.
 * @return sound
 */
declare function GetLastPlayedSound(): sound;

/**
 * 最后播放的音乐
 * 最后播放的音乐
 * 最后一个由'声音 - 播放音乐'动作播放的音乐.
 * @return musicfile
 */
declare function GetLastPlayedMusic(): string;

/**
 * 设置音量
 * 设置多通道音量
 * 设置 ${Volume Channel} 的音量为 ${Volume}%
 * @params  volumegroup real
 */
declare function VolumeGroupSetVolumeBJ(vgroup: volumegroup, percent: number): void;

/**
 * 设置电影多通道音量环境(立即)
 */
declare function SetCineModeVolumeGroupsImmediateBJ(): void;

/**
 * 将所有音量设置为动画
 */
/**
 * Delay the request if it occurs at map init.
 * 设置电影多通道音量环境
 * 设置多通道音量为电影模式
 * @params  nothing
 */
declare function SetCineModeVolumeGroupsBJ(): void;

/**
 * 设置语音多通道音量环境(立即)
 */
declare function SetSpeechVolumeGroupsImmediateBJ(): void;

/**
 * 将所有音量设置为说话
 */
/**
 * Delay the request if it occurs at map init.
 * 设置语音多通道音量环境
 * 设置多通道音量为语音模式
 * 语音模式即电影的播送单位消息功能.
 * @params  nothing
 */
declare function SetSpeechVolumeGroupsBJ(): void;

/**
 * 重置多通道音量(立即)
 */
declare function VolumeGroupResetImmediateBJ(): void;

/**
 * 重置所有音量
 */
/**
 * Delay the request if it occurs at map init.
 * 重置多通道音量
 * 重置所有通道音量为预设值.
 * @params  nothing
 */
declare function VolumeGroupResetBJ(): void;

/**
 * 获取声音是否播放中
 */
declare function GetSoundIsPlayingBJ(soundHandle: sound): boolean;

/**
 * 等待声音结束
 * 等待(声音结束)
 * 等待直到 ${Sound} 在 ${Time} 秒后结束播放.
 * 该功能只对于当前播放的3D-音效有效. 如果该音效未播放或已经结束, 则该功能无效.
 * @params  sound real
 */
declare function WaitForSoundBJ(soundHandle: sound, offset: number): void;

/**
 * 设置音乐列表 (使用指定的开始音乐)
 * 设置背景音乐列表(指定播放)
 * 设置背景音乐列表为: ${Music} ,播放序号: ${Index}
 * 可指定播放文件或播放目录.
 * @params  musicfile integer
 */
declare function SetMapMusicIndexedBJ(musicName: string, index: number): void;

/**
 * 设定音乐列表 (使用随机的开始音乐)
 * 设置背景音乐列表(随机播放)
 * 设置背景音乐列表为: ${Music} ,随机播放
 * 可指定播放文件或播放目录.
 * @params  musicfile
 */
declare function SetMapMusicRandomBJ(musicName: string): void;

/**
 * 清空音乐列表
 * 清空背景音乐列表
 * 清空背景音乐列表
 * @params  nothing
 */
declare function ClearMapMusicBJ(): void;

/**
 * 添加/删除穿越区域的3维声音
 * 添加/删除区域音效
 * ${Add/Remove} ${3D音效} 到 ${地区}
 * 该动作仅用于3D音效.
 * @params  addremoveoption sound rect
 */
declare function SetStackedSoundBJ(add: boolean, soundHandle: sound, r: rect): void;

/**
 * 为指定玩家播放声音
 */
declare function StartSoundForPlayerBJ(whichPlayer: player, soundHandle: sound): void;

/**
 * 设置玩家声音组音量
 */
declare function VolumeGroupSetVolumeForPlayerBJ(whichPlayer: player, vgroup: volumegroup, scale: number): void;

/**
 * 打开/关闭 日出/日落 的声音
 * 允许/禁止昼夜交替音效
 * ${Enable/Disable} 昼夜交替音效
 * @params  enabledisableoption
 */
declare function EnableDawnDusk(flag: boolean): void;

/**
 * 是否启用了黎明和黄昏
 */
declare function IsDawnDuskEnabled(): boolean;

//***************************************************************************
//*
//*  Day/Night ambient sounds
//*
//***************************************************************************
/**
 * 使用白昼环境的音乐
 * 使用白天环境音效
 * 使用 ${Theme} 白天环境音效
 * @params  ambientthemeday
 */
declare function SetAmbientDaySound(inLabel: string): void;

/**
 * 使用夜晚环境的音乐
 * 使用夜晚环境音效
 * 使用 ${Theme} 夜晚环境音效
 * @params  ambientthemenight
 */
declare function SetAmbientNightSound(inLabel: string): void;

//***************************************************************************
//*
//*  Special Effect Utility Functions
//*
//***************************************************************************
/**
 * 对某点创造特殊效果
 * 创建特效(指定点)
 * 在 ${指定点} 创建特效: ${Model File}
 * @params  location modelfile
 */
declare function AddSpecialEffectLocBJ(where: location, modelName: string): effect;

/**
 * 对某单位创造特殊效果
 * 创建特效(绑定单位)
 * 创建并绑定特效到 ${Attachment Point} 对 ${单位} ,使用模型: ${Model File}
 * @params  string unit modelfile
 */
declare function AddSpecialEffectTargetUnitBJ(attachPointName: string, targetWidget: widget, modelName: string): effect;

/**
 * Two distinct trigger actions can't share the same function name, so this
 */
/**
 * dummy function simply mimics the behavior of an existing call.
 */
//
/**
 * Commented out - Destructibles have no attachment points.
 */
//
//function AddSpecialEffectTargetDestructableBJ takes string attachPointName, widget targetWidget, string modelName returns effect
/**
 * return AddSpecialEffectTargetUnitBJ(attachPointName, targetWidget, modelName)
 */
//endfunction
/**
 * Two distinct trigger actions can't share the same function name, so this
 */
/**
 * dummy function simply mimics the behavior of an existing call.
 */
//
/**
 * Commented out - Items have no attachment points.
 */
//
//function AddSpecialEffectTargetItemBJ takes string attachPointName, widget targetWidget, string modelName returns effect
/**
 * return AddSpecialEffectTargetUnitBJ(attachPointName, targetWidget, modelName)
 */

//endfunction
/**
 * 删除特殊效果
 * 删除特效
 * 删除 ${Special Effect}
 * @params  effect
 */
declare function DestroyEffectBJ(whichEffect: effect): void;

/**
 * 最后创建的特殊效果
 * 最后创建的特效
 * 最后创建的特效
 * 最后一个使用'特殊效果 - 创建特效'动作创建的效果.
 * @return effect
 */
declare function GetLastCreatedEffectBJ(): effect;

//***************************************************************************
//*
//*  Hero and Item Utility Functions
//*
//***************************************************************************
/**
 * 物品的位置
 * 物品位置
 * ${物品} 的位置
 * 会创建点.
 * @params  item
 * @return location
 */
declare function GetItemLoc(whichItem: item): location;

/**
 * 物品生命
 * 生命值
 * ${物品} 的当前生命值
 * @params  item
 * @return real
 */
declare function GetItemLifeBJ(whichWidget: widget): number;

/**
 * 设置生命(物品)
 * 设置物品生命值
 * 设置 ${物品} 的生命值为 ${Value}
 * @params  item real
 */
declare function SetItemLifeBJ(whichWidget: widget, life: number): void;

/**
 * 增加英雄经验值
 * 增加经验值
 * 增加 ${Quantity} 经验值给 ${Hero} , ${Show/Hide} 升级动画
 * 经验值不能倒退.
 * @params  integer unit showhideoption
 */
declare function AddHeroXPSwapped(xpToAdd: number, whichHero: unit, showEyeCandy: boolean): void;

/**
 * 设置英雄等级
 */
declare function SetHeroLevelBJ(whichHero: unit, newLevel: number, showEyeCandy: boolean): void;

/**
 * 降低单位技能等级
 * 降低技能等级
 * 降低 ${技能} 等级对 ${单位}
 * 改变死亡单位的光环技能会导致魔兽崩溃.
 * @params  abilcode unit
 */
declare function DecUnitAbilityLevelSwapped(abilcode: number, whichUnit: unit): number;

/**
 * 提升单位技能等级
 * 提升技能等级
 * 提升 ${技能} 等级对 ${单位}
 * 改变死亡单位的光环技能会导致魔兽崩溃.
 * @params  abilcode unit
 */
declare function IncUnitAbilityLevelSwapped(abilcode: number, whichUnit: unit): number;

/**
 * 设置单位技能等级
 * 设置技能等级
 * 设置 ${技能} 等级对 ${单位} 为 ${Level}
 * 改变死亡单位的光环技能会导致魔兽崩溃.
 * @params  abilcode unit integer
 */
declare function SetUnitAbilityLevelSwapped(abilcode: number, whichUnit: unit, level: number): number;

/**
 * 单位的技能等级
 * 单位技能等级
 * ${技能} 的等级对 ${单位}
 * 如果单位没有该技能,则返回0.
 * @params  abilcode unit
 * @return integer
 */
declare function GetUnitAbilityLevelSwapped(abilcode: number, whichUnit: unit): number;

/**
 * 单位存在 魔法特效
 * 拥有魔法效果
 * ${单位} 拥有 ${魔法效果}
 * @params  unit buffcode
 * @return boolean
 */
declare function UnitHasBuffBJ(whichUnit: unit, buffcode: number): boolean;

/**
 * 删除 持续状态 (指定的)
 * 删除指定魔法效果
 * 删除 ${魔法效果} 从 ${单位}
 * @params  buffcode unit
 */
declare function UnitRemoveBuffBJ(buffcode: number, whichUnit: unit): boolean;

/**
 * 移动物品给英雄
 * 给予物品
 * 把 ${物品} 给 ${单位}
 * @params  item unit
 */
declare function UnitAddItemSwapped(whichItem: item, whichHero: unit): boolean;

/**
 * 创建物品给英雄
 */
/**
 * Create the item at the hero's feet first, and then give it to him.
 * 创建物品给英雄
 * 创建 ${物品类型} 给 ${单位}
 * @params  itemcode unit
 */
declare function UnitAddItemByIdSwapped(itemId: number, whichHero: unit): item;

/**
 * 掉落英雄的一个物品
 * 丢弃物品(指定物品)
 * 丢弃 ${物品} ,从 ${单位} 身上
 * 物品将被丢弃在英雄脚下.
 * @params  item unit
 */
declare function UnitRemoveItemSwapped(whichItem: item, whichHero: unit): void;

/**
 * Translates 0-based slot indices to 1-based slot indices.
 */

//
/**
 * 从英雄的物品栏位置中掉落物品
 * 丢弃物品(指定物品栏)
 * 丢弃物品栏中第 ${Index} 格的物品,从 ${单位} 身上
 * 如果物品存在则会被丢弃在英雄脚下.
 * @params  integer unit
 */
declare function UnitRemoveItemFromSlotSwapped(itemSlot: number, whichHero: unit): item;

/**
 * 创造物品
 * 创建
 * 创建 ${物品} 在 ${指定点}
 * @params  itemcode location
 */
declare function CreateItemLoc(itemId: number, loc: location): item;

/**
 * 最后创造的物品
 * 最后创建的物品
 * 最后创建的物品
 * 最后一个使用'物品 - 创建'或'英雄 - 创建物品给英雄'动作创建的物品.
 * @return item
 */
declare function GetLastCreatedItem(): item;

/**
 * 最后掉落的物品
 * 最后丢弃的物品
 * 最后丢弃的物品
 * 最后一个使用'英雄 - 丢弃物品'动作丢弃的物品.
 * @return item
 */
declare function GetLastRemovedItem(): item;

/**
 * 移动物品 (立刻)
 * 移动物品到指定点(立即)(指定点)
 * 移动 ${物品} 到 ${指定点}
 * @params  item location
 */
declare function SetItemPositionLoc(whichItem: item, loc: location): void;

/**
 * 学习英雄技能
 * 学习技能
 * 学习技能
 * 响应'学习技能'单位事件, 指代被学习的技能. 新函数在'技能'类别中.
 * @return heroskillcode
 */
declare function GetLearnedSkillBJ(): number;

/**
 * 允许/禁止 英雄获得经验值
 * 允许/禁止经验获取
 * ${Enable/Disable} ${Hero} 的经验获取
 * @params  enabledisableoption unit
 */
declare function SuspendHeroXPBJ(flag: boolean, whichHero: unit): void;

declare function SetPlayerHandicapDamageBJ(whichPlayer: player, handicapPercent: number): void;

declare function GetPlayerHandicapDamageBJ(whichPlayer: player): number;

declare function SetPlayerHandicapReviveTimeBJ(whichPlayer: player, handicapPercent: number): void;

declare function GetPlayerHandicapReviveTimeBJ(whichPlayer: player): number;

/**
 * 设置玩家英雄经验值预先获得
 * 设置经验获得率
 * 设置 ${Player} 的经验获得率为 ${Percent}%
 * @params  player real
 */
declare function SetPlayerHandicapXPBJ(whichPlayer: player, handicapPercent: number): void;

/**
 * 经验值比率
 * 经验增长率
 * ${Player} 的经验增长率
 * 百分比数值, 默认值为100.
 * @params  player
 * @return real
 */
declare function GetPlayerHandicapXPBJ(whichPlayer: player): number;

/**
 * 设置玩家生命百分比
 * 设置生命上限
 * 设置 ${Player} 的生命障碍为正常的 ${Percent}%
 * 生命上限影响玩家拥有单位的生命最大值. 生命之书并不受生命上限限制,所以对英雄血量可能会有偏差.
 * @params  player real
 */
declare function SetPlayerHandicapBJ(whichPlayer: player, handicapPercent: number): void;

/**
 * 经验值上限
 * 生命障碍
 * ${Player} 的生命障碍
 * 百分比数值, 默认值为100.
 * @params  player
 * @return real
 */
declare function GetPlayerHandicapBJ(whichPlayer: player): number;

/**
 * 英雄的属性
 * 英雄属性
 * ${Attribute} 对 ${英雄} (${Include/Exclude} 加成)
 * @params  herostat unit includeoption
 * @return integer
 */
declare function GetHeroStatBJ(whichStat: number, whichHero: unit, includeBonuses: boolean): number;

/**
 * 修改英雄属性
 */
/**
 * Ignore requests for negative hero stats.
 */
declare function SetHeroStat(whichHero: unit, whichStat: number, value: number): void;

/**
 * 改变英雄属性
 * 修改英雄属性
 * 修改 ${Attribute} 对 ${英雄} : ${Modify} ${Value} 点
 * @params  herostat unit modifymethod integer
 */
declare function ModifyHeroStat(whichStat: number, whichHero: unit, modifyMethod: number, value: number): void;

/**
 * 改变英雄技能点数
 * 修改剩余技能点
 * 修改 ${英雄} 的剩余技能点: ${Modify} ${Value} 点
 * @params  unit modifymethod integer
 */
declare function ModifyHeroSkillPoints(whichHero: unit, modifyMethod: number, value: number): boolean;

/**
 * 单位掉落的物品
 */

/**
 * 发布丢弃物品命令(指定坐标)
 */
/**
 * 单位掉落的物品
 */
declare function UnitDropItemPointBJ(whichUnit: unit, whichItem: item, x: number, y: number): boolean;

/**
 * 丢弃物品于指定点
 * 发布丢弃物品命令(指定点)
 * 命令 ${单位} 丢弃物品 ${物品} 到 ${指定点}
 * @params  unit item location
 * @return boolean
 */
declare function UnitDropItemPointLoc(whichUnit: unit, whichItem: item, loc: location): boolean;

/**
 * 放置物品于指定物品格
 * 移动物品到物品栏
 * 命令 ${单位} 移动 ${物品} 到物品栏第 ${Index} 格
 * 只有当单位持有该物品时才有效.
 * @params  unit item integer
 * @return boolean
 */
declare function UnitDropItemSlotBJ(whichUnit: unit, whichItem: item, slot: number): boolean;

/**
 * 将物品给予其它单位
 * 发布给予物品命令
 * 命令 ${单位} 把 ${物品} 给 ${单位}
 * @params  unit item unit
 * @return boolean
 */
declare function UnitDropItemTargetBJ(whichUnit: unit, whichItem: item, target: widget): boolean;

/**
 * Two distinct trigger actions can't share the same function name, so this
 */
/**
 * dummy function simply mimics the behavior of an existing call.
 */

//
/**
 * 对可毁坏物使用物品
 * 使用物品(对可破坏物)
 * 命令 ${单位} 使用 ${物品} ,目标: ${可破坏物}
 * @params  unit item destructable
 */
declare function UnitUseItemDestructable(whichUnit: unit, whichItem: item, target: widget): boolean;

/**
 * 对 点 使用物品
 * 使用物品(指定点)
 * 命令 ${单位} 使用 ${物品} ,目标点: ${指定点}
 * @params  unit item location
 */
declare function UnitUseItemPointLoc(whichUnit: unit, whichItem: item, loc: location): boolean;

/**
 * Translates 0-based slot indices to 1-based slot indices.
 */

//
/**
 * 英雄携带的物品
 * 单位持有物品
 * ${单位} 物品栏第 ${Index} 格的物品
 * 第一个单位格的位置为1.
 * @params  unit integer
 * @return item
 */
declare function UnitItemInSlotBJ(whichUnit: unit, itemSlot: number): item;

/**
 * Translates 0-based slot indices to 1-based slot indices.
 */

//
/**
 * 获取物品的类型
 * 物品在物品栏的序号 [C]
 * ${单位} 所持有的 ${物品类型} 的物品栏序号
 * 如果单位没有该类型的物品则返回0
 * @params  unit itemcode
 * @return integer
 */
declare function GetInventoryIndexOfItemTypeBJ(whichUnit: unit, itemId: number): number;

/**
 * 英雄携带的物品类型
 * 单位持有物品(指定类型)
 * ${单位} 所持有的 ${物品类型}
 * 注意：有多个相同物品时，只能获取第一个物品。
 * @params  unit itemcode
 * @return item
 */
declare function GetItemOfTypeFromUnitBJ(whichUnit: unit, itemId: number): item;

/**
 * 英雄已有 物品 - 类型
 * 持有物品(指定类型)
 * ${Hero} 拥有 ${物品类型}
 * @params  unit itemcode
 * @return boolean
 */
declare function UnitHasItemOfTypeBJ(whichUnit: unit, itemId: number): boolean;

/**
 * 单位物品的数量
 * 持有物品数量
 * ${单位} 所持有的物品数量
 * @params  unit
 * @return integer
 */
declare function UnitInventoryCount(whichUnit: unit): number;

/**
 * 物品栏容量
 * 物品栏格数
 * ${单位} 的物品栏格数
 * @params  unit
 * @return integer
 */
declare function UnitInventorySizeBJ(whichUnit: unit): number;

/**
 * 设置物品 无敌/可攻击
 * 设置物品无敌/可攻击
 * 设置 ${物品} ${Invulnerable/Vulnerable}
 * @params  item invulnerableoption
 */
declare function SetItemInvulnerableBJ(whichItem: item, flag: boolean): void;

/**
 * 设置英雄死亡后能否物品掉落
 * 设置物品死亡是否掉落
 * 设置 ${物品} ${Drop from/Stay with} 在持有者死亡时
 * @params  item droppableoption
 */
declare function SetItemDropOnDeathBJ(whichItem: item, flag: boolean): void;

/**
 * 设置物品能否丢弃
 * 设置物品可否丢弃
 * 设置${物品} ${Droppable/Undroppable}
 * 不可掉落物品在被捡起之后就不能移动和丢弃.(但可通过触发实现)
 * @params  item dropnodropoption
 */
declare function SetItemDroppableBJ(whichItem: item, flag: boolean): void;

/**
 * 改变物品的所有者
 * 改变物品所属玩家
 * 改变 ${物品} 的所属玩家为: ${Player} 并 ${Change/Retain Color}
 * 不是所有物品都能改变颜色. 所属玩家与持有者无关,默认为中立被动玩家.
 * @params  item player colorchangeoption
 */
declare function SetItemPlayerBJ(whichItem: item, whichPlayer: player, changeColor: boolean): void;

/**
 * 显示/隐藏 物品
 * ${Show/Hide} ${物品}
 * 只对在地面的物品有效,不会影响在物品栏中的物品. 单位通过触发得到一个隐藏物品时,会自动显示该物品.
 * @params  showhideoption item
 */
declare function SetItemVisibleBJ(show: boolean, whichItem: item): void;

/**
 * 物品是隐藏的
 * 物品隐藏
 * ${物品} 是隐藏的
 * 单位持有的物品也被认为是隐藏的. 建议使用物品可见=False来作判断.
 * @params  item
 * @return boolean
 */
declare function IsItemHiddenBJ(whichItem: item): boolean;

/**
 * 随机物品-所有类别
 * 随机物品类型
 * 等级 ${Level} 的随机物品类型
 * 该功能为ROC版函数,使用旧版等级作为参照对象. -1表示任何等级.
 * @params  integer
 * @return itemcode
 */
declare function ChooseRandomItemBJ(level: number): number;

/**
 * 随机物品-有类别
 * 随机物品类型(指定分类)
 * 等级 ${Level} 的随机 ${Class} 物品类型
 * 该功能为新版函数,使用新版等级作为参照对象. -1表示任何等级.
 * @params  integer itemtype
 * @return itemcode
 */
declare function ChooseRandomItemExBJ(level: number, whichType: itemtype): number;

/**
 * 随机的中立建筑物类型
 * 随机中立建筑类型
 * 随机中立建筑类型
 * @return unitcode
 */
declare function ChooseRandomNPBuildingBJ(): number;

/**
 * 随机的野生单位单位类型(有等级)
 * 随机中立单位类型
 * 一个等级 ${Level} 的随机中立单位类型
 * -1代表所有等级.
 * @params  integer
 * @return unitcode
 */
declare function ChooseRandomCreepBJ(level: number): number;

/**
 * 选取所有物品在 区域 做动作(单一的)
 * 选取矩形区域内物品做动作
 * 选取 ${矩形区域} 内所有物品 ${做动作}
 * 组动作中可使用'选取物品'来获取对应的物品. 区域内每个物品都会运行一次动作(包括隐藏物品,不包括单位身上的物品). 等待不能在组动作中运行.
 * @params  rect code
 */
declare function EnumItemsInRectBJ(r: rect, actionFunc: () => void): void;

/**
 * See GroupPickRandomUnitEnum for the details of this algorithm.
 */
//
/**
 * 矩形区域内随机物品(指定条件)
 */
/**
 * 随机物品在区域并匹配条件
 */
declare function RandomItemInRectBJEnum(): void;

/**
 * Picks a random item from within a rect, matching a condition
 */

//
/**

 * 矩形区域内随机物品(指定条件)
 * ${矩形区域} 内满足 ${条件} 的一个随机物品
 * 使用'匹配物品'来指代条件中用于比较的物品.
 * @params  rect boolexpr
 * @return item
 */
declare function RandomItemInRectBJ(r: rect, filter: boolexpr): item;

/**
 * Picks a random item from within a rect
 */

//
/**
 * 随机物品在区域
 * 矩形区域内随机物品
 * ${矩形区域} 内随机选取的一个物品
 * @params  rect
 * @return item
 */
declare function RandomItemInRectSimpleBJ(r: rect): item;

/**
 * 物品状态检查
 * ${物品} 是 ${Status} 的
 * @params  item itemstatus
 * @return boolean
 */
declare function CheckItemStatus(whichItem: item, status: number): boolean;

/**
 * 物品 - 类型 状态检查
 * 物品类型状态检查
 * ${物品类型} 是 ${Status} 的
 * @params  itemcode itemcodestatus
 * @return boolean
 */
declare function CheckItemcodeStatus(itemId: number, status: number): boolean;

//***************************************************************************
//*
//*  Unit Utility Functions
//*
//***************************************************************************
/**
 * 将单位类型转换为命令
 * 转换单位类型为命令ID
 * 转换 ${单位类型} 为命令ID
 * @params  unitcode
 * @return ordercode
 */
declare function UnitId2OrderIdBJ(unitId: number): number;

/**
 * 将单位类型转换为字符串
 * 转换字符串为单位类型
 * 转换 ${字符串} 为单位类型
 * @params  string
 * @return unitcode
 */
declare function String2UnitIdBJ(unitIdString: string): number;

/**
 * 将单位转换为字符串
 * 转换单位类型为字符串
 * 转换 ${单位类型} 为字符串
 * @params  unitcode
 * @return string
 */
declare function UnitId2StringBJ(unitId: number): string;

/**
 * 将字符串转换为命令
 * 转换命令字符串为命令ID
 * 转换 ${字符串} 为命令ID
 * 如''harvest'', ''move'', ''smart'', ''attack''都是命令字符串.
 * @params  string
 * @return ordercode
 */
declare function String2OrderIdBJ(orderIdString: string): number;

/**
 * 将命令转换为字符串
 * 转换命令ID为字符串
 * 转换 ${Order} 为命令字符串
 * 如''harvest'', ''move'', ''smart'', ''attack''都是命令字符串.
 * @params  ordercode
 * @return string
 */
declare function OrderId2StringBJ(orderId: number): string;

/**
 * 发出的命令
 * 发布的命令ID
 * 发布的命令ID
 * 响应'发布命令'单位事件.
 * @return ordercode
 */
declare function GetIssuedOrderIdBJ(): number;

/**
 * 凶手单位
 * 凶手单位
 * 响应'死亡'单位事件. 如果不是被单位所杀(比如负数邪恶光环)则返回null.
 * @return unit
 */
declare function GetKillingUnitBJ(): unit;

/**
 * 新建单位(指定点)
 */
declare function CreateUnitAtLocSaveLast(id: player, unitid: number, loc: location, face: number): unit;

/**
 * 最后创建的单位
 * 最后创建的单位
 * 最后一个使用'单位 - 创建'动作创建的单位.
 * @return unit
 */
declare function GetLastCreatedUnit(): unit;

/**
 * 创造单位面对角度
 * 创建单位(面向角度)
 * 创建 ${Number} 个 ${单位} 给 ${Player} 在 ${指定点} ,面向角度为 ${Direction} 度
 * 面向角度采用角度制,0度为正东方向,90度为正北方向. 使用'最后创建的单位组'来获取创建的所有单位. 使用'最后创建的单位'来获取创建的单个单位.
 * @params  integer unitcode player location degree
 */
declare function CreateNUnitsAtLoc(count: number, unitId: number, whichPlayer: player, loc: location, face: number): group;

/**
 * 创造单位面对点
 * 创建单位(面向点)
 * 创建 ${Number} ${单位} 给 ${Player} 在 ${指定点} ,面向 ${指定点}
 * 使用'最后创建的单位组'来获取创建的所有单位. 使用'最后创建的单位'来获取创建的单个单位.
 * @params  integer unitcode player location location
 */
declare function CreateNUnitsAtLocFacingLocBJ(count: number, unitId: number, whichPlayer: player, loc: location, lookAt: location): group;

/**
 * 最后创建的单位组
 */
/**
 * 最后创建的单位组
 */
declare function GetLastCreatedGroupEnum(): void;

/**

 * 最后创建的单位组
 * 最后一批通过'单位 - 创建'动作创建的单位.
 * @return group
 */
declare function GetLastCreatedGroup(): group;

/**
 * 创造尸体
 * 创建尸体
 * 创建一个 ${单位} 的尸体给 ${Player} 在 ${指定点}
 * 不是所有单位都有尸体形态. 使用'最后创建的单位'来获取该尸体.
 * @params  unitcode player location
 */
declare function CreateCorpseLocBJ(unitid: number, whichPlayer: player, loc: location): unit;

/**
 * 设置尸体腐烂方式
 * 暂停尸体腐烂
 * ${Suspend/Resume} 尸体腐烂对 ${单位}
 * 只对已完成死亡动作的尸体有效.
 * @params  suspendresumeoption unit
 */
declare function UnitSuspendDecayBJ(suspend: boolean, whichUnit: unit): void;

/**
 * 延迟挂衰变停止动画
 */
declare function DelayedSuspendDecayStopAnimEnum(): void;

/**
 * 延迟挂衰变停止动画骨骼
 */
declare function DelayedSuspendDecayBoneEnum(): void;

/**
 * Game code explicitly sets the animation back to "decay bone" after the
 */

/**
 * initial corpse fades away, so we reset it now.  It's best not to show
 */
/**
 * off corpses thus created until after this grace period has passed.
 */
//
declare function DelayedSuspendDecayFleshEnum(): void;

/**
 * Waits a short period of time to ensure that the corpse is decaying, and
 */
/**
 * then suspend the animation and corpse decay.
 */
//
declare function DelayedSuspendDecay(): void;

declare function DelayedSuspendDecayCreate(): void;

/**
 * 创造永久的尸体
 * 创建永久性尸体
 * 创建一个 ${Style} ${单位} 尸体给 ${Player} 在 ${指定点} 面向角度为 ${Direction} 度
 * 肉态尸体经常会自动变为骨态尸体.
 * @params  corpsetype unitcode player location degree
 */
declare function CreatePermanentCorpseLocBJ(style: number, unitid: number, whichPlayer: player, loc: location, facing: number): unit;

/**
 * 单位属性
 * ${Property} 对于 ${单位}
 * @params  unitstate unit
 * @return real
 */
declare function GetUnitStateSwap(whichState: unitstate, whichUnit: unit): number;

declare function GetUnitStatePercent(whichUnit: unit, whichState: unitstate, whichMaxState: unitstate): number;

/**
 * 生命值百分比
 * 生命百分比
 * ${单位} 的生命百分比
 * @params  unit
 * @return real
 */
declare function GetUnitLifePercent(whichUnit: unit): number;

/**
 * 魔法值百分比
 * 魔法百分比
 * ${单位} 的魔法百分比
 * @params  unit
 * @return real
 */
declare function GetUnitManaPercent(whichUnit: unit): number;

/**
 * 选定单位
 * 选择单位(所有玩家)
 * 命令所有玩家选择 ${单位}
 * 使玩家取消选择所有已选单位,并选择该单位.
 * @params  unit
 */
declare function SelectUnitSingle(whichUnit: unit): void;

/**
 * 选定单位组
 */
declare function SelectGroupBJEnum(): void;

/**

 * 选择单位组(所有玩家)
 * 命令所有玩家选择 ${单位组}
 * 使所有玩家取消选择所有单位,并选择单位组中最多12个单位.
 * @params  group
 */
declare function SelectGroupBJ(g: group): void;

/**
 * 添加选择单位(所有玩家)
 */
/**
 * 添加选择单位(所有玩家)
 * 命令所有玩家添加选择 ${单位}
 * @params  unit
 */
declare function SelectUnitAdd(whichUnit: unit): void;

/**
 * 清除单位选择
 * 取消选择单位(所有玩家)
 * 命令所有玩家取消选择 ${单位}
 * @params  unit
 */
declare function SelectUnitRemove(whichUnit: unit): void;

/**
 * 清除选定对玩家
 * 清空选择(指定玩家)
 * 清空 ${Player} 的选择
 * 使玩家取消选择所有已选单位.
 * @params  player
 */
declare function ClearSelectionForPlayer(whichPlayer: player): void;

/**
 * 选定单位对玩家
 * 选择单位(指定玩家)
 * 选择 ${单位} 对 ${Player}
 * 使玩家取消选择所有单位,并选择该单位.
 * @params  unit player
 */
declare function SelectUnitForPlayerSingle(whichUnit: unit, whichPlayer: player): void;

/**
 * 清除选定单位组对玩家
 * 选择单位组(指定玩家)
 * 选择 ${单位组} 对 ${Player}
 * 使玩家取消选择所有单位,并选择单位组中最多12个单位.
 * @params  group player
 */
declare function SelectGroupForPlayerBJ(g: group, whichPlayer: player): void;

/**
 * 增加单位到玩家的选定中
 * 添加选择单位(指定玩家)
 * 添加选择 ${单位} 对 ${Player}
 * 使玩家添加选择该单位.
 * @params  unit player
 */
declare function SelectUnitAddForPlayer(whichUnit: unit, whichPlayer: player): void;

/**
 * 清除单位的选定为玩家
 * 取消选择单位(指定玩家)
 * 取消选择 ${单位} 对 ${Player}
 * 使玩家取消选择该单位.
 * @params  unit player
 */
declare function SelectUnitRemoveForPlayer(whichUnit: unit, whichPlayer: player): void;

/**
 * 设置单位生命值 (数值)
 * 设置生命值(指定值)
 * 设置 ${单位} 的生命值为 ${Value}
 * @params  unit real
 */
declare function SetUnitLifeBJ(whichUnit: unit, newValue: number): void;

/**
 * 设置单位魔法值 (数值)
 * 设置魔法值(指定值)
 * 设置 ${单位} 的魔法值为 ${Value}
 * @params  unit real
 */
declare function SetUnitManaBJ(whichUnit: unit, newValue: number): void;

/**
 * 设置单位生命值 (百分比)
 * 设置生命值(百分比)
 * 设置 ${单位} 的生命值为 ${Percent}%
 * @params  unit real
 */
declare function SetUnitLifePercentBJ(whichUnit: unit, percent: number): void;

/**
 * 设置单位魔法值 (百分比)
 * 设置魔法值(百分比)
 * 设置 ${单位} 的魔法值为 ${Percent}%
 * @params  unit real
 */
declare function SetUnitManaPercentBJ(whichUnit: unit, percent: number): void;

/**
 * 单位是已死亡的
 * @deprecated see 这个底层只判断了生命值<=0 英雄可能死亡后生命值又大于0了 推荐使用UnitAlive 即判断生命值还判断了单位类型不是死亡的
 * 单位生命值不大于零
 * ${单位} 生命值不大于零
 * @params  unit
 * @return boolean
 */
declare function IsUnitDeadBJ(whichUnit: unit): boolean;

/**
 * 单位是活着的
 * @deprecated see 这个底层只判断了生命值<=0 英雄可能死亡后生命值又大于0了 推荐使用UnitAlive 即判断生命值还判断了单位类型不是死亡的
 * 单位生命值大于零
 * ${单位} 生命值大于零
 * @params  unit
 * @return boolean
 */
declare function IsUnitAliveBJ(whichUnit: unit): boolean;

/**
 * 单位组的单位是已死亡的
 */
declare function IsUnitGroupDeadBJEnum(): void;

/**
 * Returns true if every unit of the group is dead.
 */

//
/**
 * If the user wants the group destroyed, remember that fact and clear
 * 单位组中所有单位死亡
 * ${单位组} 中所有单位死亡
 * @params  group
 * @return boolean
 */
declare function IsUnitGroupDeadBJ(g: group): boolean;

/**
 * 单位组是空的
 */
declare function IsUnitGroupEmptyBJEnum(): void;

/**
 * Returns true if the group contains no units.
 */

//
/**
 * If the user wants the group destroyed, remember that fact and clear
 * 单位组为空
 * ${单位组} 为空
 * @params  group
 * @return boolean
 */
declare function IsUnitGroupEmptyBJ(g: group): boolean;

/**
 * 单位组的单位在区域
 */
declare function IsUnitGroupInRectBJEnum(): void;

/**
 * Returns true if every unit of the group is within the given rect.
 */

//
/**

 * 单位组中单位在矩形区域内
 * ${单位组} 中所有单位在 ${矩形区域} 内
 * @params  group rect
 * @return boolean
 */
declare function IsUnitGroupInRectBJ(g: group, r: rect): boolean;

/**
 * 单位被隐藏
 * 单位隐藏
 * ${单位} 处于隐藏状态
 * 可通过'单位 - 隐藏'动作来析藏单位. 运输机,灵魂之球,祭坛中的单位都被认为是隐藏状态.
 * @params  unit
 * @return boolean
 */
declare function IsUnitHiddenBJ(whichUnit: unit): boolean;

/**
 * 隐藏单位
 * 隐藏 ${单位}
 * 使用'单位 - 显示'来显示该单位. 隐藏单位不会被'区域内单位'所选取.
 * @params  unit
 */
declare function ShowUnitHide(whichUnit: unit): void;

/**
 * 显示单位
 */
/**
 * Prevent dead heroes from being unhidden.
 * 显示
 * 显示 ${单位}
 * 使用'单位 - 隐藏'来显示该单位. 隐藏单位不会被'区域内单位'所选取.
 * @params  unit
 */
declare function ShowUnitShow(whichUnit: unit): void;

declare function IssueHauntOrderAtLocBJFilter(): boolean;

declare function IssueHauntOrderAtLocBJ(whichPeon: unit, loc: location): boolean;

/**
 * 发送命令到 建造建筑
 * 发布建造命令(指定点)
 * 命令 ${单位} 建造 ${单位类型} 在 ${指定点}
 * @params  unit unitcode location
 * @return boolean
 */
declare function IssueBuildOrderByIdLocBJ(whichPeon: unit, unitId: number, loc: location): boolean;

/**
 * 发送命令到 训练兵种/升级建筑
 * 发布训练/升级命令
 * 命令 ${单位} 建造/升级为 ${单位类型}
 * 该升级是指A单位升级为B单位,而不是科技升级.
 * @params  unit unitcode
 * @return boolean
 */
declare function IssueTrainOrderByIdBJ(whichUnit: unit, unitId: number): boolean;

/**
 * 发送单位组命令到 训练兵种/升级建筑
 * 发布发布训练/升级命令
 * 命令 ${单位组} 训练/升级为 ${单位类型}
 * 最多只能对单位组中12个单位发布命令.
 * @params  group unitcode
 */
declare function GroupTrainOrderByIdBJ(g: group, unitId: number): boolean;

/**
 * 发送命令到 研究科技
 * 发布研究科技命令
 * 命令 ${单位} 研究 ${Tech-Type}
 * @params  unit techcode
 * @return boolean
 */
declare function IssueUpgradeOrderByIdBJ(whichUnit: unit, techId: number): boolean;

/**
 * 被攻击的单位
 * 被攻击单位
 * 被攻击单位
 * 响应'被攻击'单位事件.
 * @return unit
 */
declare function GetAttackedUnitBJ(): unit;

/**
 * 改变单位飞行高度
 * 改变 ${单位} 的飞行高度为 ${数值} ,变换速率: ${数值}
 * 飞行单位可以直接改变飞行高度. 其他单位通过添加/删除 替换为飞行单位的变身技能(如乌鸦形态)之后,也能改变飞行高度.
 * @params  unit real real
 */
declare function SetUnitFlyHeightBJ(whichUnit: unit, newHeight: number, rate: number): void;

/**
 * 改变单位转向速度
 * 改变单位转身速度
 * 改变 ${单位} 的转身速度为 ${Value}
 * 转身速度表示单位改变面向方向时的速度，数值(0-1)越小表示转身越慢，为0则无法转身。
 * @params  unit real
 */
declare function SetUnitTurnSpeedBJ(whichUnit: unit, turnSpeed: number): void;

/**
 * 改变单位头像视窗角度
 * 改变单位转向角度(角度制)
 * 改变 ${单位} 的转向角度为 ${数值} 度
 * 设置单位转身时的转向角度. 数值越大转向幅度越大. 大于360度的角将作为359度角处理.
 * @params  unit degree
 */
declare function SetUnitPropWindowBJ(whichUnit: unit, propWindow: number): void;

/**
 * 单位在头像窗口的角度 (当前)
 * 当前转向角度(角度制)
 * ${单位} 的当前转向角度
 * 单位转身时的转向角度. 数值越大转向幅度越大.
 * @params  unit
 * @return degree
 */
declare function GetUnitPropWindowBJ(whichUnit: unit): number;

/**
 * 单位在头像窗口的角度 (默认)
 * 默认转向角度
 * ${单位} 的默认转向角度
 * 单位转身时的转向角度. 数值越大转向幅度越大.
 * @params  unit
 * @return degree
 */
declare function GetUnitDefaultPropWindowBJ(whichUnit: unit): number;

/**
 * 改变单位混合时间
 * 改变 ${单位} 的混合时间为 ${数值}
 * 单位动画图像混合时间. 决定身体部件连接的快慢,比如攻击时手臂挥舞的速度. 默认值0.15,增大该值会导致动作僵硬化.
 * @params  unit real
 */
declare function SetUnitBlendTimeBJ(whichUnit: unit, blendTime: number): void;

/**
 * 设置感知敌人距离
 * 设置主动攻击范围
 * 设置 ${单位} 的主动攻击范围为 ${数值}
 * @params  unit real
 */
declare function SetUnitAcquireRangeBJ(whichUnit: unit, acquireRange: number): void;

/**
 * 设置单位睡眠(之在晚上)
 * 设置单位夜晚睡眠
 * 设置 ${单位} ${Sleep/Remain Awake} 在夜晚
 * 只对中立单位有效. 并不影响催眠魔法.
 * @params  unit sleepwakeoption
 */
declare function UnitSetCanSleepBJ(whichUnit: unit, canSleep: boolean): void;

/**
 * 单位晚上睡觉
 * 允许夜晚睡眠
 * ${单位} 会在夜晚进入睡眠
 * 中立生物才会睡眠.
 * @params  unit
 * @return boolean
 */
declare function UnitCanSleepBJ(whichUnit: unit): boolean;

/**
 * 设置单位醒来
 * 叫醒
 * 叫醒 ${单位}
 * 不影响催眠魔法效果.
 * @params  unit
 */
declare function UnitWakeUpBJ(whichUnit: unit): void;

/**
 * 单位正在睡觉
 * 正在睡眠
 * ${单位} 正在睡眠
 * 中立生物才会睡眠. 不包括催眠魔法.
 * @params  unit
 * @return boolean
 */
declare function UnitIsSleepingBJ(whichUnit: unit): boolean;

declare function WakePlayerUnitsEnum(): void;

declare function WakePlayerUnits(whichPlayer: player): void;

/**
 * 允许/禁止 所有野生单位夜间睡眠
 * 允许/禁止 中立生物睡眠
 * ${Enable/Disable} 中立生物睡眠
 * 只影响夜晚的睡眠. 不影响催眠魔法.
 * @params  enabledisableoption
 */
declare function EnableCreepSleepBJ(enable: boolean): void;

/**
 * 设置警报产生 打开/关闭
 * 设置警报开启/关闭
 * 设置警报对 ${单位} ${On/Off}
 * 只作用于建筑.
 * @params  unit onoffoption
 */
declare function UnitGenerateAlarms(whichUnit: unit, generate: boolean): boolean;

/**
 * 单位发出警报
 * 开启警报
 * ${单位} 处于开启警报状态
 * @params  unit
 * @return boolean
 */
declare function DoesUnitGenerateAlarms(whichUnit: unit): boolean;

/**
 * Pause all units
 */

/**
 * Pause all units
 */
/**
 * 暂停/恢复 所有单位
 */
declare function PauseAllUnitsBJEnum(): void;

/**
 * Pause all units
 * 暂停/恢复 所有单位
 * ${Pause/Unpause} 所有单位
 * 该动作只作用于当前存在于地图的单位. 对于之后创建或复活的单位并不会受到影响.
 * @params  pauseunpauseoption
 */
declare function PauseAllUnitsBJ(pause: boolean): void;

/**
 * 设置单位 暂停/恢复
 * ${Pause/Unpause} ${单位}
 * @params  pauseunpauseoption unit
 */
declare function PauseUnitBJ(pause: boolean, whichUnit: unit): void;

/**
 * 单位被暂停
 * 单位暂停
 * ${单位} 处于暂停状态
 * @params  unit
 * @return boolean
 */
declare function IsUnitPausedBJ(whichUnit: unit): boolean;

/**
 * 暂停/恢复 单位生命计时器
 * 暂停/恢复生命周期
 * ${Pause/Unpause} ${单位} 的生命周期
 * 只有召唤单位有生命周期.
 * @params  pauseunpauseoption unit
 */
declare function UnitPauseTimedLifeBJ(flag: boolean, whichUnit: unit): void;

/**
 * 设置单位生命计时器
 * 设置生命周期
 * 设置 ${Duration} 秒 ${Buff Type} 类型的生命周期对 ${单位}
 * @params  real timedlifebuffcode unit
 */
declare function UnitApplyTimedLifeBJ(duration: number, buffId: number, whichUnit: unit): void;

/**
 * 共享单位视野
 * 共享视野
 * ${Grant/Deny} 共享 ${单位} 的视野对 ${Player}
 * @params  sharedontoption unit player
 */
declare function UnitShareVisionBJ(share: boolean, whichUnit: unit, whichPlayer: player): void;

/**
 * 删除 持续状态
 * 删除魔法效果(指定类别)
 * 删除 ${Buff Type} 魔法效果从 ${单位}
 * @params  bufftype unit
 */
declare function UnitRemoveBuffsBJ(buffType: number, whichUnit: unit): void;

/**
 * 删除 持续状态 (按类型)
 * 删除魔法效果(详细类别)
 * 删除 ${Buff Type} ${Buff Resist} Buff从 ${单位}(${Include/Exclude} 生命周期, ${Include/Exclude} 光环)
 * buff性质选项第4项为无效选项, 仅为兼容而保留.
 * @params  buffpolarity buffresist unit includeoption includeoption
 */
declare function UnitRemoveBuffsExBJ(polarity: number, resist: number, whichUnit: unit, bTLife: boolean, bAura: boolean): void;

/**
 * 魔法效果/特殊效果 的数量
 * 拥有Buff数量
 * ${Buff Type} ${Buff Resist} Buff数量在 ${单位} 身上(${Include/Exclude} 生命周期, ${Include/Exclude} 光环)
 * @params  buffpolarity buffresist unit includeoption includeoption
 * @return integer
 */
declare function UnitCountBuffsExBJ(polarity: number, resist: number, whichUnit: unit, bTLife: boolean, bAura: boolean): number;

/**
 * 删除单位技能
 * 删除技能
 * 删除 ${技能} 从 ${单位}
 * @params  abilcode unit
 */
declare function UnitRemoveAbilityBJ(abilityId: number, whichUnit: unit): boolean;

/**
 * 增加单位技能
 * 添加技能
 * 添加 ${技能} 给 ${单位}
 * @params  abilcode unit
 */
declare function UnitAddAbilityBJ(abilityId: number, whichUnit: unit): boolean;

/**
 * 移除类别
 * 删除类别
 * 删除 ${Classification} 类别从 ${单位}
 * 并非所有类别都是可以删除的,建议使用新函数.
 * @params  unittype unit
 */
declare function UnitRemoveTypeBJ(whichType: unittype, whichUnit: unit): boolean;

/**
 * 添加类别
 * 添加 ${Classification} 类别到 ${单位}
 * 并非所有类别都是可以添加的,建议使用新函数.
 * @params  unittype unit
 */
declare function UnitAddTypeBJ(whichType: unittype, whichUnit: unit): boolean;

declare function UnitMakeAbilityPermanentBJ(permanent: boolean, abilityId: number, whichUnit: unit): boolean;

/**
 * 设置单位死亡方式
 * 设置死亡方式
 * 设置 ${单位} ${Explode/Die Normally} 在死亡时
 * @params  unit explodedontoption
 */
declare function SetUnitExplodedBJ(whichUnit: unit, exploded: boolean): void;

/**
 * 使单位爆炸而死
 * 使 ${单位} 爆炸而死
 * 爆炸死亡不会留下尸体.
 * @params  unit
 */
declare function ExplodeUnitBJ(whichUnit: unit): void;

/**
 * 传送单位
 * 运输单位
 * 运输单位
 * 响应'被装载'单位事件.指代作为载体的单位.
 * @return unit
 */
declare function GetTransportUnitBJ(): unit;

/**
 * 载入单位
 * 被装载单位
 * 被装载单位
 * 响应'被装载'单位事件.
 * @return unit
 */
declare function GetLoadedUnitBJ(): unit;

/**
 * 单位已经装载
 * 被指定单位装载
 * ${单位} 被 ${运输机} 装载中
 * @params  unit unit
 * @return boolean
 */
declare function IsUnitInTransportBJ(whichUnit: unit, whichTransport: unit): boolean;

/**
 * 单位正在被送
 * 被装载
 * ${单位} 被装载中
 * 被飞艇,船等有运输功能的单位装载.
 * @params  unit
 * @return boolean
 */
declare function IsUnitLoadedBJ(whichUnit: unit): boolean;

/**
 * 单位是隐形的
 * 单位是镜像
 * ${单位} 是镜像单位
 * @params  unit
 * @return boolean
 */
declare function IsUnitIllusionBJ(whichUnit: unit): boolean;

/**
 * This attempts to replace a unit with a new unit type by creating a new
 */
/**
 * unit of the desired type using the old unit's location, facing, etc.
 */

//
/**
 * 替换单位
 * 将 ${单位} 替换为 ${单位类型} 使用 ${Property Usage} 生命和魔法
 * 使用'最后替换的单位'来获取该单位. 如果是不死族金矿被替换,经常还会留下一个普通的金矿. 实际上就是创建加删除单位
 * @params  unit unitcode unitstatemethod
 */
declare function ReplaceUnitBJ(whichUnit: unit, newUnitId: number, unitStateMethod: number): unit;

/**
 * 最后替换的单位
 * 最后替换的单位
 * 最后一个使用'单位 - 替换'替换的单位.
 * @return unit
 */
declare function GetLastReplacedUnitBJ(): unit;

/**
 * 移动单位并改变面对角度 (立刻)
 * 移动单位面向角度(立即)
 * 立即移动 ${单位} 到 ${指定点} ,面向角度 ${Direction} 度
 * 建议使用'移动单位'+'设置面向角度'动作. 面向角度采用角度制,0度为正东方向,90度为正北方向.
 * @params  unit location degree
 */
declare function SetUnitPositionLocFacingBJ(whichUnit: unit, loc: location, facing: number): void;

/**
 * 移动单位并改变面对点 (立刻)
 * 移动单位面向点(立即)
 * 立即移动 ${单位} 到 ${指定点} ,并面向 ${指定点}
 * 建议使用'移动单位'+'设置面向角度'动作.
 * @params  unit location location
 */
declare function SetUnitPositionLocFacingLocBJ(whichUnit: unit, loc: location, lookAt: location): void;

/**
 * 增加 物品-类型 (到商店)
 * 添加物品(指定市场)
 * 添加 ${物品类型} 到 ${Marketplace} 并设置库存量: ${Count} 最大库存量: ${Max}
 * 只影响有'出售物品'技能的单位.
 * @params  itemcode unit integer integer
 */
declare function AddItemToStockBJ(itemId: number, whichUnit: unit, currentStock: number, stockMax: number): void;

/**
 * 增加 单位-类型 (到商店)
 * 添加单位(指定市场)
 * 添加 ${单位类型} 到 ${Marketplace} 并设置库存量: ${Count} 最大库存量: ${Max}
 * 只影响有'出售单位'技能的单位.
 * @params  unitcode unit integer integer
 */
declare function AddUnitToStockBJ(unitId: number, whichUnit: unit, currentStock: number, stockMax: number): void;

/**
 * 删除 物品-类型 (从商店)
 * 删除物品(指定市场)
 * 删除 ${物品类型} 从 ${Marketplace}
 * 只影响有'出售物品'技能的单位
 * @params  itemcode unit
 */
declare function RemoveItemFromStockBJ(itemId: number, whichUnit: unit): void;

/**
 * 删除 单位-类型 (从商店)
 * 删除单位(指定市场)
 * 删除 ${单位类型} 从 ${Marketplace}
 * 只影响有'出售单位'技能的单位.
 * @params  unitcode unit
 */
declare function RemoveUnitFromStockBJ(unitId: number, whichUnit: unit): void;

/**
 * 允许/禁止 使用人口
 * 允许/禁止 人口占用
 * ${Enable/Disable} ${单位} 的人口占用
 * @params  enabledisableoption unit
 */
declare function SetUnitUseFoodBJ(enable: boolean, whichUnit: unit): void;

/**
 * 伤害区域
 * 命令 ${单位} 在 ${Seconds} 秒后对半径为 ${Size} 圆心为 ${指定点} 的范围造成${Amount} 点伤害,攻击类型: ${AttackType} 伤害类型: ${DamageType}
 * 该动作不会打断单位动作. 由该动作伤害/杀死单位同样正常触发'受到伤害'和'死亡'单位事件.
 * @params  unit real real location real attacktype damagetype
 * @return boolean
 */
declare function UnitDamagePointLoc(whichUnit: unit, delay: number, radius: number, loc: location, amount: number, whichAttack: attacktype, whichDamage: damagetype): boolean;

/**
 * 伤害目标
 * 命令 ${单位} 对 ${Target} 造成 ${Amount} 点伤害,攻击类型: ${AttackType} 伤害类型: ${DamageType}
 * 该动作不会打断单位动作. 由该动作伤害/杀死单位同样正常触发'受到伤害'和'死亡'单位事件.
 * @params  unit unit real attacktype damagetype
 * @return boolean
 */
declare function UnitDamageTargetBJ(whichUnit: unit, target: unit, amount: number, whichAttack: attacktype, whichDamage: damagetype): boolean;

//***************************************************************************
//*
//*  Destructable Utility Functions
//*
//***************************************************************************
/**
 * 创造 可毁坏物
 * 创建可破坏物
 * 创建 ${可破坏物类型} 在 ${指定点} ,面向角度: ${Direction} 尺寸缩放: ${Scale} 样式: ${Variation}
 * 面向角度采用角度制,0度为正东方向,90度为正北方向. 使用'最后创建的可破坏物'来获取创建的物体.
 * @params  destructablecode location degree real integer
 */
declare function CreateDestructableLoc(objectid: number, loc: location, facing: number, scale: number, variation: number): destructable;

/**
 * 创造[可毁坏物](毁坏的)
 * 创建可破坏物(死亡)
 * 创建死亡的 ${可破坏物类型} 在 ${指定点} ,面向角度: ${Direction} 尺寸缩放: ${Scale} 样式: ${Variation}
 * 面向角度采用角度制,0度为正东方向,90度为正北方向. 使用'最后创建的可破坏物'来获取创建的物体.
 * @params  destructablecode location degree real integer
 */
declare function CreateDeadDestructableLocBJ(objectid: number, loc: location, facing: number, scale: number, variation: number): destructable;

/**
 * 最后创建的可毁坏物
 * 最后创建的可破坏物
 * 最后创建的可破坏物
 * 最后一个使用 '可破坏物 - 创建'动作创建的可破坏物.
 * @return destructable
 */
declare function GetLastCreatedDestructable(): destructable;

/**
 * 显示/隐藏 可毁坏物
 * ${Show/Hide} ${可破坏物}
 * 隐藏的可破坏物不被显示,但仍影响通行和视线.
 * @params  showhideoption destructable
 */
declare function ShowDestructableBJ(flag: boolean, d: destructable): void;

/**
 * 设置 无敌/可攻击
 * 设置无敌/可攻击
 * 设置 ${可破坏物} ${Invulnerable/Vulnerable}
 * @params  destructable invulnerableoption
 */
declare function SetDestructableInvulnerableBJ(d: destructable, flag: boolean): void;

/**
 * 可毁坏物是无敌的
 * 物件无敌
 * ${物件} 是无敌的
 * @params  destructable
 * @return boolean
 */
declare function IsDestructableInvulnerableBJ(d: destructable): boolean;

/**
 * 可毁坏物的位置
 * 可破坏物位置
 * ${可破坏物} 的位置
 * 会创建点.
 * @params  destructable
 * @return location
 */
declare function GetDestructableLoc(whichDestructable: destructable): location;

/**
 * 选取所有可毁坏物 在区域 做 动作(单一的)
 * 选取矩形区域内可破坏物做动作
 * 选取 ${矩形区域} 内所有可破坏物 ${做动作}
 * 组动作中可使用'选取的可破坏物'来获取对应的可破坏物. 每个可破坏物都会运行一次动作(包括死亡和隐藏的). 等待不能在组动作中运行.
 * @params  rect code
 */
declare function EnumDestructablesInRectAll(r: rect, actionFunc: () => void): void;

/**
 * 选取所有可毁坏物 在圆周 做 动作(单一的)
 */
declare function EnumDestructablesInCircleBJFilter(): boolean;

/**
 * 可毁坏物是死的
 * 可破坏物死亡
 * ${可破坏物} 是死亡的
 * @params  destructable
 * @return boolean
 */
declare function IsDestructableDeadBJ(d: destructable): boolean;

/**
 * 可毁坏物是活者的
 * 可破坏物存活
 * ${可破坏物} 是存活的
 * @params  destructable
 * @return boolean
 */
declare function IsDestructableAliveBJ(d: destructable): boolean;

/**
 * See GroupPickRandomUnitEnum for the details of this algorithm.
 */

//
/**
 * 区域的 随机可毁坏物 且匹配条件
 */
declare function RandomDestructableInRectBJEnum(): void;

/**
 * Picks a random destructable from within a rect, matching a condition
 */

//
/**

 * 矩形区域内的随机可破坏物(指定条件)
 * ${矩形区域} 内满足 ${条件} 的一个随机可破坏物
 * 使用'匹配的可破坏物'来指代条件中用于比较的可破坏物.
 * @params  rect boolexpr
 * @return destructable
 */
declare function RandomDestructableInRectBJ(r: rect, filter: boolexpr): destructable;

/**
 * Picks a random destructable from within a rect
 */

//
/**
 * 区域的 随机可毁坏物
 * 矩形区域内的随机可破坏物
 * ${矩形区域} 内随机选取一个可破坏物
 * @params  rect
 * @return destructable
 */
declare function RandomDestructableInRectSimpleBJ(r: rect): destructable;

/**
 * Enumerates within a rect, with a filter to narrow the enumeration down
 */
/**
 * objects within a circular area.
 */

//
/**

 * 选取指定点范围内可破坏物做动作
 * 选取 ${Radius} 范围以 ${指定点}为中心的区域内所有可破坏物 ${做动作}
 * 组动作中可使用'选取的可破坏物'来获取对应的可破坏物. 每个可破坏物都会运行一次动作(包括死亡和隐藏的). 等待不能在组动作中运行.
 * @params  real location code
 */
declare function EnumDestructablesInCircleBJ(radius: number, loc: location, actionFunc: () => void): void;

/**
 * 设置 可毁坏物 生命 (百分比)
 * 设置生命值(百分比)
 * 设置 ${可破坏物} 的生命值为 ${Percent}%
 * @params  destructable real
 */
declare function SetDestructableLifePercentBJ(d: destructable, percent: number): void;

/**
 * 设置 可毁坏物 最大生命
 * 设置最大生命值
 * 设置 ${可破坏物} 的最大生命值为 ${Value}
 * @params  destructable real
 */
declare function SetDestructableMaxLifeBJ(d: destructable, max: number): void;

/**
 * 打开/关闭/破坏门
 * 打开/关闭/破坏大门
 * ${Open/Close/Destroy} ${大门}
 * @params  gateoperation destructable
 */
declare function ModifyGateBJ(gateOperation: number, d: destructable): void;

/**
 * Determine the elevator's height from its occlusion height.
 */

//
/**
 * 升降机高度
 * ${升降机} 的高度
 * 可以使用'可破坏物 - 设置升降机高度'来设置升降机高度.
 * @params  destructable
 * @return integer
 */
declare function GetElevatorHeight(d: destructable): number;

/**
 * To properly animate an elevator, we must know not only what height we
 */
/**
 * want to change to, but also what height we are currently at.  This code
 */
/**
 * determines the elevator's current height from its occlusion height.
 */
/**
 * Arbitrarily changing an elevator's occlusion height is thus inadvisable.
 */

//
/**
 * 设置升降机高度
 * 设置 ${升降机} 的高度为 ${Height}
 * @params  destructable integer
 */
declare function ChangeElevatorHeight(d: destructable, newHeight: number): void;

/**
 * Grab the unit and throw his own coords in his face, forcing him to push
 */
/**
 * and shove until he finds a spot where noone will bother him.
 */
//
declare function NudgeUnitsInRectEnum(): void;

declare function NudgeItemsInRectEnum(): void;

/**
 * Nudge the items and units within a given rect ever so gently, so as to
 */

/**
 * encourage them to find locations where they can peacefully coexist with
 */
/**
 * pathing restrictions and live happy, fruitful lives.
 */
//
declare function NudgeObjectsInRect(nudgeArea: rect): void;

declare function NearbyElevatorExistsEnum(): void;

declare function NearbyElevatorExists(x: number, y: number): boolean;

declare function FindElevatorWallBlockerEnum(): void;

/**
 * This toggles pathing on or off for one wall of an elevator by killing
 */

/**
 * or reviving a pathing blocker at the appropriate location (and creating
 */
/**
 * the pathing blocker in the first place, if it does not yet exist).
 */
//
declare function ChangeElevatorWallBlocker(x: number, y: number, facing: number, open: boolean): void;

/**
 * 打开/关闭 升降机
 * 打开/关闭升降机墙壁
 * ${Open/Close} ${Walls} 对 ${升降机}
 * @params  elevatorwallop elevatorwalltype destructable
 */
declare function ChangeElevatorWalls(open: boolean, walls: number, d: destructable): void;

//***************************************************************************
//*
//*  Neutral Building Utility Functions
//*
//***************************************************************************
/**
 * 打开/关闭 传送门
 * 启用/禁用 传送门
 * ${Enable/Disable} ${传送门}
 * @params  enabledisableoption unit
 */
declare function WaygateActivateBJ(activate: boolean, waygate: unit): void;

/**
 * 传送门是允许的
 * 传送门激活
 * ${传送门} 处于激活状态
 * @params  unit
 * @return boolean
 */
declare function WaygateIsActiveBJ(waygate: unit): boolean;

/**
 * 设置传送门目的地
 * 设置传送门目的点
 * 设置 ${传送门} 的目的地为 ${Target}
 * @params  unit location
 */
declare function WaygateSetDestinationLocBJ(waygate: unit, loc: location): void;

/**
 * 传送门的目的地
 * 传送门目的地
 * ${传送门} 的目的地
 * 会创建点.
 * @params  unit
 * @return location
 */
declare function WaygateGetDestinationLocBJ(waygate: unit): location;

/**
 * 改变单位的小地图图标
 * 开启/关闭 小地图特殊标志
 * ${On/Off} ${单位} 的小地图特殊标志
 * 使用'中立建筑 - 设置小地图特殊标志'动作来设置显示的标志. 默认为中立建筑标志.
 * @params  onoffoption unit
 */
declare function UnitSetUsesAltIconBJ(flag: boolean, whichUnit: unit): void;

//***************************************************************************
//*
//*  UI Utility Functions
//*
//***************************************************************************
/**
 * 按下 UI 键
 * 强制按键
 * 命令 ${Player} 按下 ${Key} 键
 * @params  player string
 */
declare function ForceUIKeyBJ(whichPlayer: player, key: string): void;

/**
 * 取消 UI 键
 * 强制按Esc键
 * 命令 ${Player} 按下Esc键
 * @params  player
 */
declare function ForceUICancelBJ(whichPlayer: player): void;

//***************************************************************************
//*
//*  Group and Force Utility Functions
//*
//***************************************************************************
/**
 * If the user wants the group destroyed, remember that fact and clear
 * @deprecated 请使用GroupUtil.for  以减少内存泄漏
 */
declare function ForGroupBJ(whichGroup: group, callback: () => void): void;

/**
 * 增加单位到单位组
 * 添加单位
 * 添加 ${单位} 到 ${单位组}
 * 并不影响单位本身.
 * @params  unit group
 */
declare function GroupAddUnitSimple(whichUnit: unit, whichGroup: group): void;

/**
 * 清除单位从单位组
 * 移除单位
 * 把 ${单位} 从 ${单位组} 移除
 * 并不影响单位本身.
 * @params  unit group
 */
declare function GroupRemoveUnitSimple(whichUnit: unit, whichGroup: group): void;

/**
 * 增加单位组到单位组
 */
declare function GroupAddGroupEnum(): void;

/**
 * If the user wants the group destroyed, remember that fact and clear
 * @deprecated
 * 添加单位组
 * 添加 ${单位组} 内所有单位到 ${单位组}
 * 并不影响单位本身.
 * @params  group group
 */
declare function GroupAddGroup(sourceGroup: group, destGroup: group): void;

/**
 * 清除单位组从单位组
 */
declare function GroupRemoveGroupEnum(): void;

/**
 * If the user wants the group destroyed, remember that fact and clear
 * 移除单位组
 * 把 ${单位组} 中的单位从 ${单位组} 移除
 * 并不影响单位本身.
 * @params  group group
 */
declare function GroupRemoveGroup(sourceGroup: group, destGroup: group): void;

/**
 * 添加玩家到玩家组
 * 添加 ${Player} 到 ${玩家组}
 * 并不影响玩家本身.
 * @params  player force
 */
declare function ForceAddPlayerSimple(whichPlayer: player, whichForce: force): void;

/**
 * 删除玩家到玩家组
 * 移除玩家
 * 将 ${Player} 从 ${玩家组} 移除
 * 并不影响玩家本身.
 * @params  player force
 */
declare function ForceRemovePlayerSimple(whichPlayer: player, whichForce: force): void;

/**
 * Consider each unit, one at a time, keeping a "current pick".   Once all units
 */
/**
 * are considered, this "current pick" will be the resulting random unit.
 */
//
/**
 * The chance of picking a given unit over the "current pick" is 1/N, where N is
 */
/**
 * the number of units considered thusfar (including the current consideration).
 */

//
/**
 * 单位组里的随机单位
 */
declare function GroupPickRandomUnitEnum(): void;

/**
 * Picks a random unit from a group.
 */

//
/**
 * If the user wants the group destroyed, remember that fact and clear
 * 单位组中随机单位
 * ${单位组} 中随机选取的一个单位
 * @params  group
 * @return unit
 */
declare function GroupPickRandomUnit(whichGroup: group): unit;

/**
 * See GroupPickRandomUnitEnum for the details of this algorithm.
 */

//
/**
 * 玩家组里的随机玩家
 */
declare function ForcePickRandomPlayerEnum(): void;

/**
 * Picks a random player from a force.
 */

//
/**

 * 玩家组中随机玩家
 * ${玩家组} 中随机抽取的一名玩家.
 * @params  force
 * @return player
 */
declare function ForcePickRandomPlayer(whichForce: force): player;

declare function EnumUnitsSelected(whichPlayer: player, enumFilter: boolexpr, enumAction: () => void): void;

/**
 * 单位在区域中并匹配条件
 * 矩形区域内的单位(指定条件)
 * ${矩形区域} 内满足 ${条件} 的所有单位
 * 使用'匹配单位'指代条件中用于比较的单位. 会创建单位组.
 * @params  rect boolexpr
 * @return group
 */
declare function GetUnitsInRectMatching(r: rect, filter: boolexpr): group;

/**
 * 区域中的所有单位
 * 矩形区域内的单位
 * ${矩形区域} 内的所有单位
 * 会创建单位组.
 * @params  rect
 * @return group
 */
declare function GetUnitsInRectAll(r: rect): group;

/**
 * 玩家在区域中的单位
 */
declare function GetUnitsInRectOfPlayerFilter(): boolean;

/**

 * 矩形区域内的玩家单位
 * ${矩形区域} 内属于 ${Player} 的所有单位
 * 会创建单位组.
 * @params  rect player
 * @return group
 */
declare function GetUnitsInRectOfPlayer(r: rect, whichPlayer: player): group;

/**
 * 单位在圆周内匹配条件的
 * 圆范围内单位(指定条件)
 * 半径为 ${Radius} 圆心为 ${指定点} 且满足 ${条件} 的所有单位
 * 使用'匹配单位'指代条件中用于比较的单位. 会创建单位组.
 * @params  real location boolexpr
 * @return group
 */
declare function GetUnitsInRangeOfLocMatching(radius: number, whichLocation: location, filter: boolexpr): group;

/**
 * 圆周内的所有单位
 * 圆范围内单位
 * 半径为 ${Radius} 圆心为 ${指定点} 的圆范围内所有单位
 * 会创建单位组.
 * @params  real location
 * @return group
 */
declare function GetUnitsInRangeOfLocAll(radius: number, whichLocation: location): group;

/**
 * 某类型的单位
 */
declare function GetUnitsOfTypeIdAllFilter(): boolean;

/**

 * 所有指定类型单位
 * 所有 ${单位类型}
 * 会创建单位组.
 * @params  unitcode
 * @return group
 */
declare function GetUnitsOfTypeIdAll(unitid: number): group;

/**
 * 玩家拥有的单位匹配条件
 * 玩家单位(指定条件)
 * 属于 ${Player} 并满足 ${条件} 的所有单位
 * 使用'匹配单位'指代条件中用于比较的单位. 会创建单位组.
 * @params  player boolexpr
 * @return group
 */
declare function GetUnitsOfPlayerMatching(whichPlayer: player, filter: boolexpr): group;

/**
 * 玩家拥有的单位
 * 玩家单位
 * 属于 ${Player} 的所有单位
 * 会创建单位组.
 * @params  player
 * @return group
 */
declare function GetUnitsOfPlayerAll(whichPlayer: player): group;

/**
 * 玩家拥有的单位类型
 */
declare function GetUnitsOfPlayerAndTypeIdFilter(): boolean;

/**

 * 玩家单位(指定单位类型)
 * 属于 ${Player} 的所有 ${单位类型}
 * 会创建单位组.
 * @params  player unitcode
 * @return group
 */
declare function GetUnitsOfPlayerAndTypeId(whichPlayer: player, unitid: number): group;

/**
 * 选定的单位
 * 玩家选择单位
 * ${Player} 选择的所有单位
 * 不能用于触发条件. 会创建单位组.
 * @params  player
 * @return group
 */
declare function GetUnitsSelectedAll(whichPlayer: player): group;

/**
 * 将玩家转换为玩家组
 * 转换玩家为玩家组
 * 转换 ${Player} 为玩家组
 * 会创建玩家组.
 * @params  player
 * @return force
 */
declare function GetForceOfPlayer(whichPlayer: player): force;

/**
 * 所有玩家
 * 所有玩家
 * 包括未使用玩家和中立玩家.
 * @return force
 */
declare function GetPlayersAll(): force;

/**
 * 所有某种控制的玩家
 * 所有指定控制者的玩家
 * 所有 ${Control Type} 控制的玩家
 * 会创建玩家组.
 * @params  mapcontrol
 * @return force
 */
declare function GetPlayersByMapControl(whichControl: mapcontrol): force;

/**
 * 玩家联盟
 * 玩家的盟友
 * 所有 ${Player} 的联盟玩家
 * 需要双方互为联盟状态,包括自己,不包括中立玩家. 会创建玩家组.
 * @params  player
 * @return force
 */
declare function GetPlayersAllies(whichPlayer: player): force;

/**
 * 玩家的敌人
 * 所有 ${Player} 的敌对玩家
 * 对其敌对的所有玩家,不包括中立玩家. 会创建玩家组.
 * @params  player
 * @return force
 */
declare function GetPlayersEnemies(whichPlayer: player): force;

/**
 * 所有玩家匹配条件
 * 所有符合条件的玩家
 * 所有符合 ${条件} 的玩家
 * 使用'匹配玩家'指代条件中用于比较的玩家,包括未使用玩家和中立玩家. 会创建玩家组.
 * @params  boolexpr
 * @return force
 */
declare function GetPlayersMatching(filter: boolexpr): force;

/**
 * 单位组的单位数量
 */
declare function CountUnitsInGroupEnum(): void;

/**
 * If the user wants the group destroyed, remember that fact and clear
 * 单位组中单位数量
 * ${单位组} 中的单位数量
 * @params  group
 * @return integer
 */
declare function CountUnitsInGroup(g: group): number;

declare function CountPlayersInForceEnum(): void;

/**
 * 玩家组中的玩家数量
 * 玩家组中玩家数量
 * ${玩家组} 中的玩家数量
 * @params  force
 * @return integer
 */
declare function CountPlayersInForceBJ(f: force): number;

/**
 * 随机选 N 个单位在单位组中
 */
declare function GetRandomSubGroupEnum(): void;

/**

 * 单位组中随机单位
 * 随机获取 ${Count} 个单位从 ${单位组}
 * 会创建单位组.该函数不能使用设置 bj_wantDestroyGroup=true来清除group,会导致该动作无效.
 * @params  integer group
 * @return group
 */
declare function GetRandomSubGroup(count: number, sourceGroup: group): group;

declare function LivingPlayerUnitsOfTypeIdFilter(): boolean;

/**
 * 玩家活着的某类型单位的数量
 * 玩家拥有单位数量
 * ${单位类型} 的数量对 ${Player}
 * @params  unitcode player
 * @return integer
 */
declare function CountLivingPlayerUnitsOfTypeId(unitId: number, whichPlayer: player): number;

//***************************************************************************
//*
//*  Animation Utility Functions
//*
//***************************************************************************
/**
 * 重置单位动作
 * 重置单位动画
 * 重置 ${单位} 的动作,恢复到普通状态
 * 无论该单位在什么动作,都将把单位的动作恢复到普通状态(也就是'stand'动作的状态).
 * @params  unit
 */
declare function ResetUnitAnimation(whichUnit: unit): void;

/**
 * 改变单位动作速度
 * 改变单位动画播放速度(按百分比)
 * 改变 ${单位} 的动画播放速度为正常速度的 ${Percent}%
 * 设置100%动画播放速度来恢复正常状态.
 * @params  unit real
 */
declare function SetUnitTimeScalePercent(whichUnit: unit, percentScale: number): void;

/**
 * 改变单位尺寸
 * 改变单位尺寸(按比例)
 * 设置 ${Unit} 的缩放尺寸为 (${X}%, ${Y}%, ${Z}%)
 * 缩放尺寸使用(长,宽,高)格式.
 * @params  unit real real real
 */
declare function SetUnitScalePercent(whichUnit: unit, percentScaleX: number, percentScaleY: number, percentScaleZ: number): void;

/**
 * This version differs from the common.j interface in that the alpha value
 */
/**
 * is reversed so as to be displayed as transparency, and all four parameters
 */
/**
 * are treated as percentages rather than bytes.
 */

//
/**
 * 改变单位着色
 * 改变单位颜色(RGB:0-100%)
 * 改变 ${单位}  的颜色比例: (${Red}%, ${Green}%, ${Blue}%),透明度: ${Transparency}%
 * 颜色格式为(红,绿,蓝). 大多数单位使用100%的颜色值和0%透明度. 100%透明度是完全透明的.
 * @params  unit real real real real
 */
declare function SetUnitVertexColorBJ(whichUnit: unit, red: number, green: number, blue: number, transparency: number): void;

/**
 * 闪动指示器为了单位
 * 闪动指示器(对单位)
 * 对 ${单位} 闪动指示器,使用颜色(${Red}%, ${Green}%, ${Blue}%) 透明度 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  unit real real real real
 */
declare function UnitAddIndicatorBJ(whichUnit: unit, red: number, green: number, blue: number, transparency: number): void;

/**
 * 闪动指示器为了可毁坏物
 * 闪动指示器(对可破坏物)
 * 对 ${可破坏物} 闪动指示器,使用颜色(${Red}%, ${Green}%, ${Blue}%) 透明度 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  destructable real real real real
 */
declare function DestructableAddIndicatorBJ(whichDestructable: destructable, red: number, green: number, blue: number, transparency: number): void;

/**
 * 闪动指示器为了物品
 * 闪动指示器(对物品)
 * 对 ${物品} 闪动指示器,使用颜色(${Red}%, ${Green}%, ${Blue}%) 透明度 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  item real real real real
 */
declare function ItemAddIndicatorBJ(whichItem: item, red: number, green: number, blue: number, transparency: number): void;

/**
 * Sets a unit's facing to point directly at a location.
 */

//
/**
 * 设置单位面对点
 * 设置单位面向点
 * 设置 ${单位} 面向 ${点} ,使用时间 ${Time} 秒
 * @params  unit location real
 */
declare function SetUnitFacingToFaceLocTimed(whichUnit: unit, target: location, duration: number): void;

/**
 * Sets a unit's facing to point directly at another unit.
 */

//
/**
 * 设置单位面对单位
 * 设置单位面向单位
 * 设置 ${单位} 面向 ${目标单位} ,使用时间 ${Time} 秒
 * 只是面向当前单位所在点而已. 并不会因为单位位置改变而改变目标位置.
 * @params  unit unit real
 */
declare function SetUnitFacingToFaceUnitTimed(whichUnit: unit, target: unit, duration: number): void;

/**
 * 队列单位动作
 * 单位动画加入队列
 * 把 ${单位} 的 ${Animation Name} 动作添加到动作队列
 * 单位按队列中运作的先后顺序播放动作.
 * @params  unit string
 */
declare function QueueUnitAnimationBJ(whichUnit: unit, whichAnimation: string): void;

/**
 * 播放可毁坏物的动作
 * 播放可破坏物动画
 * 播放 ${可破坏物} 的 ${Animation Name} 动作
 * @params  destructable string
 */
declare function SetDestructableAnimationBJ(d: destructable, whichAnimation: string): void;

/**
 * 排列可毁坏物的动作
 * 将可破坏物动画加入队列
 * 将 ${可破坏物} 的 ${Animation Name} 动作加入队列
 * @params  destructable string
 */
declare function QueueDestructableAnimationBJ(d: destructable, whichAnimation: string): void;

/**
 * 改变可毁坏物动作速度
 * 改变可破坏物动画播放速度
 * 改变 ${可破坏物} 的动画播放速度为正常的 ${Percent}%
 * 设置100%动画播放速度来恢复正常状态.
 * @params  destructable real
 */
declare function SetDestAnimationSpeedPercent(d: destructable, percentScale: number): void;

//***************************************************************************
//*
//*  Dialog Utility Functions
//*
//***************************************************************************
/**
 * 显示/隐藏 对话框
 * ${Show/Hide} ${Dialog} 对 ${Player}
 * 对话框不能应用于地图初始化事件.
 * @params  showhideoption dialog player
 */
declare function DialogDisplayBJ(flag: boolean, whichDialog: dialog, whichPlayer: player): void;

/**
 * 改变 对话框 标题
 * 改变标题
 * 改变 ${Dialog} 的标题为 ${Title}
 * @params  dialog StringExt
 */
declare function DialogSetMessageBJ(whichDialog: dialog, message: string): void;

/**
 * 创造对话按钮
 * 添加对话按钮
 * 为 ${Dialog} 添加一个对话按钮,按钮标签为 ${Text}
 * 使用'最后创建的对话按钮'来获得创建的对话按钮.
 * @params  dialog StringExt
 */
declare function DialogAddButtonBJ(whichDialog: dialog, buttonText: string): button;

/**
 * 添加对话框按钮(有快捷键) [R]
 */
/**
 * 添加对话框按钮(有快捷键) [R]
 * 为 ${对话框} 添加一个按钮,按钮标题为: ${文字},快捷键为: ${HotKey}
 * 使用'最后创建的对话按钮'来获得创建的对话按钮.
 * @params  dialog StringExt hotkeyint
 */
declare function DialogAddButtonWithHotkeyBJ(whichDialog: dialog, buttonText: string, hotkey: number): button;

/**
 * 清除所有对话的标题和按钮
 * 清空
 * 清空 ${Dialog}
 * 清除对话框的标题和按钮.
 * @params  dialog
 */
declare function DialogClearBJ(whichDialog: dialog): void;

/**
 * 最后创建的对话按钮
 * 最后创建的对话框按钮
 * 最后创建的对话框按钮
 * 最后一个由'对话框 - 创建对话框按钮'动作创建的对话框按钮.
 * @return button
 */
declare function GetLastCreatedButtonBJ(): button;

/**
 * 事件响应: 单击对话按钮
 * 点击的对话框按钮
 * 点击的对话框按钮
 * 响应'对话框 - 点击对话框/按钮'事件.
 * @return button
 */
declare function GetClickedButtonBJ(): button;

/**
 * 事件响应 - 单击对话
 * 点击的对话框
 * 点击的对话框
 * 响应'对话框 - 点击对话框/按钮'事件.
 * @return dialog
 */
declare function GetClickedDialogBJ(): dialog;

//***************************************************************************
//*
//*  Alliance Utility Functions
//*
//***************************************************************************
/**
 * 设置联盟详细状态
 */
/**
 * Prevent players from attempting to ally with themselves.
 * 设置联盟状态(指定项目)
 * 命令 ${Player} 设置 ${Alliance Type} ${On/Off} 对 ${Player}
 * @params  player alliancetype onoffoption player
 */
declare function SetPlayerAllianceBJ(sourcePlayer: player, whichAllianceSetting: alliancetype, value: boolean, otherPlayer: player): void;

/**
 * Set all flags used by the in-game "Ally" checkbox.
 */
//
declare function SetPlayerAllianceStateAllyBJ(sourcePlayer: player, otherPlayer: player, flag: boolean): void;

/**
 * Set all flags used by the in-game "Shared Vision" checkbox.
 */
//
declare function SetPlayerAllianceStateVisionBJ(sourcePlayer: player, otherPlayer: player, flag: boolean): void;

/**
 * Set all flags used by the in-game "Shared Units" checkbox.
 */
//
declare function SetPlayerAllianceStateControlBJ(sourcePlayer: player, otherPlayer: player, flag: boolean): void;

/**
 * Set all flags used by the in-game "Shared Units" checkbox with the Full
 */
/**
 * Shared Unit Control feature enabled.
 */
//
declare function SetPlayerAllianceStateFullControlBJ(sourcePlayer: player, otherPlayer: player, flag: boolean): void;

/**
 * 设置联盟状态
 */
/**
 * Prevent players from attempting to ally with themselves.
 * 设置联盟状态
 * 命令 ${Player} 设置对 ${Player} 的联盟状态为 ${Alliance Setting}
 * @params  player player alliancesetting
 */
declare function SetPlayerAllianceStateBJ(sourcePlayer: player, otherPlayer: player, allianceState: number): void;

/**
 * Set the alliance states for an entire force towards another force.
 */

//
/**
 * 设置玩家组联盟状态
 * 设置联盟
 * 命令 ${Player} 设置对 ${Player} 的联盟状态为 ${Alliance Setting}
 * @params  force force alliancesetting
 */
declare function SetForceAllianceStateBJ(sourceForce: force, targetForce: force, allianceState: number): void;

/**
 * Test to see if two players are co-allied (allied with each other).
 */

//
/**
 * Players are considered to be allied with themselves.
 */
declare function PlayersAreCoAllied(playerA: player, playerB: player): boolean;

/**
 * Force (whichPlayer) AI player to share vision and advanced unit control
 */
/**
 * with all AI players of its allies.
 */

//
/**
 * 同队共享视野与单位控制权
 */
declare function ShareEverythingWithTeamAI(whichPlayer: player): void;

/**
 * Force (whichPlayer) to share vision and advanced unit control with all of his/her allies.
 */

//
/**

 * 共享视野和完全控制权
 * 设置 ${Player} 对盟友共享视野和完全控制权
 * 当玩家互相为盟友时才有效. 同时玩家也会获得其盟友的单位控制权.
 * @params  player
 */
declare function ShareEverythingWithTeam(whichPlayer: player): void;

/**
 * Creates a 'Neutral Victim' player slot.  This slot is passive towards all
 */
/**
 * other players, but all other players are aggressive towards him/her.
 */
//
declare function ConfigureNeutralVictim(): void;

/**
 * 设置玩家所有单位到中立受害者单位
 */
declare function MakeUnitsPassiveForPlayerEnum(): void;

/**
 * Change ownership for every unit of (whichPlayer)'s team to neutral passive.
 */

//
/**

 * 设置玩家单位为中立受害单位
 * 改变 ${Player} 所有单位为中立受害单位
 * 默认状态中立受害受所有玩家欺凌而不抵抗.
 * @params  player
 */
declare function MakeUnitsPassiveForPlayer(whichPlayer: player): void;

/**
 * Change ownership for every unit of (whichPlayer)'s team to neutral passive.
 */
//
declare function MakeUnitsPassiveForTeam(whichPlayer: player): void;

/**
 * Determine whether or not victory/defeat is disabled via cheat codes.
 */
//
declare function AllowVictoryDefeat(gameResult: playergameresult): boolean;

declare function EndGameBJ(): void;

declare function MeleeVictoryDialogBJ(whichPlayer: player, leftGame: boolean): void;

declare function MeleeDefeatDialogBJ(whichPlayer: player, leftGame: boolean): void;

declare function GameOverDialogBJ(whichPlayer: player, leftGame: boolean): void;

declare function RemovePlayerPreserveUnitsBJ(whichPlayer: player, gameResult: playergameresult, leftGame: boolean): void;

declare function CustomVictoryOkBJ(): void;

declare function CustomVictoryQuitBJ(): void;

declare function CustomVictoryDialogBJ(whichPlayer: player): void;

declare function CustomVictorySkipBJ(whichPlayer: player): void;

/**
 * 胜利
 * 游戏胜利
 * 设置 ${Player} 胜利(${Show/Skip} 胜利对话框, ${Show/Skip} 计分屏)
 * @params  player useskipoption useskipoption
 */
declare function CustomVictoryBJ(whichPlayer: player, showDialog: boolean, showScores: boolean): void;

declare function CustomDefeatRestartBJ(): void;

declare function CustomDefeatReduceDifficultyBJ(): void;

declare function CustomDefeatLoadBJ(): void;

declare function CustomDefeatQuitBJ(): void;

declare function CustomDefeatDialogBJ(whichPlayer: player, message: string): void;

/**
 * 游戏失败
 */
/**
 * 游戏失败
 * 设置 ${Player} 失败并显示失败信息: ${文字}
 * @params  player StringExt
 */
declare function CustomDefeatBJ(whichPlayer: player, message: string): void;

/**
 * 设置下一张地图
 * 设置下一关卡
 * 设置下一关卡为 ${Level}
 * 设置游戏结束后的下一关卡.
 * @params  string
 */
declare function SetNextLevelBJ(nextLevel: string): void;

/**
 * 显示/隐藏 得分屏幕
 * 显示/隐藏计分屏显示
 * ${Show/Hide} ${Player} 在计分屏的显示.
 * @params  showhideoption player
 */
declare function SetPlayerOnScoreScreenBJ(flag: boolean, whichPlayer: player): void;

//***************************************************************************
//*
//*  Quest Utility Functions
//*
//***************************************************************************
/**
 * 创建任务t
 * 创建一个 ${Quest Type} 任务,标题: ${文字} 任务说明: ${文字} 任务图标: ${Icon Path}
 * @params  questtypeoption StringExt StringExt imagefile
 */
declare function CreateQuestBJ(questType: number, title: string, description: string, iconPath: string): quest;

/**
 * 删除任务
 * 删除 ${Quest}
 * 被删除的任务将不再显示在任务列表.
 * @params  quest
 */
declare function DestroyQuestBJ(whichQuest: quest): void;

/**
 * 允许/禁止 任务
 * 启用/禁用任务
 * ${Enable/Disable} ${Quest}
 * 被禁用的任务将不会显示在任务列表.
 * @params  enabledisableoption quest
 */
declare function QuestSetEnabledBJ(enabled: boolean, whichQuest: quest): void;

/**
 * 改变任务标题
 * 设置任务标题
 * 设置 ${Quest} 的标题为 ${文字}
 * @params  quest StringExt
 */
declare function QuestSetTitleBJ(whichQuest: quest, title: string): void;

/**
 * 改变任务文本内容
 * 设置任务说明
 * 设置 ${Quest} 的任务说明为: ${文字}
 * @params  quest StringExt
 */
declare function QuestSetDescriptionBJ(whichQuest: quest, description: string): void;

/**
 * 设置任务为完成
 * 设置任务完成
 * 设置 ${Quest} ${Completed/Incomplete}
 * @params  quest completionoption
 */
declare function QuestSetCompletedBJ(whichQuest: quest, completed: boolean): void;

/**
 * 设置任务为失败
 * 设置任务失败
 * 设置 ${Quest} ${Failed/Not Failed}
 * @params  quest failureoption
 */
declare function QuestSetFailedBJ(whichQuest: quest, failed: boolean): void;

/**
 * 设置任务被发现
 * 设置 ${Quest} ${Discovered/Undiscovered}
 * @params  quest discoveredoption
 */
declare function QuestSetDiscoveredBJ(whichQuest: quest, discovered: boolean): void;

/**
 * 最后创建的任务
 * 最后创建的任务
 * 最后一个由'任务 - 创建任务'动作创建的任务.
 * @return quest
 */
declare function GetLastCreatedQuestBJ(): quest;

/**
 * 创建任务完成条件
 * 创建任务项目
 * 为 ${Quest} 创建一个任务项目: ${文字}
 * @params  quest StringExt
 */
declare function CreateQuestItemBJ(whichQuest: quest, description: string): questitem;

/**
 * 改变任务完成条件内容
 * 改变任务项目说明
 * 改变 ${Quest Requirement} 的说明为: ${文字}
 * @params  questitem StringExt
 */
declare function QuestItemSetDescriptionBJ(whichQuestItem: questitem, description: string): void;

/**
 * 设置任务完成条件为已完成
 * 设置任务项目完成
 * 设置 ${Quest Requirement} ${Completed/Incomplete}
 * @params  questitem completionoption
 */
declare function QuestItemSetCompletedBJ(whichQuestItem: questitem, completed: boolean): void;

/**
 * 最后创建的任务完成条件
 * 最后创建的任务项目
 * 最后创建的任务项目
 * 最后一个由'任务 - 创建任务项目'动作创建的任务项目.
 * @return questitem
 */
declare function GetLastCreatedQuestItemBJ(): questitem;

/**
 * 创建任务失败条件
 * 创建失败条件
 * 创建失败条件: ${文字}
 * 失败条件会在每个任务中显示.
 * @params  StringExt
 */
declare function CreateDefeatConditionBJ(description: string): defeatcondition;

/**
 * 删除失败条件
 * 删除 ${Defeat Condition}
 * 被删除的失败条件会从每个任务中移除.
 * @params  defeatcondition
 */
declare function DestroyDefeatConditionBJ(whichCondition: defeatcondition): void;

/**
 * 改变失败条件的内容
 * 改变失败条件说明
 * 改变 ${Defeat Condition} 的说明为: ${文字}
 * @params  defeatcondition StringExt
 */
declare function DefeatConditionSetDescriptionBJ(whichCondition: defeatcondition, description: string): void;

/**
 * 最后创建的任务失败条件
 * 最后创建的失败条件
 * 最后创建的失败条件
 * 最后一个由'任务 - 创建失败条件'动作创建的失败条件.
 * @return defeatcondition
 */
declare function GetLastCreatedDefeatConditionBJ(): defeatcondition;

/**
 * 使任务按钮发光
 * 闪动任务按钮
 * 闪动任务按钮
 * @params  nothing
 */
declare function FlashQuestDialogButtonBJ(): void;

/**
 * 任务消息
 * 发送任务信息
 * 对 ${玩家组} 发送 ${Quest Message Type} 信息: ${文字}
 * @params  force questmessagetype StringExt
 */
declare function QuestMessageBJ(f: force, messageType: number, message: string): void;

//***************************************************************************
//*
//*  Timer Utility Functions
//*
//***************************************************************************
/**
 * 开启计时器
 * 运行计时器
 * 运行 ${计时器}，模式: ${模式}，周期: ${时间} 秒
 * @params  timer periodicoption real
 */
declare function StartTimerBJ(t: timer, periodic: boolean, timeout: number): timer;

declare function CreateTimerBJ(periodic: boolean, timeout: number): timer;

declare function DestroyTimerBJ(whichTimer: timer): void;

/**
 * 暂停计时器r
 * 暂停/恢复 计时器
 * ${Pause/Resume} ${Timer}
 * @params  pauseresumeoption timer
 */
declare function PauseTimerBJ(pause: boolean, whichTimer: timer): void;

/**
 * 最后创建的计时器
 * 最后启用的计时器
 * 最后启用的计时器
 * 最后一个由'计时器 - 启用计时器'动作启用的计时器.
 * @return timer
 */
declare function GetLastCreatedTimerBJ(): timer;

/**
 * 创造计时器窗口
 * 创建计时器窗口
 * 为 ${计时器} 创建计时器窗口,标题: ${文字}
 * 计时器窗口不能在地图初始化时显示.
 * @params  timer StringExt
 */
declare function CreateTimerDialogBJ(t: timer, title: string): timerdialog;

/**
 * 删除计时器窗口
 * 删除 ${计时器窗口}
 * @params  timerdialog
 */
declare function DestroyTimerDialogBJ(td: timerdialog): void;

/**
 * 改变计时器窗口标题
 * 改变 ${Timer Window} 的标题为 ${Title}
 * @params  timerdialog StringExt
 */
declare function TimerDialogSetTitleBJ(td: timerdialog, title: string): void;

/**
 * 改变计时器标题颜色
 * 改变计时器窗口标题颜色
 * 改变 ${Timer Window} 的标题颜色为 (${红}%, ${绿}%, ${蓝}%) 透明度为 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  timerdialog real real real real
 */
declare function TimerDialogSetTitleColorBJ(td: timerdialog, red: number, green: number, blue: number, transparency: number): void;

/**
 * 改变计时器窗口时间颜色
 * 改变计时器窗口计时颜色
 * 改变 ${Timer Window} 的计时颜色为 (${红}%, ${绿}%, ${蓝}%) 透明度为 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  timerdialog real real real real
 */
declare function TimerDialogSetTimeColorBJ(td: timerdialog, red: number, green: number, blue: number, transparency: number): void;

/**
 * 改变计时器窗口速度
 */
declare function TimerDialogSetSpeedBJ(td: timerdialog, speedMultFactor: number): void;

/**
 * 显示/隐藏计时器窗口为玩家
 * 显示/隐藏 计时器窗口(指定玩家)
 * ${Show/Hide} ${计时器窗口} 应用于 ${Player}
 * 计时器窗口不能在地图初始化时显示.
 * @params  showhideoption timerdialog player
 */
declare function TimerDialogDisplayForPlayerBJ(show: boolean, td: timerdialog, whichPlayer: player): void;

/**
 * 显示/隐藏计时器窗口
 * 显示/隐藏 计时器窗口(所有玩家)
 * ${Show/Hide} ${计时器窗口}
 * 计时器窗口不能在地图初始化时显示.
 * @params  showhideoption timerdialog
 */
declare function TimerDialogDisplayBJ(show: boolean, td: timerdialog): void;

/**
 * 最后创建的计时器窗口
 * 最后创建的计时器窗口
 * 最后一个由'计时器 - 创建计时器窗口'动作创建的计时器窗口.
 * @return timerdialog
 */
declare function GetLastCreatedTimerDialogBJ(): timerdialog;

//***************************************************************************
//*
//*  Leaderboard Utility Functions
//*
//***************************************************************************
declare function LeaderboardResizeBJ(lb: leaderboard): void;

/**
 * 改变排行榜中玩家的 数值
 * 改变玩家分数
 * 设置 ${Player} 在 ${Leaderboard} 中的分数为: ${Value}
 * @params  player leaderboard integer
 */
declare function LeaderboardSetPlayerItemValueBJ(whichPlayer: player, lb: leaderboard, val: number): void;

/**
 * 改变排行榜中玩家 标签
 * 改变玩家名字
 * 设置 ${Player} 在 ${Leaderboard} 中的名字为 ${文字}
 * @params  player leaderboard StringExt
 */
declare function LeaderboardSetPlayerItemLabelBJ(whichPlayer: player, lb: leaderboard, val: string): void;

/**
 * 改变排行榜中玩家的 风格
 * 设置玩家显示样式
 * 设置 ${Player} 在 ${Leaderboard} 中的显示样式: ${Show/Hide} 名字, ${Show/Hide} 分数, ${Show/Hide} 图标
 * @params  player leaderboard showhideoption showhideoption showhideoption
 */
declare function LeaderboardSetPlayerItemStyleBJ(whichPlayer: player, lb: leaderboard, showLabel: boolean, showValue: boolean, showIcon: boolean): void;

/**
 * 改变排行榜中玩家的 标签颜色
 * 设置玩家名字颜色
 * 设置 ${Player} 在 ${Leaderboard} 中的名字颜色为(${Red}%, ${Green}%, ${Blue}%) 透明度为 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  player leaderboard real real real real
 */
declare function LeaderboardSetPlayerItemLabelColorBJ(whichPlayer: player, lb: leaderboard, red: number, green: number, blue: number, transparency: number): void;

/**
 * 改变排行榜中玩家的 数值颜色
 * 改变玩家分数颜色
 * 设置 ${Player} 在 ${Leaderboard} 中的分数颜色为(${Red}%, ${Green}%, ${Blue}%) 透明度为 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  player leaderboard real real real real
 */
declare function LeaderboardSetPlayerItemValueColorBJ(whichPlayer: player, lb: leaderboard, red: number, green: number, blue: number, transparency: number): void;

/**
 * 改变排行榜 标签颜色
 * 设置文字颜色
 * 设置 ${Leaderboard} 的文字颜色为(${Red}%, ${Green}%, ${Blue}%) 透明度为 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  leaderboard real real real real
 */
declare function LeaderboardSetLabelColorBJ(lb: leaderboard, red: number, green: number, blue: number, transparency: number): void;

/**
 * 改变排行榜 数值颜色
 * 设置数值颜色
 * 设置 ${Leaderboard} 的数值颜色为(${Red}%, ${Green}%, ${Blue}%) 透明度为 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  leaderboard real real real real
 */
declare function LeaderboardSetValueColorBJ(lb: leaderboard, red: number, green: number, blue: number, transparency: number): void;

/**
 * 改变排行榜标题
 * 设置标题
 * 设置 ${Leaderboard} 的标题为 ${文字}
 * @params  leaderboard StringExt
 */
declare function LeaderboardSetLabelBJ(lb: leaderboard, label: string): void;

/**
 * 改变排行榜风格
 * 设置显示样式
 * 设置 ${Leaderboard} 的显示样式: ${Show/Hide} 标题, ${Show/Hide} 文字, ${Show/Hide} 分数, ${Show/Hide} 图标
 * @params  leaderboard showhideoption showhideoption showhideoption showhideoption
 */
declare function LeaderboardSetStyleBJ(lb: leaderboard, showLabel: boolean, showNames: boolean, showValues: boolean, showIcons: boolean): void;

declare function LeaderboardGetItemCountBJ(lb: leaderboard): number;

/**
 * 排行榜包含玩家
 * 玩家在排行榜
 * ${Leaderboard} 中包含 ${Player}
 * @params  leaderboard player
 * @return boolean
 */
declare function LeaderboardHasPlayerItemBJ(lb: leaderboard, whichPlayer: player): boolean;

declare function ForceSetLeaderboardBJ(lb: leaderboard, toForce: force): void;

/**
 * 创建排行榜
 * 对 ${玩家组} 创建排行榜,使用标题: ${文字}
 * 排行榜不能在地图初始化时显示. 标题为空则不显示标题栏.
 * @params  force StringExt
 */
declare function CreateLeaderboardBJ(toForce: force, label: string): leaderboard;

/**
 * 删除排行榜
 * 删除 ${排行榜}
 * @params  leaderboard
 */
declare function DestroyLeaderboardBJ(lb: leaderboard): void;

/**
 * 显示/隐藏 排行榜
 * ${Show/Hide} ${排行榜}
 * 排行榜不能在地图初始化时显示.
 * @params  showhideoption leaderboard
 */
declare function LeaderboardDisplayBJ(show: boolean, lb: leaderboard): void;

/**
 * 在排行榜中增加玩家
 * 添加玩家
 * 添加 ${Player} 到 ${Leaderboard} ,使用名字: ${文字} 设置分数: ${Value}
 * @params  player leaderboard StringExt integer
 */
declare function LeaderboardAddItemBJ(whichPlayer: player, lb: leaderboard, label: string, value: number): void;

/**
 * 在排行榜中删除玩家
 * 移除玩家
 * 把 ${Player} 从 ${Leaderboard} 移除
 * @params  player leaderboard
 */
declare function LeaderboardRemovePlayerItemBJ(whichPlayer: player, lb: leaderboard): void;

/**
 * 排行榜分类
 * 排序
 * 将 ${排行榜} 按 ${Field} 使用 ${Ascending/Descending} 排列
 * @params  leaderboard leaderboardsortoption ascendingoption
 */
declare function LeaderboardSortItemsBJ(lb: leaderboard, sortType: number, ascending: boolean): void;

declare function LeaderboardSortItemsByPlayerBJ(lb: leaderboard, ascending: boolean): void;

declare function LeaderboardSortItemsByLabelBJ(lb: leaderboard, ascending: boolean): void;

/**
 * 排行榜位置
 * ${Player} 在 ${Leaderboard} 的排名
 * @params  player leaderboard
 * @return integer
 */
declare function LeaderboardGetPlayerIndexBJ(whichPlayer: player, lb: leaderboard): number;

/**
 * Returns the player who is occupying a specified position in a leaderboard.
 */
/**
 * The position parameter is expected in the range of 1..16.
 */

//
/**
 * 玩家在排行榜中第N位
 * 玩家所在排行榜位置
 * 第 ${Position} 位玩家在 ${Leaderboard} 中
 * @params  integer leaderboard
 * @return player
 */
declare function LeaderboardGetIndexedPlayerBJ(position: number, lb: leaderboard): player;

/**
 * 玩家排行榜
 * 玩家使用的排行榜
 * ${Player} 使用的排行榜
 * 每个玩家只能使用1个排行榜.
 * @params  player
 * @return leaderboard
 */
declare function PlayerGetLeaderboardBJ(whichPlayer: player): leaderboard;

/**
 * 最后创建的排行榜
 * 最后创建的排行榜
 * 最后一个由'排行榜 - 创建排行榜'动作创建的排行榜.
 * @return leaderboard
 */
declare function GetLastCreatedLeaderboard(): leaderboard;

//***************************************************************************
//*
//*  Multiboard Utility Functions
//*
//***************************************************************************
/**
 * 创建 多列面板
 * 创建一个列数为 ${Columns} 行数为 ${Rows} 标题为 ${文字} 的多面板
 * 多面板不能在地图初始化时显示.
 * @params  integer integer StringExt
 */
declare function CreateMultiboardBJ(cols: number, rows: number, title: string): multiboard;

/**
 * 删除 多列面板
 * 删除 ${Multiboard}
 * @params  multiboard
 */
declare function DestroyMultiboardBJ(mb: multiboard): void;

/**
 * 最后创建的 多列面板
 * 最后创建的多面板
 * 最后创建的多面板
 * 最后一个由'多面板 - 创建多面板'动作创建的多面板.
 * @return multiboard
 */
declare function GetLastCreatedMultiboard(): multiboard;

/**
 * 显示/隐藏 多列面板
 * ${Show/Hide} ${Multiboard}
 * 多面板不能在地图初始化时显示.
 * @params  showhideoption multiboard
 */
declare function MultiboardDisplayBJ(show: boolean, mb: multiboard): void;

/**
 * 最大化/最小化 多列面板
 * 最大/最小化
 * ${Minimize/Maximize} ${Multiboard}
 * 最小化的多面板只显示标题.
 * @params  minimizeoption multiboard
 */
declare function MultiboardMinimizeBJ(minimize: boolean, mb: multiboard): void;

/**
 * 改变 多列面板 标题颜色
 * 设置标题颜色
 * 设置 ${Multiboard} 的标题颜色为(${Red}%, ${Green}%, ${Blue}%) 透明度为 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  multiboard real real real real
 */
declare function MultiboardSetTitleTextColorBJ(mb: multiboard, red: number, green: number, blue: number, transparency: number): void;

/**
 * 显示/隐藏 所有 多列面板
 * 显示/隐藏多面板模式
 * ${Show/Hide} 多面板模式
 * 隐藏多面板模式将无法显示多面板.
 * @params  showhideoption
 */
declare function MultiboardAllowDisplayBJ(flag: boolean): void;

/**
 * 设置多列面板项目显示风格
 * 设置项目显示风格
 * 设置 ${Multiboard} 第 ${Column} 列,第 ${Row} 行项目的显示风格: ${Show/Hide} 文字 ${Show/Hide} 图标
 * 可以设置行/列数为0来指代所有的行/列.
 * @params  multiboard integer integer showhideoption showhideoption
 */
declare function MultiboardSetItemStyleBJ(mb: multiboard, col: number, row: number, showValue: boolean, showIcon: boolean): void;

/**
 * 设置多列面板项目文本
 * 设置项目文本
 * 设置 ${Multiboard} 第 ${Column} 列,第 ${Row} 行的项目文本为 ${文字}
 * 可以设置行/列数为0来指代所有的行/列.
 * @params  multiboard integer integer StringExt
 */
declare function MultiboardSetItemValueBJ(mb: multiboard, col: number, row: number, val: string): void;

/**
 * 设置多列面板项目颜色
 * 设置项目颜色
 * 设置 ${Multiboard} 第 ${Column} 列,第 ${Row} 行的项目颜色为(${Red}%, ${Green}%, ${Blue}%) 透明度为 ${Transparency}%
 * 可以设置行/列数为0来指代所有的行/列. 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  multiboard integer integer real real real real
 */
declare function MultiboardSetItemColorBJ(mb: multiboard, col: number, row: number, red: number, green: number, blue: number, transparency: number): void;

/**
 * 设置多列面板项目宽度
 * 设置项目宽度
 * 设置 ${Multiboard} 第 ${Column} 列,第 ${Row} 行的项目宽度为屏幕的 ${Width}%
 * @params  multiboard integer integer real
 */
declare function MultiboardSetItemWidthBJ(mb: multiboard, col: number, row: number, width: number): void;

/**
 * 设置项目图标
 * 设置 ${Multiboard} 第 ${Column} 列,第 ${Row} 行的项目图标为 ${Icon File}
 * @params  multiboard integer integer imagefile
 */
declare function MultiboardSetItemIconBJ(mb: multiboard, col: number, row: number, iconFileName: string): void;

//***************************************************************************
//*
//*  Text Tag Utility Functions
//*
//***************************************************************************
/**
 * Scale the font size linearly such that size 10 equates to height 0.023.
 */
/**
 * Screen-relative font heights are harder to grasp and than font sizes.
 */
//
declare function TextTagSize2Height(size: number): number;

/**
 * Scale the speed linearly such that speed 128 equates to 0.071.
 */
/**
 * Screen-relative speeds are hard to grasp.
 */
//
declare function TextTagSpeed2Velocity(speed: number): number;

/**
 * 改变漂浮文字颜色
 * 改变颜色
 * 改变 ${Floating Text} 的颜色为(${Red}%, ${Green}%, ${Blue}%) 透明度为 ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  texttag real real real real
 */
declare function SetTextTagColorBJ(tt: texttag, red: number, green: number, blue: number, transparency: number): void;

/**
 * 设置漂浮文字速度
 * 设置速率
 * 设置 ${Floating Text} 的移动速率为 ${Speed} ,方向为 ${Angle} 度
 * 对移动后的漂浮文字设置速率,该漂浮文字会先回到原点再向设定的角度移动. 方向采用角度制,0度为正东方向,90度为正北方向.
 * @params  texttag real degree
 */
declare function SetTextTagVelocityBJ(tt: texttag, speed: number, angle: number): void;

/**
 * 改变漂浮文字内容
 * 改变文字内容
 * 改变 ${Floating Text} 的内容为 ${文字} ,字体大小: ${Size}
 * @params  texttag StringExt real
 */
declare function SetTextTagTextBJ(tt: texttag, s: string, size: number): void;

/**
 * 改变漂浮文字位置到指定点
 * 改变位置(点)
 * 改变 ${Floating Text} 的位置为 ${指定点} ,Z轴高度为 ${Z}
 * @params  texttag location real
 */
declare function SetTextTagPosBJ(tt: texttag, loc: location, zOffset: number): void;

/**
 * 改变漂浮文字位置到指定单位
 * 改变位置(单位)
 * 改变 ${Floating Text} 的位置到 ${单位} 头顶Z轴偏移 ${Z} 处
 * @params  texttag unit real
 */
declare function SetTextTagPosUnitBJ(tt: texttag, whichUnit: unit, zOffset: number): void;

/**
 * 暂停/继续漂浮文字
 * 暂停/恢复
 * 设置 ${Floating Text} : ${Enable/Disable} 暂停状态
 * 暂停状态暂停漂浮文字的移动和生命计时.
 * @params  texttag enabledisableoption
 */
declare function SetTextTagSuspendedBJ(tt: texttag, flag: boolean): void;

/**
 * 永久存在/允许过期
 * 设置永久显示
 * 设置 ${Floating Text} : ${Enable/Disable} 永久显示.
 * @params  texttag enabledisableoption
 */
declare function SetTextTagPermanentBJ(tt: texttag, flag: boolean): void;

/**
 * 改变漂浮文字已存在时间
 * 设置已存在时间
 * 设置 ${Floating Text} 的已存在时间为 ${Time} 秒
 * 该动作并不影响永久性漂浮文字.
 * @params  texttag real
 */
declare function SetTextTagAgeBJ(tt: texttag, age: number): void;

/**
 * 改变漂浮文字存在时限
 * 设置显示时间
 * 设置 ${Floating Text} 的显示时间为 ${Time} 秒
 * 该动作并不影响永久性漂浮文字. 当显示时间到期时,系统会自动清除该漂浮文字.
 * @params  texttag real
 */
declare function SetTextTagLifespanBJ(tt: texttag, lifespan: number): void;

/**
 * 改变漂浮文字淡化点
 * 设置消逝时间点
 * 设置 ${Floating Text} 的消逝时间点为 ${Time} 秒
 * 该动作并不影响永久性漂浮文字. 当漂浮文字存在时间到达该值时会开始淡化消逝.
 * @params  texttag real
 */
declare function SetTextTagFadepointBJ(tt: texttag, fadepoint: number): void;

/**
 * 创建漂浮文字在 点
 * 创建漂浮文字(指定地点)
 * 创建漂浮文字: ${文字} 在 ${指定点},Z轴高度: ${Z} ,字体大小: ${Size} ,颜色值:(${Red}%, ${Green}%, ${Blue}%) ,透明度: ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  StringExt location real real real real real real
 */
declare function CreateTextTagLocBJ(s: string, loc: location, zOffset: number, size: number, red: number, green: number, blue: number, transparency: number): texttag;

/**
 * 创建漂浮文字在单位
 * 创建漂浮文字(指定单位)
 * 创建漂浮文字: ${文字} 在 ${单位}的头顶, Z轴偏移 ${Z},字体大小: ${Size} ,颜色值:(${Red}%, ${Green}%, ${Blue}%) ,透明度: ${Transparency}%
 * 该方式创建的漂浮文字并不会跟随单位一起移动.  颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  StringExt unit real real real real real real
 */
declare function CreateTextTagUnitBJ(s: string, whichUnit: unit, zOffset: number, size: number, red: number, green: number, blue: number, transparency: number): texttag;

/**
 * 删除漂浮文字
 * 删除 ${Floating Text}
 * 游戏最多允许存在100个漂浮文字,所以请及时删除不再使用的漂浮文字.
 * @params  texttag
 */
declare function DestroyTextTagBJ(tt: texttag): void;

/**
 * 显示/隐藏 漂浮文字
 * ${Show/Hide} ${Floating Text} 对 ${玩家组}
 * @params  showhideoption texttag force
 */
declare function ShowTextTagForceBJ(show: boolean, tt: texttag, whichForce: force): void;

/**
 * 最后创建的漂浮文字
 * 最后创建的漂浮文字
 * 最后一个由'漂浮文字 - 创建漂浮文字'动作创建的漂浮文字.
 * @return texttag
 */
declare function GetLastCreatedTextTag(): texttag;

//***************************************************************************
//*
//*  Cinematic Utility Functions
//*
//***************************************************************************
/**
 * 暂停游戏
 * 暂停游戏
 * @params  nothing
 */
declare function PauseGameOn(): void;

/**
 * 恢复游戏
 * 恢复游戏
 * @params  nothing
 */
declare function PauseGameOff(): void;

/**
 * 授予用户控制权
 * 启用玩家控制权(指定玩家组)
 * 启用 ${玩家组} 的控制权
 * @params  force
 */
declare function SetUserControlForceOn(whichForce: force): void;

/**
 * 禁止用户控制权
 * 禁用玩家控制权(指定玩家组)
 * 禁用 ${玩家组} 的控制权
 * @params  force
 */
declare function SetUserControlForceOff(whichForce: force): void;

/**
 * 信箱模式关
 * 信箱模式开启关闭(指定玩家组)
 * 对 ${玩家组} 关闭信箱模式,转换时间为 ${Duration} 秒
 * 关闭信箱模式,返回游戏界面.
 * @params  force real
 */
declare function ShowInterfaceForceOn(whichForce: force, fadeDuration: number): void;

/**
 * 信箱模式开
 * 信箱模式开启(指定玩家组)
 * 对 ${玩家组} 开启信箱模式,转换时间为 ${Duration} 秒
 * 使用电影镜头模式,隐藏游戏界面.
 * @params  force real
 */
declare function ShowInterfaceForceOff(whichForce: force, fadeDuration: number): void;

declare function PingMinimapForForce(whichForce: force, x: number, y: number, duration: number): void;

/**
 * 小地图闪光
 * 小地图信号(指定玩家组)
 * 对 ${玩家组} 发送小地图信号到 ${指定点} ,持续时间: ${Duration} 秒
 * @params  force location real
 */
declare function PingMinimapLocForForce(whichForce: force, loc: location, duration: number): void;

declare function PingMinimapForPlayer(whichPlayer: player, x: number, y: number, duration: number): void;

declare function PingMinimapLocForPlayer(whichPlayer: player, loc: location, duration: number): void;

declare function PingMinimapForForceEx(whichForce: force, x: number, y: number, duration: number, style: number, red: number, green: number, blue: number): void;

/**
 * 小地图闪光有颜色
 * 小地图信号(指定颜色)(指定玩家组)
 * 对 ${玩家组} 发送小地图信号到 ${指定点} ,持续时间: ${Duration} 秒,信号类型: ${Style} 信号颜色:(${Red}%, ${Green}%, ${Blue}%)
 * 颜色格式为(红,绿,蓝). 警告信号总是红色不可变.
 * @params  force location real minimappingstyle real real real
 */
declare function PingMinimapLocForForceEx(whichForce: force, loc: location, duration: number, style: number, red: number, green: number, blue: number): void;

/**
 * 允许/禁止 边界色彩
 * 允许/禁止 边界染色(指定玩家组)
 * ${Enable/Disable} 边界染色,应用于 ${玩家组}
 * 禁用边界染色时边界为普通地形,不显示为黑色,但仍是不可通行的.
 * @params  enabledisableoption force
 */
declare function EnableWorldFogBoundaryBJ(enable: boolean, f: force): void;

/**
 * 允许/禁止 闭合
 * 允许/禁止闭塞(指定玩家组)
 * ${Enable/Disable} 闭塞对 ${玩家组}
 * @params  enabledisableoption force
 */
declare function EnableOcclusionBJ(enable: boolean, f: force): void;

//***************************************************************************
//*
//*  Cinematic Transmission Utility Functions
//*
//***************************************************************************
/**
 * If cancelled, stop the sound and end the cinematic scene.
 */
//
declare function CancelCineSceneBJ(): void;

/**
 * Init a trigger to listen for END_CINEMATIC events and respond to them if
 */
/**
 * a cinematic scene is in progress.  For performance reasons, this should
 */

/**
 * only be called once a cinematic scene has been started, so that maps
 */
/**
 * lacking such scenes do not bother to register for these events.
 */
//
declare function TryInitCinematicBehaviorBJ(): void;

declare function SetCinematicSceneBJ(soundHandle: sound, portraitUnitId: number, color: playercolor, speakerTitle: string, text: string, sceneDuration: number, voiceoverDuration: number): void;

declare function GetTransmissionDuration(soundHandle: sound, timeType: number, timeVal: number): number;

declare function WaitTransmissionDuration(soundHandle: sound, timeType: number, timeVal: number): void;

declare function DoTransmissionBasicsXYBJ(unitId: number, color: playercolor, x: number, y: number, soundHandle: sound, unitName: string, message: string, duration: number): void;

/**
 * Display a text message to a Player Group with an accompanying sound,
 */
/**
 * portrait, speech indicator, and all that good stuff.
 */
/**
 * - Query duration of sound
 */
/**
 * - Play sound
 */
/**
 * - Display text message for duration
 */
/**
 * - Display animating portrait for duration
 */
/**
 * - Display a speech indicator for the unit
 */
/**
 * - Ping the minimap
 */

//
/**
 * 播送 单位消息
 * @deprecated 底层有使用等待 请使用计时器替代
 * 播送单位消息(指定单位)
 * 对 ${玩家组} 播送信息,发言单位: ${单位} 显示名字: ${文字} ,播放音效: ${音效} 显示信息: ${文字} 持续时间: ${Method} ${Time} 秒并 ${Wait/Don't Wait}
 * '没有声音'的持续时间为5秒. 等待表示其他动作需要等待信息播放完毕后才能运行.
 * @params  force unit StringExt sound StringExt addsettooption real waitdontoption
 */
declare function TransmissionFromUnitWithNameBJ(toForce: force, whichUnit: unit, unitName: string, soundHandle: sound, message: string, timeType: number, timeVal: number, wait: boolean): void;

//Make sure that the runtime unit type and the parameter are the same,
declare function PlayDialogueFromSpeakerEx(toForce: force, speaker: unit, speakerType: number, soundHandle: sound, timeType: number, timeVal: number, wait: boolean): boolean;

declare function PlayDialogueFromSpeakerTypeEx(toForce: force, fromPlayer: player, speakerType: number, loc: location, soundHandle: sound, timeType: number, timeVal: number, wait: boolean): boolean;

/**
 * This operates like TransmissionFromUnitWithNameBJ, but for a unit type
 */
/**
 * rather than a unit instance.  As such, no speech indicator is employed.
 */

//
/**
 * 播送 单位[类型]消息
 * @deprecated 底层有使用等待 请使用计时器替代
 * 播送单位消息(指定单位-类型)
 * 对 ${玩家组} 播送信息,发言单位: ${Player} 的 ${单位类型}  显示名字:  ${文字} 发言位置: ${指定点} 播放音效: ${音效} 显示信息: ${文字} 持续时间: ${Method} ${Time} 秒并 ${Wait/Don't Wait}
 * '没有声音'的持续时间为5秒. 等待表示其他动作需要等待信息播放完毕后才能运行.
 * @params  force player unitcode StringExt location sound StringExt addsettooption real waitdontoption
 */
declare function TransmissionFromUnitTypeWithNameBJ(toForce: force, fromPlayer: player, unitId: number, unitName: string, loc: location, soundHandle: sound, message: string, timeType: number, timeVal: number, wait: boolean): void;

/**
 * 最后 播送的 单位消息 的时间长度
 * 最后发言长度
 * 最后发言长度
 * 最后一次使用'电影 - 播送单位消息'动作的单位发言时间.
 * @return real
 */
declare function GetLastTransmissionDurationBJ(): number;

/**
 * 副标题显示超过
 * 字幕显示
 * ${On/Off} 电影字幕显示功能
 * 该功能和'游戏菜单-声音选项'中的字幕选项中有一项为开时即能够显示电影字幕.
 * @params  onoffoption
 */
declare function ForceCinematicSubtitlesBJ(flag: boolean): void;

//***************************************************************************
//*
//*  Cinematic Mode Utility Functions
//*
//***************************************************************************
/**
 * Makes many common UI settings changes at once, for use when beginning and
 */
/**
 * ending cinematic sequences.  Note that some affects apply to all players,
 */
/**
 * such as game speed.  This is unavoidable.
 */
/**
 * - Clear the screen of text messages
 */
/**
 * - Hide interface UI (letterbox mode)
 */
/**
 * - Hide game messages (ally under attack, etc.)
 */
/**
 * - Disable user control
 */
/**
 * - Disable occlusion
 */
/**
 * - Set game speed (for all players)
 */
/**
 * - Lock game speed (for all players)
 */
/**
 * - Disable black mask (for all players)
 */
/**
 * - Disable fog of war (for all players)
 */
/**
 * - Disable world boundary fog (for all players)
 */
/**
 * - Dim non-speech sound channels
 */
/**
 * - End any outstanding music themes
 */
/**
 * - Fix the random seed to a set value
 */
/**
 * - Reset the camera smoothing factor
 */
//
/**
 * 切换影片模式(时间)
 */
/**
 * If the game hasn't started yet, perform interface fades immediately
 * 电影模式(指定时间)
 * ${On/Off} 电影模式对 ${玩家组} ,转换时间为 ${Time} 秒
 * @params  onoffoption force real
 */
declare function CinematicModeExBJ(cineMode: boolean, forForce: force, interfaceFadeTime: number): void;

/**
 * 切换影片模式
 * 电影模式
 * ${On/Off} 电影模式对 ${玩家组}
 * @params  onoffoption force
 */
declare function CinematicModeBJ(cineMode: boolean, forForce: force): void;

//***************************************************************************
//*
//*  Cinematic Filter Utility Functions
//*
//***************************************************************************
/**
 * 显示/隐藏过滤器
 * 显示/隐藏 滤镜
 * ${Show/Hide} 滤镜
 * @params  showhideoption
 */
declare function DisplayCineFilterBJ(flag: boolean): void;

declare function CinematicFadeCommonBJ(red: number, green: number, blue: number, duration: number, tex: string, startTrans: number, endTrans: number): void;

declare function FinishCinematicFadeBJ(): void;

/**
 * Create a timer to end the cinematic fade.
 */
declare function FinishCinematicFadeAfterBJ(duration: number): void;

declare function ContinueCinematicFadeBJ(): void;

declare function ContinueCinematicFadeAfterBJ(duration: number, red: number, green: number, blue: number, trans: number, tex: string): void;

declare function AbortCinematicFadeBJ(): void;

/**
 * 淡化的过滤器
 * 淡入淡出滤镜
 * ${Fade Type} 使用 ${Duration} 秒时间,使用图片: ${Texture} 颜色值:(${Red}%, ${Green}%, ${Blue}%) 透明度: ${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  fadetypeoption real cinefiltertexture real real real real
 */
declare function CinematicFadeBJ(fadetype: number, duration: number, tex: string, red: number, green: number, blue: number, trans: number): void;

/**
 * 高级的过滤器
 * 高级滤镜
 * 持续时间: ${Duration} 秒,混合方式: ${Blending Method} 使用图片: ${Texture} 开始颜色值:(${Red}%, ${Green}%, ${Blue}%) 透明度: ${Transparency}% ,结束颜色值:(${Red}%, ${Green}%, ${Blue}%) 透明度:${Transparency}%
 * 颜色格式为(红,绿,蓝). 透明度100%是不可见的.
 * @params  real blendmode cinefiltertexture real real real real real real real real
 */
declare function CinematicFilterGenericBJ(duration: number, bmode: blendmode, tex: string, red0: number, green0: number, blue0: number, trans0: number, red1: number, green1: number, blue1: number, trans1: number): void;

//***************************************************************************
//*
//*  Rescuable Unit Utility Functions
//*
//***************************************************************************
/**
 * Rescues a unit for a player.  This performs the default rescue behavior,
 */
/**
 * including a rescue sound, flashing selection circle, ownership change,
 */
/**
 * and optionally a unit color change.
 */

//
/**
 * 营救单位
 * 营救 ${单位} ,改变所属为 ${Player} 并 ${Change/Retain Color}
 * @params  unit player colorchangeoption
 */
declare function RescueUnitBJ(whichUnit: unit, rescuer: player, changeColor: boolean): void;

declare function TriggerActionUnitRescuedBJ(): void;

/**
 * Attempt to init triggers for default rescue behavior.  For performance
 */

/**
 * reasons, this should only be attempted if a player is set to Rescuable,
 */
/**
 * or if a specific unit is thus flagged.
 */
//
declare function TryInitRescuableTriggersBJ(): void;

/**
 * Determines whether or not rescued units automatically change color upon
 */
/**
 * being rescued.
 */

//
/**
 * 安排营救单位行为
 * 设置营救颜色(单位)
 * 设置单位 ${Change/Retain Color} 当被营救时
 * 默认情况单位被营救时会改变颜色. 不影响已经被营救的单位.
 * @params  colorchangeoption
 */
declare function SetRescueUnitColorChangeBJ(changeColor: boolean): void;

/**
 * Determines whether or not rescued buildings automatically change color
 */
/**
 * upon being rescued.
 */
//
/**
 * 设置营救颜色(建筑)
 */
/**
 * 设置营救颜色(建筑)
 * 设置建筑 ${Change/Retain Color} 当被营救时
 * 默认建筑被营救时不会改变颜色. 不影响已经被营救的建筑.
 * @params  colorchangeoption
 */
declare function SetRescueBuildingColorChangeBJ(changeColor: boolean): void;

/**
 * 安排营救单位
 */
declare function MakeUnitRescuableToForceBJEnum(): void;

/**
 * Flag the unit as rescuable/unrescuable for the appropriate players.
 * 设置可否营救(对玩家组)
 * 设置 ${单位} ${Rescuable/Unrescuable} 对 ${玩家组}
 * @params  unit rescuableoption force
 */
declare function MakeUnitRescuableToForceBJ(whichUnit: unit, isRescuable: boolean, whichForce: force): void;

declare function InitRescuableBehaviorBJ(): void;

//***************************************************************************
//*
//*  Research and Upgrade Utility Functions
//*
//***************************************************************************
/**
 * 设置当前科技级别
 * 设置科技等级
 * 设置 ${科技} 的等级为 ${Level} 对 ${Player}
 * 科技等级不能倒退.
 * @params  techcode integer player
 */
declare function SetPlayerTechResearchedSwap(techid: number, levels: number, whichPlayer: player): void;

/**
 * 设置最高科技级别
 * 设置最大科技等级
 * 设置 ${科技} 的等级为 ${Level} 对 ${Player}
 * 科技等级不能倒退.
 * @params  techcode integer player
 */
declare function SetPlayerTechMaxAllowedSwap(techid: number, maximum: number, whichPlayer: player): void;

/**
 * 设置英雄 的训练限制
 * 限制英雄数量
 * 限制英雄数量为 ${Limit} 对 ${Player}
 * -1为无限制,0为不能生产.
 * @params  integer player
 */
declare function SetPlayerMaxHeroesAllowed(maximum: number, whichPlayer: player): void;

/**
 * 科技等级
 * 当前科技等级
 * ${科技} 的当前等级对 ${Player}
 * @params  techcode player
 * @return integer
 */
declare function GetPlayerTechCountSimple(techid: number, whichPlayer: player): number;

/**
 * 最大科技等级
 * ${科技} 的最大等级对 ${Player}
 * @params  techcode player
 * @return integer
 */
declare function GetPlayerTechMaxAllowedSwap(techid: number, whichPlayer: player): number;

/**
 * 允许/禁止 技能
 * 允许/禁用 技能
 * ${Enable/Disable} ${技能} 对 ${Player}
 * 设置玩家能否使用该技能.
 * @params  enabledisableoption abilcode player
 */
declare function SetPlayerAbilityAvailableBJ(avail: boolean, abilid: number, whichPlayer: player): void;

//***************************************************************************
//*
//*  Campaign Utility Functions
//*
//***************************************************************************
/**
 * 设置读取地图画面
 * 设置战役背景
 * 设置战役背景为 ${Campaign}
 * @params  campaignindex
 */
declare function SetCampaignMenuRaceBJ(campaignNumber: number): void;

/**
 * Converts a single campaign mission designation into campaign and mission
 */
/**
 * numbers.  The 1000's digit is considered the campaign index, and the 1's
 */
/**
 * digit is considered the mission index within that campaign.  This is done
 */
/**
 * so that the trigger for this can use a single drop-down to list all of
 */
/**
 * the campaign missions.
 */

//
/**
 * 允许/禁止 任务
 * 允许/禁止 关卡
 * ${Enable/Disable} ${Mission}
 * @params  enabledisableoption missionindex
 */
declare function SetMissionAvailableBJ(available: boolean, missionIndex: number): void;

/**
 * 允许/禁止 战役
 * ${Enable/Disable}  ${Campaign}
 * @params  enabledisableoption campaignindex
 */
declare function SetCampaignAvailableBJ(available: boolean, campaignNumber: number): void;

/**
 * 允许/禁止 过场电影
 * 允许/禁止 开场电影
 * ${Enable/Disable} ${Cinematic}
 * @params  enabledisableoption cinematicindex
 */
declare function SetCinematicAvailableBJ(available: boolean, cinematicIndex: number): void;

/**
 * 创建游戏缓存
 * 创建游戏缓存,使用文件名: ${Filename}
 * @params  string
 */
declare function InitGameCacheBJ(campaignFile: string): gamecache;

/**
 * 存储游戏缓存
 * 本地保存游戏缓存
 * 保存 ${Game Cache} 到本地硬盘
 * 只对单机游戏有效,保存缓存数据到本地硬盘,主要用来实现战役关卡间的数据传递.
 * @params  gamecache
 */
declare function SaveGameCacheBJ(cache: gamecache): boolean;

/**
 * 最后创建的游戏缓存
 * 最后创建的游戏缓存
 * 最后一个由'游戏缓存 - 创建缓存'动作创建的缓存.
 * @return gamecache
 */
declare function GetLastCreatedGameCacheBJ(): gamecache;

/**
 * <1.24> 新建哈希表
 */
/**
 * <1.24> 新建哈希表
 * 创建一个新的哈希表
 * 您可以使用哈希表来储存临时数据
 */
declare function InitHashtableBJ(): hashtable;

/**
 * 最后创建的哈希表
 */
/**
 * 最后创建的哈希表
 * 最后创建的哈希表
 * 能得到通过 '哈希表 - 新建哈希表' 最后一次创建的哈希表
 * @return hashtable
 */
declare function GetLastCreatedHashtableBJ(): hashtable;

/**
 * 贮藏 实数
 * 记录实数
 * 记录 ${实数} ,使用名称: ${文字} 类别名: ${Category} 缓存: ${Game Cache}
 * 原版UI，英文的语序的关系，为了使UI读起来更流畅，添加了一层封装，但这对中文来说就是画蛇添足了
 * @params  real string string gamecache
 */
declare function StoreRealBJ(value: number, key: string, missionKey: string, cache: gamecache): void;

/**
 * 贮藏 整数
 * 记录整数
 * 记录 ${整数} ,使用名称: ${文字} 类别名: ${Category} 缓存: ${Game Cache}
 * 原版UI，英文的语序的关系，为了使UI读起来更流畅，添加了一层封装，但这对中文来说就是画蛇添足了
 * @params  integer string string gamecache
 */
declare function StoreIntegerBJ(value: number, key: string, missionKey: string, cache: gamecache): void;

/**
 * 贮藏 布尔变量
 * 记录布尔值
 * 记录 ${布尔值} ,使用名称: ${文字} 类别名: ${Category} 缓存: ${Game Cache}
 * 原版UI，英文的语序的关系，为了使UI读起来更流畅，添加了一层封装，但这对中文来说就是画蛇添足了
 * @params  boolean string string gamecache
 */
declare function StoreBooleanBJ(value: boolean, key: string, missionKey: string, cache: gamecache): void;

/**
 * 贮藏 字串符
 * 记录字符串
 * 记录 ${字符串} ,使用名称: ${文字} 类别名: ${Category} 缓存: ${Game Cache}
 * 原版UI，英文的语序的关系，为了使UI读起来更流畅，添加了一层封装，但这对中文来说就是画蛇添足了
 * @params  string string string gamecache
 */
declare function StoreStringBJ(value: string, key: string, missionKey: string, cache: gamecache): boolean;

/**
 * 贮藏 单位
 * 记录单位
 * 记录 ${单位} ,使用名称: ${文字} 类别名: ${Category} 缓存: ${Game Cache}
 * 使用'游戏缓存 - 读取单位'来读取该数值. 名称和类别名不能包含空格.
 * @params  unit string string gamecache
 */
declare function StoreUnitBJ(whichUnit: unit, key: string, missionKey: string, cache: gamecache): boolean;

/**
 * <1.24> 保存实数
 * 保存实数 ${Value} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable} 之内
 * 使用 '哈希表 - 从哈希表提取实数' 可以取出保存的值
 * @params  real integer integer hashtable
 */
declare function SaveRealBJ(value: number, key: number, missionKey: number, table: hashtable): void;

/**
 * <1.24> 保存整数
 * 保存整数 ${Value} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable} 之内
 * 使用 '哈希表 - 从哈希表提取整数' 可以取出保存的值
 * @params  integer integer integer hashtable
 */
declare function SaveIntegerBJ(value: number, key: number, missionKey: number, table: hashtable): void;

/**
 * <1.24> 保存布尔
 * 保存布尔 ${Value} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable} 之内
 * 使用 '哈希表 - 从哈希表提取布尔' 可以取出保存的值
 * @params  boolean integer integer hashtable
 */
declare function SaveBooleanBJ(value: boolean, key: number, missionKey: number, table: hashtable): void;

/**
 * <1.24> 保存字符串
 * 保存字符串 ${Value} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取字符串' 可以取出保存的值
 * @params  string integer integer hashtable
 */
declare function SaveStringBJ(value: string, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存玩家
 * 保存玩家 ${Player} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取玩家' 可以取出保存的值
 * @params  player integer integer hashtable
 */
declare function SavePlayerHandleBJ(whichPlayer: player, key: number, missionKey: number, table: hashtable): boolean;

declare function SaveWidgetHandleBJ(whichWidget: widget, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存可破坏物
 * 保存可破坏物 ${Destructable} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取可破坏物' 可以取出保存的值
 * @params  destructable integer integer hashtable
 */
declare function SaveDestructableHandleBJ(whichDestructable: destructable, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存物品
 * 保存物品 ${Item} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取物品' 可以取出保存的值
 * @params  item integer integer hashtable
 */
declare function SaveItemHandleBJ(whichItem: item, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存单位
 * 保存单位 ${Unit} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取单位' 可以取出保存的值
 * @params  unit integer integer hashtable
 */
declare function SaveUnitHandleBJ(whichUnit: unit, key: number, missionKey: number, table: hashtable): boolean;

declare function SaveAbilityHandleBJ(whichAbility: ability, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存计时器
 * 保存计时器 ${Timer} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取计时器' 可以取出保存的值
 * @params  timer integer integer hashtable
 */
declare function SaveTimerHandleBJ(whichTimer: timer, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存触发器
 * 保存触发器 ${Trigger} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取触发器' 可以取出保存的值
 * @params  trigger integer integer hashtable
 */
declare function SaveTriggerHandleBJ(whichTrigger: trigger, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存触发条件
 * 保存触发条件 ${Triggercondition} 在子索引 ${Value} of ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取触发条件' 可以取出保存的值
 * @params  triggercondition integer integer hashtable
 */
declare function SaveTriggerConditionHandleBJ(whichTriggercondition: triggercondition, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存触发动作
 * 保存触发动作 ${Triggeraction} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取触发动作' 可以取出保存的值
 * @params  triggeraction integer integer hashtable
 */
declare function SaveTriggerActionHandleBJ(whichTriggeraction: triggeraction, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存触发事件
 * 保存触发事件 ${Event} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取触发事件' 可以取出保存的值
 * @params  event integer integer hashtable
 */
declare function SaveTriggerEventHandleBJ(whichEvent: event, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存玩家组
 * 保存玩家组 ${Force} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取玩家组' 可以取出保存的值
 * @params  force integer integer hashtable
 */
declare function SaveForceHandleBJ(whichForce: force, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存单位组
 * 保存单位组${Group} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取单位组' 可以取出保存的值
 * @params  group integer integer hashtable
 */
declare function SaveGroupHandleBJ(whichGroup: group, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存点
 * 保存点 ${Location} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取点' 可以取出保存的值
 * @params  location integer integer hashtable
 */
declare function SaveLocationHandleBJ(whichLocation: location, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存区域(矩型)
 * 保存区域(矩型) ${Rect} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取区域(矩型)' 可以取出保存的值
 * @params  rect integer integer hashtable
 */
declare function SaveRectHandleBJ(whichRect: rect, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存布尔表达式
 * 保存布尔表达式 ${Boolexpr} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取布尔表达式' 可以取出保存的值
 * @params  boolexpr integer integer hashtable
 */
declare function SaveBooleanExprHandleBJ(whichBoolexpr: boolexpr, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存音效
 * 保存音效 ${Sound} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取音效' 可以取出保存的值
 * @params  sound integer integer hashtable
 */
declare function SaveSoundHandleBJ(whichSound: sound, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存特效
 * 保存特效${Effect} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取特效' 可以取出保存的值
 * @params  effect integer integer hashtable
 */
declare function SaveEffectHandleBJ(whichEffect: effect, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存单位池
 * 保存单位池 ${Unitpool} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取单位池' 可以取出保存的值
 * @params  unitpool integer integer hashtable
 */
declare function SaveUnitPoolHandleBJ(whichUnitpool: unitpool, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存物品池
 * 保存物品池 ${Itempool} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取物品池' 可以取出保存的值
 * @params  itempool integer integer hashtable
 */
declare function SaveItemPoolHandleBJ(whichItempool: itempool, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存任务
 * 保存任务 ${Quest} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取任务' 可以取出保存的值
 * @params  quest integer integer hashtable
 */
declare function SaveQuestHandleBJ(whichQuest: quest, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存任务要求
 * 保存任务要求 ${Questitem} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取任务要求' 可以取出保存的值
 * @params  questitem integer integer hashtable
 */
declare function SaveQuestItemHandleBJ(whichQuestitem: questitem, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存失败条件
 * 保存失败条件 ${Defeatcondition} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取失败条件' 可以取出保存的值
 * @params  defeatcondition integer integer hashtable
 */
declare function SaveDefeatConditionHandleBJ(whichDefeatcondition: defeatcondition, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存计时器窗口
 * 保存计时器窗口 ${Timerdialog} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取计时器窗口' 可以取出保存的值
 * @params  timerdialog integer integer hashtable
 */
declare function SaveTimerDialogHandleBJ(whichTimerdialog: timerdialog, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存排行榜
 * 保存排行榜 ${Leaderboard} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取排行榜' 可以取出保存的值
 * @params  leaderboard integer integer hashtable
 */
declare function SaveLeaderboardHandleBJ(whichLeaderboard: leaderboard, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存多面板
 * 保存多面板 ${Multiboard} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取多面板' 可以取出保存的值
 * @params  multiboard integer integer hashtable
 */
declare function SaveMultiboardHandleBJ(whichMultiboard: multiboard, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存多面板项目
 * 保存多面板项目 ${Multiboarditem} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取多面板项目' 可以取出保存的值
 * @params  multiboarditem integer integer hashtable
 */
declare function SaveMultiboardItemHandleBJ(whichMultiboarditem: multiboarditem, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存可追踪物
 * 保存可追踪物 ${Trackable} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取可追踪物' 可以取出保存的值
 * @params  trackable integer integer hashtable
 */
declare function SaveTrackableHandleBJ(whichTrackable: trackable, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存对话框
 * 保存对话框 ${Dialog} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取对话框' 可以取出保存的值
 * @params  dialog integer integer hashtable
 */
declare function SaveDialogHandleBJ(whichDialog: dialog, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存对话框按钮
 * 保存对话框按钮 ${Button} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取对话框按钮' 可以取出保存的值
 * @params  button integer integer hashtable
 */
declare function SaveButtonHandleBJ(whichButton: button, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存漂浮文字
 * 保存漂浮文字 ${Texttag} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取漂浮文字' 可以取出保存的值
 * @params  texttag integer integer hashtable
 */
declare function SaveTextTagHandleBJ(whichTexttag: texttag, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存闪电效果
 * 保存闪电效果 ${Lightning} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取闪电效果' 可以取出保存的值
 * @params  lightning integer integer hashtable
 */
declare function SaveLightningHandleBJ(whichLightning: lightning, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存图像
 * 保存图像 ${Image} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取图像' 可以取出保存的值
 * @params  image integer integer hashtable
 */
declare function SaveImageHandleBJ(whichImage: image, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存地面纹理变化
 * 保存地面纹理变化 ${Ubersplat} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取地面纹理变化' 可以取出保存的值
 * @params  ubersplat integer integer hashtable
 */
declare function SaveUbersplatHandleBJ(whichUbersplat: ubersplat, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存区域(不规则)
 * 保存区域(不规则) ${Region} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取区域(不规则)' 可以取出保存的值
 * @params  region integer integer hashtable
 */
declare function SaveRegionHandleBJ(whichRegion: region, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存迷雾状态
 * 保存迷雾状态 ${Fogstate} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取迷雾状态' 可以取出保存的值
 * @params  fogstate integer integer hashtable
 */
declare function SaveFogStateHandleBJ(whichFogState: fogstate, key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 保存可见度修正器
 * 保存可见度修正器 ${Fogmodifier} 在子索引 ${Value} 主索引 ${Value} 位于 ${Hashtable}  之内
 * 使用 '哈希表 - 从哈希表提取可见度修正器' 可以取出保存的值
 * @params  fogmodifier integer integer hashtable
 */
declare function SaveFogModifierHandleBJ(whichFogModifier: fogmodifier, key: number, missionKey: number, table: hashtable): boolean;

declare function SaveAgentHandleBJ(whichAgent: agent, key: number, missionKey: number, table: hashtable): boolean;

declare function SaveHashtableHandleBJ(whichHashtable: hashtable, key: number, missionKey: number, table: hashtable): boolean;

/**
 * 读取实数值
 */

//call SyncStoredReal(cache, missionKey, key)
/**

 * 缓存读取实数
 * 从游戏缓存读取实数,名称: ${文字} 类别: ${Category} 缓存: ${Game Cache}
 * 原版UI，英文的语序的关系，为了使UI读起来更流畅，添加了一层封装，但这对中文来说就是画蛇添足了
 * @params  string string gamecache
 * @return real
 */
declare function GetStoredRealBJ(key: string, missionKey: string, cache: gamecache): number;

/**
 * 读取整数数据
 */

//call SyncStoredInteger(cache, missionKey, key)
/**

 * 缓存读取整数
 * 从游戏缓存读取整数,名称: ${文字} 类别: ${Category} 缓存: ${Game Cache}
 * 原版UI，英文的语序的关系，为了使UI读起来更流畅，添加了一层封装，但这对中文来说就是画蛇添足了
 * @params  string string gamecache
 * @return integer
 */
declare function GetStoredIntegerBJ(key: string, missionKey: string, cache: gamecache): number;

/**
 * 读取布尔值
 */

//call SyncStoredBoolean(cache, missionKey, key)
/**

 * 从游戏缓存读取布尔值,名称: ${文字} 类别: ${Category} 缓存: ${Game Cache}
 * 原版UI，英文的语序的关系，为了使UI读起来更流畅，添加了一层封装，但这对中文来说就是画蛇添足了
 * @params  string string gamecache
 * @return boolean
 */
declare function GetStoredBooleanBJ(key: string, missionKey: string, cache: gamecache): boolean;

/**
 * 度曲字串符数据
 * 读取字符串
 * 从游戏缓存读取字符串,名称: ${文字} 类别: ${Category} 缓存: ${Game Cache}
 * 原版UI，英文的语序的关系，为了使UI读起来更流畅，添加了一层封装，但这对中文来说就是画蛇添足了
 * @params  string string gamecache
 * @return string
 */
declare function GetStoredStringBJ(key: string, missionKey: string, cache: gamecache): string;

/**
 * <1.24> 从哈希表提取实数
 */

//call SyncStoredReal(table, missionKey, key)
/**

 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取实数
 * 如果不存在则返回0.00
 * @params  integer integer hashtable
 * @return real
 */
declare function LoadRealBJ(key: number, missionKey: number, table: hashtable): number;

/**
 * <1.24> 从哈希表提取整数
 */

//call SyncStoredInteger(table, missionKey, key)
/**

 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取整数
 * 如果不存在则返回0
 * @params  integer integer hashtable
 * @return integer
 */
declare function LoadIntegerBJ(key: number, missionKey: number, table: hashtable): number;

/**
 * <1.24> 从哈希表提取布尔
 */

//call SyncStoredBoolean(table, missionKey, key)
/**

 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取布尔
 * 如果不存在则返回False
 * @params  integer integer hashtable
 * @return boolean
 */
declare function LoadBooleanBJ(key: number, missionKey: number, table: hashtable): boolean;

/**
 * <1.24> 从哈希表提取字符串
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取字符串
 * 如果不存在则返回空字符串
 * @params  integer integer hashtable
 * @return string
 */
declare function LoadStringBJ(key: number, missionKey: number, table: hashtable): string;

/**
 * <1.24> 从哈希表提取玩家
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取玩家
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return player
 */
declare function LoadPlayerHandleBJ(key: number, missionKey: number, table: hashtable): player;

declare function LoadWidgetHandleBJ(key: number, missionKey: number, table: hashtable): widget;

/**
 * <1.24> 从哈希表提取可破坏物
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取可破坏物
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return destructable
 */
declare function LoadDestructableHandleBJ(key: number, missionKey: number, table: hashtable): destructable;

/**
 * <1.24> 从哈希表提取物品
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取物品
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return item
 */
declare function LoadItemHandleBJ(key: number, missionKey: number, table: hashtable): item;

/**
 * <1.24> 从哈希表提取单位
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取单位
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return unit
 */
declare function LoadUnitHandleBJ(key: number, missionKey: number, table: hashtable): unit;

declare function LoadAbilityHandleBJ(key: number, missionKey: number, table: hashtable): ability;

/**
 * <1.24> 从哈希表提取计时器
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取计时器
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return timer
 */
declare function LoadTimerHandleBJ(key: number, missionKey: number, table: hashtable): timer;

/**
 * <1.24> 从哈希表提取触发器
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取触发器
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return trigger
 */
declare function LoadTriggerHandleBJ(key: number, missionKey: number, table: hashtable): trigger;

/**
 * <1.24> 从哈希表提取触发条件
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取触发条件
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return triggercondition
 */
declare function LoadTriggerConditionHandleBJ(key: number, missionKey: number, table: hashtable): triggercondition;

/**
 * <1.24> 从哈希表提取触发动作
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取触发动作
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return triggeraction
 */
declare function LoadTriggerActionHandleBJ(key: number, missionKey: number, table: hashtable): triggeraction;

/**
 * <1.24> 从哈希表提取触发事件
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取触发事件
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return event
 */
declare function LoadTriggerEventHandleBJ(key: number, missionKey: number, table: hashtable): event;

/**
 * <1.24> 从哈希表提取玩家组
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取玩家组
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return force
 */
declare function LoadForceHandleBJ(key: number, missionKey: number, table: hashtable): force;

/**
 * <1.24> 从哈希表提取单位组
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取单位组
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return group
 */
declare function LoadGroupHandleBJ(key: number, missionKey: number, table: hashtable): group;

/**
 * <1.24> 从哈希表提取点
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取点
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return location
 */
declare function LoadLocationHandleBJ(key: number, missionKey: number, table: hashtable): location;

/**
 * <1.24> 从哈希表提取区域(矩型)
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取区域(矩型)
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return rect
 */
declare function LoadRectHandleBJ(key: number, missionKey: number, table: hashtable): rect;

/**
 * <1.24> 从哈希表提取布尔表达式
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取布尔表达式
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return boolexpr
 */
declare function LoadBooleanExprHandleBJ(key: number, missionKey: number, table: hashtable): boolexpr;

/**
 * <1.24> 从哈希表提取音效
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取音效
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return sound
 */
declare function LoadSoundHandleBJ(key: number, missionKey: number, table: hashtable): sound;

/**
 * <1.24> 从哈希表提取特效
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取特效
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return effect
 */
declare function LoadEffectHandleBJ(key: number, missionKey: number, table: hashtable): effect;

/**
 * <1.24> 从哈希表提取单位池
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取单位池
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return unitpool
 */
declare function LoadUnitPoolHandleBJ(key: number, missionKey: number, table: hashtable): unitpool;

/**
 * <1.24> 从哈希表提取物品池
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取物品池
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return itempool
 */
declare function LoadItemPoolHandleBJ(key: number, missionKey: number, table: hashtable): itempool;

/**
 * <1.24> 从哈希表提取任务
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取任务
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return quest
 */
declare function LoadQuestHandleBJ(key: number, missionKey: number, table: hashtable): quest;

/**
 * <1.24> 从哈希表提取任务要求
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取任务要求
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return questitem
 */
declare function LoadQuestItemHandleBJ(key: number, missionKey: number, table: hashtable): questitem;

/**
 * <1.24> 从哈希表提取失败条件
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取失败条件
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return defeatcondition
 */
declare function LoadDefeatConditionHandleBJ(key: number, missionKey: number, table: hashtable): defeatcondition;

/**
 * <1.24> 从哈希表提取计时器窗口
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取计时器窗口
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return timerdialog
 */
declare function LoadTimerDialogHandleBJ(key: number, missionKey: number, table: hashtable): timerdialog;

/**
 * <1.24> 从哈希表提取排行榜
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取排行榜
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return leaderboard
 */
declare function LoadLeaderboardHandleBJ(key: number, missionKey: number, table: hashtable): leaderboard;

/**
 * <1.24> 从哈希表提取多面板
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取多面板
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return multiboard
 */
declare function LoadMultiboardHandleBJ(key: number, missionKey: number, table: hashtable): multiboard;

/**
 * <1.24> 从哈希表提取多面板项目
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取多面板项目
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return multiboarditem
 */
declare function LoadMultiboardItemHandleBJ(key: number, missionKey: number, table: hashtable): multiboarditem;

/**
 * <1.24> 从哈希表提取可追踪物
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取可追踪物
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return trackable
 */
declare function LoadTrackableHandleBJ(key: number, missionKey: number, table: hashtable): trackable;

/**
 * <1.24> 从哈希表提取对话框
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取对话框
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return dialog
 */
declare function LoadDialogHandleBJ(key: number, missionKey: number, table: hashtable): dialog;

/**
 * <1.24> 从哈希表提取对话框按钮
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取对话框按钮
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return button
 */
declare function LoadButtonHandleBJ(key: number, missionKey: number, table: hashtable): button;

/**
 * <1.24> 从哈希表提取漂浮文字
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取漂浮文字
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return texttag
 */
declare function LoadTextTagHandleBJ(key: number, missionKey: number, table: hashtable): texttag;

/**
 * <1.24> 从哈希表提取闪电效果
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取闪电效果
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return lightning
 */
declare function LoadLightningHandleBJ(key: number, missionKey: number, table: hashtable): lightning;

/**
 * <1.24> 从哈希表提取图象
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取图象
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return image
 */
declare function LoadImageHandleBJ(key: number, missionKey: number, table: hashtable): image;

/**
 * <1.24> 从哈希表提取地面纹理变化
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取地面纹理变化
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return ubersplat
 */
declare function LoadUbersplatHandleBJ(key: number, missionKey: number, table: hashtable): ubersplat;

/**
 * <1.24> 从哈希表提取区域(不规则)
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取区域(不规则)
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return region
 */
declare function LoadRegionHandleBJ(key: number, missionKey: number, table: hashtable): region;

/**
 * <1.24> 从哈希表提取迷雾状态
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取迷雾状态
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return fogstate
 */
declare function LoadFogStateHandleBJ(key: number, missionKey: number, table: hashtable): fogstate;

/**
 * <1.24> 从哈希表提取可见度修正器
 * 在子索引 ${Value} 主索引 ${Value} 的 ${Hashtable} 内提取可见度修正器
 * 如果不存在则返回空
 * @params  integer integer hashtable
 * @return fogmodifier
 */
declare function LoadFogModifierHandleBJ(key: number, missionKey: number, table: hashtable): fogmodifier;

declare function LoadHashtableHandleBJ(key: number, missionKey: number, table: hashtable): hashtable;

/**
 * 读取单位 (有角度)
 */

//call SyncStoredUnit(cache, missionKey, key)
/**

 * 读取单位(面向角度)
 * 从缓存读取单位, 名称: ${文字} 类别名: ${Category} 缓存: ${Game Cache} ,所属玩家: ${Player} 创建点: ${点} 面向角度: ${Angle}
 * 使用'最后读取的单位'来获取该单位. 如果不存在该缓存数据,则'最后读取的单位'将被设为null.
 * @params  string string gamecache player location degree
 */
declare function RestoreUnitLocFacingAngleBJ(key: string, missionKey: string, cache: gamecache, forWhichPlayer: player, loc: location, facing: number): unit;

/**
 * 读取单位 (有位置方向)
 */

//call SyncStoredUnit(cache, missionKey, key)
/**

 * 读取单位(面向点)
 * 从缓存读取单位, 名称: ${文字} 类别名: ${Category} 缓存: ${Game Cache} ,所属玩家: ${Player} 创建点: ${点} 面向: ${指定点}
 * 使用'最后读取的单位'来获取该单位. 如果不存在该缓存数据,则'最后读取的单位'将被设为null.
 * @params  string string gamecache player location location
 */
declare function RestoreUnitLocFacingPointBJ(key: string, missionKey: string, cache: gamecache, forWhichPlayer: player, loc: location, lookAt: location): unit;

/**
 * 最后恢复的单位
 * 最后读取的单位
 * 最后读取的单位
 * 最后一个使用'游戏缓存 - 读取单位'动作创建的单位.
 * @return unit
 */
declare function GetLastRestoredUnitBJ(): unit;

/**
 * 清除所有缓存
 * 删除缓存
 * 删除 ${GameCache}
 * 删除并清空该缓存的所有数据.
 * @params  gamecache
 */
declare function FlushGameCacheBJ(cache: gamecache): void;

/**
 * 清除缓存[分类]
 * 删除类别
 * 删除类别 ${Category} 在缓存 ${GameCache} 中
 * 原版UI，英文的语序的关系，为了使UI读起来更流畅，添加了一层封装，但这对中文来说就是画蛇添足了
 * @params  string gamecache
 */
declare function FlushStoredMissionBJ(missionKey: string, cache: gamecache): void;

/**
 * <1.24> 清空哈希表
 * <1.24> 清空 ${Hashtable}
 * 清空哈希表所有数据
 * @params  hashtable
 */
declare function FlushParentHashtableBJ(table: hashtable): void;

/**
 * <1.24> 清空哈希表主索引
 * <1.24> 清空 ${Value} 位于 ${Hashtable}  之内
 * 清空哈希表主索引下的所有数据
 * @params  integer hashtable
 */
declare function FlushChildHashtableBJ(missionKey: number, table: hashtable): void;

/**
 * 游戏缓存的数据
 * 缓存项存在
 * 名称为 ${文字} 的 ${Type} 类缓存项被保存在类别: ${Category} 缓存: ${Game Cache}
 * @params  string cachevaluetype string gamecache
 * @return boolean
 */
declare function HaveStoredValue(key: string, valueType: number, missionKey: string, cache: gamecache): boolean;

/**
 * <1.24> 哈希项存在
 * 子索引为 ${Value} 的 ${Type} 类数据被保存在主索引为 ${Value} 的 ${Hashtable} 中
 * @params  integer hashtablevaluetype integer hashtable
 * @return boolean
 */
declare function HaveSavedValue(key: number, valueType: number, missionKey: number, table: hashtable): boolean;

/**
 * 显示/隐藏自定义战役按钮
 * 显示/隐藏 自定义战役按钮
 * ${Show/Hide} 自定义战役按钮 #${Number}
 * @params  showhideoption integer
 */
declare function ShowCustomCampaignButton(show: boolean, whichButton: number): void;

/**
 * 自定义战役按钮是可见的
 * 自定义战役按钮可见
 * 自定义战役按钮# ${Number} 可见
 * @params  integer
 * @return boolean
 */
declare function IsCustomCampaignButtonVisibile(whichButton: number): boolean;

/**
 * Placeholder function for auto save feature
 */
declare function SaveGameCheckPointBJ(mapSaveName: string, doCheckpointHint: boolean): void;

/**
 * 读取游戏进度
 * 读取进度
 * 读取游戏进度 ${Filename} (${Show/Skip} 计分屏)
 * @params  anyfile useskipoption
 */
declare function LoadGameBJ(loadFileName: string, doScoreScreen: boolean): void;

/**
 * 保存进度同时设置下一张地图
 * 保存并切换关卡
 * 保存游戏进度为: ${Filename} 并切换到关卡: ${Filename} (${Show/Skip} 计分屏)
 * @params  anyfile anyfile useskipoption
 */
declare function SaveAndChangeLevelBJ(saveFileName: string, newLevel: string, doScoreScreen: boolean): void;

/**
 * 保存进度同时读取进度
 * 保存并读取进度
 * 保存游戏进度为: ${Filename} 并读取进度: ${Filename} (${Show/Skip} 计分屏)
 * @params  anyfile anyfile useskipoption
 */
declare function SaveAndLoadGameBJ(saveFileName: string, loadFileName: string, doScoreScreen: boolean): void;

/**
 * 重命名游戏进度文件夹
 * 重命名存档文件夹
 * 更改 ${源文件夹} 的名字为 ${目标文件夹}
 * @params  anyfile anyfile
 */
declare function RenameSaveDirectoryBJ(sourceDirName: string, destDirName: string): boolean;

/**
 * 删除游戏进度文件夹
 * 删除存档文件夹
 * 删除 ${文件夹}
 * 文件夹内的内容都会被删除.
 * @params  anyfile
 */
declare function RemoveSaveDirectoryBJ(sourceDirName: string): boolean;

/**
 * 复制游戏进度
 * 复制存档文件
 * 复制 ${源文件} 并保存为 ${目标文件}
 * 该动作只在响应'保存/读取进度'时有效,每个事件中最多能用16次.
 * @params  anyfile anyfile
 */
declare function CopySaveGameBJ(sourceSaveName: string, destSaveName: string): boolean;

//***************************************************************************
//*
//*  Miscellaneous Utility Functions
//*
//***************************************************************************
declare function GetPlayerStartLocationX(whichPlayer: player): number;

declare function GetPlayerStartLocationY(whichPlayer: player): number;

/**
 * 玩家的初始位置
 * 玩家开始位置
 * ${Player} 的游戏开始位置
 * 会创建点.
 * @params  player
 * @return location
 */
declare function GetPlayerStartLocationLoc(whichPlayer: player): location;

/**
 * 区域中心
 * 矩形区域中心
 * ${矩形区域} 的中心点
 * 会创建点.
 * @params  rect
 * @return location
 */
declare function GetRectCenter(whichRect: rect): location;

declare function IsPlayerSlotState(whichPlayer: player, whichState: playerslotstate): boolean;

declare function GetFadeFromSeconds(seconds: number): number;

declare function GetFadeFromSecondsAsReal(seconds: number): number;

declare function AdjustPlayerStateSimpleBJ(whichPlayer: player, whichPlayerState: playerstate, delta: number): void;

/**
 * 增加玩家属性值
 */
/**
 * If the change was positive, apply the difference to the player's
 * 增加属性
 * 增加 ${Value} ${Player} 的 ${Property}
 * 使用负数来减少.
 * @params  integer player playerstate
 */
declare function AdjustPlayerStateBJ(delta: number, whichPlayer: player, whichPlayerState: playerstate): void;

declare function SetPlayerStateBJ(whichPlayer: player, whichPlayerState: playerstate, value: number): void;

/**
 * 打开/关闭 玩家参数
 * 开启/关闭 玩家参数
 * 设置 ${Player Flag} ${On/Off} 对 ${Player}
 * 开启玩家12的'给与奖励'表示杀死玩家12单位会获得金钱奖励.
 * @params  playerflag onoffoption player
 */
declare function SetPlayerFlagBJ(whichPlayerFlag: playerstate, flag: boolean, whichPlayer: player): void;

/**
 * 截留玩家收入 (税率)
 * 设置税率
 * 设置 ${Rate} %的 ${Resource} 所得税, ${Player} 交纳给 ${Player}
 * 缴纳所得税所损失的资源可以通过'玩家得分'的'税务损失的黄金/木材'来获取. 所得税最高为100%. 且玩家1对玩家2和玩家3都交纳80%所得税.则玩家1采集黄金时将给玩家2 8黄金,玩家3 2黄金.
 * @params  integer playerresource player player
 */
declare function SetPlayerTaxRateBJ(rate: number, whichResource: playerstate, sourcePlayer: player, otherPlayer: player): void;

/**
 * 获得玩家税率
 * ${Resource} 所得税, ${Player} 交纳给 ${Player}
 * 所得税取值范围0-100.
 * @params  playerresource player player
 * @return integer
 */
declare function GetPlayerTaxRateBJ(whichResource: playerstate, sourcePlayer: player, otherPlayer: player): number;

/**
 * 玩家旗是打开的
 * 玩家参数开启
 * ${Player Flag} 为允许,对 ${Player}
 * @params  playerflag player
 * @return boolean
 */
declare function IsPlayerFlagSetBJ(whichPlayerFlag: playerstate, whichPlayer: player): boolean;

/**
 * 增加黄金到金矿
 * 增加黄金储量
 * 增加 ${Quantity} 黄金储量给 ${金矿}
 * 使用负数来减少黄金储量.
 * @params  integer unit
 */
declare function AddResourceAmountBJ(delta: number, whichUnit: unit): void;

/**
 * 玩家索引
 * 玩家ID
 * ${Player} 的玩家ID
 * 玩家ID取值1-16.
 * @params  player
 * @return integer
 */
declare function GetConvertedPlayerId(whichPlayer: player): number;

/**
 * 将玩家索引转换为玩家
 * 转换玩家ID为玩家
 * 玩家 ${Player Index}
 * 玩家ID取值1-16.
 * @params  integer
 * @return player
 */
declare function ConvertedPlayer(convertedPlayerId: number): player;

/**
 * 区域宽度
 * ${矩形区域} 的宽度
 * @params  rect
 * @return real
 */
declare function GetRectWidthBJ(r: rect): number;

/**
 * 区域高度
 * ${矩形区域} 的高度
 * @params  rect
 * @return real
 */
declare function GetRectHeightBJ(r: rect): number;

/**
 * Replaces a gold mine with a blighted gold mine for the given player.
 */

//
/**
 * 设置金矿为不死族金矿
 */
declare function BlightGoldMineForPlayerBJ(goldMine: unit, whichPlayer: player): unit;

/**

 * 创建不死族金矿(立即)
 * 将 ${金矿} 变为 ${Player} 的不死族金矿
 * 金矿的储金量不会改变.
 * @params  unit player
 */
declare function BlightGoldMineForPlayer(goldMine: unit, whichPlayer: player): unit;

/**
 * 最后建造的不死族金矿
 * 最后创建的不死族金矿
 * 最后创建的不死族金矿
 * 最后一个使用'中立建筑 - 创建不死族金矿'创建的不死族金矿.
 * @return unit
 */
declare function GetLastHauntedGoldMine(): unit;

/**
 * 点是不死族的地表
 * 点被荒芜地表覆盖
 * ${指定点} 被荒芜地表覆盖
 * @params  location
 * @return boolean
 */
declare function IsPointBlightedBJ(where: location): boolean;

/**
 * 改变玩家颜色
 */
declare function SetPlayerColorBJEnum(): void;

/**

 * 将 ${Player} 的玩家颜色改为 ${Color} ,并 ${Changing/Retaining color} 玩家单位颜色
 * @params  player playercolor playerchangecoloroption
 */
declare function SetPlayerColorBJ(whichPlayer: player, color: playercolor, changeExisting: boolean): void;

/**
 * 设置训练/建造单位可用性
 * 设置单位可用性
 * 设置 ${单位类型} ${Available/Unavailable} 对 ${Player}
 * 设置玩家能否建造该单位.
 * @params  unitcode availabilityoption player
 */
declare function SetPlayerUnitAvailableBJ(unitId: number, allowed: boolean, whichPlayer: player): void;

/**
 * 锁定游戏速度
 * 锁定游戏速度
 * 使用该动作后无法改变游戏速度.
 * @params  nothing
 */
declare function LockGameSpeedBJ(): void;

/**
 * 解锁游戏速度
 * 解除锁定游戏速度
 * 解除锁定游戏速度
 * 解除'游戏 - 锁定游戏速度'对游戏速度的锁定.
 * @params  nothing
 */
declare function UnlockGameSpeedBJ(): void;

declare function IssueTargetOrderBJ(whichUnit: unit, order: string, targetWidget: widget): boolean;

declare function IssuePointOrderLocBJ(whichUnit: unit, order: string, whichLocation: location): boolean;

/**
 * Two distinct trigger actions can't share the same function name, so this
 */
/**
 * dummy function simply mimics the behavior of an existing call.
 */

//
/**
 * 给单位发送命令到 可毁坏物
 * 发布命令(指定可破坏物)
 * 对 ${单位} 发布 ${Order} 命令到目标: ${可破坏物}
 * @params  unit unitorderdtarg destructable
 * @return boolean
 */
declare function IssueTargetDestructableOrder(whichUnit: unit, order: string, targetWidget: widget): boolean;

/**
 * 给单位发送命令到 物品
 * 发布命令(指定物品)
 * 对 ${单位} 发布 ${Order} 命令到目标: ${物品}
 * @params  unit unitorderitarg item
 * @return boolean
 */
declare function IssueTargetItemOrder(whichUnit: unit, order: string, targetWidget: widget): boolean;

declare function IssueImmediateOrderBJ(whichUnit: unit, order: string): boolean;

declare function GroupTargetOrderBJ(whichGroup: group, order: string, targetWidget: widget): boolean;

declare function GroupPointOrderLocBJ(whichGroup: group, order: string, whichLocation: location): boolean;

declare function GroupImmediateOrderBJ(whichGroup: group, order: string): boolean;

/**
 * Two distinct trigger actions can't share the same function name, so this
 */
/**
 * dummy function simply mimics the behavior of an existing call.
 */

//
/**
 * 发送单位组命令到 可毁坏物
 * 发布命令(指定可破坏物)
 * 对 ${单位组}发布 ${Order} 命令,目标: ${可破坏物}
 * 最多只能对单位组中12个单位发布命令.
 * @params  group unitorderdtarg destructable
 */
declare function GroupTargetDestructableOrder(whichGroup: group, order: string, targetWidget: widget): boolean;

/**
 * 发送单位组命令到 物品
 * 发布命令(指定物品)
 * 对 ${单位组}发布 ${Order} 命令,目标: ${物品}
 * 最多只能对单位组中12个单位发布命令.
 * @params  group unitorderitarg item
 */
declare function GroupTargetItemOrder(whichGroup: group, order: string, targetWidget: widget): boolean;

/**
 * 垂死的可毁坏物
 * 死亡的可破坏物
 * 死亡的可破坏物
 * 响应'可破坏物死亡'事件.
 * @return destructable
 */
declare function GetDyingDestructable(): destructable;

/**
 * Rally point setting
 */

//
/**
 * 设置 聚集点 在点
 * 设置集结点(指定点)
 * 设置 ${单位} 的集结点到 ${指定点}
 * 建议用发布'setrally'命令来实现该功能.
 * @params  unit location
 */
declare function SetUnitRallyPoint(whichUnit: unit, targPos: location): void;

/**
 * 设置 聚集点 在单位
 * 设置集结点(指定单位)
 * 设置 ${单位} 的集结点到 ${单位}
 * 建议用发布'setrally'命令来实现该功能.
 * @params  unit unit
 */
declare function SetUnitRallyUnit(whichUnit: unit, targUnit: unit): void;

/**
 * 设置 聚集点 在可毁坏物
 * 设置集结点(指定物件)
 * 设置 ${单位} 的集结点到 ${物件}
 * 建议用发布'setrally'命令来实现该功能.
 * @params  unit destructable
 */
declare function SetUnitRallyDestructable(whichUnit: unit, targDest: destructable): void;

/**
 * Utility function for use by editor-generated item drop table triggers.
 */

/**
 * This function is added as an action to all destructable drop triggers,
 */
/**
 * so that a widget drop may be differentiated from a unit drop.
 */
//
declare function SaveDyingWidget(): void;

/**
 * 创造/删除 不死族地表在区域
 * 创建/删除荒芜地表(矩形区域)
 * ${Create/Remove} 一块荒芜地表给 ${Player} 在 ${Region}
 * @params  createremoveoption player rect
 */
declare function SetBlightRectBJ(addBlight: boolean, whichPlayer: player, r: rect): void;

/**
 * 创造/删除 不死族地表在圆周
 * 创建/删除荒芜地表(圆范围)(指定点)
 * ${Create/Remove} 一块荒芜地表给 ${Player} 在圆心为 ${指定点} 半径为 ${Radius} 的圆范围
 * @params  createremoveoption player location real
 */
declare function SetBlightRadiusLocBJ(addBlight: boolean, whichPlayer: player, loc: location, radius: number): void;

/**
 * 技能名字
 * 技能名称
 * ${技能} 的名称
 * @params  abilcode
 * @return string
 */
declare function GetAbilityName(abilcode: number): string;

//***************************************************************************
//*
//*  Melee Template Visibility Settings
//*
//***************************************************************************
/**
 * 对用对战的时间设置
 */
/**
 * Start by setting the ToD.
 * 使用对战昼夜设置
 * 使用对战昼夜设置
 * @params  nothing
 */
declare function MeleeStartingVisibility(): void;

//***************************************************************************
//*
//*  Melee Template Starting Resources
//*
//***************************************************************************
/**
 * 设置初始资源
 * 设置初始资源
 * @params  nothing
 */
declare function MeleeStartingResources(): void;

//***************************************************************************
//*
//*  Melee Template Hero Limit
//*
//***************************************************************************
declare function ReducePlayerTechMaxAllowed(whichPlayer: player, techId: number, limit: number): void;

/**
 * 英雄数量限制
 * 英雄限制
 * 使用对战英雄设置
 * 每个对战英雄只能建造1个. 最大英雄数量为3.
 * @params  nothing
 */
declare function MeleeStartingHeroLimit(): void;

//***************************************************************************
//*
//*  Melee Template Granted Hero Items
//*
//***************************************************************************
declare function MeleeTrainedUnitIsHeroBJFilter(): boolean;

/**
 * The first N heroes trained or hired for each player start off with a
 */

/**
 * standard set of items.  This is currently:
 */
/**
 * - 1x Scroll of Town Portal
 */
//
declare function MeleeGrantItemsToHero(whichUnit: unit): void;

declare function MeleeGrantItemsToTrainedHero(): void;

declare function MeleeGrantItemsToHiredHero(): void;

/**
 * 英雄初始物品
 * 给首发英雄一个回城卷轴
 * @params  nothing
 */
declare function MeleeGrantHeroItems(): void;

//***************************************************************************
//*
//*  Melee Template Clear Start Locations
//*
//***************************************************************************
declare function MeleeClearExcessUnit(): void;

declare function MeleeClearNearbyUnits(x: number, y: number, range: number): void;

/**
 * 删除多余单位
 * 删除已使用开始点附近的中立生物
 * @params  nothing
 */
declare function MeleeClearExcessUnits(): void;

//***************************************************************************
//*
//*  Melee Template Starting Units
//*
//***************************************************************************
declare function MeleeEnumFindNearestMine(): void;

declare function MeleeFindNearestMine(src: location, range: number): unit;

declare function MeleeRandomHeroLoc(p: player, id1: number, id2: number, id3: number, id4: number, loc: location): unit;

/**
 * Returns a location which is (distance) away from (src) in the direction of (targ).
 */
//
declare function MeleeGetProjectedLoc(src: location, targ: location, distance: number, deltaAngle: number): location;

declare function MeleeGetNearestValueWithin(val: number, minVal: number, maxVal: number): number;

declare function MeleeGetLocWithinRect(src: location, r: rect): location;

/**
 * Starting Units for Human Players
 */
/**
 * - 1 Town Hall, placed at start location
 */
/**
 * - 5 Peasants, placed between start location and nearest gold mine
 */

//
/**
 * 创建初始单位
 */
declare function MeleeStartingUnitsHuman(whichPlayer: player, startLoc: location, doHeroes: boolean, doCamera: boolean, doPreload: boolean): void;

/**
 * Starting Units for Orc Players
 */

/**
 * - 1 Great Hall, placed at start location
 */
/**
 * - 5 Peons, placed between start location and nearest gold mine
 */
//
declare function MeleeStartingUnitsOrc(whichPlayer: player, startLoc: location, doHeroes: boolean, doCamera: boolean, doPreload: boolean): void;

/**
 * Starting Units for Undead Players
 */
/**
 * - 1 Necropolis, placed at start location
 */
/**
 * - 1 Haunted Gold Mine, placed on nearest gold mine
 */
/**
 * - 3 Acolytes, placed between start location and nearest gold mine
 */

/**
 * - 1 Ghoul, placed between start location and nearest gold mine
 */
/**
 * - Blight, centered on nearest gold mine, spread across a "large area"
 */
//
declare function MeleeStartingUnitsUndead(whichPlayer: player, startLoc: location, doHeroes: boolean, doCamera: boolean, doPreload: boolean): void;

/**
 * Starting Units for Night Elf Players
 */

/**
 * - 1 Tree of Life, placed by nearest gold mine, already entangled
 */
/**
 * - 5 Wisps, placed between Tree of Life and nearest gold mine
 */
//
declare function MeleeStartingUnitsNightElf(whichPlayer: player, startLoc: location, doHeroes: boolean, doCamera: boolean, doPreload: boolean): void;

/**
 * Starting Units for Players Whose Race is Unknown
 */
/**
 * - 12 Sheep, placed randomly around the start location
 */
//
declare function MeleeStartingUnitsUnknownRace(whichPlayer: player, startLoc: location, doHeroes: boolean, doCamera: boolean, doPreload: boolean): void;

/**

 * 创建初始单位
 * 创建对战初始单位
 * @params  nothing
 */
declare function MeleeStartingUnits(): void;

/**
 * 创建初始单位为了玩家
 */
/**
 * Create initial race-specific starting units
 * 创建初始单位(指定玩家)
 * 创建 ${Race} 的对战初始单位给 ${Player} 在 ${指定点} (${Include/Exclude} 英雄)
 * @params  race player location includeoption
 */
declare function MeleeStartingUnitsForPlayer(whichRace: race, whichPlayer: player, loc: location, doHeroes: boolean): void;

//***************************************************************************
//*
//*  Melee Template Starting AI Scripts
//*
//***************************************************************************
declare function PickMeleeAI(num: player, s1: string, s2: string, s3: string): void;

/**
 * 运行对战 AI
 * 运行AI
 * 对电脑玩家运行对战AI脚本
 * 动作运行之前玩家要有初始单位和资源.
 * @params  nothing
 */
declare function MeleeStartingAI(): void;

/**
 * 锁定的防守职责
 * 锁定指定单位的警戒点
 * 锁定 ${单位} 的警戒点
 * 锁定并防止 AI 脚本改动单位警戒点.
 * @params  unit
 */
declare function LockGuardPosition(targ: unit): void;

/**
 * base from bj
 */
/**
 *  π
 */
declare const bj_PI: number;
declare const bj_E: number;
/**
 *  单元点宽度
 */
declare const bj_CELLWIDTH: number;
declare const bj_CLIFFHEIGHT: number;
/**
 *  默认建筑朝向
 */
declare const bj_UNIT_FACING: number;
declare const bj_RADTODEG: number;
declare const bj_DEGTORAD: number;
declare const bj_TEXT_DELAY_QUEST: number;
declare const bj_TEXT_DELAY_QUESTUPDATE: number;
declare const bj_TEXT_DELAY_QUESTDONE: number;
declare const bj_TEXT_DELAY_QUESTFAILED: number;
declare const bj_TEXT_DELAY_QUESTREQUIREMENT: number;
declare const bj_TEXT_DELAY_MISSIONFAILED: number;
declare const bj_TEXT_DELAY_ALWAYSHINT: number;
declare const bj_TEXT_DELAY_HINT: number;
declare const bj_TEXT_DELAY_SECRET: number;
declare const bj_TEXT_DELAY_UNITACQUIRED: number;
declare const bj_TEXT_DELAY_UNITAVAILABLE: number;
declare const bj_TEXT_DELAY_ITEMACQUIRED: number;
declare const bj_TEXT_DELAY_WARNING: number;
/**
 *  战役任务等待
 */
declare const bj_QUEUE_DELAY_QUEST: number;
/**
 *  战役提示等待
 */
declare const bj_QUEUE_DELAY_HINT: number;
/**
 *  战役秘密等待
 */
declare const bj_QUEUE_DELAY_SECRET: number;
/**
 *  战役简单难度生命障碍
 */
declare const bj_HANDICAP_EASY: number;
declare const bj_HANDICAP_NORMAL: number;
declare const bj_HANDICAPDAMAGE_EASY: number;
declare const bj_HANDICAPDAMAGE_NORMAL: number;
declare const bj_HANDICAPREVIVE_NOTHARD: number;
declare const bj_GAME_STARTED_THRESHOLD: number;
declare const bj_WAIT_FOR_COND_MIN_INTERVAL: number;
declare const bj_POLLED_WAIT_INTERVAL: number;
declare const bj_POLLED_WAIT_SKIP_THRESHOLD: number;
declare const bj_MAX_INVENTORY: number;
declare const bj_MAX_PLAYERS: number;
declare const bj_PLAYER_NEUTRAL_VICTIM: number;
declare const bj_PLAYER_NEUTRAL_EXTRA: number;
declare const bj_MAX_PLAYER_SLOTS: number;
declare const bj_MAX_SKELETONS: number;
declare const bj_MAX_STOCK_ITEM_SLOTS: number;
declare const bj_MAX_STOCK_UNIT_SLOTS: number;
declare const bj_MAX_ITEM_LEVEL: number;
declare const bj_MAX_CHECKPOINTS: number;
declare const bj_TOD_DAWN: number;
declare const bj_TOD_DUSK: number;
declare const bj_MELEE_STARTING_TOD: number;
declare const bj_MELEE_STARTING_GOLD_V0: number;
declare const bj_MELEE_STARTING_GOLD_V1: number;
declare const bj_MELEE_STARTING_LUMBER_V0: number;
declare const bj_MELEE_STARTING_LUMBER_V1: number;
declare const bj_MELEE_STARTING_HERO_TOKENS: number;
declare const bj_MELEE_HERO_LIMIT: number;
declare const bj_MELEE_HERO_TYPE_LIMIT: number;
declare const bj_MELEE_MINE_SEARCH_RADIUS: number;
declare const bj_MELEE_CLEAR_UNITS_RADIUS: number;
declare const bj_MELEE_CRIPPLE_TIMEOUT: number;
declare const bj_MELEE_CRIPPLE_MSG_DURATION: number;
declare const bj_MELEE_MAX_TWINKED_HEROES_V0: number;
declare const bj_MELEE_MAX_TWINKED_HEROES_V1: number;
declare const bj_CREEP_ITEM_DELAY: number;
declare const bj_STOCK_RESTOCK_INITIAL_DELAY: number;
declare const bj_STOCK_RESTOCK_INTERVAL: number;
declare const bj_STOCK_MAX_ITERATIONS: number;
declare const bj_MAX_DEST_IN_REGION_EVENTS: number;
declare const bj_CAMERA_MIN_FARZ: number;
/**
 *  默认镜头距离(距离到目标)
 */
declare const bj_CAMERA_DEFAULT_DISTANCE: number;
/**
 *  默认镜头远景截断距离(远景剪裁)
 */
declare const bj_CAMERA_DEFAULT_FARZ: number;
/**
 *  默认镜头X轴旋转角度(水平角度)
 */
declare const bj_CAMERA_DEFAULT_AOA: number;
/**
 *  默认镜头区域(观察区域)
 */
declare const bj_CAMERA_DEFAULT_FOV: number;
/**
 *  默认镜头Y轴旋转角度(滚动)
 */
declare const bj_CAMERA_DEFAULT_ROLL: number;
/**
 *  默认镜头Z轴旋转角度(高度位移)
 */
declare const bj_CAMERA_DEFAULT_ROTATION: number;
declare const bj_RESCUE_PING_TIME: number;
declare const bj_NOTHING_SOUND_DURATION: number;
declare const bj_TRANSMISSION_PING_TIME: number;
declare const bj_TRANSMISSION_IND_RED: number;
declare const bj_TRANSMISSION_IND_BLUE: number;
declare const bj_TRANSMISSION_IND_GREEN: number;
declare const bj_TRANSMISSION_IND_ALPHA: number;
declare const bj_TRANSMISSION_PORT_HANGTIME: number;
declare const bj_CINEMODE_INTERFACEFADE: number;
declare const bj_CINEMODE_GAMESPEED: gamespeed;
declare const bj_CINEMODE_VOLUME_UNITMOVEMENT: number;
declare const bj_CINEMODE_VOLUME_UNITSOUNDS: number;
declare const bj_CINEMODE_VOLUME_COMBAT: number;
declare const bj_CINEMODE_VOLUME_SPELLS: number;
declare const bj_CINEMODE_VOLUME_UI: number;
declare const bj_CINEMODE_VOLUME_MUSIC: number;
declare const bj_CINEMODE_VOLUME_AMBIENTSOUNDS: number;
declare const bj_CINEMODE_VOLUME_FIRE: number;
declare const bj_SPEECH_VOLUME_UNITMOVEMENT: number;
declare const bj_SPEECH_VOLUME_UNITSOUNDS: number;
declare const bj_SPEECH_VOLUME_COMBAT: number;
declare const bj_SPEECH_VOLUME_SPELLS: number;
declare const bj_SPEECH_VOLUME_UI: number;
declare const bj_SPEECH_VOLUME_MUSIC: number;
declare const bj_SPEECH_VOLUME_AMBIENTSOUNDS: number;
declare const bj_SPEECH_VOLUME_FIRE: number;
declare const bj_SMARTPAN_TRESHOLD_PAN: number;
declare const bj_SMARTPAN_TRESHOLD_SNAP: number;
declare const bj_MAX_QUEUED_TRIGGERS: number;
declare const bj_QUEUED_TRIGGER_TIMEOUT: number;
/**
 *  教程战役
 */
declare const bj_CAMPAIGN_INDEX_T: number;
/**
 *  人族战役
 */
declare const bj_CAMPAIGN_INDEX_H: number;
/**
 *  不死族战役
 */
declare const bj_CAMPAIGN_INDEX_U: number;
/**
 *  兽族战役
 */
declare const bj_CAMPAIGN_INDEX_O: number;
/**
 *  暗夜精灵族战役
 */
declare const bj_CAMPAIGN_INDEX_N: number;
/**
 *  资料片暗夜精灵族战役
 */
declare const bj_CAMPAIGN_INDEX_XN: number;
/**
 *  资料片人族战役
 */
declare const bj_CAMPAIGN_INDEX_XH: number;
/**
 *  资料片不死族战役
 */
declare const bj_CAMPAIGN_INDEX_XU: number;
/**
 *  资料片兽族战役
 */
declare const bj_CAMPAIGN_INDEX_XO: number;
declare const bj_CAMPAIGN_OFFSET_T: number;
declare const bj_CAMPAIGN_OFFSET_H: number;
declare const bj_CAMPAIGN_OFFSET_U: number;
declare const bj_CAMPAIGN_OFFSET_O: number;
declare const bj_CAMPAIGN_OFFSET_N: number;
declare const bj_CAMPAIGN_OFFSET_XN: number;
declare const bj_CAMPAIGN_OFFSET_XH: number;
declare const bj_CAMPAIGN_OFFSET_XU: number;
declare const bj_CAMPAIGN_OFFSET_XO: number;
/**
 *  教程01
 */
declare const bj_MISSION_INDEX_T00: number;
/**
 *  教程02
 */
declare const bj_MISSION_INDEX_T01: number;
declare const bj_MISSION_INDEX_T02: number;
declare const bj_MISSION_INDEX_T03: number;
declare const bj_MISSION_INDEX_T04: number;
/**
 *  人族01
 */
declare const bj_MISSION_INDEX_H00: number;
/**
 *  人族02
 */
declare const bj_MISSION_INDEX_H01: number;
/**
 *  人族02 插曲
 */
declare const bj_MISSION_INDEX_H02: number;
/**
 *  人族03
 */
declare const bj_MISSION_INDEX_H03: number;
/**
 *  人族04
 */
declare const bj_MISSION_INDEX_H04: number;
/**
 *  人族05
 */
declare const bj_MISSION_INDEX_H05: number;
/**
 *  人族05 插曲
 */
declare const bj_MISSION_INDEX_H06: number;
/**
 *  人族06
 */
declare const bj_MISSION_INDEX_H07: number;
/**
 *  人族06 插曲
 */
declare const bj_MISSION_INDEX_H08: number;
/**
 *  人族07
 */
declare const bj_MISSION_INDEX_H09: number;
/**
 *  人族08
 */
declare const bj_MISSION_INDEX_H10: number;
/**
 *  人族09
 */
declare const bj_MISSION_INDEX_H11: number;
/**
 *  不死族01
 */
declare const bj_MISSION_INDEX_U00: number;
/**
 *  不死族02
 */
declare const bj_MISSION_INDEX_U01: number;
/**
 *  不死族02 插曲
 */
declare const bj_MISSION_INDEX_U02: number;
/**
 *  不死族03
 */
declare const bj_MISSION_INDEX_U03: number;
/**
 *  不死族04
 */
declare const bj_MISSION_INDEX_U05: number;
/**
 *  不死族05
 */
declare const bj_MISSION_INDEX_U07: number;
/**
 *  不死族05 插曲
 */
declare const bj_MISSION_INDEX_U08: number;
/**
 *  不死族06
 */
declare const bj_MISSION_INDEX_U09: number;
/**
 *  不死族07
 */
declare const bj_MISSION_INDEX_U10: number;
/**
 *  不死族08
 */
declare const bj_MISSION_INDEX_U11: number;
/**
 *  兽族01
 */
declare const bj_MISSION_INDEX_O00: number;
/**
 *  兽族02
 */
declare const bj_MISSION_INDEX_O01: number;
/**
 *  兽族02 插曲
 */
declare const bj_MISSION_INDEX_O02: number;
/**
 *  兽族03
 */
declare const bj_MISSION_INDEX_O03: number;
/**
 *  兽族04
 */
declare const bj_MISSION_INDEX_O04: number;
/**
 *  兽族04 插曲
 */
declare const bj_MISSION_INDEX_O05: number;
/**
 *  兽族05
 */
declare const bj_MISSION_INDEX_O06: number;
/**
 *  兽族06
 */
declare const bj_MISSION_INDEX_O07: number;
/**
 *  兽族07
 */
declare const bj_MISSION_INDEX_O08: number;
/**
 *  兽族07 插曲
 */
declare const bj_MISSION_INDEX_O09: number;
/**
 *  兽族08
 */
declare const bj_MISSION_INDEX_O10: number;
/**
 *  暗夜精灵族01
 */
declare const bj_MISSION_INDEX_N00: number;
/**
 *  暗夜精灵族02
 */
declare const bj_MISSION_INDEX_N01: number;
/**
 *  暗夜精灵族03
 */
declare const bj_MISSION_INDEX_N02: number;
/**
 *  暗夜精灵族04
 */
declare const bj_MISSION_INDEX_N03: number;
/**
 *  暗夜精灵族05
 */
declare const bj_MISSION_INDEX_N04: number;
/**
 *  暗夜精灵族06
 */
declare const bj_MISSION_INDEX_N05: number;
/**
 *  暗夜精灵族06 插曲
 */
declare const bj_MISSION_INDEX_N06: number;
/**
 *  暗夜精灵族07
 */
declare const bj_MISSION_INDEX_N07: number;
declare const bj_MISSION_INDEX_N08: number;
declare const bj_MISSION_INDEX_N09: number;
/**
 *  暗夜精灵族X01
 */
declare const bj_MISSION_INDEX_XN00: number;
/**
 *  暗夜精灵族X02
 */
declare const bj_MISSION_INDEX_XN01: number;
/**
 *  暗夜精灵族X03
 */
declare const bj_MISSION_INDEX_XN02: number;
/**
 *  暗夜精灵族X04
 */
declare const bj_MISSION_INDEX_XN03: number;
/**
 *  暗夜精灵族X04 插曲
 */
declare const bj_MISSION_INDEX_XN04: number;
/**
 *  暗夜精灵族X05
 */
declare const bj_MISSION_INDEX_XN05: number;
/**
 *  暗夜精灵族X06
 */
declare const bj_MISSION_INDEX_XN06: number;
/**
 *  暗夜精灵族X06 插曲
 */
declare const bj_MISSION_INDEX_XN07: number;
/**
 *  暗夜精灵族X07
 */
declare const bj_MISSION_INDEX_XN08: number;
/**
 *  暗夜精灵族X08
 */
declare const bj_MISSION_INDEX_XN09: number;
/**
 *  暗夜精灵族X08 结局
 */
declare const bj_MISSION_INDEX_XN10: number;
/**
 *  人族X01
 */
declare const bj_MISSION_INDEX_XH00: number;
/**
 *  人族X02
 */
declare const bj_MISSION_INDEX_XH01: number;
/**
 *  人族X03
 */
declare const bj_MISSION_INDEX_XH02: number;
/**
 *  人族X03 秘密关卡
 */
declare const bj_MISSION_INDEX_XH03: number;
/**
 *  人族 X03 插曲
 */
declare const bj_MISSION_INDEX_XH04: number;
/**
 *  人族X04
 */
declare const bj_MISSION_INDEX_XH05: number;
/**
 *  人族X04 插曲
 */
declare const bj_MISSION_INDEX_XH06: number;
/**
 *  人族X05
 */
declare const bj_MISSION_INDEX_XH07: number;
/**
 *  人族X06
 */
declare const bj_MISSION_INDEX_XH08: number;
/**
 *  人族X06 结局
 */
declare const bj_MISSION_INDEX_XH09: number;
/**
 *  不死族X01
 */
declare const bj_MISSION_INDEX_XU00: number;
/**
 *  不死族X01 插曲
 */
declare const bj_MISSION_INDEX_XU01: number;
/**
 *  不死族X02
 */
declare const bj_MISSION_INDEX_XU02: number;
/**
 *  不死族X02 插曲
 */
declare const bj_MISSION_INDEX_XU03: number;
/**
 *  不死族X03
 */
declare const bj_MISSION_INDEX_XU04: number;
/**
 *  不死族X04
 */
declare const bj_MISSION_INDEX_XU05: number;
/**
 *  不死族X05
 */
declare const bj_MISSION_INDEX_XU06: number;
/**
 *  不死族X06
 */
declare const bj_MISSION_INDEX_XU07: number;
/**
 *  不死族X07a
 */
declare const bj_MISSION_INDEX_XU08: number;
/**
 *  不死族X07b
 */
declare const bj_MISSION_INDEX_XU09: number;
/**
 *  不死族X07c
 */
declare const bj_MISSION_INDEX_XU10: number;
/**
 *  不死族X07 插曲
 */
declare const bj_MISSION_INDEX_XU11: number;
/**
 *  不死族X08
 */
declare const bj_MISSION_INDEX_XU12: number;
/**
 *  不死族X08 结局
 */
declare const bj_MISSION_INDEX_XU13: number;
/**
 *  兽族 X01
 */
declare const bj_MISSION_INDEX_XO00: number;
declare const bj_MISSION_INDEX_XO01: number;
declare const bj_MISSION_INDEX_XO02: number;
declare const bj_MISSION_INDEX_XO03: number;
/**
 *  教程开场动画
 */
declare const bj_CINEMATICINDEX_TOP: number;
/**
 *  人族开场动画
 */
declare const bj_CINEMATICINDEX_HOP: number;
/**
 *  人族结局动画
 */
declare const bj_CINEMATICINDEX_HED: number;
declare const bj_CINEMATICINDEX_OOP: number;
/**
 *  兽族结局动画
 */
declare const bj_CINEMATICINDEX_OED: number;
declare const bj_CINEMATICINDEX_UOP: number;
/**
 *  不死族结局动画
 */
declare const bj_CINEMATICINDEX_UED: number;
declare const bj_CINEMATICINDEX_NOP: number;
/**
 *  暗夜精灵族结局动画
 */
declare const bj_CINEMATICINDEX_NED: number;
/**
 *  资料片开场动画
 */
declare const bj_CINEMATICINDEX_XOP: number;
/**
 *  资料片结局动画
 */
declare const bj_CINEMATICINDEX_XED: number;
/**
 *  敌对
 */
declare const bj_ALLIANCE_UNALLIED: number;
/**
 *  敌对但共享视野
 */
declare const bj_ALLIANCE_UNALLIED_VISION: number;
/**
 *  结盟
 */
declare const bj_ALLIANCE_ALLIED: number;
/**
 *  结盟并共享视野
 */
declare const bj_ALLIANCE_ALLIED_VISION: number;
/**
 *  结盟并共享视野和单位
 */
declare const bj_ALLIANCE_ALLIED_UNITS: number;
/**
 *  结盟并共享视野和完全控制权
 */
declare const bj_ALLIANCE_ALLIED_ADVUNITS: number;
/**
 *  中立
 */
declare const bj_ALLIANCE_NEUTRAL: number;
/**
 *  中立并共享视野
 */
declare const bj_ALLIANCE_NEUTRAL_VISION: number;
/**
 *  按下
 */
declare const bj_KEYEVENTTYPE_DEPRESS: number;
/**
 *  松开
 */
declare const bj_KEYEVENTTYPE_RELEASE: number;
/**
 *  Left键
 */
declare const bj_KEYEVENTKEY_LEFT: number;
/**
 *  Right键
 */
declare const bj_KEYEVENTKEY_RIGHT: number;
/**
 *  Down键
 */
declare const bj_KEYEVENTKEY_DOWN: number;
/**
 *  Up键
 */
declare const bj_KEYEVENTKEY_UP: number;
declare const bj_MOUSEEVENTTYPE_DOWN: number;
declare const bj_MOUSEEVENTTYPE_UP: number;
declare const bj_MOUSEEVENTTYPE_MOVE: number;
/**
 *  添加
 */
declare const bj_TIMETYPE_ADD: number;
/**
 *  设为
 */
declare const bj_TIMETYPE_SET: number;
/**
 *  减去
 */
declare const bj_TIMETYPE_SUB: number;
/**
 *  扩展
 */
declare const bj_CAMERABOUNDS_ADJUST_ADD: number;
/**
 *  收缩
 */
declare const bj_CAMERABOUNDS_ADJUST_SUB: number;
/**
 *  要求
 */
declare const bj_QUESTTYPE_REQ_DISCOVERED: number;
/**
 *  要求，未发现的
 */
declare const bj_QUESTTYPE_REQ_UNDISCOVERED: number;
/**
 *  可选择的
 */
declare const bj_QUESTTYPE_OPT_DISCOVERED: number;
/**
 *  可选择的，未发现的
 */
declare const bj_QUESTTYPE_OPT_UNDISCOVERED: number;
/**
 *  发现任务
 */
declare const bj_QUESTMESSAGE_DISCOVERED: number;
/**
 *  任务更新
 */
declare const bj_QUESTMESSAGE_UPDATED: number;
/**
 *  任务完成
 */
declare const bj_QUESTMESSAGE_COMPLETED: number;
/**
 *  任务失败
 */
declare const bj_QUESTMESSAGE_FAILED: number;
/**
 *  任务要求
 */
declare const bj_QUESTMESSAGE_REQUIREMENT: number;
/**
 *  任务失败
 */
declare const bj_QUESTMESSAGE_MISSIONFAILED: number;
/**
 *  提示
 */
declare const bj_QUESTMESSAGE_ALWAYSHINT: number;
/**
 *  简单提示
 */
declare const bj_QUESTMESSAGE_HINT: number;
/**
 *  秘密
 */
declare const bj_QUESTMESSAGE_SECRET: number;
/**
 *  获得新单位
 */
declare const bj_QUESTMESSAGE_UNITACQUIRED: number;
/**
 *  新单位可用
 */
declare const bj_QUESTMESSAGE_UNITAVAILABLE: number;
/**
 *  收到新物品
 */
declare const bj_QUESTMESSAGE_ITEMACQUIRED: number;
/**
 *  警告
 */
declare const bj_QUESTMESSAGE_WARNING: number;
/**
 *  分数
 */
declare const bj_SORTTYPE_SORTBYVALUE: number;
/**
 *  玩家
 */
declare const bj_SORTTYPE_SORTBYPLAYER: number;
/**
 *  名字
 */
declare const bj_SORTTYPE_SORTBYLABEL: number;
/**
 *  淡入
 */
declare const bj_CINEFADETYPE_FADEIN: number;
/**
 *  淡出
 */
declare const bj_CINEFADETYPE_FADEOUT: number;
/**
 *  淡出并淡入
 */
declare const bj_CINEFADETYPE_FADEOUTIN: number;
/**
 *  有益
 */
declare const bj_REMOVEBUFFS_POSITIVE: number;
/**
 *  有害
 */
declare const bj_REMOVEBUFFS_NEGATIVE: number;
/**
 *  全部
 */
declare const bj_REMOVEBUFFS_ALL: number;
/**
 *  除生命周期外
 */
declare const bj_REMOVEBUFFS_NONTLIFE: number;
/**
 *  有益
 */
declare const bj_BUFF_POLARITY_POSITIVE: number;
/**
 *  有害
 */
declare const bj_BUFF_POLARITY_NEGATIVE: number;
/**
 *  全部
 */
declare const bj_BUFF_POLARITY_EITHER: number;
/**
 *  魔法
 */
declare const bj_BUFF_RESIST_MAGIC: number;
/**
 *  物理
 */
declare const bj_BUFF_RESIST_PHYSICAL: number;
/**
 *  魔法或物理
 */
declare const bj_BUFF_RESIST_EITHER: number;
/**
 *  无效选项
 */
declare const bj_BUFF_RESIST_BOTH: number;
/**
 *  力量
 */
declare const bj_HEROSTAT_STR: number;
/**
 *  敏捷
 */
declare const bj_HEROSTAT_AGI: number;
/**
 *  智力
 */
declare const bj_HEROSTAT_INT: number;
/**
 *  添加
 */
declare const bj_MODIFYMETHOD_ADD: number;
/**
 *  减去
 */
declare const bj_MODIFYMETHOD_SUB: number;
/**
 *  设为
 */
declare const bj_MODIFYMETHOD_SET: number;
/**
 *  旧单位的
 */
declare const bj_UNIT_STATE_METHOD_ABSOLUTE: number;
/**
 *  旧单位的相关物
 */
declare const bj_UNIT_STATE_METHOD_RELATIVE: number;
/**
 *  新单位的默认值
 */
declare const bj_UNIT_STATE_METHOD_DEFAULTS: number;
/**
 *  新单位的最大值
 */
declare const bj_UNIT_STATE_METHOD_MAXIMUM: number;
/**
 *  关闭
 */
declare const bj_GATEOPERATION_CLOSE: number;
/**
 *  打开
 */
declare const bj_GATEOPERATION_OPEN: number;
/**
 *  破坏
 */
declare const bj_GATEOPERATION_DESTROY: number;
/**
 *  布尔值
 */
declare const bj_GAMECACHE_BOOLEAN: number;
/**
 *  整数
 */
declare const bj_GAMECACHE_INTEGER: number;
/**
 *  实数
 */
declare const bj_GAMECACHE_REAL: number;
/**
 *  单位
 */
declare const bj_GAMECACHE_UNIT: number;
/**
 *  字符串
 */
declare const bj_GAMECACHE_STRING: number;
/**
 *  布尔值
 */
declare const bj_HASHTABLE_BOOLEAN: number;
/**
 *  整数
 */
declare const bj_HASHTABLE_INTEGER: number;
/**
 *  实数
 */
declare const bj_HASHTABLE_REAL: number;
/**
 *  字符串
 */
declare const bj_HASHTABLE_STRING: number;
declare const bj_HASHTABLE_HANDLE: number;
/**
 *  隐藏
 */
declare const bj_ITEM_STATUS_HIDDEN: number;
/**
 *  被持有
 */
declare const bj_ITEM_STATUS_OWNED: number;
/**
 *  无敌
 */
declare const bj_ITEM_STATUS_INVULNERABLE: number;
/**
 *  捡取时自动使用
 */
declare const bj_ITEM_STATUS_POWERUP: number;
/**
 *  可被市场随机出售
 */
declare const bj_ITEM_STATUS_SELLABLE: number;
/**
 *  可抵押
 */
declare const bj_ITEM_STATUS_PAWNABLE: number;
/**
 *  捡取时自动使用
 */
declare const bj_ITEMCODE_STATUS_POWERUP: number;
/**
 *  可出售
 */
declare const bj_ITEMCODE_STATUS_SELLABLE: number;
/**
 *  可被抵押掉
 */
declare const bj_ITEMCODE_STATUS_PAWNABLE: number;
/**
 *  简单
 */
declare const bj_MINIMAPPINGSTYLE_SIMPLE: number;
/**
 *  闪烁
 */
declare const bj_MINIMAPPINGSTYLE_FLASHY: number;
/**
 *  警告
 */
declare const bj_MINIMAPPINGSTYLE_ATTACK: number;
declare const bj_CAMPPINGSTYLE_PRIMARY: number;
declare const bj_CAMPPINGSTYLE_PRIMARY_GREEN: number;
declare const bj_CAMPPINGSTYLE_PRIMARY_RED: number;
declare const bj_CAMPPINGSTYLE_BONUS: number;
declare const bj_CAMPPINGSTYLE_TURNIN: number;
declare const bj_CAMPPINGSTYLE_BOSS: number;
declare const bj_CAMPPINGSTYLE_CONTROL_ALLY: number;
declare const bj_CAMPPINGSTYLE_CONTROL_NEUTRAL: number;
declare const bj_CAMPPINGSTYLE_CONTROL_ENEMY: number;
declare const bj_CORPSE_MAX_DEATH_TIME: number;
/**
 *  肉态
 */
declare const bj_CORPSETYPE_FLESH: number;
/**
 *  骨态
 */
declare const bj_CORPSETYPE_BONE: number;
declare const bj_ELEVATOR_BLOCKER_CODE: number;
declare const bj_ELEVATOR_CODE01: number;
declare const bj_ELEVATOR_CODE02: number;
/**
 *  所有的墙
 */
declare const bj_ELEVATOR_WALL_TYPE_ALL: number;
/**
 *  东墙
 */
declare const bj_ELEVATOR_WALL_TYPE_EAST: number;
/**
 *  北墙
 */
declare const bj_ELEVATOR_WALL_TYPE_NORTH: number;
/**
 *  南墙
 */
declare const bj_ELEVATOR_WALL_TYPE_SOUTH: number;
/**
 *  西墙
 */
declare const bj_ELEVATOR_WALL_TYPE_WEST: number;
/**
 *  全部玩家 [R]
 */
declare var bj_FORCE_ALL_PLAYERS: force;
declare var bj_FORCE_PLAYER: force[];
declare var bj_MELEE_MAX_TWINKED_HEROES: number;
/**
 *  可用地图区域 [R]
 */
declare var bj_mapInitialPlayableArea: rect;
/**
 *  初始可用镜头区域 [R]
 */
declare var bj_mapInitialCameraBounds: rect;
/**
 *  循环整数A [R]
 */
declare var bj_forLoopAIndex: number;
/**
 *  循环整数B [R]
 */
declare var bj_forLoopBIndex: number;
declare var bj_forLoopAIndexEnd: number;
declare var bj_forLoopBIndexEnd: number;
declare var bj_slotControlReady: boolean;
declare var bj_slotControlUsed: boolean[];
declare var bj_slotControl: mapcontrol[];
declare var bj_gameStartedTimer: timer;
declare var bj_gameStarted: boolean;
declare var bj_volumeGroupsTimer: timer;
declare var bj_isSinglePlayer: boolean;
declare var bj_dncSoundsDay: trigger;
declare var bj_dncSoundsNight: trigger;
declare var bj_dayAmbientSound: sound;
declare var bj_nightAmbientSound: sound;
declare var bj_dncSoundsDawn: trigger;
declare var bj_dncSoundsDusk: trigger;
declare var bj_dawnSound: sound;
declare var bj_duskSound: sound;
declare var bj_useDawnDuskSounds: boolean;
declare var bj_dncIsDaytime: boolean;
declare var bj_rescueSound: sound;
declare var bj_questDiscoveredSound: sound;
declare var bj_questUpdatedSound: sound;
declare var bj_questCompletedSound: sound;
declare var bj_questFailedSound: sound;
declare var bj_questHintSound: sound;
declare var bj_questSecretSound: sound;
declare var bj_questItemAcquiredSound: sound;
declare var bj_questWarningSound: sound;
declare var bj_victoryDialogSound: sound;
declare var bj_defeatDialogSound: sound;
declare var bj_stockItemPurchased: trigger;
declare var bj_stockUpdateTimer: timer;
declare var bj_stockAllowedPermanent: boolean[];
declare var bj_stockAllowedCharged: boolean[];
declare var bj_stockAllowedArtifact: boolean[];
declare var bj_stockPickedItemLevel: number;
declare var bj_stockPickedItemType: itemtype;
declare var bj_meleeVisibilityTrained: trigger;
declare var bj_meleeVisibilityIsDay: boolean;
declare var bj_meleeGrantHeroItems: boolean;
declare var bj_meleeNearestMineToLoc: location;
declare var bj_meleeNearestMine: unit;
declare var bj_meleeNearestMineDist: number;
declare var bj_meleeGameOver: boolean;
declare var bj_meleeDefeated: boolean[];
declare var bj_meleeVictoried: boolean[];
declare var bj_ghoul: unit[];
declare var bj_crippledTimer: timer[];
declare var bj_crippledTimerWindows: timerdialog[];
declare var bj_playerIsCrippled: boolean[];
declare var bj_playerIsExposed: boolean[];
declare var bj_finishSoonAllExposed: boolean;
declare var bj_finishSoonTimerDialog: timerdialog;
declare var bj_meleeTwinkedHeroes: number[];
declare var bj_rescueUnitBehavior: trigger;
declare var bj_rescueChangeColorUnit: boolean;
declare var bj_rescueChangeColorBldg: boolean;
declare var bj_cineSceneEndingTimer: timer;
declare var bj_cineSceneLastSound: sound;
declare var bj_cineSceneBeingSkipped: trigger;
declare var bj_cineModePriorSpeed: gamespeed;
declare var bj_cineModePriorFogSetting: boolean;
declare var bj_cineModePriorMaskSetting: boolean;
declare var bj_cineModeAlreadyIn: boolean;
declare var bj_cineModePriorDawnDusk: boolean;
declare var bj_cineModeSavedSeed: number;
declare var bj_cineFadeFinishTimer: timer;
declare var bj_cineFadeContinueTimer: timer;
declare var bj_cineFadeContinueRed: number;
declare var bj_cineFadeContinueGreen: number;
declare var bj_cineFadeContinueBlue: number;
declare var bj_cineFadeContinueTrans: number;
declare var bj_cineFadeContinueDuration: number;
declare var bj_cineFadeContinueTex: string;
declare var bj_queuedExecTotal: number;
declare var bj_queuedExecTriggers: trigger[];
declare var bj_queuedExecUseConds: boolean[];
declare var bj_queuedExecTimeoutTimer: timer;
declare var bj_queuedExecTimeout: trigger;
declare var bj_destInRegionDiesCount: number;
declare var bj_destInRegionDiesTrig: trigger;
declare var bj_groupCountUnits: number;
declare var bj_forceCountPlayers: number;
declare var bj_groupEnumTypeId: number;
declare var bj_groupEnumOwningPlayer: player;
declare var bj_groupAddGroupDest: group;
declare var bj_groupRemoveGroupDest: group;
declare var bj_groupRandomConsidered: number;
declare var bj_groupRandomCurrentPick: unit;
declare var bj_groupLastCreatedDest: group;
declare var bj_randomSubGroupGroup: group;
declare var bj_randomSubGroupWant: number;
declare var bj_randomSubGroupTotal: number;
declare var bj_randomSubGroupChance: number;
declare var bj_destRandomConsidered: number;
declare var bj_destRandomCurrentPick: destructable;
declare var bj_elevatorWallBlocker: destructable;
declare var bj_elevatorNeighbor: destructable;
declare var bj_itemRandomConsidered: number;
declare var bj_itemRandomCurrentPick: item;
declare var bj_forceRandomConsidered: number;
declare var bj_forceRandomCurrentPick: player;
declare var bj_makeUnitRescuableUnit: unit;
declare var bj_makeUnitRescuableFlag: boolean;
declare var bj_pauseAllUnitsFlag: boolean;
declare var bj_enumDestructableCenter: location;
declare var bj_enumDestructableRadius: number;
declare var bj_setPlayerTargetColor: playercolor;
declare var bj_isUnitGroupDeadResult: boolean;
declare var bj_isUnitGroupEmptyResult: boolean;
declare var bj_isUnitGroupInRectResult: boolean;
declare var bj_isUnitGroupInRectRect: rect;
declare var bj_changeLevelShowScores: boolean;
declare var bj_changeLevelMapName: string;
declare var bj_suspendDecayFleshGroup: group;
declare var bj_suspendDecayBoneGroup: group;
declare var bj_delayedSuspendDecayTimer: timer;
declare var bj_delayedSuspendDecayTrig: trigger;
declare var bj_livingPlayerUnitsTypeId: number;
declare var bj_lastDyingWidget: widget;
declare var bj_randDistCount: number;
declare var bj_randDistID: number[];
declare var bj_randDistChance: number[];
/**
 *  最后创建的单位 [R]
 */
declare var bj_lastCreatedUnit: unit;
/**
 *  最后创建的物品 [R]
 */
declare var bj_lastCreatedItem: item;
/**
 *  最后丢弃的物品 [R]
 */
declare var bj_lastRemovedItem: item;
/**
 *  最后创建的不死族金矿 [R]
 */
declare var bj_lastHauntedGoldMine: unit;
/**
 *  最后创建的可破坏物 [R]
 */
declare var bj_lastCreatedDestructable: destructable;
/**
 *  最后创建的单位组 [R]
 */
declare var bj_lastCreatedGroup: group;
/**
 *  最后创建的可见度修正器 [R]
 */
declare var bj_lastCreatedFogModifier: fogmodifier;
/**
 *  最后创建的特效 [R]
 */
declare var bj_lastCreatedEffect: effect;
/**
 *  最后创建的天气效果 [R]
 */
declare var bj_lastCreatedWeatherEffect: weathereffect;
/**
 *  最后创建的地形变化 [R]
 */
declare var bj_lastCreatedTerrainDeformation: terraindeformation;
/**
 *  最后创建的任务 [R]
 */
declare var bj_lastCreatedQuest: quest;
/**
 *  最后创建的任务项目 [R]
 */
declare var bj_lastCreatedQuestItem: questitem;
/**
 *  最后创建的失败条件 [R]
 */
declare var bj_lastCreatedDefeatCondition: defeatcondition;
/**
 *  最后启用的计时器 [R]
 */
declare var bj_lastStartedTimer: timer;
/**
 *  最后创建的计时器窗口 [R]
 */
declare var bj_lastCreatedTimerDialog: timerdialog;
/**
 *  最后创建的排行榜 [R]
 */
declare var bj_lastCreatedLeaderboard: leaderboard;
/**
 *  最后创建的多面板 [R]
 */
declare var bj_lastCreatedMultiboard: multiboard;
/**
 *  最后播放的音效 [R]
 */
declare var bj_lastPlayedSound: sound;
/**
 *  最后播放的音乐 [R]
 */
declare var bj_lastPlayedMusic: string;
/**
 *  最后发言长度 [R]
 */
declare var bj_lastTransmissionDuration: number;
/**
 *  最后创建的游戏缓存 [R]
 */
declare var bj_lastCreatedGameCache: gamecache;
/**
 *  最后创建的哈希表 [C]
 */
declare var bj_lastCreatedHashtable: hashtable;
/**
 *  最后读取的单位 [R]
 */
declare var bj_lastLoadedUnit: unit;
/**
 *  最后创建的对话框按钮 [R]
 */
declare var bj_lastCreatedButton: button;
/**
 *  最后替换的单位 [R]
 */
declare var bj_lastReplacedUnit: unit;
/**
 *  最后创建的漂浮文字 [R]
 */
declare var bj_lastCreatedTextTag: texttag;
/**
 *  最后创建的闪电效果 [R]
 */
declare var bj_lastCreatedLightning: lightning;
/**
 *  最后创建的图像 [R]
 */
declare var bj_lastCreatedImage: image;
/**
 *  最后创建的地面纹理变化 [R]
 */
declare var bj_lastCreatedUbersplat: ubersplat;
/**
 * declare var bj_lastCreatedMinimapIcon: minimapicon;
 */
/**
 * declare var bj_lastCreatedCommandButtonEffect: commandbuttoneffect;
 */
declare var filterIssueHauntOrderAtLocBJ: boolexpr | (() => boolean) | null;
declare var filterEnumDestructablesInCircleBJ: boolexpr | (() => boolean) | null;
declare var filterGetUnitsInRectOfPlayer: boolexpr | (() => boolean) | null;
declare var filterGetUnitsOfTypeIdAll: boolexpr | (() => boolean) | null;
declare var filterGetUnitsOfPlayerAndTypeId: boolexpr | (() => boolean) | null;
declare var filterMeleeTrainedUnitIsHeroBJ: boolexpr | (() => boolean) | null;
declare var filterLivingPlayerUnitsOfTypeId: boolexpr | (() => boolean) | null;
declare var bj_wantDestroyGroup: boolean;
declare var bj_lastInstObjFuncSuccessful: boolean;
/**
 * declare function GetLastCreatedMinimapIcon(): minimapicon;
 */
/**
 * declare function CreateMinimapIconOnUnitBJ(whichUnit: unit, red: number, green: number, blue: number, pingPath: string, fogVisibility: fogstate): minimapicon;
 */

/**
 * declare function CreateMinimapIconAtLocBJ(where: location, red: number, green: number, blue: number, pingPath: string, fogVisibility: fogstate): minimapicon;
 */
/**
 * declare function CreateMinimapIconBJ(x: number, y: number, red: number, green: number, blue: number, pingPath: string, fogVisibility: fogstate): minimapicon;
 */
declare function CampaignMinimapIconUnitBJ(whichUnit: unit, style: number): void;

declare function CampaignMinimapIconLocBJ(where: location, style: number): void;

/**
 * declare function CreateCommandButtonEffectBJ(abilityId: number, order: string): commandbuttoneffect;
 */
/**
 * declare function CreateTrainCommandButtonEffectBJ(unitId: number): commandbuttoneffect;
 */
/**
 * declare function CreateUpgradeCommandButtonEffectBJ(techId: number): commandbuttoneffect;
 */
/**
 * declare function CreateCommonCommandButtonEffectBJ(order: string): commandbuttoneffect;
 */
/**
 * declare function CreateLearnCommandButtonEffectBJ(abilityId: number): commandbuttoneffect;
 */

/**
 * declare function CreateBuildCommandButtonEffectBJ(unitId: number): commandbuttoneffect;
 */
/**
 * declare function GetLastCreatedCommandButtonEffectBJ(): commandbuttoneffect;
 */
declare function MeleePlayerIsOpponent(playerIndex: number, opponentIndex: number): boolean;

declare function MeleeGetAllyStructureCount(whichPlayer: player): number;

declare function MeleeGetAllyCount(whichPlayer: player): number;

declare function MeleeGetAllyKeyStructureCount(whichPlayer: player): number;

declare function MeleeDoDrawEnum(): void;

declare function MeleeDoVictoryEnum(): void;

declare function MeleeDoDefeat(whichPlayer: player): void;

declare function MeleeDoDefeatEnum(): void;

declare function MeleeDoLeave(whichPlayer: player): void;

declare function MeleeRemoveObservers(): void;

declare function MeleeCheckForVictors(): force;

declare function MeleeCheckForLosersAndVictors(): void;

declare function MeleeGetCrippledWarningMessage(whichPlayer: player): string;

declare function MeleeGetCrippledTimerMessage(whichPlayer: player): string;

declare function MeleeGetCrippledRevealedMessage(whichPlayer: player): string;

declare function MeleeExposePlayer(whichPlayer: player, expose: boolean): void;

declare function MeleeExposeAllPlayers(): void;

declare function MeleeCrippledPlayerTimeout(): void;

declare function MeleePlayerIsCrippled(whichPlayer: player): boolean;

declare function MeleeCheckForCrippledPlayers(): void;

declare function MeleeCheckLostUnit(lostUnit: unit): void;

declare function MeleeCheckAddedUnit(addedUnit: unit): void;

declare function MeleeTriggerActionConstructCancel(): void;

declare function MeleeTriggerActionUnitDeath(): void;

declare function MeleeTriggerActionUnitConstructionStart(): void;

declare function MeleeTriggerActionPlayerDefeated(): void;

declare function MeleeTriggerActionPlayerLeft(): void;

declare function MeleeTriggerActionAllianceChange(): void;

declare function MeleeTriggerTournamentFinishSoon(): void;

declare function MeleeWasUserPlayer(whichPlayer: player): boolean;

declare function MeleeTournamentFinishNowRuleA(multiplier: number): void;

declare function MeleeTriggerTournamentFinishNow(): void;

/**

 * 强制胜利/失败条件
 * 强制使用对战胜利/失败条件
 * 动作运行之前玩家要有单位.
 * @params  nothing
 */
declare function MeleeInitVictoryDefeat(): void;

declare function CheckInitPlayerSlotAvailability(): void;

declare function SetPlayerSlotAvailable(whichPlayer: player, control: mapcontrol): void;

declare function TeamInitPlayerSlots(teamCount: number): void;

declare function MeleeInitPlayerSlots(): void;

declare function FFAInitPlayerSlots(): void;

declare function OneOnOneInitPlayerSlots(): void;

declare function InitGenericPlayerSlots(): void;

declare function SetDNCSoundsDawn(): void;

declare function SetDNCSoundsDusk(): void;

declare function SetDNCSoundsDay(): void;

declare function SetDNCSoundsNight(): void;

declare function InitDNCSounds(): void;

declare function InitBlizzardGlobals(): void;

declare function InitQueuedTriggers(): void;

declare function InitMapRects(): void;

declare function InitSummonableCaps(): void;

declare function UpdateStockAvailability(whichItem: item): void;

declare function UpdateEachStockBuildingEnum(): void;

declare function UpdateEachStockBuilding(iType: itemtype, iLevel: number): void;

declare function PerformStockUpdates(): void;

declare function StartStockUpdates(): void;

declare function RemovePurchasedItem(): void;

declare function InitNeutralBuildings(): void;

declare function MarkGameStarted(): void;

declare function DetectGameStarted(): void;

declare function InitBlizzard(): void;

declare function RandomDistReset(): void;

declare function RandomDistAddItem(inID: number, inChance: number): void;

declare function RandomDistChoose(): number;

/**

 * 单位掉落的物品
 * 让 ${单位} 掉落一件 ${物品}
 * 在单位所在区域(32x32)内的随机点创建一个物品，注意当单位站在不可通行路径旁边时，该物品可能掉落其中而无法拾取。
 * @params  unit itemcode
 * @return item
 */
declare function UnitDropItem(inUnit: unit, inItemID: number): item;

declare function WidgetDropItem(inWidget: widget, inItemID: number): item;