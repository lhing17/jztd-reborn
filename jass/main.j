#include "library/BlzApi.j"
#include "library/MaxSpeed.j"
#include "library/UI.j"
#include "library/Tower.j"

#include "system/Common.j"

#include "denomination/Emei.j"

#include "logic/EnemyMove.j"
#include "logic/Mall.j"
#include "logic/Spawn.j"


#include "system/EverySecond.j"
#include "system/IssueOrder.j"
#include "system/KeyInput.j"
#include "system/PickupItem.j"
#include "system/SelectUnit.j"
#include "system/UnitAttack.j"
#include "system/UnitBuilt.j"
#include "system/UnitDamage.j"
#include "system/UnitDeath.j"
#include "system/UseAbility.j"
#include "system/UseItem.j"

#include "system/Najitest.j"


globals
    integer udg_ShengYuGuaiShu = 0
    leaderboard udg_jifenpai = null
    timer udg_shuabingtimer = null
    dialog udg_select_diff = null
    button array udg_diff
    timer udg_boss_hint = null
    integer udg_kill_final_num = 0
    integer udg_difficulty = 0
    multiboard udg_multi = null
    rect gg_rct_circle = null
    rect gg_rct______________001 = null
    rect gg_rct______________002 = null
    rect gg_rct______________003 = null
    rect gg_rct______________004 = null
    rect gg_rct______________005 = null
    rect gg_rct______________006 = null
    rect gg_rct______________007 = null
    rect gg_rct______________008 = null
    rect gg_rct______________009 = null
    rect gg_rct______________010 = null
    rect gg_rct______________011 = null
    rect gg_rct______________012 = null
    rect gg_rct______________013 = null
    rect gg_rct______________014 = null
    rect gg_rct______________015 = null
    rect gg_rct______________016 = null
    rect gg_rct______________017 = null
    rect gg_rct______________018 = null
    rect gg_rct______________019 = null
    rect gg_rct______________020 = null
    rect gg_rct______________021 = null
    rect gg_rct______________022 = null
    rect gg_rct______________023 = null
    rect gg_rct______________024 = null
    rect gg_rct_spawn1 = null
    rect gg_rct_spawn2 = null
    rect gg_rct_spawn3 = null
    rect gg_rct_spawn4 = null
    trigger gg_trg_SystemWindow = null
    trigger gg_trg_MapInit = null
    trigger gg_trg_OneSecond = null
    trigger gg_trg_ChooseNanDu = null
    trigger gg_trg_ChooseNanDu_2 = null
    trigger gg_trg_PlayerLeave = null
    trigger gg_trg_KillFinalBoss = null
    trigger gg_trg_Win = null
    trigger gg_trg____________________001 = null
    trigger gg_trg_JiFenPaiUpdate = null
    trigger gg_trg____________________002 = null
    trigger gg_trg_FirstOccur = null
    unit gg_unit_o00A_0019 = null
    unit gg_unit_e00H_0022 = null
    unit gg_unit_e00H_0023 = null
    unit gg_unit_e00H_0024 = null
    unit gg_unit_e00H_0025 = null

    integer array udg_zdl
    integer array udg_point
    integer array udg_pointMax
    integer MAX_POINT = 50
    integer array udg_success
    integer array udg_tech
    string array udg_tech_evaluate
    boolean array saveFlag
    integer unitnumber_lh = 0
    integer createdunitnumber_lh = 0
    string StringList_naji
    string array Sdummy_naji
    trigger array Ttest_naji
    player Ptest_naji
    integer Ihandle_naji
    integer Ibm_naji
    integer Itrigger_naji
    integer Iquest_naji
    integer Iweather_naji
    boolean Bfog_naji
    boolean Bpause_naji
    boolean Bxy_naji
    boolean Bid_naji
    boolean Bir_naji
    boolean array Bcamera_naji
    boolean Bpn_naji
    boolean Bddm_naji
    dialog array Dnaji_naji
    button array Button_naji
    real Rhandle_naji
    real Rdummy_naji
    real array Rcamera_naji
    region Rworld_naji
    group array Gcd_naji
    group Guw_naji
    group Gms_naji
    quest array Q_naji
    timer Tcamera_naji
    texttag array Tbm_naji
    weathereffect array Weather_naji
    integer array join_menpai_flag
    string array menpai_name
    integer array menpai_item_id
    integer array menpai_builder_id
    location array born_loc
    integer array udg_jiuyang
    integer array udg_jiuyin
    integer array udg_douzhuan
    integer array udg_xixing
    integer array udg_huagong
    integer array jianghu_item_id
    integer array challenge_id
    integer array challenge_item_id
    integer array remake_present
    integer array point2gold
    integer array point2lumber
    integer array middle_gold
    integer array middle_lumber
    unit array builder
    integer OPEN_DOMINATION_NUM = 5
    sound Ih = null
    integer DUMMY_OWNER_KEY = 944027
    integer array goldHit
    integer array lumberHit
    real array kungfuCoeff
    integer array tower
    integer tower_num = 0
    integer RANGE_DAMAGE_HASH = $F69219
    integer DAMAGE_UNIT_KEY = $DDEFF8
    integer DAMAGE_KEY = $DDEFF9
    integer damageCounter = 0
    integer array normal_drops
    integer array rare_drops
    integer array valuable_drops
    integer array ancient_drops
    integer array epic_drops
    integer MAX_NORMAL_DROP = 5
    integer MAX_RARE_DROP = 5
    integer MAX_VALUABLE_DROP = 6
    integer MAX_ANCIENT_DROP = 5
    integer MAX_EPIC_DROP = 5
    integer array luck
    integer FIRST_WAVE_TIME = 20
    integer SPAWN_FREQUENCY = 2
    integer WAVE_TIME = 40
    integer WAVE_INTERVAL = 5
    integer BOSS_WAVE_INTERVAL = 9
    integer BORN_LOC_X = 977855
    integer BORN_LOC_Y = 977854
    integer array mob
    integer array survive_mob
    integer array survive_boss
    integer array boss
    timer mobTimer
    timerdialog mobTimerDialog
    timer bossTimer
    timerdialog bossTimerDialog
    integer wave = 0
    trigger spawnTrigger
    group attackerGroup
    integer gameMode = 0
    region array nodes
    rect array nodeRects
    integer NODE = 65518
    integer array middle_gold_flag
    integer array middle_lumber_flag
    integer array five_star_flag
    integer array wisdom_ball_flag
    string PROPERTY_GOLD = "BGOLD5DAYS"
    string PROPERTY_LUMBER = "BLUMB5DAYS"
    string PROPERTY_WISDOM_BALL = "AWISDOM001"
    dialog array wugong_practice
    button array practice_wugong
    integer array low_towers
    integer array normal_towers
    integer array fine_towers
    integer array perfect_towers
    integer low_size = 1
    integer normal_size = 1
    integer fine_size = 1
    integer perfect_size = 1
    integer passed_time = 0
    integer array shenqi
    integer array random_shenqi
    integer array juenei
    boolean array udg_isTest
    integer SHEN_QI_NUM = 11
    integer open_shenqi = 3
    boolean array showHint
    hashtable NHT = InitHashtable()

    trigger array st___prototype25

