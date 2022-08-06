function initNeutralStructures takes nothing returns nothing
    call SaveInteger(NHT, $6F303053, 0, $49303246)
    call SaveInteger(NHT, $6F30305A, 0, $49303247)
    call SaveInteger(NHT, $6F303130, 0, $49303248)
    call SaveInteger(NHT, $4F303059, 0, $49303249)
endfunction
function getStructItem takes integer unitId returns integer
    return LoadInteger(NHT, unitId, 0)
endfunction
function UnitBuilt_Conditions takes nothing returns boolean
    local unit u = GetTriggerUnit()
    local player p = GetOwningPlayer(u)
    if GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_USED) > GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) then
        call RemoveUnit(u)
        call DisplayTextToPlayer(p, 0, 0, "|CFFFF0000人口达到上限，无法继续建造，物品归还至门派建造者")
        call UnitAddItemById(builder[1 + GetPlayerId(p)], LoadInteger(NHT, GetUnitTypeId(u), 0))
    endif
    set p = null
    set u = null
    return false
endfunction
function UnitBuilt takes nothing returns nothing
    local trigger t = CreateTrigger()
    call initNeutralStructures()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_CONSTRUCT_START)
    call TriggerAddCondition(t, Condition(function UnitBuilt_Conditions))
    set t = null
endfunction
