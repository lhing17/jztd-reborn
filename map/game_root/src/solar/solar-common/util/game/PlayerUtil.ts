/** @noSelf **/

import SyncUtil from "../net/SyncUtil";
import BaseUtil from "@/BaseUtil";
import {MapPlayer} from "@/player";
import DataBase from "@/DataBase";

/**
 * 玩家工具
 */
export default class PlayerUtil {


    /**
     * 设置玩家主控英雄
     */
    static setHero(player: player, hero: unit) {
        DataBase.getPlayerSolarData(player, true).hero = hero;
    }


    /**
     * 获取玩家主控英雄
     */
    static getHero(player: player): unit {
        return DataBase.getPlayerSolarData(player, false)?.hero;
    }

    /**
     * 获取所有玩家英雄的最高等级
     */
    static getAllPlayerHeroMaxLv(): number {
        let nowHerosMaxLv = -1;
        PlayerUtil.forPlayingPlayers(player => {
            let hero = PlayerUtil.getHero(player);
            if (IsHandle(hero)) {
                let lv = GetHeroLevel(hero);
                if (lv > nowHerosMaxLv) {
                    nowHerosMaxLv = lv;
                }
            }
        });
        return nowHerosMaxLv;
    }

    /**
     * 获取所有玩家英雄的最小等级
     */
    static getAllPlayerHeroMinLv(): number {
        let nowHerosMinLv = 21_0000_0000;
        PlayerUtil.forPlayingPlayers(player => {
            let hero = PlayerUtil.getHero(player);
            if (IsHandle(hero)) {
                let lv = GetHeroLevel(hero);
                if (lv < nowHerosMinLv) {
                    nowHerosMinLv = lv;
                }
            }
        });
        if (nowHerosMinLv == 21_0000_0000) {
            return null;
        }
        return nowHerosMinLv;
    }

    /**
     * 遍历所有正在游戏玩家(包括电脑)
     * @param callback
     */
    static forPlayingPlayers(callback: (player: player) => void): void {
        for (let i = 0; i < bj_MAX_PLAYER_SLOTS; i++) {
            let tempPlayer = Player(i);
            if (GetPlayerSlotState(tempPlayer) == PLAYER_SLOT_STATE_PLAYING) {
                callback(tempPlayer)
            }
        }
    }

    /**
     * 遍历在线用户玩家
     * @param callback
     */
    static forUsers(callback: (player: player) => void): void {
        for (let i = 0; i < bj_MAX_PLAYER_SLOTS; i++) {
            let tempPlayer = Player(i);
            if (GetPlayerController(tempPlayer) == MAP_CONTROL_USER && GetPlayerSlotState(tempPlayer) == PLAYER_SLOT_STATE_PLAYING) {
                callback(tempPlayer)
            }
        }
    }

    /**
     * 显示文本
     * @param player
     * @param text
     * @param duration
     * @param x
     * @param y
     * @deprecated see message
     */
    static text(player: player, text: string, duration = 10, x: number = 0, y: number = 0) {
        DisplayTimedTextToPlayer(player, x, y, duration,
            text)
    }

    /**
     * 显示文本
     * @param player
     * @param text
     * @param duration
     * @param x
     * @param y
     */
    static message(text: string, duration = 10, player: player = GetLocalPlayer(), x: number = 0, y: number = 0) {
        DisplayTimedTextToPlayer(player, x, y, duration, text)
    }


    /**
     * 第一个在线用户玩家
     * 通常用作主机玩家选择难度
     */
    static firstOfUsers(): player {
        for (let i = 0; i < bj_MAX_PLAYER_SLOTS; i++) {
            let tempPlayer = Player(i);
            if (GetPlayerController(tempPlayer) == MAP_CONTROL_USER && GetPlayerSlotState(tempPlayer) == PLAYER_SLOT_STATE_PLAYING) {
                return tempPlayer;
            }
        }
    }


