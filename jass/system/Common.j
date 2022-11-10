function WanBuff_1 takes integer buffnum, integer num, unit uc, integer id, integer orderid, unit ut, string s returns nothing
    local unit u
    local player p
    local location loc
    if buffnum == num then
        set p = GetOwningPlayer(uc)
        set loc = GetUnitLoc(ut)
        call CreateNUnitsAtLoc(1, 'e000', p, loc, bj_UNIT_FACING)
        set u = bj_lastCreatedUnit
        call ShowUnitHide(u)
        call UnitAddAbility(u, id)
        if num == 12 or num == 14 then
            call IncUnitAbilityLevel(u, id)
        endif
        call IssueTargetOrderById(u, orderid, ut)
        call UnitApplyTimedLife(u, 'BHwe', 2.)
        call CreateTextTagLocBJ(s, loc, 60., 12., 65., 55., 42., 0)
        call YDWETimerDestroyTextTag(3., bj_lastCreatedTextTag)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100., 90)
        call RemoveLocation(loc)
    endif
    set loc = null
    set p = null
    set u = null
endfunction
function WanBuff takes unit u, unit ut, integer buffnum returns nothing
    call WanBuff_1(buffnum, 1, u, 'A077', 852111, ut, "内伤")
    call WanBuff_1(buffnum, 2, u, 'A079', 852668, ut, "走火入魔")
    call WanBuff_1(buffnum, 3, u, 'A075', 852527, ut, "流血")
    call WanBuff_1(buffnum, 4, u, 'A06I', 852189, ut, "混乱")
    call WanBuff_1(buffnum, 5, u, 'A0AZ', 852075, ut, "昏迷")
    call WanBuff_1(buffnum, 6, u, 'A076', 852075, ut, "重伤")
    call WanBuff_1(buffnum, 7, u, 'A078', 852527, ut, "血流不止")
    call WanBuff_1(buffnum, 8, u, 'A0AY', 852190, ut, "麻痹")
    call WanBuff_1(buffnum, 9, u, 'A03O', 852149, ut, "破防")
    call WanBuff_1(buffnum, 10, u, 'A05N', 852190, ut, "神经错乱")
    call WanBuff_1(buffnum, 11, u, 'A05L', 852095, ut, "封穴")
    call WanBuff_1(buffnum, 12, u, 'A05L', 852095, ut, "穴位全封")
    call WanBuff_1(buffnum, 13, u, 'A074', 852527, ut, "中毒")
    call WanBuff_1(buffnum, 14, u, 'A074', 852527, ut, "深度中毒")
    call WanBuff_1(buffnum, 15, u, 'A097', 852190, ut, "致盲")
    call WanBuff_1(buffnum, 16, u, 'A097', 852190, ut, "伤害加深")
endfunction


