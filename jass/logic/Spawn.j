function spawnBoss takes integer i, integer boss_index returns nothing
    local location array loc
    local location array target
    set loc[0] = GetRectCenter(gg_rct_spawn1)
    set loc[1] = GetRectCenter(gg_rct_spawn2)
    set loc[2] = GetRectCenter(gg_rct_spawn3)
    set loc[3] = GetRectCenter(gg_rct_spawn4)
    set target[0] = GetRectCenter(nodeRects[22])
    set target[1] = GetRectCenter(nodeRects[23])
    set target[2] = GetRectCenter(nodeRects[24])
    set target[3] = GetRectCenter(nodeRects[21])
    call CreateNUnitsAtLoc(1, boss[boss_index], Player(5), loc[i - 1], bj_UNIT_FACING)
    call GroupAddUnit(attackerGroup, bj_lastCreatedUnit)
    call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851986, target[i - 1])
    call RemoveLocation(target[i - 1])
    call RemoveLocation(loc[i - 1])
    set target[i - 1] = null
    set loc[i - 1] = null
endfunction

function ServerSavePointsEveryTenWave takes nothing returns nothing
    local integer i = 1
    local integer point = 5
    local string point_times = DzAPI_Map_GetMapConfig("point_time")
    if S2I(point_times) >= 1 then
        set point = point * S2I(point_times)
    endif
    loop
        exitwhen i > 4
        set udg_zdl[i] = udg_zdl[i] + point
        set udg_point[i] = udg_point[i] + point
        if not saveFlag[i] then
            set udg_success[i] = udg_success[i] + 1
            set saveFlag[i] = true
        endif
        set udg_tech[i] = udg_tech[i] + 1
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
        if GetPlayerServerValueSuccess(Player(i - 1)) then
            call DzAPI_Map_Stat_SetStat(Player(i - 1), "zdl", I2S(udg_zdl[i]))
            call DzAPI_Map_Stat_SetStat(Player(i - 1), "point", I2S(udg_point[i]))
            call DzAPI_Map_Stat_SetStat(Player(i - 1), "tech", udg_tech_evaluate[i])
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFFFE890D" + GetPlayerName(Player(i - 1)) + "|CFF99CC00数据保存成功")
        else
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFFFE890D" + GetPlayerName(Player(i - 1)) + "|CFFFF0303数据保存失败")
        endif
        set i = i + 1
    endloop
endfunction

function initMobsAndBosses takes nothing returns nothing
    set mob[1] = $68303035
    set mob[2] = $75303030
    set mob[3] = $68303036
    set mob[4] = $65303032
    set mob[5] = $6F303034
    set mob[6] = $75303031
    set mob[7] = $6E303048
    set mob[8] = $68303037
    set mob[9] = $7A303030
    set mob[10] = $7A303031
    set mob[11] = $75303032
    set mob[12] = $6F303035
    set mob[13] = $6E303254
    set mob[14] = $65303033
    set mob[15] = $6E30304A
    set mob[16] = $75303033
    set mob[17] = $65303034
    set mob[18] = $65303035
    set mob[19] = $75303034
    set mob[20] = $6E30304B
    set mob[21] = $65303036
    set mob[22] = $75303035
    set mob[23] = $68303038
    set mob[24] = $68303039
    set mob[25] = $6E30304C
    set mob[26] = $6E30304D
    set mob[27] = $6E30304E
    set mob[28] = $6E30304F
    set mob[29] = $6E303050
    set mob[30] = $6E303051
    set mob[31] = $75303036
    set mob[32] = $6F303038
    set mob[33] = $68303041
    set mob[34] = $65303037
    set mob[35] = $6E303053
    set mob[36] = $75303037
    set mob[37] = $6F303039
    set mob[38] = $6E303054
    set mob[39] = $6E303055
    set mob[40] = $6E303056
    set mob[41] = $6E303057
    set mob[42] = $75303039
    set mob[43] = $65303038
    set mob[44] = $75303041
    set mob[45] = $6E303058
    set mob[46] = $6E303255
    set mob[47] = $6E303256
    set mob[48] = $6E303257
    set mob[49] = $6E303258
    set mob[50] = $6E303259
    set mob[51] = $6E30325A
    set mob[52] = $6E303330
    set mob[53] = $6E303331
    set mob[54] = $6E303332
    set mob[55] = $6E303333
    set boss[1] = $4E303049
    set boss[2] = $4F303037
    set boss[3] = $4E303052
    set boss[4] = $55303038
    set boss[5] = $55303050
    set boss[6] = $55303042
    set survive_mob[1] = $6830304D
    set survive_mob[2] = $6830304C
    set survive_mob[3] = $6830304B
    set survive_mob[4] = $6830304E
    set survive_boss[1] = $4E303334
