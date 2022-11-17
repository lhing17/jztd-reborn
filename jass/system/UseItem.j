function LearnKungfu takes unit u, item it returns nothing
    local integer abilityId = 0
    local integer i = 1
    if not IsUnitType(u, UNIT_TYPE_HERO) then
        call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|CFFFF0000只有掌门可以学习绝世武功")
        call UnitAddItemById(u, GetItemTypeId(it))
        return
    endif
    if GetUnitLevel(u) < 20 then
        call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|CFFFF0000只有20级以上才可以学习")
        call UnitAddItemById(u, GetItemTypeId(it))
        return
    endif
    set abilityId = LoadInteger(YDHT, GetItemTypeId(it), 65244)
    if GetUnitAbilityLevel(u, abilityId) > 0 then
        call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|CFFFF0000您已经拥有此武功了")
        call UnitAddItemById(u, GetItemTypeId(it))
        return
    endif


    loop
        exitwhen i >= 11
        if LoadInteger(YDHT, GetHandleId(u) * 2, i) == 0 then
            call SaveInteger(YDHT, GetHandleId(u) * 2, i, abilityId)
            call SaveInteger(YDHT, GetHandleId(u) * 3, i, 1)
            exitwhen true
        endif
        set i = i + 1
    endloop

    call UnitAddAbility(u, abilityId)
    if abilityId == 'A03P' then
        call UnitAddAbility(u, 'A03S')
    endif
    call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|CFF99CC00恭喜" + GetUnitName(u) + "学会" + GetObjectName(abilityId))
endfunction

function europaGift takes unit u returns nothing
    local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
    local integer rand = GetRandomInt(1, 1000)
    local integer rand2 = GetRandomInt(1, 100)
    local integer array x
    local integer array y
    local integer id
    local item it = null

    if rand == 666 and not hasWisdomBall[i] then
        set wisbomBall[i] = CreateUnit(Player(i - 1), 'o00R', wisdomBallX[i], wisdomBallY[i], 270)
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|CFF99CC00玩家" + GetPlayerName(Player(i - 1)) + "人品大爆发，欧皇大礼包开出了|CFF00FF00智慧之球")
        set hasWisdomBall[i] = true
    elseif rand < 300 then
        set id = getRandomSoulStone(i)
        call UnitAddItemById(u, id)
        call DisplayTimedTextToPlayer(GetOwningPlayer(u), 0, 0, 10, "|CFF99CC00恭喜获得|CFF00FF00" + GetObjectName(id))
    elseif rand < 600 then
        set id = getRandomDrop()
        set it = CreateItem(id, GetUnitX(u), GetUnitY(u))
        call generateRandomAttr(it)
        call tryUnitAddItem(u, it)
        call DisplayTimedTextToPlayer(GetOwningPlayer(u), 0, 0, 10, "|CFF99CC00恭喜获得|CFF00FF00" + GetObjectName(id))
    elseif rand < 700 then
        set id = GetRandomInt(1, 4)
        call addLumber(Player(i - 1), id)
        call DisplayTimedTextToPlayer(GetOwningPlayer(u), 0, 0, 10, "|CFF99CC00恭喜获得|CFF00FF00" + I2S(id) + "个珍稀币")
    elseif rand < 998 then
        set id = GetRandomInt(1, 4000)
        call addGold(Player(i - 1), id)
        call DisplayTimedTextToPlayer(GetOwningPlayer(u), 0, 0, 10, "|CFF99CC00恭喜获得|CFFFFFF00" + I2S(id) + "个金币")
    else
        set id = random_shenqi[GetRandomInt(1, open_shenqi)]
        set it = CreateItem(id, GetUnitX(u), GetUnitY(u))
        call generateRandomAttr(it)
        call tryUnitAddItem(u, it)
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|CFF99CC00玩家" + GetPlayerName(GetOwningPlayer(u)) + "人品大爆发，欧皇大礼包开出了|CFF00FF00" + GetObjectName(id))
    endif
    if rand2 <= 10 then
        call UnitAddItemById(u, 'I061')
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|CFF99CC00玩家" + GetPlayerName(Player(i - 1)) + "人品大爆发，欧皇大礼包开出了|CFF00FF00再来一包")
    endif
    set it = null
endfunction

