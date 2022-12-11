
function dealRealDamage takes real damage, real smallDamage, integer abilityId, unit u, unit ut, real w1, real w2, integer whichAttr returns nothing
    local unit uc = LoadUnitHandle(YDHT, GetHandleId(u), DUMMY_OWNER_KEY)
    local integer level = GetUnitAbilityLevel(uc, abilityId)
    local real baseDamage = 0
    local real realDamage = 0
    local real attack = 0
    local integer attr = 0 

    if uc == null then
        set uc = u
    endif
    set attack = GetUnitState(uc, ConvertUnitState(0x15))
    // 主属性
    if whichAttr == 1 then
        set attr = GetHeroStr(uc, true)
    elseif whichAttr == 2 then
        set attr = GetHeroAgi(uc, true)
    elseif whichAttr == 3 then
        set attr = GetHeroInt(uc, true)
    elseif whichAttr == 4 then
        set attr = GetHeroStr(uc, true) + GetHeroAgi(uc, true) + GetHeroInt(uc, true)
    endif

    // 基础伤害
    set baseDamage = (attack + w1 * attr ) * w2
    set level = GetUnitAbilityLevel(uc, abilityId)
    set realDamage = baseDamage * level * level
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
    local real attack
    local integer attr
    local real baseDamage
    if UnitHasBuffBJ(ut, 'Bslo') == false and udg_jiuyang[i] >= 1 and GetUnitTypeId(u) == 'e00E' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc2, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A039')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A039', GetUnitAbilityLevel(u, 'A02P'))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852075, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 3.)
    endif

    // 达摩棍法 门派技能 (攻击 + 10 * 智力 ) * 3.2 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.11, 'A002', u, ut, 10, 3.2, ATTR_INT)

    // 拈花擒拿手 (攻击 + 10 * 敏捷 ) * 10 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.12, 'A007', u, ut, 10, 10, ATTR_AGI)

    // 大力金刚指 (攻击 + 10 * 力量 ) * 60 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.13, 'A01T', u, ut, 10, 60, ATTR_STR)

    // 达摩八法 (攻击 + 10 * 智力 ) * 8 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.14, 'A00F', u, ut, 10, 8, ATTR_INT)

    // 龙象般若功 (攻击 + 10 * 智力 ) * 12 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.15, 'A009', u, ut, 10, 12, ATTR_INT)

    // 太极剑法 (攻击 + 10 * 全属性 ) * 0.2 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.2, 'A00L', u, ut, 10, 0.2, ATTR_ALL)

    // 铁画银钩 (攻击 + 10 * 敏捷 ) * 20 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.21, 'A00N', u, ut, 10, 20, ATTR_AGI)

    // 虎爪绝户手 (攻击 + 10 * 力量 ) * 2.5 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.22, 'A00X', u, ut, 10, 2.5, ATTR_STR)

    // 天罡指穴法 (攻击 + 10 * 智力 ) * 1 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.3, 'A022', u, ut, 10, 1, ATTR_INT)

    // 峨眉入门剑法 (攻击 + 10 * 敏捷 ) * 0.2 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.31, 'A01R', u, ut, 10, 0.2, ATTR_AGI)
    call dealRealDamage(damage, 1.32, 'A01R', u, ut, 10, 2, ATTR_AGI)

    // 灭剑 (攻击 + 10 * 力量 ) * 2 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.34, 'A02C', u, ut, 10, 2, ATTR_STR)

    // 灭绝剑法 (攻击 + 10 * 力量 ) * 2 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.34, 'A02E', u, ut, 10, 2, ATTR_STR)

    // 绝剑 (攻击 + 10 * 敏捷 ) * 2.5 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.35, 'A02D', u, ut, 10, 2.5, ATTR_AGI)

    // 灭绝剑法 (攻击 + 10 * 敏捷 ) * 2.5 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.35, 'A02E', u, ut, 10, 2.5, ATTR_AGI)

    // 绝剑 (攻击 + 10 * 敏捷 ) * 10 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.36, 'A02D', u, ut, 10, 10, ATTR_AGI)

    // 灭绝剑法 (攻击 + 10 * 敏捷 ) * 10 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.36, 'A02E', u, ut, 10, 10, ATTR_AGI)

    // 截手九式 (攻击 + 10 * 智力 ) * 50 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.37, 'A02F', u, ut, 10, 50, ATTR_INT)

    // 太祖棍法 (攻击 + 10 * 全属性 ) * 1 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.4, 'A02T', u, ut, 10, 1, ATTR_ALL)

    // 太祖长拳 (攻击 + 10 * 力量 ) * 5 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.41, 'A02I', u, ut, 10, 5, ATTR_STR)

    // 铜锤手 (攻击 + 10 * 力量 ) * 100 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.43, 'A02R', u, ut, 10, 100, ATTR_STR)

    // 莲花掌 (攻击 + 10 * 智力 ) * 4 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.44, 'A02M', u, ut, 10, 4, ATTR_INT)

    // 青竹镖 (攻击 + 10 * 敏捷 ) * 20 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.45, 'A02N', u, ut, 10, 20, ATTR_AGI)

    // 同归剑法 (攻击 + 10 * 全属性 ) * 0.75 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.5, 'A04O', u, ut, 10, 0.75, ATTR_ALL)

    // 昊天掌 (攻击 + 10 * 智力 ) * 10 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.51, 'A04P', u, ut, 10, 10, ATTR_INT)

    // 先天功 (攻击 + 10 * 力量 ) * 4 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.52, 'A04W', u, ut, 10, 4, ATTR_STR)

    // 一气化三清 (攻击 + 10 * 智力 ) * 60 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.53, 'A04V', u, ut, 10, 60, ATTR_INT)

    // 后发先至 (攻击 + 10 * 敏捷 ) * 20 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.54, 'A04S', u, ut, 10, 20, ATTR_AGI)

    // 三花聚顶 (攻击 + 10 * 敏捷 ) * 60 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.55, 'A04Y', u, ut, 10, 60, ATTR_AGI)

    // 东方第一剑 (攻击 + 10 * 力量 ) * 40 * 技能等级 * 技能等级
    call dealRealDamage(damage, 1.56, 'A04U', u, ut, 10, 40, ATTR_STR)

    // 玄冰咒 (攻击 + 10 * 智力 ) * 20 * 技能等级 * 技能等级
    call dealRealDamage(damage, 2., 'A049', u, ut, 10, 20, ATTR_INT)
    
    // 六合刀法 (攻击 + 10 * 敏捷 ) * 20 * 技能等级 * 技能等级
    if GetUnitTypeId(u) == 'e00E' then
        set uc = LoadUnitHandle(YDHT, GetHandleId(u), DUMMY_OWNER_KEY)
        set attack = GetUnitState(uc, ConvertUnitState(0x15))
        set attr = GetHeroAgi(uc, true)

        // 基础伤害
        set baseDamage = (attack + 10 * attr ) * 20
        call dealDamage(uc, ut, baseDamage * GetUnitAbilityLevel(uc, 'A02Q') * GetUnitAbilityLevel(uc, 'A02Q'))
    endif

    // 四象掌 (攻击 + 10 * 全属性 ) * 技能等级 * 技能等级
    if GetUnitTypeId(u) == 'e00I' then
        set uc = LoadUnitHandle(YDHT, GetHandleId(u), DUMMY_OWNER_KEY)
        set attack = GetUnitState(uc, ConvertUnitState(0x15))
        set attr = GetHeroInt(uc, true) + GetHeroStr(uc, true) + GetHeroAgi(uc, true)
        
        // 基础伤害
        set baseDamage = (attack + 10 * attr ) 
        call dealDamage(uc, ut, baseDamage * GetUnitAbilityLevel(uc, 'A03L') * GetUnitAbilityLevel(uc, 'A03L'))
    endif
    // call calculateTotalDamage(u, damage)
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
