/** @noSelfInFile **/

/**
 * kkapi 的api
 * 如果这些api不正常 可能是底层lua函数有bug 只能像平台提交bug
 * 如果这个文件的api没有包含最新的kkapi 可以自行声明api 底层函数都是有的
 */

declare interface dzeffectgroup extends agent {
    __dzeffectgroup: never;
}

declare let bj_lastCreatedDzEffectGroup: dzeffectgroup;


/**
 * 工会名称
 * 玩家所属公会[废弃]
 * 获取 ${whichPlayer} 公会名称
 * 获取玩家所属公会名称。
 * @params  player
 * @return string
 * @deprecated
 */
declare function DzAPI_Map_GetGuildName(whichPlayer: player): string;


/**
 * 获取鼠标在游戏内的坐标X
 * 获取鼠标在游戏内的坐标X
 * @return real
 */
declare function DzGetMouseTerrainX(): number;


/**
 * 获取鼠标在游戏内的坐标Y
 * 获取鼠标在游戏内的坐标Y
 * @return real
 */
declare function DzGetMouseTerrainY(): number;


/**
 * 获取鼠标在游戏内的坐标Z
 * 获取鼠标在游戏内的坐标Z
 * @return real
 */
declare function DzGetMouseTerrainZ(): number;


/**
 * 鼠标是否在游戏内
 * 鼠标是否在游戏内
 * @return boolean
 */
declare function DzIsMouseOverUI(): boolean;


/**
 * 获取鼠标在屏幕的坐标X
 * 获取鼠标在屏幕的坐标X
 * @return integer
 */
declare function DzGetMouseX(): number;


/**
 * 获取鼠标在屏幕的坐标Y
 * 获取鼠标在屏幕的坐标Y
 * @return integer
 */
declare function DzGetMouseY(): number;


/**
 * 获取鼠标游戏窗口坐标X
 * 获取鼠标游戏窗口坐标X
 * @return integer
 */
declare function DzGetMouseXRelative(): number;


/**
 * 获取鼠标游戏窗口坐标Y
 * 获取鼠标游戏窗口坐标Y
 * @return integer
 */
declare function DzGetMouseYRelative(): number;


/**
 * 设置鼠标的坐标
 * 设置鼠标的坐标为 (${x}, ${y})
 * @params  integer integer
 */
declare function DzSetMousePos(x: number, y: number): void;


declare function DzTriggerRegisterMouseEvent(trig: trigger, btn: number, status: number, sync: boolean, func: string): void;


declare function DzTriggerRegisterMouseEventByCode(trig: trigger, btn: number, status: number, sync: boolean, funcHandle: ()=>void): void;


declare function DzTriggerRegisterKeyEvent(trig: trigger, key: number, status: number, sync: boolean, func: string): void;


declare function DzTriggerRegisterKeyEventByCode(trig: trigger, key: number, status: number, sync: boolean, funcHandle: ()=>void): void;


declare function DzTriggerRegisterMouseWheelEvent(trig: trigger, sync: boolean, func: string): void;


declare function DzTriggerRegisterMouseWheelEventByCode(trig: trigger, sync: boolean, funcHandle: ()=>void): void;


declare function DzTriggerRegisterMouseMoveEvent(trig: trigger, sync: boolean, func: string): void;


declare function DzTriggerRegisterMouseMoveEventByCode(trig: trigger, sync: boolean, funcHandle: ()=>void): void;


/**
 * 事件响应 - 获取触发的按键
 * 获取触发的按键
 * 响应 [硬件] - 按键事件
 * @return gamekey
 */
declare function DzGetTriggerKey(): number;


/**
 * 事件响应 - 获取滚轮变化值
 * 获取滚轮变化值
 * 响应 [硬件] - 鼠标滚轮事件，正负区分上下
 * @return integer
 */
declare function DzGetWheelDelta(): number;


/**
 * 判断按键是否按下
 * 判断 ${按键} 是否按下
 * @params  gamekey
 * @return boolean
 */
declare function DzIsKeyDown(iKey: number): boolean;


/**
 * 事件响应 - 获取触发硬件事件的玩家
 * 获取触发硬件事件的玩家
 * 响应 [硬件] - 按键事件 滚轮事件 窗口大小变化事件
 * @return player
 */
declare function DzGetTriggerKeyPlayer(): player;


/**
 * 获取war3窗口宽度
 * 获取魔兽窗口宽度
 * @return integer
 */
declare function DzGetWindowWidth(): number;


/**
 * 获取魔兽窗口高度
 * 获取魔兽窗口高度
 * @return integer
 */
declare function DzGetWindowHeight(): number;


/**
 * 获取魔兽窗口X坐标
 * 获取魔兽窗口X坐标
 * @return integer
 */
declare function DzGetWindowX(): number;


/**
 * 获取魔兽窗口Y坐标
 * 获取魔兽窗口Y坐标
 * @return integer
 */
declare function DzGetWindowY(): number;


declare function DzTriggerRegisterWindowResizeEvent(trig: trigger, sync: boolean, func: string): void;


declare function DzTriggerRegisterWindowResizeEventByCode(trig: trigger, sync: boolean, funcHandle: ()=>void): void;


/**
 * 设置可破坏物位置 [BZAPI]
 * 设置 ${可破坏物} 的坐标为 (${x}, ${y})
 * @params  destructable real real
 */
declare function DzDestructablePosition(d: destructable, x: number, y: number): void;


/**
 * 设置单位位置 - 本地调用 [BZAPI]
 * 设置 ${单位} 的坐标为 (${x}, ${y})
 * @params  unit real real
 */
declare function DzSetUnitPosition(whichUnit: unit, x: number, y: number): void;


/**
 * 异步执行函数
 * 异步执行函数 ${funcName}
 * @params  string
 */
declare function DzExecuteFunc(funcName: string): void;


/**
 * 获取鼠标指向的单位(异步)
 * 鼠标指向的单位
 * @return unit
 */
declare function DzGetUnitUnderMouse(): unit;


/**
 * 替换单位贴图 [BZAPI]
 * 替换 ${单位} 的 贴图:${path} TexId:${texId})
 * 只能替换模型中有Replaceable ID x 贴图的模型，ID为索引。不会替换大头像中的模型
 * @params  unit string integer
 */
declare function DzSetUnitTexture(whichUnit: unit, path: string, texId: number): void;


/**
 * 设置内存数值
 * 设置内存数据 ${地址} = ${数值}
 * @params  integer real
 */
declare function DzSetMemory(address: number, value: number): void;


/**
 * 替换单位类型 [BZAPI]
 * 替换 ${单位} 的 单位类型为:${type}
 * 会替换大头像中的模型
 * @params  unit unitcode
 */
declare function DzSetUnitID(whichUnit: unit, id: number): void;


/**
 * 替换单位模型 [BZAPI]
 * 替换 ${单位} 的 模型:${path}
 * 不会替换大头像中的模型
 * @params  unit string
 */
declare function DzSetUnitModel(whichUnit: unit, path: string): void;


/**
 * 原生 - 设置小地图背景贴图
 * 修改小地图背景贴图为 ${bottomHeight}
 * @params  string
 */
declare function DzSetWar3MapMap(map: string): void;


/**
 * 获取客户端语言
 * 获取客户端语言
 * 对不同语言客户端返回不同
 * @return string
 */
declare function DzGetLocale(): string;


/**
 * 获取升级所需经验
 * 获取单位 ${unit} 的 ${level}级 升级所需经验
 * @params  unit integer
 * @return integer
 */
declare function DzGetUnitNeededXP(whichUnit: unit, level: number): number;


/**
 * 数据同步
 * 标签为 ${prefix} 的数据被同步 | 来自平台:${server}
 * 来自平台的参数填false
 * @params  string boolean
 */
declare function DzTriggerRegisterSyncData(trig: trigger, prefix: string, server: boolean): void;


/**
 * 同步游戏数据
 * 同步 标签：${prefix}  发送数据：${data}
 * @params  string string
 */
declare function DzSyncData(prefix: string, data: string): void;


/**
 * 事件响应 - 获取同步的数据前缀
 * 获取同步的数据前缀
 * 响应 [同步] - 同步消息事件
 * @return string
 */
declare function DzGetTriggerSyncPrefix(): string;


/**
 * 事件响应 - 获取同步的数据
 * 获取同步的数据
 * 响应 [同步] - 同步消息事件
 * @return string
 */
declare function DzGetTriggerSyncData(): string;


/**
 * 事件响应 - 获取同步数据的玩家
 * 获取同步数据的玩家
 * 响应 [同步] - 同步消息事件
 * @return player
 */
declare function DzGetTriggerSyncPlayer(): player;


/**
 * 同步游戏数据（指定长度）
 * 同步 标签：${prefix}  发送数据：${data} 数据长度：${dataLen}
 * 可以按长度同步数据
 * @params  string string integer
 */
declare function DzSyncBuffer(prefix: string, data: string, dataLen: number): void;


/**
 * 同步游戏数据（立即）
 * 立即同步 标签：${prefix}  发送数据：${data}
 * @params  string string
 */
declare function DzSyncDataImmediately(prefix: string, data: string): void;


/**
 * 原生 - 隐藏界面元素
 * 隐藏所有界面UI
 * 不再在地图初始化时调用则会残留小地图和时钟模型
 */
declare function DzFrameHideInterface(): void;


/**
 * 原生 - 修改游戏渲染黑边范围
 * 修改游戏渲染黑边: 上方高度:${upperHeight} 下方高度:${bottomHeight}
 * @params  real real
 */
declare function DzFrameEditBlackBorders(upperHeight: number, bottomHeight: number): void;


/**
 * 原生 - 单位大头像
 * 单位大头像
 * 小地图右侧的大头像
 * @return frame
 */
declare function DzFrameGetPortrait(): number;


/**
 * 原生 - 小地图
 * 小地图
 * @return frame
 */
declare function DzFrameGetMinimap(): number;


/**
 * 原生 - 技能按钮
 * 技能按钮:(${row}, ${calumn})
 * 参考物编中的技能按钮(x,y)坐标
 * @params  integer integer
 * @return frame
 */
declare function DzFrameGetCommandBarButton(row: number, column: number): number;


/**
 * 原生 - 英雄按钮
 * 英雄按钮:${buttnoid}
 * 左侧的英雄头像，参数表示第N+1个英雄，索引从0开始
 * @params  integer
 * @return frame
 */
declare function DzFrameGetHeroBarButton(buttonId: number): number;


/**
 * 原生 - 英雄血条
 * 英雄血条:${buttnoid}
 * 左侧的英雄头像下的血条，参数表示第N+1个英雄，索引从0开始
 * @params  integer
 * @return frame
 */
declare function DzFrameGetHeroHPBar(buttonId: number): number;


/**
 * 原生 - 英雄蓝条
 * 英雄蓝条:${buttnoid}
 * 左侧的英雄头像下的蓝条，参数表示第N+1个英雄，索引从0开始
 * @params  integer
 * @return frame
 */
declare function DzFrameGetHeroManaBar(buttonId: number): number;


/**
 * 原生 - 物品栏按钮
 * 物品栏按钮:${buttnoid}
 * 索引从0开始
 * @params  integer
 * @return frame
 */
declare function DzFrameGetItemBarButton(buttonId: number): number;


/**
 * 原生 - 小地图按钮
 * 小地图按钮:${buttnoid}
 * 小地图右侧竖排按钮，索引从0开始
 * @params  integer
 * @return frame
 */
declare function DzFrameGetMinimapButton(buttonId: number): number;


/**
 * 原生 - 界面按钮
 * 界面按钮:${buttnoid}
 * 左上的菜单等按钮，索引从0开始
 * @params  integer
 * @return frame
 */
declare function DzFrameGetUpperButtonBarButton(buttonId: number): number;


/**
 * 原生 - 鼠标提示
 * 鼠标提示
 * 鼠标移动到物品或技能按钮上显示的提示窗，初始位于技能栏上方
 * @return frame
 */
declare function DzFrameGetTooltip(): number;


/**
 * 原生 - 玩家聊天信息框
 * 玩家聊天信息框
 * @return frame
 */
declare function DzFrameGetChatMessage(): number;


/**
 * 原生 - 系统消息框
 * 系统消息框
 * 包含显示消息给玩家 及 显示Debug消息 等，
 * @return frame
 */
declare function DzFrameGetUnitMessage(): number;


/**
 * 原生 - 上方消息框
 * 上方消息框
 * 高维修费用 等消息
 * @return frame
 */
declare function DzFrameGetTopMessage(): number;


/**
 * 取 RGBA 色值
 * 将RGB(Alph:${Alpha}，R:${Red} G:${Green} B:${Blue} 转换为色值
 * 返回一个整数，用于设置Frame颜色
 * @params  integer integer integer integer
 * @return rgba2color
 */
declare function DzGetColor(r: number, g: number, b: number, a: number): number;


declare function DzFrameSetUpdateCallback(func: string): void;


declare function DzFrameSetUpdateCallbackByCode(funcHandle: ()=>void): void;


/**
 * 显示/隐藏
 * 设置 ${frame} 显示:${bottomHeight}
 * @params  frame boolean
 */
declare function DzFrameShow(frame: number, enable: boolean): void;


/**
 * 新建Frame
 * 新建Frame 名字:${frame} 父节点:${parent} ID:${Id}
 * 名字为fdf文件中的名字，ID默认填0。重复创建同名Frame会导致游戏退出时显示崩溃消息，如需避免可以使用Tag创建
 * @params  string frame integer
 * @return frame
 */
declare function DzCreateFrame(frame: string, parent: number, id: number): number;


declare function DzCreateSimpleFrame(frame: string, parent: number, id: number): number;


/**
 * 销毁
 * 销毁 ${frame}
 * 销毁一个被重复创建过的Frame会导致游戏崩溃，重复创建同名Frame请使用Tag创建
 * @params  frame
 */
declare function DzDestroyFrame(frame: number): void;


/**
 * 加载Toc文件列表
 * 加载--> ${fileName.toc}
 * 载入自己的fdf列表文件
 * @params  anyfile
 */
declare function DzLoadToc(fileName: string): void;


/**
 * 设置相对位置
 * 设置 ${frame} 的 ${Point} 锚点 (跟随Frame-->${relativeFrame} 的 ${relativePoint} 锚点) 偏移(${x}, ${y})
 * @params  frame framepoints frame framepoints real real
 */
declare function DzFrameSetPoint(frame: number, point: number, relativeFrame: number, relativePoint: number, x: number, y: number): void;


/**
 * 设置绝对位置
 * 设置 ${frame} 的 ${Point} 锚点 在 (${x}, ${y})
 * @params  frame framepoints real real
 */
declare function DzFrameSetAbsolutePoint(frame: number, point: number, x: number, y: number): void;


/**
 * 清空所有锚点
 * 清空 ${frame} 的 全部锚点
 * @params  frame
 */
declare function DzFrameClearAllPoints(frame: number): void;


/**
 * 启用/禁用
 * 设置 ${frame} 启用:${bottomHeight}
 * @params  frame boolean
 */
declare function DzFrameSetEnable(name: number, enable: boolean): void;


/**
 * 注册UI事件回调(func name)[观战、录像不响应]
 * 注册 ${frame} 的 ${事件类型} 事件 运行:${func name} 是否同步:${sync}
 * @params  frame frameevent string boolean
 */
declare function DzFrameSetScript(frame: number, eventId: number, func: string, sync: boolean): void;


/**
 * 注册UI事件回调(func handle)[观战、录像不响应]
 * 注册 ${frame} 的 ${事件类型} 事件 运行:${code handle} 是否同步:${sync}
 * 运行触发器时需要打开同步：执行会阻止它原本的功能继续响应
 * @params  frame frameevent code boolean
 */
declare function DzFrameSetScriptByCode(frame: number, eventId: number, funcHandle: ()=>void, sync: boolean): void;


/**
 * 注册UI事件回调-异步(func handle)[观战、录像不响应][new]
 * 注册 ${frame} 的 ${事件类型} 事件 运行:${code handle} 是否同步:${sync}
 * 注册UI事件回调-异步，可以在游戏、录像、观战等所有模式响应
 * @params  frame frameevent code boolean
 */
declare function DzFrameSetScriptBlock(frame: number, eventId: number, funcHandle: ()=>void, sync: boolean): void;


/**
 * 注册UI事件回调-异步(func name)[观战、录像可响应][new]
 * 注册 ${frame} 的 ${事件类型} 事件 运行:${func name}
 * @params  frame frameevent string
 */
declare function DzFrameSetScriptAsync(frame: number, eventId: number, funcName: string): void;


/**
 * 注册UI事件回调-异步(func handle)[观战、录像可响应][new]
 * 注册 ${frame} 的 ${事件类型} 事件 运行:${code handle}
 * 注册UI事件回调-异步，可以在游戏、录像、观战等所有模式响应
 * @params  frame frameevent code
 */
declare function DzFrameSetScriptByCodeAsync(frame: number, eventId: number, func: ()=>void): void;


/**
 * 注册UI事件回调-异步(func handle)[观战、录像可响应][new]
 * 注册 ${frame} 的 ${事件类型} 事件 运行:${code handle}
 * 注册UI事件回调-异步，可以在游戏、录像、观战等所有模式响应，该函数执行会阻止它原本的功能继续响应
 * @params  frame frameevent code
 */
declare function DzFrameSetScriptBlockAsync(frame: number, eventId: number, func: ()=>void): void;


/**
 * 事件响应 - 获取触发ui的玩家
 * 获取触发ui的玩家
 * @return player
 */
declare function DzGetTriggerUIEventPlayer(): player;


/**
 * 事件响应 - 触发的Frame
 * 触发的Frame
 * @return frame
 */
declare function DzGetTriggerUIEventFrame(): number;


/**
 * 获取子Frame
 * 获取名字为 ${name} 的子Frame  ID:${Id}
 * ID默认填0，同名时优先获取最后被创建的。非Simple类的Frame类型都用此函数来获取子Frame。
 * @params  string integer
 * @return frame
 */
declare function DzFrameFindByName(name: string, id: number): number;


/**
 * 获取子SimpleFrame
 * 获取名字为 ${name} 的子SimpleFrame  ID:${Id}
 * ID默认填0，同名时优先获取最后被创建的。SimpleFrame为fdf中的Frame类型。
 * @params  string integer
 * @return frame
 */
declare function DzSimpleFrameFindByName(name: string, id: number): number;


/**
 * 获取子SimpleFontString
 * 获取名字为 ${name} 的子SimpleFontString  ID:${Id}
 * ID默认填0，同名时优先获取最后被创建的。SimpleFontString为fdf中的Frame类型。
 * @params  string integer
 * @return frame
 */
declare function DzSimpleFontStringFindByName(name: string, id: number): number;


/**
 * 获取子SimpleTexture
 * 获取名字为 ${name} 的子SimpleTexture  ID:${Id}
 * ID默认填0，同名时优先获取最后被创建的。SimpleTexture为fdf中的Frame类型。
 * @params  string integer
 * @return frame
 */
declare function DzSimpleTextureFindByName(name: string, id: number): number;


/**
 * 原生 - 游戏UI
 * 游戏UI
 * 一般用作创建自定义UI的父节点
 * @return frame
 */
declare function DzGetGameUI(): number;


/**
 * 点击
 * 点击 ${frame}
 * @params  frame
 */
declare function DzClickFrame(frame: number): void;


/**
 * 原生 - 修改屏幕比例(FOV)
 * 修改屏幕比例(FOV):${val}
 * @params  real
 */
declare function DzSetCustomFovFix(value: number): void;


/**
 * 开启/关闭宽屏模式
 * ${enable} 宽屏模式
 * @params  optionEnable
 */
declare function DzEnableWideScreen(enable: boolean): void;


/**
 * 设置文本
 * 设置 ${frame} 的文本为 ${string}
 * (支持EditBox, TextFrame, TextArea, SimpleFontString、GlueEditBoxWar3、SlashChatBox、TimerTextFrame、TextButtonFrame、GlueTextButton)
 * @params  frame string
 */
declare function DzFrameSetText(frame: number, text: string): void;


/**
 * 获取 Frame 内的文字
 * 获取 ${buttnoid} 的文字
 * （支持EditBox, TextFrame, TextArea, SimpleFontString）
 * @params  frame
 * @return string
 */
declare function DzFrameGetText(frame: number): string;


/**
 * 设置字数限制
 * 设置 ${frame} 的字数限制为 ${size}
 * @params  frame integer
 */
declare function DzFrameSetTextSizeLimit(frame: number, size: number): void;


/**
 * 获取 Frame 的 字数限制
 * 获取 ${frame} 的字数限制
 * （支持EditBox）
 * @params  frame
 * @return integer
 */
declare function DzFrameGetTextSizeLimit(frame: number): number;


declare function DzFrameSetTextColor(frame: number, color: number): void;