function UseItem_Conditions takes nothing returns boolean
    local unit u = GetTriggerUnit()
    local item it = GetManipulatedItem()
    local integer i = 0
    local integer j = 1 + GetPlayerId(GetOwningPlayer(u))
    local integer tw = getTowerInstance(u)
    local integer id = 0
    if GetItemTypeId(it) == 'I01B' then
        if GetUnitAbilityLevel(s__Tower_u[tw], 'A011') >= 6 then
            call UnitAddItemById(u, 'I01B')
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "物品栏已满")
        else
            call s__Tower_setItemNum(tw, GetUnitAbilityLevel(s__Tower_u[tw], 'A011') + 1)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "增加一个物品栏")
        endif
    endif
    if GetItemTypeId(it) == 'I02B' then
        call UnitAddItemById(u, low_towers[GetRandomInt(1, LOW_SIZE)])
    endif
    if GetItemTypeId(it) == 'I02C' then
        call UnitAddItemById(u, normal_towers[GetRandomInt(1, NORMAL_SIZE)])
    endif
    if GetItemTypeId(it) == 'I02D' then
        call UnitAddItemById(u, fine_towers[GetRandomInt(1, FINE_SIZE)])
    endif
    if GetItemTypeId(it) == 'I02E' then
        call UnitAddItemById(u, perfect_towers[GetRandomInt(1, PERFECT_SIZE)])
    endif
    if GetItemTypeId(it) == 'I02L' then
        set id = getRandomSoulStone(j)
        call UnitAddItemById(u, id)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffff9933恭喜鉴定成功，获得|r" + GetObjectName(id))
    endif
    if GetItemTypeId(it) == 'I014' then
        call SaveUnitHandle(YDHT, GetHandleId(wugong_practice[j]), j, u)
        set i = 0
        loop
            exitwhen i >= 11
            set practice_wugong[i + 20 * j] = null
            if LoadInteger(YDHT, GetHandleId(u) * 3, i) < LoadInteger(YDHT, LoadInteger(YDHT, GetHandleId(u) * 2, i) * 3, 0) then
                set practice_wugong[i + 20 * j] = DialogAddButtonBJ(wugong_practice[j], GetAbilityName(LoadInteger(YDHT, GetHandleId(u) * 2, i)))
            endif
            set i = i + 1
        endloop
        set practice_wugong[11 + 20 * j] = DialogAddButtonBJ(wugong_practice[j], "取消")
        call DialogDisplay(GetOwningPlayer(u), wugong_practice[j], true)
    endif
    if GetItemTypeId(it) == 'I022' or GetItemTypeId(it) == 'I023' or GetItemTypeId(it) == 'I024' or GetItemTypeId(it) == 'I025' then
        call LearnKungfu(u, it)
    endif

    // 开启欧皇大礼包
    if GetItemTypeId(it) == 'I061' then
        call europaGift(u)
    endif

    // 易筋洗髓丹，使用后等级+1
    if GetItemTypeId(it) == 'I067' then
        if IsUnitType(u, UNIT_TYPE_HERO) then
            call SetHeroLevel(u, GetHeroLevel(u) + 1, true)
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffff0000只有英雄才能使用|r")
            call UnitAddItemById(u, 'I067')
        endif
    endif
    set u = null
    set it = null
    return false
endfunction
function Dialog_Actions takes nothing returns nothing
    local button bt = GetClickedButton()
    local integer j = 1 + GetPlayerId(GetTriggerPlayer())
    local unit u = LoadUnitHandle(YDHT, GetHandleId(wugong_practice[j]), j)
    local integer i = 20 * j
    local integer tw = getTowerInstance(u)
    set i = 20 * j
    loop
        exitwhen i >= 11 + 20 * j
        if bt == practice_wugong[i] then
            call s__Tower_IncAbility(tw, i - 20 * j)
            call DialogClear(wugong_practice[j])
            return
        endif
        set i = i + 1
    endloop
    if bt == practice_wugong[11 + 20 * j] then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "已取消")
        call UnitAddItemById(u, 'I014')
    endif
    call DialogClear(wugong_practice[j])
    set u = null
    set bt = null
