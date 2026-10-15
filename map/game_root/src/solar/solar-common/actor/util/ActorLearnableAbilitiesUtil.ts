import ActorTypeUtil from "@/ActorTypeUtil";
import ActorAbilityUtil from "@/ActorAbilityUtil";
import Cache from "@/Cache";
import Actor from "@/Actor";
import ActorAbility from "@/ActorAbility";
import PlayerUtil from "@/PlayerUtil";
import ArrayUtil from "@/ArrayUtil";
import KeyCode from "@/KeyCode";

export default class ActorLearnableAbilitiesUtil {
    private static _sl_isInitialized = false
    static learnableAbilitiesMainID = "演员英雄学习技能";
    /** 学习技能加号的模拟的魔法书的演员类型 */
    static learnableAbilitiesMainActorType: AppActorAbilityType = null;
    private static cache = new Cache();
    static _sl_baseLearnableAbilityClass = "太阳演员技能学习"

    static _sl_init() {
        if (ActorLearnableAbilitiesUtil._sl_isInitialized) {
            return
        }
        ActorLearnableAbilitiesUtil._sl_isInitialized = true;
        //hotKey 设置后貌似无效
        let actorType = ActorTypeUtil.registerActorType({
            id: ActorLearnableAbilitiesUtil.learnableAbilitiesMainID,
            templateType: "魔法书",
            name: "英雄技能",
            // hotKey: "O",
            describe: "打开技能菜单，以便让你将点数来分配在英雄的各个技能上。",
            icon: "ReplaceableTextures\\CommandButtons\\BTNSkillz.blp",
            x: 3,
            y: 1,
        });
        actorType.onUnitLevelChange = (actor: Actor, delta: number) => {
            actor.numberOverlay = (actor.numberOverlay || 0) + 1;
            ActorLearnableAbilitiesUtil._sl_updateLearnableAbilitysDisable(actor as ActorAbility);
        }
        ActorLearnableAbilitiesUtil.learnableAbilitiesMainActorType = actorType;
    }

    /**
     * 设置演员单位可学习技能列表
     * @param unit
     * @param learnableAbilities 可学习的技能演员类型ID数组
     * @param initLearnPoint 初始学习点数量，默认为1
     */
    static setLearnableAbilities2unit(unit: unit, learnableAbilities: string[], initLearnPoint: number = 1): ActorAbility {
        ActorLearnableAbilitiesUtil._sl_init();
        let actorAbility = ActorAbilityUtil.createActorAbility(ActorLearnableAbilitiesUtil.learnableAbilitiesMainID, unit);
        actorAbility.numberOverlay = initLearnPoint;

        if (learnableAbilities && learnableAbilities.length > 0) {
            let learnableAbilityTypeIds = [];
            for (let i = 0; i < learnableAbilities.length; i++) {
                let abilityId = learnableAbilities[i];
                let learnableAbilityType = ActorLearnableAbilitiesUtil.warpActorAbility2LearnableAbility(abilityId);
                if (learnableAbilityType) {
                    learnableAbilityTypeIds.push(learnableAbilityType.id);
                }
            }
            actorAbility.setSpellList(learnableAbilityTypeIds);
            for (let learnActorAbility of actorAbility.spellListActorAbilitys) {
                learnActorAbility._sl_learnBookAbility = actorAbility;
            }
            ActorLearnableAbilitiesUtil._sl_updateLearnableAbilitysDisable(actorAbility);
        }

        return actorAbility;
    }

    /**
     * 给单位增加N个学习点
     * @param unit
     * @param count 学习点数量，默认为1
     */
    static addLearnPoint(unit: unit, count: number = 1) {
        let learnBook = ActorAbilityUtil.getUnitActorAbility(unit, ActorLearnableAbilitiesUtil.learnableAbilitiesMainID);
        if (learnBook) {
            learnBook.numberOverlay = (learnBook.numberOverlay || 0) + count;
            ActorLearnableAbilitiesUtil._sl_updateLearnableAbilitysDisable(learnBook);
        }
    }