endglobals

function MyInitGlobals takes nothing returns nothing
    local integer i = 0
    set i = 0
    
    set udg_ShengYuGuaiShu = 0
    set udg_shuabingtimer = CreateTimer()
    set udg_select_diff = DialogCreate()
    set udg_boss_hint = CreateTimer()
    set udg_kill_final_num = 0
    set udg_difficulty = 0
endfunction
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p = Player(0)
    local unit u
    set u = CreateUnit(p, $6F30304E, - 1280., 1152., 270.)
endfunction
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p = Player(0)
    set gg_unit_e00H_0022 = CreateUnit(p, $65303048, - 257.1, - 103.8, 99.12)
endfunction
function CreateBuildingsForPlayer1 takes nothing returns nothing
    local player p = Player(1)
    local unit u
    set u = CreateUnit(p, $6F30304E, 1216., 1152., 270.)
endfunction
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p = Player(1)
    set gg_unit_e00H_0023 = CreateUnit(p, $65303048, - 130., - 21.6, 234.84)
endfunction
function CreateBuildingsForPlayer2 takes nothing returns nothing
    local player p = Player(2)
    local unit u
    set u = CreateUnit(p, $6F30304E, 1216., - 1152., 270.)
endfunction
function CreateUnitsForPlayer2 takes nothing returns nothing
    local player p = Player(2)
    set gg_unit_e00H_0024 = CreateUnit(p, $65303048, - 234.3, 79.3, 122.183)
endfunction
function CreateBuildingsForPlayer3 takes nothing returns nothing
    local player p = Player(3)
    local unit u
    set u = CreateUnit(p, $6F30304E, - 1152., - 1152., 270.)
endfunction
function CreateUnitsForPlayer3 takes nothing returns nothing
    local player p = Player(3)
    set gg_unit_e00H_0025 = CreateUnit(p, $65303048, - 351.1, - 46.2, 28.994)
endfunction
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    set u = CreateUnit(p, $6F303045, - 640., 256., 270.)
    set u = CreateUnit(p, $6F303051, 128., 0., 270.)
    set u = CreateUnit(p, $6F30304C, - 576., - 320., 270.)
    set u = CreateUnit(p, $6F303046, - 320., 256., 270.)
    set u = CreateUnit(p, $6F303048, 256., 256., 270.)
    set u = CreateUnit(p, $6F30304D, - 320., - 320., 270.)
    set u = CreateUnit(p, $6F303047, 576., 256., 270.)
    set u = CreateUnit(p, $6F303049, 0., 256., 270.)
    set u = CreateUnit(p, $6F30304B, - 64., - 320., 270.)
    set gg_unit_o00A_0019 = CreateUnit(p, $6F303041, - 256., 0., 270.)
    set u = CreateUnit(p, $6F303050, 512., - 320., 270.)
    set u = CreateUnit(p, $6F30304A, 192., - 320., 270.)
    set u = CreateUnit(p, $6F303131, 512., 0., 270.)
endfunction
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0()
    call CreateBuildingsForPlayer1()
    call CreateBuildingsForPlayer2()
    call CreateBuildingsForPlayer3()
endfunction
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
    call CreateUnitsForPlayer1()
    call CreateUnitsForPlayer2()
    call CreateUnitsForPlayer3()
