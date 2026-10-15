export default class FunctionDebug {

    private static is_init = false;
    // 会丢失null参数 这里不能放可以传null的参数的函数
    static hookDebugFunNames: string[] = [
        "DzFrameSetTexture", "UnitDamageTarget"
    ];

    static init() {
        if (FunctionDebug.is_init) {
            return
        }
        FunctionDebug.is_init = true;

        //
        let oldTriggerSleepAction = TriggerSleepAction;
        _G.TriggerSleepAction = function (this: void, timeout: number) {
            if (require("jass.runtime").sleep != true) {
                log.errorWithTraceBack("TriggerSleepAction等待函数在lua中不受支持，请使用计时器替换执行逻辑!")
            }

            oldTriggerSleepAction(timeout);
        }
        let oldTriggerWaitForSound = TriggerWaitForSound;
        _G.TriggerWaitForSound = function (this: void, s: sound, offset: number) {
            if (require("jass.runtime").sleep != true) {
                log.errorWithTraceBack("TriggerWaitForSound等待声音函数在lua中不受支持，请使用计时器替换执行逻辑!")
            }
            oldTriggerWaitForSound(s, offset);
        }
        let oldTriggerSyncReady = TriggerSyncReady;
        _G.TriggerSyncReady = function (this: void) {
            if (require("jass.runtime").sleep != true) {
                log.errorWithTraceBack("TriggerSyncReady等待函数在lua中不受支持，请使用计时器替换执行逻辑!")
            }
            oldTriggerSyncReady();
        }
        /**
         * 打印入参值
         */
        //one case
        for (let funName of FunctionDebug.hookDebugFunNames) {
            let oldFun: (this: void, ...args) => any = _G[funName];
            if (oldFun == null) {
                print("FunctionDebug:函数不存在:" + funName)
                continue;
            }
            _G[funName] = function (this: void, ...args) {
                try {
                    //... 会丢失null参数
                    return oldFun(...args)
                } catch (e) {
                    print(e)
                    log.errorWithTraceBack("FunctionDebug:" + funName)
                    print("FunctionDebug[" + funName + "]调用方法传入的参数值:");
                    print_r(args)
                    throw e
                }
            }
        }

        // SyncSelections
    }


}