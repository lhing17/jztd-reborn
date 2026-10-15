import ActorBuffUtil from "@/util/ActorBuffUtil";
import ActorTypeUtil from "@/util/ActorTypeUtil";

/**
 * 通用的buff
 */
export default class CommonBuffUtil {
    static BuffId_击晕 = "_sl_:CommonBuff:击晕";
    static BuffId_无敌 = "_sl_:CommonBuff:无敌";
    private static _sl_init = true;

    private static _sl_checkInit() {
        if (!CommonBuffUtil._sl_init) {
            return;
        }
        CommonBuffUtil._sl_init = false;
        ActorTypeUtil.registerActorType({
            id: CommonBuffUtil.BuffId_击晕,
            name: "被击晕的",
            describe: "该单位不能移动。",
            icon: "ReplaceableTextures\\CommandButtons\\BTNStun.blp",
            modelAttach: "Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget.mdx",
            modelAttachTarget: "overhead",
            dur: 1,
            onCreated: (actor) => {
                if (!IsHandle(actor.unit)) {
                    return
                }
                EXPauseUnit(actor.unit, true);
            },
            onDestroy: (actor) => {
                if (!IsHandle(actor.unit)) {
                    return
                }
                EXPauseUnit(actor.unit, false);
            }
        } as AppActorBuffType)

        ActorTypeUtil.registerActorType({
            id: CommonBuffUtil.BuffId_无敌,
            name: "无敌的",
            describe: "该单位是无敌的，所以任何的攻击和魔法都对其无效。",
            icon: "ReplaceableTextures\\CommandButtons\\BTNDivineIntervention.blp",
            modelAttach: "Abilities\\Spells\\Human\\DivineShield\\DivineShieldTarget.mdl",
            modelAttachTarget: "origin",
            // levelDurMode: true,
            dur: 1,
            onCreated: (actor) => {
                if (!IsHandle(actor.unit)) {
                    return
                }
                SetUnitInvulnerable(actor.unit, true);
            },
            onDestroy: (actor) => {
                if (!IsHandle(actor.unit)) {
                    return
                }
                SetUnitInvulnerable(actor.unit, false);
            }
        } as AppActorBuffType)
    }

    /**
     * 击晕指定单位
     * @param unitHandle
     * @param dur
     */
    static pauseUnit(unitHandle: unit, dur: number) {
        CommonBuffUtil._sl_checkInit();
        let actorBuff = ActorBuffUtil.getUnitActorBuff(unitHandle, CommonBuffUtil.BuffId_击晕)
        if (actorBuff == null) {
            actorBuff = ActorBuffUtil.addActorBuff(unitHandle, CommonBuffUtil.BuffId_击晕)
            actorBuff.setDur(dur);
            return
        } else {
            let remainingTime = actorBuff.getRemainingTime()
            if (remainingTime >= dur) {
                print("已经有其他更长的眩晕时间了");
                return
            }
            actorBuff = ActorBuffUtil.addActorBuff(unitHandle, CommonBuffUtil.BuffId_击晕)
            actorBuff.setDur(dur);
        }
    }

    /**
     * 添加无敌
     * @param unitHandle
     * @param dur
     */
    static addInvulnerableIfNot(unitHandle: unit, dur: number) {
        CommonBuffUtil._sl_checkInit();
        let 原生无敌buff = GetUnitAbilityLevel(unitHandle, "Avul")
        if (原生无敌buff == 0) {
            let 无敌buff = ActorBuffUtil.addActorBuff(unitHandle, CommonBuffUtil.BuffId_无敌)
            无敌buff.setDur(dur);
            return
        }
        let actorBuff = ActorBuffUtil.getUnitActorBuff(unitHandle, CommonBuffUtil.BuffId_无敌)
        if (actorBuff == null) {
            print("通用无敌不与无敌技能同时存在")
            return
        }

        let remainingTime = actorBuff.getRemainingTime()
        if (remainingTime >= dur) {
            print("通用无敌buff剩余时间大于指定无敌时间")
            return
        }
        actorBuff = ActorBuffUtil.addActorBuff(unitHandle, CommonBuffUtil.BuffId_无敌)
        actorBuff.setDur(dur);
    }

}