endfunction
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreatePlayerUnits()
endfunction
function CreateRegions takes nothing returns nothing
    local weathereffect we
    set gg_rct_circle = Rect(- 4512., - 4384., 4448., 4192.)
    set we = AddWeatherEffect(gg_rct_circle, $52416C72)
    call EnableWeatherEffect(we, true)
    set gg_rct______________001 = Rect(- 3904., 3712., - 3744., 3904.)
    set gg_rct______________002 = Rect(- 64., 3744., 64., 3904.)
    set gg_rct______________003 = Rect(3744., 3712., 3904., 3872.)
    set gg_rct______________004 = Rect(3744., - 96., 3904., 96.)
    set gg_rct______________005 = Rect(3744., - 3904., 3904., - 3776.)
    set gg_rct______________006 = Rect(- 96., - 3936., 64., - 3776.)
    set gg_rct______________007 = Rect(- 3936., - 3968., - 3744., - 3808.)
    set gg_rct______________008 = Rect(- 3936., - 64., - 3776., 64.)
    set gg_rct______________009 = Rect(- 2912., - 96., - 2720., 64.)
    set gg_rct______________010 = Rect(- 2912., 2784., - 2752., 2912.)
    set gg_rct______________011 = Rect(- 1888., 2784., - 1728., 2944.)
    set gg_rct______________012 = Rect(- 64., 2752., 96., 2912.)
    set gg_rct______________013 = Rect(2720., 2752., 2848., 2880.)
    set gg_rct______________014 = Rect(2720., 1728., 2880., 1888.)
    set gg_rct______________015 = Rect(2752., - 64., 2880., 96.)
    set gg_rct______________016 = Rect(2688., - 2880., 2848., - 2752.)
    set gg_rct______________017 = Rect(1696., - 2880., 1856., - 2752.)
    set gg_rct______________018 = Rect(- 96., - 2912., 64., - 2752.)
    set gg_rct______________019 = Rect(- 2912., - 2880., - 2752., - 2752.)
    set gg_rct______________020 = Rect(- 2880., - 1888., - 2720., - 1728.)
    set gg_rct______________021 = Rect(- 1024., - 1984., - 544., - 1792.)
    set gg_rct______________022 = Rect(- 2016., 544., - 1792., 1024.)
    set gg_rct______________023 = Rect(544., 1760., 1024., 1984.)
    set gg_rct______________024 = Rect(1792., - 1024., 2016., - 576.)
    set gg_rct_spawn1 = Rect(- 1120., 448., - 448., 1088.)
    set gg_rct_spawn2 = Rect(448., 448., 1088., 1056.)
    set gg_rct_spawn3 = Rect(448., - 1088., 1088., - 480.)
    set gg_rct_spawn4 = Rect(- 1088., - 1088., - 448., - 480.)
endfunction

function GetNumPlayer takes nothing returns integer
    local integer i = 0
    local player p = null
    local integer n = 0
    loop
        exitwhen i > 11
        set p = Player(i)
        if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
            set n = n + 1
        endif
        set i = i + 1
    endloop
    set p = null
    return n
endfunction
function IsUnitAbilityCdOk takes unit u, string abilityid returns boolean
    local boolean ok
    local real mana = GetUnitManaPercent(u)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(u, 100)
    set ok = IssueImmediateOrder(u, abilityid)
    call IssueImmediateOrder(u, "stop")
    call SetUnitManaPercentBJ(u, mana)
    call EnableTrigger(GetTriggeringTrigger())
    return ok
endfunction


function getAbilityIdByItemId takes integer itemId returns integer
    return LoadInteger(YDHT, itemId, 65244)
endfunction


function ServerSavePointsWhenEnterGame takes nothing returns nothing
    local integer i = 1
    loop
        exitwhen i > 4
        set udg_tech[i] = udg_tech[i] - 1
        call DzAPI_Map_StoreInteger(Player(i - 1), "tech", udg_tech[i])
        set i = i + 1
    endloop
endfunction

function ServerSavePointsWhenWin takes nothing returns nothing
    local integer i = 1
    local integer point = 2 * udg_difficulty
    local string point_times = DzAPI_Map_GetMapConfig("point_time")
    if S2I(point_times) >= 1 then
        set point = point * S2I(point_times)
    endif
    loop
        exitwhen i > 4
        set udg_zdl[i] = udg_zdl[i] + point
        set udg_point[i] = udg_point[i] + point
        set udg_success[i] = udg_success[i] + 1
        set udg_tech[i] = udg_tech[i] + udg_difficulty + 1
        if GetPlayerController(Player(i - 1)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(i - 1)) == PLAYER_SLOT_STATE_PLAYING then
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFF99CC00获得战斗力和积分：" + I2S(point))
            call DzAPI_Map_StoreInteger(Player(i - 1), "zdl", udg_zdl[i])
            call DzAPI_Map_StoreInteger(Player(i - 1), "point", udg_point[i])
            call DzAPI_Map_StoreInteger(Player(i - 1), "success", udg_success[i])
            call DzAPI_Map_StoreInteger(Player(i - 1), "tech", udg_tech[i])
        endif
        if udg_tech[i] > udg_success[i] * 5 and udg_success[i] >= 10 then
            set udg_tech_evaluate[i] = "A+"
        elseif udg_tech[i] > udg_success[i] * 4 and udg_success[i] >= 10 then
            set udg_tech_evaluate[i] = "A"
        elseif udg_tech[i] > udg_success[i] * 3 and udg_success[i] >= 10 then
            set udg_tech_evaluate[i] = "B"
        elseif udg_tech[i] > udg_success[i] * 2 and udg_success[i] >= 10 then
            set udg_tech_evaluate[i] = "C"
        elseif udg_tech[i] > udg_success[i] then
            set udg_tech_evaluate[i] = "D"
        else
            set udg_tech_evaluate[i] = "D-"
        endif
        if GetPlayerServerValueSuccess(Player(i - 1)) and not saveFlag[i] then
            call DzAPI_Map_Stat_SetStat(Player(i - 1), "zdl", I2S(udg_zdl[i]))
            call DzAPI_Map_Stat_SetStat(Player(i - 1), "point", I2S(udg_point[i]))
            call DzAPI_Map_Stat_SetStat(Player(i - 1), "tech", udg_tech_evaluate[i])
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFFFE890D" + GetPlayerName(Player(i - 1)) + "|CFF99CC00数据保存成功")
            set saveFlag[i] = true
        else
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFFFE890D" + GetPlayerName(Player(i - 1)) + "|CFFFF0303数据保存失败")
        endif
        set i = i + 1
    endloop
