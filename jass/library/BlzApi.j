
native DzGetMouseTerrainX takes nothing returns real
native DzGetMouseTerrainY takes nothing returns real
native DzGetMouseTerrainZ takes nothing returns real
native DzIsMouseOverUI takes nothing returns boolean
native DzGetMouseX takes nothing returns integer
native DzGetMouseY takes nothing returns integer
native DzGetMouseXRelative takes nothing returns integer
native DzGetMouseYRelative takes nothing returns integer
native DzSetMousePos takes integer x, integer y returns nothing
native DzTriggerRegisterMouseEvent takes trigger trig, integer btn, integer status, boolean sync, string func returns nothing
native DzTriggerRegisterMouseEventByCode takes trigger trig, integer btn, integer status, boolean sync, code funcHandle returns nothing
native DzTriggerRegisterKeyEvent takes trigger trig, integer key, integer status, boolean sync, string func returns nothing
native DzTriggerRegisterKeyEventByCode takes trigger trig, integer key, integer status, boolean sync, code funcHandle returns nothing
native DzTriggerRegisterMouseWheelEvent takes trigger trig, boolean sync, string func returns nothing
native DzTriggerRegisterMouseWheelEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
native DzTriggerRegisterMouseMoveEvent takes trigger trig, boolean sync, string func returns nothing
native DzTriggerRegisterMouseMoveEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
native DzGetTriggerKey takes nothing returns integer
native DzGetWheelDelta takes nothing returns integer
native DzIsKeyDown takes integer iKey returns boolean
native DzGetTriggerKeyPlayer takes nothing returns player
native DzGetWindowWidth takes nothing returns integer
native DzGetWindowHeight takes nothing returns integer
native DzGetWindowX takes nothing returns integer
native DzGetWindowY takes nothing returns integer
native DzTriggerRegisterWindowResizeEvent takes trigger trig, boolean sync, string func returns nothing
native DzTriggerRegisterWindowResizeEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
native DzIsWindowActive takes nothing returns boolean
native DzDestructablePosition takes destructable d, real x, real y returns nothing
native DzSetUnitPosition takes unit whichUnit, real x, real y returns nothing
native DzExecuteFunc takes string funcName returns nothing
native DzGetUnitUnderMouse takes nothing returns unit
native DzSetUnitTexture takes unit whichUnit, string path, integer texId returns nothing
native DzSetMemory takes integer address, real value returns nothing
native DzSetUnitID takes unit whichUnit, integer id returns nothing
native DzSetUnitModel takes unit whichUnit, string path returns nothing
native DzSetWar3MapMap takes string map returns nothing
native DzGetLocale takes nothing returns string
native DzGetUnitNeededXP takes unit whichUnit, integer level returns integer
native DzTriggerRegisterSyncData takes trigger trig, string prefix, boolean server returns nothing
native DzSyncData takes string prefix, string data returns nothing
native DzGetTriggerSyncData takes nothing returns string
native DzGetTriggerSyncPlayer takes nothing returns player
native DzFrameHideInterface takes nothing returns nothing
native DzFrameEditBlackBorders takes real upperHeight, real bottomHeight returns nothing
native DzFrameGetPortrait takes nothing returns integer
native DzFrameGetMinimap takes nothing returns integer
native DzFrameGetCommandBarButton takes integer row, integer column returns integer
native DzFrameGetHeroBarButton takes integer buttonId returns integer
native DzFrameGetHeroHPBar takes integer buttonId returns integer
native DzFrameGetHeroManaBar takes integer buttonId returns integer
native DzFrameGetItemBarButton takes integer buttonId returns integer
native DzFrameGetMinimapButton takes integer buttonId returns integer
native DzFrameGetUpperButtonBarButton takes integer buttonId returns integer
native DzFrameGetTooltip takes nothing returns integer
native DzFrameGetChatMessage takes nothing returns integer
native DzFrameGetUnitMessage takes nothing returns integer
native DzFrameGetTopMessage takes nothing returns integer
native DzGetColor takes integer r, integer g, integer b, integer a returns integer
native DzFrameSetUpdateCallback takes string func returns nothing
native DzFrameSetUpdateCallbackByCode takes code funcHandle returns nothing
native DzFrameShow takes integer frame, boolean enable returns nothing
native DzCreateFrame takes string frame, integer parent, integer id returns integer
native DzCreateSimpleFrame takes string frame, integer parent, integer id returns integer
native DzDestroyFrame takes integer frame returns nothing
native DzLoadToc takes string fileName returns nothing
native DzFrameSetPoint takes integer frame, integer point, integer relativeFrame, integer relativePoint, real x, real y returns nothing
native DzFrameSetAbsolutePoint takes integer frame, integer point, real x, real y returns nothing
native DzFrameClearAllPoints takes integer frame returns nothing
native DzFrameSetEnable takes integer name, boolean enable returns nothing
native DzFrameSetScript takes integer frame, integer eventId, string func, boolean sync returns nothing
native DzFrameSetScriptByCode takes integer frame, integer eventId, code funcHandle, boolean sync returns nothing
native DzGetTriggerUIEventPlayer takes nothing returns player
native DzGetTriggerUIEventFrame takes nothing returns integer
native DzFrameFindByName takes string name, integer id returns integer
native DzSimpleFrameFindByName takes string name, integer id returns integer
native DzSimpleFontStringFindByName takes string name, integer id returns integer
native DzSimpleTextureFindByName takes string name, integer id returns integer
native DzGetGameUI takes nothing returns integer
native DzClickFrame takes integer frame returns nothing
native DzSetCustomFovFix takes real value returns nothing
native DzEnableWideScreen takes boolean enable returns nothing
native DzFrameSetText takes integer frame, string text returns nothing
native DzFrameGetText takes integer frame returns string
native DzFrameSetTextSizeLimit takes integer frame, integer size returns nothing
native DzFrameGetTextSizeLimit takes integer frame returns integer
native DzFrameSetTextColor takes integer frame, integer color returns nothing
native DzGetMouseFocus takes nothing returns integer
native DzFrameSetAllPoints takes integer frame, integer relativeFrame returns boolean
native DzFrameSetFocus takes integer frame, boolean enable returns boolean
native DzFrameSetModel takes integer frame, string modelFile, integer modelType, integer flag returns nothing
native DzFrameGetEnable takes integer frame returns boolean
native DzFrameSetAlpha takes integer frame, integer alpha returns nothing
native DzFrameGetAlpha takes integer frame returns integer
native DzFrameSetAnimate takes integer frame, integer animId, boolean autocast returns nothing
native DzFrameSetAnimateOffset takes integer frame, real offset returns nothing
native DzFrameSetTexture takes integer frame, string texture, integer flag returns nothing
native DzFrameSetScale takes integer frame, real scale returns nothing
native DzFrameSetTooltip takes integer frame, integer tooltip returns nothing
native DzFrameCageMouse takes integer frame, boolean enable returns nothing
native DzFrameGetValue takes integer frame returns real
native DzFrameSetMinMaxValue takes integer frame, real minValue, real maxValue returns nothing
native DzFrameSetStepValue takes integer frame, real step returns nothing
native DzFrameSetValue takes integer frame, real value returns nothing
native DzFrameSetSize takes integer frame, real w, real h returns nothing
native DzCreateFrameByTagName takes string frameType, string name, integer parent, string template, integer id returns integer
native DzFrameSetVertexColor takes integer frame, integer color returns nothing
native DzOriginalUIAutoResetPoint takes boolean enable returns nothing
native DzFrameSetPriority takes integer frame, integer priority returns nothing
native DzFrameSetParent takes integer frame, integer parent returns nothing
native DzFrameGetHeight takes integer frame returns real
native DzFrameSetFont takes integer frame, string fileName, real height, integer flag returns nothing
native DzFrameGetParent takes integer frame returns integer
native DzFrameSetTextAlignment takes integer frame, integer align returns nothing
native DzFrameGetName takes integer frame returns string
native DzAPI_Map_SaveServerValue takes player whichPlayer, string key, string value returns boolean
native DzAPI_Map_GetServerValue takes player whichPlayer, string key returns string
native DzAPI_Map_Ladder_SetStat takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_IsRPGLadder takes nothing returns boolean
native DzAPI_Map_GetGameStartTime takes nothing returns integer
native DzAPI_Map_Stat_SetStat takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_GetMatchType takes nothing returns integer
native DzAPI_Map_Ladder_SetPlayerStat takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_GetServerValueErrorCode takes player whichPlayer returns integer
native DzAPI_Map_GetLadderLevel takes player whichPlayer returns integer
native DzAPI_Map_IsRedVIP takes player whichPlayer returns boolean
native DzAPI_Map_IsBlueVIP takes player whichPlayer returns boolean
native DzAPI_Map_GetLadderRank takes player whichPlayer returns integer
native DzAPI_Map_GetMapLevelRank takes player whichPlayer returns integer
native DzAPI_Map_GetGuildName takes player whichPlayer returns string
native DzAPI_Map_GetGuildRole takes player whichPlayer returns integer
native DzAPI_Map_IsRPGLobby takes nothing returns boolean
native DzAPI_Map_GetMapLevel takes player whichPlayer returns integer
native DzAPI_Map_MissionComplete takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_GetActivityData takes nothing returns string
native DzAPI_Map_GetMapConfig takes string key returns string
native DzAPI_Map_HasMallItem takes player whichPlayer, string key returns boolean
native DzAPI_Map_SavePublicArchive takes player whichPlayer, string key, string value returns boolean
native DzAPI_Map_GetPublicArchive takes player whichPlayer, string key returns string
native DzAPI_Map_UseConsumablesItem takes player whichPlayer, string key returns nothing
native DzAPI_Map_OrpgTrigger takes player whichPlayer, string key returns nothing
native DzAPI_Map_GetServerArchiveDrop takes player whichPlayer, string key returns string
native DzAPI_Map_GetServerArchiveEquip takes player whichPlayer, string key returns integer
native RequestExtraIntegerData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns integer
native RequestExtraBooleanData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns boolean
native RequestExtraStringData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns string
native RequestExtraRealData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns real
native DzAPI_Map_GetPlatformVIP takes player whichPlayer returns integer
    
