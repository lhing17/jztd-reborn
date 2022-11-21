/*
* 任意设置攻速系统
*/
globals
    integer array attackSpeedAbility
    integer array powerOfTwo
endglobals

function clearAttackSpeed takes unit u returns nothing
    local integer i = 10
    loop
        exitwhen i < 1
        call UnitRemoveAbility(u, attackSpeedAbility[i])
        set i = i - 1
    endloop
    call SaveInteger(YDHT, GetHandleId(u), StringHash("attackSpeed"), 0)
endfunction

// 设置攻速
function setAttackSpeed takes unit u, integer rate returns boolean
    local integer i
    if rate == 0 then
        call clearAttackSpeed(u)
        return false
    endif
    if rate < - 512 or rate > 511 then
        return false
    endif
    call SaveInteger(YDHT, GetHandleId(u), StringHash("attackSpeed"), rate)
    if rate < 0 then
        set rate = 512 + rate
        call UnitAddAbility(u, attackSpeedAbility[10])
        call UnitMakeAbilityPermanent(u, true, attackSpeedAbility[10])
    else
        call UnitRemoveAbility(u, attackSpeedAbility[10])
    endif

    set i = 9
    loop
        exitwhen i < 1
        if rate > powerOfTwo[i] then
            call UnitAddAbility(u, attackSpeedAbility[i])
            call UnitMakeAbilityPermanent(u, true, attackSpeedAbility[i])
            set rate = rate - powerOfTwo[i]
        else
            call UnitRemoveAbility(u, attackSpeedAbility[i])
        endif
        set i = i - 1
    endloop
    return true
endfunction

// 增加攻速
function addAttackSpeed takes unit u, integer rate returns boolean
    return setAttackSpeed(u, LoadInteger(YDHT, GetHandleId(u), StringHash("attackSpeed")) + rate)
endfunction


function initSetAttackSpeed takes nothing returns nothing
    set attackSpeedAbility[1] = 'YDa0'
    set attackSpeedAbility[2] = 'YDa1'
    set attackSpeedAbility[3] = 'YDa2'
    set attackSpeedAbility[4] = 'YDa3'
    set attackSpeedAbility[5] = 'YDa4'
    set attackSpeedAbility[6] = 'YDa5'
    set attackSpeedAbility[7] = 'YDa6'
    set attackSpeedAbility[8] = 'YDa7'
    set attackSpeedAbility[9] = 'YDa8'
    set attackSpeedAbility[10] = 'YDa9'
    set powerOfTwo[0] = 1
    set powerOfTwo[1] = 2
    set powerOfTwo[2] = 4
    set powerOfTwo[3] = 8
    set powerOfTwo[4] = 16
    set powerOfTwo[5] = 32
    set powerOfTwo[6] = 64
    set powerOfTwo[7] = 128
    set powerOfTwo[8] = 256
    set powerOfTwo[9] = 512

endfunction



