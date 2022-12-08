globals
    integer array goldLevel
    integer array lumberLevel
endglobals

function IsXuanTieJian takes nothing returns boolean
    return IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function XuanTieJianFa takes nothing returns nothing
    local unit u = GetTriggerUnit()
    local unit ut = GetEnumUnit()
    local location loc = GetUnitLoc(ut)
    local player p = GetOwningPlayer(u)
    call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, 'A03H')
    call IssueTargetOrderById(bj_lastCreatedUnit, 852101, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    call RemoveLocation(loc)
    set u = null
    set ut = null
    set loc = null
    set p = null
endfunction


function IsLianHuaZhang takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function LianHuaZhang takes nothing returns nothing
    local unit u = GetTriggerUnit()
    local unit ut = GetEnumUnit()
    local location loc = GetUnitLoc(u)
    local player p = GetOwningPlayer(u)
    call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, 'A02L')
    call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A02L', GetUnitAbilityLevel(u, 'A02M'))
    call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852487, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    call RemoveLocation(loc)
    set u = null
    set ut = null
    set loc = null
    set p = null
endfunction


function MinusAttack takes nothing returns nothing
    local timer t = GetExpiredTimer()
    call YDWEGeneralBounsSystemUnitSetBonus(LoadUnitHandle(YDHT, GetHandleId(t), 0), 3, 1, LoadInteger(YDHT, GetHandleId(t), 1))
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set t = null
endfunction

function removeFake takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer abilityId = LoadInteger(YDHT, GetHandleId(t), 1)
    local integer fakeId = LoadInteger(YDHT, GetHandleId(t), 2)
    call UnitRemoveAbility(u, fakeId)
    call UnitAddAbility(u, abilityId)
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set u = null
    set t = null
endfunction
function addFake takes unit u, real time, integer abilityId, integer fakeId returns nothing
    local timer t = CreateTimer()
    call UnitRemoveAbility(u, abilityId)
    call UnitAddAbility(u, fakeId)
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveInteger(YDHT, GetHandleId(t), 1, abilityId)
    call SaveInteger(YDHT, GetHandleId(t), 2, fakeId)
    call TimerStart(t, time, false, function removeFake)
    set t = null
endfunction
function setFullMana takes nothing returns nothing
    local unit u = GetEnumUnit()
    call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MAX_MANA))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl", u, "origin"))
    set u = null
endfunction

function reduceCooldown takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer id = LoadInteger(YDHT, GetHandleId(t), 1)
    local integer percent = LoadInteger(YDHT, GetHandleId(t), 2)
    call EXSetAbilityState(EXGetUnitAbility(u, id), 1, EXGetAbilityState(EXGetUnitAbility(u, id), 1) * (100 - percent) / 100)
    call DestroyTimer(t)
    set u = null
    set t = null
endfunction

function doFastPick takes nothing returns nothing
    call UnitAddItem(fastPickUnit, GetEnumItem())
endfunction

function fastPick takes unit u, real x, real y returns nothing
    local rect r = Rect(x - 600, y - 600, x + 600, y + 600)
    set fastPickUnit = u
	call EnumItemsInRect(r, null, function doFastPick)
	call RemoveRect(r)
	set r = null
endfunction

function fastDrop takes unit u, real x, real y returns nothing
	local integer i = 0
    local item it = null
	loop
		exitwhen i >= 6
		set it = UnitRemoveItemFromSlot(u, i)
        if it != null then
            call SetItemPosition(it, x, y)
        endif
		set i = i + 1
	endloop
	set u = null
    set it = null
endfunction

function addFoodTimer takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer level = LoadInteger(YDHT, GetHandleId(t), 1)
    if level < 5 then
        call UnitRemoveAbility(u, 'A09G')
        call UnitAddAbility(u, 'A09G')
        call SetUnitAbilityLevel(u, 'A09G', level + 1)
    else
        call UnitRemoveAbility(u, 'A09G')
    endif
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set t = null
    set u = null
endfunction