function DzTriggerRegisterMouseEventTrg takes trigger trg, integer status, integer btn returns nothing
    if trg == null then
        return
    endif
    call DzTriggerRegisterMouseEvent(trg, btn, status, true, null)
endfunction
function DzTriggerRegisterKeyEventTrg takes trigger trg, integer status, integer btn returns nothing
    if trg == null then
        return
    endif
    call DzTriggerRegisterKeyEvent(trg, btn, status, true, null)
endfunction
function DzTriggerRegisterMouseMoveEventTrg takes trigger trg returns nothing
    if trg == null then
        return
    endif
    call DzTriggerRegisterMouseMoveEvent(trg, true, null)
endfunction
function DzTriggerRegisterMouseWheelEventTrg takes trigger trg returns nothing
    if trg == null then
        return
    endif
    call DzTriggerRegisterMouseWheelEvent(trg, true, null)
endfunction
function DzTriggerRegisterWindowResizeEventTrg takes trigger trg returns nothing
    if trg == null then
        return
    endif
    call DzTriggerRegisterWindowResizeEvent(trg, true, null)
endfunction
function DzF2I takes integer i returns integer
    return i
endfunction
function DzI2F takes integer i returns integer
    return i
endfunction
function DzK2I takes integer i returns integer
    return i
endfunction
function DzI2K takes integer i returns integer
    return i