endfunction

function InitServerValues takes nothing returns nothing
    local integer i = 1
    loop
        exitwhen i > 4
        set udg_zdl[i] = DzAPI_Map_GetStoredInteger(Player(i - 1), "zdl")
        set udg_point[i] = DzAPI_Map_GetStoredInteger(Player(i - 1), "point")
        set udg_success[i] = DzAPI_Map_GetStoredInteger(Player(i - 1), "success")
        set udg_tech[i] = DzAPI_Map_GetStoredInteger(Player(i - 1), "tech")
        set udg_pointMax[i] = 0
        set saveFlag[i] = false
        set i = i + 1
    endloop
endfunction







function IsBuilder takes integer id returns boolean
    return id == $75303043 or id == $75303044 or id == $75303045 or id == $75303046 or id == $75303057
endfunction
function GetItemNum takes unit u returns integer
    local integer i = 1
    if GetUnitPointValue(u) >= 600 then
        set i = 1
    endif
    if GetUnitPointValue(u) >= 2500 then
        set i = 2
    endif
    if GetUnitPointValue(u) >= 6000 then
        set i = 3
    endif
    if GetUnitPointValue(u) >= 10000 then
        set i = 4
    endif
    if IsBuilder(GetUnitTypeId(u)) then
        set i = 6
    endif
    return i
endfunction



function OpenAgain takes nothing returns nothing
    call IssueImmediateOrder(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0), LoadStr(YDHT, GetHandleId(GetExpiredTimer()), 1) + "on")
    call IssueImmediateOrder(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0), "stop")
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call PauseTimer(GetExpiredTimer())
    call DestroyTimer(GetExpiredTimer())
endfunction



function AutoSpell takes unit u, unit ut, integer spell_id, string order returns nothing
    local timer tm = null
    if GetUnitAbilityLevel(u, spell_id) >= 1 and IsUnitAbilityCdOk(u, order) then
        if IsUnitAbilityCdOk(u, order + "off") then
            call IssueImmediateOrder(u, order)
            call IssueTargetOrder(u, order, ut)
            set tm = CreateTimer()
            call SaveUnitHandle(YDHT, GetHandleId(tm), 0, u)
            call SaveStr(YDHT, GetHandleId(tm), 1, order)
            call TimerStart(tm, 1., false, function OpenAgain)
        endif
    endif
    set tm = null
endfunction

function bubbleSortForDamage takes nothing returns nothing
    local integer i = 1
    local integer j = 1
    local real damage1 = 0
    local real damage2 = 0
    local unit u1 = null
    local unit u2 = null
    loop
        exitwhen i > damageCounter
        set j = i + 1
        loop
            exitwhen j > damageCounter
            set damage1 = LoadReal(YDHT, DAMAGE_KEY, i)
            set damage2 = LoadReal(YDHT, DAMAGE_KEY, j)
            if damage2 > damage1 then
                set u1 = LoadUnitHandle(YDHT, DAMAGE_UNIT_KEY, i)
                set u2 = LoadUnitHandle(YDHT, DAMAGE_UNIT_KEY, j)
                call SaveReal(YDHT, DAMAGE_KEY, i, damage2)
                call SaveReal(YDHT, DAMAGE_KEY, j, damage1)
                call SaveInteger(YDHT, GetHandleId(u2), DAMAGE_UNIT_KEY, i)
                call SaveInteger(YDHT, GetHandleId(u1), DAMAGE_UNIT_KEY, j)
                call SaveUnitHandle(YDHT, DAMAGE_UNIT_KEY, i, u2)
                call SaveUnitHandle(YDHT, DAMAGE_UNIT_KEY, j, u1)
            endif
            set j = j + 1
        endloop
        set i = i + 1
    endloop
    set u1 = null
    set u2 = null
endfunction



function Trig_SystemWindowActions takes nothing returns nothing
    call CreateMultiboardBJ(1, 1, "圈内单位")
    set udg_multi = GetLastCreatedMultiboard()
    call MultiboardDisplayBJ(true, GetLastCreatedMultiboard())
    call YDWEMultiboardSetItemWidthBJNull(GetLastCreatedMultiboard(), 1, 1, 5.)
endfunction
function InitTrig_SystemWindow takes nothing returns nothing
    set gg_trg_SystemWindow = CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_SystemWindow, 0.)
    call TriggerAddAction(gg_trg_SystemWindow, function Trig_SystemWindowActions)
