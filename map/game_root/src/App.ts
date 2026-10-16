//base
import GlobalVars from '@sl-wc3/GlobalVars';
// app imports
import AppTest from "./AppTest";
import StateInit from "./StateInit";
import StateConfigInit from "./StateConfigInit";
import BaseUtil from '@/BaseUtil';
import SolarDataClearState from "@/SolarDataClearState";
import UnitAttributeState from "@/UnitAttributeState";
import SolarDamageState from "@/SolarDamageState";
import ItemAttributeState from "@/ItemAttributeState";
import PlayerAttributeState from "@/PlayerAttributeState";
import PlayerUtil from "@/PlayerUtil";
import SolarActorState from "@/SolarActorState";
//这里可传入的isDebug 布尔值为是否打开控制台日志方便开发，
//若不传值则自动推测当前地图是否为测试环境（slk后的地图不测试 在太阳编辑器打开此地图的机器测试）
GlobalVars.init()

// 框架初始化会打开调试控制台；在其完成后隐藏窗口，保留调试模式。
const runtime: NoSelf | any = require("jass.runtime");
runtime.console = false;

export default class App {

    constructor() {

        //先打印一个文本 让我们知道已运行到了TS入口代码
        DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 60, "TS:App!");
        //提示:
        //字符串物编类型 转 整数 可使用 FourCC("hfoo")
        //整数类型 转 字符串物编类型 可使用  id2string(GetUnitTypeId(unit));
        //修改太阳框架功能在外部覆盖方法比如  ActorFrameUtil.showTooltip = ()=>{//你自己的逻辑} 以保证后续更新框架可保留你自己的逻辑

        /**
         * 地图脚本推荐由2部分组成
         * 1、数据 （推荐从xlsx编译获得）
         * 2、功能模块（通用的逻辑代码）
         * 通常每张图的数据都不一样 可由xlsx配置这些数据（物编、数值等）
         * 地图的功能模块逻辑通用性很强（请沉淀此部分代码）
         */
        //配置此地图的功能模块运转的数据 (可从xlsx表格编译获得)
        StateConfigInit();

        //启动基本的 数据清理排泄
        new SolarDataClearState();

        /**【可选】启用太阳属性相关系统 */
        new SolarDamageState();//太阳伤害系统
        new ItemAttributeState();//太阳物品属性
        new PlayerAttributeState();//太阳玩家属性
        new UnitAttributeState();//太阳单位属性系统
        /**【可选】启用太阳演员系统 (可以轻易使用各种物编模拟功能)
         * 使用前需添加基础物编模板（可在太阳编辑器文件树 右键 -> 新建 -> 添加基础物编模板） */
        new SolarActorState()

        //启动此地图需要的功能模块 (推荐高内聚，低耦合的编码方式以沉淀这些逻辑代码)
        StateInit();

        //todo 通常在这里加载你自己的代码......

        //测试区
        new AppTest();

    }

}

// new App();//这里的代码是在地图初始化执行 修改或隐藏原生UI通常需要在这里执行

//如果初始化执行的触发报错提示不全 可换以下代码使用中心计时器延迟执行逻辑代码 以显示完整的报错堆栈信息
BaseUtil.runLater(0.01, () => {
    // GlobalVars.set2G(require('jass.globals')); //如果Ts与Jass混用 可以在这里再次刷新一下jass全局变量到 TS全局环境变量中
    if (isEmbedJapi) {
        //内置lua可以等uid同步完成后启动 以兼容使用uid的函数
        PlayerUtil.onUsersUidReady(() => {
            new App();
        })
    } else {
        //ydlua 直接启动
        new App();
    }

});