endfunction

function doSpawnFinalBoss takes nothing returns nothing
    local location array loc
    local location array target
    local integer i = 0
    set loc[0] = GetRectCenter(gg_rct_spawn1)
    set loc[1] = GetRectCenter(gg_rct_spawn2)
    set loc[2] = GetRectCenter(gg_rct_spawn3)
    set loc[3] = GetRectCenter(gg_rct_spawn4)
    set target[0] = GetRectCenter(nodeRects[22])
    set target[1] = GetRectCenter(nodeRects[23])
    set target[2] = GetRectCenter(nodeRects[24])
    set target[3] = GetRectCenter(nodeRects[21])
    loop
        exitwhen i > 3
        if GetPlayerController(Player(i)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING and gameMode == 0 then
            call CreateNUnitsAtLoc(1, $55303042, Player(5), loc[i], bj_UNIT_FACING)
            call GroupAddUnit(attackerGroup, bj_lastCreatedUnit)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851986, target[i])
            call RemoveLocation(target[i])
            call RemoveLocation(loc[i])
            set target[i] = null
            set loc[i] = null
        endif
        set i = i + 1
    endloop
endfunction

function spawn takes nothing returns nothing
    local integer i = 0
    local integer j = 0
    local integer rand = 1
    local location array loc
    local location array target
    local timer t = CreateTimer()
    local integer life = 0
    local integer jmax = 7
    set wave = wave + 1
    set loc[0] = GetRectCenter(gg_rct_spawn1)
    set loc[1] = GetRectCenter(gg_rct_spawn2)
    set loc[2] = GetRectCenter(gg_rct_spawn3)
    set loc[3] = GetRectCenter(gg_rct_spawn4)
    set target[0] = GetRectCenter(nodeRects[22])
    set target[1] = GetRectCenter(nodeRects[23])
    set target[2] = GetRectCenter(nodeRects[24])
    set target[3] = GetRectCenter(nodeRects[21])
    if gameMode == 1 then
        set jmax = 100
    endif
    if gameMode == 1 and wave > 30 and ModuloInteger(wave, 10) == 1 then
        call ServerSavePointsEveryTenWave()
    endif
    loop
        exitwhen i >= 4
        set rand = 1
        if wave <= 60 then
            set luck[i + 1] = luck[i + 1] + 1
            call DisplayTextToPlayer(Player(i), 0, 0, "第" + I2S(wave) + "波开始，每位玩家奖励黄金" + I2S(70 * wave) + "，人品+1")
            if goldHit[i + 1] == 1 then
                set rand = GetRandomInt(2, 4)
                set goldHit[i + 1] = 0
                call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i)) + "的智慧球发动了金币暴击，获得" + I2S(rand) + "倍的金币奖励|R")
            endif
            call AdjustPlayerStateBJ(70 * wave * rand, Player(i), PLAYER_STATE_RESOURCE_GOLD)
        endif
        set j = 1
        loop
            exitwhen j > jmax
            if wave == 9 * j + 1 and GetPlayerController(Player(i)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING then
                if gameMode == 0 then
                    call CreateNUnitsAtLoc(1, boss[j], Player(5), loc[i], bj_UNIT_FACING)
                elseif gameMode == 1 then
                    call CreateNUnitsAtLoc(1, survive_boss[1], Player(5), loc[i], bj_UNIT_FACING)
                    set life = 30 * R2I(7.6591 * wave * wave * wave - 108.55 * wave * wave + 798.28 * wave - 518.31)
                    call LifeChange(bj_lastCreatedUnit, 2, life, $41303434)
                    call h__SetUnitMoveSpeed(bj_lastCreatedUnit, RMinBJ(300 + 5 * wave, 522))
                    call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit, 2, 2, 10 + wave)
                endif
                call GroupAddUnit(attackerGroup, bj_lastCreatedUnit)
                call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851986, target[i])
                call RemoveLocation(target[i])
                call RemoveLocation(loc[i])
                if j != 6 or gameMode == 1 then
                    call TimerStart(bossTimer, (WAVE_TIME + WAVE_INTERVAL) * BOSS_WAVE_INTERVAL, false, null)
                    call TimerDialogSetTitle(bossTimerDialog, "第" + I2S(wave / 9 + 1) + "个BOSS剩余：")
                    call TimerDialogDisplay(bossTimerDialog, true)
                else
                    call EnableTrigger(gg_trg_Win)
                endif
                if wave <= 60 then
                    set rand = 1
                    if lumberHit[i + 1] == 1 then
                        set rand = GetRandomInt(2, 4)
                        set lumberHit[i + 1] = 0
                        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i)) + "的智慧球发动了珍稀币暴击，获得" + I2S(rand) + "倍的珍稀币奖励|R")
                    endif
                    call DisplayTextToPlayer(Player(i), 0, 0, "魔教第" + I2S(j) + "个BOSS前来进攻,每位玩家奖励珍稀币" + I2S((2 * j - 1) * rand) + "个")
                    call AdjustPlayerStateBJ((2 * j - 1) * rand, Player(i), PLAYER_STATE_RESOURCE_LUMBER)
                endif
                set target[i] = null
                set loc[i] = null
            endif
            set j = j + 1
        endloop
        set i = i + 1
    endloop
    if wave < 55 or gameMode == 1 then
        call EnableTrigger(spawnTrigger)
        call TimerStart(mobTimer, WAVE_TIME + WAVE_INTERVAL, false, null)
        call TimerDialogSetTitle(mobTimerDialog, "第" + I2S(wave + 1) + "波进攻：")
    endif
    call YDWEPolledWaitNull(WAVE_TIME)
    call DisableTrigger(spawnTrigger)
