function LearnKungfu takes unit u, item it returns nothing
    local integer abilityId = 0
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
    call UnitAddAbility(u, abilityId)
    if abilityId == 'A03P' then
        call UnitAddAbility(u, 'A03S')
    endif
    call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|CFF99CC00恭喜" + GetUnitName(u) + "学会" + GetObjectName(abilityId))
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
        call UnitAddItemById(u, low_towers[GetRandomInt(1, low_size)])
    endif
    if GetItemTypeId(it) == 'I02C' then
        call UnitAddItemById(u, normal_towers[GetRandomInt(1, normal_size)])
    endif
    if GetItemTypeId(it) == 'I02D' then
        call UnitAddItemById(u, fine_towers[GetRandomInt(1, fine_size)])
    endif
    if GetItemTypeId(it) == 'I02E' then
        call UnitAddItemById(u, perfect_towers[GetRandomInt(1, perfect_size)])
    endif
    if GetItemTypeId(it) == 'I02L' then
        if GetRandomInt(1, 100) <= 10 then
            set id = 'I02E'
        elseif GetRandomInt(1, 90) <= 20 then
            set id = 'I02D'
        elseif GetRandomInt(1, 70) <= 30 then
            set id = 'I02C'
        else
            set id = 'I02B'
        endif
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
    set normal_towers[1] = 'I02G'
    set fine_towers[1] = 'I02H'
    set perfect_towers[1] = 'I02I'
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