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
    set mob[1] = 'h005'
    set mob[2] = 'u000'
    set mob[3] = 'h006'
    set mob[4] = 'e002'
    set mob[5] = 'o004'
    set mob[6] = 'u001'
    set mob[7] = 'n00H'
    set mob[8] = 'h007'
    set mob[9] = 'z000'
    set mob[10] = 'z001'
    set mob[11] = 'u002'
    set mob[12] = 'o005'
    set mob[13] = 'n02T'
    set mob[14] = 'e003'
    set mob[15] = 'n00J'
    set mob[16] = 'u003'
    set mob[17] = 'e004'
    set mob[18] = 'e005'
    set mob[19] = 'u004'
    set mob[20] = 'n00K'
    set mob[21] = 'e006'
    set mob[22] = 'u005'
    set mob[23] = 'h008'
    set mob[24] = 'h009'
    set mob[25] = 'n00L'
    set mob[26] = 'n00M'
    set mob[27] = 'n00N'
    set mob[28] = 'n00O'
    set mob[29] = 'n00P'
    set mob[30] = 'n00Q'
    set mob[31] = 'u006'
    set mob[32] = 'o008'
    set mob[33] = 'h00A'
    set mob[34] = 'e007'
    set mob[35] = 'n00S'
    set mob[36] = 'u007'
    set mob[37] = 'o009'
    set mob[38] = 'n00T'
    set mob[39] = 'n00U'
    set mob[40] = 'n00V'
    set mob[41] = 'n00W'
    set mob[42] = 'u009'
    set mob[43] = 'e008'
    set mob[44] = 'u00A'
    set mob[45] = 'n00X'
    set mob[46] = 'n02U'
    set mob[47] = 'n02V'
    set mob[48] = 'n02W'
    set mob[49] = 'n02X'
    set mob[50] = 'n02Y'
    set mob[51] = 'n02Z'
    set mob[52] = 'n030'
    set mob[53] = 'n031'
    set mob[54] = 'n032'
    set mob[55] = 'n033'
    set boss[1] = 'N00I'
    set boss[2] = 'O007'
    set boss[3] = 'N00R'
    set boss[4] = 'U008'
    set boss[5] = 'U00P'
    set boss[6] = 'U00B'
    set survive_mob[1] = 'h00M'
    set survive_mob[2] = 'h00L'
    set survive_mob[3] = 'h00K'
    set survive_mob[4] = 'h00N'
    set survive_boss[1] = 'N034'
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
            call CreateNUnitsAtLoc(1, 'U00B', Player(5), loc[i], bj_UNIT_FACING)
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



function recoverManaAndEquipEffect takes nothing returns nothing
    local unit u = GetEnumUnit()
    local item it = null
    local integer j = 1
    call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MAX_MANA) * 0.3 + GetUnitState(u, UNIT_STATE_MANA))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl", u, "origin"))

    loop
        exitwhen j > 6
        set it = UnitItemInSlotBJ(u, j)
        if it != null then
            call equipWaveStartEffect(u, it)
        endif
        set j = j + 1
    endloop
    set it = null
    set u = null
endfunction

function mutatedAttacker takes unit u returns nothing
	local integer i = GetRandomInt(1, 100)
	if udg_difficulty >= 6 then
		if i <= 33 then
			call SetUnitVertexColor(u, 225, 0, 0, 255)
			call SaveInteger(YDHT, GetHandleId(u), StringHash("color"), 1)
		elseif i <= 66 then
			call SetUnitVertexColor(u, 0, 225, 0, 255)
			call SaveInteger(YDHT, GetHandleId(u), StringHash("color"), 2)
		else
			call SetUnitVertexColor(u, 0, 0, 225, 255)
			call SaveInteger(YDHT, GetHandleId(u), StringHash("color"), 3)
		endif
        call SetUnitScale(u, 1.5, 1.5, 1.5)
	endif
endfunction

