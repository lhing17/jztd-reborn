// 装备系统
globals
    // 词缀
    string array affixTitle
    string array affixDesc
    integer array affixMin
    integer array affixMax
    constant integer AFFIX_COUNT = 22
endglobals




function equipKillingEffectByAttr takes unit u, integer attr, integer value returns nothing
    if attr == 12 then
        // 击杀-瞄准 击杀敌人时，加命中
        call SaveInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_HIT_KEY, LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_HIT_KEY) + value)
    elseif attr == 13 then
        // 击杀-蓄力 击杀敌人时，加武学伤害
        call SaveReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_DAMAGE_KEY, LoadReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_DAMAGE_KEY) + value * 0.001)
    elseif attr == 14 then
        // 击杀-狂暴 击杀敌人时，加暴击倍数
        call SaveReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_CRITICAL_ADDITION_KEY, LoadReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_CRITICAL_ADDITION_KEY) + value * 0.01)
    elseif attr == 15 then
        // 击杀-赏金 击杀敌人时，加金钱
        call AdjustPlayerStateBJ(value, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
    elseif attr == 16 then
        // 击杀-回复 击杀敌人时，回复内力
        call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) + value * 0.01 * GetUnitState(u, UNIT_STATE_MAX_MANA))
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl", u, "origin"))
    elseif attr == 17 then
        // 击杀-封穴
        call SaveBoolean(TOWER_ATTR_HT, GetHandleId(u), TOWER_SEAL_KEY, true)
    endif
endfunction

function equipKillingEffect takes unit u, item it returns nothing
    local integer attr = 0
    local integer value = 0
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY) != 0 then
        set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY)
        set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_VALUE_KEY)
        call equipKillingEffectByAttr(u, attr, value)
    endif
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY) != 0 then
        set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY)
        set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_VALUE_KEY)
        call equipKillingEffectByAttr(u, attr, value)
    endif
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY) != 0 then
        set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY)
        set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_VALUE_KEY)
        call equipKillingEffectByAttr(u, attr, value)
    endif
endfunction

function equipWaveStartEffectByAttr takes unit u, integer attr, integer value returns nothing
    local item it = null
    local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
    local location loc = null
    if attr == 18 then
        // 激励-赏金 金钱+1000
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
    elseif attr == 19 then
        // 激励-回复 塔内力回满
        call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MAX_MANA))
    elseif attr == 20 then
        // 激励-成长 获得1000点经验（仅英雄有效）
        if IsUnitType(u, UNIT_TYPE_HERO) then
            call AddHeroXP(u, 1000, false)
        endif
    elseif attr == 21 then
        // 激励-丰收 20%概率获得一件随机品质的武器
        if GetRandomInt(0, 10) <= 2 then
            set loc = GetRandomLocInRect(udg_drop_rect[i])
            set it = CreateItemLoc(getRandomDrop(), loc)
            call generateRandomAttr(it)
            call RemoveLocation(loc)
        endif
    elseif attr == 22 then
        // 激励-武魂 20%概率额外获得1个随机品质的武魂石
        if GetRandomInt(0, 10) <= 2 then
            set loc = GetRandomLocInRect(udg_drop_rect[i])
            call CreateItemLoc(getRandomSoulStone(1 + GetPlayerId(GetOwningPlayer(u))), loc)
            call RemoveLocation(loc)
        endif

    endif
    set it = null
    set loc = null

endfunction


function equipWaveStartEffect takes unit u, item it returns nothing
    local integer attr = 0
    local integer value = 0
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY) != 0 then
        set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY)
        set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_VALUE_KEY)
        call equipWaveStartEffectByAttr(u, attr, value)
    endif
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY) != 0 then
        set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY)
        set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_VALUE_KEY)
        call equipWaveStartEffectByAttr(u, attr, value)
    endif
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY) != 0 then
        set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY)
        set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_VALUE_KEY)
        call equipWaveStartEffectByAttr(u, attr, value)
    endif

endfunction


