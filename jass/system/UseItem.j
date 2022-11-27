function LearnKungfu takes unit u, item it returns nothing
    local integer abilityId = 0
    local integer i = 1
    if not IsUnitType(u, UNIT_TYPE_HERO) then
        call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|CFFFF0000只有英雄单位可以学习绝世武功")
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
    if GetItemTypeId(it) == 'I022' or GetItemTypeId(it) == 'I023' or GetItemTypeId(it) == 'I024' or GetItemTypeId(it) == 'I025' or GetItemTypeId(it) == 'I068' then
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
