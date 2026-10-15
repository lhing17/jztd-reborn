/** @noSelf **/



export default class KKApiHelper {
/// Some references
/// <reference path="war3core.d.ts"/>

    static DzTriggerRegisterMallItemConsumeEvent(trig: trigger): void {
// local variables
// static body
        DzTriggerRegisterSyncData(trig, "DZMIC", true);
    }

    static DzTriggerRegisterMallItemRemoveEvent(trig: trigger): void {
// local variables
// static body
        DzTriggerRegisterSyncData(trig, "DZMID", true);
    }

    static DzAPI_Map_SaveServerValue(whichPlayer: player, key: string, value: string): boolean {
// local variables
// static body
        return RequestExtraBooleanData(4, whichPlayer, key, value, false, 0, 0, 0);
    }

    static DzAPI_Map_GetServerValue(whichPlayer: player, key: string): string {
// local variables
// static body
        return RequestExtraStringData(5, whichPlayer, key, null, false, 0, 0, 0);
    }

    static DzAPI_Map_GetGameStartTime(): number {
// local variables
// static body
        return RequestExtraIntegerData(11, null, null, null, false, 0, 0, 0);
    }

    static DzAPI_Map_IsRPGLadder(): boolean {
// local variables
// static body
        return RequestExtraBooleanData(12, null, null, null, false, 0, 0, 0);
    }

    static DzAPI_Map_GetMatchType(): number {
// local variables
// static body
        return RequestExtraIntegerData(13, null, null, null, false, 0, 0, 0);
    }

    static DzAPI_Map_Stat_SetStat(whichPlayer: player, key: string, value: string): void {
// local variables
// static body
        RequestExtraIntegerData(7, whichPlayer, key, value, false, 0, 0, 0);
    }

    static DzAPI_Map_Ladder_SetStat(whichPlayer: player, key: string, value: string): void {
// local variables
// static body
        RequestExtraIntegerData(8, whichPlayer, key, value, false, 0, 0, 0);
    }

    static DzAPI_Map_Ladder_SetPlayerStat(whichPlayer: player, key: string, value: string): void {
// local variables
// static body
        RequestExtraIntegerData(9, whichPlayer, key, value, false, 0, 0, 0);
    }

    static DzAPI_Map_GetServerValueErrorCode(whichPlayer: player): number {
// local variables
// static body
        return RequestExtraIntegerData(6, whichPlayer, null, null, false, 0, 0, 0);
    }

    static DzAPI_Map_GetLadderLevel(whichPlayer: player): number {
// local variables
// static body
        return RequestExtraIntegerData(14, whichPlayer, null, null, false, 0, 0, 0);
    }

    static KKApiPlayerIdentityType(whichPlayer: player, id: number): boolean {
// local variables
// static body
        return RequestExtraBooleanData(92, whichPlayer, null, null, false, id, 0, 0);
    }

    static DzAPI_Map_IsRedVIP(whichPlayer: player): boolean {
// local variables
// static body
        return KKApiPlayerIdentityType(whichPlayer, 4);
    }

    static DzAPI_Map_IsBlueVIP(whichPlayer: player): boolean {
// local variables
// static body
        return KKApiPlayerIdentityType(whichPlayer, 3);
    }

    static DzAPI_Map_GetLadderRank(whichPlayer: player): number {
// local variables
// static body
        return RequestExtraIntegerData(17, whichPlayer, null, null, false, 0, 0, 0);
    }

    static DzAPI_Map_GetMapLevelRank(whichPlayer: player): number {
// local variables
// static body
        return RequestExtraIntegerData(18, whichPlayer, null, null, false, 0, 0, 0);
    }

    static DzAPI_Map_GetGuildRole(whichPlayer: player): number {
// local variables
// static body
        return RequestExtraIntegerData(20, whichPlayer, null, null, false, 0, 0, 0);
    }