function WanBuff_1 takes integer buffnum, integer num, unit uc, integer id, integer orderid, unit ut, string s returns nothing
    local unit u
    local player p
    local location loc
    if buffnum == num then
        set p = GetOwningPlayer(uc)
        set loc = GetUnitLoc(ut)
        call CreateNUnitsAtLoc(1, 'e100', p, loc, bj_UNIT_FACING)
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
    // 敌方闪避
    local integer enemyDodge = (udg_difficulty - 1) * 5 + (wave - 1) / 9 * 10
    // 我方命中
    local integer myHit = 100 + LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_HIT_KEY)
    local integer rand = GetRandomInt(0, 100)
    local integer hitRate = 0
    local integer criticalRate = 5 + LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_CRITICAL_RATE_KEY)
    // 暴击倍数
    local real criticalTimes = 2 + LoadReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_CRITICAL_ADDITION_KEY)

    // 如果敌方单位是英雄，闪避加100
    if IsUnitType(ut, UNIT_TYPE_HERO) then
        set enemyDodge = enemyDodge + 100
    endif

    // 蓝怪闪避+500
	if LoadInteger(YDHT, GetHandleId(ut), StringHash("color")) == 3 then
		set enemyDodge = enemyDodge + 500
	endif

    // R00A科技等级，每级命中+100
    if GetPlayerTechCountSimple('R00A', GetOwningPlayer(u)) > 0 then
        set myHit = myHit + 100 * GetPlayerTechCountSimple('R00A', GetOwningPlayer(u))
    endif

    set hitRate = 100 * myHit / (myHit + enemyDodge)

    set coeff = coeff + kungfuCoeff[i]

    // 北冥神功 暴击率+20%  暴击倍数+1
    if GetUnitAbilityLevel(u, 'A03N') > 0 then
        set criticalRate = criticalRate + 5 * GetUnitAbilityLevel(u, 'A03N')
        set criticalTimes = criticalTimes + 0.3 + 0.2 * GetUnitAbilityLevel(u, 'A03N')
    endif

    // 每点功勋增加0.2%伤害
    if LoadInteger(CONT_HT, GetHandleId(u), CONT_KEY) > 0 then
        set coeff = coeff + LoadInteger(CONT_HT, GetHandleId(u), CONT_KEY) * 0.002
    endif

    // 北冥神功 伤害增加40%
    if GetUnitAbilityLevel(u, 'A03N') >= 1 then
        set coeff = coeff + 0.1 + 0.15 * GetUnitAbilityLevel(u, 'A03N')
    endif

    // 太玄神功 伤害增加50%
    if GetUnitAbilityLevel(u, 'A03P') >= 1 then
        set coeff = coeff + 0.2 + 0.15 * GetUnitAbilityLevel(u, 'A03P')
    endif

    // 蛤蟆功 伤害增加40%
    if GetUnitAbilityLevel(u, 'A03Q') >= 1 then
        set coeff = coeff + 0.1 + 0.15 * GetUnitAbilityLevel(u, 'A03Q')
    endif

    // 洗髓经 伤害增加50%
    if GetUnitAbilityLevel(u, 'A03R') >= 1 then
        set coeff = coeff + 0.2 + 0.15 * GetUnitAbilityLevel(u, 'A03R')
    endif

    // 地图等级大于等于6级，伤害增加5%
    if mapLevel[i] >= 6 then
        set coeff = coeff + 0.05
    endif

    // 地图等级大于等于20级，伤害增加10%
    if mapLevel[i] >= 20 then
        set coeff = coeff + 0.1
    endif

    // 塔的伤害加成
    if LoadReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_DAMAGE_KEY) > 0 then
        set coeff = coeff + LoadReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_DAMAGE_KEY)
    endif

    set damage = damage * coeff
    if UnitHasBuffBJ(ut, 'B005') then
        set damage = damage * 2
    endif

    // 伤害减免 红怪减免80%伤害，绿怪减免50%伤害且不吃暴击
    if LoadInteger(YDHT, GetHandleId(ut), StringHash("color")) == 1 then
        set damage = damage * 0.2
    elseif LoadInteger(YDHT, GetHandleId(ut), StringHash("color")) == 2 then
        set damage = damage * 0.5
    endif


    // 圆桌理论 闪避+暴击+普通 = 100
    if rand <= 100 - hitRate then
        // 闪避
        call CreateTextTagUnitBJ("MISS", ut, 0., 11., 255., 0., 0., 30.)
    elseif rand <= 100 - hitRate + criticalRate and LoadInteger(YDHT, GetHandleId(ut), StringHash("color")) != 2 then
        // 暴击 绿怪不吃暴击
        set damage = damage * criticalTimes
        call UnitDamageTarget(u, ut, damage, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
        call CreateTextTagUnitBJ(I2S(R2I(damage)), ut, 0., 14., 100., 100., 0., 30.)
    else
        call UnitDamageTarget(u, ut, damage, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
        call CreateTextTagUnitBJ(I2S(R2I(damage)), ut, 0., 11., 100., 100., 100., 30.)
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
        
        // 韦陀棍法
        if spell_id == 'A001' then
            if GetUnitAbilityLevel(attacker, spell_id) >= 5 then
                set coeff = coeff + 1
            endif
            if GetUnitAbilityLevel(attacker, 'A03N') >= 1 then
                set coeff = coeff * 3
            endif
            if udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(attacker))] == 1 then
                set dmg = dmg * 8
            endif
            // call BJDebugMsg("伤害：" + R2S(coeff * dmg))
        endif

        // 虾米神拳
        if spell_id == 'A045' then
            set dmg = dmg * GetUnitAbilityLevel(attacker, 'A045')
            if GetRandomInt(0, 100) <= 50 then
                call WanBuff(attacker, attackee, 16)
            endif
        endif

        // 五雷咒
        if spell_id == 'A048' then
            set dmg = dmg * mana_cost * mana_cost
        endif

        // 乾坤一掷
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
        // 武当剑法
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