endfunction
function UseItem takes nothing returns nothing
    local trigger t = CreateTrigger()
    local integer i = 0
    
    set low_towers[1] = 'I02F'
    set low_towers[2] = 'I02N'
    set low_towers[3] = 'I02O'
    set low_towers[4] = 'I02P'
    set low_towers[5] = 'I02Q'
    set low_towers[6] = 'I02R'
    set low_towers[7] = 'I02S'
    set low_towers[8] = 'I02T'
    set low_towers[9] = 'I037'
    set low_towers[10] = 'I038'
    set low_towers[11] = 'I039'
    set low_towers[12] = 'I03A'
    set low_towers[13] = 'I03B'
    set low_towers[14] = 'I03C'
    set low_towers[15] = 'I03D'
    set low_towers[16] = 'I03E'
    set low_towers[17] = 'I03G'
    set low_towers[18] = 'I03X'
    set low_towers[19] = 'I03Y'
    set low_towers[20] = 'I03Z'
    set low_towers[21] = 'I040'
    set low_towers[22] = 'I041'
    set low_towers[23] = 'I042'
    set low_towers[24] = 'I043'
    set low_towers[25] = 'I044'
    set low_towers[26] = 'I045'
    set low_towers[27] = 'I046'
    set low_towers[28] = 'I047'
    set low_towers[29] = 'I04B'
    set low_towers[30] = 'I04N'
    set low_towers[31] = 'I04O'
    set low_towers[32] = 'I04P'
    set low_towers[33] = 'I04Q'
    set low_towers[34] = 'I04R'
    set low_towers[35] = 'I04V'
    set low_towers[36] = 'I04W'
    set low_towers[37] = 'I04X'
    set low_towers[38] = 'I04Y'
    set low_towers[39] = 'I04Z'
    set low_towers[40] = 'I050'
    set low_towers[41] = 'I05D'
    set low_towers[42] = 'I05E'
    set low_towers[43] = 'I05F'
    set low_towers[44] = 'I05G'
    set low_towers[45] = 'I05H'
    set low_towers[46] = 'I05I'
    set low_towers[47] = 'I05J'
    set low_towers[48] = 'I05X'

    set normal_towers[1] = 'I02G'
    set normal_towers[2] = 'I02U'
    set normal_towers[3] = 'I02V'
    set normal_towers[4] = 'I02W'
    set normal_towers[5] = 'I02X'
    set normal_towers[6] = 'I02Z'
    set normal_towers[7] = 'I03F'
    set normal_towers[8] = 'I03H'
    set normal_towers[9] = 'I03J'
    set normal_towers[10] = 'I03K'
    set normal_towers[11] = 'I03M'
    set normal_towers[12] = 'I03N'
    set normal_towers[13] = 'I03P'
    set normal_towers[14] = 'I03S'
    set normal_towers[15] = 'I048'
    set normal_towers[16] = 'I049'
    set normal_towers[17] = 'I04A'
    set normal_towers[18] = 'I04C'
    set normal_towers[19] = 'I04D'
    set normal_towers[20] = 'I04E'
    set normal_towers[21] = 'I04G'
    set normal_towers[22] = 'I04S'
    set normal_towers[23] = 'I04T'
    set normal_towers[24] = 'I051'
    set normal_towers[25] = 'I052'
    set normal_towers[26] = 'I054'
    set normal_towers[27] = 'I05K'
    set normal_towers[28] = 'I05L'
    set normal_towers[29] = 'I05M'
    set normal_towers[30] = 'I05N'
    set normal_towers[31] = 'I05P'
    set normal_towers[32] = 'I05R'
    set normal_towers[33] = 'I05W'
    set normal_towers[34] = 'I05Y'

    set fine_towers[1] = 'I02H'
    set fine_towers[2] = 'I02Y'
    set fine_towers[3] = 'I030'
    set fine_towers[4] = 'I031'
    set fine_towers[5] = 'I033'
    set fine_towers[6] = 'I035'
    set fine_towers[7] = 'I03I'
    set fine_towers[8] = 'I03L'
    set fine_towers[9] = 'I03O'
    set fine_towers[10] = 'I03Q'
    set fine_towers[11] = 'I03T'
    set fine_towers[12] = 'I04F'
    set fine_towers[13] = 'I04H'
    set fine_towers[14] = 'I04I'
    set fine_towers[15] = 'I04J'
    set fine_towers[16] = 'I04U'
    set fine_towers[17] = 'I053'
    set fine_towers[18] = 'I055'
    set fine_towers[19] = 'I056'
    set fine_towers[20] = 'I057'
    set fine_towers[21] = 'I058'
    set fine_towers[22] = 'I059'
    set fine_towers[23] = 'I05A'
    set fine_towers[24] = 'I05O'
    set fine_towers[25] = 'I05Q'
    set fine_towers[26] = 'I05S'
    set fine_towers[27] = 'I05Z'

    set perfect_towers[1] = 'I02I'
    set perfect_towers[2] = 'I032'
    set perfect_towers[3] = 'I034'
    set perfect_towers[4] = 'I036'
    set perfect_towers[5] = 'I03R'
    set perfect_towers[6] = 'I03U'
    set perfect_towers[7] = 'I03V'
    set perfect_towers[8] = 'I03W'
    set perfect_towers[9] = 'I04K'
    set perfect_towers[10] = 'I04L'
    set perfect_towers[11] = 'I04M'
    set perfect_towers[12] = 'I05B'
    set perfect_towers[13] = 'I05C'
    set perfect_towers[14] = 'I05T'
    set perfect_towers[15] = 'I05U'
    set perfect_towers[16] = 'I05V'
    set perfect_towers[17] = 'I060'

    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
    call TriggerAddCondition(t, Condition(function UseItem_Conditions))
    set t = CreateTrigger()
    set i = 1
    loop
        exitwhen i >= 5
        set wugong_practice[i] = DialogCreate()
        call TriggerRegisterDialogEvent(t, wugong_practice[i])
        set i = i + 1
    endloop
    call TriggerAddAction(t, function Dialog_Actions)
    set t = null
endfunction
