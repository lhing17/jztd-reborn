#include "library/BlzApi.j"
#include "library/MaxSpeed.j"
#include "library/UI.j"
#include "library/Tower.j"
#include "library/Encrypt.j"

#include "system/Common.j"

#include "denomination/Emei.j"

#include "logic/EnemyMove.j"
#include "logic/Mall.j"
#include "logic/Equip.j"
#include "logic/Spawn.j"
#include "logic/Exchange.j"
#include "logic/DrawCard.j"


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

#include "system/GUI.j"

#include "system/Najitest.j"
#include "system/GameDetail.j"




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
    integer array save_present
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
    integer FIRST_WAVE_TIME = 40
    integer SPAWN_FREQUENCY = 2
    // ????????????
    integer WAVE_TIME = 40
    // ??????????????????
    integer WAVE_INTERVAL = 10
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


    dialog array wugong_practice
    button array practice_wugong
    integer array low_towers
    integer array normal_towers
    integer array fine_towers
    integer array perfect_towers
    integer LOW_SIZE = 15
    integer NORMAL_SIZE = 15
    integer FINE_SIZE = 15
    integer PERFECT_SIZE = 13
    integer passed_time = 0
    integer array shenqi
    integer array random_shenqi
    integer array juenei
    boolean array udg_isTest
    integer SHEN_QI_NUM = 11
    integer open_shenqi = 3
    boolean array showHint
    hashtable NHT = InitHashtable()

    // ???????????????????????????
    hashtable CONT_HT = InitHashtable()
    constant integer CONT_KEY = 0
    constant integer CONT_MANA_ADDITION = 2

    // ?????????????????????????????????
    hashtable TOWER_ATTR_HT = InitHashtable()
    constant integer TOWER_HIT_KEY = 0
    constant integer TOWER_CRITICAL_RATE_KEY = 1
    constant integer TOWER_CRITICAL_ADDITION_KEY = 2
    constant integer TOWER_MANA_RECOVERY_KEY = 3
    constant integer TOWER_DAMAGE_KEY = 4
    constant integer TOWER_COMBO_KEY = 5     // ??????
    constant integer TOWER_PIERCE_KEY = 6    // ??????
    constant integer TOWER_COOLDOWN_KEY = 7  // ????????????
    constant integer TOWER_RESET_CD_KEY = 8  // ????????????
    constant integer TOWER_SEAL_KEY = 9      // ??????????????????

    // ????????????????????????????????????
    hashtable EQUIP_ATTR_HT = InitHashtable()
    // ??????1??????
    constant integer EQUIP_ATTR1_TYPE_KEY = 0
    // ??????1???
    constant integer EQUIP_ATTR1_VALUE_KEY = 1
    // ??????2??????
    constant integer EQUIP_ATTR2_TYPE_KEY = 2
    // ??????2???
    constant integer EQUIP_ATTR2_VALUE_KEY = 3
    // ??????3??????
    constant integer EQUIP_ATTR3_TYPE_KEY = 4
    // ??????3???
    constant integer EQUIP_ATTR3_VALUE_KEY = 5
    // ????????????
    constant integer EQUIP_STRENGTH_KEY = 6

    // ????????????????????????????????????
    constant integer EQUIP_ATTR_COUNT_KEY = 999
    constant integer EQUIP_LEVEL_KEY = 1000 // ????????????
    constant integer EQUIP_ABILITY_KEY = 1001  // ??????????????????

    constant integer EQUIP_PICKUP_KEY = 1002 // ????????????????????????
    constant integer EQUIP_INT_LEVEL_KEY = 1003 // ????????????
    constant integer EQUIP_BASE_STRENGTH_KEY = 1004 // ??????????????????

    constant integer TOWER_LEVEL_KEY = 2000 // ?????????
    
    // ??????????????????????????????
    boolean isFailing = false
    integer failingCounter = 0

    // ????????????????????????
    boolean array hasWisdomBall
    unit array wisbomBall
    
    // ?????????????????????
    boolean array wisdomBallSmartMode

    unit fastPickUnit = null


    trigger array st___prototype25

    boolean finalBossAttack = false

    // ????????????
    boolean array qqTeamAward // ?????????QQ?????????
    integer array mapLevel // ????????????
    integer array winDifficulty // ????????????

endglobals

function MyInitGlobals takes nothing returns nothing
    local integer i = 1

    loop
        exitwhen i > 4
        set hasWisdomBall[i] = false
        set wisbomBall[i] = null
        set wisdomBallSmartMode[i] = false
        set qqTeamAward[i] = false
        set i = i + 1
    endloop
    
    set udg_ShengYuGuaiShu = 0
    set udg_shuabingtimer = CreateTimer()
    set udg_select_diff = DialogCreate()
    set udg_boss_hint = CreateTimer()
    set udg_kill_final_num = 0
    set udg_difficulty = 0
endfunction