function dealDamage takes unit u, unit ut, real damage returns nothing
    local location loc = GetUnitLoc(ut)
    local real coeff = 1
    local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
    set coeff = coeff + kungfuCoeff[i]

    // 每点功勋增加0.5%伤害
    if LoadInteger(CONT_HT, GetHandleId(u), CONT_KEY) > 0 then
        set coeff = coeff + LoadInteger(CONT_HT, GetHandleId(u), CONT_KEY) * 0.005
    endif

    // 北冥神功 伤害增加40%
    if GetUnitAbilityLevel(u, 'A03N') >= 1 then
        set coeff = coeff + .4
    endif

    // 太玄神功 伤害增加50%
    if GetUnitAbilityLevel(u, 'A03P') >= 1 then
        set coeff = coeff + .5
    endif

    // 蛤蟆功 伤害增加40%
    if GetUnitAbilityLevel(u, 'A03Q') >= 1 then
        set coeff = coeff + .4
    endif

    // 洗髓经 伤害增加50%
    if GetUnitAbilityLevel(u, 'A03R') >= 1 then
        set coeff = coeff + .5
    endif
    set damage = damage * coeff
    if UnitHasBuffBJ(ut, 'B005') then
        set damage = damage * 2
    endif
    if damage == 0 then
        call CreateTextTagUnitBJ("MISS", ut, 0., 11., 255., 0., 0., 30.)
    else
        if GetRandomReal(0., 100.) <= 20 and GetUnitAbilityLevel(u, 'A03N') >= 1 then
            set damage = damage * 3
            call UnitDamageTarget(u, ut, damage, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
            call CreateTextTagUnitBJ(I2S(R2I(damage)), ut, 0., 14., 100., 100., 0., 30.)
        else
            call UnitDamageTarget(u, ut, damage, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
            call CreateTextTagUnitBJ(I2S(R2I(damage)), ut, 0., 11., 100., 100., 100., 30.)
        endif
    endif
    call SetTextTagVelocityBJ(bj_lastCreatedTextTag, 400., GetRandomReal(80., 100.))
    call YDWETimerDestroyTextTag(.65, bj_lastCreatedTextTag)
    call RemoveLocation(loc)
    set loc = null
endfunction
function LifeChange takes unit u, integer mod, integer ch, integer id returns nothing
    local integer a
    local integer b
    local integer c
    local integer d
    local integer aid = id
    if mod == 1 then
        set ch =- ch
    elseif mod == 2 then
        set ch = ch - R2I(GetUnitState(u, UNIT_STATE_MAX_LIFE))
    endif
    if ch > $3B9AC9FF then
        set ch = $3B9AC9FF
    endif
    if ch <- 999999999 then
        set ch =- 999999999
    endif
    if ch < 0 then
        set a = 2
        set ch =- ch
    else
        set a = 12
    endif
    set b = 0
    loop
        exitwhen b == 10
        set c = ch - ch / 10 * 10
        set d = 0
        loop
            exitwhen d == c
            call UnitAddAbility(u, aid)
            call SetUnitAbilityLevel(u, aid, a)
            call UnitRemoveAbility(u, aid)
            set d = d + 1
        endloop
        set ch = ch / 10
        set a = a + 1
        set b = b + 1
    endloop
endfunction

function IsEnemyAndAlive takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, RANGE_DAMAGE_HASH, 0))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function IsEnemyAndAliveForAttack takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function AttackerDamageRange takes nothing returns nothing
    local unit u = LoadUnitHandle(YDHT, RANGE_DAMAGE_HASH, 0)
    local unit ut = GetEnumUnit()
    local real damage = LoadReal(YDHT, RANGE_DAMAGE_HASH, 1)
    local string effects = LoadStr(YDHT, RANGE_DAMAGE_HASH, 2)
    local location loc = GetUnitLoc(ut)
    call dealDamage(u, ut, damage)
    call DestroyEffect(AddSpecialEffectLoc(effects, loc))
    call RemoveLocation(loc)
    set loc = null
    set u = null
    set ut = null
endfunction
function PassiveRangeDamage takes unit attacker, unit attackee, integer spell_id, real range, real damage, string effects, integer possibility, integer mana_cost returns nothing
    local group g = CreateGroup()
    local location loc = GetUnitLoc(attackee)
    local real dmg = damage * GetUnitAbilityLevel(attacker, spell_id) * GetUnitAbilityLevel(attacker, spell_id)
    local real coeff = 1
    if GetRandomInt(0, 100) <= possibility or (GetRandomInt(0, 100) <= possibility * 2 and YDWEUnitHasItemOfTypeBJNull(attacker, 'I00L')) and GetUnitAbilityLevel(attacker, spell_id) >= 1 and GetUnitState(attacker, UNIT_STATE_MANA) >= mana_cost then
        if spell_id == 'A001' then
            if GetUnitAbilityLevel(attacker, spell_id) == 5 then
                set coeff = coeff + 1
            endif
            if GetUnitAbilityLevel(attacker, 'A03N') >= 1 then
                set coeff = coeff + 1
            endif
            if udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(attacker))] == 1 then
                set dmg = dmg * 8
            endif
        endif
        if spell_id == 'A045' then
            set dmg = dmg * GetUnitAbilityLevel(attacker, 'A045')
            if GetRandomInt(0, 100) <= 50 then
                call WanBuff(attacker, attackee, 16)
            endif
        endif
        if spell_id == 'A048' then
            set dmg = dmg * mana_cost * mana_cost
        endif
        if spell_id == 'A047' then
            if GetPlayerState(GetOwningPlayer(attacker), PLAYER_STATE_RESOURCE_GOLD) >= 50 then
                call SetPlayerState(GetOwningPlayer(attacker), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(GetOwningPlayer(attacker), PLAYER_STATE_RESOURCE_GOLD) - 50)
                call CreateTextTagUnitBJ("-50", attacker, 0., 11., 80.4, 49.8, 19.6, 30.)
                call SetTextTagVelocityBJ(bj_lastCreatedTextTag, 400., GetRandomReal(80., 100.))
                call YDWETimerDestroyTextTag(.65, bj_lastCreatedTextTag)
            else
                call DestroyGroup(g)
                call RemoveLocation(loc)
                set loc = null
                set g = null
                return
            endif
        endif
        if spell_id == 'A00K' and udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(attacker))] == 1 then
            set range = range + 450
        endif
        call SaveUnitHandle(YDHT, RANGE_DAMAGE_HASH, 0, attacker)
        call SaveReal(YDHT, RANGE_DAMAGE_HASH, 1, dmg * coeff)
        call SaveStr(YDHT, RANGE_DAMAGE_HASH, 2, effects)
        call GroupEnumUnitsInRangeOfLoc(g, loc, range, Condition(function IsEnemyAndAlive))
        call SetUnitState(attacker, UNIT_STATE_MANA, GetUnitState(attacker, UNIT_STATE_MANA) - mana_cost)
        call ForGroupBJ(g, function AttackerDamageRange)
    endif
    call DestroyGroup(g)
    call RemoveLocation(loc)
    set loc = null
    set g = null