/**
 * 鼠标所在的Frame控件指针
 * 鼠标所在的Frame控件指针
 * 不是所有类型的Frame都能响应鼠标，能响应的有BUTTON，TEXT等
 * @return frame
 */
declare function DzGetMouseFocus(): number;


/**
 * 移动所有锚点到Frame
 * 移动 ${frame} 的 所有锚点 到 ${frame} 上
 * @params  frame frame
 */
declare function DzFrameSetAllPoints(frame: number, relativeFrame: number): boolean;


/**
 * 设置焦点
 * 设置 ${frame} 获取焦点 ${enable}
 * @params  frame boolean
 */
declare function DzFrameSetFocus(frame: number, enable: boolean): boolean;


/**
 * 设置模型
 * 设置 ${frame} 的模型文件为 ${modelFile} ModelType:${modelType} Flag:${flag}
 * @params  frame string integer integer
 */
declare function DzFrameSetModel(frame: number, modelFile: string, modelType: number, flag: number): void;


/**
 * 控件是否启用
 * ${frame} 是否启用
 * @params  frame
 * @return boolean
 */
declare function DzFrameGetEnable(frame: number): boolean;


/**
 * 设置透明度(0-255)
 * 设置 ${frame} 的透明度为 ${alpha}
 * @params  frame integer
 */
declare function DzFrameSetAlpha(frame: number, alpha: number): void;


/**
 * 获取 Frame 的 透明度(0-255)
 * 获取 ${Frame} 的透明度
 * @params  frame
 * @return integer
 */
declare function DzFrameGetAlpha(frame: number): number;


/**
 * 设置动画
 * 设置 ${frame} 播放序号 ${alpha} 的动画  自动播放:${autocast}
 * @params  frame integer boolean
 */
declare function DzFrameSetAnimate(frame: number, animId: number, autocast: boolean): void;


/**
 * 设置动画进度
 * 设置 ${frame} 的动画进度为:${offset}
 * 自动播放为false是可用
 * @params  frame real
 */
declare function DzFrameSetAnimateOffset(frame: number, offset: number): void;


/**
 * 设置贴图
 * 设置 ${frame} 的贴图为:${texture} 是否平铺 ${flag}
 * （支持Backdrop、SimpleStatusBar）
 * @params  frame imagefile integer
 */
declare function DzFrameSetTexture(frame: number, texture: string, flag: number): void;


/**
 * 设置缩放
 * 设置 ${frame} 的缩放 ${scale}
 * @params  frame real
 */
declare function DzFrameSetScale(frame: number, scale: number): void;


/**
 * 设置提示
 * 设置 ${frame} 的提示Frame为 ${tooltip}
 * 设置tooltip
 * @params  frame integer
 */
declare function DzFrameSetTooltip(frame: number, tooltip: number): void;


/**
 * 限制鼠标移动
 * 限制鼠标在 ${frame} 内: ${enable}
 * @params  frame boolean
 */
declare function DzFrameCageMouse(frame: number, enable: boolean): void;


/**
 * 获取当前值
 * 获取 ${frame} 当前值
 * （支持Slider、SimpleStatusBar、StatusBar）
 * @params  frame
 * @return real
 */
declare function DzFrameGetValue(frame: number): number;


/**
 * 设置最大/最小值
 * 设置 ${frame} 的 最小值为 ${Min} 最大值为 ${Max}
 * （支持Slider、SimpleStatusBar、StatusBar）
 * @params  frame real real
 */
declare function DzFrameSetMinMaxValue(frame: number, minValue: number, maxValue: number): void;


/**
 * 设置步进值
 * 设置 ${frame} 的 步进值 为 ${step}
 * （支持Slider）
 * @params  frame real
 */
declare function DzFrameSetStepValue(frame: number, step: number): void;


/**
 * 设置当前值
 * 设置 ${frame} 的 当前值 为 ${value}
 * （支持Slider、SimpleStatusBar、StatusBar）
 * @params  frame real
 */
declare function DzFrameSetValue(frame: number, value: number): void;


/**
 * 设置大小
 * 设置 ${frame} （宽 ${w} 高 ${h}）
 * @params  frame real real
 */
declare function DzFrameSetSize(frame: number, w: number, h: number): void;


/**
 * 新建Frame [Tag]
 * 创建 类型:${type} 名字:${frame} 父节点:${parent} 模版:${template} ID:${Id}
 * 此处名字可以自定义，类型和模版填写fdf文件中的内容。通过此函数创建的Frame无法获取到子Frame。
 * @params  string string frame string integer
 * @return frame
 */
declare function DzCreateFrameByTagName(frameType: string, name: string, parent: number, template: string, id: number): number;


/**
 * 设置颜色
 * 设置 ${frame} 颜色 ${color}
 * @params  frame rgba2color
 */
declare function DzFrameSetVertexColor(frame: number, color: number): void;


declare function DzOriginalUIAutoResetPoint(enable: boolean): void;


/**
 * 设置优先级
 * 设置 ${frame} 优先级:${int}
 * @params  frame integer
 */
declare function DzFrameSetPriority(frame: number, priority: number): void;


/**
 * 设置父窗口
 * 设置 ${frame} 的父窗口为 ${frame2}
 * @params  frame frame
 */
declare function DzFrameSetParent(frame: number, parent: number): void;


/**
 * 获取 Frame 的 高度
 * 获取 ${frame} 的高度
 * @params  frame
 * @return real
 */
declare function DzFrameGetHeight(frame: number): number;


/**
 * 设置字体
 * 设置 ${frame} 的字体为 ${font}, 大小 ${height}, flag ${flag}
 * 支持EditBox、SimpleFontString、SimpleMessageFrame以及非SimpleFrame类型的例如TEXT，flag作用未知
 * @params  frame string real integer
 */
declare function DzFrameSetFont(frame: number, fileName: string, height: number, flag: number): void;


/**
 * 获取 Frame 的 Parent
 * 获取 ${frame} 的 Parent
 * @params  frame
 * @return frame
 */
declare function DzFrameGetParent(frame: number): number;


/**
 * 设置对齐方式
 * 设置 ${frame} 的对齐方式为 ${align}
 * 支持TextFrame、SimpleFontString、SimpleMessageFrame
 * @params  frame integer
 */
declare function DzFrameSetTextAlignment(frame: number, align: number): void;


/**
 * 获取魔兽窗口宽度
 * 获取魔兽窗口宽度
 * 不包括魔兽窗口边框
 * @return integer
 */
declare function DzGetClientWidth(): number;


/**
 * 获取魔兽窗口高度
 * 获取魔兽窗口高度
 * 不包括魔兽窗口边框
 * @return integer
 */
declare function DzGetClientHeight(): number;


/**
 * 控件是否显示
 * ${frame} 是否显示
 * @params  frame
 * @return boolean
 */
declare function DzFrameIsVisible(frame: number): boolean;


/**
 * 显示/隐藏SimpleFrame
 * 设置 ${frame} 显示:${bottomHeight}
 * 只针对SimpleFrame类型控件
 * @params  frame boolean
 */
declare function DzSimpleFrameShow(frame: number, enable: boolean): void;


/**
 * 追加文本
 * 追加 ${frame} 的文本 ${string}
 * 支持TextArea
 * @params  frame string
 */
declare function DzFrameAddText(frame: number, text: string): void;


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
 * 刷新小地图
 * 刷新小地图
 */
declare function DzUpdateMinimap(): void;


/**
 * 修改单位透明度
 * 设置单位 ${单位} 的透明度为${透明度}  ${true} 强制更新
 * @params  unit integer boolean
 */
declare function DzUnitChangeAlpha(whichUnit: unit, alpha: number, forceUpdate: boolean): void;


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
 * 设置加速倍率
 * 设置加速倍率： ${ratio}
 * @params  real
 */
declare function DzSetSpeed(ratio: number): void;


/**
 * 转换地图坐标为屏幕坐标-异步
 * 转换地图坐标（ ${x}，${Y}，${z}）为屏幕坐标执行动作
 * 动作里用“转换后的屏幕X坐标”和“转换后的屏幕Y坐标”去读取
 * @params  real real real
 */
declare function DzConvertWorldPosition(x: number, y: number, z: number, callback: ()=>void): boolean;


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
 * 玩家是否拥有地图商城道具
 * 获取 ${whichPlayer} 是否拥有: ${key} 对应的地图商城道具.
 * 检测玩家背包中是否拥该道具且处于有效状态。已过期的时效性道具、剩余数量为0的数量型道具均视为无效；
 * @params  player string
 * @return boolean
 */
declare function DzAPI_Map_HasMallItem(whichPlayer: player, key: string): boolean;

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
 * 玩家地图等级
 * 获取 ${player} 的地图等级
 * 玩家地图等级【RPG大厅限定】
 * @params  player
 * @return integer
 */
declare function DzAPI_Map_GetMapLevel(whichPlayer: player): number;


declare function RequestExtraIntegerData(dataType: number, whichPlayer: player, param1: string, param2: string, param3: boolean, param4: number, param5: number, param6: number): number;


declare function RequestExtraBooleanData(dataType: number, whichPlayer: player, param1: string, param2: string, param3: boolean, param4: number, param5: number, param6: number): boolean;


declare function RequestExtraStringData(dataType: number, whichPlayer: player, param1: string, param2: string, param3: boolean, param4: number, param5: number, param6: number): string;


declare function RequestExtraRealData(dataType: number, whichPlayer: player, param1: string, param2: string, param3: boolean, param4: number, param5: number, param6: number): number;


/**
 * 当前选择的单位(异步)
 * 获取主控单位
 * 获取的单位是异步的，请谨慎操作
 * @return unit
 */
declare function DzGetSelectedLeaderUnit(): unit;


/**
 * 聊天框是否打开
 * 获取聊天框是否打开
 * @return boolean
 */
declare function DzIsChatBoxOpen(): boolean;


/**
 * 设置单位的鼠标指向UI和血条显示/隐藏
 * 设置 ${单位} 的鼠标指向UI和血条 ${显示}
 * @params  unit showhideoption
 */
declare function DzSetUnitPreselectUIVisible(whichUnit: handle, visible: boolean): void;


/**
 * 设置特效播放动画
 * 设置 ${特效} 播放第 ${编号} 号动画，播放方式${方式}
 * @params  effect integer integer
 */
declare function DzSetEffectAnimation(whichEffect: effect, index: number, flag: number): void;


/**
 * 设置特效坐标
 * 设置 ${特效} 的坐标（ ${x},${y},${z}）
 * solarTips: z需要考虑地形高度 如果不知道z该设置多少 请使用 see EXSetEffectXY
 * @params  effect real real real
 */
declare function DzSetEffectPos(whichEffect: effect, x: number, y: number, z: number): void;


/**
 * 设置特效颜色
 * 设置 ${特效} 的颜色：${color}
 * @params  effect rgba2color
 */
declare function DzSetEffectVertexColor(whichEffect: effect, color: number): void;


/**
 * 设置特效透明度
 * 设置 ${特效} 的透明度：${alpha}
 * @params  effect integer
 */
declare function DzSetEffectVertexAlpha(whichEffect: effect, alpha: number): void;


/**
 * 设置特效模型
 * 设置 ${特效} 的模型： ${modelFile}
 * @params  effect modelfile
 */
declare function DzSetEffectModel(whichEffect: effect, model: string): void;


/**
 * 设置特效队伍颜色
 * 设置 ${特效} 的队伍颜色： ${Color}
 * @params  effect playercolorid
 */
declare function DzSetEffectTeamColor(whichHandle: effect, playerId: number): void;


/**
 * 设置控件视口
 * 设置 ${frame} 的视口为 ${状态}
 * 设置控件视口后，他的子控件在边缘超出部分不会显示
 * @params  frame onoffoption
 */
declare function DzFrameSetClip(whichframe: number, enable: boolean): void;


/**
 * 设置魔兽窗口大小
 * 设置魔兽窗口大小：${宽}/${高}
 * 如修改窗口模式下的窗口大小为 1920/1080
 * @params  integer integer
 */
declare function DzChangeWindowSize(width: number, height: number): boolean;


/**
 * 设置特效播放动画
 * 设置 ${特效} 播放 ${death} 动画，附加动画链接名 ${alternate}
 * 变身动画才需要附加链接名 一般情况填 “” 空字符串就行
 * @params  effect string string
 */
declare function DzPlayEffectAnimation(whichEffect: effect, anim: string, link: string): void;


/**
 * 绑定特效
 * 在 ${单位} 附着点 ${origin} 绑定特效 ${特效}
 * @params  unit string effect
 */
declare function DzBindEffect(parent: widget, attachPoint: string, whichEffect: effect): void;


/**
 * 解除绑定特效
 * 解除绑定的特效 ${特效}
 * 可以让绑定在单位身上的特效分离出来，被分离的特效能设置坐标、缩放
 * @params  effect
 */
declare function DzUnbindEffect(whichEffect: effect): void;


/**
 * 单位缩放
 * 设置 ${单位} 的缩放为 ${scale}
 * 可以用来缩放单位
 * @params  unit real
 */
declare function DzSetWidgetSpriteScale(whichUnit: widget, scale: number): void;


/**
 * 特效缩放
 * 设置 ${特效} 的缩放为 ${scale}
 * 可以用来缩放特效
 * @params  effect real
 */
declare function DzSetEffectScale(whichHandle: effect, scale: number): void;


/**
 * 获取特效颜色
 * 获取 ${特效} 的颜色
 * @params  effect
 * @return integer
 */
declare function DzGetEffectVertexColor(whichEffect: effect): number;


/**
 * 获取特效透明度
 * 获取 ${特效} 的透明度
 * @params  effect
 * @return integer
 */
declare function DzGetEffectVertexAlpha(whichEffect: effect): number;


/**
 * 获取物品技能
 * 获取 ${物品} 的第 ${编号} 个技能
 * @params  item integer
 * @return ability
 */
declare function DzGetItemAbility(whichEffect: item, index: number): ability;


/**
 * 获取子控件数量
 * 获取 ${界面} 的子控件数量
 * @params  frame
 * @return integer
 */
declare function DzFrameGetChildrenCount(whichframe: number): number;


/**
 * 获取子控件
 * 获取 ${界面} 的第 ${编号} 个子控件
 * @params  frame integer
 * @return frame
 */
declare function DzFrameGetChild(whichframe: number, index: number): number;


/**
 * 解锁BLP像素限制
 * 解锁BLP像素限制：${true}
 * 填true会解除原本魔兽高清图片的512像素限制
 * @params  boolean
 */
declare function DzUnlockBlpSizeLimit(enable: boolean): void;


/**
 * 获取商店目标
 * 获取 ${商店} 选中的 ${玩家} 单位
 * @params  unit player
 * @return unit
 */
declare function DzGetActivePatron(store: unit, p: player): unit;


/**
 * 获取玩家选中的单位数量
 * 获取玩家选中的单位数量
 * 返回值是异步的，谨慎使用
 * @return integer
 */
declare function DzGetLocalSelectUnitCount(): number;


/**
 * 获取玩家选中的单位
 * 获取玩家选中的第 ${编号} 个单位
 * 返回值是异步的，谨慎使用
 * @params  integer
 * @return unit
 */
declare function DzGetLocalSelectUnit(index: number): unit;


/**
 * 获取字符串数量
 * 获取字符串数量
 * @return integer
 */
declare function DzGetJassStringTableCount(): number;


/**
 * 清除模型内存缓存
 * 清除模型 ${模型} 内存缓存
 * @params  modelfile
 */
declare function DzModelRemoveFromCache(path: string): void;


/**
 * 清除所有模型内存缓存
 * 清除所有模型内存缓存
 */
declare function DzModelRemoveAllFromCache(): void;


/**
 * 获取框选控件
 * 获取第 ${编号} 个框选控件
 * 鼠标框选单位后，控制面板的队列单位头像控件
 * @params  integer
 * @return frame
 */
declare function DzFrameGetInfoPanelSelectButton(index: number): number;


/**
 * 获取BUFF控件
 * 获取第 ${编号} 个BUFF控件
 * 控制面板的单位属性下面的魔法效果buff控件
 * @params  integer
 * @return frame
 */
declare function DzFrameGetInfoPanelBuffButton(index: number): number;


/**
 * 获取农民控件
 * 获取农民控件
 * @return frame
 */
declare function DzFrameGetPeonBar(): number;


/**
 * 获取技能右下角数字文本控件
 * 获取 ${技能控件} 右下角数字文本控件
 * @params  frame
 * @return frame
 */
declare function DzFrameGetCommandBarButtonNumberText(whichframe: number): number;


/**
 * 获取技能右下角数字文本框体
 * 获取 ${技能控件} 右下角数字文本框体
 * @params  frame
 * @return frame
 */
declare function DzFrameGetCommandBarButtonNumberOverlay(whichframe: number): number;


/**
 * 获取技能冷却指示器
 * 获取 ${技能控件} 冷却指示器
 * 控件类型为sprite frame
 * @params  frame
 * @return frame
 */
declare function DzFrameGetCommandBarButtonCooldownIndicator(whichframe: number): number;


/**
 * 获取技能自动施法指示器
 * 获取 ${技能控件} 自动施法指示器
 * 控件类型为sprite frame
 * @params  frame
 * @return frame
 */
declare function DzFrameGetCommandBarButtonAutoCastIndicator(whichframe: number): number;


/**
 * 设置FPS显示/隐藏
 * 设置 FPS ${显示/隐藏}
 * @params  showhideoption
 */
declare function DzToggleFPS(show: boolean): void;


/**
 * 获取 FPS 帧数
 * 获取 FPS 帧数
 * @return integer
 */
declare function DzGetFPS(): number;


/**
 * 转换地图坐标为小地图x坐标
 * 转换地图坐标(${x},${y})为小地图x坐标
 * 小地图左下角为（0,0）
 * @params  real real
 * @return real
 */
declare function DzFrameWorldToMinimapPosX(x: number, y: number): number;


/**
 * 转换地图坐标为小地图y坐标
 * 转换地图坐标(${x},${y})为小地图y坐标
 * 小地图左下角为（0,0）
 * @params  real real
 * @return real
 */
declare function DzFrameWorldToMinimapPosY(x: number, y: number): number;


/**
 * 自定义指定单位的小地图图标
 * 设置指定 ${单位} 的小地图图标：${imagefile}
 * 图标大小只支持16×16，设置图标之前需要开启：中立建筑 - 小地图特殊标志
 * @params  unit imagefile
 */
declare function DzWidgetSetMinimapIcon(whichunit: unit, path: string): void;


/**
 * 开启/关闭自定义指定单位的小地图图标
 * 设置 ${单位} ${On/Off} 自定义小地图图标
 * @params  unit onoffoption
 */
declare function DzWidgetSetMinimapIconEnable(whichunit: unit, enable: boolean): void;


/**
 * 游戏提示信息界面
 * 游戏提示信息界面
 * 如建筑升级完成提示
 * @return frame
 */
declare function DzFrameGetWorldFrameMessage(): number;


/**
 * 显示游戏提示信息
 * 设置 ${消息界面} 显示 ${消息} 颜色：${颜色}，持续 ${时间} 秒，${是/否}永久显示
 * @params  frame string rgba2color real YESNO
 */
declare function DzSimpleMessageFrameAddMessage(whichframe: number, text: string, color: number, duration: number, permanent: boolean): void;


/**
 * 清理游戏提示信息
 * 清理 ${消息界面} 的游戏提示信息
 * @params  frame
 */
declare function DzSimpleMessageFrameClear(whichframe: number): void;


/**
 * 转换屏幕坐标到世界x坐标
 * 转换屏幕坐标（ ${x}，${Y}）为世界x坐标
 * @params  real real
 * @return real
 */
declare function DzConvertScreenPositionX(x: number, y: number): number;


/**
 * 转换屏幕坐标到世界y坐标
 * 转换屏幕坐标（ ${x}，${Y}）为世界y坐标
 * @params  real real
 * @return real
 */
declare function DzConvertScreenPositionY(x: number, y: number): number;


/**
 * 监听建筑选位置
 * 监听建筑选位置
 */
declare function DzRegisterOnBuildLocal(func: ()=>void): void;


/**
 * 获取建造的命令id
 * 获取建造的命令id
 * 用于监听建筑选位置后
 * @return integer
 */
declare function DzGetOnBuildOrderId(): number;


/**
 * 获取建造的命令类型
 * 获取建造的命令类型
 * 用于监听建筑选位置后
 * @return integer
 */
declare function DzGetOnBuildOrderType(): number;


/**
 * 获取预建造对象
 * 获取预建造对象
 * 用于监听建筑选位置后
 * @return unit
 */
declare function DzGetOnBuildAgent(): widget;


/**
 * 监听技能预选目标
 * 监听技能预选目标
 */
declare function DzRegisterOnTargetLocal(func: ()=>void): void;


/**
 * 获取监听到的技能
 * 获取监听到的技能
 * 用于监听技能预选后
 * @return abilcode
 */