// 装备随机属性数量
function getEquipRandomAttrCount takes integer strength returns integer
    // 每8点强度增加1个随机属性
    return (strength - 1) / 8 + 1
endfunction

function generateRandomAttr takes item it returns nothing
    local integer handleId = GetHandleId(it)

    // 从词缀中随机选取count个
    local integer array affixIndex
    local integer i = 1
    local integer temp = 0
    local integer j = 0
    local integer rand = 0
    local integer count = 0
    local integer strength = LoadInteger(EQUIP_ATTR_HT, handleId, EQUIP_STRENGTH_KEY)
    local integer affixCount = 17

    if strength == 0 then
        set strength = LoadInteger(YDHT, GetItemTypeId(it), EQUIP_BASE_STRENGTH_KEY)
    endif

    if strength >= 20 then
        set affixCount = AFFIX_COUNT
    endif

    set count = getEquipRandomAttrCount(strength)
    
    if count <= 0 then
        return
    endif

    loop
        exitwhen i > affixCount
        set affixIndex[i] = i
        set i = i + 1
    endloop

    set i = affixCount
    loop
        exitwhen i < 1
        set j = GetRandomInt(1, i - 1)
        set temp = affixIndex[i]
        set affixIndex[i] = affixIndex[j]
        set affixIndex[j] = temp
        set i = i - 1
    endloop

    if count >= 1 then
        call SaveInteger(EQUIP_ATTR_HT, handleId, EQUIP_ATTR1_TYPE_KEY, affixIndex[1])
        call SaveInteger(EQUIP_ATTR_HT, handleId, EQUIP_ATTR1_VALUE_KEY, GetRandomInt(affixMin[affixIndex[1]], IMaxBJ(affixMin[affixIndex[1]], affixMax[affixIndex[1]] * strength / 30)))
    endif

    if count >= 2 then
        call SaveInteger(EQUIP_ATTR_HT, handleId, EQUIP_ATTR2_TYPE_KEY, affixIndex[2])
        call SaveInteger(EQUIP_ATTR_HT, handleId, EQUIP_ATTR2_VALUE_KEY, GetRandomInt(affixMin[affixIndex[2]], IMaxBJ(affixMin[affixIndex[2]], affixMax[affixIndex[2]] * strength / 30)))
    endif

    if count >= 3 then
        call SaveInteger(EQUIP_ATTR_HT, handleId, EQUIP_ATTR3_TYPE_KEY, affixIndex[3])
        call SaveInteger(EQUIP_ATTR_HT, handleId, EQUIP_ATTR3_VALUE_KEY, GetRandomInt(affixMin[affixIndex[3]], IMaxBJ(affixMin[affixIndex[3]], affixMax[affixIndex[3]] * strength / 30)))
    endif

endfunction