function CreateNeutralPassiveBuildingsEffect takes nothing returns nothing
    local player p = Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u


    // ????????????-??????
    call AddSpecialEffectTarget("ch_fuli.mdx", gg_unit_o00Q_0022, "overhead")

    // ????????????-??????
    call AddSpecialEffectTarget("ch_ronglian.mdx", gg_unit_o00L_0020, "overhead")

    // ????????????-??????
    call AddSpecialEffectTarget("mucaiduihuan.mdx", gg_unit_o00M_0010, "overhead")
    call AddSpecialEffectTarget("mucaiduihuan.mdx", gg_unit_o00M_0011, "overhead")
    call AddSpecialEffectTarget("mucaiduihuan.mdx", gg_unit_o00M_0012, "overhead")
    call AddSpecialEffectTarget("mucaiduihuan.mdx", gg_unit_o00M_0013, "overhead")
    call ShowUnitHide(gg_unit_o00M_0010)
    call ShowUnitHide(gg_unit_o00M_0011)
    call ShowUnitHide(gg_unit_o00M_0012)
    call ShowUnitHide(gg_unit_o00M_0013)

    // ????????????
    call ShowUnitHide(gg_unit_o013_0027)
    call ShowUnitHide(gg_unit_o013_0028)
    call ShowUnitHide(gg_unit_o013_0029)
    call ShowUnitHide(gg_unit_o013_0030)

    // ????????????
    call AddSpecialEffectTarget("ch_wugong.mdx", gg_unit_o00K_0021, "overhead")

    // ????????????
    call AddSpecialEffectTarget("xuanzemenpai.mdx", gg_unit_o00A_0014, "overhead")
    call ShowUnitHide(gg_unit_o00A_0014)
    call ShowUnitHide(gg_unit_e00H_0023)
    call ShowUnitHide(gg_unit_e00H_0024)
    call ShowUnitHide(gg_unit_e00H_0025)
    call ShowUnitHide(gg_unit_e00H_0026)

    // ????????????
    call AddSpecialEffectTarget("ch_tiaozhan.mdx", gg_unit_o00P_0015, "overhead")
    call AddSpecialEffectTarget("ch_tiaozhan.mdx", gg_unit_o00P_0016, "overhead")
    call AddSpecialEffectTarget("ch_tiaozhan.mdx", gg_unit_o00P_0017, "overhead")
    call AddSpecialEffectTarget("ch_tiaozhan.mdx", gg_unit_o00P_0018, "overhead")

    // ????????????
    call AddSpecialEffectTarget("ch_danyao.mdx", gg_unit_o00J_0019, "overhead")

    // ????????????
    call AddSpecialEffectTarget("ch_chouqu.mdx", gg_unit_o011_0006, "overhead")
    call AddSpecialEffectTarget("ch_chouqu.mdx", gg_unit_o011_0007, "overhead")
    call AddSpecialEffectTarget("ch_chouqu.mdx", gg_unit_o011_0008, "overhead")
    call AddSpecialEffectTarget("ch_chouqu.mdx", gg_unit_o011_0009, "overhead")

    // ????????????
    call AddSpecialEffectTarget("ch_zhaomu.mdx", gg_unit_o014_0031, "overhead")
    call AddSpecialEffectTarget("ch_zhaomu.mdx", gg_unit_o014_0032, "overhead")
    call AddSpecialEffectTarget("ch_zhaomu.mdx", gg_unit_o014_0033, "overhead")
    call AddSpecialEffectTarget("ch_zhaomu.mdx", gg_unit_o014_0034, "overhead")
    
    // ?????????
    call AddSpecialEffectTarget("ch_keji.mdx", gg_unit_o00N_0035, "overhead")
    call AddSpecialEffectTarget("ch_keji.mdx", gg_unit_o00N_0036, "overhead")
    call AddSpecialEffectTarget("ch_keji.mdx", gg_unit_o00N_0037, "overhead")
    call AddSpecialEffectTarget("ch_keji.mdx", gg_unit_o00N_0038, "overhead")

    // ?????????
    call AddSpecialEffectTarget("ch_wuqi.mdx", gg_unit_o00E_0039, "overhead")
    call AddSpecialEffectTarget("ch_wuqi.mdx", gg_unit_o00E_0040, "overhead")
    call AddSpecialEffectTarget("ch_wuqi.mdx", gg_unit_o00E_0041, "overhead")
    call AddSpecialEffectTarget("ch_wuqi.mdx", gg_unit_o00E_0042, "overhead")

    
endfunction
function CreateAllUnits_1 takes nothing returns nothing
    call CreateNeutralPassiveBuildingsEffect()