    static DzAPI_Map_IsRPGLobby(): boolean {
// local variables
// static body
        return RequestExtraBooleanData(10, null, null, null, false, 0, 0, 0);
    }

    static DzAPI_Map_MissionComplete(whichPlayer: player, key: string, value: string): void {
// local variables
// static body
        RequestExtraIntegerData(1, whichPlayer, key, value, false, 0, 0, 0);
    }

    static DzAPI_Map_GetActivityData(): string {
// local variables
// static body
        return RequestExtraStringData(2, null, null, null, false, 0, 0, 0);
    }

    static DzAPI_Map_GetMapConfig(key: string): string {
// local variables
// static body
        return RequestExtraStringData(21, null, key, null, false, 0, 0, 0);
    }

    static DzAPI_Map_SavePublicArchive(whichPlayer: player, key: string, value: string): boolean {
// local variables
// static body
        return RequestExtraBooleanData(31, whichPlayer, key, value, false, 0, 0, 0);
    }

    static DzAPI_Map_GetPublicArchive(whichPlayer: player, key: string): string {
// local variables
// static body
        return RequestExtraStringData(32, whichPlayer, key, null, false, 0, 0, 0);
    }

    static DzAPI_Map_UseConsumablesItem(whichPlayer: player, key: string): void {
// local variables
// static body
        RequestExtraIntegerData(33, whichPlayer, key, null, false, 0, 0, 0);
    }

    static DzAPI_Map_OrpgTrigger(whichPlayer: player, key: string): void {
// local variables
// static body
        RequestExtraIntegerData(28, whichPlayer, key, null, false, 0, 0, 0);
    }

    static DzAPI_Map_GetServerArchiveDrop(whichPlayer: player, key: string): string {
// local variables
// static body
        return RequestExtraStringData(27, whichPlayer, key, null, false, 0, 0, 0);
    }

    static DzAPI_Map_GetServerArchiveEquip(whichPlayer: player, key: string): number {
// local variables
// static body
        return RequestExtraIntegerData(26, whichPlayer, key, null, false, 0, 0, 0);
    }

    static DzAPI_Map_GetPlatformVIP(whichPlayer: player): number {
// local variables
// static body
        return RequestExtraIntegerData(30, whichPlayer, null, null, false, 0, 0, 0);
    }

    static DzAPI_Map_IsPlayerUsingSkin(whichPlayer: player, skinType: number, id: number): boolean {
// local variables
// static body
        return RequestExtraBooleanData(64, whichPlayer, null, null, false, skinType, id, 0);
    }

    static DzAPI_Map_PlayerFlags(whichPlayer: player, label: number): boolean {
// local variables
// static body
        return RequestExtraBooleanData(53, whichPlayer, null, null, false, label, 0, 0);
    }

    static KKApiPlayedTime(whichPlayer: player, minHours: number, maxHours: number): boolean {
// local variables
// static body
        return RequestExtraBooleanData(100, whichPlayer, null, null, false, minHours, maxHours, 0);
    }

    static KKApiAddBatchSaveArchiveInteger(whichPlayer: player, key: string, value: number): void {
// local variables
// static body
        key = "I" + key;
        KKApiAddBatchSaveArchive(whichPlayer, key, I2S(value), false);
        key = null;
        whichPlayer = null;
    }

    static KKApiAddBatchSaveArchiveReal(whichPlayer: player, key: string, value: number): void {
// local variables
// static body
        key = "R" + key;
        KKApiAddBatchSaveArchive(whichPlayer, key, R2S(value), false);
        key = null;
        whichPlayer = null;
    }

    static KKApiAddBatchSaveArchiveBoolean(whichPlayer: player, key: string, value: boolean): void {
// local variables
// static body
        key = "B" + key;
        if ((value))
            KKApiAddBatchSaveArchive(whichPlayer, key, "1", false);
        else
            KKApiAddBatchSaveArchive(whichPlayer, key, "0", false);
        key = null;
        whichPlayer = null;
    }