    /**
     * 添加金币
     * @param player
     * @param value
     */
    static addGoldState(player: player, value: number) {
        PlayerUtil.addState(player, PLAYER_STATE_RESOURCE_GOLD, value)
    }

    /**
     * 添加木材
     * @param player
     * @param value
     */
    static addLumberState(player: player, value: number) {
        PlayerUtil.addState(player, PLAYER_STATE_RESOURCE_LUMBER, value)
    }

    /**
     * 添加可用人口
     * @param player
     * @param value
     */
    static addFoodCapState(player: player, value: number) {
        PlayerUtil.addState(player, PLAYER_STATE_RESOURCE_FOOD_CAP, value)
    }

    /**
     * 添加已用人口
     * @param player
     * @param value
     */
    static addFoodUsedState(player: player, value: number) {
        PlayerUtil.addState(player, PLAYER_STATE_RESOURCE_FOOD_USED, value)
    }

    /**
     * 添加属性数值
     * @param player
     * @param whichPlayerState
     * @param value
     */
    static addState(player: player, whichPlayerState: playerstate, value: number) {
        SetPlayerState(player, whichPlayerState, GetPlayerState(player, whichPlayerState) + value);
    }


    /**
     * 获取玩家起始位置
     * @param player
     */
    static getStartLoc(player: player): Vector {
        let loc = GetPlayerStartLocationLoc(player);
        let v = {x: GetLocationX(loc), y: GetLocationY(loc)}
        RemoveLocation(loc);
        return v;
    }

    /**
     * 获取金币
     * @param player
     */
    static getGold(player: player): number {
        return GetPlayerState(player, PLAYER_STATE_RESOURCE_GOLD)
    }

    /**
     * 设置金币
     * @param player
     */
    static setGold(player: player, gold: number): void {
        SetPlayerState(player, PLAYER_STATE_RESOURCE_GOLD, gold)
    }

    /**
     * 获取木材
     * @param player
     */
    static getLumber(player: player): number {
        return GetPlayerState(player, PLAYER_STATE_RESOURCE_LUMBER)
    }

    /**
     * 设置金币
     * @param player
     * @param lumber
     */
    static setLumber(player: player, lumber: number): void {
        SetPlayerState(player, PLAYER_STATE_RESOURCE_LUMBER, lumber)
    }

    /**
     * 获取剩余可用人口
     * @param player
     */
    static getFoodCapLeft(player: player): number {
        return GetPlayerState(player, PLAYER_STATE_RESOURCE_FOOD_CAP) - GetPlayerState(player, PLAYER_STATE_RESOURCE_FOOD_USED)
    }

    /**
     * 获取最大可用人口
     * @param player
     */
    static getFoodCap(player: player): number {
        return GetPlayerState(player, PLAYER_STATE_RESOURCE_FOOD_CAP)
    }


    /**
     * 设置可用人口
     * @param player
     * @param foodCap
     */
    static setFoodCap(player: player, foodCap: number): void {
        SetPlayerState(player, PLAYER_STATE_RESOURCE_FOOD_CAP, foodCap)
    }

    /**
     * 获取已用人口
     * @param player
     */
    static getFoodUsed(player: player): number {
        return GetPlayerState(player, PLAYER_STATE_RESOURCE_FOOD_USED)
    }


    /**
     * 设置已用人口
     * （tips：已有人口过大会导致占用人口的英雄不能复活）
     * @param player
     * @param foodUsed
     */
    static setFoodUsed(player: player, foodUsed: number): void {
        SetPlayerState(player, PLAYER_STATE_RESOURCE_FOOD_USED, foodUsed)
    }


    /**
     * 添加杀敌数
     * @param player
     * @param add
     */
    static addKillCount(player: player, add: number) {
        let playerSolarData = DataBase.getPlayerSolarData(player, true);
        playerSolarData.killCount = (playerSolarData.killCount || 0) + add;
    }

