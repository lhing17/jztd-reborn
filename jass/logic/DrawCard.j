globals
    unit array cardShop
    hashtable CARD_HT = InitHashtable() // 卡牌哈希表，用于存储卡牌的信息
endglobals



function lowDrawCard takes integer i returns nothing
    local integer rand = GetRandomInt(1, 100)
    local integer j = 1
    local integer jmax = 4
    // 在卡牌商店里加入3张占位卡（如果解锁了商店物品，则为4张）
    if GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER) < 5 then
        call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 5, "|cff00ff00[系统]|r|cffff0000珍稀币不足|r")
        return
    endif
    call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER) - 5)
    call UnitAddAbility(cardShop[i], 'A09C')
    call UnitAddAbility(cardShop[i], 'A09D')
    call UnitAddAbility(cardShop[i], 'A09E')
    // call UnitAddAbility(cardShop[i], 'A09F')

    call FlushChildHashtable(CARD_HT, i)
    loop
        exitwhen j > jmax
        // 85%概率出现N卡，15%概率出现R卡
        if rand <= 85 then
            call SaveInteger(CARD_HT, i, j, low_towers[GetRandomInt(1, LOW_SIZE)])
        else
            call SaveInteger(CARD_HT, i, j, normal_towers[GetRandomInt(1, NORMAL_SIZE)])
        endif
        set j = j + 1
    endloop
endfunction

function normalDrawCard takes integer i returns nothing
    local integer rand = GetRandomInt(1, 100)
    local integer j = 1
    local integer jmax = 4
    // 在卡牌商店里加入3张占位卡（如果解锁了商店物品，则为4张）
    if GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER) < 20 then
        call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 5, "|cff00ff00[系统]|r|cffff0000珍稀币不足|r")
        return
    endif
    call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER) - 20)
    call UnitAddAbility(cardShop[i], 'A09C')
    call UnitAddAbility(cardShop[i], 'A09D')
    call UnitAddAbility(cardShop[i], 'A09E')
    // call UnitAddAbility(cardShop[i], 'A09F')

    call FlushChildHashtable(CARD_HT, i)
    loop
        exitwhen j > jmax
        // 38% N卡 57% R卡 5% SR卡
        if rand <= 38 then
            call SaveInteger(CARD_HT, i, j, low_towers[GetRandomInt(1, LOW_SIZE)])
        elseif rand <= 95 then
            call SaveInteger(CARD_HT, i, j, normal_towers[GetRandomInt(1, NORMAL_SIZE)])
        else
            call SaveInteger(CARD_HT, i, j, fine_towers[GetRandomInt(1, FINE_SIZE)])
        endif
        set j = j + 1
    endloop
endfunction

function highDrawCard takes integer i returns nothing
    local integer rand = GetRandomInt(1, 100)
    local integer j = 1
    local integer jmax = 4
    // 在卡牌商店里加入3张占位卡（如果解锁了商店物品，则为4张）
    if GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER) < 50 then
        call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 5, "|cff00ff00[系统]|r|cffff0000珍稀币不足|r")
        return
    endif
    call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER) - 50)
    call UnitAddAbility(cardShop[i], 'A09C')
    call UnitAddAbility(cardShop[i], 'A09D')
    call UnitAddAbility(cardShop[i], 'A09E')
    // call UnitAddAbility(cardShop[i], 'A09F')

    call FlushChildHashtable(CARD_HT, i)
    loop
        exitwhen j > jmax
        // 15% N卡 59% R卡 22% SR卡 4% SSR卡
        if rand <= 15 then
            call SaveInteger(CARD_HT, i, j, low_towers[GetRandomInt(1, LOW_SIZE)])
        elseif rand <= 74 then
            call SaveInteger(CARD_HT, i, j, normal_towers[GetRandomInt(1, NORMAL_SIZE)])
        elseif rand <= 96 then
            call SaveInteger(CARD_HT, i, j, fine_towers[GetRandomInt(1, FINE_SIZE)])
        else
            call SaveInteger(CARD_HT, i, j, perfect_towers[GetRandomInt(1, PERFECT_SIZE)])
        endif
        set j = j + 1
    endloop
endfunction

function getCard takes integer i, integer number returns nothing
    local integer id = LoadInteger(CARD_HT, i, number)
    local integer level = LoadInteger(YDHT, id, TOWER_LEVEL_KEY)
    local integer gold = 0
    if level == 1 then
        set gold = 500
    elseif level == 2 then
        set gold = 1000
    elseif level == 3 then
        set gold = 2000
    elseif level == 4 then
        set gold = 5000
    endif
    if GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD) < gold then
        call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 5, "|cff00ff00[系统]|r|cffff0000金币不足|r")
        return
    endif
    call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD) - gold)
    call UnitAddItemById(builder[i],id)
    call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 5, "|cff00ff00[系统]|r|cff00ff00获得卡牌|r")
    call UnitRemoveAbility(cardShop[i], 'A09C')
    call UnitRemoveAbility(cardShop[i], 'A09D')
    call UnitRemoveAbility(cardShop[i], 'A09E')
    call UnitRemoveAbility(cardShop[i], 'A09F')

    call FlushChildHashtable(CARD_HT, i)
endfunction


function initDrawCard takes nothing returns nothing
    // 初始化卡牌商店
    set cardShop[1] = gg_unit_o014_0031
    set cardShop[2] = gg_unit_o014_0032
    set cardShop[3] = gg_unit_o014_0033
    set cardShop[4] = gg_unit_o014_0034

endfunction