endfunction
function Trig_MapInitActions takes nothing returns nothing
    call SetTimeOfDay(8.)
    call UseTimeOfDayBJ(false)
    call FogEnableOff()
    call FogMaskEnableOff()
    call SetPlayerState(Player(5), PLAYER_STATE_GIVES_BOUNTY, 1)
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 5
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        call ShowUnitShow(gg_unit_o00A_0019)
        call SetPlayerTechMaxAllowedSwap($48303034, 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap($6E30314F, 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap($6E30314E, 2, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap($4F303033, 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap($6E303032, 2, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap($6E303130, 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap($48303030, 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap($6E30315A, 2, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap($4E303047, 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap($48303137, 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap($68303135, 2, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap($6830305A, 1, ConvertedPlayer(bj_forLoopAIndex))
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction
function InitTrig_MapInit takes nothing returns nothing
    set gg_trg_MapInit = CreateTrigger()
    call TriggerAddAction(gg_trg_MapInit, function Trig_MapInitActions)
endfunction
function Trig_OneSecondActions takes nothing returns nothing
    local integer i = 0
    call AddWeatherEffectSaveLast(GetEntireMapRect(), $4C526D61)
    call SetCameraTargetController(gg_unit_o00A_0019, 0, 0, false)
    call InitServerValues()
    call ServerSavePointsWhenEnterGame()
    call YDWENewItemsFormula($63686573, 0, $63686573, 0, $63686573, 0, $63686573, 0, $63686573, 0, $63686573, 0, $627A6265)
    set udg_ShengYuGuaiShu = udg_ShengYuGuaiShu + 25
    loop
        exitwhen i >= 4
        if GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING then
            set udg_ShengYuGuaiShu = udg_ShengYuGuaiShu + 25
            call DisplayTimedTextToForce(GetPlayersAll(), 15., "玩家" + YDWEGetPlayerColorString(Player(i), GetPlayerName(Player(i))) + "正在游戏，增加25点生命值")
        endif
        set i = i + 1
    endloop
    call EnableTrigger(gg_trg_JiFenPaiUpdate)
endfunction
function InitTrig_OneSecond takes nothing returns nothing
    set gg_trg_OneSecond = CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_OneSecond, 1.)
    call TriggerAddAction(gg_trg_OneSecond, function Trig_OneSecondActions)
endfunction
function Trig_ChooseNanDuFunc013T takes nothing returns nothing
    if udg_difficulty == 0 then
        call DialogDisplay(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), $32A9E4C8), udg_select_diff, false)
        call DisplayTimedTextToForce(GetPlayersAll(), 10., "|cff00FFFF自动选择了难度|cFF00CC00初入江湖")
        call DisplayTimedTextToForce(GetPlayersAll(), 10., "|cFF00CC00初入江湖|r难度下：")
        call DisplayTimedTextToForce(GetPlayersAll(), 10., "起始资金为|cFF00CC00300|r")
        call DisplayTimedTextToForce(GetPlayersAll(), 10., "起始可用人口为|cFF00CC0075|r")
        call DisplayTimedTextToForce(GetPlayersAll(), 10., "进攻怪防御等级、速度等级、血量和回血等级为|cFF00CC001|r")
        set udg_difficulty = 1
        call SetPlayerTechResearchedSwap($52303030, 1, Player(5))
        set bj_forLoopAIndex = 1
        set bj_forLoopAIndexEnd = 4
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SetPlayerStateBJ(ConvertedPlayer(bj_forLoopAIndex), PLAYER_STATE_RESOURCE_GOLD, 300)
            call SetPlayerStateBJ(ConvertedPlayer(bj_forLoopAIndex), PLAYER_STATE_RESOURCE_FOOD_CAP, 75)
            set bj_forLoopAIndex = bj_forLoopAIndex + 1
        endloop
    else
    endif
endfunction
function Trig_ChooseNanDuActions takes nothing returns nothing
    local timer ydl_timer
    local integer ydl_localvar_step = LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), $CFDE6C76)
    set ydl_localvar_step = ydl_localvar_step + 3
    call SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), $CFDE6C76, ydl_localvar_step)
    call SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), $ECE825E7, ydl_localvar_step)
    call SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, $32A9E4C8, Player(0))
    call DisplayTimedTextToForce(GetPlayersAll(), 10., "等待主机" + (YDWEGetPlayerColorString(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, $32A9E4C8), GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, $32A9E4C8))) + "选择难度"))
    call DialogSetMessage(udg_select_diff, "请选择难度")
    set udg_diff[1] = DialogAddButton(udg_select_diff, "|cFF00CC00初入江湖", 65)
    set udg_diff[2] = DialogAddButton(udg_select_diff, "|cFFCC0066牛刀小试", 66)
    set udg_diff[3] = DialogAddButton(udg_select_diff, "|cFFFF6600登堂入室", 67)
    set udg_diff[4] = DialogAddButton(udg_select_diff, "|cFF0041FF炉火纯青", 68)
    set udg_diff[5] = DialogAddButton(udg_select_diff, "|cFF1FBF00华山论剑", 69)
    set udg_diff[6] = DialogAddButton(udg_select_diff, "|cFFFF0000决战江湖", 70)
    set udg_diff[7] = DialogAddButton(udg_select_diff, "|cFF00FF00生存模式", 71)
    call DialogDisplay(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, $32A9E4C8), udg_select_diff, true)
    set ydl_timer = CreateTimer()
    call SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), $32A9E4C8, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, $32A9E4C8))
    call TimerStart(ydl_timer, 20., false, function Trig_ChooseNanDuFunc013T)
    call FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer = null
endfunction
function InitTrig_ChooseNanDu takes nothing returns nothing
    set gg_trg_ChooseNanDu = CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_ChooseNanDu, 1.)
    call TriggerAddAction(gg_trg_ChooseNanDu, function Trig_ChooseNanDuActions)
