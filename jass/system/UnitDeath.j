function GetTuPu takes integer id returns integer
    if id == $49303056 then
        return $49303155
    endif
    if id == $49303133 then
        return $49303150
    endif
    if id == $49303046 then
        return $49303153
    endif
    if id == $4930304D then
        return $49303151
    endif
    if id == $49303132 then
        return $4930314C
    endif
    if id == $4930304C then
        return $49303152
    endif
    if id == $49303055 then
        return $4930314F
    endif
    if id == $4930304E then
        return $4930314D
    endif
    if id == $49303043 then
        return $4930314B
    endif
    if id == $49303052 then
        return $4930314E
    endif
    if id == $49303057 then
        return $49303154
    endif
    return 0
endfunction
function npcRevive takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local real x = LoadReal(YDHT, GetHandleId(t), 0)
    local real y = LoadReal(YDHT, GetHandleId(t), 1)
    local integer id = LoadInteger(YDHT, GetHandleId(t), 2)
    call CreateUnit(Player(5), id, x, y, 270)
    call PauseTimer(t)
    call DestroyTimer(t)
    set t = null
endfunction
function UnitDeath_Conditions takes nothing returns boolean
    local unit u = GetKillingUnit()
    local unit ut = GetTriggerUnit()
    local player p = GetOwningPlayer(u)
    local integer i = 1 + GetPlayerId(p)
    local location loc = null
    local timer t = null
    if GetOwningPlayer(ut) == Player(5) then
        call AdjustPlayerStateBJ(R2I(GetRandomReal(wave * 1.8, wave * 2.1)), p, PLAYER_STATE_RESOURCE_GOLD)
        call GroupRemoveUnit(attackerGroup, ut)
    endif
    if GetOwningPlayer(ut) == Player(5) then
        if GetRandomInt(1, 5000) <= luck[i] then
            set loc = GetUnitLoc(ut)
            set luck[i] = luck[i] - 1
            if GetRandomInt(1, 100) <= 100 - wave * 3 then
                call CreateItemLoc(normal_drops[GetRandomInt(1, MAX_NORMAL_DROP)], loc)
            else
                if GetRandomInt(1, 100) <= 100 - wave * 3 / 2 then
                    call CreateItemLoc(rare_drops[GetRandomInt(1, MAX_RARE_DROP)], loc)
                else
                    if GetRandomInt(1, 100) <= 100 - wave * 6 / 5 then
                        call CreateItemLoc(valuable_drops[GetRandomInt(1, MAX_VALUABLE_DROP)], loc)
                    else
                        if GetRandomInt(1, 100) <= 100 - wave * 9 / 8 then
                            call CreateItemLoc(ancient_drops[GetRandomInt(1, MAX_ANCIENT_DROP)], loc)
                        else
                            call CreateItemLoc(epic_drops[GetRandomInt(1, MAX_EPIC_DROP)], loc)
                        endif
                    endif
                endif
            endif
            call RemoveLocation(loc)
        endif
    endif
    if GetUnitTypeId(ut) == boss[1] then
        call AdjustPlayerStateBJ(1, p, PLAYER_STATE_RESOURCE_LUMBER)
        call DisplayTextToPlayer(p, 0, 0, "击杀BOSS,奖励珍稀币1个")
    endif
    if GetUnitTypeId(ut) == boss[2] then
        call AdjustPlayerStateBJ(2, p, PLAYER_STATE_RESOURCE_LUMBER)
        call DisplayTextToPlayer(p, 0, 0, "击杀BOSS,奖励珍稀币2个")
    endif
    if GetUnitTypeId(ut) == boss[3] then
        call AdjustPlayerStateBJ(3, p, PLAYER_STATE_RESOURCE_LUMBER)
        call DisplayTextToPlayer(p, 0, 0, "击杀BOSS,奖励珍稀币3个")
    endif
    if GetUnitTypeId(ut) == boss[4] then
        call AdjustPlayerStateBJ(4, p, PLAYER_STATE_RESOURCE_LUMBER)
        call DisplayTextToPlayer(p, 0, 0, "击杀BOSS,奖励珍稀币4个")
    endif
    if GetUnitTypeId(ut) == boss[5] then
        call AdjustPlayerStateBJ(5, p, PLAYER_STATE_RESOURCE_LUMBER)
        call DisplayTextToPlayer(p, 0, 0, "击杀BOSS,奖励珍稀币5个")
    endif
    if GetUnitTypeId(ut) == survive_boss[1] then
        call AdjustPlayerStateBJ(wave / 9, p, PLAYER_STATE_RESOURCE_LUMBER)
        call DisplayTextToPlayer(p, 0, 0, "击杀BOSS,奖励珍稀币" + I2S(wave / 9) + "个")
    endif
    if GetUnitTypeId(ut) == $48303045 then
        call SetPlayerTechResearched(p, $52303034, 1)
        call DisplayTextToPlayer(p, 0, 0, "恭喜击杀达摩祖师,学会匹夫有责")
    endif
    if GetUnitTypeId(ut) == $48303049 then
        set loc = GetUnitLoc(ut)
        call CreateItemLoc(GetTuPu(random_shenqi[GetRandomInt(1, open_shenqi)]), loc)
        call RemoveLocation(loc)
    endif
    if GetUnitTypeId(ut) == $55303055 then
        call CreateItem(juenei[GetRandomInt(1, 4)], GetUnitX(ut), GetUnitY(ut))
    endif
    if GetUnitTypeId(ut) == $4830304A then
        set loc = GetUnitLoc(ut)
        call CreateItemLoc($4930314A, loc)
        call RemoveLocation(loc)
    endif
    if GetUnitTypeId(ut) == $55303051 or GetUnitTypeId(ut) == $55303052 or GetUnitTypeId(ut) == $55303053 or GetUnitTypeId(ut) == $55303054 then
        set t = CreateTimer()
        call SaveReal(YDHT, GetHandleId(t), 0, GetUnitX(ut))
        call SaveReal(YDHT, GetHandleId(t), 1, GetUnitY(ut))
        call SaveInteger(YDHT, GetHandleId(t), 2, GetUnitTypeId(ut))
        call TimerStart(t, 30, false, function npcRevive)
    endif
    call FlushChildHashtable(YDHT, GetHandleId(u))
    set u = null
    set ut = null
    set p = null
    set loc = null
    set t = null
    return false
