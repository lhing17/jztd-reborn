import ActorTypeUtil from "@/ActorTypeUtil";
import LangUtil from "@/LangUtil";
import PlayerUtil from "@/PlayerUtil";

/**
 * xlsx 配置的数据可以在这里进行校验 以提前让策划知道哪里配错了
 */
export default class DebugConfigUtil {

    static noIdInfo = {};


    static checkBug() {
        DebugConfigUtil.noIdInfo = {};
        //检测演员类型id配置错误
        ActorTypeUtil.forAllActorTypes(actorType => {
            DebugConfigUtil.checkIdMap(actorType.id + "掉落", actorType.bountyItems)
            DebugConfigUtil.checkIdMap(actorType.id + "死亡诞生", actorType.afterDeathBirthUnits)
            DebugConfigUtil.checkIdList(actorType.id + "售卖物品", actorType.sellItems)
            DebugConfigUtil.checkIdList(actorType.id + "技能", actorType.abilities)
            DebugConfigUtil.checkIdList(actorType.id + "建造列表", actorType.builds)
            DebugConfigUtil.checkIdList(actorType.id + "升级", actorType.upgradeUnits)
            DebugConfigUtil.checkIdList(actorType.id + "训练", actorType.trainUnits)
        });
        se.emit("checkBug");
        DebugConfigUtil.printInfo();
    }

    static printInfo() {
        let info = "";
        LangUtil.forEachSort(DebugConfigUtil.noIdInfo, (k, v) => {
            info += v + "引用的[" + k + "]类型不存在!|n\r\n"
        });
        if (info.length > 0) {
            PlayerUtil.message("|cffff0000发现bug了!请查看报错日志!")
            print(info)
            log.errorWithTraceBack(info);
        } else {
            PlayerUtil.message("|cff00ff00排查bug完毕!未发现bug!")
        }
    }


    static checkId(title: string, id: string) {
        if (id == null) {
            return
        }
        if (!DebugConfigUtil.hasId(id)) {
            DebugConfigUtil.noIdInfo[id] = title;
        }
    }

    static checkIdList(title: string, ids: string[]) {
        if (ids == null) {
            return
        }
        for (let id of ids) {
            if (!DebugConfigUtil.hasId(id)) {
                DebugConfigUtil.noIdInfo[id] = title;
                return;
            }
        }
    }

    static checkIdMap(title: string, idMap: { [unitIdOrActorId: string]: any }) {
        if (idMap == null) {
            return
        }
        for (let id in idMap) {
            if (!DebugConfigUtil.hasId(id)) {
                DebugConfigUtil.noIdInfo[id] = title;
                return;
            }
        }
    }

    static hasId(id: string): boolean {
        if (id == null) {
            return false;
        }
        if (ActorTypeUtil.hasActorType(id)) {
            return true;
        }
        if (_g_objs.unit) {
            if (
                _g_objs.unit[id]
                || _g_objs.item[id]
                || _g_objs.ability[id]
            ) {
                return true;
            }
        }

        return false;
    }


}