    /**
     * 是否拥有足够的资源
     * @param player
     * @param gold
     * @param lumber
     * @param killCount 杀敌数
     */
    static hasEnoughState(player: player, gold: number, lumber?: number, killCount?: number): boolean {
        if (gold && gold > 0 && GetPlayerState(player, PLAYER_STATE_RESOURCE_GOLD) < gold) {
            return false;
        }
        if (lumber && lumber > 0 && GetPlayerState(player, PLAYER_STATE_RESOURCE_LUMBER) < lumber) {
            return false;
        }
        if (killCount && killCount > 0) {
            let hk = DataBase.getPlayerSolarData(player, false)?.killCount || 0
            if (hk < killCount) {
                return false;
            }
        }
        return true;
    }

    /**
     * 是否拥有足够的资源 并消耗成功
     * @param player
     * @param gold
     * @param lumber
     * @param killCount
     */
    static costEnoughState(player: player, gold: number, lumber?: number, killCount?: number): boolean {
        if (gold && gold > 0 && GetPlayerState(player, PLAYER_STATE_RESOURCE_GOLD) < gold) {
            return false;
        }
        if (lumber && lumber > 0 && GetPlayerState(player, PLAYER_STATE_RESOURCE_LUMBER) < lumber) {
            return false;
        }
        if (killCount && killCount > 0) {
            let hk = DataBase.getPlayerSolarData(player, false)?.killCount || 0
            if (hk < killCount) {
                return false;
            }
        }
        if (gold && gold > 0) {
            PlayerUtil.addGoldState(player, -gold)
        }
        if (lumber && lumber > 0) {
            PlayerUtil.addLumberState(player, -lumber)
        }
        if (killCount && killCount > 0) {
            let playerSolarData = DataBase.getPlayerSolarData(player);
            playerSolarData.killCount = playerSolarData.killCount - killCount;
        }
        return true;
    }


    /**
     * 是否是在线用户玩家
     */
    static isOnlineUser(pid: number): boolean {
        return GetPlayerController(Player(pid)) == MAP_CONTROL_USER && GetPlayerSlotState(Player(pid)) == PLAYER_SLOT_STATE_PLAYING
    }

    /**
     * 是否是用户玩家
     */
    static isUser(player: player): boolean {
        return GetPlayerController(player) == MAP_CONTROL_USER
    }

    /**
     * 是否是电脑玩家
     */
    static isComputer(player: player): boolean {
        return GetPlayerController(player) == MAP_CONTROL_COMPUTER
    }


    /**
     * 是否全部拥有这些单位类型 (比如判断羁绊单位)
     * 死亡的英雄 也会算进去
     * @param player
     * @param unitIds
     */
    static hasAllUnitTypes(player: player, unitIds: string[]) {
        for (let unitId of unitIds) {
            if (GetPlayerTechCount(player, unitId, false) < 1) {
                return false;
            }
        }
        return true;
    }

    /**
     * 是否全部拥有这些单位类型中的其中一个 (比如判断羁绊单位)
     * @param player
     * @param unitIds
     */
    static hasUnitType(player: player, unitIds: string[]) {
        for (let unitId of unitIds) {
            if (GetPlayerTechCount(player, unitId, false) > 0) {
                return true;
            }
        }
        return false;
    }

    /**
     * 与中立敌对联盟
     * (示例:中立怪物不需要打敌对电脑玩家的进攻怪)
     * @param playerIds
     */
    static allianceWithNeutralAggressive(...playerIds: number[]) {
        let neutralAggressivePlayer = Player(PLAYER_NEUTRAL_AGGRESSIVE);
        for (let playerId of playerIds) {
            let player = Player(playerId);
            SetPlayerAlliance(player, neutralAggressivePlayer, ALLIANCE_PASSIVE, true)
            SetPlayerAlliance(neutralAggressivePlayer, player, ALLIANCE_PASSIVE, true)
        }
    }

