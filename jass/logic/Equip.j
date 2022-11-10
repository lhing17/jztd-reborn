// 装备系统
globals
    // 词缀
    string array affixTitle
    string array affixDesc
    integer array affixMin
    integer array affixMax
    constant integer AFFIX_COUNT = 22
endglobals

function generateRandomAttr takes item it, integer count returns nothing
    local integer handleId = GetHandleId(it)

    // 从词缀中随机选取count个
    local integer array affixIndex
    local integer i = 1
    local integer temp = 0
    local integer j = 0
    local integer rand = 0
    loop
        exitwhen i > AFFIX_COUNT
        set affixIndex[i] = i
        set i = i + 1
    endloop

    set i = AFFIX_COUNT
    loop
        exitwhen i < 1
        set j = GetRandomInt(1, i - 1)
        set temp = affixIndex[i]
        set affixIndex[i] = affixIndex[j]
        set affixIndex[j] = temp
        set i = i - 1
    endloop

    if count >= 1 then
        call SaveInteger(EQUIP_ATTR_HT, handleId, EQUIP_ATTR1_TYPE_KEY, affixIndex[1])
        call SaveInteger(EQUIP_ATTR_HT, handleId, EQUIP_ATTR1_VALUE_KEY, GetRandomInt(affixMin[affixIndex[1]], affixMax[affixIndex[1]]))
    endif

    if count >= 2 then
        call SaveInteger(EQUIP_ATTR_HT, handleId, EQUIP_ATTR2_TYPE_KEY, affixIndex[2])
        call SaveInteger(EQUIP_ATTR_HT, handleId, EQUIP_ATTR2_VALUE_KEY, GetRandomInt(affixMin[affixIndex[2]], affixMax[affixIndex[2]]))
    endif

    if count >= 3 then
        call SaveInteger(EQUIP_ATTR_HT, handleId, EQUIP_ATTR3_TYPE_KEY, affixIndex[3])
        call SaveInteger(EQUIP_ATTR_HT, handleId, EQUIP_ATTR3_VALUE_KEY, GetRandomInt(affixMin[affixIndex[3]], affixMax[affixIndex[3]]))
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
    set affixMin[8] = 10
    set affixMax[8] = 50

    set affixTitle[9] = "增益-破甲"
    set affixDesc[9] = "破防概率+"
    set affixMin[9] = 10
    set affixMax[9] = 50

    set affixTitle[10] = "增益-冷静"
    set affixDesc[10] = "冷却缩减+"
    set affixMin[10] = 5
    set affixMax[10] = 50

    set affixTitle[11] = "增益-连贯"
    set affixDesc[11] = "重置CD概率+"
    set affixMin[11] = 2
    set affixMax[11] = 20

    set affixTitle[12] = "击杀-瞄准"
    set affixDesc[12] = "击杀敌人时，命中+" // 1-10
    set affixMin[12] = 1
    set affixMax[12] = 10

    set affixTitle[13] = "击杀-蓄力"
    set affixDesc[13] = "击杀敌人时，武学伤害+" // 0.1-1
    set affixMin[13] = 1
    set affixMax[13] = 10

    set affixTitle[14] = "击杀-狂暴"
    set affixDesc[14] = "击杀敌人时，武学暴击+" // 1-5
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
    set affixDesc[18] = "每波结束时，额外获得金钱+200"
    set affixMin[18] = 0
    set affixMax[18] = 0

    set affixTitle[19] = "激励-回复"
    set affixDesc[19] = "每波结束时，回满内力"
    set affixMin[19] = 0
    set affixMax[19] = 0

    set affixTitle[20] = "激励-成长"
    set affixDesc[20] = "每波结束时，额外获得1000点经验（仅对英雄有效）"
    set affixMin[20] = 0
    set affixMax[20] = 0

    set affixTitle[21] = "激励-丰收"
    set affixDesc[21] = "每波结束时，额外获得1件随机品质的武器"
    set affixMin[21] = 0
    set affixMax[21] = 0

    set affixTitle[22] = "激励-武魂"
    set affixDesc[22] = "每波结束时，20%概率额外获得1个随机品质的武魂石"
    set affixMin[22] = 0
    set affixMax[22] = 0

endfunction