function spawn takes nothing returns nothing
    local integer i = 0
    local integer j = 0
    local integer rand = 1
    local real randReal = 1
    local location array loc
    local location array target
    local timer t = CreateTimer()
    local integer life = 0
    local integer jmax = 7
    local integer count = CountUnitsInGroup(attackerGroup)
    local group g = null
    local integer gold = 0
    set wave = wave + 1
    set loc[0] = GetRectCenter(gg_rct_spawn1)
    set loc[1] = GetRectCenter(gg_rct_spawn2)
    set loc[2] = GetRectCenter(gg_rct_spawn3)
    set loc[3] = GetRectCenter(gg_rct_spawn4)
    set target[0] = GetRectCenter(nodeRects[22])
    set target[1] = GetRectCenter(nodeRects[23])
    set target[2] = GetRectCenter(nodeRects[24])
    set target[3] = GetRectCenter(nodeRects[21])

    if isFailing and udg_ShengYuGuaiShu <= count then
        call CustomDefeatBJ(Player(0), "胜败乃兵家常事，大侠请重新来过！")
        call CustomDefeatBJ(Player(1), "胜败乃兵家常事，大侠请重新来过！")
        call CustomDefeatBJ(Player(2), "胜败乃兵家常事，大侠请重新来过！")
        call CustomDefeatBJ(Player(3), "胜败乃兵家常事，大侠请重新来过！")
        call DisableTrigger(GetTriggeringTrigger())
    endif

    if gameMode == 1 then
        set jmax = 100
    endif
    if gameMode == 1 and wave > 30 and ModuloInteger(wave, 10) == 1 then
        call ServerSavePointsEveryTenWave()
    endif
    loop
        exitwhen i >= 4
        set randReal = 1
        if wave <= 60 then
            set luck[i + 1] = luck[i + 1] + 2
            if wave <= 20 then
                set gold = 150 * wave
            else
                set gold = 3000 + GetRandomInt(1, wave * 150 - 3000)
            endif
            call DisplayTextToPlayer(Player(i), 0, 0, "第" + I2S(wave) + "波开始，每位玩家奖励黄金" + I2S(gold) + "，人品+2，所有塔恢复30%内力")
            set g = CreateGroup()
            call GroupEnumUnitsOfPlayer(g, Player(i), null)
            call ForGroup(g, function recoverManaAndEquipEffect)
            call DestroyGroup(g)
            if goldHit[i + 1] == 1 then
                set randReal = GetRandomReal(2, 4)
                set goldHit[i + 1] = 0
                call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i)) + "的智慧球发动了金币暴击，获得" + R2S(randReal) + "倍的金币奖励|R")
            endif
            call AdjustPlayerStateBJ(R2I(gold * randReal), Player(i), PLAYER_STATE_RESOURCE_GOLD)
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
                    call LifeChange(bj_lastCreatedUnit, 2, life, 'A044')
                    call h__SetUnitMoveSpeed(bj_lastCreatedUnit, RMinBJ(300 + 5 * wave, 522))
                    call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit, 2, 2, 10 + wave)
                endif

                // 记录是谁刷的怪
                call SaveInteger(YDHT, GetHandleId(bj_lastCreatedUnit), StringHash("owner"), i + 1)
                 // 难六以上，有概率出现变异怪
                if udg_difficulty > 5 and GetRandomInt(1, 50) <= udg_difficulty then
                    call mutatedAttacker(bj_lastCreatedUnit)
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
                    if j == 6 then
                        call DisplayTextToPlayer(Player(i), 0, 0, "魔教教主前来进攻，击败教主并清理掉循环圈内的怪物即可获得胜利！")
                    else
                        call DisplayTextToPlayer(Player(i), 0, 0, "魔教第" + I2S(j) + "个BOSS前来进攻,每位玩家奖励珍稀币" + I2S(2 * j - 1) + "个")
                        call AdjustPlayerStateBJ((2 * j - 1) * rand, Player(i), PLAYER_STATE_RESOURCE_LUMBER)
                    endif
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
    set g = null
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
                call LifeChange(bj_lastCreatedUnit, 2, life, 'A044')
                call h__SetUnitMoveSpeed(bj_lastCreatedUnit, RMinBJ(300 + 5 * wave, 522))
                call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit, 2, 2, 10 + wave)
            endif

            // 记录是谁刷的怪
            call SaveInteger(YDHT, GetHandleId(bj_lastCreatedUnit), StringHash("owner"), i + 1)

            // 难六以上，有概率出现变异怪
            if udg_difficulty > 5 and GetRandomInt(1, 50) <= udg_difficulty then
                call mutatedAttacker(bj_lastCreatedUnit)
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
    
    // 刷BOSS 每9波一个boss
    set bossTimer = CreateTimer()
    set bossTimerDialog = CreateTimerDialogBJ(bossTimer, "第1个BOSS剩余：")
    call TimerStart(bossTimer, FIRST_WAVE_TIME + (WAVE_TIME + WAVE_INTERVAL) * BOSS_WAVE_INTERVAL, false, null)
    call TimerDialogDisplay(bossTimerDialog, true)

    call TriggerRegisterTimerExpireEvent(t, mobTimer)
    call TriggerAddAction(t, function spawn)

    // 每隔指定时间刷一次怪
    set spawnTrigger = CreateTrigger()
    call DisableTrigger(spawnTrigger)
    call TriggerRegisterTimerEventPeriodic(spawnTrigger, SPAWN_FREQUENCY)
    call TriggerAddAction(spawnTrigger, function doSpawn)
    set t = null
endfunction
