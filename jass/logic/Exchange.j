// 兑换商店
globals
    integer array exchangeItemId
    integer array oneKeyExchangeItemId
    unit array exchangeUnit

    // 当前完成兑换的次数
    integer array exchangeCount

    // 兑换的奖励
    integer array exchangeHit
    real array exchangeCriticalRate
    real array exchangeCriticalDamage
    integer array exchangeStr
    integer array exchangeAgi
    integer array exchangeInt
    real array exchangeManaRecovery
    real array exchangeDamage
    real array exchangeCooldownReduction
    integer array exchangeKillGold
endglobals

function exchangeItem takes integer i, integer id returns nothing
    if id == exchangeItemId[1] then
        set exchangeHit[i] = exchangeHit[i] + 20
    endif
    if id == exchangeItemId[2] then
        set exchangeCriticalRate[i] = exchangeCriticalRate[i] + 0.5
    endif
    if id == exchangeItemId[3] then
        set exchangeCriticalDamage[i] = exchangeCriticalDamage[i] + 0.02
    endif
    if id == exchangeItemId[4] then
        set exchangeStr[i] = exchangeStr[i] + 5
    endif
    if id == exchangeItemId[5] then
        set exchangeAgi[i] = exchangeAgi[i] + 5
    endif
    if id == exchangeItemId[6] then
        set exchangeInt[i] = exchangeInt[i] + 5
    endif
    if id == exchangeItemId[7] then
        set exchangeManaRecovery[i] = exchangeManaRecovery[i] + 0.2
    endif
    if id == exchangeItemId[8] then
        set exchangeDamage[i] = exchangeDamage[i] + 0.005
    endif
    if id == exchangeItemId[9] then
        set exchangeCooldownReduction[i] = exchangeCooldownReduction[i] + 2
    endif
    if id == exchangeItemId[10] then
        set exchangeKillGold[i] = exchangeKillGold[i] + 1
    endif

    if id == exchangeItemId[11] then
        set exchangeHit[i] = exchangeHit[i] + 50
    endif
    if id == exchangeItemId[12] then
        set exchangeCriticalRate[i] = exchangeCriticalRate[i] + 1
    endif
    if id == exchangeItemId[13] then
        set exchangeCriticalDamage[i] = exchangeCriticalDamage[i] + 0.05
    endif
    if id == exchangeItemId[14] then
        set exchangeStr[i] = exchangeStr[i] + 10
    endif
    if id == exchangeItemId[15] then
        set exchangeAgi[i] = exchangeAgi[i] + 10
    endif
    if id == exchangeItemId[16] then
        set exchangeInt[i] = exchangeInt[i] + 10
    endif
    if id == exchangeItemId[17] then
        set exchangeManaRecovery[i] = exchangeManaRecovery[i] + 0.5
    endif
    if id == exchangeItemId[18] then
        set exchangeDamage[i] = exchangeDamage[i] + 0.005
    endif
    if id == exchangeItemId[19] then
        set exchangeCooldownReduction[i] = exchangeCooldownReduction[i] + 2
    endif
    if id == exchangeItemId[20] then
        set exchangeKillGold[i] = exchangeKillGold[i] + 2
    endif

    if id == exchangeItemId[21] then
        set exchangeHit[i] = exchangeHit[i] + 100
    endif
    if id == exchangeItemId[22] then
        set exchangeCriticalRate[i] = exchangeCriticalRate[i] + 2
    endif
    if id == exchangeItemId[23] then
        set exchangeCriticalDamage[i] = exchangeCriticalDamage[i] + 0.1
    endif
    if id == exchangeItemId[24] then
        set exchangeStr[i] = exchangeStr[i] + 20
    endif
    if id == exchangeItemId[25] then
        set exchangeAgi[i] = exchangeAgi[i] + 20
    endif
    if id == exchangeItemId[26] then
        set exchangeInt[i] = exchangeInt[i] + 20
    endif
    if id == exchangeItemId[27] then
        set exchangeManaRecovery[i] = exchangeManaRecovery[i] + 1
    endif
    if id == exchangeItemId[28] then
        set exchangeDamage[i] = exchangeDamage[i] + 0.005
    endif
    if id == exchangeItemId[29] then
        set exchangeCooldownReduction[i] = exchangeCooldownReduction[i] + 2
    endif
    if id == exchangeItemId[30] then
        set exchangeKillGold[i] = exchangeKillGold[i] + 3
    endif

    if id == exchangeItemId[31] then
        set exchangeHit[i] = exchangeHit[i] + 200
    endif
    if id == exchangeItemId[32] then
        set exchangeCriticalRate[i] = exchangeCriticalRate[i] + 4
    endif
    if id == exchangeItemId[33] then
        set exchangeCriticalDamage[i] = exchangeCriticalDamage[i] + 0.2
    endif
    if id == exchangeItemId[34] then
        set exchangeStr[i] = exchangeStr[i] + 40
    endif
    if id == exchangeItemId[35] then
        set exchangeAgi[i] = exchangeAgi[i] + 40
    endif
    if id == exchangeItemId[36] then
        set exchangeInt[i] = exchangeInt[i] + 40
    endif
    if id == exchangeItemId[37] then
        set exchangeManaRecovery[i] = exchangeManaRecovery[i] + 1.5
    endif
    if id == exchangeItemId[38] then
        set exchangeDamage[i] = exchangeDamage[i] + 0.005
    endif
    if id == exchangeItemId[39] then
        set exchangeCooldownReduction[i] = exchangeCooldownReduction[i] + 2
    endif
    if id == exchangeItemId[40] then
        set exchangeKillGold[i] = exchangeKillGold[i] + 4
    endif

    if id == exchangeItemId[41] then
        set exchangeHit[i] = exchangeHit[i] + 400
    endif
    if id == exchangeItemId[42] then
        set exchangeCriticalRate[i] = exchangeCriticalRate[i] + 8
    endif
    if id == exchangeItemId[43] then
        set exchangeCriticalDamage[i] = exchangeCriticalDamage[i] + 0.4
    endif
    if id == exchangeItemId[44] then
        set exchangeStr[i] = exchangeStr[i] + 80
    endif
    if id == exchangeItemId[45] then
        set exchangeAgi[i] = exchangeAgi[i] + 80
    endif
    if id == exchangeItemId[46] then
        set exchangeInt[i] = exchangeInt[i] + 80
    endif
    if id == exchangeItemId[47] then
        set exchangeManaRecovery[i] = exchangeManaRecovery[i] + 2
    endif
    if id == exchangeItemId[48] then
        set exchangeDamage[i] = exchangeDamage[i] + 0.005
    endif
    if id == exchangeItemId[49] then
        set exchangeCooldownReduction[i] = exchangeCooldownReduction[i] + 2
    endif
    if id == exchangeItemId[50] then
        set exchangeKillGold[i] = exchangeKillGold[i] + 5
    endif