function addFood takes unit u returns nothing
    local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
    local integer level = GetUnitAbilityLevel(u, 'A09G')
    local timer t = CreateTimer()
    call SetPlayerState(GetOwningPlayer(u), PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(GetOwningPlayer(u), PLAYER_STATE_RESOURCE_FOOD_CAP) + 1)
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveInteger(YDHT, GetHandleId(t), 1, level)
    call TimerStart(t, 0, false, function addFoodTimer)

    set t = null
endfunction

function addLumberLevelTimer takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer level = LoadInteger(YDHT, GetHandleId(t), 1)
    if level < 20 then
        call UnitRemoveAbility(u, 'A09H')
        call UnitAddAbility(u, 'A09H')
        call SetUnitAbilityLevel(u, 'A09H', level + 1)
    else
        call UnitRemoveAbility(u, 'A09H')
    endif
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set t = null
    set u = null
endfunction

function addLumberLevel takes unit u returns nothing
    local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
    local integer level = GetUnitAbilityLevel(u, 'A09H')
    local timer t = CreateTimer()
    set lumberLevel[i] = lumberLevel[i] + 1
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveInteger(YDHT, GetHandleId(t), 1, level)
    call TimerStart(t, 0, false, function addLumberLevelTimer)

    set t = null

endfunction

function addGoldLevelTimer takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer level = LoadInteger(YDHT, GetHandleId(t), 1)
    if level < 20 then
        call UnitRemoveAbility(u, 'A09I')
        call UnitAddAbility(u, 'A09I')
        call SetUnitAbilityLevel(u, 'A09I', level + 1)
    else
        call UnitRemoveAbility(u, 'A09I')
    endif
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set t = null
    set u = null
endfunction

function addGoldLevel takes unit u returns nothing
    local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
    local integer level = GetUnitAbilityLevel(u, 'A09I')
    local timer t = CreateTimer()
    set goldLevel[i] = goldLevel[i] + 1
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveInteger(YDHT, GetHandleId(t), 1, level)
    call TimerStart(t, 0, false, function addGoldLevelTimer)

    set t = null
endfunction

function unlockDrawCardTimer takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer level = LoadInteger(YDHT, GetHandleId(t), 1)
    if level < 2 then
        call UnitRemoveAbility(u, 'A09J')
        call UnitAddAbility(u, 'A09J')
        call SetUnitAbilityLevel(u, 'A09J', level + 1)
    else
        call UnitRemoveAbility(u, 'A09J')
    endif
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set t = null
    set u = null
endfunction

function unlockDrawCard takes unit u returns nothing
    local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
    local integer level = GetUnitAbilityLevel(u, 'A09J')
    local timer t = CreateTimer()
    if level == 1 then
        call SetPlayerTechResearched(Player(i - 1), 'R00C', 1)
    elseif level == 2 then
        call SetPlayerTechResearched(Player(i - 1), 'R00D', 1)
    endif
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveInteger(YDHT, GetHandleId(t), 1, level)
    call TimerStart(t, 0, false, function unlockDrawCardTimer)

    set t = null
endfunction