    /** 获取中立敌对玩家 12=中立敌对*/
    static neutralAggressivePlayer(): player {
        /**
         * 0-11  = 玩家1-12
         * 12=中立敌对
         * 13=中立受害
         * 14=中立特殊
         * 15=中立被动
         */
        //12=中立敌对
        return Player(PLAYER_NEUTRAL_AGGRESSIVE);
    }

    /** 获取中立被动玩家 15=中立被动*/
    static neutralPassivePlayer(): player {
        /**
         * 0-11  = 玩家1-12
         * 12=中立敌对
         * 13=中立受害
         * 14=中立特殊
         * 15=中立被动
         */
        //15=中立被动
        return Player(PLAYER_NEUTRAL_PASSIVE);
    }

    /**
     * 获取玩家颜色代码
     * @param player
     */
    static getPlayerColorString(player: player): string {
        let playerColor: string[] = [];
        playerColor[0] = "|cFFFF0303"
        playerColor[1] = "|cFF0042FF"
        playerColor[2] = "|cFF1CE6B9"
        playerColor[3] = "|cFF540081"
        playerColor[4] = "|cFFFFFC01"
        playerColor[5] = "|cFFFE8A0E"
        playerColor[6] = "|cFF20C000"
        playerColor[7] = "|cFFE55BB0"
        playerColor[8] = "|cFF959697"
        playerColor[9] = "|cFF7EBFF1"
        playerColor[10] = "|cFF106246"
        playerColor[11] = "|cFF4E2A04"
        playerColor[12] = "|cFF282828"
        playerColor[13] = "|cFF282828"
        playerColor[14] = "|cFF282828"
        playerColor[15] = "|cFF282828"
        return playerColor[GetPlayerId(player)];
    }

    /**
     * 获取同步的数据
     * @param key
     * @param callBack
     */
    public static onSyncSelectedUnit(key: string, callBack: (p: player, data: {
        u: unit, x: number, y: number
    }) => void): void {
        SyncUtil.onSyncObjData("_sl_ssu" + key, (p, data) => {
            callBack(p, data)
        })
    }

    /**
     * 可做d闪使用
     * @param key
     */
    public static syncSelectedUnit(key: string): void {
        let localSelectedUnit = selection();
        let data = {
            u: h2i(localSelectedUnit),//handle 就是一个整数
            x: DzGetMouseTerrainX(),
            y: DzGetMouseTerrainY()
        }
        SyncUtil.syncObjData("_sl_ssu" + key, data)
    }


    /**
     * 当所有在线玩家的uid 准备完成时
     * 可在这个时候去执行跟uid相关的逻辑 比如存档或脚本逻辑
     */
    static onUsersUidReady(callback: () => void) {
        if (GetUserId == null) {
            log.errorWithTraceBack("当前环境不支持使用此函数!")
            return
        }
        let gap = 0.05;
        BaseUtil.onTimer(gap, (count) => {
            if (PlayerUtil._sl_isUsersUidReady()) {
                print("Uid同步完成:" + (gap * count) + "秒!")
                BaseUtil.runLater(0.01, () => {
                    callback();
                })
                return false;
            }
            if (count > 200) {
                BJDebugMsg("等待UID同步超时!请尝试重开游戏!")
                log.errorWithTraceBack("等待UID同步超时!")
                return false;
            }
            return true;
        })
    }


    private static _sl_isUsersUidReady(): boolean {
        for (let i = 0; i < bj_MAX_PLAYER_SLOTS; i++) {
            let tempPlayer = Player(i);
            if (GetPlayerController(tempPlayer) == MAP_CONTROL_USER && GetPlayerSlotState(tempPlayer) == PLAYER_SLOT_STATE_PLAYING) {
                if (MapPlayer.fromHandle(tempPlayer).userId == -1) {
                    return false;
                }
            }
        }

        return true;
    }
}