endfunction
function PassiveSingleDamage takes unit attacker, unit attackee, integer spell_id, real base_damage, string effects, integer possibility, integer mana_cost returns nothing
    local location loc = GetUnitLoc(attackee)
    local real damage = base_damage * GetUnitAbilityLevel(attacker, spell_id) * GetUnitAbilityLevel(attacker, spell_id)
    if GetRandomInt(0, 100) <= possibility or (GetRandomInt(0, 100) <= possibility * 2 and YDWEUnitHasItemOfTypeBJNull(attacker, 'I00L')) and GetUnitAbilityLevel(attacker, spell_id) >= 1 and GetUnitState(attacker, UNIT_STATE_MANA) >= mana_cost then
        call dealDamage(attacker, attackee, damage)
        call DestroyEffect(AddSpecialEffectLoc(effects, loc))
        call SetUnitState(attacker, UNIT_STATE_MANA, GetUnitState(attacker, UNIT_STATE_MANA) - mana_cost)
    endif
    call RemoveLocation(loc)
    set loc = null
endfunction
function PassiveUseAbility takes unit attacker, unit attackee, integer spell_id, integer shadow_id, integer order_id, integer possibility, integer mana_cost returns nothing
    local location loc = GetUnitLoc(attacker)
    local location loc2 = GetUnitLoc(attackee)
    local integer manacost = mana_cost
    if spell_id == 'A02C' or spell_id == 'A02D' or spell_id == 'A02E' and udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(attacker))] >= 1 then
        set manacost = manacost - 20
    endif
    if GetRandomInt(0, 100) <= possibility or (GetRandomInt(0, 100) <= possibility * 2 and YDWEUnitHasItemOfTypeBJNull(attacker, 'I00L')) and GetUnitAbilityLevel(attacker, spell_id) >= 1 and GetUnitState(attacker, UNIT_STATE_MANA) >= manacost then
        if spell_id == 'A02Q' then
            call CreateNUnitsAtLoc(1, 'e00E', GetOwningPlayer(attacker), loc2, bj_UNIT_FACING)
            call UnitAddAbility(bj_lastCreatedUnit, shadow_id)
            call SetUnitAbilityLevel(bj_lastCreatedUnit, shadow_id, GetUnitAbilityLevel(attacker, spell_id))
            call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, attacker)
            call IssueImmediateOrderById(bj_lastCreatedUnit, order_id)
            call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 5.5)
            call SetUnitState(attacker, UNIT_STATE_MANA, GetUnitState(attacker, UNIT_STATE_MANA) - manacost)
        elseif spell_id == 'A037' then
            call CreateNUnitsAtLoc(1, 'e009', GetOwningPlayer(attacker), loc, bj_UNIT_FACING)
            call ShowUnitHide(bj_lastCreatedUnit)
            call UnitAddAbility(bj_lastCreatedUnit, shadow_id)
            call SetUnitAbilityLevel(bj_lastCreatedUnit, shadow_id, GetUnitAbilityLevel(attacker, spell_id))
            call IssueTargetOrderById(bj_lastCreatedUnit, order_id, attacker)
            call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 3.)
            call SetUnitState(attacker, UNIT_STATE_MANA, GetUnitState(attacker, UNIT_STATE_MANA) - manacost)
        else
            call CreateNUnitsAtLoc(1, 'e009', GetOwningPlayer(attacker), loc, bj_UNIT_FACING)
            call ShowUnitHide(bj_lastCreatedUnit)
            call UnitAddAbility(bj_lastCreatedUnit, shadow_id)
            call SetUnitAbilityLevel(bj_lastCreatedUnit, shadow_id, GetUnitAbilityLevel(attacker, spell_id))
            call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, attacker)
            call IssueTargetOrderById(bj_lastCreatedUnit, order_id, attackee)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit, order_id, loc2)
            call IssueImmediateOrderById(bj_lastCreatedUnit, order_id)
            if spell_id == 'A049' then
                call DestroyEffect(AddSpecialEffect("war3mapImported\\icenova.mdx", GetUnitX(attackee), GetUnitY(attackee)))
            endif
            call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 20.)
            call SetUnitState(attacker, UNIT_STATE_MANA, GetUnitState(attacker, UNIT_STATE_MANA) - manacost)
        endif
    endif
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set loc = null
    set loc2 = null
