function initNeutralStructures takes nothing returns nothing
    call SaveInteger(NHT, 'O11L', 0, 'I11L')
    call SaveInteger(NHT, 'O11H', 0, 'I11H')
    call SaveInteger(NHT, 'O109', 0, 'I109')
    call SaveInteger(NHT, 'O106', 0, 'I106')
    call SaveInteger(NHT, 'O10E', 0, 'I10E')
    call SaveInteger(NHT, 'O10G', 0, 'I10G')
    call SaveInteger(NHT, 'O11A', 0, 'I11A')
    call SaveInteger(NHT, 'O104', 0, 'I104')
    call SaveInteger(NHT, 'O11E', 0, 'I11E')
    call SaveInteger(NHT, 'O10V', 0, 'I10V')
    call SaveInteger(NHT, 'O117', 0, 'I117')
    call SaveInteger(NHT, 'O11I', 0, 'I11I')
    call SaveInteger(NHT, 'O10A', 0, 'I10A')
    call SaveInteger(NHT, 'O10H', 0, 'I10H')
    call SaveInteger(NHT, 'O10Z', 0, 'I10Z')
    call SaveInteger(NHT, 'O10M', 0, 'I10M')
    call SaveInteger(NHT, 'O10P', 0, 'I10P')
    call SaveInteger(NHT, 'O111', 0, 'I111')
    call SaveInteger(NHT, 'O102', 0, 'I102')
    call SaveInteger(NHT, 'O10J', 0, 'I10J')
    call SaveInteger(NHT, 'O101', 0, 'I101')
    call SaveInteger(NHT, 'O10U', 0, 'I10U')
    call SaveInteger(NHT, 'O116', 0, 'I116')
    call SaveInteger(NHT, 'O103', 0, 'I103')
    call SaveInteger(NHT, 'O11B', 0, 'I11B')
    call SaveInteger(NHT, 'O11C', 0, 'I11C')
    call SaveInteger(NHT, 'O11D', 0, 'I11D')
    call SaveInteger(NHT, 'O10W', 0, 'I10W')
    call SaveInteger(NHT, 'O118', 0, 'I118')
    call SaveInteger(NHT, 'O10B', 0, 'I10B')
    call SaveInteger(NHT, 'O11K', 0, 'I11K')
    call SaveInteger(NHT, 'O10R', 0, 'I10R')
    call SaveInteger(NHT, 'O113', 0, 'I113')
    call SaveInteger(NHT, 'O10I', 0, 'I10I')
    call SaveInteger(NHT, 'O10X', 0, 'I10X')
    call SaveInteger(NHT, 'O119', 0, 'I119')
    call SaveInteger(NHT, 'O10O', 0, 'I10O')
    call SaveInteger(NHT, 'O110', 0, 'I110')
    call SaveInteger(NHT, 'O10F', 0, 'I10F')
    call SaveInteger(NHT, 'O10Y', 0, 'I10Y')
    call SaveInteger(NHT, 'O10T', 0, 'I10T')
    call SaveInteger(NHT, 'O115', 0, 'I115')
    call SaveInteger(NHT, 'O10S', 0, 'I10S')
    call SaveInteger(NHT, 'O114', 0, 'I114')
    call SaveInteger(NHT, 'O105', 0, 'I105')
    call SaveInteger(NHT, 'O100', 0, 'I100')
    call SaveInteger(NHT, 'O108', 0, 'I108')
    call SaveInteger(NHT, 'O11J', 0, 'I11J')
    call SaveInteger(NHT, 'O11F', 0, 'I11F')
    call SaveInteger(NHT, 'O10Q', 0, 'I10Q')
    call SaveInteger(NHT, 'O112', 0, 'I112')
    call SaveInteger(NHT, 'O10C', 0, 'I10C')
    call SaveInteger(NHT, 'O10L', 0, 'I10L')
    call SaveInteger(NHT, 'O10D', 0, 'I10D')
    call SaveInteger(NHT, 'O10N', 0, 'I10N')
    call SaveInteger(NHT, 'O107', 0, 'I107')
    call SaveInteger(NHT, 'O11G', 0, 'I11G')
    call SaveInteger(NHT, 'O10K', 0, 'I10K')
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
        call UnitAddItemById(builder[1 + GetPlayerId(p)], getStructItem(GetUnitTypeId(u)))
    endif
    set p = null
    set u = null
    return false
endfunction

function UnitBuiltFinish_Conditions takes nothing returns boolean
    local unit u = GetTriggerUnit()
    local integer level = 0
    if not IsUnitType(u, UNIT_TYPE_HERO) or IsUnitType(u, UNIT_TYPE_STRUCTURE) then
        set level = LoadInteger(YDHT, getStructItem(GetUnitTypeId(u)), TOWER_LEVEL_KEY)
        if level == 1 then
            call SaveEffectHandle(YDHT, GetHandleId(u), $A0B0C0, AddSpecialEffect("war3mapImported\\pinzhi-lan.mdx", GetUnitX(u), GetUnitY(u)))
        elseif level == 2 then
            call SaveEffectHandle(YDHT, GetHandleId(u), $A0B0C0, AddSpecialEffect("war3mapImported\\pinzhi-zi.mdx", GetUnitX(u), GetUnitY(u)))
        elseif level == 3 then
            call SaveEffectHandle(YDHT, GetHandleId(u), $A0B0C0, AddSpecialEffect("war3mapImported\\pinzhi-cheng.mdx", GetUnitX(u), GetUnitY(u)))
        elseif level == 4 then
            call SaveEffectHandle(YDHT, GetHandleId(u), $A0B0C0, AddSpecialEffect("war3mapImported\\pinzhi-hong.mdx", GetUnitX(u), GetUnitY(u)))
        endif
    endif
    set u = null
    return false
endfunction

function UnitBuilt takes nothing returns nothing
    local trigger t = CreateTrigger()
    call initNeutralStructures()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_CONSTRUCT_START)
    call TriggerAddCondition(t, Condition(function UnitBuilt_Conditions))

    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
    call TriggerAddCondition(t, Condition(function UnitBuiltFinish_Conditions))
    set t = null
endfunction