endfunction
function Trig_ChooseNanDu_2Actions takes nothing returns nothing
    local integer i = 1
    if GetClickedButtonBJ() == udg_diff[1] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFF00CC00初入江湖")
        call DisplayTextToForce(GetPlayersAll(), "|cFF00CC00初入江湖|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "起始资金为|cFF00CC00300|r")
        call DisplayTextToForce(GetPlayersAll(), "起始可用人口为|cFF00CC0075|r")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFF00CC001|r")
        set udg_difficulty = 1
        call SetPlayerTechResearchedSwap($52303030, 1, Player(5))
    endif
    if GetClickedButtonBJ() == udg_diff[2] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFFCC0066牛刀小试")
        call DisplayTextToForce(GetPlayersAll(), "|cFFCC0066牛刀小试|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "起始资金为|cFFCC0066300|r")
        call DisplayTextToForce(GetPlayersAll(), "起始可用人口为|cFFCC006670|r")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFFCC00662|r")
        set udg_difficulty = 2
        call SetPlayerTechResearchedSwap($52303030, 3, Player(5))
    endif
    if GetClickedButtonBJ() == udg_diff[3] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFFFF6600登堂入室")
        call DisplayTextToForce(GetPlayersAll(), "|cFFFF6600登堂入室|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "起始资金为|cFFFF6600300|r")
        call DisplayTextToForce(GetPlayersAll(), "起始可用人口为|cFFFF660065|r")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFFFF66003|r")
        set udg_difficulty = 3
        call SetPlayerTechResearchedSwap($52303030, 5, Player(5))
    endif
    if GetClickedButtonBJ() == udg_diff[4] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFF0041FF炉火纯青")
        call DisplayTextToForce(GetPlayersAll(), "|cFF0041FF炉火纯青|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "起始资金为|cFF0041FF300|r")
        call DisplayTextToForce(GetPlayersAll(), "起始可用人口为|cFF0041FF760|r")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFF0041FF4|r")
        set udg_difficulty = 4
        call SetPlayerTechResearchedSwap($52303030, 7, Player(5))
    endif
    if GetClickedButtonBJ() == udg_diff[5] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFF1FBF00华山论剑")
        call DisplayTextToForce(GetPlayersAll(), "|cFF1FBF00华山论剑|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "起始资金为|cFF1FBF00300|r")
        call DisplayTextToForce(GetPlayersAll(), "起始可用人口为|cFF1FBF0055|r")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFF1FBF005|r")
        set udg_difficulty = 5
        call SetPlayerTechResearchedSwap($52303030, 9, Player(5))
    endif
    if GetClickedButtonBJ() == udg_diff[6] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFFFF0000决战江湖")
        call DisplayTextToForce(GetPlayersAll(), "|cFFFF0000决战江湖|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "起始资金为|cFFFF0000300|r")
        call DisplayTextToForce(GetPlayersAll(), "起始可用人口为|cFFFF000050|r")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFFFF00006|r")
        set udg_difficulty = 6
        call SetPlayerTechResearchedSwap($52303030, 11, Player(5))
    endif
    if GetClickedButtonBJ() == udg_diff[7] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了度|cFF00FF00生存模式")
        call DisplayTextToForce(GetPlayersAll(), "|cFFFF0000生存模式|r下：")
        call DisplayTextToForce(GetPlayersAll(), "起始资金为|cFFFF0000300|r")
        call DisplayTextToForce(GetPlayersAll(), "起始可用人口为|cFFFF000050|r")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFFFF00007|r")
        call DisplayTextToForce(GetPlayersAll(), "生存模式强度较高，建议先积累一些积分再尝试|r")
        set udg_difficulty = 7
        set gameMode = 1
        call SetPlayerTechResearchedSwap($52303030, 13, Player(5))
    endif
    loop
        exitwhen i > 4
        call SetPlayerStateBJ(Player(i - 1), PLAYER_STATE_RESOURCE_FOOD_CAP, 80 - 5 * udg_difficulty)
        call SetPlayerStateBJ(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD, 300)
        set i = i + 1
    endloop
endfunction
function InitTrig_ChooseNanDu_2 takes nothing returns nothing
    set gg_trg_ChooseNanDu_2 = CreateTrigger()
    call TriggerRegisterDialogEvent(gg_trg_ChooseNanDu_2, udg_select_diff)
    call TriggerAddAction(gg_trg_ChooseNanDu_2, function Trig_ChooseNanDu_2Actions)
endfunction
function Trig_PlayerLeaveActions takes nothing returns nothing
    set udg_ShengYuGuaiShu = udg_ShengYuGuaiShu - 25
    call DisplayTimedTextToForce(GetPlayersAll(), 10., "|CFFFF0000有玩家逃离了战场，剩余生命值减少25点")
endfunction
function InitTrig_PlayerLeave takes nothing returns nothing
    set gg_trg_PlayerLeave = CreateTrigger()
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(0))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(1))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(2))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(3))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(4))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(5))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(6))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(7))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(8))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(9))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(10))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(11))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(12))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(13))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(14))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(15))
    call TriggerAddAction(gg_trg_PlayerLeave, function Trig_PlayerLeaveActions)
endfunction
function Trig_KillFinalBossConditions takes nothing returns boolean
    return GetUnitTypeId(GetTriggerUnit()) == $55303042