endfunction

function UnitHaveItem takes unit u, integer j returns boolean
    local integer i = 0
    if j != 0 then
        loop
            if GetItemTypeId(UnitItemInSlot(u, i)) == j then
                return true
            endif
            set i = i + 1
            exitwhen i >= 6
        endloop
    endif
    return false
endfunction
function FetchUnitItem takes unit u, integer j returns item
    local integer i = 0
    local item d4 = null
    loop
        set d4 = UnitItemInSlot(u, i)
        if GetItemTypeId(d4) == j then
            return d4
        endif
        set i = i + 1
        exitwhen i >= 6
    endloop
    return null
endfunction
function SynItem takes unit u, integer itemid_before, integer itemid_after returns nothing
    if UnitHaveItem(u, itemid_before) then
        call RemoveItem(FetchUnitItem(u, itemid_before))
        if UnitHaveItem(u, itemid_before) then
            call RemoveItem(FetchUnitItem(u, itemid_before))
            call UnitAddItemById(u, itemid_after)
        else
            call UnitAddItemById(u, itemid_before)
        endif
    endif
endfunction

// 获取随机品质的武魂石，概率和波数以及人品有关
function getRandomSoulStone takes integer i returns integer
    local integer id = 0
    local real rand = GetRandomReal(0, 100)
    // I02B为劣质品质，I02C为平凡品质，I02D为精致品质，I02E为完美品质
    // 10波之前，完美品质概率为0
    // 10-30波，完美品质概率为5%+波数*0.2%
    // 30波以后，完美品质概率为10%+波数*0.3%
    if wave <= 10 then
        if rand < RMinBJ(15, 10 + luck[i] * 0.025) then
            set id = 'I02D'
        elseif rand < RMinBJ(50, 40 + luck[i] * 0.05) then
            set id = 'I02C'
        else
            set id = 'I02B'
        endif
    elseif wave <= 30 then
        if rand < RMinBJ(15, 5 + luck[i] * 0.02) then
            set id = 'I02E'
        elseif rand < RMinBJ(30, 20 + luck[i] * 0.05) then
            set id = 'I02D'
        elseif rand < RMinBJ(65, 50 + luck[i] * 0.075) then
            set id = 'I02C'
        else
            set id = 'I02B'
        endif
    else
        if rand < RMinBJ(20, 10 + luck[i] * 0.03) then
            set id = 'I02E'
        elseif rand < RMinBJ(35, 20 + luck[i] * 0.06) then
            set id = 'I02D'
        elseif rand < RMinBJ(70, 50 + luck[i] * 0.09) then
            set id = 'I02C'
        else
            set id = 'I02B'
        endif
    endif

    return id
endfunction

// 获取随机掉落
function getRandomDrop takes nothing returns integer
    if GetRandomInt(1, 100) <= 100 - wave * 3 then
        return normal_drops[GetRandomInt(1, MAX_NORMAL_DROP)]
    elseif GetRandomInt(1, 100) <= 100 - wave * 3 / 2 then
        return rare_drops[GetRandomInt(1, MAX_RARE_DROP)]
    elseif GetRandomInt(1, 100) <= 100 - wave * 6 / 5 then
        return valuable_drops[GetRandomInt(1, MAX_VALUABLE_DROP)]
    elseif GetRandomInt(1, 100) <= 100 - wave * 9 / 8 then
        return ancient_drops[GetRandomInt(1, MAX_ANCIENT_DROP)]
    else
        return epic_drops[GetRandomInt(1, MAX_EPIC_DROP)]
    endif
endfunction

// 加木头
function addLumber takes player p, integer count returns nothing
    call AdjustPlayerStateBJ(count, p, PLAYER_STATE_RESOURCE_LUMBER)
endfunction

// 加金币
function addGold takes player p, integer count returns nothing
    call AdjustPlayerStateBJ(count, p, PLAYER_STATE_RESOURCE_GOLD)
endfunction