declare function DzGetOnTargetAbilId(): number;


/**
 * 获取监听到技能预选命令
 * 获取监听到技能预选命令
 * 用于监听技能预选后
 * @return integer
 */
declare function DzGetOnTargetOrderId(): number;


/**
 * 获取监听到技能预选命令类型
 * 获取监听到技能预选命令类型
 * 用于监听技能预选后
 * @return integer
 */
declare function DzGetOnTargetOrderType(): number;


/**
 * 获取监听到技能预选目标
 * 获取监听到技能预选目标
 * 用于监听技能预选后
 * @return unit
 */
declare function DzGetOnTargetAgent(): widget;


/**
 * 获取监听到技能预选目标
 * 获取监听到技能预选目标
 * 用于监听技能预选后
 * @return unit
 */
declare function DzGetOnTargetInstantTarget(): widget;


/**
 * 打开QQ群链接
 * 打开QQ群链接：${地址}
 * 必须包括http://qm.qq.com开头的QQ群链接，调用后触发玩家加群，注意每分钟只能触发一次。
 * @params  string
 */
declare function DzOpenQQGroupUrl(url: string): boolean;


/**
 * 游戏界面限制设置
 * 界面 ${是/否} 限制在游戏窗口内
 * 当为 ‘否’ 时游戏里的界面可以拖到游戏外面
 * @params  YESNO
 */
declare function DzFrameEnableClipRect(enable: boolean): void;


/**
 * 设置单位名字
 * 设置 ${单位} 名字：${name}
 * @params  unit string
 */
declare function DzSetUnitName(whichUnit: unit, name: string): void;


/**
 * 设置单位头像模型
 * 设置 ${单位} 头像模型：${modelFile}
 * @params  unit modelfile
 */
declare function DzSetUnitPortrait(whichUnit: unit, modelFile: string): void;


/**
 * 设置单位描述
 * 设置 ${单位} 的描述： ${value}
 * @params  unit string
 */
declare function DzSetUnitDescription(whichUnit: unit, value: string): void;


/**
 * 设置单位普攻弹道弧度
 * 设置 ${单位} 普攻弹道弧度：${arc}
 * @params  unit real
 */
declare function DzSetUnitMissileArc(whichUnit: unit, arc: number): void;


/**
 * 设置单位普攻弹道模型
 * 设置 ${单位} 普攻弹道模型：${modelFile}
 * @params  unit modelfile
 */
declare function DzSetUnitMissileModel(whichUnit: unit, modelFile: string): void;


/**
 * 设置英雄称谓
 * 设置 ${英雄} 称谓：${name}
 * @params  unit string
 */
declare function DzSetUnitProperName(whichUnit: unit, name: string): void;


/**
 * 设置单位普攻弹道自导允许
 * 设置 ${单位} 普攻弹道自导：${enable}
 * @params  unit boolean
 */
declare function DzSetUnitMissileHoming(whichUnit: unit, enable: boolean): void;


/**
 * 设置单位普攻弹道速度
 * 设置 ${单位} 普攻弹道速度：${seed}
 * @params  unit real
 */
declare function DzSetUnitMissileSpeed(whichUnit: unit, speed: number): void;


/**
 * 特效显示/隐藏
 * 设置 ${whichEffect}  ${Show/Hide}
 * @params  effect showhideoption
 */
declare function DzSetEffectVisible(whichHandle: effect, enable: boolean): void;


/**
 * 复活单位
 * 设置 ${whichUnit} 复活为 ${whichPlayer} 的单位，生命值：${hp}，魔法值：${mp}，坐标(${x},${y})
 * @params  unit player real real real real
 */
declare function DzReviveUnit(whichUnit: unit, whichPlayer: player, hp: number, mp: number, x: number, y: number): void;


/**
 * 获取普攻技能
 * ${whichUnit} 普攻技能
 * @params  unit
 * @return ability
 */
declare function DzGetAttackAbility(whichUnit: unit): ability;


/**
 * 结束普攻技能CD
 * 结束普攻 ${whichAbility} 的技能CD
 * @params  ability
 */
declare function DzAttackAbilityEndCooldown(whichHandle: ability): void;


declare function EXSetUnitArrayString(uid: number, id: number, n: number, name: string): boolean;


declare function EXSetUnitInteger(uid: number, id: number, n: number): boolean;


/**
 * 新建地形装饰物
 * 创建 ${doodadid} 版本：${val} 坐标：(${x}，${Y}，${z}) 角度：${rotate} 缩放：${scale}
 * @params  doodadcode integer real real real degree real
 * @return doodad
 */
declare function DzDoodadCreate(id: number, val: number, x: number, y: number, z: number, rotate: number, scale: number): number;


/**
 * 装饰物的类型ID
 * 获取 ${doodadid} 的类型ID
 * @params  doodad
 * @return doodadcode
 */
declare function DzDoodadGetTypeId(doodad: number): number;


/**
 * 设置装饰物模型
 * 设置 ${doodad} 的模型：${modelFile}
 * @params  doodad modelfile
 */
declare function DzDoodadSetModel(doodad: number, modelFile: string): void;


/**
 * 改变装饰物队伍颜色
 * 改变 ${doodad} 的队伍颜色：${Color}
 * @params  doodad playercolorid
 */
declare function DzDoodadSetTeamColor(doodad: number, color: number): void;


/**
 * 设置装饰物颜色
 * 设置 ${doodad} 的颜色：${color}
 * @params  doodad rgba2color
 */
declare function DzDoodadSetColor(doodad: number, color: number): void;


/**
 * 装饰物的X坐标
 * 获取 ${doodad} 的X坐标
 * @params  doodad
 * @return real
 */
declare function DzDoodadGetX(doodad: number): number;


/**
 * 装饰物的Y坐标
 * 获取 ${doodad} 的Y坐标
 * @params  doodad
 * @return real
 */
declare function DzDoodadGetY(doodad: number): number;


/**
 * 装饰物的Z坐标
 * 获取 ${doodad} 的Z坐标
 * @params  doodad
 * @return real
 */
declare function DzDoodadGetZ(doodad: number): number;


/**
 * 设置装饰物位置
 * 设置 ${doodad} 的坐标：(${x}，${Y}，${z})
 * @params  doodad real real real
 */
declare function DzDoodadSetPosition(doodad: number, x: number, y: number, z: number): void;


/**
 * 设置装饰物旋转
 * 设置 ${doodad} 旋转，角度：${rotate} 方向：(${axisX}，${axisY}，${axisZ})
 * @params  doodad degree real real real
 */
declare function DzDoodadSetOrientMatrixRotate(doodad: number, angle: number, axisX: number, axisY: number, axisZ: number): void;


/**
 * 修改装饰物尺寸
 * 设置 ${doodad} 缩放：(${x}，${y}，${z})
 * @params  doodad real real real
 */
declare function DzDoodadSetOrientMatrixScale(doodad: number, x: number, y: number, z: number): void;


/**
 * 装饰物重置大小
 * 设置 ${doodad} 重置大小
 * @params  doodad
 */
declare function DzDoodadSetOrientMatrixResize(doodad: number): void;


/**
 * 装饰物显示/隐藏
 * 设置 ${doodad} ${Show/Hide}
 * @params  doodad showhideoption
 */
declare function DzDoodadSetVisible(doodad: number, enable: boolean): void;


/**
 * 装饰物播放动画
 * 设置 ${doodad} 播放${Animation Name}  随机播放${inNoAnim}
 * @params  doodad string boolean
 */
declare function DzDoodadSetAnimation(doodad: number, animName: string, animRandom: boolean): void;


/**
 * 设置装饰物动画播放速度
 * 设置 ${doodad} 的动画播放速度为正常速度的 ${Percent} 倍
 * @params  doodad real
 */
declare function DzDoodadSetTimeScale(doodad: number, scale: number): void;


/**
 * 装饰物动画播放速度
 *  ${doodad} 的动画播放速度
 * @params  doodad
 * @return real
 */
declare function DzDoodadGetTimeScale(doodad: number): number;


/**
 * 装饰物当前动画编号
 *  ${doodad} 的当前动画编号
 * @params  doodad
 * @return integer
 */
declare function DzDoodadGetCurrentAnimationIndex(doodad: number): number;


/**
 * 装饰物动画数量
 *  ${doodad} 的动画数量
 * @params  doodad
 * @return integer
 */
declare function DzDoodadGetAnimationCount(doodad: number): number;


/**
 * 装饰物动画名
 *  ${doodad} 第 ${index} 个动画的动画名
 * @params  doodad integer
 * @return string
 */
declare function DzDoodadGetAnimationName(doodad: number, index: number): string;


/**
 * 装饰物动画时间
 *  ${doodad} 第 ${index} 个动画的时间
 * @params  doodad integer
 * @return integer
 */
declare function DzDoodadGetAnimationTime(doodad: number, index: number): number;


/**
 * 解锁JASS字节码限制 [NEW]
 *  ${是/否} 解锁JASS字节码限制
 * @params  YESNO
 */
declare function DzUnlockOpCodeLimit(enable: boolean): void;


/**
 * 设置剪切板 [NEW]
 * 设置剪切板 ${内容}
 * @params  string
 */
declare function DzSetClipboard(content: string): boolean;


/**
 * 删除装饰物  [NEW]
 * 删除 ${doodad}
 * @params  doodad
 */
declare function DzDoodadRemove(doodad: number): void;


/**
 * 降低玩家科技等级 [NEW]
 *  降低${玩家} 的 ${科技} ${等级} 个等级
 * @params  player techcode integer
 */
declare function DzRemovePlayerTechResearched(whichPlayer: player, techid: number, removelevels: number): void;


/**
 * 获取单位的指定技能
 * 查找 ${单位} 的指定技能 ${技能}
 * @params  unit abilcode
 * @return ability
 */
declare function DzUnitFindAbility(whichUnit: unit, abilcode: number): ability;


/**
 * 设置技能数据-字符串
 * 设置 ${技能} 的字符串 ${名字} 数据为 ${内容}
 * @params  ability string string
 */
declare function DzAbilitySetStringData(whichAbility: ability, key: string, value: string): void;


/**
 * 设置技能启用/禁用
 * 设置 ${技能} 的启用状态为 ${启用} ，隐藏UI为 ${隐藏}
 * Solar提示: 隐藏UI貌似无效 至少不会隐藏图标，这里的禁用并不会变成暗图标 (如需暗图标可以使用DzSetUnitAbilityDisable)
 * @params  ability boolean boolean
 */
declare function DzAbilitySetEnable(whichAbility: ability, enable: boolean, hideUI: boolean): void;


/**
 * 设置单位实例的移动类型
 * 设置 ${单位} 实例的移动类型为 ${Value}
 * @params  unit MoveTypeName
 */
declare function DzUnitSetMoveType(whichUnit: unit, moveType: string): void;


/**
 * 获取 Frame 的 宽度
 * 获取 ${frame} 的宽度
 * @params  frame
 * @return real
 */
declare function DzFrameGetWidth(frame: number): number;


/**
 * 设置模型界面播放动画（编号）
 * 设置 ${模型界面} 播放第 ${index}）个动画，播放方式${flag}
 * @params  frame integer integer
 */
declare function DzFrameSetAnimateByIndex(frame: number, index: number, flag: number): void;


declare function DzSetUnitDataCacheInteger(uid: number, id: number, index: number, v: number): void;


declare function DzUnitUIAddLevelArrayInteger(uid: number, id: number, lv: number, v: number): void;


/**
 * 设置物品模型 [NEW]
 * 设置 ${whichItem} 的模型：${modelFile}
 * @params  item modelfile
 */
declare function DzItemSetModel(whichItem: item, file: string): void;


/**
 * 设置物品颜色 [NEW]
 * 设置 ${whichItem} 的颜色：${color}
 * @params  item rgba2color
 */
declare function DzItemSetVertexColor(whichItem: item, color: number): void;


/**
 * 设置物品透明度(0-255) [NEW]
 * 设置 ${whichItem} 的透明度为 ${alpha}
 * @params  item integer
 */
declare function DzItemSetAlpha(whichItem: item, color: number): void;


/**
 * 设置物品头像 [NEW]
 * 设置 ${whichItem} 的头像：${modelFile}
 * @params  item modelfile
 */
declare function DzItemSetPortrait(whichItem: item, modelPath: string): void;


/**
 * 血条刷新事件 [NEW]
 * 血条刷新事件
 */
declare function DzFrameHookHpBar(func: ()=>void): void;


/**
 * 触发血条的单位 [NEW]
 * 触发血条的单位
 * 用于血条刷新事件下
 * @return unit
 */
declare function DzFrameGetTriggerHpBarUnit(): unit;


/**
 * 触发的血条 [NEW]
 * 触发的血条
 * 用于血条刷新事件下
 * @return frame
 */
declare function DzFrameGetTriggerHpBar(): number;


/**
 * 获取单位血条 [NEW]
 * 获取 ${whichUnit} 血条
 * 获取单位血条
 * @params  unit
 * @return frame
 */
declare function DzFrameGetUnitHpBar(whichUnit: unit): number;


/**
 * 鼠标界面 [NEW]
 * 鼠标界面
 * @return frame
 */
declare function DzGetCursorFrame(): number;


/**
 * 是否有指定锚点 [NEW]
 * 判断 ${whichFrame} 是否有 ${anchor} 锚点
 * @params  frame framepoints
 * @return boolean
 */
declare function DzFrameGetPointValid(frame: number, anchor: number): boolean;


/**
 * 获取相对锚点所在界面 [NEW]
 * 判断 ${whichFrame} 的相对锚点 ${anchor} 所在界面
 * @params  frame framepoints
 * @return frame
 */
declare function DzFrameGetPointRelative(frame: number, anchor: number): number;


/**
 * 获取相对锚点的界面锚点 [NEW]
 * 判断 ${whichFrame} 的相对锚点 ${anchor} 所在界面的锚点
 * @params  frame framepoints
 * @return framepoints
 */
declare function DzFrameGetPointRelativePoint(frame: number, anchor: number): number;


/**
 * 获取锚点X坐标 [NEW]
 * ${whichFrame} 的 ${anchor} X坐标
 * @params  frame framepoints
 * @return real
 */
declare function DzFrameGetPointX(frame: number, anchor: number): number;


/**
 * 获取锚点Y坐标 [NEW]
 * ${whichFrame} 的 ${anchor} Y坐标
 * @params  frame framepoints
 * @return real
 */
declare function DzFrameGetPointY(frame: number, anchor: number): number;


/**
 * 打印调试信息到平台日志 [NEW]
 * 打印 ${信息} 到平台日志
 * 用于调试，打印信息到平台日志文件
 * @params  string
 */
declare function DzWriteLog(msg: string): void;


/**
 * 获取当前漂浮文字的字体 [NEW]
 * 漂浮文字的字体
 * @return string
 */
declare function DzTextTagGetFont(): string;


/**
 * 设置漂浮文字字体 [NEW]
 * 设置漂浮文字字体：${font}
 * @params  string
 */
declare function DzTextTagSetFont(fileName: string): void;


/**
 * 设置漂浮文字透明度 [NEW]
 * 设置 ${漂浮文字} 透明度：${alpha}
 * @params  texttag integer
 */
declare function DzTextTagSetStartAlpha(t: texttag, alpha: number): void;


/**
 * 获取漂浮文字的阴影颜色 [NEW]
 * 获取 ${漂浮文字} 的阴影颜色
 * @params  texttag
 * @return rgba2color
 */
declare function DzTextTagGetShadowColor(t: texttag): number;


/**
 * 设置漂浮文字阴影颜色 [NEW]
 * 设置 ${漂浮文字} 阴影颜色：${color}
 * @params  texttag rgba2color
 */
declare function DzTextTagSetShadowColor(t: texttag, color: number): void;


/**
 * 获取单位组里单位数量 [NEW]
 * 获取 ${group} 里单位数量
 * @params  group
 * @return integer
 */
declare function DzGroupGetCount(g: group): number;


/**
 * 获取单位组里指定索引的单位 [NEW]
 * 获取 ${group} 里第 ${index} 个单位
 * @params  group integer
 * @return unit
 */
declare function DzGroupGetUnitAt(g: group, index: number): unit;


/**
 * 创建幻象单位 [NEW]
 * 为 ${player} 创建一个 ${unitId} 类型的幻象，在坐标(${x},${y}),面向角度：${face}
 * @params  player unitcode real real real
 * @return unit
 */
declare function DzUnitCreateIllusion(p: player, unitId: number, x: number, y: number, face: number): unit;


/**
 * 为单位创建幻象 [NEW]
 * 为 ${unit} 创建一个幻象
 * @params  unit
 * @return unit
 */
declare function DzUnitCreateIllusionFromUnit(u: unit): unit;


/**
 * 检查字符串是否包含指定的子字符串 [NEW]
 * 检测 ${targetStr} 是否包含 ${searchStr} 字符串，判定规则：${caseSensitive} 区分大小写
 * @params  string string boolean
 * @return boolean
 */
declare function DzStringContains(s: string, whichString: string, caseSensitive: boolean): boolean;


/**
 * 字符串中查找子字符串并返回其位置 [NEW]
 * 检测 ${targetStr} 包含 ${searchStr} 的位置，从第 ${caseSensitive} 位开始，判定规则：${caseSensitive} 区分大小写
 * @params  string string integer boolean
 * @return integer
 */
declare function DzStringFind(s: string, whichString: string, off: number, caseSensitive: boolean): number;


/**
 * 检测字符串里第一个包含指定字符串里任意字符的位置 [NEW]
 * 检测 ${targetStr} 第一个包含 ${searchStr} 里任意字符的位置，从第 ${caseSensitive} 位开始，判定规则：${caseSensitive} 区分大小写
 * @params  string string integer boolean
 * @return integer
 */
declare function DzStringFindFirstOf(s: string, whichString: string, off: number, caseSensitive: boolean): number;


/**
 * 检查字符串第一个不包含指定字符串里任意字符的位置 [NEW]
 * 检测 ${targetStr} 第一个不包含 ${searchStr} 里任意字符的位置，从第 ${caseSensitive} 位开始，判定规则：${caseSensitive} 区分大小写
 * @params  string string integer boolean
 * @return integer
 */
declare function DzStringFindFirstNotOf(s: string, whichString: string, off: number, caseSensitive: boolean): number;


/**
 * 从后往前查找字符串中包含指定字符串任意字符的所在位置 [NEW]
 * 从后往前检测 ${targetStr} 包含指定字符串 ${searchStr} 任意字符的位置，从第 ${caseSensitive} 位开始，判定规则：${caseSensitive} 区分大小写
 * @params  string string integer boolean
 * @return integer
 */
declare function DzStringFindLastOf(s: string, whichString: string, off: number, caseSensitive: boolean): number;


/**
 * 从后往前查找字符串中不包含指定字符串任意字符的所在位置 [NEW]
 * 从后往前检测 ${targetStr} 不包含指定字符串 ${searchStr} 任意字符的位置，从第 ${caseSensitive} 位开始，判定规则：${caseSensitive} 区分大小写
 * @params  string string integer boolean
 * @return integer
 */
declare function DzStringFindLastNotOf(s: string, whichString: string, off: number, caseSensitive: boolean): number;


/**
 * 删除字符串左边的空格 [NEW]
 * 删除 ${targetStr} 左边的空格
 * @params  string
 * @return string
 */
declare function DzStringTrimLeft(s: string): string;


/**
 * 删除字符串右边的空格 [NEW]
 * 删除 ${targetStr} 右边的空格
 * @params  string
 * @return string
 */
declare function DzStringTrimRight(s: string): string;


/**
 * 删除字符串两边的空格 [NEW]
 * 删除 ${targetStr} 两边的空格
 * @params  string
 * @return string
 */
declare function DzStringTrim(s: string): string;


/**
 * 反转字符串 [NEW]
 * 反转 ${targetStr}
 * @params  string
 * @return string
 */
declare function DzStringReverse(s: string): string;


/**
 * 替换字符串 [NEW]
 * 替换 ${targetStr} 里的 ${searchStr} 为 ${newStr}
 * @params  string string string
 * @return string
 */
declare function DzStringReplace(s: string, whichString: string, replaceWith: string, caseSensitive: boolean): string;


/**
 * 插入字符串 [NEW]
 * 在 ${targetStr} 的位置 ${whichPosition} 插入 ${newStr}
 * @params  string integer string
 * @return string
 */
declare function DzStringInsert(s: string, whichPosition: number, whichString: string): string;


/**
 * 整数的2进制的位值 [NEW]
 *  ${i} 的2进制的第 ${byteIndex} 位的值
 * @params  integer integer
 * @return integer
 */
declare function DzBitGet(i: number, byteIndex: number): number;


/**
 * 设置整数的2进制的位值 [NEW]
 * 设置 ${i} 的2进制的第 ${byteIndex} 位的值：${byteValue}
 * @params  integer integer integer
 * @return integer
 */
