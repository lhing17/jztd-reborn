import {Trigger} from "@/trigger";
import SingletonUtil from "@/SingletonUtil";
import DataBase from "@/DataBase";
import KeyCode from "@/KeyCode";
import SolarConfig from "@/SolarConfig";
import Actor from "@/Actor";
import DebugVmUtil from "@/DebugVmUtil";
import BaseUtil from "@/BaseUtil";
import ActorUtil from "@/ActorUtil";
import HookUtil from "@/HookUtil";

export default class SolarReload {
    static config = {}
    /** 正在重载 */
    static TriggerHandle = []
    static TimerHandle = []
    static frameHandle = []
    static unitHandle = []
    static itemHandle = []
    static fileHandlesMap: {
        [filePath: string]: {
            triggerHandles?: trigger[]
            timerHandles?: timer[]
            frameHandles?: number[]
            unitHandles?: unit[]
            itemHandles?: item[]
            actors?: Actor[]
        }
    } = {}


    static reloadFileConfig: { [loadedKey: string]: any } = {};


    static init() {
        if (_G.SolarReloadInitED) {
            return
        }
        _G.SolarReloadInitED = true;
        if (!local_map_dir_path) {
            return;
        }
        try {
            log.debug("local_map_dir_path=" + local_map_dir_path)
            // @ts-ignore
            if (isEmbedBrowser && _G.webEngine) {
                // @ts-ignore
                _G.webEngine.path =
                    local_map_dir_path + 'webapp\\dist;'
                    + local_map_dir_path + 'webapp\\public\\;'
                    + local_map_dir_path + 'webapp;'
                    + local_map_dir_path + 'frontend;'
                    + local_map_dir_path + 'resource;'
                    // @ts-ignore
                    + _G.webEngine.path
            }
        } catch (e) {
            print(e)
        }

        if (SolarConfig.reloadMode == "自动全局") {
            SolarReload.autoReload();
        } else if (SolarConfig.reloadMode == "手动") {
            BaseUtil.runLater(1, () => {
                se.on("_sl_重载脚本", data => {
                    for (let loadedKey in SolarReload.reloadFileConfig) {
                        SolarReload.reloadFile(loadedKey);
                    }
                });
                print("当前热加载模式设置为手动！请按F9重加载@SupportReload()装饰的类")
            })
        }


        let jassCreateTrigger = CreateTrigger;
        SolarReload.hookCreators();
        //触发
        if (DzTriggerRegisterKeyEventByCode && !_G.HasTriggerRegisterKeyEvent) {//判断有本地japi硬件事件环境
            let t = jassCreateTrigger();
            //F9刷新
            // TriggerRegisterPlayerEvent(t, GetLocalPlayer(), EVENT_PLAYER_ARROW_UP_DOWN)
            DzTriggerRegisterKeyEventByCode(t, KeyCode.VK_F9, 1, true, null)
            TriggerAddAction(t, () => {
                if (SolarConfig.reloadMode == "自动全局") {
                    SolarReload.reload();
                }
                se.emit("_sl_重载脚本")
            })
        }
        _G.HasTriggerRegisterKeyEvent = true;
        _G.reloadCount = 1;
    }