endfunction
function CreateRegions0 takes nothing returns nothing
    local weathereffect we
    set gg_rct_circle = Rect(- 4512., - 4384., 4448., 4192.)
    set we = AddWeatherEffect(gg_rct_circle, 'RAlr')
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
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFF99CC00???????????????????????????" + I2S(point))
            call DzAPI_Map_StoreInteger(Player(i - 1), "zdl", udg_zdl[i])
            call DzAPI_Map_StoreInteger(Player(i - 1), "point", udg_point[i])
            call DzAPI_Map_StoreInteger(Player(i - 1), "success", udg_success[i])
            call DzAPI_Map_StoreInteger(Player(i - 1), "tech", udg_tech[i])
            if udg_difficulty > DzAPI_Map_GetStoredInteger(Player(i - 1), "difficulty") then
                call DzAPI_Map_StoreInteger(Player(i - 1), "difficulty", udg_difficulty)
            endif
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
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFFFE890D" + GetPlayerName(Player(i - 1)) + "|CFF99CC00??????????????????")
            set saveFlag[i] = true
        else
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFFFE890D" + GetPlayerName(Player(i - 1)) + "|CFFFF0303??????????????????")
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
        set qqTeamAward[i] = DzAPI_Map_GetStoredBoolean(Player(i - 1), "qqTeamAward")
        set mapLevel[i] = DzAPI_Map_GetMapLevel(Player(i - 1))
        set winDifficulty[i] = DzAPI_Map_GetStoredInteger(Player(i - 1), "difficulty")
        set udg_pointMax[i] = 0
        set saveFlag[i] = false
        set i = i + 1
    endloop
endfunction


function GetItemNum takes unit u returns integer
    local integer i = 1
    // if GetUnitPointValue(u) >= 600 then
    //     set i = 1
    // endif
    // if GetUnitPointValue(u) >= 2500 then
    //     set i = 2
    // endif
    // if GetUnitPointValue(u) >= 6000 then
    //     set i = 3
    // endif
    // if GetUnitPointValue(u) >= 10000 then
    //     set i = 4
    // endif
    if IsBuilder(GetUnitTypeId(u)) then
        set i = 6
    else
        set i = LoadInteger(YDHT, getStructItem(GetUnitTypeId(u)), TOWER_LEVEL_KEY)
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
    call CreateMultiboardBJ(1, 1, "????????????")
    set udg_multi = GetLastCreatedMultiboard()
    call MultiboardDisplayBJ(true, GetLastCreatedMultiboard())
    call YDWEMultiboardSetItemWidthBJNull(GetLastCreatedMultiboard(), 1, 1, 10.)
endfunction
function InitTrig_SystemWindow takes nothing returns nothing
    set gg_trg_SystemWindow = CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_SystemWindow, 0.)
    call TriggerAddAction(gg_trg_SystemWindow, function Trig_SystemWindowActions)
endfunction