endfunction
function UnitDeath takes nothing returns nothing
    local trigger t = CreateTrigger()
    set luck[1] = 20
    set luck[2] = 20
    set luck[3] = 20
    set luck[4] = 20
    set normal_drops[1] = $49303034
    set normal_drops[2] = $49303045
    set normal_drops[3] = $49303050
    set normal_drops[4] = $49303047
    set normal_drops[5] = $49303058
    set rare_drops[1] = $49303042
    set rare_drops[2] = $49303048
    set rare_drops[3] = $4930304F
    set rare_drops[4] = $49303035
    set rare_drops[5] = $49303059
    set valuable_drops[1] = $49303041
    set valuable_drops[2] = $49303049
    set valuable_drops[3] = $49303036
    set valuable_drops[4] = $49303038
    set valuable_drops[5] = $4930305A
    set valuable_drops[6] = $49303136
    set ancient_drops[1] = $49303039
    set ancient_drops[2] = $4930304A
    set ancient_drops[3] = $49303051
    set ancient_drops[4] = $49303053
    set ancient_drops[5] = $49303130
    set epic_drops[1] = $49303044
    set epic_drops[2] = $4930304B
    set epic_drops[3] = $49303037
    set epic_drops[4] = $49303054
    set epic_drops[5] = $49303131
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(t, Condition(function UnitDeath_Conditions))
    set t = null
endfunction
