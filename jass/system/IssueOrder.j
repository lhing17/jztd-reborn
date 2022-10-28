function IssueUnitOrder_Conditions takes nothing returns boolean
    local integer id = GetIssuedOrderId()
    local unit u = GetTriggerUnit()
    local unit ut = GetOrderTargetUnit()
    local player p = GetOwningPlayer(u)
    local integer i = 1 + GetPlayerId(p)
    local location loc = GetUnitLoc(u)
    local location loc2 = GetUnitLoc(ut)
    local location temp_loc = null
    local group g = null
    if id == 852066 and GetUnitAbilityLevel(u, 'A006') >= 1 and udg_jiuyang[i] >= 1 then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A030')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A030', GetUnitAbilityLevel(u, 'A006'))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852101, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 2.)
    endif
    if id == 852149 and GetUnitAbilityLevel(u, 'A00J') >= 1 and udg_jiuyang[i] >= 1 then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A038')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A038', GetUnitAbilityLevel(u, 'A00J'))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852095, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 2.)
    endif
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set u = null
    set ut = null
    set p = null
    set loc = null
    set loc2 = null
    set temp_loc = null
    set g = null
    return false
endfunction
function IssueOrder_Conditions takes nothing returns boolean
    return false
endfunction
function IssuePointOrder_Conditions takes nothing returns boolean
    local integer id = GetIssuedOrderId()
    local unit u = GetTriggerUnit()
    local player p = GetOwningPlayer(u)
    local integer i = 1 + GetPlayerId(p)
    set u = null
    set p = null
    return false
endfunction
function IssueOrder takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER)
    call TriggerAddCondition(t, Condition(function IssueUnitOrder_Conditions))
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(t, Condition(function IssueOrder_Conditions))
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    call TriggerAddCondition(t, Condition(function IssuePointOrder_Conditions))
    set t = null
endfunction