    static KKApiAddBatchSaveArchiveString(whichPlayer: player, key: string, value: string): void {
// local variables
// static body
        key = "S" + key;
        KKApiAddBatchSaveArchive(whichPlayer, key, value, false);
        key = null;
        whichPlayer = null;
    }

    static KKApiTriggerRegisterLadderSurrender(trig: trigger): void {
// local variables
// static body
        DzTriggerRegisterSyncData(trig, "DZSR", true);
    }

    static KKApiGetLadderSurrenderTeamId(): number {
// local variables
// static body
        return S2I(DzGetTriggerSyncData());
    }

    static KKApiGetGuildLevel(whichPlayer: player): number {
// local variables
// static body
        return RequestExtraIntegerData(106, whichPlayer, null, null, false, 0, 0, 0);
    }

    static KKApiMapExplorationNum(whichPlayer: player): number {
// local variables
// static body
        return RequestExtraIntegerData(107, whichPlayer, null, null, false, 0, 0, 0);
    }

    static KKApiMapExplorationTime(whichPlayer: player): number {
// local variables
// static body
        return RequestExtraIntegerData(108, whichPlayer, null, null, false, 0, 0, 0);
    }

    static KKApiMapOrderNum(): number {
// local variables
// static body
        return RequestExtraIntegerData(109, null, null, null, false, 0, 0, 0);
    }

    static KKApiMlScriptEvent(whichPlayer: player, eventName: string, payload: string): boolean {
// local variables
// static body
        return RequestExtraBooleanData(1009, whichPlayer, eventName, payload, false, 0, 0, 0);
    }

    static KKApiGetMallItemUpdateCount(whichPlayer: player, key: string): number {
// local variables
// static body
        return RequestExtraIntegerData(110, whichPlayer, key, null, false, 0, 0, 0);
    }

    static KKApiGetMapVersion(): string {
// local variables
// static body
        return RequestExtraStringData(111, null, null, null, false, 0, 0, 0);
    }

    static KKApiGetCompetitionGameMode(): string {
// local variables
// static body
        return RequestExtraStringData(112, null, null, null, false, 0, 0, 0);
    }

    static KKApiDayRounds(whichPlayer: player): number {
// local variables
// static body
        return RequestExtraIntegerData(113, whichPlayer, null, null, false, 0, 0, 0);
    }

    static KKApiConsumeLevel(whichPlayer: player, mapId: number): number {
// local variables
// static body
        return RequestExtraIntegerData(115, whichPlayer, null, null, false, mapId, 0, 0);
    }

    static KKApiIsPinned(whichPlayer: player): boolean {
// local variables
// static body
        return RequestExtraBooleanData(117, whichPlayer, null, null, false, 0, 0, 0);
    }

    static DzAPI_Map_SystemArchive(whichPlayer: player, key: string): string {
// local variables
// static body
        return RequestExtraStringData(35, whichPlayer, key, null, false, 0, 0, 0);
    }

    static KKApiBountyRank(whichPlayer: player): number {
// local variables
// static body
        return RequestExtraIntegerData(120, whichPlayer, null, null, false, 0, 0, 0);
    }

    static KKApiBountyValue(whichPlayer: player): number {
// local variables
// static body
        return RequestExtraIntegerData(121, whichPlayer, null, null, false, 0, 0, 0);
    }

    static DzIsLeapYear(year: number): boolean {
// local variables
// static body
        return (ModuloInteger(year, 4) == 0 && ModuloInteger(year, 100) != 0) || (ModuloInteger(year, 400) == 0);
    }



    static KKConvertInt2AbilId(i: number): number {
// local variables
// static body
        return i;
    }

    static KKConvertAbilId2Int(i: number): number {
// local variables
// static body
        return i;
    }

    static KKConvertInt2Color(i: number): number {
// local variables
// static body
        return i;
    }