function equipAddition takes unit u, integer attr, integer value returns nothing
    if attr == 1 then
        // 增益-疾速 加攻击速度
        call addAttackSpeed(u, value)
    elseif attr == 2 then
        // 增益-练气 加内力上限
        call YDWEGeneralBounsSystemUnitSetBonus(u, 1, 0, value)     
    elseif attr == 3 then
        // 增益-冥思 加内力回复速度
        call SaveInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_MANA_RECOVERY_KEY, LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_MANA_RECOVERY_KEY) + value)
    elseif attr == 4 then
        // 增益-吼叫 加攻击力
        call YDWEGeneralBounsSystemUnitSetBonus(u, 3, 0, value)
    elseif attr == 5 then
        // 增益-瞄准 加命中
        call SaveInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_HIT_KEY, LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_HIT_KEY) + value)
    elseif attr == 6 then
        // 增益-蓄力 加武学伤害
        call SaveReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_DAMAGE_KEY, LoadReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_DAMAGE_KEY) + value * 0.01)
    elseif attr == 7 then
        // 增益-狂暴 加暴击率
        call SaveInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_CRITICAL_RATE_KEY, LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_CRITICAL_RATE_KEY) + value)
    elseif attr == 8 then
        // 增益-连击 加连击率
        call SaveInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_COMBO_KEY, LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_COMBO_KEY) + value)
    elseif attr == 9 then
        // 增益-破甲 加破防概率
        call SaveInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_PIERCE_KEY, LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_PIERCE_KEY) + value)
    elseif attr == 10 then
        // 增益-冷静 冷却缩减
        call SaveInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_COOLDOWN_KEY, LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_COOLDOWN_KEY) + value)
    elseif attr == 11 then
        // 增益-连贯 重置CD概率
        call SaveInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_RESET_CD_KEY, LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_RESET_CD_KEY) + value)
    endif
endfunction

function addExtraAttr takes unit u, item it returns nothing
    local integer attr = 0
    local integer value = 0
    // 额外属性效果
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY) != 0 then
        set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY)
        set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_VALUE_KEY)
        call equipAddition(u, attr, value) 
    endif

    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY) != 0 then
        set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY)
        set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_VALUE_KEY)
        call equipAddition(u, attr, value)
    endif

    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY) != 0 then
        set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY)
        set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_VALUE_KEY)
        call equipAddition(u, attr, value)
    endif
endfunction


function SynItem takes unit u, integer itemid_before, integer itemid_after returns nothing
    local item it = null
    local item it2 = null
    if UnitHaveItem(u, itemid_before) then
        set it = FetchUnitItem(u, itemid_before)
        call UnitRemoveItem(u, it)
        if UnitHaveItem(u, itemid_before) then
            call RemoveItem(FetchUnitItem(u, itemid_before))
            call RemoveItem(it)
            set it2 = UnitAddItemById(u, itemid_after)
            call generateRandomAttr(it2)
            call addExtraAttr(u, it2)
        else
            call UnitAddItem(u, it)
        endif
    endif
    set it = null
    set it2 = null
endfunction

// 获取单位身上指定级别的物品
function fetchUnitItemOfLevel takes unit u, integer level returns item
    local item it = null
    local integer i = 0
    loop
        exitwhen i == 6
        set it = UnitItemInSlot(u, i)
        if it != null then
            if LoadInteger(YDHT, GetItemTypeId(it), EQUIP_INT_LEVEL_KEY) == level then
                exitwhen true
            endif
        endif
        set i = i + 1
    endloop
    return it
endfunction

