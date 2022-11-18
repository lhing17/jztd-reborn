globals
    real array wisdomBallX
    real array wisdomBallY

endglobals

function EverySecond_Conditions takes nothing returns boolean
    local string info = DzAPI_Map_GetMapConfig("info")
    local integer i = 1
    local integer level = 1
  
    set passed_time = passed_time + 1
    if passed_time == 5 then
        loop
            exitwhen i > 5
            if wisdom_ball_flag[i] == 1 then
                set wisbomBall[i] = CreateUnit(Player(i - 1), 'o00R', wisdomBallX[i], wisdomBallY[i], 270)
                call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 10, "|CFF1CE6B9系统提示：|r|CFFFE890D您已开启智慧球")
                set hasWisdomBall[i] = true
            endif
            set i = i + 1
        endloop
        if info != "无" then
            call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cff00ff00来自zeikale的提示：|r|cffff00de" + info + "|r")
            call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cff00ff00来自zeikale的提示：|r|cffff00de" + info + "|r")
            call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cff00ff00来自zeikale的提示：|r|cffff00de" + info + "|r")
        endif
    endif
    if passed_time == 10 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10, "|cfffff000欢迎来到|cffff00de决战江湖TD|r")
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10, "|cff00ff00[小贴士]|r收藏游戏的玩家可以在地图中间的商店中领取福利礼包！")
    endif
    if passed_time == 20 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r游戏前期金钱较匮乏，可以合理使用木材兑换金钱，欢迎在地图留言区提出您的宝贵意见")
    endif
    if passed_time == 40 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r前期防御塔建立在合理的位置，可以提高输出效率。高级防御塔性价比通常高于低级防御塔，因此建议将资源优先用于升级防御塔")
    endif
    if passed_time == 60 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r游戏里的相关指令请按F9打开任务面板进行查询")
    endif
    if passed_time == 80 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r由于制作和测试时间紧张，如遇游戏里有BUG或不舒适的体验给你带来不愉快，尽情谅解。")
    endif
    if passed_time == 100 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r塔升级到顶级后，如果有技能还没修炼到满级，可以使用武学修炼丹继续修炼。")
    endif
    // if passed_time == 120 then
    //     call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r生存模式前期强度较高，尽量在普通模式下积累一些积分后再进行尝试。")
    // endif
    // if passed_time == 140 then
    //     call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r生存模式下从第31波（第一次获得）起每10波获得5点存档积分。")
    // endif
    // if passed_time == 160 then
    //     call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r生存模式第60波后将不再给予每波金钱和珍稀币奖励。")
    // endif
    call ForGroupBJ(attackerGroup, function EMeiXinFa)
    if udg_ShengYuGuaiShu + 10 <= CountUnitsInGroup(attackerGroup) and GetRandomInt(1, 5) <= 2 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r|cffff0000圈内的进攻怪太多了，请注意防守！！|R")
    endif
    set i = 1
    loop
        exitwhen i > 5
        if five_star_flag[i] == 1 then
            call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD) + 2)
        endif
        if europe_flag[i] == 1 then
            call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD) + 3)
        endif

        // 智慧球智能模式
        if wisdomBallSmartMode[i] and wisbomBall[i] != null then
            call IssueImmediateOrder(wisbomBall[i], "chainlightning")
            call IssueImmediateOrder(wisbomBall[i], "charm")
            call IssueImmediateOrder(wisbomBall[i], "corrosivebreath")
            call IssueImmediateOrder(wisbomBall[i], "chemicalrage")
            call IssueImmediateOrder(wisbomBall[i], "cloudoffog")
            call IssueImmediateOrder(wisbomBall[i], "clusterrockets")
            call IssueImmediateOrder(wisbomBall[i], "coldarrows")
        endif

        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen i > tower_num
        if GetUnitAbilityLevel(s__Tower_u[tower[i]], 'A00I') >= 1 then
            call IssueImmediateOrder(s__Tower_u[tower[i]], "frenzy")
        endif
        // 装备加成
        if LoadInteger(TOWER_ATTR_HT, GetHandleId(s__Tower_u[tower[i]]), TOWER_MANA_RECOVERY_KEY) > 0 then
            call SetUnitState(s__Tower_u[tower[i]], UNIT_STATE_MANA, GetUnitState(s__Tower_u[tower[i]], UNIT_STATE_MANA) + LoadInteger(TOWER_ATTR_HT, GetHandleId(s__Tower_u[tower[i]]), TOWER_MANA_RECOVERY_KEY))
        endif

        // 谷衣心法
        if ModuloInteger(passed_time, 5) == 0 and GetUnitAbilityLevel(s__Tower_u[tower[i]], 'A04A') >= 1 then
            set level = GetUnitAbilityLevel(s__Tower_u[tower[i]], 'A04A')
            call SetUnitState(s__Tower_u[tower[i]], UNIT_STATE_MANA, GetUnitState(s__Tower_u[tower[i]], UNIT_STATE_MANA) + GetRandomInt(level * 10, level * 100))
        endif
        set i = i + 1
    endloop
    return false
endfunction
function EverySecond takes nothing returns nothing
    local trigger t = CreateTrigger()

    set wisdomBallX[1] =- 2380
    set wisdomBallX[2] = 820
    set wisdomBallX[3] = 2380
    set wisdomBallX[4] =- 820
    set wisdomBallY[1] = 820
    set wisdomBallY[2] = 2380
    set wisdomBallY[3] =- 820
    set wisdomBallY[4] =- 2380
    call TriggerRegisterTimerEventPeriodic(t, 1.)
    call TriggerAddCondition(t, Condition(function EverySecond_Conditions))
    set t = null
endfunction