function InitTrig_MapInit takes nothing returns nothing
    call SetTimeOfDay(8.)
    call UseTimeOfDayBJ(false)

    call SetPlayerState(Player(5), PLAYER_STATE_GIVES_BOUNTY, 1)
    set bj_forLoopAIndex = 1
    set bj_forLoopAIndexEnd = 5
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        // call ShowUnitShow(gg_unit_o00A_0014)
        // ????????????????????????????????????
        call SetPlayerTechMaxAllowedSwap('H004', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('N01O', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('n01N', 2, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('O003', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('n002', 2, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('n010', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('H000', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('n01Z', 2, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('N00G', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('H017', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('H015', 2, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('h00Z', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('N027', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('n01S', 2, ConvertedPlayer(bj_forLoopAIndex))
        
        set bj_forLoopAIndex = bj_forLoopAIndex + 1
    endloop
endfunction
function Trig_OneSecondActions takes nothing returns nothing
    local integer i = 0
    call AddWeatherEffectSaveLast(GetEntireMapRect(), 'LRma')
    call SetCameraTargetController(gg_unit_o00A_0014, 0, 0, false)
    call InitServerValues()
    call ServerSavePointsWhenEnterGame()
    set udg_ShengYuGuaiShu = udg_ShengYuGuaiShu + 25
    loop
        exitwhen i >= 4
        if GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING then
            set udg_ShengYuGuaiShu = udg_ShengYuGuaiShu + 25
            call DisplayTimedTextToForce(GetPlayersAll(), 15., "??????" + YDWEGetPlayerColorString(Player(i), GetPlayerName(Player(i))) + "?????????????????????25????????????")
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

function createBuilderForPlayer takes integer i returns nothing
    if GetPlayerController(Player(i - 1)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(i - 1)) == PLAYER_SLOT_STATE_PLAYING then
        call CreateNUnitsAtLoc(1, 'U00X', Player(i - 1), born_loc[i], bj_UNIT_FACING)
        set builder[i] = bj_lastCreatedUnit
        call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03U')
        call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03V')
        call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03W')
        call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03X')
        call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A04I')
        call PanCameraToTimedLocForPlayer(Player(i - 1), born_loc[i], 0)
    endif
endfunction

function Trig_ChooseNanDuFunc013T takes nothing returns nothing
    if udg_difficulty == 0 then
        call DialogDisplay(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), $32A9E4C8), udg_select_diff, false)
        call DisplayTimedTextToForce(GetPlayersAll(), 10., "|cff00FFFF?????????????????????|cFF00CC00????????????(N1)")
        call DisplayTimedTextToForce(GetPlayersAll(), 10., "|cFF00CC00????????????(N1)|r????????????")
        call DisplayTimedTextToForce(GetPlayersAll(), 10., "???????????????????????????????????????????????????????????????|cFF00CC001|r")
        set udg_difficulty = 1
        call SetPlayerTechResearchedSwap('R000', 1, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF00CC00????????????(N1)")
        set bj_forLoopAIndex = 1
        set bj_forLoopAIndexEnd = 4
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SetPlayerStateBJ(ConvertedPlayer(bj_forLoopAIndex), PLAYER_STATE_RESOURCE_GOLD, 1000)
            call SetPlayerStateBJ(Player(bj_forLoopAIndex - 1), PLAYER_STATE_RESOURCE_LUMBER, 10)
            call SetPlayerStateBJ(ConvertedPlayer(bj_forLoopAIndex), PLAYER_STATE_RESOURCE_FOOD_CAP, 2)

            call createBuilderForPlayer(bj_forLoopAIndex)
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
    call DisplayTimedTextToForce(GetPlayersAll(), 10., "????????????" + (YDWEGetPlayerColorString(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, $32A9E4C8), GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, $32A9E4C8))) + "????????????"))
    call DialogSetMessage(udg_select_diff, "???????????????")
    set udg_diff[1] = DialogAddButton(udg_select_diff, "|cFF00CC00????????????(N1)", 65)
    set udg_diff[2] = DialogAddButton(udg_select_diff, "|cFFCC0066????????????(N2)", 66)
    set udg_diff[3] = DialogAddButton(udg_select_diff, "|cFFFF6600????????????(N3)", 67)
    set udg_diff[4] = DialogAddButton(udg_select_diff, "|cFF0041FF????????????(N4)", 68)
    set udg_diff[5] = DialogAddButton(udg_select_diff, "|cFF1FBF00????????????(N5)", 69)
    set udg_diff[6] = DialogAddButton(udg_select_diff, "|cFFFF0000????????????(N6)", 70)
    set udg_diff[7] = DialogAddButton(udg_select_diff, "|cFF00FFFF????????????(N7)", 71)
    set udg_diff[8] = DialogAddButton(udg_select_diff, "|cFFCCCC00????????????(N8)", 72)
    set udg_diff[9] = DialogAddButton(udg_select_diff, "|cFF0099CC????????????(N9)", 73)
    set udg_diff[10] = DialogAddButton(udg_select_diff, "|cFF66CC99????????????(N10)", 74)
    // set udg_diff[7] = DialogAddButton(udg_select_diff, "|cFF00FF00????????????", 71)
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
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF???????????????|cFF00CC00????????????(N1)")
        call DisplayTextToForce(GetPlayersAll(), "|cFF00CC00????????????(N1)|r????????????")
        call DisplayTextToForce(GetPlayersAll(), "???????????????????????????????????????????????????????????????|cFF00CC001|r")
        set udg_difficulty = 1
        call SetPlayerTechResearchedSwap('R000', 1, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF00CC00????????????(N1)")
    endif
    if GetClickedButtonBJ() == udg_diff[2] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF???????????????|cFFCC0066????????????(N2)")
        call DisplayTextToForce(GetPlayersAll(), "|cFFCC0066????????????(N2)|r????????????")
        call DisplayTextToForce(GetPlayersAll(), "???????????????????????????????????????????????????????????????|cFFCC00662|r")
        set udg_difficulty = 2
        call SetPlayerTechResearchedSwap('R000', 3, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFFCC0066????????????(N2)")
    endif
    if GetClickedButtonBJ() == udg_diff[3] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF???????????????|cFFFF6600????????????(N3)")
        call DisplayTextToForce(GetPlayersAll(), "|cFFFF6600????????????(N3)|r????????????")
        call DisplayTextToForce(GetPlayersAll(), "???????????????????????????????????????????????????????????????|cFFFF66003|r")
        set udg_difficulty = 3
        call SetPlayerTechResearchedSwap('R000', 5, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFFFF6600????????????(N3)")
    endif
    if GetClickedButtonBJ() == udg_diff[4] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF???????????????|cFF0041FF????????????(N4)")
        call DisplayTextToForce(GetPlayersAll(), "|cFF0041FF????????????(N4)|r????????????")
        call DisplayTextToForce(GetPlayersAll(), "???????????????????????????????????????????????????????????????|cFF0041FF4|r")
        set udg_difficulty = 4
        call SetPlayerTechResearchedSwap('R000', 7, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF0041FF????????????(N4)")
    endif
    if GetClickedButtonBJ() == udg_diff[5] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF???????????????|cFF1FBF00????????????(N5)")
        call DisplayTextToForce(GetPlayersAll(), "|cFF1FBF00????????????(N5)|r????????????")
        call DisplayTextToForce(GetPlayersAll(), "???????????????????????????????????????????????????????????????|cFF1FBF005|r")
        set udg_difficulty = 5
        call SetPlayerTechResearchedSwap('R000', 9, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF1FBF00????????????(N5)")
    endif
    if GetClickedButtonBJ() == udg_diff[6] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF???????????????|cFFFF0000????????????(N6)")
        call DisplayTextToForce(GetPlayersAll(), "|cFFFF0000????????????(N6)|r????????????")
        call DisplayTextToForce(GetPlayersAll(), "???????????????????????????????????????????????????????????????|cFF00FFFF6|r")
        set udg_difficulty = 6
        call SetPlayerTechResearchedSwap('R000', 11, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFFFF0000????????????(N6)")
    endif
    if GetClickedButtonBJ() == udg_diff[7] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF???????????????|cFF00FFFF????????????(N7)")
        call DisplayTextToForce(GetPlayersAll(), "|cFF00FFFF????????????(N7)|r????????????")
        call DisplayTextToForce(GetPlayersAll(), "???????????????????????????????????????????????????????????????|cFF00FFFF7|r")
        set udg_difficulty = 7
        call SetPlayerTechResearchedSwap('R000', 13, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF00FFFF????????????(N7)")
    endif
    if GetClickedButtonBJ() == udg_diff[8] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF???????????????|cFFCCCC00????????????(N8)")
        call DisplayTextToForce(GetPlayersAll(), "|cFFCCCC00????????????(N8)|r????????????")
        call DisplayTextToForce(GetPlayersAll(), "???????????????????????????????????????????????????????????????|cFF00FFFF8|r")
        set udg_difficulty = 8
        call SetPlayerTechResearchedSwap('R000', 15, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFFCCCC00????????????(N8)")
    endif
    if GetClickedButtonBJ() == udg_diff[9] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF???????????????|cFF0099CC????????????(N9)")
        call DisplayTextToForce(GetPlayersAll(), "|cFF0099CC????????????(N9)|r????????????")
        call DisplayTextToForce(GetPlayersAll(), "???????????????????????????????????????????????????????????????|cFF00FFFF9|r")
        set udg_difficulty = 9
        call SetPlayerTechResearchedSwap('R000', 17, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF0099CC????????????(N9)")
    endif
    if GetClickedButtonBJ() == udg_diff[10] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF???????????????|cFF66CC99????????????(N10)")
        call DisplayTextToForce(GetPlayersAll(), "|cFF66CC99????????????(N10)|r????????????")
        call DisplayTextToForce(GetPlayersAll(), "???????????????????????????????????????????????????????????????|cFF00FFFF10|r")
        set udg_difficulty = 10
        call SetPlayerTechResearchedSwap('R000', 19, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF66CC99????????????(N10)")
    endif
    loop
        exitwhen i > 4
        call SetPlayerStateBJ(Player(i - 1), PLAYER_STATE_RESOURCE_FOOD_CAP, 2)
        call SetPlayerStateBJ(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD, 1000)
        call SetPlayerStateBJ(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER, 10)
        call createBuilderForPlayer(i)
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
    call DisplayTimedTextToForce(GetPlayersAll(), 10., "|CFFFF0000????????????????????????????????????????????????25???")
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
    return GetUnitTypeId(GetTriggerUnit()) == 'U00B'
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

function noFinalBoss takes nothing returns boolean
    local unit u = null
    local group g = CreateGroup()
    call GroupAddGroup(attackerGroup, g)
    loop
        set u = FirstOfGroup(g)
        exitwhen u == null
        if GetUnitTypeId(u) == 'U00B' then
            call DestroyGroup(g)
            set u = null
            set g = null
            return false
        endif
        call GroupRemoveUnit(g, u)
    endloop
    call DestroyGroup(g)
    set u = null
    set g = null
    return true

endfunction

function Trig_WinConditions takes nothing returns boolean
    return finalBossAttack and noFinalBoss()
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
    call DisplayTextToForce(GetPlayersAll(), "|cFF00FF00???????????????????????????40???????????????|r")
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
    local integer count = CountUnitsInGroup(attackerGroup)
    call MultiboardSetItemValue(MultiboardGetItem(udg_multi, 0, 0), "???????????????" + I2S(count) + " / " + I2S(udg_ShengYuGuaiShu))
    call LeaderboardSetPlayerItemValueBJ(Player(4), udg_jifenpai, udg_ShengYuGuaiShu)

    if count >= udg_ShengYuGuaiShu then
        set isFailing = true
        set failingCounter = failingCounter + 1
        if ModuloInteger(failingCounter, 3) == 0 then
            call DisplayTextToForce(GetPlayersAll(), "|cFFFF0000???????????????????????????????????????????????????????????????????????????????????????|r")
        endif
    else
        set failingCounter = 0
        set isFailing = false
    endif
endfunction
function InitTrig_JiFenPaiUpdate takes nothing returns nothing
    set gg_trg_JiFenPaiUpdate = CreateTrigger()
    call DisableTrigger(gg_trg_JiFenPaiUpdate)
    call TriggerRegisterTimerEventPeriodic(gg_trg_JiFenPaiUpdate, .5)
    call TriggerAddAction(gg_trg_JiFenPaiUpdate, function Trig_JiFenPaiUpdateActions)
endfunction

function Trig_FirstOccurActions takes nothing returns nothing
    if YDWEUnitHasItemOfTypeBJNull(GetTriggerUnit(), 'I00U') then
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
    call InitTrig_FirstOccur()
endfunction

function CreateF9 takes nothing returns nothing
    call CreateQuestBJ(0, "|cFFFF0000??????", "?????????|cFFCCFF33?????????????????????????????????????????????\n", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
    call CreateQuestBJ(0, "|cFF00FF00????????????", "?????????+?????????-??????|cFFCCFF33????????????|r\n?????????ckrp??????|cFFCCFF33?????????????????????|r\n?????????cx??????|cFFCCFF33??????????????????|r\n", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
    call CreateQuestBJ(0, "|cFFFF00CC????????????", "??????????????????11??????????????????????????????3???????????????NPC??????????????????????????????????????????????????????", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
endfunction
function InitMenPaiWuPin takes nothing returns nothing
    call AddItemToStockBJ('I000', gg_unit_o00A_0014, 1, 1)
    call AddItemToStockBJ('I001', gg_unit_o00A_0014, 1, 1)
    call AddItemToStockBJ('I002', gg_unit_o00A_0014, 1, 1)
    call AddItemToStockBJ('I003', gg_unit_o00A_0014, 1, 1)
    call AddItemToStockBJ('I02K', gg_unit_o00A_0014, 1, 1)
endfunction

function initStocks takes nothing returns nothing

    
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
    call SaveInteger(YDHT, 'I022', 65244, 'A03P')
    call SaveInteger(YDHT, 'I023', 65244, 'A03R')
    call SaveInteger(YDHT, 'I024', 65244, 'A03Q')
    call SaveInteger(YDHT, 'I025', 65244, 'A03N')
    call SaveInteger(YDHT, 'I068', 65244, 'A096')
endfunction

function InitPriv takes nothing returns nothing
    local integer i = 1
    local string name
    loop
        exitwhen i > 5
        set name = LoadStr(YDHT, GetHandleId(Player(i - 1)), StringHash("name"))
        if name == "WorldEdit" or name == "zeikale" or name == "zeikala" or name == "????????????xq" or name == "????????????" or name == "????????????" or name == "Talent??????" then
            call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 15., "|CFFff9933????????????????????????|r")
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
    local integer j = 1
    set shenqi[1] = 'I00V'
    set shenqi[2] = 'I013'
    set shenqi[3] = 'I00F'
    set shenqi[4] = 'I00M'
    set shenqi[5] = 'I012'
    set shenqi[6] = 'I00L'
    set shenqi[7] = 'I00U'
    set shenqi[8] = 'I00N'
    set shenqi[9] = 'I00C'
    set shenqi[10] = 'I00R'
    set shenqi[11] = 'I00W'
    set juenei[1] = 'I022'
    set juenei[2] = 'I023'
    set juenei[3] = 'I024'
    set juenei[4] = 'I025'
    set juenei[5] = 'I068'
    set luck[1] = 20
    set luck[2] = 20
    set luck[3] = 20
    set luck[4] = 20
    set normal_drops[1] = 'I004'
    set normal_drops[2] = 'I00E'
    set normal_drops[3] = 'I00P'
    set normal_drops[4] = 'I00G'
    set normal_drops[5] = 'I00X'
    set rare_drops[1] = 'I00B'
    set rare_drops[2] = 'I00H'
    set rare_drops[3] = 'I00O'
    set rare_drops[4] = 'I005'
    set rare_drops[5] = 'I00Y'
    set valuable_drops[1] = 'I00A'
    set valuable_drops[2] = 'I00I'
    set valuable_drops[3] = 'I006'
    set valuable_drops[4] = 'I008'
    set valuable_drops[5] = 'I00Z'
    set valuable_drops[6] = 'I016'
    set ancient_drops[1] = 'I009'
    set ancient_drops[2] = 'I00J'
    set ancient_drops[3] = 'I00Q'
    set ancient_drops[4] = 'I00S'
    set ancient_drops[5] = 'I010'
    set epic_drops[1] = 'I00D'
    set epic_drops[2] = 'I00K'
    set epic_drops[3] = 'I007'
    set epic_drops[4] = 'I00T'
    set epic_drops[5] = 'I011'

    set low_towers[1] = 'I100'
    set low_towers[2] = 'I101'
    set low_towers[3] = 'I102'
    set low_towers[4] = 'I109'
    set low_towers[5] = 'I10A'
    set low_towers[6] = 'I10B'
    set low_towers[7] = 'I10J'
    set low_towers[8] = 'I10K'
    set low_towers[9] = 'I10L'
    set low_towers[10] = 'I10U'
    set low_towers[11] = 'I10V'
    set low_towers[12] = 'I10W'
    set low_towers[13] = 'I115'
    set low_towers[14] = 'I116'
    set low_towers[15] = 'I117'

    set normal_towers[1] = 'I103'
    set normal_towers[2] = 'I104'
    set normal_towers[3] = 'I10C'
    set normal_towers[4] = 'I10D'
    set normal_towers[5] = 'I10M'
    set normal_towers[6] = 'I10N'
    set normal_towers[7] = 'I10O'
    set normal_towers[8] = 'I10X'
    set normal_towers[9] = 'I10Y'
    set normal_towers[10] = 'I10Z'
    set normal_towers[11] = 'I118'
    set normal_towers[12] = 'I119'
    set normal_towers[13] = 'I11A'
    set normal_towers[14] = 'I11B'
    set normal_towers[15] = 'I11J'

    set fine_towers[1] = 'I105'
    set fine_towers[2] = 'I106'
    set fine_towers[3] = 'I10E'
    set fine_towers[4] = 'I10F'
    set fine_towers[5] = 'I10G'
    set fine_towers[6] = 'I10P'
    set fine_towers[7] = 'I10Q'
    set fine_towers[8] = 'I10R'
    set fine_towers[9] = 'I110'
    set fine_towers[10] = 'I111'
    set fine_towers[11] = 'I112'
    set fine_towers[12] = 'I11C'
    set fine_towers[13] = 'I11D'
    set fine_towers[14] = 'I11E'
    set fine_towers[15] = 'I11K'
    
    set perfect_towers[1] = 'I107'
    set perfect_towers[2] = 'I108'
    set perfect_towers[3] = 'I10H'
    set perfect_towers[4] = 'I10I'
    set perfect_towers[5] = 'I10S'
    set perfect_towers[6] = 'I10T'
    set perfect_towers[7] = 'I113'
    set perfect_towers[8] = 'I114'
    set perfect_towers[9] = 'I11F'
    set perfect_towers[10] = 'I11G'
    set perfect_towers[11] = 'I11H'
    set perfect_towers[12] = 'I11I'
    set perfect_towers[13] = 'I11L'
    
    

    loop
        exitwhen j > MAX_NORMAL_DROP
        call SaveStr(YDHT, normal_drops[j], EQUIP_LEVEL_KEY, "|cffccffff??????|r")
        call SaveInteger(YDHT, normal_drops[j], EQUIP_INT_LEVEL_KEY, 1)
        call SaveInteger(YDHT, normal_drops[j], EQUIP_BASE_STRENGTH_KEY, 1)
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > MAX_RARE_DROP
        call SaveStr(YDHT, rare_drops[j], EQUIP_LEVEL_KEY, "|cff3366ff??????|r")
        call SaveInteger(YDHT, rare_drops[j], EQUIP_INT_LEVEL_KEY, 2)
        call SaveInteger(YDHT, rare_drops[j], EQUIP_BASE_STRENGTH_KEY, 3)
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > MAX_VALUABLE_DROP
        call SaveStr(YDHT, valuable_drops[j], EQUIP_LEVEL_KEY, "|cffff9900??????|r")
        call SaveInteger(YDHT, valuable_drops[j], EQUIP_INT_LEVEL_KEY, 3)
        call SaveInteger(YDHT, valuable_drops[j], EQUIP_BASE_STRENGTH_KEY, 6)
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > MAX_ANCIENT_DROP
        // ?????????????????????????????????
        call SaveInteger(YDHT, ancient_drops[j], EQUIP_ATTR_COUNT_KEY, 1)
        call SaveStr(YDHT, ancient_drops[j], EQUIP_LEVEL_KEY, "|cffff0000??????|r")
        call SaveInteger(YDHT, ancient_drops[j], EQUIP_INT_LEVEL_KEY, 4)
        call SaveInteger(YDHT, ancient_drops[j], EQUIP_BASE_STRENGTH_KEY, 10)
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > MAX_EPIC_DROP
        // ?????????????????????????????????
        call SaveInteger(YDHT, epic_drops[j], EQUIP_ATTR_COUNT_KEY, 2)
        call SaveStr(YDHT, epic_drops[j], EQUIP_LEVEL_KEY, "|CFFCC99FF??????|r")
        call SaveInteger(YDHT, epic_drops[j], EQUIP_INT_LEVEL_KEY, 5)
        call SaveInteger(YDHT, epic_drops[j], EQUIP_BASE_STRENGTH_KEY, 15)
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > SHEN_QI_NUM
        // ???????????????????????????
        call SaveInteger(YDHT, shenqi[j], EQUIP_ATTR_COUNT_KEY, 3)
        call SaveStr(YDHT, shenqi[j], EQUIP_LEVEL_KEY, "|cff800080??????|r")
        call SaveInteger(YDHT, shenqi[j], EQUIP_INT_LEVEL_KEY, 6)
        call SaveInteger(YDHT, shenqi[j], EQUIP_BASE_STRENGTH_KEY, 20)
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j >= 4
        call SaveStr(YDHT, GetHandleId(Player(j - 1)), StringHash("name"), GetPlayerName(Player(j - 1)))
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > LOW_SIZE
        call SaveInteger(YDHT, low_towers[j], TOWER_LEVEL_KEY, 1)
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > NORMAL_SIZE
        call SaveInteger(YDHT, normal_towers[j], TOWER_LEVEL_KEY, 2)
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > FINE_SIZE
        call SaveInteger(YDHT, fine_towers[j], TOWER_LEVEL_KEY, 3)
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > PERFECT_SIZE
        call SaveInteger(YDHT, perfect_towers[j], TOWER_LEVEL_KEY, 4)
        set j = j + 1
    endloop

    call SaveStr(YDHT, 'I00C', EQUIP_ABILITY_KEY, "???????????????????????????200%????????????")
    call SaveStr(YDHT, 'I00F', EQUIP_ABILITY_KEY, "???????????????????????????10000??????????????????30%??????")
    call SaveStr(YDHT, 'I00L', EQUIP_ABILITY_KEY, "??????????????????????????????")
    call SaveStr(YDHT, 'I00M', EQUIP_ABILITY_KEY, "0.5%????????????????????????????????????????????????BOSS?????????10%??????")
    call SaveStr(YDHT, 'I00N', EQUIP_ABILITY_KEY, "?????????????????????????????????????????????70%??????")
    call SaveStr(YDHT, 'I00R', EQUIP_ABILITY_KEY, "??????????????????")
    call SaveStr(YDHT, 'I00U', EQUIP_ABILITY_KEY, "????????????????????????CD")
    call SaveStr(YDHT, 'I00V', EQUIP_ABILITY_KEY, "?????????????????????????????????10?????????????????????")
    call SaveStr(YDHT, 'I00W', EQUIP_ABILITY_KEY, "???????????????????????????????????????????????????100??????")
    call SaveStr(YDHT, 'I013', EQUIP_ABILITY_KEY, "??????????????????????????????100?????????")


    // YDWEGetObjectPropertyString(YDWE_OBJECT_TYPE_ABILITY, 'AHhb', "Name")
    call InitMenPaiWuPin()

    call initStocks()
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
    local integer i = 1 + GetPlayerId(p)
    local item it2 = null
    if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING and GetUnitTypeId(u) != 'n01P' and GetUnitAbilityLevel(u, 'Aloc') <= 0 then
        set tower[tower_num + 1] = s__Tower_create(u, GetItemNum(u))
        set tower_num = tower_num + 1
        if IsBuilder(GetUnitTypeId(u)) then
            // call UnitAddItemById(u, 'I02L')

            // ??????N8??????????????????????????????
            if winDifficulty[i] >= 8 then
                set it2 = UnitAddItemById(u, epic_drops[GetRandomInt(1, MAX_EPIC_DROP)])
                call generateRandomAttr(it2)
                call addExtraAttr(u, it2)
            endif

            // ??????N9????????????30????????????
            if winDifficulty[i] >= 9 then
                call addLumber(p, 30)
            endif

            // ?????????????????????????????????????????????
            if RequestExtraBooleanData(44, p, null, null, false, 0, 0, 0) then
                call UnitAddItemById(u, 'I061')
            endif

            // ????????????
            if europe_flag[i] == 1 then
                call UnitAddItemById(u, 'I061')
                call UnitAddItemById(u, 'I061')
                call UnitAddItemById(u, 'I061')
            endif
        endif
    endif
    set u = null
    set p = null
    set it2 = null
    return false
endfunction
function Upgrade_Conditions takes nothing returns boolean
    local unit u = GetTriggerUnit()
    local player p = GetOwningPlayer(u)
    local integer tw = getTowerInstance(u)
    if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
        call DisplayTextToPlayer(p, 0, 0, "?????????" + GetUnitName(GetTriggerUnit()))
        call s__Tower_setAbility(tw)
        call s__Tower_setItemNum(tw, GetItemNum(u))
        // ???????????????5 * ??????
        call YDWEGeneralBounsSystemUnitSetBonus(u, 1, 0, CONT_MANA_ADDITION * LoadInteger(CONT_HT, GetHandleId(u), CONT_KEY))
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
    call CreateAllUnits_1()
    call CreateRegions0()
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
    call GameDetail_Trigger()
    call initUI()
    call initEquip()
    call initSetAttackSpeed()
    call initDrawCard()

    // ????????????
    call initExchange()
endfunction