function UseAbility_Conditions takes nothing returns boolean
    local integer id = GetSpellAbilityId()
    local unit u = GetTriggerUnit()
    local unit ut = GetSpellTargetUnit()
    local player p = GetOwningPlayer(u)
    local integer i = 1 + GetPlayerId(p)
    local location loc = GetUnitLoc(u)
    local location loc2 = GetUnitLoc(ut)
    local location temp_loc = null
    local timer t = null
    local real r = 0
    local integer j = 0
    local real range = 500
    local real rand = 0
    local integer randInt = 0
    local group g = null
    local integer k = 0

    // 装备加成缩减CD
    if LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_COOLDOWN_KEY) > 0 then
        set t = CreateTimer()
        call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
        call SaveInteger(YDHT, GetHandleId(t), 1, id)
        call SaveInteger(YDHT, GetHandleId(t), 2, LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_COOLDOWN_KEY))
        call TimerStart(t, 0.02, true, function reduceCooldown)
        set t = null
    endif

    // 装备重置CD
    if LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_RESET_CD_KEY) > 0 and GetRandomInt(1, 100) <= LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_RESET_CD_KEY) then
        set t = CreateTimer()
        call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
        call SaveInteger(YDHT, GetHandleId(t), 1, id)
        call SaveInteger(YDHT, GetHandleId(t), 2, 100)
        call TimerStart(t, 0.02, true, function reduceCooldown)
        set t = null
    endif
        


    if id == 'A03Z' then
        set goldHit[i] = 1
        call DisplayTextToPlayer(p, 0, 0, "|CFF99CC00智慧球发动了金币暴击，下一波到来时金币奖励随机翻倍")
    endif
    if id == 'A03Y' then
        set lumberHit[i] = 1
        call DisplayTextToPlayer(p, 0, 0, "|CFF99CC00智慧球发动了珍稀币暴击，下一个BOSS到来时珍稀币奖励随机翻倍")
        call addFake(u, 600, 'A03Y', 'A04J')
    endif
    if id == 'A042' then
        set rand = GetRandomReal(.1, .2)
        set kungfuCoeff[i] = kungfuCoeff[i] + rand
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了增加武学伤害，所有武学伤害增加" + R2S(rand * 100) + "%（召唤类除外）")
        call addFake(u, 600, 'A042', 'A04M')
    endif
    if id == 'A041' then
        set randInt = GetRandomInt(3, 7)
        call SetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) + randInt)
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了增加可用人口，增加了" + I2S(randInt) + "个可用人口（上限为100人口）")
        call addFake(u, 600, 'A041', 'A04K')
    endif
    if id == 'A040' then
        set randInt = GetRandomInt(5, 10)
        set luck[i] = luck[i] + randInt
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了人品爆发，增加了" + I2S(randInt) + "点人品")
    endif
    if id == 'A043' then
        if open_shenqi < SHEN_QI_NUM then
            set open_shenqi = open_shenqi + 1
            call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了开放随机神器，本局游戏额外开放神器" + GetObjectName(random_shenqi[open_shenqi]))
            call addFake(u, 1200, 'A043', 'A04L')
        else
            call DisplayTextToPlayer(p, 0, 0, "|CFFFF0000全部神器都已开放")
        endif
    endif
    if id == 'A05B' then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了内力回复，所有塔的内力回满")
        set g = CreateGroup()
        call GroupEnumUnitsOfPlayer(g, p, null)
        call ForGroup(g, function setFullMana)
        call DestroyGroup(g)
    endif

    // 出售塔
    if id == 'A000' then
        call AdjustPlayerStateBJ(GetUnitPointValue(u), p, PLAYER_STATE_RESOURCE_GOLD)
        call CreateTextTagUnitBJ("+" + I2S(GetUnitPointValue(u)), u, 0, 11, 255, 215, 0, 30)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag, 400., GetRandomReal(80., 100.))
        call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", loc))
        call YDWETimerDestroyTextTag(.65, GetLastCreatedTextTag())
        call DestroyEffect( LoadEffectHandle(YDHT, GetHandleId(u), $A0B0C0))

        // 清空哈希表，避免Handle重用
        call FlushChildHashtable(YDHT, GetHandleId(u))
        call FlushChildHashtable(CONT_HT, GetHandleId(u))
        call FlushChildHashtable(TOWER_ATTR_HT, GetHandleId(u))
        call FlushChildHashtable(EQUIP_ATTR_HT, GetHandleId(u))
        call KillUnit(u)
        call RemoveUnit(u)
    endif
    if id == 'A02Z' then
        set j = 0
        if GetUnitAbilityLevel(u, 'A009') >= 1 then
            set range = 1800
        endif
        if GetUnitAbilityLevel(u, 'A029') >= 1 then
            set range = 450 + 450 * GetUnitAbilityLevel(u, 'A029')
        endif
        if GetUnitAbilityLevel(u, 'A00W') >= 1 then
            set range = 400 + 200 * GetUnitAbilityLevel(u, 'A00W')
        endif
        if GetUnitAbilityLevel(u, 'A00T') >= 1 then
            set range = 400 + 200 * GetUnitAbilityLevel(u, 'A00T')
        endif
        if GetUnitAbilityLevel(u, 'A00A') >= 1 then
            set range = 600 + 200 * GetUnitAbilityLevel(u, 'A00A')
        endif
        loop
            exitwhen j >= 24
            set temp_loc = PolarProjectionBJ(loc, range, 15 * j)
            call CreateNUnitsAtLocFacingLocBJ(1, 'e00F', p, temp_loc, loc)
            call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 4.)
            call RemoveLocation(temp_loc)
            set j = j + 1
        endloop
    endif
    if id == 'A002' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc2, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A003')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A003', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852593, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A01T' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A004')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A004', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852230, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 2.)
    endif
    if id == 'A007' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A008')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A008', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852480, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A00D' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A00C')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A00C', GetUnitAbilityLevel(u, id))
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852556)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 30.)
    endif
    if id == 'A00F' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A00E')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A00E', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852183)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A00L' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A00M')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A00M', GetUnitAbilityLevel(u, id))
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852488, loc2)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
    endif
    if id == 'A010' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A00Z')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A00Z', GetUnitAbilityLevel(u, id))
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852221, loc2)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A01R' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A01S')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A01S', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852527, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A03L' then
        call CreateNUnitsAtLoc(1, 'e00I', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A01U')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A01U', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852526)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A022' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A023')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A023', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852171, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A024' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A025')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A025', GetUnitAbilityLevel(u, id))
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852164)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A02I' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A02J')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A02J', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852096)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 5.)
    endif
    if id == 'A02M' then
        set g = CreateGroup()
        call GroupEnumUnitsInRangeOfLoc(g, loc, 800, Condition(function IsLianHuaZhang))
        call ForGroupBJ(g, function LianHuaZhang)
        call DestroyGroup(g)
    endif
    if id == 'A02N' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A02O')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A02O', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852095, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A02R' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A02S')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A02S', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852095, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A031' then
        if IsUnitType(ut, UNIT_TYPE_HERO) == false then
            set r = GetUnitState(ut, UNIT_STATE_MAX_LIFE) * .05 * GetUnitAbilityLevel(u, id)
            if udg_jiuyang[i] >= 1 then
                set r = r * 2
            endif
            call SetUnitState(ut, UNIT_STATE_LIFE, 1)
            call UnitDamageTarget(u, ut, $989680, true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
            call YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, R2I(r))
            set t = CreateTimer()
            call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
            call SaveInteger(YDHT, GetHandleId(t), 1, R2I(r))
            call TimerStart(t, 5., false, function MinusAttack)
            set t = null
        else
            call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) + 50)
        endif
    endif
    if id == 'A032' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A033')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A033', GetUnitAbilityLevel(u, id))
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852556)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 30.)
    endif
    if id == 'A04W' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A053')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A053', GetUnitAbilityLevel(u, id))
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852127)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A04V' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A055')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A055', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852580, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A04Y' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A057')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A057', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852119, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A04U' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A058')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A058', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852218, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A04X' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc2, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A05A')
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 5 + GetUnitAbilityLevel(u, id) * 5)
        call TerrainDeformationCraterBJ(15.8, false, loc2, 400., 400.)
        set k = 1
        loop
            exitwhen k > 16
            call CreateNUnitsAtLocFacingLocBJ(1, 'e00J', p, PolarProjectionBJ(loc2, 350., 22.5 * k), loc2)
            call UnitApplyTimedLifeBJ(5 + GetUnitAbilityLevel(u, id) * 5, 'BTLF', bj_lastCreatedUnit)
            call DestroyEffect(AddSpecialEffectLocBJ(PolarProjectionBJ(loc2, 350., 22.5 * k), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl"))
            set k = k + 1
        endloop
    endif
    if id == 'A03G' then
        set g = CreateGroup()
        call GroupEnumUnitsInRangeOfLoc(g, loc, 800, Condition(function IsXuanTieJian))
        call ForGroupBJ(g, function XuanTieJianFa)
        call DestroyGroup(g)
    endif
    if id == 'A005' then
        call CreateNUnitsAtLoc(1, 'u00O', p, Location(- 252, 15), bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddItemById(bj_lastCreatedUnit, GetItemTypeId(GetSpellTargetItem()))
        call UnitDropItemTarget(bj_lastCreatedUnit, UnitItemInSlotBJ(bj_lastCreatedUnit, 1), gg_unit_o00A_0014)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 5.)
        call RemoveItem(GetSpellTargetItem())
        call PlaySoundOnUnitBJ(Ih, 100, u)
        call AddSpecialEffectTargetUnitBJ("overhead", u, "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
        call DestroyEffect(bj_lastCreatedEffect)
    endif
    if id == 'A03M' then

        // 相同武器二合一
        call SynItem(u, 'I00E', 'I00B')
        call SynItem(u, 'I00B', 'I00A')
        call SynItem(u, 'I00A', 'I009')
        call SynItem(u, 'I009', 'I00D')
        call SynItem(u, 'I00P', 'I00O')
        call SynItem(u, 'I00O', 'I006')
        call SynItem(u, 'I006', 'I00Q')
        call SynItem(u, 'I00Q', 'I007')
        call SynItem(u, 'I00G', 'I00H')
        call SynItem(u, 'I00H', 'I00I')
        call SynItem(u, 'I00I', 'I00J')
        call SynItem(u, 'I00J', 'I00K')
        call SynItem(u, 'I004', 'I005')
        call SynItem(u, 'I005', 'I008')
        call SynItem(u, 'I008', 'I00S')
        call SynItem(u, 'I00S', 'I00T')
        call SynItem(u, 'I00X', 'I00Y')
        call SynItem(u, 'I00Y', 'I00Z')
        call SynItem(u, 'I00Z', 'I010')
        call SynItem(u, 'I010', 'I011')

        // 相同级别不同武器三合一
        call synItemThree(u)
    endif

    // 开启智慧球智能模式
    if id == 'A08Z' then
        set wisdomBallSmartMode[i] = true
        call UnitRemoveAbility(u, 'A08Z')
        call UnitAddAbility(u, 'A090')
    endif

    // 关闭智慧球智能模式
    if id == 'A090' then
        set wisdomBallSmartMode[i] = false
        call UnitRemoveAbility(u, 'A090')
        call UnitAddAbility(u, 'A08Z')
    endif

    // 快速拾取
    if id == 'A091' then
        call fastPick(u, GetSpellTargetX(), GetSpellTargetY())
    endif

    // 快速丢弃
    if id == 'A092' then
        call fastDrop(u, GetSpellTargetX(), GetSpellTargetY())
    endif

    // 初级招募
    if id == 'A099' then
        call lowDrawCard(i)
    endif

    // 中级招募
    if id == 'A09A' then
        call normalDrawCard(i)
    endif

    // 高级招募
    if id == 'A09B' then
        call highDrawCard(i)
    endif

    // 占位卡1
    if id == 'A09C' then
        call getCard(i, 1)
    endif

    // 占位卡2
    if id == 'A09D' then
        call getCard(i, 2)
    endif

    // 占位卡3
    if id == 'A09E' then
        call getCard(i, 3)
    endif

    // 占位卡4
    if id == 'A09F' then
        call getCard(i, 4)
    endif

    // 增加可用人口
    if id == 'A09G' then
        call addFood(u)
    endif

    // 增加珍稀币等级
    if id == 'A09H' then
        call addLumberLevel(u)
    endif

    // 增加金币等级
    if id == 'A09I' then
        call addGoldLevel(u)
    endif

    // 解锁中/高级招募
    if id == 'A09J' then
        call unlockDrawCard(u)
    endif


    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set u = null
    set ut = null
    set p = null
    set loc = null
    set loc2 = null
    set g = null
    set temp_loc = null
    set t = null
    return false
endfunction
function UseAbility takes nothing returns nothing
    local trigger t = CreateTrigger()
    local integer i = 1
    loop
        exitwhen i > 5
        set goldHit[i] = 0
        set lumberHit[i] = 0
        set kungfuCoeff[i] = 0.
        set goldLevel[i] = 0
        set lumberLevel[i] = 0
        set i = i + 1
    endloop
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(t, Condition(function UseAbility_Conditions))
    set t = null
endfunction
