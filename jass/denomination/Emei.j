function EMeiXinFa takes nothing returns nothing
    local unit u = GetEnumUnit()
    local location loc = GetUnitLoc(u)
    local location loc2 = PolarProjectionBJ(loc, 500, GetUnitFacing(u))
    if GetUnitCurrentOrder(u) == 0 then
        if LoadReal(YDHT, GetHandleId(u), 61440) == 0 and LoadReal(YDHT, GetHandleId(u), 61441) == 0 then
            call IssuePointOrder(u, "attack", - 1800, 810)
        else
            call IssuePointOrder(u, "attack", LoadReal(YDHT, GetHandleId(u), 61440), LoadReal(YDHT, GetHandleId(u), 61441))
        endif
    endif
    if UnitHasBuffBJ(u, 'B004') then
        if GetWidgetLife(u) - GetUnitState(u, UNIT_STATE_MAX_LIFE) * .02 >= 1 then
            call SetWidgetLife(u, GetWidgetLife(u) - GetUnitState(u, UNIT_STATE_MAX_LIFE) * .02)
        else
            call SetWidgetLife(u, 1.)
        endif
    endif
    if UnitHasBuffBJ(u, 'BEsh') then
        if GetWidgetLife(u) - GetUnitState(u, UNIT_STATE_MAX_LIFE) * .001 >= 1 then
            call SetWidgetLife(u, GetWidgetLife(u) - GetUnitState(u, UNIT_STATE_MAX_LIFE) * .001)
        else
            call SetWidgetLife(u, 1.)
        endif
    endif
    if UnitHasBuffBJ(u, 'B013') then
        if GetWidgetLife(u) - GetUnitState(u, UNIT_STATE_MAX_LIFE) * .01 >= 1 then
            call SetWidgetLife(u, GetWidgetLife(u) - GetUnitState(u, UNIT_STATE_MAX_LIFE) * .01)
        else
            call SetWidgetLife(u, 1.)
        endif
    endif
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set u = null
    set loc = null
    set loc2 = null
endfunction
