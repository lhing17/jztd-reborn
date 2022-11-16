
globals
    string PROPERTY_GOLD = "BGOLD5DAYS"
    string PROPERTY_LUMBER = "BLUMB5DAYS"
    string PROPERTY_WISDOM_BALL = "AWISDOM001"
    // 欧皇大礼包
    string PROPERTY_EUROPE = "AEUROPE001"

    integer array middle_gold_flag
    integer array middle_lumber_flag
    integer array five_star_flag
    integer array wisdom_ball_flag
    integer array europe_flag
endglobals

function checkPurchase takes nothing returns nothing
    local integer i = 1
    loop
        exitwhen i > 5
        if DzAPI_Map_HasMallItem(Player(i - 1), PROPERTY_GOLD) or udg_isTest[i] then
            set middle_gold_flag[i] = 1
            call SetPlayerTechResearched(Player(i - 1), 'R007', 1)
        endif
        if DzAPI_Map_HasMallItem(Player(i - 1), PROPERTY_WISDOM_BALL) or udg_isTest[i] then
            set wisdom_ball_flag[i] = 1
            call SetPlayerTechResearched(Player(i - 1), 'R008', 1)
        endif
        if DzAPI_Map_HasMallItem(Player(i - 1), PROPERTY_LUMBER) or udg_isTest[i] then
            set middle_lumber_flag[i] = 1
            call SetPlayerTechResearched(Player(i - 1), 'R009', 1)
        endif
        if DzAPI_Map_GetMapLevel(Player(i - 1)) >= 3 or udg_isTest[i] then
            set five_star_flag[i] = 1
            call SetPlayerTechResearched(Player(i - 1), 'R005', 1)
        endif
        if DzAPI_Map_HasMallItem(Player(i - 1), PROPERTY_EUROPE) or udg_isTest[i] then
            set europe_flag[i] = 1
        endif
        // 收藏游戏
        if DzAPI_Map_Returns(Player(i - 1), 16) or udg_isTest[i] then
            call SetPlayerTechResearched(Player(i - 1), 'R006', 1)
        endif
        set i = i + 1
    endloop
endfunction
function mallInit takes nothing returns nothing
    local timer t = CreateTimer()
    local integer i = 1
    loop
        exitwhen i > 5
        set middle_gold_flag[i] = 0
        set middle_lumber_flag[i] = 0
        set five_star_flag[i] = 0
        set wisdom_ball_flag[i] = 0
        set europe_flag[i] = 0
        set i = i + 1
    endloop
    call TimerStart(t, 0.1, false, function checkPurchase)
    set t = null
endfunction