endfunction

function doSpawn takes nothing returns nothing
    local location array loc
    local location array target
    local integer i = 0
    local integer life = 0
    set loc[0] = GetRectCenter(gg_rct_spawn1)
    set loc[1] = GetRectCenter(gg_rct_spawn2)
    set loc[2] = GetRectCenter(gg_rct_spawn3)
    set loc[3] = GetRectCenter(gg_rct_spawn4)
    set target[0] = GetRectCenter(nodeRects[22])
    set target[1] = GetRectCenter(nodeRects[23])
    set target[2] = GetRectCenter(nodeRects[24])
    set target[3] = GetRectCenter(nodeRects[21])
    set i = 0
    loop
        exitwhen i > 3
        if GetPlayerController(Player(i)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING then
            if gameMode == 0 then
                call CreateNUnitsAtLoc(1, mob[wave], Player(5), loc[i], bj_UNIT_FACING)
            elseif gameMode == 1 then
                call CreateNUnitsAtLoc(1, survive_mob[ModuloInteger(wave - 1, 4) + 1], Player(5), loc[i], bj_UNIT_FACING)
                set life = R2I(7.6591 * wave * wave * wave - 108.55 * wave * wave + 798.28 * wave - 518.31)
                call LifeChange(bj_lastCreatedUnit, 2, life, $41303434)
                call h__SetUnitMoveSpeed(bj_lastCreatedUnit, RMinBJ(300 + 5 * wave, 522))
                call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit, 2, 2, 10 + wave)
            endif
            call GroupAddUnit(attackerGroup, bj_lastCreatedUnit)
            call SaveReal(YDHT, GetHandleId(bj_lastCreatedUnit), BORN_LOC_X, GetUnitX(bj_lastCreatedUnit))
            call SaveReal(YDHT, GetHandleId(bj_lastCreatedUnit), BORN_LOC_Y, GetUnitY(bj_lastCreatedUnit))
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851986, target[i])
            call RemoveLocation(target[i])
            call RemoveLocation(loc[i])
            set target[i] = null
            set loc[i] = null
        endif
        set i = i + 1
    endloop
endfunction

function initSpawn takes nothing returns nothing
    local trigger t = CreateTrigger()
    call initMobsAndBosses()
    set attackerGroup = CreateGroup()
    set mobTimer = CreateTimer()
    set mobTimerDialog = CreateTimerDialogBJ(mobTimer, "第1波进攻：")
    call TimerStart(mobTimer, FIRST_WAVE_TIME, false, null)
    call TimerDialogDisplay(mobTimerDialog, true)
    set bossTimer = CreateTimer()
    set bossTimerDialog = CreateTimerDialogBJ(bossTimer, "第1个BOSS剩余：")
    call TimerStart(bossTimer, FIRST_WAVE_TIME + (WAVE_TIME + WAVE_INTERVAL) * BOSS_WAVE_INTERVAL, false, null)
    call TimerDialogDisplay(bossTimerDialog, true)
    call TriggerRegisterTimerExpireEvent(t, mobTimer)
    call TriggerAddAction(t, function spawn)
    set spawnTrigger = CreateTrigger()
    call DisableTrigger(spawnTrigger)
    call TriggerRegisterTimerEventPeriodic(spawnTrigger, SPAWN_FREQUENCY)
    call TriggerAddAction(spawnTrigger, function doSpawn)
    set t = null
endfunction