endfunction
function Trig_KillFinalBossActions takes nothing returns nothing
    set udg_kill_final_num = udg_kill_final_num + 1
endfunction
function InitTrig_KillFinalBoss takes nothing returns nothing
    set gg_trg_KillFinalBoss = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_KillFinalBoss, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_KillFinalBoss, Condition(function Trig_KillFinalBossConditions))
    call TriggerAddAction(gg_trg_KillFinalBoss, function Trig_KillFinalBossActions)
endfunction
function Trig_WinConditions takes nothing returns boolean
    return CountUnitsInGroup(attackerGroup) <= 0
endfunction
function Trig_WinFunc006T takes nothing returns nothing
    call CustomVictoryBJ(Player(0), true, true)
    call CustomVictoryBJ(Player(1), true, true)
    call CustomVictoryBJ(Player(2), true, true)
    call CustomVictoryBJ(Player(3), true, true)
endfunction
function Trig_WinActions takes nothing returns nothing
    local timer ydl_timer
    call DisableTrigger(GetTriggeringTrigger())
    call DisplayTextToForce(GetPlayersAll(), "|cFF00FF00恭喜通关！游戏将在40秒后结束！|r")
    call ServerSavePointsWhenWin()
    set ydl_timer = CreateTimer()
    call TimerStart(ydl_timer, 40., false, function Trig_WinFunc006T)
    set ydl_timer = null
endfunction
function InitTrig_Win takes nothing returns nothing
    set gg_trg_Win = CreateTrigger()
    call DisableTrigger(gg_trg_Win)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Win, .1)
    call TriggerAddCondition(gg_trg_Win, Condition(function Trig_WinConditions))
    call TriggerAddAction(gg_trg_Win, function Trig_WinActions)
endfunction
function Trig____________________001Actions takes nothing returns nothing
endfunction
function InitTrig____________________001 takes nothing returns nothing
    set gg_trg____________________001 = CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger(gg_trg____________________001)
    call YDWETriggerRegisterEnterRectSimpleNull(gg_trg____________________001, GetPlayableMapRect())
    call TriggerAddAction(gg_trg____________________001, function Trig____________________001Actions)
endfunction
function Trig_JiFenPaiUpdateActions takes nothing returns nothing
    call MultiboardSetItemValue(MultiboardGetItem(udg_multi, 0, 0), I2S(CountUnitsInGroup(attackerGroup)) + " / " + I2S(udg_ShengYuGuaiShu))
    call LeaderboardSetPlayerItemValueBJ(Player(4), udg_jifenpai, udg_ShengYuGuaiShu)
    if udg_ShengYuGuaiShu <= CountUnitsInGroup(attackerGroup) then
        call CustomDefeatBJ(Player(0), "胜败乃兵家常事，大侠请重新来过！")
        call CustomDefeatBJ(Player(1), "胜败乃兵家常事，大侠请重新来过！")
        call CustomDefeatBJ(Player(2), "胜败乃兵家常事，大侠请重新来过！")
        call CustomDefeatBJ(Player(3), "胜败乃兵家常事，大侠请重新来过！")
        call DisableTrigger(GetTriggeringTrigger())
    else
    endif
endfunction
function InitTrig_JiFenPaiUpdate takes nothing returns nothing
    set gg_trg_JiFenPaiUpdate = CreateTrigger()
    call DisableTrigger(gg_trg_JiFenPaiUpdate)
    call TriggerRegisterTimerEventPeriodic(gg_trg_JiFenPaiUpdate, .5)
    call TriggerAddAction(gg_trg_JiFenPaiUpdate, function Trig_JiFenPaiUpdateActions)
endfunction
function Trig____________________002Actions takes nothing returns nothing
    call ShowUnit(gg_unit_e00H_0022, true)
    call ShowUnit(gg_unit_e00H_0023, true)
    call ShowUnit(gg_unit_e00H_0024, true)
    call ShowUnit(gg_unit_e00H_0025, true)
endfunction
function InitTrig____________________002 takes nothing returns nothing
    set gg_trg____________________002 = CreateTrigger()
    call TriggerAddAction(gg_trg____________________002, function Trig____________________002Actions)
endfunction
function Trig_FirstOccurActions takes nothing returns nothing
    if YDWEUnitHasItemOfTypeBJNull(GetTriggerUnit(), $49303055) then
        call YDWEPolledWaitNull(5)
    endif
endfunction
function InitTrig_FirstOccur takes nothing returns nothing
    set gg_trg_FirstOccur = CreateTrigger()
    call TriggerAddAction(gg_trg_FirstOccur, function Trig_FirstOccurActions)
endfunction
function InitCustomTriggers0 takes nothing returns nothing
    call InitTrig_SystemWindow()
    call InitTrig_MapInit()
    call InitTrig_OneSecond()
    call InitTrig_ChooseNanDu()
    call InitTrig_ChooseNanDu_2()
    call InitTrig_PlayerLeave()
    call InitTrig_KillFinalBoss()
    call InitTrig_Win()
    call InitTrig____________________001()
    call InitTrig_JiFenPaiUpdate()
    call InitTrig____________________002()
    call InitTrig_FirstOccur()
endfunction