    /**
     * 获取单位当前剩余学习点
     * @param unit
     */
    static getLearnPoint(unit: unit): number {
        let learnBook = ActorAbilityUtil.getUnitActorAbility(unit, ActorLearnableAbilitiesUtil.learnableAbilitiesMainID);
        if (learnBook) {
            return learnBook.numberOverlay || 0;
        }
        return 0;
    }

    /***
     * 将演员技能类型 包装注册一个对应的学习演员技能类型 在单位释放这个技能时会模拟购买物品学习技能的逻辑
     * @param actorAbilityTypeId
     * 返回包装后的技学习演员技能类型
     */
    static warpActorAbility2LearnableAbility(actorAbilityTypeId: string): AppActorAbilityType {
        return ActorLearnableAbilitiesUtil.cache.get("warpActorAbility2LearnableAbility:" + actorAbilityTypeId, () => {
            let actorAbilityType: AppActorAbilityType = ActorTypeUtil.getActorType(actorAbilityTypeId);
            if (actorAbilityType == null) {
                log.errorWithTraceBack("不存在此演员技能类型:" + actorAbilityTypeId)
                return null;
            }
            let targetLevelMax = actorAbilityType.levelMax != null ? actorAbilityType.levelMax : 1;

            let learnableAbilityType: AppActorAbilityType = {
                id: "_sl_baseLearnableAbility:" + actorAbilityTypeId,
                class: ActorLearnableAbilitiesUtil._sl_baseLearnableAbilityClass,
                name: "学习:" + (actorAbilityType.name || actorAbilityType.id),
                icon: actorAbilityType.icon,
                disable: actorAbilityType.disable,
                hide: actorAbilityType.hide,
                requiredTip: actorAbilityType.requiredTip,
                requiredLevel: actorAbilityType.requiredLevel,
                levelMax: targetLevelMax,
                describe: actorAbilityType.describe,
                goldCost: actorAbilityType.goldCost,
                lumberCost: actorAbilityType.lumberCost,
                x: actorAbilityType.x,
                y: actorAbilityType.y,
                manaCost: 0,
                maxCd: actorAbilityType.sellCd || 0.2,
                actorAbilityTypeId: actorAbilityTypeId
            }
            learnableAbilityType.onAction = (actor, x, y, targetUnit) => {
                ActorLearnableAbilitiesUtil._sl_doLearn(actor as ActorAbility, learnableAbilityType);
            }
            ActorTypeUtil.registerActorType(learnableAbilityType)
            return learnableAbilityType;
        });
    }

