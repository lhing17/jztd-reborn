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
        if abilityId == $4130304E and level == 4 then
            set realDamage = realDamage * 2.5
        endif
        if abilityId == $4130324D then
            if level == 2 then
                set realDamage = 3000
            elseif level == 3 then
                set realDamage = 20000
            endif
        endif
        if abilityId == $41303456 and udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(u))] == 1 then
            call WanBuff(uc, ut, 3)
        endif
        if abilityId == $4130344F and udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(u))] == 1 then
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
    if UnitHasBuffBJ(ut, $42736C6F) == false and udg_jiuyang[i] >= 1 and GetUnitTypeId(u) == $65303045 then
        call CreateNUnitsAtLoc(1, $65303039, p, loc2, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, $41303339)
        call SetUnitAbilityLevel(bj_lastCreatedUnit, $41303339, GetUnitAbilityLevel(u, $41303250))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852075, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, $42487765, 3.)
    endif
    call dealRealDamage(damage, 1.11, $41303032, u, ut, 80)
    call dealRealDamage(damage, 1.12, $41303037, u, ut, 1000)
    call dealRealDamage(damage, 1.13, $41303154, u, ut, 6000)
    call dealRealDamage(damage, 1.14, $41303046, u, ut, 800)
    call dealRealDamage(damage, 1.15, $41303039, u, ut, 300)
    call dealRealDamage(damage, 1.2, $4130304C, u, ut, 100)
    call dealRealDamage(damage, 1.21, $4130304E, u, ut, 500)
    call dealRealDamage(damage, 1.22, $41303058, u, ut, 250)
    call dealRealDamage(damage, 1.3, $41303232, u, ut, 100)
    call dealRealDamage(damage, 1.31, $41303152, u, ut, 20)
    call dealRealDamage(damage, 1.32, $41303152, u, ut, 200)
    call dealRealDamage(damage, 1.34, $41303243, u, ut, 200)
    call dealRealDamage(damage, 1.34, $41303245, u, ut, 200)
    call dealRealDamage(damage, 1.35, $41303244, u, ut, 250)
    call dealRealDamage(damage, 1.35, $41303245, u, ut, 250)
    call dealRealDamage(damage, 1.36, $41303244, u, ut, 1000)
    call dealRealDamage(damage, 1.36, $41303245, u, ut, 1000)
    call dealRealDamage(damage, 1.37, $41303246, u, ut, 5000)
    call dealRealDamage(damage, 1.4, $41303254, u, ut, 1000)
    call dealRealDamage(damage, 1.41, $41303249, u, ut, 500)
    call dealRealDamage(damage, 1.43, $41303252, u, ut, 10000)
    call dealRealDamage(damage, 1.44, $4130324D, u, ut, 400)
    call dealRealDamage(damage, 1.45, $4130324E, u, ut, 2000)
    call dealRealDamage(damage, 1.5, $4130344F, u, ut, 200)
    call dealRealDamage(damage, 1.51, $41303450, u, ut, 1000)
    call dealRealDamage(damage, 1.52, $41303457, u, ut, 400)
    call dealRealDamage(damage, 1.53, $41303456, u, ut, 6000)
    call dealRealDamage(damage, 1.54, $41303453, u, ut, 2000)
    call dealRealDamage(damage, 1.55, $41303459, u, ut, 6000)
    call dealRealDamage(damage, 1.56, $41303455, u, ut, 4000)
    call dealRealDamage(damage, 2., $41303439, u, ut, 2000)
    if GetUnitTypeId(u) == $65303045 then
        set uc = LoadUnitHandle(YDHT, GetHandleId(u), DUMMY_OWNER_KEY)
        call dealDamage(uc, ut, 2000 * GetUnitAbilityLevel(uc, $41303251) * GetUnitAbilityLevel(uc, $41303251))
    endif
    if GetUnitTypeId(u) == $65303049 then
        set uc = LoadUnitHandle(YDHT, GetHandleId(u), DUMMY_OWNER_KEY)
        call dealDamage(uc, ut, 50 * GetUnitAbilityLevel(uc, $4130334C) * GetUnitAbilityLevel(uc, $4130334C))
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
