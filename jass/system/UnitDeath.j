function GetTuPu takes integer id returns integer
    if id == 'I00V' then
        return 'I01U'
    endif
    if id == 'I013' then
        return 'I01P'
    endif
    if id == 'I00F' then
        return 'I01S'
    endif
    if id == 'I00M' then
        return 'I01Q'
    endif
    if id == 'I012' then
        return 'I01L'
    endif
    if id == 'I00L' then
        return 'I01R'
    endif
    if id == 'I00U' then
        return 'I01O'
    endif
    if id == 'I00N' then
        return 'I01M'
    endif
    if id == 'I00C' then
        return 'I01K'
    endif
    if id == 'I00R' then
        return 'I01N'
    endif
    if id == 'I00W' then
        return 'I01T'
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

    // 击杀单位获得功勋
    if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
        call SaveInteger(CONT_HT, GetHandleId(u), CONT_KEY, LoadInteger(CONT_HT, GetHandleId(u), CONT_KEY) + 1)
        // 内力上限加5
        call YDWEGeneralBounsSystemUnitSetBonus(u, 1, 0, CONT_MANA_ADDITION)
    endif
        

    // 击杀小怪获得金钱
    if GetOwningPlayer(ut) == Player(5) then
        call AdjustPlayerStateBJ(R2I(GetRandomReal(wave * 1.8, wave * 2.1)), p, PLAYER_STATE_RESOURCE_GOLD)
        call GroupRemoveUnit(attackerGroup, ut)
    endif

    // 击杀小怪随机掉落物品
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

    // 击杀达摩祖师,学会匹夫有责
    if GetUnitTypeId(ut) == 'H00E' then
        call SetPlayerTechResearched(p, 'R004', 1)
        call DisplayTextToPlayer(p, 0, 0, "恭喜击杀达摩祖师,学会匹夫有责")
    endif

    // 击杀冯默风获得随机神器图谱
    if GetUnitTypeId(ut) == 'H00I' then
        set loc = GetUnitLoc(ut)
        call CreateItemLoc(GetTuPu(random_shenqi[GetRandomInt(1, open_shenqi)]), loc)
        call RemoveLocation(loc)
    endif

    // 击杀黄裳获取随机绝内
    if GetUnitTypeId(ut) == 'U00U' then
        call CreateItem(juenei[GetRandomInt(1, 4)], GetUnitX(ut), GetUnitY(ut))
    endif

    // 击杀朱聪获得妙手空空手套
    if GetUnitTypeId(ut) == 'H00J' then
        set loc = GetUnitLoc(ut)
        call CreateItemLoc('I01J', loc)
        call DisplayTextToPlayer(p, 0, 0, "恭喜击杀朱聪，获得|cFF00FF00妙手空空手套|r")
        call RemoveLocation(loc)
    endif
    if GetUnitTypeId(ut) == 'U00Q' or GetUnitTypeId(ut) == 'U00R' or GetUnitTypeId(ut) == 'U00S' or GetUnitTypeId(ut) == 'U00T' then
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
    set normal_drops[1] = 'I004'
    set normal_drops[2] = 'I00E'
    set normal_drops[3] = 'I00P'
    set normal_drops[4] = 'I00G'
    set normal_drops[5] = 'I00X'
    set rare_drops[1] = 'I00B'
    set rare_drops[2] = 'I00H'
    set rare_drops[3] = 'I00O'
    set rare_drops[4] = 'I005'
    set rare_drops[5] = 'I00Y'
    set valuable_drops[1] = 'I00A'
    set valuable_drops[2] = 'I00I'
    set valuable_drops[3] = 'I006'
    set valuable_drops[4] = 'I008'
    set valuable_drops[5] = 'I00Z'
    set valuable_drops[6] = 'I016'
    set ancient_drops[1] = 'I009'
    set ancient_drops[2] = 'I00J'
    set ancient_drops[3] = 'I00Q'
    set ancient_drops[4] = 'I00S'
    set ancient_drops[5] = 'I010'
    set epic_drops[1] = 'I00D'
    set epic_drops[2] = 'I00K'
    set epic_drops[3] = 'I007'
    set epic_drops[4] = 'I00T'
    set epic_drops[5] = 'I011'
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(t, Condition(function UnitDeath_Conditions))
    set t = null
endfunction