    static KKConvertColor2Int(i: number): number {
// local variables
// static body
        return i;
    }

    static KKFrameBindItem(frame: number, u: widget, world_x: number, world_y: number, world_z: number, screen_x: number, screen_y: number, fog_visible: boolean, item_visible: boolean): void {
// local variables
// static body
        DzFrameBindWidget(frame, u, world_x, world_y, world_z, screen_x, screen_y, fog_visible, item_visible, false);
    }

    static KKUnitCanPlaceAroundLoc(obj: widget, loc: location): boolean {
// local variables
// static body
        return DzUnitCanPlaceAround(obj, GetLocationX(loc), GetLocationY(loc));
    }

    static kkUnitCanPlaceAroundItem(obj: widget, x: number, y: number): boolean {
// local variables
// static body
        return DzUnitCanPlaceAround(obj, x, y);
    }

    static KKUnitCanPlaceAroundLocItem(obj: widget, loc: location): boolean {
// local variables
// static body
        return DzUnitCanPlaceAround(obj, GetLocationX(loc), GetLocationY(loc));
    }

    static KKPositionCanPlaceAroundLoc(loc: location, collision_size: number, collision_type: number): boolean {
// local variables
// static body
        return DzPositionCanPlaceAround(GetLocationX(loc), GetLocationY(loc), collision_size, collision_type);
    }

    static KKConvertStr2Targs(s: string): number {
// local variables
// static body
        return DzConvertStr2Targs(s);
    }

    static DzEffectGroupCreateBJ(): dzeffectgroup {
// local variables
// static body
        bj_lastCreatedDzEffectGroup = DzEffectGroupCreate();
        return bj_lastCreatedDzEffectGroup;
    }

    static DzEffectGroupCreateEnumRangeBJ(x: number, y: number, range: number): dzeffectgroup {
// local variables
// static body
        bj_lastCreatedDzEffectGroup = DzEffectGroupCreate();
        DzEffectGroupEnumRange(bj_lastCreatedDzEffectGroup, x, y, range, false, false);
        return bj_lastCreatedDzEffectGroup;
    }

    static DzEffectGroupCreateEnumRectBJ(whichRect: rect): dzeffectgroup {
// local variables
// static body
        bj_lastCreatedDzEffectGroup = DzEffectGroupCreate();
        DzEffectGroupEnumRect(bj_lastCreatedDzEffectGroup, whichRect, false, false);
        return bj_lastCreatedDzEffectGroup;
    }

    static DzEffectGroupAddBJ(whichEffect: effect, whichEffectGroup: dzeffectgroup, allowDuplicate: boolean): number {
// local variables
// static body
        return DzEffectGroupAdd(whichEffectGroup, whichEffect, allowDuplicate);
    }

    static DzEffectGroupEnumRangeBJ(x: number, y: number, range: number, whichEffectGroup: dzeffectgroup, clear: boolean, allowDuplicate: boolean): number {
// local variables
// static body
        return DzEffectGroupEnumRange(whichEffectGroup, x, y, range, clear, allowDuplicate);
    }

    static DzEffectGroupEnumRectBJ(whichRect: rect, whichEffectGroup: dzeffectgroup, clear: boolean, allowDuplicate: boolean): number {
// local variables
// static body
        return DzEffectGroupEnumRect(whichEffectGroup, whichRect, clear, allowDuplicate);
    }

    static DzRemoveEffectTimedBJ(time: number, whichEffect: effect): boolean {
// local variables
// static body
        return DzRemoveEffectTimed(whichEffect, time);
    }

    static DzDieEffectTimedBJ(time: number, whichEffect: effect): boolean {
// local variables
// static body
        return DzDieEffectTimed(whichEffect, time);
    }

    static DzGetEffectGroupIdBJ(g: dzeffectgroup): number {
// local variables
// static body
        return GetHandleId(g);
    }

}