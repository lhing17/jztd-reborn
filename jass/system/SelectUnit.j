globals
    unit array unitInSelection
endglobals

function showHealthPointAction takes nothing returns nothing
    local integer i = 1 + GetPlayerId(GetTriggerPlayer())
    // call BJDebugMsg("当前选中单位为："+GetUnitName(GetTriggerUnit()))
    if GetTriggerUnit() != null then
        set unitInSelection[i] = GetTriggerUnit()
    endif
    if showHint[i] and GetUnitState(GetTriggerUnit(), UNIT_STATE_MAX_LIFE) >= 999999 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "单位" + GetUnitName(GetTriggerUnit()) + "|r的血量为" + R2S(GetWidgetLife(GetTriggerUnit())) + " / " + R2S(GetUnitState(GetTriggerUnit(), UNIT_STATE_MAX_LIFE)))
    endif
    if showHint[i] and LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 4077) > 0 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "单位" + GetUnitName(GetTriggerUnit()) + "|r的护盾百分比为" + R2S(LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 4077)) + " %")
    endif
endfunction
function toggleHint takes nothing returns nothing
    local player p = GetTriggerPlayer()
    local string s = GetEventPlayerChatString()
    if s == "qxts" then
        call DisplayTextToPlayer(p, 0, 0, "|cffffff00取消血量提示")
        set showHint[1 + GetPlayerId(p)] = false
    endif
    if s == "kqts" then
        call DisplayTextToPlayer(p, 0, 0, "|cffffff00开启血量提示")
        set showHint[1 + GetPlayerId(p)] = true
    endif
    set p = null
endfunction
function SelectUnitSystem takes nothing returns nothing
    local trigger t = CreateTrigger()
    local integer i = 1
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELECTED)
    call TriggerAddAction(t, function showHealthPointAction)
    loop
        exitwhen i > 5
        set showHint[i] = true
        set unitInSelection[i] = null
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen i > 6
        call TriggerRegisterPlayerChatEvent(t, Player(i), "", true)
        set i = i + 1
    endloop
    call TriggerAddAction(t, function toggleHint)
endfunction