    /**
     * 刷新学习魔法书内所有子技能的禁用状态
     * 判断条件：学习点是否足够、单位等级是否达标、资源是否足够、技能是否已学满
     */
    private static _sl_updateLearnableAbilitysDisable(learnBookAbility: ActorAbility) {
        if (learnBookAbility == null || !learnBookAbility.spellListActorAbilitys) {
            return;
        }
        let learnPoints = learnBookAbility.numberOverlay || 0;
        let unit = learnBookAbility.unit;
        if (!IsHandle(unit)) {
            for (let learnActorAbility of learnBookAbility.spellListActorAbilitys) {
                learnActorAbility.setDisable(true);
            }
            return;
        }
        let needClose = false;
        if (learnPoints < 1) {
            if (learnBookAbility.numberOverlay != null) {
                needClose = true;
            }
            learnBookAbility.numberOverlay = null;
        } else {
            learnBookAbility.numberOverlay = learnPoints;
        }
        if (needClose) {
            DzForceUiKeyboard(learnBookAbility.unitOwner, KeyCode.VK_ESCAPE, 1)
            // IssueImmediateOrder(unit, "cancel");
        }
        let unitLevel = GetUnitLevel(unit);
        let player = GetOwningPlayer(unit);

        for (let i = learnBookAbility.spellListActorAbilitys.length - 1; i >= 0; i--) {
            let learnActorAbility = learnBookAbility.spellListActorAbilitys[i];
            let learnableAbilityType = learnActorAbility.actorType as AppActorAbilityType;
            let targetAbilityTypeId = learnableAbilityType.actorAbilityTypeId;
            let targetActorAbility = ActorAbilityUtil.getUnitActorAbility(unit, targetAbilityTypeId);
            let targetLevelMax = learnableAbilityType.levelMax || 1;
            let isMaxLevel = targetActorAbility != null && targetLevelMax != -1 && targetActorAbility.level >= targetLevelMax;

            if (isMaxLevel) {
                learnActorAbility.destroy();
                ArrayUtil.removeElementByIndex(learnBookAbility.spellListActorAbilitys, i);
                continue;
            }

            let tipParts: string[] = [];
            let isDisable = false;
            if (learnPoints < 1) {
                isDisable = true;
                // tipParts.push("学习点不足");
            }
            if (learnableAbilityType.requiredLevel && unitLevel < learnableAbilityType.requiredLevel) {
                isDisable = true;
                let needLv = learnableAbilityType.requiredLevel - unitLevel;
                tipParts.push("英雄等级:  " + learnableAbilityType.requiredLevel);
            }
            learnActorAbility.setDisable(isDisable);
            if (isDisable && tipParts.length > 0) {
                learnActorAbility.set("requiredTip", tipParts.join("|n"));
            } else if (!isDisable) {
                learnActorAbility.set("requiredTip", null);
            }
        }
        if (learnBookAbility.spellListActorAbilitys.length == 0) {
            learnBookAbility.destroy();
        }
    }

    /**
     * 执行学习逻辑
     */
    private static _sl_doLearn(learnActorAbility: ActorAbility, learnableAbilityType: AppActorAbilityType) {
        let learnBook: ActorAbility = learnActorAbility._sl_learnBookAbility;
        if (learnBook == null) {
            return;
        }
        let unit = learnBook.unit;
        if (!IsHandle(unit)) {
            return;
        }
        let player = GetOwningPlayer(unit);

        if ((learnBook.numberOverlay || 0) < 1) {
            PlayerUtil.message("|cffff0000学习点不足！", 10, player);
            return;
        }

        let unitLevel = GetUnitLevel(unit);
        if (learnableAbilityType.requiredLevel && unitLevel < learnableAbilityType.requiredLevel) {
            let needLv = learnableAbilityType.requiredLevel - unitLevel;
            PlayerUtil.message("|cffff0000需要等级 " + learnableAbilityType.requiredLevel + "（还缺 " + needLv + " 级）", 10, player);
            return;
        }

        let targetAbilityTypeId = learnableAbilityType.actorAbilityTypeId;
        let targetActorAbility = ActorAbilityUtil.getUnitActorAbility(unit, targetAbilityTypeId);
        let targetLevelMax = learnableAbilityType.levelMax || 1;

        if (targetActorAbility != null && targetLevelMax != -1 && targetActorAbility.level >= targetLevelMax) {
            return;
        }

        if (!PlayerUtil.costEnoughState(player, learnableAbilityType.goldCost, learnableAbilityType.lumberCost)) {
            PlayerUtil.message("|cffff0000资源不足，无法学习！", 10, player);
            return;
        }

        learnBook.numberOverlay--;

        if (targetActorAbility == null) {
            let actorAbility = ActorAbilityUtil.createActorAbility(targetAbilityTypeId, unit);
            PlayerUtil.message("|cff00ff00学习技能:" + actorAbility.getName(), 10, player);
        } else {
            targetActorAbility.level++;
            PlayerUtil.message("|cff00ff00升级技能:" + targetActorAbility.getName() + " -> Lv." + targetActorAbility.level, 10, player);
        }

        ActorLearnableAbilitiesUtil._sl_updateLearnableAbilitysDisable(learnBook);
    }

}