endfunction
function DzAPI_Map_IsPlatformVIP takes player whichPlayer returns boolean
    return DzAPI_Map_GetPlatformVIP(whichPlayer) > 0
endfunction
function DzAPI_Map_Global_GetStoreString takes string key returns string
    return RequestExtraStringData(36, GetLocalPlayer(), key, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_Global_StoreString takes string key, string value returns nothing
    call RequestExtraStringData(37, GetLocalPlayer(), key, value, false, 0, 0, 0)
endfunction
function DzAPI_Map_Global_ChangeMsg takes trigger trig returns nothing
    call DzTriggerRegisterSyncData(trig, "DZGAU", true)
endfunction
function DzAPI_Map_ServerArchive takes player whichPlayer, string key returns string
    return RequestExtraStringData(38, whichPlayer, key, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_SaveServerArchive takes player whichPlayer, string key, string value returns nothing
    call RequestExtraBooleanData(39, whichPlayer, key, value, false, 0, 0, 0)
endfunction
function DzAPI_Map_IsRPGQuickMatch takes nothing returns boolean
    return RequestExtraBooleanData(40, null, null, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_GetMallItemCount takes player whichPlayer, string key returns integer
    return RequestExtraIntegerData(41, whichPlayer, key, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_ConsumeMallItem takes player whichPlayer, string key, integer count returns boolean
    return RequestExtraBooleanData(42, whichPlayer, key, null, false, count, 0, 0)
endfunction
function DzAPI_Map_EnablePlatformSettings takes player whichPlayer, integer option, boolean enable returns boolean
    return RequestExtraBooleanData(43, whichPlayer, null, null, enable, option, 0, 0)
endfunction
function DzAPI_Map_IsBuyReforged takes player whichPlayer returns boolean
    return RequestExtraBooleanData(44, whichPlayer, null, null, false, 0, 0, 0)
endfunction
function GetPlayerServerValueSuccess takes player whichPlayer returns boolean
    if DzAPI_Map_GetServerValueErrorCode(whichPlayer) == 0 then
        return true
    else
        return false
    endif
endfunction
function DzAPI_Map_StoreIntegerEX takes player whichPlayer, string key, integer value returns nothing
    set key = "I" + key
    call RequestExtraBooleanData(39, whichPlayer, key, I2S(value), false, 0, 0, 0)
    set key = null
    set whichPlayer = null
endfunction
function DzAPI_Map_GetStoredIntegerEX takes player whichPlayer, string key returns integer
    local integer value
    set key = "I" + key
    set value = S2I(RequestExtraStringData(39, whichPlayer, key, null, false, 0, 0, 0))
    set key = null
    set whichPlayer = null
    return value
endfunction
function DzAPI_Map_StoreInteger takes player whichPlayer, string key, integer value returns nothing
    set key = "I" + key
    call DzAPI_Map_SaveServerValue(whichPlayer, key, I2S(value))
    set key = null
    set whichPlayer = null
endfunction
function DzAPI_Map_GetStoredInteger takes player whichPlayer, string key returns integer
    local integer value
    set key = "I" + key
    set value = S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
    set key = null
    set whichPlayer = null
    return value
endfunction
function DzAPI_Map_StoreReal takes player whichPlayer, string key, real value returns nothing
    set key = "R" + key
    call DzAPI_Map_SaveServerValue(whichPlayer, key, R2S(value))
    set key = null
    set whichPlayer = null
endfunction
function DzAPI_Map_GetStoredReal takes player whichPlayer, string key returns real
    local real value
    set key = "R" + key
    set value = S2R(DzAPI_Map_GetServerValue(whichPlayer, key))
    set key = null
    set whichPlayer = null
    return value
endfunction
function DzAPI_Map_StoreBoolean takes player whichPlayer, string key, boolean value returns nothing
    set key = "B" + key
    if value then
        call DzAPI_Map_SaveServerValue(whichPlayer, key, "1")
    else
        call DzAPI_Map_SaveServerValue(whichPlayer, key, "0")
    endif
    set key = null
    set whichPlayer = null
endfunction
function DzAPI_Map_GetStoredBoolean takes player whichPlayer, string key returns boolean
    local boolean value
    set key = "B" + key
    set key = DzAPI_Map_GetServerValue(whichPlayer, key)
    if key == "1" then
        set value = true
    else
        set value = false
    endif
    set key = null
    set whichPlayer = null
    return value
endfunction
function DzAPI_Map_StoreString takes player whichPlayer, string key, string value returns nothing
    set key = "S" + key
    call DzAPI_Map_SaveServerValue(whichPlayer, key, value)
    set key = null
    set whichPlayer = null
endfunction
function DzAPI_Map_GetStoredString takes player whichPlayer, string key returns string
    return DzAPI_Map_GetServerValue(whichPlayer, "S" + key)
endfunction
function DzAPI_Map_StoreStringEX takes player whichPlayer, string key, string value returns nothing
    set key = "S" + key
    call RequestExtraBooleanData(39, whichPlayer, key, value, false, 0, 0, 0)
    set key = null
    set whichPlayer = null
endfunction
function DzAPI_Map_GetStoredStringEX takes player whichPlayer, string key returns string
    return RequestExtraStringData(39, whichPlayer, "S" + key, null, false, 0, 0, 0)
endfunction
function DzAPI_Map_GetStoredUnitType takes player whichPlayer, string key returns integer
    local integer value
    set key = "I" + key
    set value = S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
    set key = null
    set whichPlayer = null
    return value
endfunction
function DzAPI_Map_GetStoredAbilityId takes player whichPlayer, string key returns integer
    local integer value
    set key = "I" + key
    set value = S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
    set key = null
    set whichPlayer = null
    return value
endfunction
function DzAPI_Map_FlushStoredMission takes player whichPlayer, string key returns nothing
    call DzAPI_Map_SaveServerValue(whichPlayer, key, null)
    set key = null
    set whichPlayer = null
endfunction
function DzAPI_Map_Ladder_SubmitIntegerData takes player whichPlayer, string key, integer value returns nothing
    call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
endfunction
function DzAPI_Map_Stat_SubmitUnitIdData takes player whichPlayer, string key, integer value returns nothing
    if value == 0 then
    else
        call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
    endif
endfunction
function DzAPI_Map_Stat_SubmitUnitData takes player whichPlayer, string key, unit value returns nothing
    call DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer, key, GetUnitTypeId(value))
endfunction
function DzAPI_Map_Ladder_SubmitAblityIdData takes player whichPlayer, string key, integer value returns nothing
    if value == 0 then
    else
        call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
    endif
endfunction
function DzAPI_Map_Ladder_SubmitItemIdData takes player whichPlayer, string key, integer value returns nothing
    local string S
    if value == 0 then
        set S = "0"
    else
        set S = I2S(value)
        call DzAPI_Map_Ladder_SetStat(whichPlayer, key, S)
    endif
    set S = null
    set whichPlayer = null
endfunction
function DzAPI_Map_Ladder_SubmitItemData takes player whichPlayer, string key, item value returns nothing
    call DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer, key, GetItemTypeId(value))
endfunction
function DzAPI_Map_Ladder_SubmitBooleanData takes player whichPlayer, string key, boolean value returns nothing
    if value then
        call DzAPI_Map_Ladder_SetStat(whichPlayer, key, "1")
    else
        call DzAPI_Map_Ladder_SetStat(whichPlayer, key, "0")
    endif
endfunction
function DzAPI_Map_Ladder_SubmitTitle takes player whichPlayer, string value returns nothing
    call DzAPI_Map_Ladder_SetStat(whichPlayer, value, "1")
endfunction
function DzAPI_Map_Ladder_SubmitPlayerRank takes player whichPlayer, integer value returns nothing
    call DzAPI_Map_Ladder_SetPlayerStat(whichPlayer, "RankIndex", I2S(value))
endfunction
function DzAPI_Map_Ladder_SubmitPlayerExtraExp takes player whichPlayer, integer value returns nothing
    call DzAPI_Map_Ladder_SetStat(whichPlayer, "ExtraExp", I2S(value))
endfunction