// 三个物品合成一个
function synItemThree takes unit u returns nothing
    local integer j = 1
    local item it = null
    local item it2 = null
    local integer normalCount = 0
    local integer rareCount = 0
    local integer valuableCount = 0
    local integer ancientCount = 0
    local integer id = 0
    loop
        exitwhen j > 6
        set it = UnitItemInSlotBJ(u, j)
        set id = GetItemTypeId(it)
        if LoadInteger(YDHT, id, EQUIP_INT_LEVEL_KEY) == 1 then
            set normalCount = normalCount + 1
        elseif LoadInteger(YDHT, id, EQUIP_INT_LEVEL_KEY) == 2 then
            set rareCount = rareCount + 1
        elseif LoadInteger(YDHT, id, EQUIP_INT_LEVEL_KEY) == 3 then
            set valuableCount = valuableCount + 1
        elseif LoadInteger(YDHT, id, EQUIP_INT_LEVEL_KEY) == 4 then
            set ancientCount = ancientCount + 1
        endif
        set j = j + 1
    endloop
    if normalCount >= 3 then
        // 三个普通物品合成一个稀有物品
        call RemoveItem(fetchUnitItemOfLevel(u, 1))
        call RemoveItem(fetchUnitItemOfLevel(u, 1))
        call RemoveItem(fetchUnitItemOfLevel(u, 1))
        set it2 = UnitAddItemById(u, rare_drops[GetRandomInt(1, MAX_RARE_DROP)])
        call generateRandomAttr(it2)
        call addExtraAttr(u, it2)
        set rareCount = rareCount + 1
    endif

    if rareCount >= 3 then
        // 三个稀有物品合成一个珍稀物品
        call RemoveItem(fetchUnitItemOfLevel(u, 2))
        call RemoveItem(fetchUnitItemOfLevel(u, 2))
        call RemoveItem(fetchUnitItemOfLevel(u, 2))
        set it2 = UnitAddItemById(u, valuable_drops[GetRandomInt(1, MAX_VALUABLE_DROP)])
        call generateRandomAttr(it2)
        call addExtraAttr(u, it2)
        set valuableCount = valuableCount + 1
    endif

    if valuableCount >= 3 then
        // 三个珍稀物品合成一个远古物品
        call RemoveItem(fetchUnitItemOfLevel(u, 3))
        call RemoveItem(fetchUnitItemOfLevel(u, 3))
        call RemoveItem(fetchUnitItemOfLevel(u, 3))
        set it2 = UnitAddItemById(u, ancient_drops[GetRandomInt(1, MAX_ANCIENT_DROP)])
        call generateRandomAttr(it2)
        call addExtraAttr(u, it2)
        set ancientCount = ancientCount + 1
    endif

    if ancientCount >= 3 then
        // 三个远古物品合成一个史诗物品
        call RemoveItem(fetchUnitItemOfLevel(u, 4))
        call RemoveItem(fetchUnitItemOfLevel(u, 4))
        call RemoveItem(fetchUnitItemOfLevel(u, 4))
        set it2 = UnitAddItemById(u, epic_drops[GetRandomInt(1, MAX_EPIC_DROP)])
        call generateRandomAttr(it2)
        call addExtraAttr(u, it2)
    endif
    
    set it = null
    set it2 = null
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

// 判断物品是否为武器
function isWeapon takes item it returns boolean
    local integer id = GetItemTypeId(it)
    local integer j = 1
    loop
        exitwhen j > MAX_NORMAL_DROP
        if id == normal_drops[j] then
            return true
        endif
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > MAX_RARE_DROP
        if id == rare_drops[j] then
            return true
        endif
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > MAX_VALUABLE_DROP
        if id == valuable_drops[j] then
            return true
        endif
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > MAX_ANCIENT_DROP
        if id == ancient_drops[j] then
            return true
        endif
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > MAX_EPIC_DROP
        if id == epic_drops[j] then
            return true
        endif
        set j = j + 1
    endloop

    set j = 1
    loop
        exitwhen j > SHEN_QI_NUM
        if id == shenqi[j] then
            return true
        endif
        set j = j + 1
    endloop

    return false
endfunction


function tryUnitAddItem takes unit u, item it returns nothing
    // if UnitAddItem(u, it) then
    //     call addExtraAttr(u, it)
    // endif
    call UnitAddItem(u, it)
endfunction


function removeCombo takes nothing returns nothing
    local timer t = GetExpiredTimer()
    local unit u = LoadUnitHandle(YDHT, GetHandleId(t), 0)
    call UnitRemoveAbility(u, 'A095')
    call DestroyTimer(t)
    set t = null
    set u = null
endfunction

function combo takes unit u returns nothing
    local timer t = CreateTimer()
    call UnitAddAbility(u, 'A095')
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call TimerStart(t, 2, false, function removeCombo)
    set t = null
    
endfunction