    static reloadFile(fileModName: string) {
        if (PACKAGE.loaded[fileModName] == null) {
            print("未初始化:" + fileModName)
            return
        } else {
            PACKAGE.loaded[fileModName] = null;
            SolarReload.destroyFileHandles(fileModName);
        }
        gv.reloadIng = true;
        let requireClassResult = require(fileModName);
        //根据太阳规范 自动new 默认类的 构造函数
        if (requireClassResult?.default && SolarReload.reloadFileConfig[fileModName]?.autoNew != false) {
            new requireClassResult.default();
        }
        _G.reloadCount++;
        let info = 'No.' + _G.reloadCount + ' [重新加载代码脚本]!' + _g_time;
        DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 60, info);
        print(info)
        gv.reloadIng = false;
    }

    static destroyFileHandles(fileModName: string) {
        let mapElement = SolarReload.fileHandlesMap[fileModName];
        if (mapElement == null) {
            return
        }
        /**
         * 注意 可能这里的handle已经被删除了
         */
        if (mapElement.triggerHandles) {
            for (let handleElement of mapElement.triggerHandles) {
                TriggerClearActions(handleElement)
                DisableTrigger(handleElement)
                DestroyTrigger(handleElement)
            }
        }

        if (mapElement.timerHandles) {
            for (let handleElement of mapElement.timerHandles) {
                DestroyTimer(handleElement)
            }
        }
        if (mapElement.unitHandles) {
            for (let handleElement of mapElement.unitHandles) {
                RemoveUnit(handleElement)
            }
        }
        if (mapElement.itemHandles) {
            for (let handleElement of mapElement.itemHandles) {
                RemoveItem(handleElement)
            }
        }
        if (mapElement.frameHandles) {
            for (let handleElement of mapElement.frameHandles) {
                if (handleElement && handleElement > 0) {
                    try {
                        DzDestroyFrame(handleElement)
                    } catch (e) {
                        print("销毁Frame出错:" + handleElement + "=" + tostring(e))
                    }
                }
            }
        }
        if (mapElement.actors) {
            for (let actor of mapElement.actors) {
                if (!actor.isDestroyed()) {
                    actor.destroy(true);
                }
            }
        }

        //
        SolarReload.fileHandlesMap[fileModName] = {};
    }


    static hookCreators() {
        //勾住创建的触发
        let jassCreateTrigger = CreateTrigger;
        _G.CreateTrigger = function (this: void): trigger {
            let hdl = jassCreateTrigger()
            SolarReload.TriggerHandle.push(hdl);
            //
            let userScripts: string[] = DebugVmUtil.getUserScriptRequireModNameByStack();
            for (let userScript of userScripts) {
                if (SolarReload.fileHandlesMap[userScript] == null) {
                    SolarReload.fileHandlesMap[userScript] = {}
                }
                SolarReload.fileHandlesMap[userScript].triggerHandles = SolarReload.fileHandlesMap[userScript].triggerHandles || [];
                SolarReload.fileHandlesMap[userScript].triggerHandles.push(hdl);
            }
            return hdl;
        }
        //勾住创建的计时器
        let jassCreateTimer = CreateTimer;
        _G.CreateTimer = function (this: void): timer {
            let hdl = jassCreateTimer()
            SolarReload.TimerHandle.push(hdl)
            //
            let userScripts: string[] = DebugVmUtil.getUserScriptRequireModNameByStack();
            for (let userScript of userScripts) {
                if (SolarReload.fileHandlesMap[userScript] == null) {
                    SolarReload.fileHandlesMap[userScript] = {}
                }
                SolarReload.fileHandlesMap[userScript].timerHandles = SolarReload.fileHandlesMap[userScript].timerHandles || [];
                SolarReload.fileHandlesMap[userScript].timerHandles.push(hdl);
            }
            return hdl;
        }
        //勾住创建的UI
        _G.DzCreateFrameByTagName = HookUtil.hookResultNoThis(DzCreateFrameByTagName, hdl => {
            SolarReload.hookAddFrameHandles(hdl);
        });
        if (FrameAddModel) {
            _G.FrameAddModel = HookUtil.hookResultNoThis(FrameAddModel, hdl => {
                SolarReload.hookAddFrameHandles(hdl);
            });
        }
        //勾住创建的Unit
        let jassCreateUnit = CreateUnit;
        _G.CreateUnit = function (this: void, id: player, unitid: number | string, x: number, y: number, face: number): unit {
            let hdl = jassCreateUnit(id, unitid, x, y, face)
            SolarReload.unitHandle.push(hdl)
            //
            let userScripts: string[] = DebugVmUtil.getUserScriptRequireModNameByStack();
            for (let userScript of userScripts) {
                if (SolarReload.fileHandlesMap[userScript] == null) {
                    SolarReload.fileHandlesMap[userScript] = {}
                }
                SolarReload.fileHandlesMap[userScript].unitHandles = SolarReload.fileHandlesMap[userScript].unitHandles || [];
                SolarReload.fileHandlesMap[userScript].unitHandles.push(hdl);
            }
            return hdl;
        }
        //勾住创建的Item
        let jassCreateItem = CreateItem;
        _G.CreateItem = function (this: void, itemid: number | string, x: number, y: number): item {
            let hdl = jassCreateItem(itemid, x, y);
            SolarReload.itemHandle.push(hdl);
            //
            let userScripts: string[] = DebugVmUtil.getUserScriptRequireModNameByStack();
            for (let userScript of userScripts) {
                if (SolarReload.fileHandlesMap[userScript] == null) {
                    SolarReload.fileHandlesMap[userScript] = {}
                }
                SolarReload.fileHandlesMap[userScript].itemHandles = SolarReload.fileHandlesMap[userScript].itemHandles || [];
                SolarReload.fileHandlesMap[userScript].itemHandles.push(hdl);
            }
            return hdl;
        }

        ActorUtil.addAnyActorCreatedListener(actor => {
            //
            let userScripts: string[] = DebugVmUtil.getUserScriptRequireModNameByStack();
            for (let userScript of userScripts) {
                if (SolarReload.fileHandlesMap[userScript] == null) {
                    SolarReload.fileHandlesMap[userScript] = {}
                }
                SolarReload.fileHandlesMap[userScript].actors = SolarReload.fileHandlesMap[userScript].actors || [];
                SolarReload.fileHandlesMap[userScript].actors.push(actor);
            }
        })
    }

    static autoReload() {
        _G.scripts_lastModified = -1;
        PACKAGE.loaded["_SLA_temp"] = null
        try {
            require("_SLA_temp")
        } catch (e) {
        }
        _G.scripts_last_reload = _G.scripts_lastModified;
        let trigger = new Trigger();
        trigger.registerTimerEvent(0.5, true);
        trigger.addAction(() => {
            PACKAGE.loaded["_SLA_temp"] = null
            try {
                require("_SLA_temp")
            } catch (e) {
            }
            if (_G.scripts_lastModified > _G.scripts_last_reload) {
                _G.scripts_last_reload = _G.scripts_lastModified;
                if (time > 3000) {//3秒后才能开始自动更新
                    print("======自动更新======")
                    print("_G.scripts_lastModified=" + _G.scripts_lastModified)
                    print("_G.scripts_last_reload=" + _G.scripts_last_reload)
                    SolarReload.reload();
                }
            }
        });
    }

    static hookAddFrameHandles(hdl) {
        SolarReload.frameHandle.push(hdl)
        //
        let userScripts: string[] = DebugVmUtil.getUserScriptRequireModNameByStack();
        for (let userScript of userScripts) {
            if (SolarReload.fileHandlesMap[userScript] == null) {
                SolarReload.fileHandlesMap[userScript] = {}
            }
            SolarReload.fileHandlesMap[userScript].frameHandles = SolarReload.fileHandlesMap[userScript].frameHandles || [];
            SolarReload.fileHandlesMap[userScript].frameHandles.push(hdl);
        }
    }

    static reload() {
        _G.reloadCount++;
        let info = 'No.' + _G.reloadCount + ' [重新加载代码脚本]!' + _g_time;
        DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 60, info);
        print(info)
        //干掉lua已加载的脚本
        for (let loadedKey in PACKAGE.loaded) {
            //太阳的不需要热更新
            if (loadedKey && loadedKey.indexOf("solar.") >= 0) {
                continue
            }
            PACKAGE.loaded[loadedKey] = null;
        }
        se.clear()
        SingletonUtil.cache.clear()
        SingletonUtil._sl_cache = {}
        DataBase['dataBaseContext'] = {}
        //销毁已注册的数据
        for (let handleElement of SolarReload.TriggerHandle) {
            TriggerClearActions(handleElement)
            DisableTrigger(handleElement)
            DestroyTrigger(handleElement)
        }
        for (let handleElement of SolarReload.TimerHandle) {
            DestroyTimer(handleElement)
        }
        for (let handleElement of SolarReload.unitHandle) {
            RemoveUnit(handleElement)
        }
        for (let handleElement of SolarReload.itemHandle) {
            RemoveItem(handleElement)
        }
        for (let handleElement of SolarReload.frameHandle) {
            if (handleElement && handleElement > 0) {
                try {
                    DzDestroyFrame(handleElement)
                } catch (e) {
                    print("销毁Frame出错:" + handleElement + "=" + tostring(e))
                }
            }
        }
        SolarReload.TriggerHandle = []
        SolarReload.TimerHandle = []
        SolarReload.frameHandle = []
        require("App")
    }


}
