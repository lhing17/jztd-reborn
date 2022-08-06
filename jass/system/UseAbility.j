function IsXuanTieJian takes nothing returns boolean
    return IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function XuanTieJianFa takes nothing returns nothing
    local unit u = GetTriggerUnit()
    local unit ut = GetEnumUnit()
    local location loc = GetUnitLoc(ut)
    local player p = GetOwningPlayer(u)
    call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, $41303348)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852101, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
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
    call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, $4130324C)
    call SetUnitAbilityLevel(bj_lastCreatedUnit, $4130324C, GetUnitAbilityLevel(u, $4130324D))
    call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852487, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
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
    if id == $4130335A then
        set goldHit[i] = 1
        call DisplayTextToPlayer(p, 0, 0, "|CFF99CC00智慧球发动了金币暴击，下一波到来时金币奖励随机翻倍")
    endif
    if id == $41303359 then
        set lumberHit[i] = 1
        call DisplayTextToPlayer(p, 0, 0, "|CFF99CC00智慧球发动了珍稀币暴击，下一个BOSS到来时珍稀币奖励随机翻倍")
        call addFake(u, 600, $41303359, $4130344A)
    endif
    if id == $41303432 then
        set rand = GetRandomReal(.1, .2)
        set kungfuCoeff[i] = kungfuCoeff[i] + rand
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了增加武学伤害，所有武学伤害增加" + R2S(rand * 100) + "%")
        call addFake(u, 600, $41303432, $4130344D)
    endif
    if id == $41303431 then
        set randInt = GetRandomInt(3, 7)
        call SetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) + randInt)
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了增加可用人口，增加了" + I2S(randInt) + "个可用人口")
        call addFake(u, 600, $41303431, $4130344B)
    endif
    if id == $41303430 then
        set randInt = GetRandomInt(5, 10)
        set luck[i] = luck[i] + randInt
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了人品爆发，增加了" + I2S(randInt) + "点人品")
    endif
    if id == $41303433 then
        if open_shenqi < SHEN_QI_NUM then
            set open_shenqi = open_shenqi + 1
            call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了开放随机神器，本局游戏额外开放神器" + GetObjectName(random_shenqi[open_shenqi]))
            call addFake(u, 1200, $41303433, $4130344C)
        else
            call DisplayTextToPlayer(p, 0, 0, "|CFFFF0000全部神器都已开放")
        endif
    endif
    if id == $41303542 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了内力回复，所有塔的内力回满")
        set g = CreateGroup()
        call GroupEnumUnitsOfPlayer(g, p, null)
        call ForGroup(g, function setFullMana)
        call DestroyGroup(g)
    endif
    if id == $41303030 then
        call AdjustPlayerStateBJ(GetUnitPointValue(u), p, PLAYER_STATE_RESOURCE_GOLD)
        call CreateTextTagUnitBJ("+" + I2S(GetUnitPointValue(u)), u, 0, 11, 255, 215, 0, 30)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag, 400., GetRandomReal(80., 100.))
        call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", loc))
        call YDWETimerDestroyTextTag(.65, GetLastCreatedTextTag())
        call KillUnit(u)
        call RemoveUnit(u)
    endif
    if id == $4130325A then
        set j = 0
        if GetUnitAbilityLevel(u, $41303039) >= 1 then
            set range = 1800
        endif
        if GetUnitAbilityLevel(u, $41303239) >= 1 then
            set range = 450 + 450 * GetUnitAbilityLevel(u, $41303239)
        endif
        if GetUnitAbilityLevel(u, $41303057) >= 1 then
            set range = 400 + 200 * GetUnitAbilityLevel(u, $41303057)
        endif
        if GetUnitAbilityLevel(u, $41303054) >= 1 then
            set range = 400 + 200 * GetUnitAbilityLevel(u, $41303054)
        endif
        if GetUnitAbilityLevel(u, $41303041) >= 1 then
            set range = 600 + 200 * GetUnitAbilityLevel(u, $41303041)
        endif
        loop
            exitwhen j >= 24
            set temp_loc = PolarProjectionBJ(loc, range, 15 * j)
            call CreateNUnitsAtLocFacingLocBJ(1, $65303046, p, temp_loc, loc)
            call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 4.)
            call RemoveLocation(temp_loc)
            set j = j + 1
        endloop
    endif
    if id == $41303032 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc2, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303033)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303033, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852593, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $41303154 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303034)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303034, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852230, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 2.)
    endif
    if id == $41303037 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303038)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303038, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852480, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $41303044 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303043)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303043, GetUnitAbilityLevel(u, id))
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852556)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 30.)
    endif
    if id == $41303046 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303045)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303045, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852183)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $4130304C then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $4130304D)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $4130304D, GetUnitAbilityLevel(u, id))
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852488, loc2)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
    endif
    if id == $41303130 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $4130305A)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $4130305A, GetUnitAbilityLevel(u, id))
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852221, loc2)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $41303152 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303153)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303153, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852527, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $4130334C then
        call CreateNUnitsAtLoc(1, $65303049, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303155)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303155, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852526)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $41303232 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303233)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303233, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852171, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $41303234 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303235)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303235, GetUnitAbilityLevel(u, id))
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852164)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $41303249 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $4130324A)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $4130324A, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852096)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 5.)
    endif
    if id == $4130324D then
        set g = CreateGroup()
        call GroupEnumUnitsInRangeOfLoc(g, loc, 800, Condition(function IsLianHuaZhang))
        call ForGroupBJ(g, function LianHuaZhang)
        call DestroyGroup(g)
    endif
    if id == $4130324E then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $4130324F)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $4130324F, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852095, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $41303252 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303253)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303253, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852095, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $41303331 then
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
    if id == $41303332 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303333)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303333, GetUnitAbilityLevel(u, id))
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852556)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 30.)
    endif
    if id == $41303457 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303533)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303533, GetUnitAbilityLevel(u, id))
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852127)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $41303456 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303535)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303535, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852580, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $41303459 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303537)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303537, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852119, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $41303455 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303538)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303538, GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852218, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 10.)
    endif
    if id == $41303458 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc2, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303541)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 5 + GetUnitAbilityLevel(u, id) * 5)
        call TerrainDeformationCraterBJ(15.8, false, loc2, 400., 400.)
        set k = 1
        loop
            exitwhen k > 16
            call CreateNUnitsAtLocFacingLocBJ(1, $6530304A, p, PolarProjectionBJ(loc2, 350., 22.5 * k), loc2)
            call UnitApplyTimedLifeBJ(5 + GetUnitAbilityLevel(u, id) * 5, $42544C46, bj_lastCreatedUnit)
            call DestroyEffect(AddSpecialEffectLocBJ(PolarProjectionBJ(loc2, 350., 22.5 * k), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl"))
            set k = k + 1
        endloop
    endif
    if id == $41303347 then
        set g = CreateGroup()
        call GroupEnumUnitsInRangeOfLoc(g, loc, 800, Condition(function IsXuanTieJian))
        call ForGroupBJ(g, function XuanTieJianFa)
        call DestroyGroup(g)
    endif
    if id == $41303035 then
        call CreateNUnitsAtLoc(1, $7530304F, p, Location(- 252, 15), bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddItemById(bj_lastCreatedUnit, GetItemTypeId(GetSpellTargetItem()))
        call UnitDropItemTarget(bj_lastCreatedUnit, UnitItemInSlotBJ(bj_lastCreatedUnit, 1), gg_unit_o00A_0019)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 5.)
        call RemoveItem(GetSpellTargetItem())
        call PlaySoundOnUnitBJ(Ih, 100, u)
        call AddSpecialEffectTargetUnitBJ("overhead", u, "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
        call DestroyEffect(bj_lastCreatedEffect)
    endif
    if id == $4130334D then
        call SynItem(u, $49303045, $49303042)
        call SynItem(u, $49303042, $49303041)
        call SynItem(u, $49303041, $49303039)
        call SynItem(u, $49303039, $49303044)
        call SynItem(u, $49303050, $4930304F)
        call SynItem(u, $4930304F, $49303036)
        call SynItem(u, $49303036, $49303051)
        call SynItem(u, $49303051, $49303037)
        call SynItem(u, $49303047, $49303048)
        call SynItem(u, $49303048, $49303049)
        call SynItem(u, $49303049, $4930304A)
        call SynItem(u, $4930304A, $4930304B)
        call SynItem(u, $49303034, $49303035)
        call SynItem(u, $49303035, $49303038)
        call SynItem(u, $49303038, $49303053)
        call SynItem(u, $49303053, $49303054)
        call SynItem(u, $49303058, $49303059)
        call SynItem(u, $49303059, $4930305A)
        call SynItem(u, $4930305A, $49303130)
        call SynItem(u, $49303130, $49303131)
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
        set i = i + 1
    endloop
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(t, Condition(function UseAbility_Conditions))
    set t = null
endfunction