declare function DzBitSet(i: number, byteIndex: number, byteValue: number): number;


/**
 * 整数的256进制的位值 [NEW]
 *  ${i} 256进制第 ${byteIndex} 位的值
 * @params  integer integer
 * @return integer
 */
declare function DzBitGetByte(i: number, byteIndex: number): number;


/**
 * 设置整数的256进制的位值 [NEW]
 * 设置 ${i} 的256进制的第 ${byteIndex} 位的值：${byteValue}
 * @params  integer integer integer
 * @return integer
 */
declare function DzBitSetByte(i: number, byteIndex: number, byteValue: number): number;


/**
 * 按位取反 [NEW]
 *  ${i} 按位取反
 * @params  integer
 * @return integer
 */
declare function DzBitNot(i: number): number;


/**
 * 按位与 [NEW]
 * ${a} 和 ${b} 按位与
 * @params  integer integer
 * @return integer
 */
declare function DzBitAnd(a: number, b: number): number;


/**
 * 按位或 [NEW]
 * ${a} 和 ${b} 按位或
 * @params  integer integer
 * @return integer
 */
declare function DzBitOr(a: number, b: number): number;


/**
 * 按位异或 [NEW]
 * ${a} 和 ${b} 按位异或
 * @params  integer integer
 * @return integer
 */
declare function DzBitXor(a: number, b: number): number;


/**
 * 按位左移 [NEW]
 *  ${i} 的所有位向左移动 ${bitsToShift} 位
 * @params  integer integer
 * @return integer
 */
declare function DzBitShiftLeft(i: number, bitsToShift: number): number;


/**
 * 按位右移 [NEW]
 *  ${i} 的所有位向右移动 ${bitsToShift} 位
 * @params  integer integer
 * @return integer
 */
declare function DzBitShiftRight(i: number, bitsToShift: number): number;


/**
 * 4字节组合为整数 [NEW]
 * 在4个字节(${A},${B},${C},${D})组合成一个整数。
 * 这里组合是256进制，组合的结果其实是DCBA
 * @params  integer integer integer integer
 * @return integer
 */
declare function DzBitToInt(b1: number, b2: number, b3: number, b4: number): number;


/**
 * 对单位组添加命令到队列(无目标) [NEW]
 * 对单位组 ${whichGroup} 添加 ${order} 命令到队列
 * @params  group ordercodenotarg
 */
declare function DzQueueGroupImmediateOrderById(whichGroup: group, order: number): boolean;


/**
 * 对单位组添加命令到队列(指定坐标) [NEW]
 * 对单位组 ${whichGroup} 添加 ${order} 命令到队列，位置 (${x}, ${y})
 * @params  group ordercodeptarg real real
 */
declare function DzQueueGroupPointOrderById(whichGroup: group, order: number, x: number, y: number): boolean;


declare function DzQueueGroupTargetOrderById(whichGroup: group, order: number, targetWidget: widget): boolean;


/**
 * 对单位添加命令到队列(无目标) [NEW]
 * 对单位 ${whichUnit} 添加 ${order} 命令到队列
 * @params  unit ordercodenotarg
 */
declare function DzQueueIssueImmediateOrderById(whichUnit: unit, order: number): boolean;


/**
 * 对单位添加命令到队列(指定坐标) [NEW]
 * 对单位 ${whichUnit} 添加 ${order} 命令到队列，位置 (${x}, ${y})
 * @params  unit ordercodeptarg real real
 */
declare function DzQueueIssuePointOrderById(whichUnit: unit, order: number, x: number, y: number): boolean;


declare function DzQueueIssueTargetOrderById(whichUnit: unit, order: number, targetWidget: widget): boolean;


declare function DzQueueIssueInstantPointOrderById(whichUnit: unit, order: number, x: number, y: number, instantTargetWidget: widget): boolean;


declare function DzQueueIssueInstantTargetOrderById(whichUnit: unit, order: number, targetWidget: widget, instantTargetWidget: widget): boolean;


/**
 * 对单位添加建造命令到队列 [NEW]
 * 对单位 ${whichPeon} 添加建造 ${unitId} 命令到队列，位置 (${x}, ${y})
 * @params  unit unitcode real real
 */
declare function DzQueueIssueBuildOrderById(whichPeon: unit, unitId: number, x: number, y: number): boolean;


/**
 * 添加中介命令到队列(无目标) [NEW]
 * 使 ${forWhichPlayer} 对 ${neutralStructure} 添加 ${unitId} 命令到队列
 * @params  player unit ordercodenotarg
 */
declare function DzQueueIssueNeutralImmediateOrderById(forWhichPlayer: player, neutralStructure: unit, unitId: number): boolean;


/**
 * 添加中介命令到队列(指定坐标) [NEW]
 * 使 ${forWhichPlayer} 对 ${neutralStructure} 添加 ${unitId} 命令到队列，位置 (${x}, ${y})
 * @params  player unit ordercodeptarg real real
 */
declare function DzQueueIssueNeutralPointOrderById(forWhichPlayer: player, neutralStructure: unit, unitId: number, x: number, y: number): boolean;


declare function DzQueueIssueNeutralTargetOrderById(forWhichPlayer: player, neutralStructure: unit, unitId: number, target: widget): boolean;


/**
 * 获取单位的命令数量 [NEW]
 * 获取单位 ${u} 的命令数量
 * @params  unit
 * @return integer
 */
declare function DzUnitOrdersCount(u: unit): number;


/**
 * 清除单位命令队列 [NEW]
 * 清除单位 ${u} 命令，清理规则： ${b} 仅清理队列里的命令
 * @params  unit boolean
 */
declare function DzUnitOrdersClear(u: unit, onlyQueued: boolean): void;


/**
 * 执行单位的命令队列 [NEW]
 * 执行单位 ${u} 的命令队列
 * @params  unit
 */
declare function DzUnitOrdersExec(u: unit): void;


/**
 * 强制停止单位当前命令 [NEW]
 * 强制停止单位 ${u} 的当前命令，${b} 清理队列里的命令
 * @params  unit boolean
 */
declare function DzUnitOrdersForceStop(u: unit, clearQueue: boolean): void;


/**
 * 反转单位命令队列 [NEW]
 * 反转 ${u} 命令队列
 * 原本单位添加命令队列后，会
 * @params  unit
 */
declare function DzUnitOrdersReverse(u: unit): void;


/**
 * 打开Excel文件 [NEW]
 * 打开Excel文件 ${filePath}
 * 会返回一个工作表
 * @params  string
 * @return xlsxworksheet
 */
declare function DzXlsxOpen(filePath: string): number;


/**
 * 关闭工作表 [NEW]
 * 关闭工作表：${docHandle}
 * @params  xlsxworksheet
 */
declare function DzXlsxClose(docHandle: number): boolean;


/**
 * 工作表的总行数 [NEW]
 *  ${docHandle} 里 ${sheetName} 页的总行数
 * @params  xlsxworksheet string
 * @return integer
 */
declare function DzXlsxWorksheetGetRowCount(docHandle: number, sheetName: string): number;


/**
 * 工作表的总列数 [NEW]
 *  ${docHandle} 里 ${sheetName} 的列数
 * @params  xlsxworksheet string
 * @return integer
 */
declare function DzXlsxWorksheetGetColumnCount(docHandle: number, sheetName: string): number;


/**
 * 单元格的数据类型 [NEW]
 *  ${docHandle} 里 ${sheetName} 中单元格 (${row}, ${column}) 的数据类型
 * 0=None,1=String,2=Integer,3=Boolean,4=Real
 * @params  xlsxworksheet string integer integer
 * @return integer
 */
declare function DzXlsxWorksheetGetCellType(docHandle: number, sheetName: string, row: number, column: number): number;


/**
 * 工作表的值（字符串） [NEW]
 * ${docHandle} 里 ${sheetName} 中单元格 (${row}, ${column}) 的字符串值
 * @params  xlsxworksheet string integer integer
 * @return string
 */
declare function DzXlsxWorksheetGetCellString(docHandle: number, sheetName: string, row: number, column: number): string;


/**
 * 工作表的值（整数） [NEW]
 * ${docHandle} 里 ${sheetName} 中单元格 (${row}, ${column}) 的整数值
 * @params  xlsxworksheet string integer integer
 * @return integer
 */
declare function DzXlsxWorksheetGetCellInteger(docHandle: number, sheetName: string, row: number, column: number): number;


/**
 * 工作表的值（布尔值） [NEW]
 *  ${docHandle} 里 ${sheetName} 中单元格 (${row}, ${column}) 的布尔值
 * @params  xlsxworksheet string integer integer
 * @return boolean
 */
declare function DzXlsxWorksheetGetCellBoolean(docHandle: number, sheetName: string, row: number, column: number): boolean;


/**
 * 工作表的值（实数） [NEW]
 * ${docHandle} 里 ${sheetName} 中单元格 (${row}, ${column}) 的实数值
 * @params  xlsxworksheet string integer integer
 * @return real
 */
declare function DzXlsxWorksheetGetCellFloat(docHandle: number, sheetName: string, row: number, column: number): number;


/**
 * 设置界面纹理坐标 [NEW]
 * 设置 ${frame} 的纹理坐标为 (${left}, ${top}, ${right}, ${bottom})
 * @params  frame real real real real
 */
declare function DzFrameSetTexCoord(frame: number, left: number, top: number, right: number, bottom: number): void;


/**
 * 技能 - 设置技能施法距离（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的施法距离 ${range}
 * [[单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityRange(Unit: unit, abil_code: number, value: number): boolean;


/**
 * 技能 - 获取技能施法距离（通魔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的施法距离
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityRange(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置技能施法范围（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的施法范围 ${area}
 * [[单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityArea(Unit: unit, abil_code: number, value: number): boolean;


/**
 * 技能 - 获取技能施法范围（通魔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的施法范围
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityArea(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置技能冷却时间（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的当前冷却时间 ${cool} /最大冷却时间 ${max_cool}
 * [[单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode real real
 */
declare function DzSetUnitAbilityCool(Unit: unit, abil_code: number, cool: number, max_cool: number): boolean;


/**
 * 技能 - 获取技能当前冷却时间（通魔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的当前冷却时间
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityCool(Unit: unit, abil_code: number): number;


/**
 * 技能 - 获取技能最大冷却时间（通魔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的最大冷却时间
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityMaxCool(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置技能数据A（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的数据A ${DataA}
 * [[通魔的数据A是施法持续时间;单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityDataA(Unit: unit, abil_code: number, value: number): boolean;


/**
 * 技能 - 获取技能数据A（通魔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的数据A
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityDataA(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置技能数据B（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的数据B ${DataB}
 * [[通魔的数据B是目标类型;0无目标;1目标单位;2目标点;3目标单位或点;单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityDataB(Unit: unit, abil_code: number, value: number): boolean;


/**
 * 技能 - 获取技能数据B（通魔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的数据B
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityDataB(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置技能数据C（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的数据C ${DataC}
 * [[通魔的数据C是选项;单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityDataC(Unit: unit, abil_code: number, value: number): boolean;


/**
 * 技能 - 获取技能数据C（通魔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的数据C
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityDataC(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置技能数据D（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的数据D ${DataD}
 * [[通魔的数据D是动作持续时间;单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityDataD(Unit: unit, abil_code: number, value: number): boolean;


/**
 * 技能 - 获取技能数据D（通魔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的数据D
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityDataD(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置技能数据E（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的数据E ${DataE}
 * [[通魔的数据E是否使其他技能失效;单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityDataE(Unit: unit, abil_code: number, value: number): boolean;


/**
 * 技能 - 获取技能数据E（通魔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的数据E
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityDataE(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置技能按钮位置（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的按钮X轴 ${X} , Y轴 ${Y}
 * [[x轴0~3, y轴0~2且 y轴-11可以隐藏技能;单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode integer integer
 */
declare function DzSetUnitAbilityButtonPos(Unit: unit, abil_code: number, x: number, y: number): boolean;


/**
 * 技能 - 设置技能快捷键（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的按钮快捷键 ${Hotkey}
 * [[必须显示在按钮上的技能才有效,单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode string
 */
declare function DzSetUnitAbilityHotkey(Unit: unit, abil_code: number, key: string): boolean;


/**
 * 转化 - 目标允许整数转字符串
 * 转换 ${目标允许} 为字符串
 * @params  integer
 * @return string
 */
declare function DzConvertTargs2Str(targs: number): string;


/**
 * 转化 - 目标允许字符串转整数
 * 转换 ${目标允许} 为整数
 * 例如“ground,friend,vuln,invu”
 * @params  string
 * @return integer
 */
declare function DzConvertStr2Targs(targs: string): number;


/**
 * 技能 - 设置技能目标允许（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的目标允许 ${Targs}
 * [[单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode integer
 */
declare function DzSetUnitAbilityTargs(Unit: unit, abil_code: number, value: number): boolean;


/**
 * 技能 - 获取技能目标允许（通魔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的目标允许
 * @params  unit abilcode
 * @return integer
 */