function CreateF9 takes nothing returns nothing
    call CreateQuestBJ(0, "|cFFFF0000属性", "人品：|cFFCCFF33影响宝物掉落几率抽取武魂石几率\n", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
    call CreateQuestBJ(0, "|cFF00FF00游戏指令", "输入“+”和”-”：|cFFCCFF33调整视角|r\n输入“ckrp”：|cFFCCFF33查看当前人品值|r\n输入“cx”：|cFFCCFF33查看存档积分|r\n", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
    call CreateQuestBJ(0, "|cFFFF00CC神器系统", "在游戏中共有11种神器，每局随机开放3种，可以在NPC干将处查询本局开放神器和神器合成公式", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
endfunction
function InitMenPaiWuPin takes nothing returns nothing
    call AddItemToStockBJ($49303030, gg_unit_o00A_0019, 1, 1)
    call AddItemToStockBJ($49303031, gg_unit_o00A_0019, 1, 1)
    call AddItemToStockBJ($49303032, gg_unit_o00A_0019, 1, 1)
    call AddItemToStockBJ($49303033, gg_unit_o00A_0019, 1, 1)
    call AddItemToStockBJ($4930324B, gg_unit_o00A_0019, 1, 1)
endfunction
function RandomShenQi takes nothing returns nothing
    local integer i = 0
    local integer j = 0
    local integer temp = 0
    set i = 1
    loop
        exitwhen i > SHEN_QI_NUM
        set random_shenqi[i] = shenqi[i]
        set i = i + 1
    endloop
    set i = SHEN_QI_NUM
    loop
        exitwhen i <= 0
        set j = GetRandomInt(1, i - 1)
        set temp = random_shenqi[i]
        set random_shenqi[i] = random_shenqi[j]
        set random_shenqi[j] = temp
        set i = i - 1
    endloop
endfunction
function initKungfus takes nothing returns nothing
    call SaveInteger(YDHT, $49303232, 65244, $41303350)
    call SaveInteger(YDHT, $49303233, 65244, $41303352)
    call SaveInteger(YDHT, $49303234, 65244, $41303351)
    call SaveInteger(YDHT, $49303235, 65244, $4130334E)
endfunction

function InitPriv takes nothing returns nothing
    local integer i = 1
    local string name
    loop
        exitwhen i > 5
        set name = GetPlayerName(Player(i - 1))
        if name == "WorldEdit" or name == "zeikale" or name == "zeikala" or name == "非我莫属xq" or name == "苍穹而降" or name == "晓窗临风" or name == "沫Mu" then
            call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 15., "|CFFff9933开启测试人员权限|r")
            set udg_isTest[i] = true
        endif
        set i = i + 1
    endloop
endfunction

function MapInit_Conditions takes nothing returns boolean
    call InitPriv()
    call najitest()
    call initSpawn()
    call initEnemyMove()
    call mallInit()
    return false
endfunction

function MapInit takes nothing returns nothing
    local trigger t = CreateTrigger()
    set shenqi[1] = $49303056
    set shenqi[2] = $49303133
    set shenqi[3] = $49303046
    set shenqi[4] = $4930304D
    set shenqi[5] = $49303132
    set shenqi[6] = $4930304C
    set shenqi[7] = $49303055
    set shenqi[8] = $4930304E
    set shenqi[9] = $49303043
    set shenqi[10] = $49303052
    set shenqi[11] = $49303057
    set juenei[1] = $49303232
    set juenei[2] = $49303233
    set juenei[3] = $49303234
    set juenei[4] = $49303235
    call InitMenPaiWuPin()
    call RandomShenQi()
    call CreateF9()
    call initKungfus()
    call TriggerRegisterTimerEventSingle(t, .5)
    call TriggerAddAction(t, function MapInit_Conditions)
    set t = null
endfunction

function EnterMap_Conditions takes nothing returns boolean
    local unit u = GetEnteringUnit()
    local player p = GetOwningPlayer(u)
    if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING and GetUnitTypeId(u) != $6E303150 and GetUnitAbilityLevel(u, $416C6F63) <= 0 then
        set tower[tower_num + 1] = s__Tower_create(u, GetItemNum(u))
        set tower_num = tower_num + 1
        if IsBuilder(GetUnitTypeId(u)) then
            call UnitAddItemById(u, $4930324C)
        endif
    endif
    set u = null
    set p = null
    return false
endfunction
function Upgrade_Conditions takes nothing returns boolean
    local unit u = GetTriggerUnit()
    local player p = GetOwningPlayer(u)
    local integer tw = getTowerInstance(u)
    if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
        call DisplayTextToPlayer(p, 0, 0, "升级为" + GetUnitName(GetTriggerUnit()))
        call s__Tower_setAbility(tw)
        call s__Tower_setItemNum(tw, GetItemNum(u))
    endif
    return false
endfunction
function EnterMap takes nothing returns nothing
    local trigger t = CreateTrigger()
    call SaveTowerAbility()
    call YDWETriggerRegisterEnterRectSimpleNull(t, GetPlayableMapRect())
    call TriggerAddCondition(t, Condition(function EnterMap_Conditions))
    set t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_UPGRADE_FINISH)
    call TriggerAddCondition(t, Condition(function Upgrade_Conditions))
    set t = null
endfunction


function InitAllSystems takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_MapInit)
    call CreateAllUnits()
    call CreateRegions()
    call MyInitGlobals()
    call InitCustomTriggers0()
    
    call KeyInputSystem()
    call MapInit()
    call PickupItem()
    call UseAbility()
    call UnitAttack()
    call EnterMap()
    call UnitDamage()
    call UnitDeath()
    call UseItem()
    call IssueOrder()
    call EverySecond()
    call SelectUnitSystem()
    call UnitBuilt()
endfunction
