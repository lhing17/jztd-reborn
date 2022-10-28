function dealRealDamage takes real damage, real smallDamage, integer abilityId, unit u, unit ut, real baseDamage returns nothing
    local unit uc = LoadUnitHandle(YDHT, GetHandleId(u), DUMMY_OWNER_KEY)
    local integer level = GetUnitAbilityLevel(uc, abilityId)
    local real realDamage = baseDamage * level * level
    if uc == null then
        set uc = u
        set level = GetUnitAbilityLevel(uc, abilityId)
        set realDamage = baseDamage * level * level
    endif
    if damage == smallDamage and level > 0 then
        if abilityId == 'A00N' and level == 4 then
            set realDamage = realDamage * 2.5
        endif
        if abilityId == 'A02M' then
            if level == 2 then
                set realDamage = 3000
            elseif level == 3 then
                set realDamage = 20000
            endif
        endif
        if abilityId == 'A04V' and udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(u))] == 1 then
            call WanBuff(uc, ut, 3)
        endif
        if abilityId == 'A04O' and udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(u))] == 1 then
            set realDamage = realDamage * 8
        endif
        call dealDamage(uc, ut, realDamage)
    endif
    set uc = null
endfunction
function calculateTotalDamage takes unit u, real damage returns nothing
    local integer t = getTowerInstance(u)
    local integer i = LoadInteger(YDHT, GetHandleId(u), DAMAGE_UNIT_KEY)
    if t != 0 then
        if i == 0 then
            set i = damageCounter + 1
            set damageCounter = damageCounter + 1
            call SaveInteger(YDHT, GetHandleId(u), DAMAGE_UNIT_KEY, i)
            call SaveUnitHandle(YDHT, DAMAGE_UNIT_KEY, i, u)
        endif
        call SaveReal(YDHT, DAMAGE_KEY, i, LoadReal(YDHT, DAMAGE_KEY, i) + damage)
    endif
endfunction
function UnitDamage_Conditions takes nothing returns boolean
    local unit u = GetEventDamageSource()
    local unit uc = null
    local unit ut = GetTriggerUnit()
    local player p = GetOwningPlayer(u)
    local integer i = 1 + GetPlayerId(p)
    local location loc = GetUnitLoc(u)
    local location loc2 = GetUnitLoc(ut)
    local real damage = GetEventDamage()
    local trigger t = null
    if UnitHasBuffBJ(ut, 'Bslo') == false and udg_jiuyang[i] >= 1 and GetUnitTypeId(u) == 'e00E' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc2, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A039')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A039', GetUnitAbilityLevel(u, 'A02P'))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852075, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 3.)
    endif
    call dealRealDamage(damage, 1.11, 'A002', u, ut, 80)
    call dealRealDamage(damage, 1.12, 'A007', u, ut, 1000)
    call dealRealDamage(damage, 1.13, 'A01T', u, ut, 6000)
    call dealRealDamage(damage, 1.14, 'A00F', u, ut, 800)
    call dealRealDamage(damage, 1.15, 'A009', u, ut, 300)
    call dealRealDamage(damage, 1.2, 'A00L', u, ut, 100)
    call dealRealDamage(damage, 1.21, 'A00N', u, ut, 500)
    call dealRealDamage(damage, 1.22, 'A00X', u, ut, 250)
    call dealRealDamage(damage, 1.3, 'A022', u, ut, 100)
    call dealRealDamage(damage, 1.31, 'A01R', u, ut, 20)
    call dealRealDamage(damage, 1.32, 'A01R', u, ut, 200)
    call dealRealDamage(damage, 1.34, 'A02C', u, ut, 200)
    call dealRealDamage(damage, 1.34, 'A02E', u, ut, 200)
    call dealRealDamage(damage, 1.35, 'A02D', u, ut, 250)
    call dealRealDamage(damage, 1.35, 'A02E', u, ut, 250)
    call dealRealDamage(damage, 1.36, 'A02D', u, ut, 1000)
    call dealRealDamage(damage, 1.36, 'A02E', u, ut, 1000)
    call dealRealDamage(damage, 1.37, 'A02F', u, ut, 5000)
    call dealRealDamage(damage, 1.4, 'A02T', u, ut, 1000)
    call dealRealDamage(damage, 1.41, 'A02I', u, ut, 500)
    call dealRealDamage(damage, 1.43, 'A02R', u, ut, 10000)
    call dealRealDamage(damage, 1.44, 'A02M', u, ut, 400)
    call dealRealDamage(damage, 1.45, 'A02N', u, ut, 2000)
    call dealRealDamage(damage, 1.5, 'A04O', u, ut, 200)
    call dealRealDamage(damage, 1.51, 'A04P', u, ut, 1000)
    call dealRealDamage(damage, 1.52, 'A04W', u, ut, 400)
    call dealRealDamage(damage, 1.53, 'A04V', u, ut, 6000)
    call dealRealDamage(damage, 1.54, 'A04S', u, ut, 2000)
    call dealRealDamage(damage, 1.55, 'A04Y', u, ut, 6000)
    call dealRealDamage(damage, 1.56, 'A04U', u, ut, 4000)
    call dealRealDamage(damage, 2., 'A049', u, ut, 2000)
    if GetUnitTypeId(u) == 'e00E' then
        set uc = LoadUnitHandle(YDHT, GetHandleId(u), DUMMY_OWNER_KEY)
        call dealDamage(uc, ut, 2000 * GetUnitAbilityLevel(uc, 'A02Q') * GetUnitAbilityLevel(uc, 'A02Q'))
    endif
    if GetUnitTypeId(u) == 'e00I' then
        set uc = LoadUnitHandle(YDHT, GetHandleId(u), DUMMY_OWNER_KEY)
        call dealDamage(uc, ut, 50 * GetUnitAbilityLevel(uc, 'A03L') * GetUnitAbilityLevel(uc, 'A03L'))
    endif
    call calculateTotalDamage(u, damage)
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set t = null
    set u = null
    set ut = null
    set uc = null
    set loc = null
    set loc2 = null
    set p = null
    return false
endfunction
function UnitDamage takes nothing returns nothing
    local trigger t = CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger(t)
    call TriggerAddCondition(t, Condition(function UnitDamage_Conditions))
    set t = null
endfunction
