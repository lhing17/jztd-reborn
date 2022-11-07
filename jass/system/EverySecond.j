function EverySecond_Conditions takes nothing returns boolean
    local string info = DzAPI_Map_GetMapConfig("info")
    local integer i = 1
    local integer array x
    local integer array y
    local integer level = 1
    set x[1] =- 2380
    set x[2] = 820
    set x[3] = 2380
    set x[4] =- 820
    set y[1] = 820
    set y[2] = 2380
    set y[3] =- 820
    set y[4] =- 2380
    set passed_time = passed_time + 1
    if passed_time == 5 then
        loop
            exitwhen i > 5
            if wisdom_ball_flag[i] == 1 then
                call CreateUnit(Player(i - 1), 'o00R', x[i], y[i], 270)
                call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 10, "|CFF1CE6B9系统提示：|r|CFFFE890D您已开启智慧球")
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
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10, "|cfffff000欢迎来到|cffff00de决战江湖TD1.2|r")
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10, "|cff00ff00来自zeikale的提示：|r|cfffff000请在NPC天下门派处选择门派开始游戏，购买重制版WAR3的玩家可以在地图中间的商店中领取福利礼包！|r")
    endif
    if passed_time == 20 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00来自zeikale的提示：|r|cfffff000游戏前期金钱较匮乏，可以合理使用木材兑换金钱，关于游戏的各个系统，请查看F9任务面板，欢迎在地图留言区提出您的宝贵意见|R")
    endif
    if passed_time == 40 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00来自zeikale的提示：|r|cfffff000前期防御塔建立在合理的位置，可以提高输出效率。高级防御塔性价比通常高于低级防御塔，因此建议将资源优先用于升级防御塔|R")
    endif
    if passed_time == 60 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00来自zeikale的提示：|r|cfffff000游戏里的相关指令请按F9打开任务面板进行查询|r")
    endif
    if passed_time == 80 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00来自zeikale的提示：|r|cfffff000由于制作和测试时间紧张，如遇游戏里有BUG或不舒适的体验给你带来不愉快，尽情谅解。|R")
    endif
    if passed_time == 100 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00来自zeikale的提示：|r|cfffff000塔升级到顶级后，如果有技能还没修炼到满级，可以使用武学修炼丹继续修炼。|R")
    endif
    // if passed_time == 120 then
    //     call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00来自zeikale的提示：|r|cfffff000生存模式前期强度较高，尽量在普通模式下积累一些积分后再进行尝试。|R")
    // endif
    // if passed_time == 140 then
    //     call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00来自zeikale的提示：|r|cfffff000生存模式下从第31波（第一次获得）起每10波获得5点存档积分。|R")
    // endif
    // if passed_time == 160 then
    //     call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00来自zeikale的提示：|r|cfffff000生存模式第60波后将不再给予每波金钱和珍稀币奖励。|R")
    // endif
    call ForGroupBJ(attackerGroup, function EMeiXinFa)
    if udg_ShengYuGuaiShu + 10 <= CountUnitsInGroup(attackerGroup) and GetRandomInt(1, 5) <= 2 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00来自zeikale的提示：|r|cffff0000圈内的进攻怪太多了，请注意防守！！|R")
    endif
    loop
        exitwhen i > 5
        if five_star_flag[i] == 1 then
            call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD) + 2)
        endif
        set i = i + 1
    endloop
    set i = 0
    loop
        exitwhen i > tower_num
        if GetUnitAbilityLevel(s__Tower_u[tower[i]], 'A00I') >= 1 then
            call IssueImmediateOrder(s__Tower_u[tower[i]], "frenzy")
        endif
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
    call TriggerRegisterTimerEventPeriodic(t, 1.)
    call TriggerAddCondition(t, Condition(function EverySecond_Conditions))
    set t = null
endfunction
