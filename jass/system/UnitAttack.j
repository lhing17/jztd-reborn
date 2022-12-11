globals
    constant integer ATTR_STR = 1 // 力量
    constant integer ATTR_AGI = 2 // 敏捷
    constant integer ATTR_INT = 3 // 智力
    constant integer ATTR_ALL = 4 // 全属性
endglobals


function QinLong takes nothing returns nothing
    local unit attacker = GetAttacker()
    local unit ut = GetEnumUnit()
    local location loc = GetUnitLoc(attacker)
    call CreateNUnitsAtLoc(1, 'e009', GetOwningPlayer(attacker), loc, bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, 'A04D')
    call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A04D', GetUnitAbilityLevel(attacker, 'A04B'))
    call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, attacker)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852480, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 5.)
    call RemoveLocation(loc)
    set loc = null
    set attacker = null
    set ut = null
endfunction


function HaoTian takes nothing returns nothing
    local unit attacker = GetAttacker()
    local unit ut = GetEnumUnit()
    local location loc = GetUnitLoc(attacker)
    call CreateNUnitsAtLoc(1, 'e009', GetOwningPlayer(attacker), loc, bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, 'A052')
    call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A052', GetUnitAbilityLevel(attacker, 'A04P'))
    call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, attacker)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852230, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 5.)
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

    // 如果下次塔必定封穴，执行封穴
    if LoadBoolean(TOWER_ATTR_HT, GetHandleId(u), TOWER_SEAL_KEY) then
        call WanBuff(u, ut, 11)
        call SaveBoolean(TOWER_ATTR_HT, GetHandleId(u), TOWER_SEAL_KEY, false)
    endif


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
    if YDWEUnitHasItemOfTypeBJNull(u, 'I00R') and GetRandomReal(0, 100) <= 20 then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A036')
        call IssueTargetOrderById(bj_lastCreatedUnit, 852101, u)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 3.)
    endif
    if YDWEUnitHasItemOfTypeBJNull(u, 'I00U') and GetRandomReal(0, 100) <= 5 then
        set j = 0
        loop
            exitwhen j >= 11
            call s__Tower_ResetCD(tw, j)
            set j = j + 1
        endloop
    endif
    if YDWEUnitHasItemOfTypeBJNull(u, 'I00M') and GetRandomReal(0, 100) <= .5 then
        if IsUnitType(ut, UNIT_TYPE_HERO) == false then
            call SetWidgetLife(ut, 1.)
            call UnitDamageTarget(u, ut, $F4240, true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
        else
            call SetWidgetLife(ut, GetWidgetLife(ut) * .9)
        endif
    endif
    if YDWEUnitHasItemOfTypeBJNull(u, 'I01J') and GetRandomReal(0, 100) <= 15 and GetUnitTypeId(u) != 'u00C' and GetUnitTypeId(u) != 'u00D' and GetUnitTypeId(u) != 'u00E' and GetUnitTypeId(u) != 'u00F' then
        // if IsUnitType(ut, UNIT_TYPE_HERO) == false then
        call AdjustPlayerStateBJ(50, p, PLAYER_STATE_RESOURCE_GOLD)
        // elseif GetRandomReal(0, 100) <= 14 then
        // call AdjustPlayerStateBJ(1, p, PLAYER_STATE_RESOURCE_LUMBER)
        // endif
    endif

    // 韦陀棍法 (攻击 + 10 * 全属性 ) * 1 * 技能等级 * 技能等级
    call PassiveRangeDamage(u, ut, 'A001', 500, 10, 1, ATTR_ALL, "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl", 21, 20)

    // 虾米神拳 (攻击 + 10 * 敏捷 ) * 1 * 技能等级 * 技能等级
    call PassiveRangeDamage(u, ut, 'A045', 800, 10, 1, ATTR_AGI, "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl", 25, 25 + GetUnitAbilityLevel(u, 'A045') * 5)

    // 五雷咒 (攻击 + 10 * 智力 ) * 1 * 技能等级 * 技能等级
    call PassiveRangeDamage(u, ut, 'A048', 700, 10, 1, ATTR_INT, "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl", 18, GetRandomInt(10, 100))

    // 乾坤一掷 (攻击 + 10 * 智力 ) * 250 * 技能等级 * 技能等级
    call PassiveRangeDamage(u, ut, 'A047', 1000, 10, 250, ATTR_INT, "Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", 28, 30)

    // 丐帮入门棍法 (攻击 + 10 * 力量 ) * 3 * 技能等级 * 技能等级
    call PassiveRangeDamage(u, ut, 'A02K', 400, 10, 3, ATTR_STR, "Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl", 27, 15)

    // 武当剑法 (攻击 + 10 * 智力 ) * 15 * 技能等级 * 技能等级
    call PassiveRangeDamage(u, ut, 'A00K', 50, 10, 15, ATTR_INT, "Abilities\\Spells\\Other\\Levelup\\LevelupCaster.mdl", 26, 25)

    // 全真剑法 (攻击 + 10 * 敏捷 ) * 20 * 技能等级 * 技能等级
    call PassiveRangeDamage(u, ut, 'A04N', 800, 10, 20, ATTR_AGI, "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl", 26, 40)
    
    // 天山折梅手 (攻击 + 10 * 力量 ) * 50 * 技能等级 * 技能等级
    call PassiveRangeDamage(u, ut, 'A098', 800, 10, 50, ATTR_STR, "war3mapImported\\56.mdl", 16, 50)

    // 金顶绵掌 (攻击 + 10 * 敏捷 ) * 50 * 技能等级 * 技能等级
    call PassiveSingleDamage(u, ut, 'A01V', 10, 50, ATTR_AGI, "Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", 19, 40)

    // 空明拳 (攻击 + 10 * 力量 ) * 200 * 技能等级 * 技能等级
    call PassiveSingleDamage(u, ut, 'A04T', 10, 200, ATTR_STR, "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl", 100, 6)


    call PassiveUseAbility(u, ut, 'A00N', 'A00S', 852119, 18, 50)
    call PassiveUseAbility(u, ut, 'A00V', 'A00U', 852106, 25, 25)
    call PassiveUseAbility(u, ut, 'A00X', 'A00Y', 852652, 17, 70)
    call PassiveUseAbility(u, ut, 'A027', 'A028', 852597, 15, 70)
    call PassiveUseAbility(u, ut, 'A02C', 'A02A', 852662, 21, 50)
    call PassiveUseAbility(u, ut, 'A02D', 'A02B', 852560, 18, 60)
    call PassiveUseAbility(u, ut, 'A02E', 'A02A', 852662, 21, 50)
    call PassiveUseAbility(u, ut, 'A02E', 'A02B', 852560, 18, 60)
    call PassiveUseAbility(u, ut, 'A02F', 'A02G', 852591, 10, 90)
    call PassiveUseAbility(u, ut, 'A02Q', 'A02P', 852128, 20, 50)
    call PassiveUseAbility(u, ut, 'A02T', 'A02U', 852587, 25, 20)
    call PassiveUseAbility(u, ut, 'A02V', 'A02W', 852126, 23, 50)
    call PassiveUseAbility(u, ut, 'A02Y', 'A02X', 852502, 14, 40)
    call PassiveUseAbility(u, ut, 'A034', 'A035', 852126, 13, 120)
    call PassiveUseAbility(u, ut, 'A037', 'A036', 852101, 15 + GetUnitAbilityLevel(u, 'A037') * 5, 30)
    call PassiveUseAbility(u, ut, 'A04O', 'A051', 852238, 20, 30)
    call PassiveUseAbility(u, ut, 'A04S', 'A056', 852226, 14, 45)
    if GetUnitAbilityLevel(u, 'A04P') > 0 and GetUnitState(u, UNIT_STATE_MANA) >= 50 and GetRandomInt(1, 100) <= 16 then
        set g = CreateGroup()
        call GroupEnumUnitsInRange(g, GetUnitX(u), GetUnitY(u), 1000, Condition(function IsEnemyAndAliveForAttack))
        call ForGroup(g, function HaoTian)
        call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) - 50)
        call DestroyGroup(g)
    endif
    if GetUnitAbilityLevel(u, 'A04Q') > 0 and GetUnitState(u, UNIT_STATE_MANA) >= 50 and GetRandomInt(1, 100) <= 17 then
        set k = 1
        loop
            exitwhen k > GetUnitAbilityLevel(u, 'A04Q')
            set dummy = CreateUnit(p, 'h016', GetUnitX(u) + GetRandomReal(200, 400) * CosBJ(GetRandomReal(0, 360)), GetUnitY(u) + GetRandomReal(200, 400) * SinBJ(GetRandomReal(0, 360)), 270)
            call SetUnitVertexColorBJ(dummy, GetRandomReal(20., 80.), GetRandomReal(20., 80.), GetRandomReal(20., 80.), GetRandomReal(20., 60.))
            call SetUnitAbilityLevel(dummy, 'A04T', GetUnitAbilityLevel(u, 'A04T'))
            call UnitApplyTimedLife(dummy, 'BHwe', 5.)
            set k = k + 1
        endloop
    endif
    call PassiveUseAbility(u, ut, 'A049', 'A04C', 852226, 19, 60)
    if GetUnitAbilityLevel(u, 'A03Q') > 0 and GetRandomInt(1, 100) <= 3 * GetUnitAbilityLevel(u, 'A03Q') then
        call WanBuff(u, ut, 13)
    endif

    // 洗髓经 15%概率破防
    if GetUnitAbilityLevel(u, 'A03R') > 0 and GetRandomInt(1, 100) <= 3 * GetUnitAbilityLevel(u, 'A03R') then
        call WanBuff(u, ut, 9)
    endif

    // 装备加成破防概率
    if GetRandomInt(1, 100) <= LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_PIERCE_KEY) then
        call WanBuff(u, ut, 9)
    endif

    // 装备连击
    if GetRandomInt(1, 100) <= LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_COMBO_KEY) then
        call combo(u)
    endif

    // 小无相 连击
    if GetUnitAbilityLevel(u, 'A096') > 0 and GetRandomInt(1, 100) <= 3 * GetUnitAbilityLevel(u, 'A096') then
        call combo(u)
    endif

    if GetUnitAbilityLevel(u, 'A04B') > 0 and GetUnitState(u, UNIT_STATE_MANA) >= 30 and GetRandomInt(1, 100) <= 15 then
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
