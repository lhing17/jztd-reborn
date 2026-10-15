import ActorAbilityUtil from "@/ActorAbilityUtil";
import SingletonUtil from "@/SingletonUtil";

export default class SolarActorAbilityState {
    constructor() {
        if (SingletonUtil.notFirstTime(SolarActorAbilityState)) {
            print("不能重复new SolarActorAbilityState()")
            return;
        }
        se.onUnitSpellCast(e => {
            let actor = ActorAbilityUtil.getActorAbilityByBaseId(e.spellAbilityIdStr, e.trigUnit, true);
            if (actor) {
                if (actor.isPassive() || actor.isDisable()) {
                    //这里发布停止只是不会进入cd 可能还是会进入发动魔法效果
                    IssueImmediateOrder(e.trigUnit, "stop")
                    return
                }
            }
        });
        se.onUnitSpellEffect(e => {
            //物品也是继承的技能 所以这里点击物品 也会走这个逻辑
            let actor = ActorAbilityUtil.getActorAbilityByBaseId(e.spellAbilityIdStr, e.trigUnit, true);
            if (actor) {
                if (actor.isPassive() || actor.isDisable()) {
                    return
                }
                let targetUnit = GetSpellTargetUnit();
                let x = 0;
                let y = 0;
                if (IsHandle(targetUnit)) {
                    x = GetUnitX(targetUnit)
                    y = GetUnitY(targetUnit)
                } else {
                    x = GetSpellTargetX()
                    y = GetSpellTargetY()
                }
                actor.action(x, y, targetUnit);
            }
        });
    }
}