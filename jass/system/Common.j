function WanBuff_1 takes integer buffnum, integer num, unit uc, integer id, integer orderid, unit ut, string s returns nothing
    local unit u
    local player p
    local location loc
    if buffnum == num then
        set p = GetOwningPlayer(uc)
        set loc = GetUnitLoc(ut)
        call CreateNUnitsAtLoc(1, $65303030, p, loc, bj_UNIT_FACING)
        set u = bj_lastCreatedUnit
        call ShowUnitHide(u)
        call UnitAddAbility(u, id)
        if num == 12 or num == 14 then
            call IncUnitAbilityLevel(u, id)
        endif
        call IssueTargetOrderById(u, orderid, ut)
        call UnitApplyTimedLife(u, $42487765, 2.)
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
    call WanBuff_1(buffnum, 1, u, $41303737, 852111, ut, "内伤")
    call WanBuff_1(buffnum, 2, u, $41303739, 852668, ut, "走火入魔")
    call WanBuff_1(buffnum, 3, u, $41303735, 852527, ut, "流血")
    call WanBuff_1(buffnum, 4, u, $41303649, 852189, ut, "混乱")
    call WanBuff_1(buffnum, 5, u, $4130415A, 852075, ut, "昏迷")
    call WanBuff_1(buffnum, 6, u, $41303736, 852075, ut, "重伤")
    call WanBuff_1(buffnum, 7, u, $41303738, 852527, ut, "血流不止")
    call WanBuff_1(buffnum, 8, u, $41304159, 852190, ut, "麻痹")
    call WanBuff_1(buffnum, 9, u, $4130334F, 852149, ut, "破防")
    call WanBuff_1(buffnum, 10, u, $4130354E, 852190, ut, "神经错乱")
    call WanBuff_1(buffnum, 11, u, $4130354C, 852095, ut, "封穴")
    call WanBuff_1(buffnum, 12, u, $4130354C, 852095, ut, "穴位全封")
    call WanBuff_1(buffnum, 13, u, $41303734, 852527, ut, "中毒")
    call WanBuff_1(buffnum, 14, u, $41303734, 852527, ut, "深度中毒")
    call WanBuff_1(buffnum, 15, u, $41303937, 852190, ut, "致盲")
    call WanBuff_1(buffnum, 16, u, $41303937, 852190, ut, "伤害加深")
endfunction


