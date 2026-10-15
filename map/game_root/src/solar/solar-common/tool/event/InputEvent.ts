import {MapPlayer} from "@/player";
import DataBase from "@/DataBase";
import AttributeUtil from "@/AttributeUtil";

export default class InputEvent {


    static instance: InputEvent = new InputEvent();

    protected constructor() {

    }

 

    /**
     * 触发玩家
     */
    get triggerPlayer(): player {
        //应该是本地玩家
        return GetLocalPlayer();
    }

    /**
     * 触发玩家对象
     */
    get triggerPlayerObj(): MapPlayer {
        return MapPlayer.fromHandle(GetLocalPlayer());
    }

    /**
     * 触发玩家id
     */
    get triggerPlayerId(): number {
        return GetPlayerId(GetLocalPlayer());
    }

    /**
     * 触发玩家名字
     */
    get triggerPlayerName(): string {
        return GetPlayerName(GetLocalPlayer());
    }


    /**
     * 触发玩家 SolarData
     */
    get triggerPlayerSolarData(): AppUnitData {
        return DataBase.getPlayerSolarData(GetLocalPlayer(), false);
    }

    /**
     * 触发玩家 Attribute
     */
    get triggerPlayerAttribute(): AppAttribute {
        return AttributeUtil.getPlayerAttribute(GetLocalPlayer(), false);
    }

}