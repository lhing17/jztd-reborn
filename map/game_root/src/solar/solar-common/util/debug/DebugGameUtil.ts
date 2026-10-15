import GroupUtil from "@/GroupUtil";

let jDebug: NoSelf = require('jass.debug')

export default class DebugGameUtil {


    static getCommonInfo() {
        let info = "T=" + Math.floor(_g_time / 1000) + ",Hc/m=" + handlecount() + "/" + handlemax();
        info = info + ",Sm=" + DebugGameUtil.getScriptMemory() + "mb";
        if (isEmbedJapi) {
            info = info + ",Wm=" + GetUsedMemory() + "mb";
            info = info + ",Cs=" + GetCacheStringCount();
            info = info + ",Cm=" + GetCacheModelCount();
        }
        //
        info = info + ",GP_ai=" + GroupUtil.groupObjectPool.getNumActive() + ":" + GroupUtil.groupObjectPool.getNumIdle();
        //
        let handleInfoObj = DebugGameUtil.calculateHandleInfoObj();
        let handleInfoObjs = [];
        for (let handleInfoObjKey in handleInfoObj) {
            let obj: any = handleInfoObj[handleInfoObjKey];
            obj.type = handleInfoObjKey;
            obj.typeName = DebugGameUtil.getTypeCnName(handleInfoObjKey);
            handleInfoObjs.push(obj)
        }
        handleInfoObjs.sort(function (a, b) {
            return b.count - a.count;
        });
        for (let i = 0; i < handleInfoObjs.length && i < 10; i++) {
            let obj = handleInfoObjs[i];
            info = info + "," + DebugGameUtil.getTypeCnName(obj.type) + "=" + obj.count + "/" + obj.reference;
        }
        return info;
    }


    static getScriptMemory() {
        let lua_memory = collectgarbage('count')
        // @ts-ignore
        let stringTs: NoSelf = string
        let lm = stringTs.format("%.3f", (lua_memory / 1024));
        return lm;
    }

    static getDebugInfo(): string {
        let str = "========showDebugInfo():Start========\r\n"
        str = str + '垃圾收集器在运行为：' + collectgarbage('isrunning') + "\r\n"
        let lua_memory = collectgarbage('count')
        // @ts-ignore
        let stringTs: NoSelf = string
        let lm = stringTs.format("%.3f", (lua_memory / 1024));
        str = str + '脚本引擎占用内存[' + lm + 'm]'
        if (GetUsedMemory) {
            str = str + ' GetUsedMemory=[' + GetUsedMemory() + ']'
        }
        collectgarbage('collect')
        str = str + "\r\nhandle最大值 =" + jDebug.handlemax() + "\r\n"
        str = str + "handle总数 =" + jDebug.handlecount() + "\r\n"
        str = str + "========Handle信息:========" + "\r\n"
        let handleInfoObj = DebugGameUtil.calculateHandleInfoObj();
        let handleInfoObjs = [];
        for (let handleInfoObjKey in handleInfoObj) {
            let obj: any = handleInfoObj[handleInfoObjKey];
            obj.type = handleInfoObjKey;
            obj.typeName = DebugGameUtil.getTypeCnName(handleInfoObjKey);
            handleInfoObjs.push(obj)
        }
        handleInfoObjs.sort(function (a, b) {
            return b.count - a.count;
        });
        for (let obj of handleInfoObjs) {
            str = str + DebugGameUtil.getTypeCnName(obj.type) + "    数量: " + obj.count + "    引用计数: " + obj.reference + "\r\n"
        }
        str = str + "========showDebugInfo():End========" + "\r\n"
        str = str + "GroupUtil.groupObjectPool.getNumActive()=" + GroupUtil.groupObjectPool.getNumActive() + "\r\n"
        str = str + "GroupUtil.groupObjectPool.getNumIdle()=" + GroupUtil.groupObjectPool.getNumIdle() + "\r\n"
        return str;
    }


    static typeName = {
        '+loc': '点',
        '+EIP': '点特效',
        '+EIm': '附着特效',
        '+EIf': '特效III',
        '+tmr': '计时器',
        'item': '物品',
        '+w3u': '单位',
        '+grp': '单位组',
        '+dlb': '按钮',
        '+dlg': '对话框',
        '+w3d': '可破坏物',
        'pcvt': '玩家聊天事件',
        'pevt': '玩家事件',
        'uevt': '单位事件',
        'wdvt': '可破坏物事件',
        '+flt': '过滤器',
        '+fgm': '可见度修正器',
        '+frc': '玩家组',
        'ghth': '哈希表',
        '+mdb': '多面板',
        '+ply': '玩家',
        '+rct': '矩形区域',
        '+agr': '范围',
        '+snd': '声音',
        '+tid': '计时器窗口',
        '+trg': '触发器',
        '+tac': '触发器动作',
        'tcnd': '触发器条件',
        'ipol': '物品池',
        '+mbi': '多面板项目',
        'gcch': '缓存',
        'plsd': '玩家属性变化事件',
        '+que': '任务',
        '+rev': '事件',
        'alvt': '技能等级事件',
        'bevt': 'buff事件',
        'devt': '对话框事件',
        'gevt': '游戏全局事件',
        'gfvt': '游戏帧事件',
        'psvt': '玩家状态事件',
        'tmet': '计时器事件',
        'tmvt': '计时器变量事件',
    }

    static getTypeCnName(type: string): string {
        let name = DebugGameUtil.typeName[type];
        name = name ? name : type
        if ("事件" == name) {
            name = name + "(" + type + ")";
        }
        return name;
    }


    static calculateHandleInfoObj() {
        const startIndex = 1048575;
        let handleInfoObj: { [type: string]: { count: number, reference: number, typeName: string } } = {}
        for (let i = startIndex; i < startIndex + jDebug.handlemax(); i++) {
            let handledefInfo = handledef(i2h(i));
            if (!handledefInfo || !handledefInfo.type) {
                continue
            }
            let infoObj = handleInfoObj[handledefInfo.type]
            if (!infoObj) {
                infoObj = {count: 0, reference: 0, typeName: DebugGameUtil.getTypeCnName(handledefInfo.type)};
            }
            infoObj.count++;
            if (handledefInfo.reference) {
                infoObj.reference += handledefInfo.reference;
            }
            handleInfoObj[handledefInfo.type] = infoObj;
        }

        return handleInfoObj;
    }
}