function initEquip takes nothing returns nothing
    set affixTitle[1] = "增益-疾速"
    set affixDesc[1] = "攻击速度+"
    set affixMin[1] = 5
    set affixMax[1] = 30

    set affixTitle[2] = "增益-练气"
    set affixDesc[2] = "内力上限+"
    set affixMin[2] = 20
    set affixMax[2] = 200

    set affixTitle[3] = "增益-冥思"
    set affixDesc[3] = "内力回复速度+"
    set affixMin[3] = 1
    set affixMax[3] = 10

    set affixTitle[4] = "增益-吼叫"
    set affixDesc[4] = "攻击力+"
    set affixMin[4] = 1000
    set affixMax[4] = 3000

    set affixTitle[5] = "增益-瞄准"
    set affixDesc[5] = "命中+"
    set affixMin[5] = 100
    set affixMax[5] = 500

    set affixTitle[6] = "增益-蓄力"
    set affixDesc[6] = "武学伤害+"
    set affixMin[6] = 5
    set affixMax[6] = 100

    set affixTitle[7] = "增益-狂暴"
    set affixDesc[7] = "武学暴击率+"
    set affixMin[7] = 2
    set affixMax[7] = 20

    set affixTitle[8] = "增益-连击"
    set affixDesc[8] = "连击概率+"
    set affixMin[8] = 2
    set affixMax[8] = 20

    set affixTitle[9] = "增益-破甲"
    set affixDesc[9] = "破防概率+"
    set affixMin[9] = 2
    set affixMax[9] = 20

    set affixTitle[10] = "增益-冷静"
    set affixDesc[10] = "冷却缩减+"
    set affixMin[10] = 5
    set affixMax[10] = 50

    set affixTitle[11] = "增益-连贯"
    set affixDesc[11] = "重置CD概率+"
    set affixMin[11] = 2
    set affixMax[11] = 20

    set affixTitle[12] = "击杀-瞄准"
    set affixDesc[12] = "击杀敌人时，命中+" // 10-50
    set affixMin[12] = 10
    set affixMax[12] = 50

    set affixTitle[13] = "击杀-蓄力"
    set affixDesc[13] = "击杀敌人时，武学伤害+" // 0.1-1
    set affixMin[13] = 1
    set affixMax[13] = 10

    set affixTitle[14] = "击杀-狂暴"
    set affixDesc[14] = "击杀敌人时，武学暴击倍数+" // 1-5%
    set affixMin[14] = 1
    set affixMax[14] = 5

    set affixTitle[15] = "击杀-赏金"
    set affixDesc[15] = "击杀敌人时，额外获得金钱+" // 10-50
    set affixMin[15] = 10
    set affixMax[15] = 50

    set affixTitle[16] = "击杀-回复"
    set affixDesc[16] = "击杀敌人时，回复内力+" // 1-20
    set affixMin[16] = 1
    set affixMax[16] = 20

    set affixTitle[17] = "击杀-封穴"
    set affixDesc[17] = "击杀敌人时，下次伤害附带封穴效果"
    set affixMin[17] = 0
    set affixMax[17] = 0

    set affixTitle[18] = "激励-赏金"
    set affixDesc[18] = "每波开始时，额外获得金钱+1000"
    set affixMin[18] = 0
    set affixMax[18] = 0

    set affixTitle[19] = "激励-回复"
    set affixDesc[19] = "每波开始时，回满内力"
    set affixMin[19] = 0
    set affixMax[19] = 0

    set affixTitle[20] = "激励-成长"
    set affixDesc[20] = "每波开始时，额外获得1000点经验（仅对英雄有效）"
    set affixMin[20] = 0
    set affixMax[20] = 0

    set affixTitle[21] = "激励-丰收"
    set affixDesc[21] = "每波开始时，20%概率额外获得1件随机品质的武器"
    set affixMin[21] = 0
    set affixMax[21] = 0

    set affixTitle[22] = "激励-武魂"
    set affixDesc[22] = "每波开始时，20%概率额外获得1个随机品质的武魂石"
    set affixMin[22] = 0
    set affixMax[22] = 0

endfunction

