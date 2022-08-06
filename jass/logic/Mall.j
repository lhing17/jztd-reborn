
function checkPurchase takes nothing returns nothing
    local integer i = 1
    loop
        exitwhen i > 5
        if DzAPI_Map_HasMallItem(Player(i - 1), PROPERTY_GOLD) or udg_isTest[i] then
            set middle_gold_flag[i] = 1
            call SetPlayerTechResearched(Player(i - 1), $52303037, 1)
        endif
        if DzAPI_Map_HasMallItem(Player(i - 1), PROPERTY_WISDOM_BALL) or udg_isTest[i] then
            set wisdom_ball_flag[i] = 1
            call SetPlayerTechResearched(Player(i - 1), $52303038, 1)
        endif
        if DzAPI_Map_HasMallItem(Player(i - 1), PROPERTY_LUMBER) or udg_isTest[i] then
            set middle_lumber_flag[i] = 1
            call SetPlayerTechResearched(Player(i - 1), $52303039, 1)
        endif
        if DzAPI_Map_GetMapLevel(Player(i - 1)) >= 3 or udg_isTest[i] then
            set five_star_flag[i] = 1
            call SetPlayerTechResearched(Player(i - 1), $52303035, 1)
        endif
        if RequestExtraBooleanData(44, Player(i - 1), null, null, false, 0, 0, 0) or udg_isTest[i] then
            call SetPlayerTechResearched(Player(i - 1), $52303036, 1)
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
        set i = i + 1
    endloop
    call TimerStart(t, 1, false, function checkPurchase)
    set t = null
endfunction
