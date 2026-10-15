import ActorTypeUtil from "@/ActorTypeUtil";
import ObjectDataUtil from "@/ObjectDataUtil";

export default class ActorTypeWarpUtil {


    static warpUnitActorType(unitIdOrActorId: string): AppActorUnitType {
        let unitActorType: AppActorUnitType = ActorTypeUtil.getActorType(unitIdOrActorId);
        if (unitActorType == null) {
            unitActorType = {
                id: unitIdOrActorId,
                name: ObjectDataUtil.getUnitName(unitIdOrActorId),
                icon: ObjectDataUtil.getUnitArt(unitIdOrActorId),
                model: ObjectDataUtil.getUnitFile(unitIdOrActorId, true),
                describe: ObjectDataUtil.getUnitDataString(unitIdOrActorId, "Ubertip"),
                maxLife: ObjectDataUtil.getUnitDataNumber(unitIdOrActorId, "HP"),
                goldCost: ObjectDataUtil.getUnitGoldCost(unitIdOrActorId),
                lumberCost: ObjectDataUtil.getUnitDataNumber(unitIdOrActorId, "lumbercost"),
                foodCost: ObjectDataUtil.getUnitDataNumber(unitIdOrActorId, "fused"),
                buildTime: ObjectDataUtil.getUnitDataNumber(unitIdOrActorId, "bldtm"),
                modelScale: ObjectDataUtil.getUnitDataNumber(unitIdOrActorId, "modelScale"),
            };
        }
        return unitActorType;
    }
}