function dealDamage takes unit u, unit ut, real damage returns nothing
    local location loc = GetUnitLoc(ut)
    local real coeff = 1
    local integer i = 1 + GetPlayerId(GetOwningPlayer(u))
    set coeff = coeff + kungfuCoeff[i]
    if GetUnitAbilityLevel(u, $4130334E) >= 1 then
        set coeff = coeff + .4
    endif
    if GetUnitAbilityLevel(u, $41303350) >= 1 then
        set coeff = coeff + .5
    endif
    if GetUnitAbilityLevel(u, $41303351) >= 1 then
        set coeff = coeff + .4
    endif
    if GetUnitAbilityLevel(u, $41303352) >= 1 then
        set coeff = coeff + .5
    endif
    set damage = damage * coeff
    if UnitHasBuffBJ(ut, $42303035) then
        set damage = damage * 2
    endif
    if damage == 0 then
        call CreateTextTagUnitBJ("MISS", ut, 0., 11., 255., 0., 0., 30.)
    else
        if GetRandomReal(0., 100.) <= 20 and GetUnitAbilityLevel(u, $4130334E) >= 1 then
            set damage = damage * 3
            call UnitDamageTarget(u, ut, damage, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
            call CreateTextTagUnitBJ(I2S(R2I(damage)), ut, 0., 14., 100., 100., 0., 30.)
        else
            call UnitDamageTarget(u, ut, damage, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
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
    if GetRandomInt(0, 100) <= possibility or (GetRandomInt(0, 100) <= possibility * 2 and YDWEUnitHasItemOfTypeBJNull(attacker, $4930304C)) and GetUnitAbilityLevel(attacker, spell_id) >= 1 and GetUnitState(attacker, UNIT_STATE_MANA) >= mana_cost then
        if spell_id == $41303031 then
            if GetUnitAbilityLevel(attacker, spell_id) == 5 then
                set coeff = coeff + 1
            endif
            if GetUnitAbilityLevel(attacker, $4130334E) >= 1 then
                set coeff = coeff + 1
            endif
            if udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(attacker))] == 1 then
                set dmg = dmg * 8
            endif
        endif
        if spell_id == $41303435 then
            set dmg = dmg * GetUnitAbilityLevel(attacker, $41303435)
            if GetRandomInt(0, 100) <= 50 then
                call WanBuff(attacker, attackee, 16)
            endif
        endif
        if spell_id == $41303438 then
            set dmg = dmg * mana_cost * mana_cost
        endif
        if spell_id == $41303437 then
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
        if spell_id == $4130304B and udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(attacker))] == 1 then
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
    if GetRandomInt(0, 100) <= possibility or (GetRandomInt(0, 100) <= possibility * 2 and YDWEUnitHasItemOfTypeBJNull(attacker, $4930304C)) and GetUnitAbilityLevel(attacker, spell_id) >= 1 and GetUnitState(attacker, UNIT_STATE_MANA) >= mana_cost then
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
    if spell_id == $41303243 or spell_id == $41303244 or spell_id == $41303245 and udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(attacker))] >= 1 then
        set manacost = manacost - 20
    endif
    if GetRandomInt(0, 100) <= possibility or (GetRandomInt(0, 100) <= possibility * 2 and YDWEUnitHasItemOfTypeBJNull(attacker, $4930304C)) and GetUnitAbilityLevel(attacker, spell_id) >= 1 and GetUnitState(attacker, UNIT_STATE_MANA) >= manacost then
        if spell_id == $41303251 then
            call CreateNUnitsAtLoc(1, $65303045, GetOwningPlayer(attacker), loc2, bj_UNIT_FACING)
            call UnitAddAbility(bj_lastCreatedUnit, shadow_id)
            call SetUnitAbilityLevel(bj_lastCreatedUnit, shadow_id, GetUnitAbilityLevel(attacker, spell_id))
            call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, attacker)
            call IssueImmediateOrderById(bj_lastCreatedUnit, order_id)
            call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 5.5)
            call SetUnitState(attacker, UNIT_STATE_MANA, GetUnitState(attacker, UNIT_STATE_MANA) - manacost)
        elseif spell_id == $41303337 then
            call CreateNUnitsAtLoc(1, $65303039, GetOwningPlayer(attacker), loc, bj_UNIT_FACING)
            call ShowUnitHide(bj_lastCreatedUnit)
            call UnitAddAbility(bj_lastCreatedUnit, shadow_id)
            call SetUnitAbilityLevel(bj_lastCreatedUnit, shadow_id, GetUnitAbilityLevel(attacker, spell_id))
            call IssueTargetOrderById(bj_lastCreatedUnit, order_id, attacker)
            call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 3.)
            call SetUnitState(attacker, UNIT_STATE_MANA, GetUnitState(attacker, UNIT_STATE_MANA) - manacost)
        else
            call CreateNUnitsAtLoc(1, $65303039, GetOwningPlayer(attacker), loc, bj_UNIT_FACING)
            call ShowUnitHide(bj_lastCreatedUnit)
            call UnitAddAbility(bj_lastCreatedUnit, shadow_id)
            call SetUnitAbilityLevel(bj_lastCreatedUnit, shadow_id, GetUnitAbilityLevel(attacker, spell_id))
            call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, attacker)
            call IssueTargetOrderById(bj_lastCreatedUnit, order_id, attackee)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit, order_id, loc2)
            call IssueImmediateOrderById(bj_lastCreatedUnit, order_id)
            if spell_id == $41303439 then
                call DestroyEffect(AddSpecialEffect("war3mapImported\\icenova.mdx", GetUnitX(attackee), GetUnitY(attackee)))
            endif
            call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 20.)
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
    // 10-30波，完美品质概率为10%+波数*0.2%
    // 30-50波，完美品质概率为10%+波数*0.3%


    if rand < RMinBJ(15, 10 + luck[i] * .025) then
        set id = 'I02E'
    elseif rand < RMinBJ(45, 30 + luck[i] * .075) then
        set id = 'I02D'
    elseif rand < RMinBJ(90, 60 + luck[i] * .175) then
        set id = 'I02C'
    else
        set id = 'I02B'
    endif
    return id
endfunction

