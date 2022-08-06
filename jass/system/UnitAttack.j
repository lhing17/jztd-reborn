function QinLong takes nothing returns nothing
    local unit attacker = GetAttacker()
    local unit ut = GetEnumUnit()
    local location loc = GetUnitLoc(attacker)
    call CreateNUnitsAtLoc(1, $65303039, GetOwningPlayer(attacker), loc, bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, $41303444)
    call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303444, GetUnitAbilityLevel(attacker, $41303442))
    call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, attacker)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852480, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 5.)
    call RemoveLocation(loc)
    set loc = null
    set attacker = null
    set ut = null
endfunction


function HaoTian takes nothing returns nothing
    local unit attacker = GetAttacker()
    local unit ut = GetEnumUnit()
    local location loc = GetUnitLoc(attacker)
    call CreateNUnitsAtLoc(1, $65303039, GetOwningPlayer(attacker), loc, bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, $41303532)
    call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303532, GetUnitAbilityLevel(attacker, $41303450))
    call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, attacker)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852230, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 5.)
    call RemoveLocation(loc)
    set loc = null
    set attacker = null
    set ut = null
endfunction


function UnitAttack_Conditions takes nothing returns boolean
    local unit u = GetAttacker()
    local unit ut = GetTriggerUnit()
    local player p = GetOwningPlayer(u)
    local integer i = 1 + GetPlayerId(p)
    local location loc = GetUnitLoc(u)
    local location loc2 = GetUnitLoc(ut)
    local location temp_loc = null
    local location array udl_loc
    local group g = null
    local integer tw = getTowerInstance(u)
    local integer j = 0
    local integer k = 0
    local unit dummy = null
    set udl_loc[0] = GetRectCenter(gg_rct_spawn1)
    set udl_loc[1] = GetRectCenter(gg_rct_spawn2)
    set udl_loc[2] = GetRectCenter(gg_rct_spawn3)
    set udl_loc[3] = GetRectCenter(gg_rct_spawn4)
    if udg_douzhuan[i] >= 1 and GetRandomReal(0, 100) <= 2 then
        if LoadReal(YDHT, GetHandleId(ut), BORN_LOC_X) != 0 then
            call SetUnitX(ut, LoadReal(YDHT, GetHandleId(ut), BORN_LOC_X))
            call SetUnitY(ut, LoadReal(YDHT, GetHandleId(ut), BORN_LOC_Y))
        else
            call SetUnitX(ut, GetLocationX(udl_loc[i - 1]))
            call SetUnitY(ut, GetLocationY(udl_loc[i - 1]))
        endif
        call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", loc2))
        set temp_loc = GetUnitLoc(ut)
        call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", temp_loc))
        call RemoveLocation(temp_loc)
        set temp_loc = null
    endif
    if udg_xixing[i] >= 1 and GetRandomReal(0, 100) <= 15 then
        call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) + GetUnitState(u, UNIT_STATE_MAX_MANA) * .05)
    endif
    if YDWEUnitHasItemOfTypeBJNull(u, $49303052) and GetRandomReal(0, 100) <= 20 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303336)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852101, u)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 3.)
    endif
    if YDWEUnitHasItemOfTypeBJNull(u, $49303055) and GetRandomReal(0, 100) <= 5 then
        set j = 0
        loop
            exitwhen j >= 11
            call s__Tower_ResetCD(tw, j)
            set j = j + 1
        endloop
    endif
    if YDWEUnitHasItemOfTypeBJNull(u, $4930304D) and GetRandomReal(0, 100) <= .5 then
        if IsUnitType(ut, UNIT_TYPE_HERO) == false then
            call SetWidgetLife(ut, 1.)
            call UnitDamageTarget(u, ut, $F4240, true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
        else
            call SetWidgetLife(ut, GetWidgetLife(ut) * .9)
        endif
    endif
    if YDWEUnitHasItemOfTypeBJNull(u, $4930314A) and GetRandomReal(0, 100) <= 10 and GetUnitTypeId(u) != $75303043 and GetUnitTypeId(u) != $75303044 and GetUnitTypeId(u) != $75303045 and GetUnitTypeId(u) != $75303046 then
        if IsUnitType(ut, UNIT_TYPE_HERO) == false then
            call AdjustPlayerStateBJ(50, p, PLAYER_STATE_RESOURCE_GOLD)
        elseif GetRandomReal(0, 100) <= 14 then
            call AdjustPlayerStateBJ(1, p, PLAYER_STATE_RESOURCE_LUMBER)
        endif
    endif
    call PassiveRangeDamage(u, ut, $41303031, 500, 50, "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", 21, 20)
    call PassiveRangeDamage(u, ut, $41303435, 800, 100, "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", 25, 25 + GetUnitAbilityLevel(u, $41303435) * 5)
    call PassiveRangeDamage(u, ut, $41303438, 700, 10, "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl", 18, GetRandomInt(10, 100))
    call PassiveRangeDamage(u, ut, $41303437, 1000, 25000, "Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", 28, 30)
    call PassiveRangeDamage(u, ut, $4130324B, 400, 30, "Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl", 27, 15)
    call PassiveRangeDamage(u, ut, $4130304B, 50, 1500, "Abilities\\Spells\\Other\\Levelup\\LevelupCaster.mdl", 26, 25)
    call PassiveRangeDamage(u, ut, $4130344E, 800, 2000, "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl", 26, 40)
    call PassiveSingleDamage(u, ut, $41303156, 500, "Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", 19, 40)
    call PassiveSingleDamage(u, ut, $41303454, 2000, "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", 100, 6)
    call PassiveUseAbility(u, ut, $4130304E, $41303053, 852119, 18, 50)
    call PassiveUseAbility(u, ut, $41303056, $41303055, 852106, 25, 25)
    call PassiveUseAbility(u, ut, $41303058, $41303059, 852652, 17, 60)
    call PassiveUseAbility(u, ut, $41303237, $41303238, 852597, 15, 70)
    call PassiveUseAbility(u, ut, $41303243, $41303241, 852662, 21, 50)
    call PassiveUseAbility(u, ut, $41303244, $41303242, 852560, 18, 60)
    call PassiveUseAbility(u, ut, $41303245, $41303241, 852662, 21, 50)
    call PassiveUseAbility(u, ut, $41303245, $41303242, 852560, 18, 60)
    call PassiveUseAbility(u, ut, $41303246, $41303247, 852591, 10, 90)
    call PassiveUseAbility(u, ut, $41303251, $41303250, 852128, 20, 50)
    call PassiveUseAbility(u, ut, $41303254, $41303255, 852587, 25, 30)
    call PassiveUseAbility(u, ut, $41303256, $41303257, 852126, 23, 50)
    call PassiveUseAbility(u, ut, $41303259, $41303258, 852502, 14, 40)
    call PassiveUseAbility(u, ut, $41303334, $41303335, 852126, 13, 120)
    call PassiveUseAbility(u, ut, $41303337, $41303336, 852101, 15 + GetUnitAbilityLevel(u, $41303337) * 5, 30)
    call PassiveUseAbility(u, ut, $4130344F, $41303531, 852238, 15, 45)
    call PassiveUseAbility(u, ut, $41303453, $41303536, 852226, 14, 45)
    if GetUnitAbilityLevel(u, $41303450) > 0 and GetUnitState(u, UNIT_STATE_MANA) >= 50 and GetRandomInt(1, 100) <= 16 then
        set g = CreateGroup()
        call GroupEnumUnitsInRange(g, GetUnitX(u), GetUnitY(u), 1000, Condition(function IsEnemyAndAliveForAttack))
        call ForGroup(g, function HaoTian)
        call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) - 50)
        call DestroyGroup(g)
    endif
    if GetUnitAbilityLevel(u, $41303451) > 0 and GetUnitState(u, UNIT_STATE_MANA) >= 50 and GetRandomInt(1, 100) <= 17 then
        set k = 1
        loop
            exitwhen k > GetUnitAbilityLevel(u, $41303451)
            set dummy = CreateUnit(p, $68303136, GetUnitX(u) + GetRandomReal(200, 400) * CosBJ(GetRandomReal(0, 360)), GetUnitY(u) + GetRandomReal(200, 400) * SinBJ(GetRandomReal(0, 360)), 270)
            call SetUnitVertexColorBJ(dummy, GetRandomReal(20., 80.), GetRandomReal(20., 80.), GetRandomReal(20., 80.), GetRandomReal(20., 60.))
            call SetUnitAbilityLevel(dummy, $41303454, GetUnitAbilityLevel(u, $41303454))
            call UnitApplyTimedLife(dummy, $42487765, 5.)
            set k = k + 1
        endloop
    endif
    call PassiveUseAbility(u, ut, $41303439, $41303443, 852226, 19, 60)
    if GetUnitAbilityLevel(u, $41303351) > 0 and GetRandomInt(1, 100) <= 15 then
        call WanBuff(u, ut, 13)
    endif
    if GetUnitAbilityLevel(u, $41303352) > 0 and GetRandomInt(1, 100) <= 15 then
        call WanBuff(u, ut, 9)
    endif
    if GetUnitAbilityLevel(u, $41303442) > 0 and GetUnitState(u, UNIT_STATE_MANA) >= 30 and GetRandomInt(1, 100) <= 15 then
        set g = CreateGroup()
        call GroupEnumUnitsInRange(g, GetUnitX(u), GetUnitY(u), 1000, Condition(function IsEnemyAndAliveForAttack))
        call ForGroup(g, function QinLong)
        call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) - 30)
        call DestroyGroup(g)
    endif
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set u = null
    set ut = null
    set loc = null
    set loc2 = null
    set p = null
    set dummy = null
    return false
endfunction
function UnitAttack takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(t, Condition(function UnitAttack_Conditions))
    set t = null
endfunction
