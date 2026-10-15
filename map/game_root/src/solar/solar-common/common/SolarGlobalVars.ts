import DataBase from "@/DataBase";
import SolarFourCC from "@/SolarFourCC";
import SolarEvent from "@/SolarEvent";
import SupportReload from "@/SupportReload";
import ObjectTemplateUtil from "@/ObjectTemplateUtil";


export default class SolarGlobalVars {
    static isInit: boolean = false;
    private static justInvoke: boolean = SolarGlobalVars.init0();

    //要调一个函数 以免import GlobalVars 被编译器取消了
    /**
     * @param debug 是否调试模式
     * @param egp_enable 是否启用太阳编辑器游戏插件  (是否打开游戏左上角太阳Logo按钮) 平台测试异步时最好关闭此项 以免因版本不一致导致异步
     */
    static init(debug: boolean = isDebug, egp_enable = debug) {
        SolarGlobalVars.printLogo();
        se.onPlayerChat("-sl-v", () => {
            DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 10, "当前游戏的太阳TS框架版本号为:" + _sl_version);
            try {
                require("_SLA_temp")
                let _SL_version_info = "编译版本号:" + tostring(_G['_SL_version_info']);
                DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 10, _SL_version_info);
            } catch (e) {
                print(e)
            }
        });
    }


    private static init0(): boolean {
        if (SolarGlobalVars.isInit) {
            return true;
        }
        SolarGlobalVars.isInit = true;
        //@ts-ignore
        _G._sl_funs = {}
        _sl_funs.borrowTemplate = ObjectTemplateUtil.borrowTemplate;
        _sl_funs.returnTemplate = ObjectTemplateUtil.returnTemplate;
        _G.FourCC = SolarFourCC.string2id;
        _G.string2id = SolarFourCC.string2id;
        _G.id2string = SolarFourCC.id2string;
        _G.asyncExec = function (asyncPlayer: player, fun: () => void) {
            if (asyncPlayer == GetLocalPlayer()) {
                let old = isAsync
                isAsync = true;
                fun();
                isAsync = old;
            }
        }
        if (isSolarIndieGame == null) {
            //太阳独立游戏会在lua引擎启动时赋值全局变量isSolarIndieGame为true
            isSolarIndieGame = false;
        }
        // _sl_vars.
        SolarGlobalVars.initBaseVars();
        return true;
    }


    /**
     * 初始化Lua环境
     */
    private static initBaseVars(): void {
        gameName = "太阳TS地图";
        _sl_version = 6.62;
        isBigAttributeMode = false;
        handleReuseMinTime = 2.99;
        isAsync = false;
        if (settings == null) {
            settings = {fontPath: "Fonts\\dfst-m3u.ttf"};
        }
        if (gv == null) {
            gv = {};
        }
        if (functions == null) {
            functions = {};
        }
        if (globals == null) {
            globals = _G;
        }
        db = DataBase;
        sd = DataBase.sd;
        _G.deleteKey = function (obj: any, key: number | string | any): void {
            // delete obj[key]
            obj[key] = null;
        }
        _G.IsHandle = function (h: handle | number) {
            if (h == null || h == 0) {
                return false
            }
            return true;
        }
        se = new SolarEvent()
        // @ts-ignore
        _G.SupportReload = SupportReload
    }


    private static printLogo() {

        print(SolarGlobalVars.logoText)
        if (isSolarIndieGame) {
            print("太阳TS框架版本(独立游戏):" + _sl_version)
        } else {
            print("太阳TS框架版本:" + _sl_version)
        }


    }


    static logoText =
        "\n     ________      ________     ___          ________     ________\n" +
        "    |\\   ____\\    |\\   __  \\   |\\  \\        |\\   __  \\   |\\   __  \\\n" +
        "    \\ \\  \\___|_   \\ \\  \\|\\  \\  \\ \\  \\       \\ \\  \\|\\  \\  \\ \\  \\|\\  \\\n" +
        "     \\ \\_____  \\   \\ \\  \\\\\\  \\  \\ \\  \\       \\ \\   __  \\  \\ \\   _  _\\\n" +
        "      \\|____|\\  \\   \\ \\  \\\\\\  \\  \\ \\  \\       \\ \\  \\ \\  \\  \\ \\  \\\\  \\|\n" +
        "        ____\\_\\  \\   \\ \\  \\\\\\  \\  \\ \\  \\____   \\ \\  \\ \\  \\  \\ \\  \\\\  \\\n" +
        "       |\\_________\\   \\ \\_______\\  \\ \\_______\\  \\ \\__\\ \\__\\  \\ \\__\\\\ _\\\n" +
        "       \\|_________|    \\|_______|   \\|_______|   \\|__|\\|__|   \\|__|\\|__|\n"


}