endfunction



function initExchange takes nothing returns nothing
    local integer j
    local integer k

    set exchangeItemId[1] = 'I069'
    set exchangeItemId[2] = 'I06A'
    set exchangeItemId[3] = 'I06B'
    set exchangeItemId[4] = 'I06C'
    set exchangeItemId[5] = 'I06D'
    set exchangeItemId[6] = 'I06E'
    set exchangeItemId[7] = 'I06F'
    set exchangeItemId[8] = 'I06G'
    set exchangeItemId[9] = 'I06H'
    set exchangeItemId[10] = 'I06I'
    set exchangeItemId[11] = 'I06K'
    set exchangeItemId[12] = 'I06L'
    set exchangeItemId[13] = 'I06M'
    set exchangeItemId[14] = 'I06N'
    set exchangeItemId[15] = 'I06O'
    set exchangeItemId[16] = 'I06P'
    set exchangeItemId[17] = 'I06Q'
    set exchangeItemId[18] = 'I06R'
    set exchangeItemId[19] = 'I06S'
    set exchangeItemId[20] = 'I06T'
    set exchangeItemId[21] = 'I06V'
    set exchangeItemId[22] = 'I06W'
    set exchangeItemId[23] = 'I06X'
    set exchangeItemId[24] = 'I06Y'
    set exchangeItemId[25] = 'I06Z'
    set exchangeItemId[26] = 'I070'
    set exchangeItemId[27] = 'I071'
    set exchangeItemId[28] = 'I072'
    set exchangeItemId[29] = 'I073'
    set exchangeItemId[30] = 'I074'
    set exchangeItemId[31] = 'I076'
    set exchangeItemId[32] = 'I077'
    set exchangeItemId[33] = 'I078'
    set exchangeItemId[34] = 'I079'
    set exchangeItemId[35] = 'I07A'
    set exchangeItemId[36] = 'I07B'
    set exchangeItemId[37] = 'I07C'
    set exchangeItemId[38] = 'I07D'
    set exchangeItemId[39] = 'I07E'
    set exchangeItemId[40] = 'I07F'
    set exchangeItemId[41] = 'I07H'
    set exchangeItemId[42] = 'I07I'
    set exchangeItemId[43] = 'I07J'
    set exchangeItemId[44] = 'I07K'
    set exchangeItemId[45] = 'I07L'
    set exchangeItemId[46] = 'I07M'
    set exchangeItemId[47] = 'I07N'
    set exchangeItemId[48] = 'I07O'
    set exchangeItemId[49] = 'I07P'
    set exchangeItemId[50] = 'I07Q'

    set oneKeyExchangeItemId[1] = 'I06J'
    set oneKeyExchangeItemId[2] = 'I06U'
    set oneKeyExchangeItemId[3] = 'I075'
    set oneKeyExchangeItemId[4] = 'I07G'
    set oneKeyExchangeItemId[5] = 'I07R'

    set exchangeUnit[1] = gg_unit_o013_0027
    set exchangeUnit[2] = gg_unit_o013_0028
    set exchangeUnit[3] = gg_unit_o013_0029
    set exchangeUnit[4] = gg_unit_o013_0030

    set j = 1
    loop
        exitwhen j > 4
        set exchangeCount[j] = 0

        set k = 1
        loop
            exitwhen k > 10
            call AddItemToStock(exchangeUnit[j], exchangeItemId[k], 1, 1)
            set k = k + 1
        endloop
        call AddItemToStock(exchangeUnit[j], oneKeyExchangeItemId[1], 1, 1)

        set j = j + 1
    endloop

endfunction

