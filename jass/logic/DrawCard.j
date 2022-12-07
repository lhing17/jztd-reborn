globals
    unit array cardShop
    hashtable CARD_HT = InitHashtable() // 卡牌哈希表，用于存储卡牌的信息
    integer array cardMax
endglobals

function refreshCardResultWidget takes integer i returns nothing
	local integer j = 1
	local integer id = 0
	if Player(i - 1) == GetLocalPlayer() then
        if GetUnitTypeId(unitInSelection[i]) == 'o014' then
            loop
                exitwhen j > cardMax[i]
                set id = LoadInteger(CARD_HT, i, j)
                if id == 0 then
                    call cardResultWidget[j].hide()
                else
                    call cardResultWidget[j].setTexture(YDWEGetObjectPropertyString(YDWE_OBJECT_TYPE_ITEM, id, "Art"))
                    call cardResultWidget[j].show()
                endif
                set j = j + 1
            endloop
        else
            loop
                exitwhen j > cardMax[i]
                call cardResultWidget[j].hide()
                set j = j + 1
            endloop
        endif
	endif
	
endfunction



function lowDrawCard takes integer i returns nothing
    local integer rand = 0
    local integer j = 1
    local integer jmax = cardMax[i]
    local integer id = 0
    local integer array cards
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

        loop
            // 85%概率出现N卡，15%概率出现R卡
            set rand = GetRandomInt(1, 100)
            if rand <= 85 then
                set id = low_towers[GetRandomInt(1, LOW_SIZE)]
            else
                set id = normal_towers[GetRandomInt(1, NORMAL_SIZE)]
            endif
            call SaveInteger(CARD_HT, i, j, id)
            exitwhen id != cards[1] and id != cards[2] and id != cards[3] and id != cards[4]
        endloop
        set cards[j] = id
        set j = j + 1
    endloop
    call refreshCardResultWidget(i)
endfunction

function normalDrawCard takes integer i returns nothing
    local integer rand = 0
    local integer j = 1
    local integer jmax = cardMax[i]
    local integer id = 0
    local integer array cards
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
        loop
            // 38% N卡 57% R卡 5% SR卡
            set rand = GetRandomInt(1, 100)
            if rand <= 38 then
                set id = low_towers[GetRandomInt(1, LOW_SIZE)]
            elseif rand <= 95 then
                set id = normal_towers[GetRandomInt(1, NORMAL_SIZE)]
            else
                set id = fine_towers[GetRandomInt(1, FINE_SIZE)]
            endif
            call SaveInteger(CARD_HT, i, j, id)
            exitwhen id != cards[1] and id != cards[2] and id != cards[3] and id != cards[4]
        endloop
        set cards[j] = id
        set j = j + 1
    endloop
    call refreshCardResultWidget(i)
endfunction

function highDrawCard takes integer i returns nothing
    local integer rand = 0
    local integer j = 1
    local integer jmax = cardMax[i]
    local integer id = 0
    local integer array cards
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
        loop
            // 15% N卡 59% R卡 22% SR卡 4% SSR卡
            set rand = GetRandomInt(1, 100)
            if rand <= 15 then
                set id = low_towers[GetRandomInt(1, LOW_SIZE)]
            elseif rand <= 74 then
                set id = normal_towers[GetRandomInt(1, NORMAL_SIZE)]
            elseif rand <= 96 then
                set id = fine_towers[GetRandomInt(1, FINE_SIZE)]
            else
                set id = perfect_towers[GetRandomInt(1, PERFECT_SIZE)]
            endif
            call SaveInteger(CARD_HT, i, j, id)
            exitwhen id != cards[1] and id != cards[2] and id != cards[3] and id != cards[4]
        endloop
        set cards[j] = id
        set j = j + 1
    endloop
    call refreshCardResultWidget(i)
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
    call UnitAddItemById(builder[i], id)
    call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 5, "|cff00ff00[系统]|r|cff00ff00获得卡牌|r")
    call UnitRemoveAbility(cardShop[i], 'A09C')
    call UnitRemoveAbility(cardShop[i], 'A09D')
    call UnitRemoveAbility(cardShop[i], 'A09E')
    call UnitRemoveAbility(cardShop[i], 'A09F')

    call FlushChildHashtable(CARD_HT, i)
    call refreshCardResultWidget(i)
endfunction


function initDrawCard takes nothing returns nothing
    // 初始化卡牌商店
    set cardShop[1] = gg_unit_o014_0031
    set cardShop[2] = gg_unit_o014_0032
    set cardShop[3] = gg_unit_o014_0033
    set cardShop[4] = gg_unit_o014_0034

    set cardMax[1] = 3
    set cardMax[2] = 3
    set cardMax[3] = 3
    set cardMax[4] = 3

endfunction