declare function DzGetUnitAbilityTargs(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置技能魔法消耗（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的魔法消耗 ${Cost}
 * [[单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode integer
 */
declare function DzSetUnitAbilityCost(Unit: unit, abil_code: number, value: number): boolean;


/**
 * 技能 - 获取技能魔法消耗（通魔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的魔法消耗
 * @params  unit abilcode
 * @return integer
 */
declare function DzGetUnitAbilityCost(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置技能等级要求（通魔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的等级要求 ${ReqLevel}
 * [[2级以上可以无视魔法免疫;单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;保证通魔技能有效,其他类型的技能也可以尝试使用不保证有效, 如无效果可以尝试刷新数据]]
 * @params  unit abilcode integer
 */
declare function DzSetUnitAbilityReqLevel(Unit: unit, abil_code: number, value: number): boolean;


/**
 * 技能 - 获取技能等级要求（通魔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的等级要求
 * @params  unit abilcode
 * @return integer
 */
declare function DzGetUnitAbilityReqLevel(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置建造技能单位ID（象牙塔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的单位id ${UnitId}
 * [[用在象牙塔或变身类技能;单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;]]
 * @params  unit abilcode integer
 */
declare function DzSetUnitAbilityUnitId(Unit: unit, abil_code: number, value: number): boolean;


/**
 * 技能 - 获取建造技能单位ID（象牙塔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的单位ID
 * 象牙塔或者变身类技能有效
 * @params  unit abilcode
 * @return integer
 */
declare function DzGetUnitAbilityUnitId(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置建造技能命令ID（象牙塔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的命令id ${OrderId}
 * [[用在象牙塔类的技能;单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;]]
 * @params  unit abilcode ordercode
 */
declare function DzSetUnitAbilityBuildOrderId(Unit: unit, abil_code: number, value: number): boolean;


/**
 * 技能 - 获取建造技能命令ID（象牙塔）
 * 获取 单位 ${unit} 当前拥有的技能 ${id} 的命令ID
 * 象牙塔类的技能有效
 * @params  unit ordercode
 * @return integer
 */
declare function DzGetUnitAbilityBuildOrderId(Unit: unit, abil_code: number): number;


/**
 * 技能 - 设置建造技能模型（象牙塔）
 * 设置单位 ${unit} 当前拥有的技能 ${id} 模型 ${model} 缩放 ${scale}
 * [[修改建造时鼠标模型，不改单位;用在象牙塔类的技能;单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除;]]
 * @params  unit abilcode string real
 */
declare function DzSetUnitAbilityBuildModel(Unit: unit, abil_code: number, model_path: string, model_scale: number): boolean;


/**
 * 技能 - 判断单位是否拥有技能 (包含模版技能)
 * 单位 ${单位} 是否拥有技能 ${技能id}
 * 单位拥有指定id 或者 指定模板id, 真实的模板技能id在 编辑器里units\abilitydata.slk 里面的code列里
 * @params  unit abilcode
 * @return boolean
 */
declare function DzUnitHasAbility(Unit: unit, abil_code: number): boolean;


/**
 * 技能 - 创建技能按钮控件
 * 创建技能按钮控件
 * 创建的技能按钮可以拿来绑定技能。
 * @return frame
 */
declare function KKCreateCommandButton(): number;


/**
 * 技能按钮 - 删除技能按钮
 * 删除技能按钮 ${技能按钮}
 * [[只能是来自“创建技能按钮控件”的控件,不能删原生哈。]]
 * @params  frame
 */
declare function KKDestroyCommandButton(btn: number): void;


/**
 * 技能按钮 - 鼠标点击技能按钮 (无目标施法 或 激活目标指示器)
 * 点击技能按钮 ${技能按钮} , 按照鼠标 ${鼠标类型} 类型来点击
 * [[鼠标类型1是左键，4是右键，无目标技能左键之后可以释放，目标类技能左键后会激活目标指示器]]
 * @params  frame integer
 */
declare function KKCommandButtonClick(btn: number, mouse_type: number): void;


/**
 * 技能按钮 - 目标指示器点击目标单位
 * 鼠标 ${鼠标类型} 类型点击目标 ${单位}
 * [[需要先激活目标指示器后, 鼠标类型1是左键点击目标，4是右键取消]]
 * @params  integer unit
 */
declare function KKCommandTargetClick(mouse_type: number, target: widget): boolean;


/**
 * 技能按钮 - 目标指示器点击地面坐标
 * 鼠标 ${鼠标类型} 类型点击坐标 x轴 ${X} , y轴 ${Y} , z轴 ${Z}
 * [[坐标类的技能 需要先激活点或范围指示器后, 鼠标类型1是左键点击目标，4是右键取消]]
 * @params  integer real real real
 */
declare function KKCommandTerrainClick(mouse_type: number, x: number, y: number, z: number): boolean;


/**
 * 技能按钮 - 绑定单位技能
 * 技能按钮 ${技能按钮} 绑定单位 ${单位} 的技能 ${技能id}
 * [[需要 先添加单位技能， 然后改按钮y轴-11隐藏, 然后再计时器循环0.1秒绑定, 技能id填0是取消绑定。]]
 * @params  frame unit abilcode
 */
declare function KKSetCommandUnitAbility(btn: number, Unit: unit, abil_code: number): void;


/**
 * 物品 - 获取物品颜色
 * 获取 ${物品} 的颜色
 * @params  item
 * @return rgba2color
 */
declare function DzItemGetVertexColor(Item: item): number;


/**
 * 物品 - 物品大小
 * 物品 ${物品} 按照 ${大小} 进行缩放
 * [[]]
 * @params  item real
 */
declare function DzItemSetSize(Item: item, size: number): void;


/**
 * 物品 - 获取物品大小
 * 获取 ${物品} 的缩放大小
 * @params  item
 * @return real
 */
declare function DzItemGetSize(Item: item): number;


/**
 * 物品 - 模型按照X轴旋转
 * 物品 ${物品} 按照X轴 ${X} 进行旋转
 * [[多次调用是会乘法累计旋转的, 拾取丢弃物品会重置]]
 * @params  item real
 */
declare function DzItemMatRotateX(Item: item, x: number): void;


/**
 * 物品 - 模型按照Y轴旋转
 * 物品 ${物品} 按照Y轴 ${Y} 进行旋转
 * [[多次调用是会乘法累计旋转的, 拾取丢弃物品会重置]]
 * @params  item real
 */
declare function DzItemMatRotateY(Item: item, y: number): void;


/**
 * 物品 - 模型按照Z轴旋转
 * 物品 ${物品} 按照Z轴 ${Z} 进行旋转
 * [[多次调用是会乘法累计旋转的, 拾取丢弃物品会重置]]
 * @params  item real
 */
declare function DzItemMatRotateZ(Item: item, z: number): void;


/**
 * 物品 - 模型按照XYZ轴缩放
 * 物品 ${物品} 按照X轴 ${X} ,Y轴 ${Y} ,Z轴 ${Z} 进行缩放
 * [[多次调用是会乘法累计缩放的, 拾取丢弃物品会重置]]
 * @params  item real real real
 */
declare function DzItemMatScale(Item: item, x: number, y: number, z: number): void;


/**
 * 物品 - 模型重置旋转缩
 * 物品 ${物品} 模型重置旋转缩
 * [[旋转清零,缩放重置为1]]
 * @params  item
 */
declare function DzItemMatReset(Item: item): void;


/**
 * 物品 - 当前选择的物品(异步)
 * 获取主控物品
 * 获取的物品是异步的，请谨慎操作
 * @return item
 */
declare function DzGetLastSelectedItem(): item;


declare function DzSetPariticle2Size(Widget: agent, scale: number): void;


/**
 * 单位 - 修改单位碰撞体积
 * 修改单位 ${单位} 的碰撞体积为 ${碰撞体积}
 * [[修改之后移动一下单位或者重新设置一下位置就会刷新了]]
 * @params  unit real
 */
declare function DzSetUnitCollisionSize(Unit: unit, size: number): void;


/**
 * 单位 - 获取单位的碰撞体积
 * 获取 ${单位} 的碰撞体积
 * @params  unit
 * @return real
 */
declare function DzGetUnitCollisionSize(Unit: unit): number;


declare function DzSetWidgetTexture(Handle: agent, TexturePath: string, ReplaceId: number): void;


/**
 * 单位 - 修改单位选择圈缩放
 * 修改单位 ${单位} 的选择圈缩放为 ${缩放}
 * [[可以0隐藏或者显示修改指定单位的选择圈大小]]
 * @params  unit real
 */
declare function DzSetUnitSelectScale(Unit: unit, scale: number): void;


/**
 * 单位 - 设置单位是否忽略点击
 * 设置单位 ${单位} 的点击球是否忽略 ${忽略}
 * [[true为忽略, false会恢复，删除蝗虫技能后, 隐藏显示单位, 再设置忽略点击false, 关闭打开碰撞 即完美删除蝗虫。]]
 * @params  unit boolean
 */
declare function DzSetUnitHitIgnore(Unit: unit, ignore: boolean): void;


/**
 * 特效 - 特效绑定特效
 * 给特效 ${特效} 的附加点 ${附加点} 绑定特效 ${特效}
 * @params  effect string effect
 */
declare function DzEffectBindEffect(Handle: agent, AttachName: string, eff: effect): void;


/**
 * 界面 - 设置Frame控件忽略点击事件
 * 设置Frame控件 ${frame} 忽略点击事件为 ${是否}
 * 只能用在Frame类型的控件, 对SimpleFrame类型的控件无效, 忽略后可以鼠标穿透地面, 不忽略则会挡住鼠标点击。
 * @params  frame boolean
 */
declare function DzFrameSetIgnoreTrackEvents(frame: number, ignore: boolean): void;


/**
 * 界面 - 创建ui模型控件
 * 创建ui模型控件 指定父控件 ${parent}
 * 用来显示3d模型用的，需要手动设置镜头参数，旋转缩放才能正确显示。
 * @params  frame
 * @return frame
 */
declare function DzFrameAddModel(parent_frame: number): number;


/**
 * 界面 - ui模型 - 设置模型文件
 * 设置ui模型控件 ${model_frame} 的文件路径为 ${model_path} , 队伍颜色id为 ${color_id}
 * 只能是ui模型控件, 队伍颜色id是0~15 0为红色
 * @params  frame modelfile integer
 */
declare function DzFrameSetModel2(model_frame: number, model_file: string, team_color_id: number): void;


/**
 * 界面 - ui模型 - 添加绑定特效
 * 为ui模型控件 ${model_frame} 绑定特效, 附加点 ${attach_point} , 特效模型文件路径 ${model_path}
 * 重置模型后自动失效，只能是ui模型控件, 返回effect_frame
 * @params  frame string modelfile
 * @return frame
 */
declare function DzFrameAddModelEffect(model_frame: number, attach_point: string, model_file: string): number;


/**
 * 界面 - ui模型 - 移除绑定特效
 * 为ui模型控件 ${model_frame} 移除绑定的特效 ${effect_frame}
 * effect_frame只能是ui模型添加绑定特效的返回值
 * @params  frame frame
 */
declare function DzFrameRemoveModelEffect(model_frame: number, effect_frame: number): void;


/**
 * 界面 - ui模型 - 播放动画指定索引
 * ui模型控件 ${model_frame} 播放动画指定索引 ${anim_index}
 * 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame integer
 */
declare function DzFrameSetModelAnimationByIndex(model_frame: number, anim_index: number): void;


/**
 * 界面 - ui模型 - 播放动画指定动画名
 * ui模型控件 ${model_frame} 播放动画指定动画名 ${animation}
 * 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame string
 */
declare function DzFrameSetModelAnimation(model_frame: number, animation: string): void;


/**
 * 界面 - ui模型 - 设置场景内镜头源点
 * ui模型控件 ${model_frame} 设置镜头源点 x轴 ${x轴} ,y轴 ${y轴} ,z轴 ${z轴}
 * 只能是ui模型控件
 * @params  frame real real real
 */
declare function DzFrameSetModelCameraSource(model_frame: number, x: number, y: number, z: number): void;


/**
 * 界面 - ui模型 - 设置场景内镜头目标点
 * ui模型控件 ${model_frame} 设置镜头目标点 x轴 ${x轴} ,y轴 ${y轴} ,z轴 ${z轴}
 * 只能是ui模型控件
 * @params  frame real real real
 */
declare function DzFrameSetModelCameraTarget(model_frame: number, x: number, y: number, z: number): void;


/**
 * 界面 - ui模型 - 设置缩放大小
 * ui模型控件 ${model_frame} 设置 缩放 ${size}
 * 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame real
 */
declare function DzFrameSetModelSize(model_frame: number, size: number): void;


/**
 * 界面 - ui模型 - 获取缩放大小
 * 获取ui模型控件 ${model_frame} 的缩放大小
 * 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame
 * @return real
 */
declare function DzFrameGetModelSize(model_frame: number): number;


/**
 * 界面 - ui模型 - 设置场景内的坐标(X Y Z)
 * ui模型控件 ${model_frame} 设置 X轴 ${X轴} , Y轴 ${Y轴} , Z轴 ${Z轴}
 * 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame real real real
 */
declare function DzFrameSetModelPosition(model_frame: number, x: number, y: number, z: number): void;


/**
 * 界面 - ui模型 - 设置场景内的坐标X轴
 * ui模型控件 ${model_frame} 设置 X轴 ${X轴}
 * 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame real
 */
declare function DzFrameSetModelX(model_frame: number, x: number): void;


/**
 * 界面 - ui模型 - 获取场景内的坐标X轴
 * 获取ui模型控件 ${model_frame} 场景内的坐标X轴
 * 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame
 * @return real
 */
declare function DzFrameGetModelX(model_frame: number): number;


/**
 * 界面 - ui模型 - 设置场景内的坐标Y轴
 * ui模型控件 ${model_frame} 设置 Y轴 ${Y轴}
 * 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame real
 */
declare function DzFrameSetModelY(model_frame: number, y: number): void;


/**
 * 界面 - ui模型 - 获取场景内的坐标Y轴
 * 获取ui模型控件 ${model_frame} 场景内的坐标Y轴
 * 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame
 * @return real
 */
declare function DzFrameGetModelY(model_frame: number): number;


/**
 * 界面 - ui模型 - 设置场景内的坐标Z轴
 * ui模型控件 ${model_frame} 设置 Z轴 ${Z轴}
 * 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame real
 */
declare function DzFrameSetModelZ(model_frame: number, z: number): void;


/**
 * 界面 - ui模型 - 获取场景内的坐标Z轴
 * 获取ui模型控件 ${model_frame} 场景内的坐标Z轴
 * 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame
 * @return real
 */
declare function DzFrameGetModelZ(model_frame: number): number;


/**
 * 界面 - ui模型 - 设置动画播放速度
 * ui模型控件 ${model_frame} 设置 动画播放速度 ${倍率}
 * 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame real
 */
declare function DzFrameSetModelSpeed(model_frame: number, speed: number): void;


/**
 * 界面 - ui模型 - 获取动画播放速度
 * 获取ui模型控件 ${model_frame} 场景内的动画播放速度
 * 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame
 * @return real
 */
declare function DzFrameGetModelSpeed(model_frame: number): number;


/**
 * 界面 - ui模型 - 设置矩阵缩放
 * ui模型控件 ${model_frame} 设置 矩阵缩放 (X轴 ${x轴} , Y轴 ${y轴} , Z轴 ${z轴})
 * 每次调用累计乘法计算缩放, 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame real real real
 */
declare function DzFrameSetModelScale(model_frame: number, x: number, y: number, z: number): void;


/**
 * 界面 - ui模型 - 设置矩阵重置
 * ui模型控件 ${model_frame} 设置矩阵重置
 * 缩放重置为1, 旋转清零, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame
 */
declare function DzFrameSetModelMatReset(model_frame: number): void;


/**
 * 界面 - ui模型 - 设置矩阵旋转X轴
 * ui模型控件 ${model_frame} 设置矩阵旋转X轴 ${X轴}
 * 每次调用累计乘法计算, 不想累计的重置后再设置, 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame real
 */
declare function DzFrameSetModelRotateX(model_frame: number, x: number): void;


/**
 * 界面 - ui模型 - 设置矩阵旋转Y轴
 * ui模型控件 ${model_frame} 设置矩阵旋转Y轴 ${Y轴}
 * 每次调用累计乘法计算, 不想累计的重置后再设置, 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame real
 */
declare function DzFrameSetModelRotateY(model_frame: number, y: number): void;


/**
 * 界面 - ui模型 - 设置矩阵旋转Z轴
 * ui模型控件 ${model_frame} 设置矩阵旋转Z轴 ${Z轴}
 * 每次调用累计乘法计算, 不想累计的重置后再设置, 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame real
 */
declare function DzFrameSetModelRotateZ(model_frame: number, z: number): void;


/**
 * 界面 - ui模型 - 设置模型颜色
 * ui模型控件 ${model_frame} 设置模型颜色 ${color}
 * 包含透明通道, 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame rgba2color
 */
declare function DzFrameSetModelColor(model_frame: number, color: number): void;


/**
 * 界面 - ui模型 - 获取颜色
 * 获取ui模型控件 ${model_frame} 的颜色
 * 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame
 * @return rgba2color
 */
declare function DzFrameGetModelColor(model_frame: number): number;


/**
 * 界面 - ui模型 - 替换模型id贴图
 * ui模型控件 ${model_frame} 设置贴图路径 ${texture_file} , 指定id ${id}
 * id是指模型里指定的纹理id, 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame imagefile integer
 */
declare function DzFrameSetModelTexture(model_frame: number, texture_file: string, replace_texutre_id: number): void;


/**
 * 界面 - ui模型 - 设置粒子2缩放大小
 * ui模型控件 ${model_frame} 设置粒子2缩放大小 ${scale}
 * 必须是有粒子2的模型, 缩放是乘法计算需要大于0, 设置模型后会重置, 可以是ui模型控件、SPRITE、MODEL类型的控件
 * @params  frame real
 */
declare function DzFrameSetModelParticle2Size(model_frame: number, scale: number): void;


/**
 * 界面 - 获取游戏外界面底层
 * 获取游戏外界面底层
 * 返回GlueUI, 从config房间界面到加载界面完成 都属于GlueUI, 进入游戏后属于GameUI
 * @return frame
 */
declare function DzGetGlueUI(): number;


/**
 * 界面 - 获取鼠标控件
 * 获取鼠标控件
 * 返回的是SPRITE模型控件，可以通过缩放大小为0来隐藏鼠标, 需要注意的是游戏内跟游戏外鼠标UI不一样，可以游戏开始0秒之后再获取使用。
 * @return frame
 */
declare function DzFrameGetMouse(): number;


/**
 * 界面 - 获取控件绑定的整数
 * 获取控件 ${frame} 绑定的整数
 * 相当于获取 <<新建Frame [Tag]:DzCreateFrameByTagName>> 函数最后一个参数
 * @params  frame
 * @return integer
 */
declare function DzFrameGetContext(frame: number): number;


/**
 * 界面 - 获取控件的全局名字
 * 获取控件 ${frame} 的全局名字
 * 相当于获取 <<新建Frame [Tag]:DzCreateFrameByTagName>> 函数第2个参数
 * @params  frame
 * @return string
 */
declare function DzFrameGetName(frame: number): string;


/**
 * 界面 - 设置控件全局名字跟绑定整数
 * 设置控件 ${frame} 全局名字 ${name} 绑定整数 ${context}
 * 相当于修改 <<新建Frame [Tag]:DzCreateFrameByTagName>> 函数的第2个参数，跟最后一个参数,全局名字不能重复，否则退出游戏时会崩溃，可以使用修改后的名字跟整数查找控件，支持Frame、SimpleFrame、SimpleTexture、SimpleStringFont
 * @params  frame string integer
 */
declare function DzFrameSetNameContext(frame: number, name: string, context: number): void;


/**
 * 界面 - 设置文本控件字间距
 * 设置文本控件 ${frame} 设置字间距 ${spacint}
 * 只能TEXT类型控件使用
 * @params  frame real
 */
declare function DzFrameSetTextFontSpacing(text_frame: number, spacing: number): void;


/**
 * 界面 - 获取技能/物品按钮的冷却模型控件
 * 获取技能/物品按钮 ${command_button} 的冷却模型控件
 * 获取技能或者物品按钮上面的 冷却模型控件，相当于是SPRITE类型的控件
 * @params  frame
 * @return frame
 */
declare function KKCommandGetCooldownModel(cmd_btn: number): number;


/**
 * 界面 - 设置技能/物品按钮的冷却模型缩放大小
 * 设置技能/物品按钮 ${comand_button} 的冷却模型缩放大小 ${size}
 * 只能技能/物品按钮使用, 修改按钮大小后，需要手动缩放一次cd模型的缩放比例
 * @params  frame real
 */
declare function KKCommandSetCooldownModelSize(cmd_btn: number, size: number): void;


/**
 * 界面 - 设置技能/物品按钮的冷却模型缩放指定宽高比例
 * 设置技能/物品按钮 ${comand_button} 的冷却模型缩放宽比例 ${width_size} , 高比例 ${height_size}
 * 只能技能/物品按钮使用, 修改按钮大小后，需要手动缩放一次cd模型的缩放比例
 * @params  frame real real
 */
declare function KKCommandSetCooldownModelSize2(cmd_btn: number, width: number, height: number): void;


/**
 * 物品 - 玩家当前选择的物品(同步)
 * 获取玩家 ${玩家} 当前选择的物品(同步)
 * 返回值是同步的。每次选择物品后会延迟0.1秒刷新返回值。
 * @params  player
 * @return item
 */
declare function DzGetPlayerLastSelectedItem(p: player): item;


/**
 * 获取当前缓存模型的数量
 * 获取当前缓存模型的数量
 * 返回值异步的，用来检测当前游戏模型数量用的
 * @return integer
 */
declare function DzGetCacheModelCount(): number;


/**
 * 游戏 - 限制最高帧数
 * 限制最高帧数 为 ${max_fps}
 * 跟解锁上限不同，只能60之内, 例如30帧用来模拟卡顿的游戏环境
 * @params  integer
 */
declare function DzSetMaxFps(max_fps: number): void;


/**
 * 允许查看指定单位技能
 * 允许查看指定单位 ${单位} 的技能, 是否开启 ${enable}
 * 开启后可以看友军或敌军单位的技能
 * @params  unit boolean
 */
declare function DzEnableDrawSkillPanel(u: unit, is_enable: boolean): void;


/**
 * 允许查看指定玩家单位技能
 * 允许查看指定玩家 ${玩家} 的单位技能, 是否开启 ${enable}
 * 开启后可以看友军或敌军单位的技能
 * @params  player boolean
 */
declare function DzEnableDrawSkillPanelByPlayer(p: player, is_enable: boolean): void;


/**
 * 特效 - 设置特效迷雾可见
 * 设置特效 ${特效} 在迷雾里可见 ${enable}
 * 只能对创建到地面的特效使用。迷雾即非视野 非黑色阴影的区域
 * @params  effect boolean
 */
declare function DzSetEffectFogVisible(eff: effect, is_visible: boolean): void;


/**
 * 特效 - 设置特效黑色阴影可见
 * 设置特效 ${特效} 在黑色阴影里可见 ${enable}
 * 只能对创建到地面的特效使用。 黑色阴影即未解锁的区域
 * @params  effect boolean
 */
declare function DzSetEffectMaskVisible(eff: effect, is_visible: boolean): void;


/**
 * 世界坐标 - 绑定Frame到单位实时位置
 * 绑定Frame ${frame} 到单位 ${unit} 的实时位置, 偏移世界坐标(X ${X} , Y ${Y} , Z ${Z})偏移屏幕坐标(X ${SX} , Y ${SY})战争迷雾可见 ${fog_visible} 有单位视野可见 ${unit_visible} 单位死亡可见 ${dead_visible}
 * 绑定后会清除控件锚点, 每帧设置控件中心坐标为 世界坐标+偏移 转屏幕坐标 +偏移后的位置, 超出屏幕，或者不满足条件的情况下会对控件隐藏, 在删除单位，或者删除控件前解除绑定。
 * @params  frame unit real real real real real boolean boolean boolean
 */
declare function DzFrameBindWidget(frame: number, u: widget, world_x: number, world_y: number, world_z: number, screen_x: number, screen_y: number, fog_visible: boolean, unit_visible: boolean, dead_visible: boolean): void;


/**
 * 世界坐标 - 绑定Frame到世界坐标实时位置
 * 绑定Frame ${frame} 世界坐标(X ${X} , Y ${Y} , Z ${Z})偏移屏幕坐标(X ${SX} , Y ${SY})战争迷雾可见 ${fog_visible}
 * 绑定后会清除控件锚点, 每帧设置控件中心坐标为 世界坐标 转屏幕坐标 +偏移后的位置, 超出屏幕，或者不满足条件的情况下会对控件隐藏, 在删除控件前解除绑定。
 * @params  frame real real real real real boolean
 */
declare function DzFrameBindWorldPos(frame: number, world_x: number, world_y: number, world_z: number, screen_x: number, screen_y: number, fog_visible: boolean): void;


/**
 * 世界坐标 - 解除Frame的绑定
 * 解除Frame ${frame} 的绑定
 * 解除绑定后不会再刷新位置跟改变隐藏显示
 * @params  frame
 */
declare function DzFrameUnBind(frame: number): void;


/**
 * 界面 - 屏蔽所有单位指向UI跟血条
 * 屏蔽所有单位指向UI跟血条
 * 屏蔽会保留选择圈，开局调用一次后即可屏蔽所有单位的，以便重写血条
 */
declare function DzDisableUnitPreselectUi(): void;


/**
 * 界面 - 屏蔽所有物品指向UI
 * 屏蔽所有物品指向UI
 * 屏蔽会保留选择圈，开局调用一次后即可屏蔽所有物品的，以便写物品地面UI
 */
declare function DzDisableItemPreselectUi(): void;


/**
 * 界面 - 获取低于控制台的底层Frame
 * 获取低于控制台的底层Frame
 * 返回FRAME控件，用来创建比控制台大头像更低级的ui, 例如控制台背景, 血条等。
 * @return frame
 */
declare function DzFrameGetLowerLevelFrame(): number;


/**
 * 界面 - 设置复选框勾选状态
 * 设置复选框 ${check_box} 的勾选状态为 ${checked}
 * 只能对CHECKBOX、GLUECHECKBOX 类型使用
 * @params  frame boolean
 */
declare function DzFrameSetCheckBoxState(check_box_frame: number, checked: boolean): void;


/**
 * 界面 - 获取复选框勾选状态
 * 获取复选框 ${checkbox} 勾选状态
 * 只能对CHECKBOX、GLUECHECKBOX 类型使用
 * @params  frame
 * @return boolean
 */
declare function DzFrameGetCheckBoxState(check_box_frame: number): boolean;


/**
 * 界面 - 获取控件是否焦点
 * 获取控件 ${frame} 是否焦点
 * 支持Frame控件使用, 不支持SimpleFrame
 * @params  frame
 * @return boolean
 */
declare function DzFrameIsFocus(frame: number): boolean;


/**
 * 界面 - 设置编辑框激活状态
 * 设置编辑框 ${editbox} 激活状态 ${active}
 * true可以主动调用激活焦点的同时激活输入法, false关闭输入法, 只能对EDITBOX、GLUEEDITBOX类型使用
 * @params  frame boolean
 */
declare function DzFrameSetEditBoxActive(frame: number, is_active: boolean): void;


/**
 * 界面 - 设置编辑框禁用输入法
 * 设置编辑框 ${editbox} 是否禁用输入法 ${disable}
 * true禁用输入法, 禁用后只能输入英文字母跟数字, 不禁用可以打中文, 只能对EDITBOX、GLUEEDITBOX类型使用
 * @params  frame boolean
 */
declare function DzFrameSetEditBoxDisableIme(frame: number, is_disable: boolean): void;


/**
 * 硬件 - 当前游戏是否窗口化模式
 * 当前游戏是否窗口化模式
 * 判断启动参数是否带-window 返回值是异步的，因为每个玩家的窗口都不同
 * @return boolean
 */
declare function DzIsWindowMode(): boolean;


/**
 * 硬件 - 当前游戏窗口是否活动窗口
 * 当前游戏窗口是否活动窗口
 * 切游戏出去后会返回false, 返回值是异步的，因为每个玩家的窗口都不同
 * @return boolean
 */
declare function DzIsWindowActive(): boolean;


/**
 * 硬件 - 设置游戏窗口位置
 * 设置游戏窗口位置 屏幕X轴 ${X轴} , 屏幕Y轴 ${Y轴}
 * 只有窗口模式才有效，屏幕XY轴是指用户屏幕 0,0 为右上角
 * @params  integer integer
 */
declare function DzWindowSetPoint(x: number, y: number): void;


/**
 * 硬件 - 设置游戏窗口大小
 * 设置游戏窗口大小 屏幕宽度 ${width} , 高度 ${height}
 * 只有窗口模式才有效, 改变大小之后 可以通过屏幕大小 设置窗口位置来居中
 * @params  integer integer
 */
declare function DzWindowSetSize(width: number, height: number): void;


/**
 * 硬件 - 获取屏幕设备宽度
 * 获取屏幕设备宽度
 * 返回值是异步的，因为每个玩家都不同
 * @return integer
 */
declare function DzGetSystemMetricsWidth(): number;


/**
 * 硬件 - 获取屏幕设备高度
 * 获取屏幕设备高度
 * 返回值是异步的，因为每个玩家都不同
 * @return integer
 */
declare function DzGetSystemMetricsHeight(): number;


/**
 * 装饰物 - 获取当前地形装饰物数量
 * 获取当前地形装饰物数量
 * 返回值地形上的装饰物数量
 * @return integer
 */
declare function DzGetDoodadsCount(): number;


/**
 * 装饰物 - 设置地形装饰物矩阵缩放
 * 装饰物 ${doodads} 设置 X轴 ${X轴} , Y轴 ${Y轴} , Z轴 ${Z轴} 缩放
 * 每次调用是乘法计算， 需要填大于0的数值，填0会直接导致之后的计算失效
 * @params  integer real real real
 */
declare function DzSetDoodadsMatScale(doodads_index: number, x: number, y: number, z: number): void;


/**
 * 装饰物 - 设置地形装饰物矩阵旋转X轴
 * 装饰物 ${doodads} 设置 X轴 ${X轴} 旋转
 * 每次调用是乘法计算
 * @params  integer real
 */
declare function DzSetDoodadsMatRotateX(doodads_index: number, x: number): void;


/**
 * 装饰物 - 设置地形装饰物矩阵旋转Y轴
 * 装饰物 ${doodads} 设置 Y轴 ${Y轴} 旋转
 * 每次调用是乘法计算
 * @params  integer real
 */
declare function DzSetDoodadsMatRotateY(doodads_index: number, y: number): void;


/**
 * 装饰物 - 设置装饰物矩阵旋转Z轴
 * 装饰物 ${doodads} 设置 Z轴 ${Z轴} 旋转
 * 每次调用是乘法计算
 * @params  integer real
 */
declare function DzSetDoodadsMatRotateZ(doodads_index: number, z: number): void;


/**
 * 装饰物 - 设置地形装饰物矩阵重置
 * 装饰物 ${doodads} 矩阵重置
 * 将缩放重置为1，将旋转角度重置为0
 * @params  integer
 */
declare function DzSetDoodadsMatReset(doodads_index: number): void;


/**
 * 技能 - 设置技能图标
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的图标为 ${art_path}
 * [[单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode imagefile
 */
declare function DzSetUnitAbilityArt(u: unit, abil_id: number, art_path: string): boolean;


/**
 * 技能 - 获取技能图标
 * 获取单位 ${单位} 当前的技能 ${技能id} 的技能图标
 * 返回当前技能图标
 * @params  unit abilcode
 * @return string
 */
declare function DzGetUnitAbilityArt(u: unit, abil_id: number): string;


/**
 * 技能 - 设置技能提示
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的提示为 ${tip}
 * [[单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode string
 */
declare function DzSetUnitAbilityTip(u: unit, abil_id: number, tip: string): boolean;


/**
 * 技能 - 获取技能提示
 * 获取单位 ${单位} 当前的技能 ${技能id} 的技能提示
 * 返回当前技能提示tip
 * @params  unit abilcode
 * @return string
 */
declare function DzGetUnitAbilityTip(u: unit, abil_id: number): string;


/**
 * 技能 - 设置技能提示扩展
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的提示扩展为 ${ubertip}
 * [[单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode string
 */
declare function DzSetUnitAbilityUberTip(u: unit, abil_id: number, ubertip: string): boolean;


/**
 * 技能 - 获取技能提示扩展
 * 获取单位 ${单位} 当前的技能 ${技能id} 的技能提示扩展
 * 返回当前技能提示扩展ubertip
 * @params  unit abilcode
 * @return string
 */
declare function DzGetUnitAbilityUberTip(u: unit, abil_id: number): string;


/**
 * 技能 - 设置刷新数据
 * 设置单位 ${unit} 当前拥有的技能 ${id} 数据刷新
 * [[不能异步调用。用来替代升级降级的刷新数据用的, 1级技能也能用。]]
 * @params  unit abilcode
 */
declare function DzSetUnitAbilityUpdate(u: unit, abil_id: number): boolean;


/**
 * 技能 - 设置技能命令ID
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的命令ID ${order_id}
 * [[可以动态修改大部分技能的命令ID，让同类型技能不冲突。单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode integer
 */
declare function DzSetUnitAbilityOrderId(u: unit, abil_id: number, order_id: number): boolean;


/**
 * 技能 - 获取技能命令ID
 * 获取单位 ${单位} 当前的技能 ${技能id} 的当前的命令ID
 * 返回当前使用的命令ID
 * @params  unit abilcode
 * @return integer
 */
declare function DzGetUnitAbilityOrderId(u: unit, abil_id: number): number;


/**
 * 技能 - 设置魔法书的技能列表
 * 设置单位 ${unit} 当前拥有的魔法书技能 ${id} 的技能列表 ${list} 是否保留cd ${save_cool}
 * [[保留cd的话， 同ID技能在修改列表后才能保持cd， 列表超过12个无效, 单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除]]
 * @params  unit abilcode string boolean
 */
declare function DzSetUnitAbilitySpellBookList(u: unit, abil_id: number, abil_list: string, save_cooldown: boolean): boolean;


/**
 * 技能 - 获取魔法书的技能列表
 * 获取单位 ${单位} 的魔法书技能 ${技能id} 的技能列表
 * 返回当前魔法书的技能列表
 * @params  unit abilcode
 * @return string
 */
declare function DzGetUnitAbilitySpellBookList(u: unit, abil_id: number): string;


/**
 * 技能 - 设置技能投射物模型
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的投射物模型 ${missile_art}
 * [[单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode modelfile
 */
declare function DzSetUnitAbilityMissileArt(u: unit, abil_id: number, missile_art: string): boolean;


/**
 * 技能 - 获取技能投射物模型
 * 获取单位 ${单位} 的技能 ${技能id} 的投射物模型
 * 返回技能投射物的路径
 * @params  unit abilcode
 * @return string
 */
declare function DzGetUnitAbilityMissileArt(u: unit, abil_id: number): string;


/**
 * 技能 - 设置技能投射物速度
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的投射物速度 ${missile_speed}
 * [[弹道飞行速度。单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityMissileSpeed(u: unit, abil_id: number, missile_speed: number): boolean;


/**
 * 技能 - 获取技能投射物速度
 * 获取单位 ${单位} 的技能 ${技能id} 的投射物速度
 * 返回技能投射物的速度
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityMissileSpeed(u: unit, abil_id: number): number;


/**
 * 技能 - 设置技能投射物弧度
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的投射物弧度 ${missile_arc}
 * [[抛物线的弧度。单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityMissileArc(u: unit, abil_id: number, missile_arc: number): boolean;


/**
 * 技能 - 获取技能投射物弧度
 * 获取单位 ${单位} 的技能 ${技能id} 的投射物弧度
 * 返回技能投射物的弧度
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityMissileArc(u: unit, abil_id: number): number;


/**
 * 技能 - 设置技能投射物允许自导
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的投射物允许自导 ${missile_homing}
 * [[true相当于发射投射物后，目标单位移动了会持续追踪的意思, false则不追踪会砸到地面。单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode boolean
 */
declare function DzSetUnitAbilityMissileHoming(u: unit, abil_id: number, missile_homing: boolean): boolean;


/**
 * 技能 - 获取技能投射物允许自导
 * 获取单位 ${单位} 的技能 ${技能id} 的投射物允许自导
 * 返回技能投射物是否允许自导
 * @params  unit abilcode
 * @return boolean
 */
declare function DzGetUnitAbilityMissileHoming(u: unit, abil_id: number): boolean;


/**
 * 技能 - 设置技能投射物数量 (弹幕攻击)
 * 设置单位 ${unit} 当前拥有的弹幕攻击技能 ${id} 的投射物数量 ${missile_count}
 * [[只对Aroc弹幕攻击技能生效, 修改DataC也能改变数量，但此函数数量更精准。 单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode integer
 */
declare function DzSetUnitAbilityMissileCount(u: unit, abil_id: number, missile_count: number): boolean;


/**
 * 技能 - 获取技能投射物数量 (弹幕攻击)
 * 获取单位 ${单位} 的弹幕攻击技能 ${技能id} 的投射物数量
 * 返回Aroc弹幕攻击的技能投射物数量
 * @params  unit abilcode
 * @return integer
 */
declare function DzGetUnitAbilityMissileCount(u: unit, abil_id: number): number;


/**
 * 技能 - 设置技能投射物伤害 (弹幕攻击)
 * 设置单位 ${unit} 当前拥有的弹幕攻击技能 ${id} 的投射物单目标伤害 ${damage} 多目标伤害限制 ${max_damage} 攻击类型 ${attacktype} 伤害类型 ${damagetype}
 * [[只对Aroc弹幕攻击技能生效, damage等同修正原物编DataA无效项, max_damage等同修改原物编DataB。该伤害对主目标无效，只对弹幕分裂目标有效。单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode real real attacktype damagetype
 */
declare function DzSetUnitAbilityMissileDamage(u: unit, abil_id: number, damage: number, max_damage: number, atktp: attacktype, dmgtp: damagetype): boolean;


/**
 * 技能 - 获取技能投射物伤害 (弹幕攻击)
 * 获取单位 ${单位} 的弹幕攻击技能 ${技能id} 的投射物伤害
 * 返回Aroc弹幕攻击的技能投射物伤害
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityMissileDamage(u: unit, abil_id: number): number;


/**
 * 技能 - 获取技能投射物最大伤害 (弹幕攻击)
 * 获取单位 ${单位} 的弹幕攻击技能 ${技能id} 的投射物最大伤害
 * 返回Aroc弹幕攻击的技能投射物最大伤害
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityMissileMaxDamage(u: unit, abil_id: number): number;


/**
 * 游戏 - 模拟按键 (窗口消息)
 * 让玩家 ${player} 发送窗口消息 模拟键盘 ${key_code} 进行 ${is_down} 的消息
 * [[会触发响应同步事件, 发送模拟按键窗口消息给魔兽, 相当于SendMessage, 点击记得释放, 不然可能会键盘按键会在下一次失效, 聊天框显示时不执行]]
 * @params  player gamekey gamekeyaction
 */
declare function DzSendKeyboard(p: player, key_code: number, is_down: number): void;


/**
 * 游戏 - 模拟按键 (游戏UI消息)
 * 让玩家 ${player} 发送游戏UI消息 模拟键盘 ${key_code} 进行 ${is_down} 的消息
 * [[发送UI按键消息给魔兽GameUI, 不会触发响应同步事件, 相当于自带ForceUiKey函数支持更多按键的版本, 某些特殊键无效。]]
 * @params  player gamekey gamekeyaction
 */
declare function DzForceUiKeyboard(p: player, key_code: number, is_down: number): void;


/**
 * 游戏 - 屏蔽按键 (窗口消息)
 * 让玩家 ${player} 屏蔽窗口键盘 ${key_code} 的消息
 * [[会屏蔽硬件同步事件, 聊天框显示时不屏蔽]]
 * @params  player gamekey
 */
declare function DzDisableWindowKeyboard(p: player, key_code: number): void;


/**
 * 游戏 - 屏蔽按键 (游戏UI消息)
 * 让玩家 ${player} 屏蔽游戏UI按键 ${key_code} 的消息
 * [[在屏蔽游戏UI的按键消息, 某些特殊键无效。 dz的硬件同步事件依旧会执行]]
 * @params  player gamekey
 */
declare function DzDisableGameUIKeyboard(p: player, key_code: number): void;


/**
 * 单位 - 是否可以被放置到坐标
 * 判断单位 ${单位} 是否可以放置到该坐标(${X轴}, ${Y轴})
 * 判断地面通行条件以及碰撞范围
 * @params  unit real real
 * @return boolean
 */
declare function DzUnitCanPlaceAround(obj: widget, x: number, y: number): boolean;


/**
 * 坐标 - 是否可以能够通过物体
 * 判断 地形坐标(${X轴}, ${Y轴}) 是否可以能够通过 碰撞范围 ${collision} 碰撞类型 ${collision_type} 的物体
 * 根据碰撞范围 碰撞类型判断地面通行条件
 * @params  real real real CollisionType
 * @return boolean
 */
declare function DzPositionCanPlaceAround(x: number, y: number, collision_size: number, collision_type: number): boolean;


/**
 * 坐标 - 获取地形Z轴高度
 * 获取 地形坐标(${X轴}, ${Y轴}) 的Z轴高度
 * 跟GetLocationZ获取的结果一致, 地形z轴在某些特殊情况下可能会是异步的，请小心使用。
 * @params  real real
 * @return real
 */
declare function DzGetTerrainZ(x: number, y: number): number;


/**
 * 单位 - 获取单位Z轴高度
 * 获取 单位 ${unit} 地形Z轴高度
 * 相当于 飞行高度+GetLocationZ, 地形z轴在某些特殊情况下可能会是异步的，请小心使用。
 * @params  unit
 * @return real
 */
declare function DzGetUnitZ(u: unit): number;


/**
 * 单位 - 获取单位头顶高度偏移
 * 获取 单位 ${unit} 头顶高度偏移
 * 加上单位z轴高度 相当于血条高度, 头顶高度偏移,因本地模型可能不一致结果可能是异步的,请小心使用
 * @params  unit
 * @return real
 */
declare function DzGetUnitOverheadOffset(u: widget): number;


/**
 * 界面 - ui模型 - 设置宽屏补丁
 * 设置ui模型控件 ${model_frame} 强制开启或关闭 ${is_enable} 宽屏补丁
 * 只能是ui模型控件, true时强制指定ui模型开启宽屏补丁, false时强制指定ui模型关闭宽屏补丁。
 * @params  frame boolean
 */
declare function DzFrameSetModelEnableWideScreen(frame: number, is_enable: boolean): void;


/**
 * 技能 - 设置技能启用
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的启用状态
 * [[内部有累计次数， 只有次数为小于等于0的时候才会真的启用。 单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode
 */
declare function DzSetUnitAbilityEnable(u: unit, abil_id: number): boolean;


/**
 * 技能 - 设置技能禁用
 * 设置单位 ${unit} 当前拥有的技能 ${id} 禁用状态
 * [[内部有累计次数， 只有次数大于0的时候才会真的禁用。 单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * Solar提示: 禁用会使技能图标变成暗图标
 * @params  unit abilcode
 */
declare function DzSetUnitAbilityDisable(u: unit, abil_id: number): boolean;


/**
 * 技能 - 获取当前是否禁用状态
 * 获取单位 ${单位} 的技能 ${技能id} 当前是否禁用状态
 * 默被禁用后返回true
 * @params  unit abilcode
 * @return boolean
 */
declare function DzGetUnitAbilityIsDisabled(u: unit, abil_id: number): boolean;


/**
 * 技能 - 获取当前禁用的内部计数
 * 获取单位 ${单位} 的技能 ${技能id} 当前禁用的内部计数
 * 大于0是禁用状态，否则是开启状态
 * 默认为0
 * DzSetUnitAbilityEnable每次让该值-1，且可以使该值减到负数
 * @params  unit abilcode
 * @return integer
 */
declare function DzGetUnitAbilityDisabledCount(u: unit, abil_id: number): number;


/**
 * 技能 - 设置技能科技条件达成
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的科技条件是否 ${reach} 达成
 * [[支持大部分技能、魔法书内技能、收费技能等。单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode boolean
 */
declare function DzSetUnitAbilityTechReach(u: unit, abil_id: number, reach: boolean): boolean;


/**
 * 技能 - 获取当前科技条件是否达成
 * 获取单位 ${单位} 的技能 ${技能id} 当前科技条件是否达成
 * true是已经解锁，false是未解锁科技
 * @params  unit abilcode
 * @return boolean
 */
declare function DzGetUnitAbilityTechReach(u: unit, abil_id: number): boolean;


/**
 * 技能 - 设置技能科技条件文本
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的科技条件的文本为 ${tip}
 * [[只有当科技未达成时才会显示,支持大部分技能、魔法书内技能、收费技能等。单位的独立修改,不会影响其他单位身上的技能;删除技能后改动即清除, 如无效果刷新技能数据即可]]
 * @params  unit abilcode string
 */
declare function DzSetUnitAbilityTechReachTip(u: unit, abil_id: number, tip: string): boolean;


/**
 * 建造 - 异步获取当前正在建造的技能Id
 * 异步获取当前正在建造的技能Id
 * 默认返回0,准备建造状态下 返回技能id, 注意该函数返回值是异步的，请谨慎使用。
 * @return abilcode
 */
declare function DzAsyncGetCurrentBuildingAbilityId(): number;


/**
 * 建造 - 异步获取当前正在建造的单位Id
 * 异步获取当前正在建造的单位Id
 * 默认返回0,准备建造状态下 返回单位id, 注意该函数返回值是异步的，请谨慎使用。
 * @return unitcode
 */
declare function DzAsyncGetCurrentBuildingUnitId(): number;


/**
 * 界面 - 解锁右下角区域鼠标焦点限制
 * 解锁右下角区域鼠标焦点限制 是否解锁 ${is_unlock}
 * [[解锁后右下角技能栏附近的Frame进入离开事件跟焦点可以生效。开局调用一次即可]]
 * @params  boolean
 */
declare function DzFrameUnlockMouseRectLimit(is_unlock: boolean): void;


/**
 * 界面 - 判断SimpleFrame类型控件是否显示
 * 判断SimpleFrame类型控件 ${SimpleFrame} 是否显示
 * 支持SimpleFrame、SimpleTexture、SimpleFontString及其扩展控件, 以及判断聊天框控件是否显示
 * @params  frame
 * @return boolean
 */
declare function KKSimpleFrameIsVisible(simple_frame: number): boolean;


/**
 * 界面 - 原生 - 获取聊天输入栏控件
 * 获取聊天输入栏控件
 * 返回回车键按下时打开的聊天输入框控件。
 * @return frame
 */
declare function DzFrameGetChatEditBar(): number;


/**
 * 玩家 - 获取本地玩家的聊天频道
 * 获取本地玩家的聊天频道
 * 返回值是异步的, 用在发生聊天消息时 获取玩家当前的聊天频道
 * @return ChatRecipient
 */
declare function DzGetLocalChatRecipient(): number;


/**
 * 玩家 - 发送聊天消息(触发同步事件)
 * 玩家 ${player} 发送聊天消息 ${message} 使用聊天频道 ${recipient}
 * [[player在异步事件里可以使用本地玩家, 在同步事件里可以指定玩家, 该函数会进行网络同步, 同步后会响应所有触发器聊天事件, 由于有同步请不要高频率执行。]]
 * @params  player string ChatRecipient
 */
declare function DzPlayerSendChat(p: player, msg: string, recipient: number): void;


/**
 * 哈希表 - 开启保存空值(逆天设置null)
 * 哈希表是否 ${是否开启} 开启保存空值(逆天设置null)
 * [[开局调用,开启之后 哈希表、逆天局部变量、逆天自定义值 都可以设置null值。 true开启 false关闭]]
 * @params  boolean
 */
declare function DzEnableHashtableSetNull(is_enable: boolean): void;


/**
 * 物品 - 修改物品碰撞体积
 * 修改物品 ${物品} 的碰撞体积为 ${碰撞体积}
 * [[体积可以是0,8,16,32,64。修改之后重新设置一下位置就会刷新了]]
 * @params  item real
 */
declare function DzSetItemCollisionSize(it: item, size: number): void;


/**
 * 物品 - 获取物品的碰撞体积
 * 获取 ${物品} 的碰撞体积
 * @params  item
 * @return real
 */
declare function DzGetItemCollisionSize(it: item): number;


/**
 * 单位 - 设置单位屏蔽本地命令(模拟失控)
 * 设置单位 ${单位} 屏蔽本地命令为 ${屏蔽状态}
 * [[true是失控状态, false是恢复。 屏蔽之后该单位任何手动控制都将失效, 只能通过触发器命令控制该单位。 屏蔽本地命令的缺点是 多选单位会因为其中一个屏蔽而所有选择单位]]
 * @params  unit boolean
 */
declare function DzSetUnitDisableLocalOrder(u: unit, is_disable: boolean): void;


/**
 * 单位 - 获取单位本地命令是否被屏蔽
 * 获取单位 ${单位} 本地命令是否被屏蔽
 * 判断该单位当前是否失控状态
 * @params  unit
 * @return boolean
 */
declare function DzGetUnitDisableLocalOrder(u: unit): boolean;


/**
 * 单位 - 设置单位屏蔽控制命令(模拟失控)
 * 设置单位 ${单位} 屏蔽控制命令为 ${屏蔽状态}
 * [[true是失控状态, false是恢复。 屏蔽之后该单位任何手动控制都将失效, 只能通过触发器命令控制该单位。]]
 * @params  unit boolean
 */
declare function DzSetUnitDisableControlOrder(u: unit, is_disable: boolean): void;


/**
 * 单位 - 获取单位控制命令是否被屏蔽
 * 获取单位 ${单位} 控制命令是否被屏蔽
 * 判断该单位当前是否失控状态
 * @params  unit
 * @return boolean
 */
declare function DzGetUnitDisableControlOrder(u: unit): boolean;


/**
 * 单位 - 设置单位攻击1目标允许
 * 设置单位 ${单位} 攻击1目标类型 ${目标允许}
 * [[可使用“转化 - 目标允许字符串转整数”, 例如 允许地面单位攻击飞行单位]]
 * @params  unit integer
 */
declare function DzSetUnitAttack1TargetType(u: unit, target_type: number): void;


/**
 * 单位 - 获取单位攻击1目标允许
 * 获取单位 ${单位} 攻击1目标允许
 * 返回值可使用“转化 - 目标允许整数转字符串”
 * @params  unit
 * @return integer
 */
declare function DzGetUnitAttack1TargetType(u: unit): number;


/**
 * 单位 - 设置单位攻击2目标允许
 * 设置单位 ${单位} 攻击2目标类型 ${目标允许}
 * [[可使用“转化 - 目标允许字符串转整数”, 例如 设置允许地面单位攻击空中单位]]
 * @params  unit integer
 */
declare function DzSetUnitAttack2TargetType(u: unit, target_type: number): void;


/**
 * 单位 - 获取单位攻击2目标允许
 * 获取单位 ${单位} 攻击2目标允许
 * 返回值可使用“转化 - 目标允许整数转字符串”
 * @params  unit
 * @return integer
 */
declare function DzGetUnitAttack2TargetType(u: unit): number;


/**
 * 单位 - 设置单位作为目标类型
 * 设置单位 ${单位} 作为目标类型 ${目标允许}
 * [[使用“转化 - 目标允许字符串转整数”, 例如 设置自身是否作为空中目标, 近战不能打空中]]
 * @params  unit integer
 */
declare function DzSetUnitAsAttackTargetType(u: unit, target_type: number): void;


/**
 * 单位 - 获取单位作为目标类型
 * 获取单位 ${单位} 作为目标类型
 * 返回值可使用“转化 - 目标允许整数转字符串”
 * @params  unit
 * @return integer
 */
declare function DzGetUnitAsAttackTargetType(u: unit): number;


/**
 * 世界坐标 - 为绑定的Frame添加隐藏区域
 * 为绑定的Frame ${frame} 添加隐藏区域( ${左0~0.8}, ${下0~0.6}, ${右0~0.8}, ${上0~0.6} ) 控件大小( ${宽度}, ${高度} )
 * 需要先绑定Frame到世界坐标或者物品单位实时坐标后, 再使用该函数。可以在控件进入区域时隐藏控件。屏幕区域左右0~0.8, 上下0~0.6
 * @params  frame real real real real real real
 */
declare function DzFrameBindAddHideRect(frame: number, left: number, bottom: number, right: number, top: number, width: number, height: number): void;


/**
 * 界面 - 获取控件实际宽度
 * 获取控件 ${控件} 实际宽度
 * 自适应文本控件等特殊情况要在改变文字内容后延迟1帧之后才能获取到正确的值
 * @params  frame
 * @return real
 */
declare function DzFrameGetRealWidth(frame: number): number;


/**
 * 界面 - 获取控件实际高度
 * 获取控件 ${控件} 实际高度
 * 自适应文本控件等特殊情况要在改变文字内容后延迟1帧之后才能获取到正确的值
 * @params  frame
 * @return real
 */
declare function DzFrameGetRealHeight(frame: number): number;


/**
 * 技能 - 设置魔法书技能列表添加新技能
 * 设置单位 ${unit} 当前拥有的魔法书技能 ${id} 的技能列表 添加新技能 ${abil_id}
 * [[添加新技能, 不能跟原有的重复，不能超过12个技能。 ]]
 * @params  unit abilcode abilcode
 */
declare function DzSetUnitAbilitySpellBookAddAbility(u: unit, abil_id: number, add_abil_id: number): boolean;


/**
 * 技能 - 设置魔法书技能列表移除指定技能
 * 设置单位 ${unit} 当前拥有的魔法书技能 ${id} 的技能列表 移除指定技能 ${abil_id}
 * [[将指定技能从魔法书里剔除。]]
 * @params  unit abilcode abilcode
 */
declare function DzSetUnitAbilitySpellBookRemoveAbility(u: unit, abil_id: number, remove_abil_id: number): boolean;


/**
 * 技能按钮 - 获取按钮上的技能ID
 * 获取按钮 ${按钮} 上的技能ID
 * 参数是原生或自己创建的技能按钮、物品按钮、 返回值是异步的, 当按钮有绑定技能时 会返回正确的ID
 * @params  frame
 * @return abilcode
 */
declare function KKCommandButtonGetAbilityId(command_button: number): number;


/**
 * 技能按钮 - 获取按钮上的命令ID
 * 获取按钮 ${按钮} 上的命令ID
 * 参数是原生或自己创建的技能按钮、物品按钮、 返回值是异步的, 当按钮有绑定时 会返回正确的ID
 * @params  frame
 * @return ordercode
 */
declare function KKCommandButtonGetOrderId(command_button: number): number;


/**
 * 游戏 - 修复单位命令事件泄漏
 * 修复单位命令事件泄漏
 * [[开局调用一次即可，修复注册单位无目标命令事件后 每次发布无目标命令都会产生的内存泄漏。]]
 */
declare function DzFixUnitEventMemoryLeak(): void;


/**
 * 单位 - 获取投射物发射坐标X
 * 获取 ${单位} 的投射物发射坐标X
 * @params  unit
 * @return real
 */
declare function DzGetUnitPojectileLaunchX(u: unit): number;


/**
 * 单位 - 获取投射物发射坐标Y
 * 获取 ${单位} 的投射物发射坐标Y
 * @params  unit
 * @return real
 */
declare function DzGetUnitPojectileLaunchY(u: unit): number;


/**
 * 单位 - 获取投射物发射坐标Z
 * 获取 ${单位} 的投射物发射坐标Z
 * @params  unit
 * @return real
 */
declare function DzGetUnitPojectileLaunchZ(u: unit): number;


/**
 * 投射物 - 发射箭矢
 * 发射箭矢 伤害来源: ${source} 目标: ${target} 模型: ${model} 队伍颜色: ${i} 颜色: ${color} 创建坐标: ${x} ${y} ${z} 缩放: ${scale} 速度: ${speed} 攻击类型: ${at} 伤害类型: ${dt} 武器类型: ${wt} 伤害: ${damage} 孤度: ${arc} 自导: ${homing} 可以丢失: ${can_miss} 永不丢失: ${never_miss} 攻击: ${attack} flag: ${flag}
 * 只封装了单位目标, flag 256(0x100) = 单位所受伤害是攻击伤害, 攻击 = 单位所受伤害是物理伤害
 * @params  unit unit modelfile integer rgba2color real real real real real attacktype damagetype weapontype real real boolean boolean boolean boolean integer
 */
declare function DzLaunchMissile(source: unit, target: widget, model: string, team_color: number, color: number, x: number, y: number, z: number, scale: number, speed: number, attack_type: attacktype, damage_type: damagetype, weapon_type: weapontype, damage: number, arc: number, homing: boolean, can_miss: boolean, never_miss: boolean, attack: boolean, flags: number): boolean;


/**
 * 投射物 - 发射箭矢(弹射)
 * 发射箭矢(弹射) 伤害来源: ${source} 目标: ${target} 模型: ${model} 队伍颜色: ${i} 颜色: ${color} 创建坐标: ${x} ${y} ${z} 缩放: ${scale} 速度: ${speed} 攻击类型: ${at} 伤害类型: ${dt} 武器类型: ${wt} 伤害: ${damage} 孤度: ${arc} 自导: ${homing} 可以丢失: ${can_miss} 永不丢失: ${never_miss} 攻击: ${attack} flag: ${flag} 目标允许: ${target_flag} 最大目标数: ${target_count} 弹射距离: ${range} 伤害衰减: ${damage_loss}
 * 只封装了单位目标, flag 256(0x100) = 单位所受伤害是攻击伤害, 攻击 = 单位所受伤害是物理伤害
 * @params  unit unit modelfile integer rgba2color real real real real real attacktype damagetype weapontype real real boolean boolean boolean boolean integer TargetFlags integer real real
 */
declare function DzLaunchMissileBounce(source: unit, target: widget, model: string, team_color: number, color: number, x: number, y: number, z: number, scale: number, speed: number, attack_type: attacktype, damage_type: damagetype, weapon_type: weapontype, damage: number, arc: number, homing: boolean, can_miss: boolean, never_miss: boolean, attack: boolean, flags: number, target_flags: number, target_count: number, bounce_range: number, damage_loss: number): boolean;


/**
 * 投射物 - 发射箭矢(穿透)
 * 发射箭矢(穿透) 伤害来源: ${source} 目标: ${target} 模型: ${model} 队伍颜色: ${i} 颜色: ${color} 创建坐标: ${x} ${y} ${z} 缩放: ${scale} 速度: ${speed} 攻击类型: ${at} 伤害类型: ${dt} 武器类型: ${wt} 伤害: ${damage} 孤度: ${arc} 自导: ${homing} 可以丢失: ${can_miss} 永不丢失: ${never_miss} 攻击: ${attack} flag: ${flag} 目标允许: ${target_flag} 伤害衰减: ${damage_loss} 距离: ${distance} 范围: ${range}
 * 只封装了单位目标, flag 256(0x100) = 单位所受伤害是攻击伤害, 攻击 = 单位所受伤害是物理伤害
 * @params  unit unit modelfile integer rgba2color real real real real real attacktype damagetype weapontype real real boolean boolean boolean boolean integer TargetFlags real real real
 */
declare function DzLaunchMissileLine(source: unit, target: widget, model: string, team_color: number, color: number, x: number, y: number, z: number, scale: number, speed: number, attack_type: attacktype, damage_type: damagetype, weapon_type: weapontype, damage: number, arc: number, homing: boolean, can_miss: boolean, never_miss: boolean, attack: boolean, flags: number, target_flags: number, damage_loss: number, distance: number, range: number): boolean;


/**
 * 投射物 - 发射箭矢(溅射)
 * 发射箭矢(溅射) 伤害来源: ${source} 目标: ${target} 模型: ${model} 队伍颜色: ${i} 颜色: ${color} 创建坐标: ${x} ${y} ${z} 缩放: ${scale} 速度: ${speed} 攻击类型: ${at} 伤害类型: ${dt} 武器类型: ${wt} 伤害: ${damage} 孤度: ${arc} 自导: ${homing} 可以丢失: ${can_miss} 永不丢失: ${never_miss} 攻击: ${attack} flag: ${flag} 目标允许: ${targetflags} 中伤害参数: ${half_factor} 小伤害参数: ${quar_factor} 全伤害范围: ${full_area} 半伤害范围: ${half_area} 小伤害范围: ${quar_area}
 * 只封装了单位目标, flag 256(0x100) = 单位所受伤害是攻击伤害, 攻击 = 单位所受伤害是物理伤害
 * @params  unit unit modelfile integer rgba2color real real real real real attacktype damagetype weapontype real real boolean boolean boolean boolean integer TargetFlags real real real real real
 */
declare function DzLaunchMissileSplash(source: unit, target: widget, model: string, team_color: number, color: number, x: number, y: number, z: number, scale: number, speed: number, attack_type: attacktype, damage_type: damagetype, weapon_type: weapontype, damage: number, arc: number, homing: boolean, can_miss: boolean, never_miss: boolean, attack: boolean, flags: number, target_flags: number, half_factor: number, quar_factor: number, full_area: number, half_area: number, quar_area: number): boolean;


/**
 * 投射物 - 发射炮火
 * 发射炮火 伤害来源: ${source} 目标: ${target} 目标坐标: ${target_x} ${target_y} 模型: ${model} 队伍颜色: ${i} 颜色: ${color} 创建坐标: ${x} ${y} ${z} 缩放: ${scale} 速度: ${speed} 攻击类型: ${at} 伤害类型: ${dt} 武器类型: ${wt} 伤害: ${damage} 孤度: ${arc} 攻击: ${attack} flag: ${flag} 最小范围: ${min_distance} 目标允许: ${targetflags} 中伤害参数: ${half_factor} 小伤害参数: ${quar_factor} 全伤害范围: ${full_area} 半伤害范围: ${half_area} 小伤害范围: ${quar_area}
 * 只封装了单位目标, 目标 null 则类似于攻击地面, flag 256(0x100) = 单位所受伤害是攻击伤害, 攻击 = 单位所受伤害是物理伤害
 * @params  unit unit real real modelfile integer rgba2color real real real real real attacktype damagetype weapontype real real boolean integer real TargetFlags real real real real real
 */
declare function DzLaunchArtillery(source: unit, target: widget, target_x: number, target_y: number, model: string, team_color: number, color: number, x: number, y: number, z: number, scale: number, speed: number, attack_type: attacktype, damage_type: damagetype, weapon_type: weapontype, damage: number, arc: number, attack: boolean, flags: number, min_distance: number, target_flags: number, half_factor: number, quar_factor: number, full_area: number, half_area: number, quar_area: number): boolean;


/**
 * 投射物 - 发射炮火(穿透)
 * 发射炮火(穿透) 伤害来源: ${source} 目标: ${target} 目标坐标: ${target_x} ${target_y} 模型: ${model} 队伍颜色: ${i} 颜色: ${color} 创建坐标: ${x} ${y} ${z} 缩放: ${scale} 速度: ${speed} 攻击类型: ${at} 伤害类型: ${dt} 武器类型: ${wt} 伤害: ${damage} 孤度: ${arc} 攻击: ${attack} flag: ${flag} 最小范围: ${min_distance} 目标允许: ${targetflags} 中伤害参数: ${half_factor} 小伤害参数: ${quar_factor} 全伤害范围: ${full_area} 半伤害范围: ${half_area} 小伤害范围: ${quar_area} 伤害衰减: ${damage_loss} 距离: ${distance} 范围: ${range}
 * 只封装了单位目标, 目标 null 则类似于攻击地面, flag 256(0x100) = 单位所受伤害是攻击伤害, 攻击 = 单位所受伤害是物理伤害
 * @params  unit unit real real modelfile integer rgba2color real real real real real attacktype damagetype weapontype real real boolean integer real TargetFlags real real real real real real real real
 */
declare function DzLaunchArtilleryLine(source: unit, target: widget, target_x: number, target_y: number, model: string, team_color: number, color: number, x: number, y: number, z: number, scale: number, speed: number, attack_type: attacktype, damage_type: damagetype, weapon_type: weapontype, damage: number, arc: number, attack: boolean, flags: number, min_distance: number, target_flags: number, half_factor: number, quar_factor: number, full_area: number, half_area: number, quar_area: number, damage_loss: number, distance: number, range: number): boolean;


/**
 * 投射物 - 发射技能投射物(腐臭蜂群)
 * 发射技能投射物(腐臭蜂群) 伤害来源: ${source} 模型: ${model} 队伍颜色: ${i} 颜色: ${color} 创建坐标: ${x} ${y} ${z} 角度: ${degree} 距离: ${distance} 缩放: ${scale} 速度: ${speed} 攻击类型: ${at} 伤害类型: ${dt} 武器类型: ${wt} 伤害: ${damage} flag: ${flag} 目标允许: ${targetflags} 初始范围: ${start_radius} 最终范围: ${start_radius} 最大伤害: ${max_damage} 魔法效果: ${buffID}
 * 只封装了单位目标, 魔法效果用途未知, flag 256(0x100) = 单位所受伤害是攻击伤害
 * @params  unit modelfile integer rgba2color real real real degree real real real attacktype damagetype weapontype real integer TargetFlags real real real buffcode
 */
declare function DzLaunchMissileCarrionSwarmEx(source: unit, model: string, team_color: number, color: number, x: number, y: number, z: number, facing: number, distance: number, scale: number, speed: number, attack_type: attacktype, damage_type: damagetype, weapon_type: weapontype, damage: number, flags: number, target_flags: number, start_radius: number, end_radius: number, max_damage: number, buffID: number): boolean;


/**
 * 单位 - 杀死(指定凶手)
 * 杀死 ${单位} 凶手为 ${killer}
 * 杀死单位时指定凶手
 * @params  unit unit
 */
declare function DzKillUnit(whichUnit: unit, killer: unit): boolean;


/**
 * 单位 - 设置XY坐标(不打断命令)
 * 设置单位 ${unit} 的坐标为 X: ${x} Y: ${y}
 * 相当于同时 设置单位X轴+设置单位Y轴, 并且不会触发错误的进入区域事件, 不会发布stop命令, 性能比设置单位位置高7倍。
 * @params  unit real real
 */
declare function DzSetUnitXY(whichUnit: unit, x: number, y: number): boolean;


/**
 * 技能 - 工程升级 - 替换技能(要相同模板)
 * 工程升级替换技能 单位 ${u} 原有技能 ${old_id} 到目标技能 ${new_id} 更新英雄技能 ${flag}
 * 相当于替换技能, 将指定技能替换成目标技能, 只能替换相同模板的类型, 不同模板替换会错误，谨慎使用。
 * @params  unit abilcode abilcode boolean
 */
declare function DzSetUnitAbilityEngineeringUpgrade(whichUnit: unit, old_id: number, new_id: number, update_hero_ability: boolean): boolean;


/**
 * 技能 - 工程升级 - 取消替换技能
 * 工程升级取消替换技能 单位 ${u} 原有技能 ${old_id}
 * @params  unit abilcode
 */
declare function DzSetUnitAbilityEngineeringUpgradeCancel(whichUnit: unit, old_id: number): boolean;


/**
 * 技能 - 工程升级 - 获取替换后的技能ID
 * 获取单位 ${unit} 的技能 ${old_id} 工程升级替换后的技能ID
 * 输入旧的id 获取 新的id
 * @params  unit abilcode
 * @return abilcode
 */
declare function DzGetUnitAbilityEngineeringUpgradeNewId(whichUnit: unit, old_id: number): number;


/**
 * 技能 - 工程升级 - 获取替换前的技能ID
 * 获取单位 ${unit} 的技能 ${new_id} 工程升级替换前的技能ID
 * 输入新的id 获取 旧的id
 * @params  unit abilcode
 * @return abilcode
 */
declare function DzGetUnitAbilityEngineeringUpgradeOldId(whichUnit: unit, new_id: number): number;


/**
 * 技能 - 设置技能魔法施法时间
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的魔法施法时间 ${cast_time}
 * [[开始施法前的准备时间.暗影突袭的此项为伤害间隔.暴风雪和火焰雨的此项为每波间隔;单位的独立修改,删除技能后改动即清除, 需要刷新数据]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityCastTime(u: unit, abil_id: number, value: number): boolean;


/**
 * 技能 - 获取技能魔法施法时间
 * 获取单位 ${unit} 当前拥有的技能 ${id} 的魔法施法时间
 * [[开始施法前的准备时间.暗影突袭的此项为伤害间隔.暴风雪和火焰雨的此项为每波间隔;]]
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityCastTime(u: unit, abil_id: number): number;


/**
 * 技能 - 设置技能持续时间(普通)
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的持续时间(普通) ${cast_time}
 * [[普通持续时间;单位的独立修改,删除技能后改动即清除, 需要刷新数据;烈焰风暴的此项为燃烧持续时间.变身(恶魔猎手)的此项为完成变身前暂停时间]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityDuration(u: unit, abil_id: number, value: number): boolean;


/**
 * 技能 - 获取技能持续时间(普通)
 * 获取单位 ${unit} 当前拥有的技能 ${id} 的持续时间(普通)
 * [[普通持续时间;烈焰风暴的此项为燃烧持续时间.变身(恶魔猎手)的此项为完成变身前暂停时间]]
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityDuration(u: unit, abil_id: number): number;


/**
 * 技能 - 设置技能持续时间(英雄)
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的持续时间(英雄) ${cast_time}
 * [[英雄持续时间;单位的独立修改,删除技能后改动即清除, 需要刷新数据;技能对英雄或具有抗性皮肤的单位的持续时间.烈焰风暴的此项为熄灭持续时间.静止陷阱的此项是眩晕时间]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityHeroDuration(u: unit, abil_id: number, value: number): boolean;


/**
 * 技能 - 获取技能持续时间(英雄)
 * 获取单位 ${unit} 当前拥有的技能 ${id} 的持续时间(英雄)
 * [[英雄持续时间;技能对英雄或具有抗性皮肤的单位的持续时间.烈焰风暴的此项为熄灭持续时间.静止陷阱的此项是眩晕时间]]
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityHeroDuration(u: unit, abil_id: number): number;


/**
 * 技能 - 设置技能魔法施放点(前摇)
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的魔法施放点(前摇) ${cast_time}
 * [[即施法前摇]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityCastPoint(u: unit, abil_id: number, value: number): boolean;


/**
 * 技能 - 获取技能魔法施放点(前摇)
 * 获取单位 ${unit} 当前拥有的技能 ${id} 的魔法施放点(前摇)
 * [[即施法前摇;]]
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityCastPoint(u: unit, abil_id: number): number;


/**
 * 技能 - 设置技能魔法施放回复(后摇)
 * 设置单位 ${unit} 当前拥有的技能 ${id} 的魔法施放回复(后摇) ${cast_time}
 * [[即施法后摇]]
 * @params  unit abilcode real
 */
declare function DzSetUnitAbilityBackSwing(u: unit, abil_id: number, value: number): boolean;


/**
 * 技能 - 设置技能魔法施放回复(后摇)
 * 获取单位 ${unit} 当前拥有的技能 ${id} 的魔法施放回复(后摇)
 * [[即施法后摇;]]
 * @params  unit abilcode
 * @return real
 */
declare function DzGetUnitAbilityBackSwing(u: unit, abil_id: number): number;


/**
 * 单位 - 设置每秒生命恢复
 * 设置 ${单位} 的每秒生命恢复为 ${value}
 * @params  unit real
 */
declare function DzSetUnitLifeRegen(whichUnit: unit, regen: number): boolean;


/**
 * 单位 - 获取每秒生命恢复
 * 获取 ${单位} 的每秒生命恢复
 * @params  unit
 * @return real
 */
declare function DzGetUnitLifeRegen(whichUnit: unit): number;


/**
 * 单位 - 设置每秒魔法恢复
 * 设置 ${单位} 的每秒魔法恢复为 ${value}
 * @params  unit real
 */
declare function DzSetUnitManaRegen(whichUnit: unit, regen: number): boolean;


/**
 * 单位 - 获取每秒魔法恢复
 * 获取 ${单位} 的每秒魔法恢复
 * @params  unit
 * @return real
 */
declare function DzGetUnitManaRegen(whichUnit: unit): number;


/**
 * 单位 - 设置最低移动速度
 * 设置 ${单位} 的最低移动速度为 ${value} 忽略变形术 ${flag}
 * @params  unit real boolean
 */
declare function DzSetUnitMinSpeed(whichUnit: unit, speed: number, ignore_polymorph: boolean): boolean;


/**
 * 单位 - 获取最低移动速度
 * 获取 ${单位} 的最低移动速度
 * @params  unit
 * @return real
 */
declare function DzGetUnitMinSpeed(whichUnit: unit): number;


/**
 * 单位 - 设置最高移动速度
 * 设置 ${单位} 的最高移动速度为 ${value} 忽略变形术 ${flag}
 * @params  unit real boolean
 */
declare function DzSetUnitMaxSpeed(whichUnit: unit, speed: number, ignore_polymorph: boolean): boolean;


/**
 * 单位 - 获取最高移动速度
 * 获取 ${单位} 的最高移动速度
 * @params  unit
 * @return real
 */
declare function DzGetUnitMaxSpeed(whichUnit: unit): number;


/**
 * 单位 - 设置魔法施放点(前摇)
 * 设置 ${单位} 的魔法施放点(前摇)为 ${value}
 * 不会影响已经初始化的技能, 修改之后添加的所有技能会使用该前摇
 * @params  unit real
 */
declare function DzSetUnitCastPoint(whichUnit: unit, cast_point: number): boolean;


/**
 * 单位 - 获取魔法施放点(前摇)
 * 获取 ${单位} 的魔法施放点(前摇)
 * @params  unit
 * @return real
 */
declare function DzGetUnitCastPoint(whichUnit: unit): number;


/**
 * 单位 - 设置魔法施放回复(后摇)
 * 设置 ${单位} 的魔法施放回复(后摇)为 ${value}
 * 不会影响已经初始化的技能, 修改之后添加的所有技能会使用该后摇
 * @params  unit real
 */
declare function DzSetUnitBackSwing(whichUnit: unit, back_swing: number): boolean;


/**
 * 单位 - 获取魔法施放回复(后摇)
 * 获取 ${单位} 的魔法施放回复(后摇)
 * @params  unit
 * @return real
 */
declare function DzGetUnitBackSwing(whichUnit: unit): number;


/**
 * 单位 - 设置攻击最大目标数
 * 设置单位 ${unit} 的攻击 ${index} 最大目标数为 ${value}
 * 仅 箭矢(弹射) 攻击类型有效, 并且物编需要填全伤害范围。 第二个参数index 为0的时候 代表攻击1   1的时候代表攻击2
 * @params  unit integer integer
 */
declare function DzSetUnitAttackTargetCount(whichUnit: unit, index: number, target_count: number): boolean;


/**
 * 单位 - 获取攻击最大目标数
 * 设置单位 ${unit} 的攻击 ${index} 最大目标数
 * 第二个参数index 为0的时候 代表攻击1   1的时候代表攻击2
 * @params  unit integer
 * @return integer
 */
declare function DzGetUnitAttackTargetCount(whichUnit: unit, index: number): number;


/**
 * 英雄 - 设置主属性类型
 * 设置英雄 ${hero} 的主属性类型为 ${attribute} 保留当前主属性加成 ${flag}
 * @params  unit AttributeType boolean
 */
declare function DzSetHeroPrimaryAttributeType(whichUnit: unit, attribute: number, keep_primary_bonus: boolean): boolean;


/**
 * 英雄 - 获取主属性类型
 * 获取英雄 ${hero} 的主属性类型
 * @params  unit
 * @return AttributeType
 */
declare function DzGetHeroPrimaryAttributeType(whichUnit: unit): number;


/**
 * 英雄 - 设置主属性
 * 设置英雄 ${hero} 的主属性为 ${value}
 * 白字属性
 * @params  unit integer
 */
declare function DzSetHeroPrimaryAttribute(whichUnit: unit, attribute: number): boolean;


/**
 * 英雄 - 获取主属性
 * 获取英雄 ${hero} 的主属性 包括加成 ${flag}
 * 加成指的是绿字
 * @params  unit boolean
 * @return integer
 */
declare function DzGetHeroPrimaryAttribute(whichUnit: unit, include_bonus: boolean): number;


/**
 * 英雄 - 设置属性成长
 * 设置英雄 ${hero} 的 ${attribute} 属性成长为 ${value} 保留当前数值: ${flag}
 * 因内部是混用整数和实数 所以保留数值为 TRUE 时会可能丢失/获取额外属性
 * @params  unit AttributeType real boolean
 */
declare function DzSetHeroPrimaryAttributePlus(whichUnit: unit, attreibute: number, value: number, keep_current_bonus: boolean): boolean;


/**
 * 英雄 - 获取属性成长
 * 获取英雄 ${hero} 的 ${attribute} 属性成长
 * @params  unit AttributeType
 * @return real
 */
declare function DzGetHeroPrimaryAttributePlus(whichUnit: unit, attribute: number): number;


/**
 * 游戏 - 禁用攻速限制
 * 禁用攻速限制
 * 极限可以大概每秒 9360, 但是你确定电脑撑得住?
 */
declare function DzDisableAttackSpeedLimit(): void;


/**
 * 游戏 - 设置攻速上限
 * 设置攻速上限为 ${min} - ${max}
 * 除非禁用攻速限制, 不然最终攻速无法超过每秒 50 次
 * @params  real real
 */
declare function DzSetMinMaxAttackSpeedFactor(min_factor: number, max_factor: number): void;


/**
 * 游戏 - 设置移速可叠加
 * 设置移速可叠加 ${flag}
 * 多个技能，多个物品的移动速度能叠加。平衡性常数那个有bug
 * @params  boolean
 */
declare function DzSetMoveSpeedBonusesStack(is_enable: boolean): void;


/**
 * 游戏 - 设置全局移速 上/下 限
 * 设置全局移速 硬编码限制(建筑 ${building_min}-${building_max} 单位 ${unit_min}-${unit_max}) 平衡性常数限制(建筑 ${GC_building_min}-${GC_building_max} 单位 ${GC_unit_min}-${GC_unit_max}) 采矿最低移速 ${harvest_min} 疾步风最高移速 ${windwalk_max}
 * 副作用: 会影响转身速度
 * @params  real real real real real real real real real real
 */
declare function DzSetGlobalUnitMinMaxMoveSpeed(building_min: number, building_max: number, unit_min: number, unit_max: number, GC_building_min: number, GC_building_max: number, GC_unit_min: number, GC_unit_max: number, harvest_min: number, windwalk_max: number): void;


/**
 * 哈希表 - 保存Handle ID
 * 保存Handle ID到哈希表 ${哈希表} 主Key ${主Key} 子Key ${子Key} Handle ID ${HandleId}
 * 保存Handle ID到哈希表中,不改变引用计数, 保存后可以读取指定类型的哈希表实现I2任意类型
 * @params  hashtable integer integer integer
 */
declare function DzSaveHandleId(whichHashtable: hashtable, parentKey: number, childKey: number, handleId: number): boolean;


/**
 * 哈希表 - 保存Handle ID(指定类型)
 * 保存Handle ID到哈希表 ${哈希表} 主Key ${主Key} 子Key ${子Key} Handle ID ${HandleId} 类型 ${类型}
 * 类型: 1=引用计数类型 2=texttag 3=lightning 4=image 5=ubersplat 6=fogstate
 * @params  hashtable integer integer integer integer
 */
declare function DzSaveHandleIdEx(whichHashtable: hashtable, parentKey: number, childKey: number, handleId: number, handleType: number): boolean;


/**
 * 哈希表 - 读取Handle ID
 * 从哈希表 ${哈希表} 主Key ${主Key} 子Key ${子Key} 读取Handle ID
 * 从哈希表中读取保存的Handle ID
 * @params  hashtable integer integer
 * @return integer
 */
declare function DzLoadHandleId(whichHashtable: hashtable, parentKey: number, childKey: number): number;


/**
 * 哈希表 - 设置数量上限
 * 设置哈希表数量上限为 ${上限}
 * 默认上限为256个
 * @params  integer
 */
declare function DzSetHashtableLimit(maxCount: number): void;


/**
 * 游戏 - 禁用移除多余死亡英雄
 * 禁用移除多余死亡英雄
 * 调用后不再自动移除多余的死亡英雄, 还需将英雄的占用人口设置为0 或者提高人口上限
 */
declare function DzDisableRemoveExtraDeadHero(): void;


/**
 * 游戏 - 设置玩家寻路上限
 * 设置 ${玩家} 的寻路上限 深度 ${limit1} 动态 ${limit2} 快速 ${limit3} 本地 ${limit4}
 * 默认值: 深度=800 动态=300 快速=900 本地=1100, 参数全填9999 牺牲性能 换取群体单位移动时不卡寻路。
 * @params  player integer integer integer integer
 */
declare function DzSetPlayerPathFindingLimit(whichPlayer: player, limit1: number, limit2: number, limit3: number, limit4: number): boolean;


/**
 * 游戏 - 设置人口上限常量
 * 设置人口上限常量为 ${值}
 * 修改游戏的人口上限常量, 默认限制为200
 * @params  integer
 */
declare function DzSetGameConstantFoodCeiling(value: number): void;


/**
 * 游戏 - 禁用加载完毕按键继续
 * 禁用加载完毕按键继续
 * 修改过载入图的地图每次进游戏都需要确认, 调用后加载完毕不再需要按键继续,
 */
declare function DzDisableLoadingPressAKey(): void;


/**
 * 界面 - 获取多面板Frame
 * 获取多面板 ${多面板} 的Frame
 * 返回多面板的Frame句柄
 * @params  multiboard
 * @return frame
 */
declare function DzMultiboardGetFrame(whichMultiboard: multiboard): number;


/**
 * 界面 - 获取计时器对话框Frame
 * 获取计时器对话框 ${计时器对话框} 的Frame
 * 返回计时器对话框的Frame句柄
 * @params  timerdialog
 * @return frame
 */
declare function DzTimerDialogGetFrame(whichTimerDialog: timerdialog): number;


/**
 * 界面 - 添加文字阴影
 * 为 ${Frame} 添加文字阴影 偏移X ${X} 偏移Y ${Y} 颜色 ${颜色}
 * 支持CTextFrame, CMessageFrame, CSimpleFontString, CSimpleMessageFrame
 * @params  frame real real integer
 */
declare function DzFrameAddTextShadow(whichFrame: number, offsetX: number, offsetY: number, color: number): boolean;


/**
 * 界面 - 复制文字阴影(模拟描边)
 * 为 ${Frame} 复制 ${数量} 份阴影
 * 先添加文字阴影，再调用此函数。在原有阴影基础上复制额外的阴影,均匀分布在圆周上
 * @params  frame integer
 */
declare function DzFrameDuplicateTextShadow(whichFrame: number, count: number): boolean;


/**
 * 技能按钮 - 显示冷却时间文本
 * 技能按钮显示冷却时间文本 ${显示技能冷却} 物品按钮显示冷却时间文本 ${显示物品冷却}
 * 在命令按钮上显示剩余冷却时间文本
 * @params  boolean boolean
 */
declare function DzSetCommandButtonShowCooldown(showAbility: boolean, showItem: boolean): void;


/**
 * 技能按钮 - 显示快捷键文本
 * 技能按钮显示快捷键文本 ${显示技能快捷键} 物品按钮显示快捷键文本 ${显示物品快捷键}
 * 在命令按钮上显示快捷键文本
 * @params  boolean boolean
 */
declare function DzSetCommandButtonShowHotkey(showAbility: boolean, showItem: boolean): void;


/**
 * 技能按钮 - 设置快捷键文本背景
 * 设置命令按钮快捷键文本背景为 ${路径}
 * 设置快捷键文本的背景纹理路径
 * @params  imagefile
 */
declare function DzSetCommandButtonHotkeyBackground(filepath: string): void;


declare function DzEffectGroupCreate(): dzeffectgroup;


/**
 * 特效组 - 获取特效数量
 * 获取 ${特效组} 里的特效数量
 * 包括删除了但没移出的特效
 * @params  dzeffectgroup
 * @return integer
 */
declare function DzEffectGroupGetSize(whichEffectGroup: dzeffectgroup): number;


/**
 * 特效组 - 第N个特效
 * 获取 ${特效组} 里的第 ${N} 个特效
 * 从1开始  循环1到特效组数量
 * @params  dzeffectgroup integer
 * @return effect
 */
declare function DzEffectGroupAt(whichEffectGroup: dzeffectgroup, index: number): effect;


/**
 * 特效组 - 清除
 * 清除 ${特效组}
 * 清除了变成空的特效组，可以重新添加，如果再使用需要删除掉。
 * @params  dzeffectgroup
 */
declare function DzEffectGroupClear(whichEffectGroup: dzeffectgroup): number;


declare function DzEffectGroupAdd(whichEffectGroup: dzeffectgroup, whichEffect: effect, allowDuplicate: boolean): number;


/**
 * 特效组 - 移出
 * 从 ${特效组} 移出 ${特效} (只移出第一个 ${flag})
 * @params  dzeffectgroup effect boolean
 */
declare function DzEffectGroupRemove(whichEffectGroup: dzeffectgroup, whichEffect: effect, firstOnly: boolean): boolean;


declare function DzEffectGroupEnumRange(whichEffectGroup: dzeffectgroup, x: number, y: number, range: number, clear: boolean, allowDuplicate: boolean): number;


declare function DzEffectGroupEnumRect(whichEffectGroup: dzeffectgroup, whichRect: rect, clear: boolean, allowDuplicate: boolean): number;


/**
 * 特效组 - 是否包含特效
 * ${特效组} 是否包含 ${特效}
 * @params  dzeffectgroup effect
 * @return boolean
 */
declare function DzEffectGroupContains(whichEffectGroup: dzeffectgroup, whichEffect: effect): boolean;


/**
 * 特效组 - 删除
 * 删除 ${特效组}
 * @params  dzeffectgroup
 */
declare function DzEffectGroupDestroy(whichEffectGroup: dzeffectgroup): boolean;


/**
 * 特效组 - 选取特效
 * 选取特效
 * 选取做动作里获取当前选取的特效
 * @return effect
 */
declare function DzGetEnumEffect(): effect;


/**
 * 特效组 - 选取做多动作
 * 选取 ${特效组} 中的每个特效做动作
 * 在动作里使用 DzGetEnumEffect 获取当前选取的特效
 * @params  dzeffectgroup
 */
declare function DzForEffectGroup(whichEffectGroup: dzeffectgroup, callback: ()=>void): number;


/**
 * 特效组 - 转换 handle ID 为特效组
 * 转换 handle ID ${handleID} 为特效组
 * 整数地址转换为特效组
 * @params  integer
 * @return dzeffectgroup
 */
declare function DzHandle2EffectGroup(handleID: number): dzeffectgroup;


/**
 * 哈希表 - 保存特效组
 * 保存特效组到哈希表 ${哈希表} 主Key ${主Key} 子Key ${子Key} 特效组 ${特效组}
 * 保存特效组句柄到哈希表中
 * @params  hashtable integer integer dzeffectgroup
 */
declare function SaveDzEffectGroupHandle(table: hashtable, parentKey: number, childKey: number, g: dzeffectgroup): boolean;


/**
 * 哈希表 - 读取特效组
 * 从哈希表 ${哈希表} 主Key ${主Key} 子Key ${子Key} 读取特效组
 * 从哈希表中读取保存的特效组句柄
 * @params  hashtable integer integer
 * @return dzeffectgroup
 */
declare function LoadDzEffectGroupHandle(table: hashtable, parentKey: number, childKey: number): dzeffectgroup;


/**
 * 特效 - 更新坐标
 * 更新 ${特效} 的坐标
 * 先读取Sprite的坐标 然后设置成特效的坐标,如果使用旧版japi修改特效位置 是需要调用该函数刷新坐标。
 * @params  effect
 */
declare function DzUpdateEffectSmartPosition(whichEffect: effect): boolean;


/**
 * 特效 - 立即删除(不播放死亡动画)
 * 立即删除 ${特效}
 * 不会播放死亡动画立即删除特效
 * @params  effect
 */
declare function DzRemoveEffect(whichEffect: effect): boolean;


declare function DzRemoveEffectTimed(whichEffect: effect, time: number): boolean;


/**
 * 特效 - 设置始终渲染
 * 设置特效 ${effect} 始终渲染 ${flag}
 * 可以在 战争迷雾/黑色阴影/屏幕外 时显示此特效,多了会掉帧,可以对体积巨大的模型使用
 * @params  effect boolean
 */
declare function DzSetEffectAlwaysRender(whichEffect: effect, flag: boolean): boolean;


declare function DzDieEffectTimed(whichEffect: effect, time: number): boolean;


/**
 * 特效 - 设置特效组黑名单(异步特效坐标专用)
 * 设置 ${特效} 不会被特效组选取 ${flag}
 * 标记后该特效不会被特效组选取到, 异步特效坐标专用， 标记之后不会导致选取异步
 * @params  effect boolean
 */
declare function DzSetEffectGroupBlacklist(whichEffect: effect, flag: boolean): boolean;


/**
 * 特效 - 设置绑定特效的缩放大小
 * 设置 ${特效} 绑定模型的缩放 X: ${scaleX} Y: ${scaleY} Z: ${scaleZ}
 * 修改特效模型作为附着模型渲染时的缩放, 设为1.0还原
 * @params  effect real real real
 * @return boolean
 */
declare function DzSetEffectAttachedModelScale(whichEffect: effect, scaleX: number, scaleY: number, scaleZ: number): boolean;


/**
 * 界面 - 设置UI模型绑定特效的缩放大小
 * 设置 ${frame} UI模型绑定特效的缩放 X: ${scaleX} Y: ${scaleY} Z: ${scaleZ}
 * 修改UI模型控件的模型作为附着模型渲染时的缩放, 设为1.0还原
 * @params  integer real real real
 * @return boolean
 */
declare function DzFrameSetAttachedModelScale(frame: number, scaleX: number, scaleY: number, scaleZ: number): boolean;


/**
 * 特效 - 重新播放出生动画
 * 重新播放 ${特效} 的出生动画
 * 先播放birth动画, 结束后自动播放stand动画
 * @params  effect
 */
declare function DzEffectReplayBirth(whichEffect: effect): void;
