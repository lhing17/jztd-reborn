
function sc__Frame_onDestroy takes integer this returns nothing
    if s__Frame_id[this] != 0 then
        call DzDestroyFrame(s__Frame_id[this])
    endif
    set s__Frame_id[this] = 0
endfunction
function s__Frame__allocate takes nothing returns integer
    local integer this = si__Frame_F
    if this != 0 then
        set si__Frame_F = si__Frame_V[this]
    else
        set si__Frame_I = si__Frame_I + 1
        set this = si__Frame_I
    endif
    if this > 8190 then
        return 0
    endif
    set s__Frame_id[this] = 0
    set s__Frame_isShow[this] = true
    set s__Frame_isEnable[this] = true
    set si__Frame_V[this] =- 1
    return this
endfunction
function sc__Frame_deallocate takes integer this returns nothing
    if this == null then
        return
    elseif si__Frame_V[this] !=- 1 then
        return
    endif
    set f__arg_this = this
    call TriggerEvaluate(st__Frame_onDestroy)
    set si__Frame_V[this] = si__Frame_F
    set si__Frame_F = this
endfunction
function sc__Tower_setAbility takes integer this returns nothing
    local integer i = 0
    local integer tower_id = GetUnitTypeId(s__Tower_u[this])
    loop
        exitwhen i >= 11
        if LoadInteger(YDHT, tower_id * 2, i) != 0 then
            if GetUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i)) == 0 then
                call UnitAddAbility(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i))
            endif
            call SetUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i), LoadInteger(YDHT, tower_id * 3, i))
            call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i, LoadInteger(YDHT, tower_id * 2, i))
            call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i, LoadInteger(YDHT, tower_id * 3, i))
            if LoadInteger(YDHT, tower_id * 2, i) == $41303052 then
                call UnitRemoveAbility(s__Tower_u[this], $41303051)
                call UnitAddAbility(s__Tower_u[this], $41303051)
                call SetPlayerAbilityAvailableBJ(false, $41303051, GetOwningPlayer(s__Tower_u[this]))
                call SetUnitAbilityLevel(s__Tower_u[this], $4130304F, LoadInteger(YDHT, tower_id * 3, i))
                call SetUnitAbilityLevel(s__Tower_u[this], $41303050, LoadInteger(YDHT, tower_id * 3, i))
            endif
            if LoadInteger(YDHT, tower_id * 2, i) == $41303039 then
                call PauseUnit(s__Tower_u[this], true)
                call PauseUnit(s__Tower_u[this], false)
            endif
        endif
        set i = i + 1
    endloop
endfunction
function sc__Tower_setItemNum takes integer this, integer item_num returns nothing
    if item_num > 0 then
        call UnitAddAbility(s__Tower_u[this], $41303131)
        call SetUnitAbilityLevel(s__Tower_u[this], $41303131, item_num)
        call UnitMakeAbilityPermanent(s__Tower_u[this], true, $41303131)
    endif
endfunction
function s__Tower__allocate takes nothing returns integer
    local integer this = si__Tower_F
    if this != 0 then
        set si__Tower_F = si__Tower_V[this]
    else
        set si__Tower_I = si__Tower_I + 1
        set this = si__Tower_I
    endif
    if this > 8190 then
        return 0
    endif
    set s__Tower_u[this] = null
    set si__Tower_V[this] =- 1
    return this
endfunction
function s__Tower_deallocate takes integer this returns nothing
    if this == null then
        return
    elseif si__Tower_V[this] !=- 1 then
        return
    endif
    set si__Tower_V[this] = si__Tower_F
    set si__Tower_F = this
endfunction
function sc__YDWEStringFormula___Sorting_onDestroy takes integer this returns nothing
    local integer i = 0
    loop
        exitwhen i == s___YDWEStringFormula___Sorting_stack_size
        set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + i] = 0
        set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + i] = 0
        set i = i + 1
    endloop
    set s__YDWEStringFormula___Sorting_char[this] = ""
endfunction
function s__YDWEStringFormula___Sorting__allocate takes nothing returns integer
    local integer this = si__YDWEStringFormula___Sorting_F
    if this != 0 then
        set si__YDWEStringFormula___Sorting_F = si__YDWEStringFormula___Sorting_V[this]
    else
        set si__YDWEStringFormula___Sorting_I = si__YDWEStringFormula___Sorting_I + 1
        set this = si__YDWEStringFormula___Sorting_I
    endif
    if this > 1022 then
        return 0
    endif
    set s__YDWEStringFormula___Sorting_stack[this] = (this - 1) * 8
    set s__YDWEStringFormula___Sorting_count[this] = (this - 1) * 8
    set s__YDWEStringFormula___Sorting_total[this] = 7
    set si__YDWEStringFormula___Sorting_V[this] =- 1
    return this
endfunction
function sc__YDWEStringFormula___Sorting_deallocate takes integer this returns nothing
    if this == null then
        return
    elseif si__YDWEStringFormula___Sorting_V[this] !=- 1 then
        return
    endif
    set f__arg_this = this
    call TriggerEvaluate(st__YDWEStringFormula___Sorting_onDestroy)
    set si__YDWEStringFormula___Sorting_V[this] = si__YDWEStringFormula___Sorting_F
    set si__YDWEStringFormula___Sorting_F = this
endfunction
function sc__YDWEStringFormula___Inventory_onDestroy takes integer this returns nothing
    set f__arg_this = this
    call TriggerEvaluate(st__YDWEStringFormula___Inventory_onDestroy[3])
endfunction
function s__YDWEStringFormula___Inventory__allocate takes nothing returns integer
    local integer this = si__YDWEStringFormula___Inventory_F
    if this != 0 then
        set si__YDWEStringFormula___Inventory_F = si__YDWEStringFormula___Inventory_V[this]
    else
        set si__YDWEStringFormula___Inventory_I = si__YDWEStringFormula___Inventory_I + 1
        set this = si__YDWEStringFormula___Inventory_I
    endif
    if this > 8190 then
        return 0
    endif
    set si__YDWEStringFormula___Inventory_type[this] = 3
    set si__YDWEStringFormula___Inventory_V[this] =- 1
    return this
endfunction
function sc__YDWEStringFormula___Inventory_deallocate takes integer this returns nothing
    if this == null then
        return
    elseif si__YDWEStringFormula___Inventory_V[this] !=- 1 then
        return
    endif
    set f__arg_this = this
    call TriggerEvaluate(st__YDWEStringFormula___Inventory_onDestroy[si__YDWEStringFormula___Inventory_type[this]])
    set si__YDWEStringFormula___Inventory_V[this] = si__YDWEStringFormula___Inventory_F
    set si__YDWEStringFormula___Inventory_F = this
endfunction
function s__YDWEStringFormula___StringTable__allocate takes nothing returns integer
    local integer this = s__YDWEStringFormula___Inventory__allocate()
    local integer kthis
    if this == 0 then
        return 0
    endif
    set si__YDWEStringFormula___Inventory_type[this] = 4
    set kthis = this
    return this
endfunction
function sc___prototype25_execute takes integer i, unit a1, real a2 returns nothing
    set f__arg_unit1 = a1
    set f__arg_real1 = a2
    call TriggerExecute(st___prototype25[i])
endfunction
function sc___prototype25_evaluate takes integer i, unit a1, real a2 returns nothing
    set f__arg_unit1 = a1
    set f__arg_real1 = a2
    call TriggerEvaluate(st___prototype25[i])
endfunction
function h__SetUnitMoveSpeed takes unit a0, real a1 returns nothing
    call sc___prototype25_evaluate(1, a0, a1)
    call SetUnitMoveSpeed(a0, a1)
endfunction

function s__Frame_numadd takes integer this returns nothing
    set s__Frame_num = s__Frame_num + 1
endfunction
function s__Frame_getFrame takes integer id returns integer
    local integer f = LoadInteger(s__Frame_HT, FRAME_ID, id)
    if f == 0 then
        set f = s__Frame__allocate()
        set s__Frame_id[f] = id
        call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    endif
    return f
endfunction
function s__Frame_new takes string name, integer parent returns integer
    local integer f = s__Frame__allocate()
    set s__Frame_id[f] = DzCreateFrame(name, s__Frame_id[parent], 0)
    call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
endfunction
function s__Frame_newImage0 takes integer parent returns integer
    local integer f = s__Frame__allocate()
    call s__Frame_numadd(f)
    set s__Frame_id[f] = DzCreateFrameByTagName("BACKDROP", "Frame_Image" + I2S(s__Frame_num), s__Frame_id[parent], "ImageTemplate", 0)
    call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
endfunction
function s__Frame_newImage1 takes integer parent, string path, real w, real h returns integer
    local integer f = s__Frame__allocate()
    call s__Frame_numadd(f)
    set s__Frame_id[f] = DzCreateFrameByTagName("BACKDROP", "Frame_Image" + I2S(s__Frame_num), s__Frame_id[parent], "ImageTemplate", 0)
    if path != null then
        call DzFrameSetTexture(s__Frame_id[f], path, 0)
    endif
    call DzFrameSetSize(s__Frame_id[f], w, h)
    call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
endfunction
function s__Frame_newSprite takes integer parent, string path returns integer
    local integer f = s__Frame__allocate()
    call s__Frame_numadd(f)
    set s__Frame_id[f] = DzCreateFrameByTagName("SPRITE", "Frame_Sprite" + I2S(s__Frame_num), s__Frame_id[parent], "sprite", 0)
    call DzFrameSetModel(s__Frame_id[f], path, 0, 0)
    call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
endfunction
function s__Frame_newTips takes integer parent, string path, real w, real h returns integer
    local integer f = s__Frame__allocate()
    call s__Frame_numadd(f)
    set s__Frame_id[f] = DzCreateFrameByTagName("BACKDROP", "Frame_Image" + I2S(s__Frame_num), s__Frame_id[parent], path, 0)
    call DzFrameSetSize(s__Frame_id[f], w, h)
    call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
endfunction
function s__Frame_newText0 takes integer parent, string ff returns integer
    local integer f = s__Frame__allocate()
    call s__Frame_numadd(f)
    set s__Frame_id[f] = DzCreateFrameByTagName("TEXT", "Frame_Text" + I2S(s__Frame_num), s__Frame_id[parent], ff, 0)
    call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
endfunction
function s__Frame_newText1 takes integer parent, string str, string ff returns integer
    local integer f = s__Frame__allocate()
    call s__Frame_numadd(f)
    set s__Frame_id[f] = DzCreateFrameByTagName("TEXT", "Frame_Text" + I2S(s__Frame_num), s__Frame_id[parent], ff, 0)
    call DzFrameSetText(s__Frame_id[f], str)
    call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
endfunction
function s__Frame_newButton0 takes integer parent returns integer
    local integer f = s__Frame__allocate()
    call s__Frame_numadd(f)
    set s__Frame_id[f] = DzCreateFrameByTagName("BUTTON", "Frame_Button" + I2S(s__Frame_num), s__Frame_id[parent], "ButtonTemplate", 0)
    call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
endfunction
function s__Frame_newButton1 takes integer parent, real w, real h returns integer
    local integer f = s__Frame__allocate()
    call s__Frame_numadd(f)
    set s__Frame_id[f] = DzCreateFrameByTagName("BUTTON", "Frame_Button" + I2S(s__Frame_num), s__Frame_id[parent], "ButtonTemplate", 0)
    call DzFrameSetSize(s__Frame_id[f], w, h)
    call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
endfunction
function s__Frame_newButtonEmpty0 takes integer parent returns integer
    local integer f = s__Frame__allocate()
    call s__Frame_numadd(f)
    set s__Frame_id[f] = DzCreateFrameByTagName("BUTTON", "Frame_ButtonEmpty" + I2S(s__Frame_num), s__Frame_id[parent], "ButtonTemplateEmpty", 0)
    call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
endfunction
function s__Frame_newButtonEmpty1 takes integer parent, real w, real h returns integer
    local integer f = s__Frame__allocate()
    call s__Frame_numadd(f)
    set s__Frame_id[f] = DzCreateFrameByTagName("BUTTON", "Frame_ButtonEmpty" + I2S(s__Frame_num), s__Frame_id[parent], "ButtonTemplateEmpty", 0)
    call DzFrameSetSize(s__Frame_id[f], w, h)
    call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
endfunction
function s__Frame_newCloseButton takes integer parent returns integer
    local integer f = s__Frame__allocate()
    call s__Frame_numadd(f)
    set s__Frame_id[f] = DzCreateFrameByTagName("BUTTON", "Frame_ButtonEmpty" + I2S(s__Frame_num), s__Frame_id[parent], "icon1", 0)
    call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
    return f
endfunction
function s__Frame_setScale takes integer this, real r returns nothing
    call DzFrameSetScale(s__Frame_id[this], r)
endfunction
function s__Frame_setColor takes integer this, integer c returns nothing
    call DzFrameSetTextColor(s__Frame_id[this], c)
endfunction
function s__Frame_setSize takes integer this, real w, real h returns nothing
    call DzFrameSetSize(s__Frame_id[this], w, h)
endfunction
function s__Frame_setTexture takes integer this, string path returns nothing
    call DzFrameSetTexture(s__Frame_id[this], path, 0)
endfunction
function s__Frame_setText takes integer this, string str returns nothing
    call DzFrameSetText(s__Frame_id[this], str)
endfunction
function s__Frame_setPoint takes integer this, integer a1, integer tar, integer a2, real x, real y returns nothing
    call DzFrameSetPoint(s__Frame_id[this], a1, s__Frame_id[tar], a2, x, y)
endfunction
function s__Frame_setColor255 takes integer this, integer r, integer g, integer b returns nothing
    call DzFrameSetTextColor(s__Frame_id[this], DzGetColor(255, r, g, b))
endfunction
function s__Frame_setAllPoints takes integer this, integer tar returns nothing
    call DzFrameSetAllPoints(s__Frame_id[this], s__Frame_id[tar])
endfunction
function s__Frame_clearAllPoints takes integer this returns nothing
    call DzFrameClearAllPoints(s__Frame_id[this])
endfunction
function s__Frame_regEvent takes integer this, integer i, code func returns nothing
    call DzFrameSetScriptByCode(s__Frame_id[this], i, func, false)
endfunction
function s__Frame_regWheelEvent takes integer this, code func returns nothing
    call DzFrameSetScriptByCode(s__Frame_id[this], 6, func, false)
endfunction
function s__Frame_regClickEvent takes integer this, code func returns nothing
    call DzFrameSetScriptByCode(s__Frame_id[this], 1, func, false)
endfunction
function s__Frame_hide takes integer this returns nothing
    call DzFrameShow(s__Frame_id[this], false)
    set s__Frame_isShow[this] = false
endfunction
function s__Frame_show takes integer this returns nothing
    call DzFrameShow(s__Frame_id[this], true)
    set s__Frame_isShow[this] = true
endfunction
function s__Frame_enable takes integer this returns nothing
    call DzFrameSetEnable(s__Frame_id[this], true)
    set s__Frame_isEnable[this] = true
endfunction
function s__Frame_disable takes integer this returns nothing
    call DzFrameSetEnable(s__Frame_id[this], false)
    set s__Frame_isEnable[this] = false
endfunction
function s__Frame_setAlpha takes integer this, integer a returns nothing
    call DzFrameSetAlpha(s__Frame_id[this], a)
endfunction
function s__Frame_onDestroy takes integer this returns nothing
    if s__Frame_id[this] != 0 then
        call DzDestroyFrame(s__Frame_id[this])
    endif
    set s__Frame_id[this] = 0
endfunction
function s__Frame_deallocate takes integer this returns nothing
    if this == null then
        return
    elseif si__Frame_V[this] !=- 1 then
        return
    endif
    call s__Frame_onDestroy(this)
    set si__Frame_V[this] = si__Frame_F
    set si__Frame_F = this
endfunction
function FrameLibrary___init takes nothing returns nothing
    local integer f = DzFrameGetTooltip()
    set GUI = s__Frame_getFrame(DzGetGameUI())
    call DzFrameClearAllPoints(f)
    call DzFrameSetPoint(f, 7, DzGetGameUI(), 7, 0, .14)
endfunction
function s__ModSpeed_destroy takes integer this returns nothing
    set s__ModSpeed_speed[this] = 0.
    if s__ModSpeed_next[this] != 0 then
        set s__ModSpeed_prev[s__ModSpeed_next[this]] = s__ModSpeed_prev[this]
    endif
    set s__ModSpeed_next[s__ModSpeed_prev[this]] = s__ModSpeed_next[this]
    set s__ModSpeed_prev[this] = s__ModSpeed_prev[0]
    set s__ModSpeed_prev[0] = this
    if s__ModSpeed_next[0] == 0 then
        call PauseTimer(s__ModSpeed_tm)
    endif
endfunction
function s__ModSpeed__get_moveFilter takes integer this returns boolean
    return GetUnitAbilityLevel(s__ModSpeed_u[this], $4253544E) < 1 and GetUnitAbilityLevel(s__ModSpeed_u[this], $42505345) < 1 and GetUnitMoveSpeed(s__ModSpeed_u[this]) > 521. and not IsUnitPaused(s__ModSpeed_u[this]) and not s__ModSpeed_lead[this]
endfunction
function s__ModSpeed_move takes integer this returns nothing
    if not s__ModSpeed__get_moveFilter(this) then
        return
    endif
    set s__ModSpeed_x = GetUnitX(s__ModSpeed_u[this])
    set s__ModSpeed_y = GetUnitY(s__ModSpeed_u[this])
    set s__ModSpeed_dx = s__ModSpeed_x - s__ModSpeed_lastX[this]
    set s__ModSpeed_dy = s__ModSpeed_y - s__ModSpeed_lastY[this]
    set s__ModSpeed_lastX[this] = s__ModSpeed_x
    set s__ModSpeed_lastY[this] = s__ModSpeed_y
    set s__ModSpeed_dist = SquareRoot(s__ModSpeed_dx * s__ModSpeed_dx + s__ModSpeed_dy * s__ModSpeed_dy) / MaxSpeed___PERIOD
    if s__ModSpeed_dist >= MaxSpeed___MIN_SPEED and s__ModSpeed_dist <= MaxSpeed___MAX_SPEED then
        set s__ModSpeed_rate = (s__ModSpeed_speed[this] - 522.) / s__ModSpeed_dist
        set s__ModSpeed_lastX[this] = s__ModSpeed_x + s__ModSpeed_dx * s__ModSpeed_rate
        set s__ModSpeed_lastY[this] = s__ModSpeed_y + s__ModSpeed_dy * s__ModSpeed_rate
        call SetUnitX(s__ModSpeed_u[this], s__ModSpeed_lastX[this])
        call SetUnitY(s__ModSpeed_u[this], s__ModSpeed_lastY[this])
    endif
endfunction
function s__ModSpeed_iterate takes nothing returns nothing
    local integer this = 0
    loop
        set this = s__ModSpeed_next[this]
        exitwhen this == 0
        if GetWidgetLife(s__ModSpeed_u[this]) < .405 then
            call s__ModSpeed_destroy(this)
        else
            call s__ModSpeed_move(this)
        endif
    endloop
endfunction
function s__ModSpeed_getInstance takes unit u returns integer
    local integer this = 0
    loop
        set this = s__ModSpeed_next[this]
        exitwhen this == 0
        if s__ModSpeed_u[this] == u then
            return this
        endif
    endloop
    return 0
endfunction
function s__ModSpeed_setUnitLed takes unit u, boolean b returns nothing
    local integer this = s__ModSpeed_getInstance(u)
    if this > 0 then
        set s__ModSpeed_lead[this] = b
    endif
endfunction
function s__ModSpeed_getSpeed takes unit u returns real
    local integer this = s__ModSpeed_getInstance(u)
    if this > 0 and GetUnitMoveSpeed(u) > 521. then
        return s__ModSpeed_speed[this]
    endif
    return GetUnitMoveSpeed(u)
endfunction
function s__ModSpeed_setSpeed takes unit u, real amount returns nothing
    local integer this
    if u == null or GetWidgetLife(u) < .405 then
        return
    endif
    set this = s__ModSpeed_getInstance(u)
    if amount < 523. then
        if this > 0 then
            call s__ModSpeed_destroy(this)
        endif
        return
    elseif this == 0 then
        if s__ModSpeed_prev[0] == 0 then
            set s__ModSpeed_instanceMaxCount = s__ModSpeed_instanceMaxCount + 1
            set this = s__ModSpeed_instanceMaxCount
        else
            set this = s__ModSpeed_prev[0]
            set s__ModSpeed_prev[0] = s__ModSpeed_prev[s__ModSpeed_prev[0]]
        endif
        if s__ModSpeed_next[0] == 0 then
            call TimerStart(s__ModSpeed_tm, MaxSpeed___PERIOD, true, function s__ModSpeed_iterate)
        else
            set s__ModSpeed_prev[s__ModSpeed_next[0]] = this
        endif
        set s__ModSpeed_next[this] = s__ModSpeed_next[0]
        set s__ModSpeed_next[0] = this
        set s__ModSpeed_prev[this] = 0
        set s__ModSpeed_u[this] = u
    endif
    set amount = RMinBJ(amount, MaxSpeed___MAX_SPEED)
    set s__ModSpeed_lastX[this] = GetUnitX(u)
    set s__ModSpeed_lastY[this] = GetUnitY(u)
    set s__ModSpeed_speed[this] = amount
endfunction
function SetUnitLed takes unit u, boolean b returns nothing
    call s__ModSpeed_setUnitLed(u, b)
endfunction
function GetUnitMoveSpeedEx takes unit u returns real
    return s__ModSpeed_getSpeed(u)
endfunction
function SetUnitMoveSpeedEx takes unit u, real speed returns nothing
    call s__ModSpeed_setSpeed(u, speed)
endfunction
function YDTriggerSaveLoadSystem___Init takes nothing returns nothing
    set YDHT = InitHashtable()
    set YDLOC = InitHashtable()
endfunction
function YDWEH2I takes handle h returns integer
    return GetHandleId(h)
endfunction
function YDWEFlushAllData takes nothing returns nothing
    call FlushParentHashtable(YDHT)
endfunction
function YDWEFlushMissionByInteger takes integer i returns nothing
    call FlushChildHashtable(YDHT, i)
endfunction
function YDWEFlushMissionByString takes string s returns nothing
    call FlushChildHashtable(YDHT, StringHash(s))
endfunction
function YDWEFlushStoredIntegerByInteger takes integer i, integer j returns nothing
    call RemoveSavedInteger(YDHT, i, j)
endfunction
function YDWEFlushStoredIntegerByString takes string s1, string s2 returns nothing
    call RemoveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
endfunction
function YDWEHaveSavedIntegerByInteger takes integer i, integer j returns boolean
    return HaveSavedInteger(YDHT, i, j)
endfunction
function YDWEHaveSavedIntegerByString takes string s1, string s2 returns boolean
    return HaveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
endfunction
function YDWESaveIntegerByInteger takes integer pTable, integer pKey, integer i returns nothing
    call SaveInteger(YDHT, pTable, pKey, i)
endfunction
function YDWESaveIntegerByString takes string pTable, string pKey, integer i returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), i)
endfunction
function YDWEGetIntegerByInteger takes integer pTable, integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction
function YDWEGetIntegerByString takes string pTable, string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveRealByInteger takes integer pTable, integer pKey, real r returns nothing
    call SaveReal(YDHT, pTable, pKey, r)
endfunction
function YDWESaveRealByString takes string pTable, string pKey, real r returns nothing
    call SaveReal(YDHT, StringHash(pTable), StringHash(pKey), r)
endfunction
function YDWEGetRealByInteger takes integer pTable, integer pKey returns real
    return LoadReal(YDHT, pTable, pKey)
endfunction
function YDWEGetRealByString takes string pTable, string pKey returns real
    return LoadReal(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveStringByInteger takes integer pTable, integer pKey, string s returns nothing
    call SaveStr(YDHT, pTable, pKey, s)
endfunction
function YDWESaveStringByString takes string pTable, string pKey, string s returns nothing
    call SaveStr(YDHT, StringHash(pTable), StringHash(pKey), s)
endfunction
function YDWEGetStringByInteger takes integer pTable, integer pKey returns string
    return LoadStr(YDHT, pTable, pKey)
endfunction
function YDWEGetStringByString takes string pTable, string pKey returns string
    return LoadStr(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveBooleanByInteger takes integer pTable, integer pKey, boolean b returns nothing
    call SaveBoolean(YDHT, pTable, pKey, b)
endfunction
function YDWESaveBooleanByString takes string pTable, string pKey, boolean b returns nothing
    call SaveBoolean(YDHT, StringHash(pTable), StringHash(pKey), b)
endfunction
function YDWEGetBooleanByInteger takes integer pTable, integer pKey returns boolean
    return LoadBoolean(YDHT, pTable, pKey)
endfunction
function YDWEGetBooleanByString takes string pTable, string pKey returns boolean
    return LoadBoolean(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveUnitByInteger takes integer pTable, integer pKey, unit u returns nothing
    call SaveUnitHandle(YDHT, pTable, pKey, u)
endfunction
function YDWESaveUnitByString takes string pTable, string pKey, unit u returns nothing
    call SaveUnitHandle(YDHT, StringHash(pTable), StringHash(pKey), u)
endfunction
function YDWEGetUnitByInteger takes integer pTable, integer pKey returns unit
    return LoadUnitHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetUnitByString takes string pTable, string pKey returns unit
    return LoadUnitHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveUnitIDByInteger takes integer pTable, integer pKey, integer uid returns nothing
    call SaveInteger(YDHT, pTable, pKey, uid)
endfunction
function YDWESaveUnitIDByString takes string pTable, string pKey, integer uid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), uid)
endfunction
function YDWEGetUnitIDByInteger takes integer pTable, integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction
function YDWEGetUnitIDByString takes string pTable, string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveAbilityIDByInteger takes integer pTable, integer pKey, integer abid returns nothing
    call SaveInteger(YDHT, pTable, pKey, abid)
endfunction
function YDWESaveAbilityIDByString takes string pTable, string pKey, integer abid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), abid)
endfunction
function YDWEGetAbilityIDByInteger takes integer pTable, integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction
function YDWEGetAbilityIDByString takes string pTable, string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESavePlayerByInteger takes integer pTable, integer pKey, player p returns nothing
    call SavePlayerHandle(YDHT, pTable, pKey, p)
endfunction
function YDWESavePlayerByString takes string pTable, string pKey, player p returns nothing
    call SavePlayerHandle(YDHT, StringHash(pTable), StringHash(pKey), p)
endfunction
function YDWEGetPlayerByInteger takes integer pTable, integer pKey returns player
    return LoadPlayerHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetPlayerByString takes string pTable, string pKey returns player
    return LoadPlayerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveItemByInteger takes integer pTable, integer pKey, item it returns nothing
    call SaveItemHandle(YDHT, pTable, pKey, it)
endfunction
function YDWESaveItemByString takes string pTable, string pKey, item it returns nothing
    call SaveItemHandle(YDHT, StringHash(pTable), StringHash(pKey), it)
endfunction
function YDWEGetItemByInteger takes integer pTable, integer pKey returns item
    return LoadItemHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetItemByString takes string pTable, string pKey returns item
    return LoadItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveItemIDByInteger takes integer pTable, integer pKey, integer itid returns nothing
    call SaveInteger(YDHT, pTable, pKey, itid)
endfunction
function YDWESaveItemIDByString takes string pTable, string pKey, integer itid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), itid)
endfunction
function YDWEGetItemIDByInteger takes integer pTable, integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction
function YDWEGetItemIDByString takes string pTable, string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveTimerByInteger takes integer pTable, integer pKey, timer t returns nothing
    call SaveTimerHandle(YDHT, pTable, pKey, t)
endfunction
function YDWESaveTimerByString takes string pTable, string pKey, timer t returns nothing
    call SaveTimerHandle(YDHT, StringHash(pTable), StringHash(pKey), t)
endfunction
function YDWEGetTimerByInteger takes integer pTable, integer pKey returns timer
    return LoadTimerHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTimerByString takes string pTable, string pKey returns timer
    return LoadTimerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveTriggerByInteger takes integer pTable, integer pKey, trigger trg returns nothing
    call SaveTriggerHandle(YDHT, pTable, pKey, trg)
endfunction
function YDWESaveTriggerByString takes string pTable, string pKey, trigger trg returns nothing
    call SaveTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey), trg)
endfunction
function YDWEGetTriggerByInteger takes integer pTable, integer pKey returns trigger
    return LoadTriggerHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTriggerByString takes string pTable, string pKey returns trigger
    return LoadTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveLocationByInteger takes integer pTable, integer pKey, location pt returns nothing
    call SaveLocationHandle(YDHT, pTable, pKey, pt)
endfunction
function YDWESaveLocationByString takes string pTable, string pKey, location pt returns nothing
    call SaveLocationHandle(YDHT, StringHash(pTable), StringHash(pKey), pt)
endfunction
function YDWEGetLocationByInteger takes integer pTable, integer pKey returns location
    return LoadLocationHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetLocationByString takes string pTable, string pKey returns location
    return LoadLocationHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveGroupByInteger takes integer pTable, integer pKey, group g returns nothing
    call SaveGroupHandle(YDHT, pTable, pKey, g)
endfunction
function YDWESaveGroupByString takes string pTable, string pKey, group g returns nothing
    call SaveGroupHandle(YDHT, StringHash(pTable), StringHash(pKey), g)
endfunction
function YDWEGetGroupByInteger takes integer pTable, integer pKey returns group
    return LoadGroupHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetGroupByString takes string pTable, string pKey returns group
    return LoadGroupHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveMultiboardByInteger takes integer pTable, integer pKey, multiboard m returns nothing
    call SaveMultiboardHandle(YDHT, pTable, pKey, m)
endfunction
function YDWESaveMultiboardByString takes string pTable, string pKey, multiboard m returns nothing
    call SaveMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey), m)
endfunction
function YDWEGetMultiboardByInteger takes integer pTable, integer pKey returns multiboard
    return LoadMultiboardHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetMultiboardByString takes string pTable, string pKey returns multiboard
    return LoadMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveMultiboardItemByInteger takes integer pTable, integer pKey, multiboarditem mt returns nothing
    call SaveMultiboardItemHandle(YDHT, pTable, pKey, mt)
endfunction
function YDWESaveMultiboardItemByString takes string pTable, string pKey, multiboarditem mt returns nothing
    call SaveMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey), mt)
endfunction
function YDWEGetMultiboardItemByInteger takes integer pTable, integer pKey returns multiboarditem
    return LoadMultiboardItemHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetMultiboardItemByString takes string pTable, string pKey returns multiboarditem
    return LoadMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveTextTagByInteger takes integer pTable, integer pKey, texttag tt returns nothing
    call SaveTextTagHandle(YDHT, pTable, pKey, tt)
endfunction
function YDWESaveTextTagByString takes string pTable, string pKey, texttag tt returns nothing
    call SaveTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey), tt)
endfunction
function YDWEGetTextTagByInteger takes integer pTable, integer pKey returns texttag
    return LoadTextTagHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTextTagByString takes string pTable, string pKey returns texttag
    return LoadTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveLightningByInteger takes integer pTable, integer pKey, lightning ln returns nothing
    call SaveLightningHandle(YDHT, pTable, pKey, ln)
endfunction
function YDWESaveLightningByString takes string pTable, string pKey, lightning ln returns nothing
    call SaveLightningHandle(YDHT, StringHash(pTable), StringHash(pKey), ln)
endfunction
function YDWEGetLightningByInteger takes integer pTable, integer pKey returns lightning
    return LoadLightningHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetLightningByString takes string pTable, string pKey returns lightning
    return LoadLightningHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveRegionByInteger takes integer pTable, integer pKey, region rn returns nothing
    call SaveRegionHandle(YDHT, pTable, pKey, rn)
endfunction
function YDWESaveRegionByString takes string pTable, string pKey, region rt returns nothing
    call SaveRegionHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
endfunction
function YDWEGetRegionByInteger takes integer pTable, integer pKey returns region
    return LoadRegionHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetRegionByString takes string pTable, string pKey returns region
    return LoadRegionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveRectByInteger takes integer pTable, integer pKey, rect rn returns nothing
    call SaveRectHandle(YDHT, pTable, pKey, rn)
endfunction
function YDWESaveRectByString takes string pTable, string pKey, rect rt returns nothing
    call SaveRectHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
endfunction
function YDWEGetRectByInteger takes integer pTable, integer pKey returns rect
    return LoadRectHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetRectByString takes string pTable, string pKey returns rect
    return LoadRectHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveLeaderboardByInteger takes integer pTable, integer pKey, leaderboard lb returns nothing
    call SaveLeaderboardHandle(YDHT, pTable, pKey, lb)
endfunction
function YDWESaveLeaderboardByString takes string pTable, string pKey, leaderboard lb returns nothing
    call SaveLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey), lb)
endfunction
function YDWEGetLeaderboardByInteger takes integer pTable, integer pKey returns leaderboard
    return LoadLeaderboardHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetLeaderboardByString takes string pTable, string pKey returns leaderboard
    return LoadLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveEffectByInteger takes integer pTable, integer pKey, effect e returns nothing
    call SaveEffectHandle(YDHT, pTable, pKey, e)
endfunction
function YDWESaveEffectByString takes string pTable, string pKey, effect e returns nothing
    call SaveEffectHandle(YDHT, StringHash(pTable), StringHash(pKey), e)
endfunction
function YDWEGetEffectByInteger takes integer pTable, integer pKey returns effect
    return LoadEffectHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetEffectByString takes string pTable, string pKey returns effect
    return LoadEffectHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveDestructableByInteger takes integer pTable, integer pKey, destructable da returns nothing
    call SaveDestructableHandle(YDHT, pTable, pKey, da)
endfunction
function YDWESaveDestructableByString takes string pTable, string pKey, destructable da returns nothing
    call SaveDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey), da)
endfunction
function YDWEGetDestructableByInteger takes integer pTable, integer pKey returns destructable
    return LoadDestructableHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetDestructableByString takes string pTable, string pKey returns destructable
    return LoadDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveTriggerConditionByInteger takes integer pTable, integer pKey, triggercondition tc returns nothing
    call SaveTriggerConditionHandle(YDHT, pTable, pKey, tc)
endfunction
function YDWESaveTriggerConditionByString takes string pTable, string pKey, triggercondition tc returns nothing
    call SaveTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey), tc)
endfunction
function YDWEGetTriggerConditionByInteger takes integer pTable, integer pKey returns triggercondition
    return LoadTriggerConditionHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTriggerConditionByString takes string pTable, string pKey returns triggercondition
    return LoadTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveTriggerActionByInteger takes integer pTable, integer pKey, triggeraction ta returns nothing
    call SaveTriggerActionHandle(YDHT, pTable, pKey, ta)
endfunction
function YDWESaveTriggerActionByString takes string pTable, string pKey, triggeraction ta returns nothing
    call SaveTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
endfunction
function YDWEGetTriggerActionByInteger takes integer pTable, integer pKey returns triggeraction
    return LoadTriggerActionHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTriggerActionByString takes string pTable, string pKey returns triggeraction
    return LoadTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveTriggerEventByInteger takes integer pTable, integer pKey, event et returns nothing
    call SaveTriggerEventHandle(YDHT, pTable, pKey, et)
endfunction
function YDWESaveTriggerEventByString takes string pTable, string pKey, event et returns nothing
    call SaveTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey), et)
endfunction
function YDWEGetTriggerEventByInteger takes integer pTable, integer pKey returns event
    return LoadTriggerEventHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTriggerEventByString takes string pTable, string pKey returns event
    return LoadTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveForceByInteger takes integer pTable, integer pKey, force fc returns nothing
    call SaveForceHandle(YDHT, pTable, pKey, fc)
endfunction
function YDWESaveForceByString takes string pTable, string pKey, force fc returns nothing
    call SaveForceHandle(YDHT, StringHash(pTable), StringHash(pKey), fc)
endfunction
function YDWEGetForceByInteger takes integer pTable, integer pKey returns force
    return LoadForceHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetForceByString takes string pTable, string pKey returns force
    return LoadForceHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveBoolexprByInteger takes integer pTable, integer pKey, boolexpr be returns nothing
    call SaveBooleanExprHandle(YDHT, pTable, pKey, be)
endfunction
function YDWESaveBoolexprByString takes string pTable, string pKey, boolexpr be returns nothing
    call SaveBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey), be)
endfunction
function YDWEGetBoolexprByInteger takes integer pTable, integer pKey returns boolexpr
    return LoadBooleanExprHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetBoolexprByString takes string pTable, string pKey returns boolexpr
    return LoadBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveSoundByInteger takes integer pTable, integer pKey, sound sd returns nothing
    call SaveSoundHandle(YDHT, pTable, pKey, sd)
endfunction
function YDWESaveSoundByString takes string pTable, string pKey, sound sd returns nothing
    call SaveSoundHandle(YDHT, StringHash(pTable), StringHash(pKey), sd)
endfunction
function YDWEGetSoundByInteger takes integer pTable, integer pKey returns sound
    return LoadSoundHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetSoundByString takes string pTable, string pKey returns sound
    return LoadSoundHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveTimerDialogByInteger takes integer pTable, integer pKey, timerdialog td returns nothing
    call SaveTimerDialogHandle(YDHT, pTable, pKey, td)
endfunction
function YDWESaveTimerDialogByString takes string pTable, string pKey, timerdialog td returns nothing
    call SaveTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), td)
endfunction
function YDWEGetTimerDialogByInteger takes integer pTable, integer pKey returns timerdialog
    return LoadTimerDialogHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTimerDialogByString takes string pTable, string pKey returns timerdialog
    return LoadTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveTrackableByInteger takes integer pTable, integer pKey, trackable ta returns nothing
    call SaveTrackableHandle(YDHT, pTable, pKey, ta)
endfunction
function YDWESaveTrackableByString takes string pTable, string pKey, trackable ta returns nothing
    call SaveTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
endfunction
function YDWEGetTrackableByInteger takes integer pTable, integer pKey returns trackable
    return LoadTrackableHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTrackableByString takes string pTable, string pKey returns trackable
    return LoadTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveDialogByInteger takes integer pTable, integer pKey, dialog d returns nothing
    call SaveDialogHandle(YDHT, pTable, pKey, d)
endfunction
function YDWESaveDialogByString takes string pTable, string pKey, dialog d returns nothing
    call SaveDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), d)
endfunction
function YDWEGetDialogByInteger takes integer pTable, integer pKey returns dialog
    return LoadDialogHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetDialogByString takes string pTable, string pKey returns dialog
    return LoadDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveButtonByInteger takes integer pTable, integer pKey, button bt returns nothing
    call SaveButtonHandle(YDHT, pTable, pKey, bt)
endfunction
function YDWESaveButtonByString takes string pTable, string pKey, button bt returns nothing
    call SaveButtonHandle(YDHT, StringHash(pTable), StringHash(pKey), bt)
endfunction
function YDWEGetButtonByInteger takes integer pTable, integer pKey returns button
    return LoadButtonHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetButtonByString takes string pTable, string pKey returns button
    return LoadButtonHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveQuestByInteger takes integer pTable, integer pKey, quest qt returns nothing
    call SaveQuestHandle(YDHT, pTable, pKey, qt)
endfunction
function YDWESaveQuestByString takes string pTable, string pKey, quest qt returns nothing
    call SaveQuestHandle(YDHT, StringHash(pTable), StringHash(pKey), qt)
endfunction
function YDWEGetQuestByInteger takes integer pTable, integer pKey returns quest
    return LoadQuestHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetQuestByString takes string pTable, string pKey returns quest
    return LoadQuestHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWESaveQuestItemByInteger takes integer pTable, integer pKey, questitem qi returns nothing
    call SaveQuestItemHandle(YDHT, pTable, pKey, qi)
endfunction
function YDWESaveQuestItemByString takes string pTable, string pKey, questitem qi returns nothing
    call SaveQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey), qi)
endfunction
function YDWEGetQuestItemByInteger takes integer pTable, integer pKey returns questitem
    return LoadQuestItemHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetQuestItemByString takes string pTable, string pKey returns questitem
    return LoadQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWES2I takes string s returns integer
    return StringHash(s)
endfunction
function YDWESaveAbilityHandleBJ takes integer AbilityID, integer key, integer missionKey, hashtable table returns nothing
    call SaveInteger(table, missionKey, key, AbilityID)
endfunction
function YDWESaveAbilityHandle takes hashtable table, integer parentKey, integer childKey, integer AbilityID returns nothing
    call SaveInteger(table, parentKey, childKey, AbilityID)
endfunction
function YDWELoadAbilityHandleBJ takes integer key, integer missionKey, hashtable table returns integer
    return LoadInteger(table, missionKey, key)
endfunction
function YDWELoadAbilityHandle takes hashtable table, integer parentKey, integer childKey returns integer
    return LoadInteger(table, parentKey, childKey)
endfunction
function YDWECoordinateX takes real x returns real
    return RMinBJ(RMaxBJ(x, yd_MapMinX), yd_MapMaxX)
endfunction
function YDWECoordinateY takes real y returns real
    return RMinBJ(RMaxBJ(y, yd_MapMinY), yd_MapMaxY)
endfunction
function YDWEDistanceBetweenUnits takes unit a, unit b returns real
    return SquareRoot((GetUnitX(a) - GetUnitX(b)) * (GetUnitX(a) - GetUnitX(b)) + (GetUnitY(a) - GetUnitY(b)) * (GetUnitY(a) - GetUnitY(b)))
endfunction
function YDWEAngleBetweenUnits takes unit fromUnit, unit toUnit returns real
    return bj_RADTODEG * Atan2(GetUnitY(toUnit) - GetUnitY(fromUnit), GetUnitX(toUnit) - GetUnitX(fromUnit))
endfunction
function YDWEGetRect takes real x, real y, real width, real height returns rect
    return Rect(x - width * .5, y - height * .5, x + width * .5, y + height * .5)
endfunction
function YDWEFlyEnable takes unit u returns nothing
    call UnitAddAbility(u, $416D7266)
    call UnitRemoveAbility(u, $416D7266)
endfunction
function YDWEId2S takes integer value returns string
    local string charMap = bj_AllString
    local string result = ""
    local integer remainingValue = value
    local integer charValue
    local integer byteno
    set byteno = 0
    loop
        set charValue = ModuloInteger(remainingValue, 256)
        set remainingValue = remainingValue / 256
        set result = SubString(charMap, charValue, charValue + 1) + result
        set byteno = byteno + 1
        exitwhen byteno == 4
    endloop
    return result
endfunction
function YDWES2Id takes string targetstr returns integer
    local string originstr = bj_AllString
    local integer strlength = StringLength(targetstr)
    local integer a = 0
    local integer b = 0
    local integer numx = 1
    local integer result = 0
    loop
        exitwhen b > strlength - 1
        set numx = R2I(Pow(256, strlength - 1 - b))
        set a = 1
        loop
            exitwhen a > 255
            if SubString(targetstr, b, b + 1) == SubString(originstr, a, a + 1) then
                set result = result + a * numx
                set a = 256
            endif
            set a = a + 1
        endloop
        set b = b + 1
    endloop
    return result
endfunction
function YDWES2UnitId takes string targetstr returns integer
    return YDWES2Id(targetstr)
endfunction
function YDWES2ItemId takes string targetstr returns integer
    return YDWES2Id(targetstr)
endfunction
function GetLastAbilityCastingUnit takes nothing returns unit
    return bj_lastAbilityCastingUnit
endfunction
function GetLastAbilityTargetUnit takes nothing returns unit
    return bj_lastAbilityTargetUnit
endfunction
function YDWESetMapLimitCoordinate takes real MinX, real MaxX, real MinY, real MaxY returns nothing
    set yd_MapMaxX = MaxX
    set yd_MapMinX = MinX
    set yd_MapMaxY = MaxY
    set yd_MapMinY = MinY
endfunction
function YDWESyStemAbilityCastingOverTriggerAction takes unit hero, integer index returns nothing
    local integer i = 0
    loop
        exitwhen i >= YDWEBase__AbilityCastingOverEventNumber
        if YDWEBase__AbilityCastingOverEventType[i] == index then
            set bj_lastAbilityCastingUnit = hero
            if YDWEBase__AbilityCastingOverEventQueue[i] != null and TriggerEvaluate(YDWEBase__AbilityCastingOverEventQueue[i]) and IsTriggerEnabled(YDWEBase__AbilityCastingOverEventQueue[i]) then
                call TriggerExecute(YDWEBase__AbilityCastingOverEventQueue[i])
            endif
        endif
        set i = i + 1
    endloop
endfunction
function YDWESyStemAbilityCastingOverRegistTrigger takes trigger trg, integer index returns nothing
    set YDWEBase__AbilityCastingOverEventQueue[YDWEBase__AbilityCastingOverEventNumber] = trg
    set YDWEBase__AbilityCastingOverEventType[YDWEBase__AbilityCastingOverEventNumber] = index
    set YDWEBase__AbilityCastingOverEventNumber = YDWEBase__AbilityCastingOverEventNumber + 1
endfunction
function YDWECreateUnitPool takes nothing returns nothing
    set bj_lastCreatedUnitPool = CreateUnitPool()
endfunction
function YDWEPlaceRandomUnit takes unitpool up, player p, real x, real y, real face returns nothing
    set bj_lastPoolAbstractedUnit = PlaceRandomUnit(up, p, x, y, face)
endfunction
function YDWEGetLastUnitPool takes nothing returns unitpool
    return bj_lastCreatedUnitPool
endfunction
function YDWEGetLastPoolAbstractedUnit takes nothing returns unit
    return bj_lastPoolAbstractedUnit
endfunction
function YDWECreateItemPool takes nothing returns nothing
    set bj_lastCreatedItemPool = CreateItemPool()
endfunction
function YDWEPlaceRandomItem takes itempool ip, real x, real y returns nothing
    set bj_lastPoolAbstractedItem = PlaceRandomItem(ip, x, y)
endfunction
function YDWEGetLastItemPool takes nothing returns itempool
    return bj_lastCreatedItemPool
endfunction
function YDWEGetLastPoolAbstractedItem takes nothing returns item
    return bj_lastPoolAbstractedItem
endfunction
function YDWESetAttackDamageWeaponType takes attacktype at, damagetype dt, weapontype wt returns nothing
    set bj_lastSetAttackType = at
    set bj_lastSetDamageType = dt
    set bj_lastSetWeaponType = wt
endfunction
function YDWEGetPlayerColorString takes player p, string s returns string
    return YDWEBase__yd_PlayerColor[GetHandleId(GetPlayerColor(p))] + s + "|r"
endfunction
function YDWEGetUnitItemSoftId takes unit hero, item it returns integer
    local integer i = 0
    loop
        exitwhen i > 5
        if UnitItemInSlot(hero, i) == it then
            return i + 1
        endif
        set i = i + 1
    endloop
    return 0
endfunction
function YDWEVersion_Display takes nothing returns boolean
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "|cFF1E90FF当前编辑器版本为： |r|cFF00FF00YDWE 1.31.8.1850")
    return false
endfunction
function YDWEVersion_Init takes nothing returns nothing
    local trigger t = CreateTrigger()
    local integer i = 0
    loop
        exitwhen i == 12
        call TriggerRegisterPlayerChatEvent(t, Player(i), "YDWE Version", true)
        set i = i + 1
    endloop
    call TriggerAddCondition(t, Condition(function YDWEVersion_Display))
    set t = null
endfunction
function InitializeYD takes nothing returns nothing
    set YDHT = InitHashtable()
    set yd_MapMinX = GetCameraBoundMinX() - GetCameraMargin(CAMERA_MARGIN_LEFT)
    set yd_MapMinY = GetCameraBoundMinY() - GetCameraMargin(CAMERA_MARGIN_BOTTOM)
    set yd_MapMaxX = GetCameraBoundMaxX() + GetCameraMargin(CAMERA_MARGIN_RIGHT)
    set yd_MapMaxY = GetCameraBoundMaxY() + GetCameraMargin(CAMERA_MARGIN_TOP)
    set YDWEBase__yd_PlayerColor[0] = "|cFFFF0303"
    set YDWEBase__yd_PlayerColor[1] = "|cFF0042FF"
    set YDWEBase__yd_PlayerColor[2] = "|cFF1CE6B9"
    set YDWEBase__yd_PlayerColor[3] = "|cFF540081"
    set YDWEBase__yd_PlayerColor[4] = "|cFFFFFC01"
    set YDWEBase__yd_PlayerColor[5] = "|cFFFE8A0E"
    set YDWEBase__yd_PlayerColor[6] = "|cFF20C000"
    set YDWEBase__yd_PlayerColor[7] = "|cFFE55BB0"
    set YDWEBase__yd_PlayerColor[8] = "|cFF959697"
    set YDWEBase__yd_PlayerColor[9] = "|cFF7EBFF1"
    set YDWEBase__yd_PlayerColor[10] = "|cFF106246"
    set YDWEBase__yd_PlayerColor[11] = "|cFF4E2A04"
    set YDWEBase__yd_PlayerColor[12] = "|cFF282828"
    set YDWEBase__yd_PlayerColor[13] = "|cFF282828"
    set YDWEBase__yd_PlayerColor[14] = "|cFF282828"
    set YDWEBase__yd_PlayerColor[15] = "|cFF282828"
    call YDWEVersion_Init()
endfunction
function YDWEGeneralBounsSystem___DisplayAllAbilityId takes nothing returns nothing
    local integer aid = 0
    set aid = $59446C30
    set aid = $59446C31
    set aid = $59446C32
    set aid = $59446C33
    set aid = $59446C34
    set aid = $59446C35
    set aid = $59446C36
    set aid = $59446C37
    set aid = $59446C38
    set aid = $59446C39
    set aid = $59446C61
    set aid = $59446C62
    set aid = $59446C63
    set aid = $59446C64
    set aid = $59446C65
    set aid = $59446C66
    set aid = $59446D30
    set aid = $59446D31
    set aid = $59446D32
    set aid = $59446D33
    set aid = $59446D34
    set aid = $59446D35
    set aid = $59446D36
    set aid = $59446D37
    set aid = $59446D38
    set aid = $59446D39
    set aid = $59446D61
    set aid = $59446D62
    set aid = $59446D63
    set aid = $59446D64
    set aid = $59446D65
    set aid = $59446D66
    set aid = $59446330
    set aid = $59446331
    set aid = $59446332
    set aid = $59446333
    set aid = $59446334
    set aid = $59446335
    set aid = $59446336
    set aid = $59446337
    set aid = $59446338
    set aid = $59446339
    set aid = $59446361
    set aid = $59446362
    set aid = $59446363
    set aid = $59446230
    set aid = $59446231
    set aid = $59446232
    set aid = $59446233
    set aid = $59446234
    set aid = $59446235
    set aid = $59446236
    set aid = $59446237
    set aid = $59446238
    set aid = $59446239
    set aid = $59446261
    set aid = $59446262
    set aid = $59446263
    set aid = $59446264
    set aid = $59446265
    set aid = $59446266
    set aid = $59446267
    set aid = $59446268
    set aid = $59446269
    set aid = $5944626A
    set aid = $5944626B
    set aid = $5944626C
    set aid = $5944626D
    set aid = $5944626E
endfunction
function YDWEGeneralBounsSystem___UnitClearBonus takes unit u, integer bonusType returns nothing
    local integer i = YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType + 1] - 1
    loop
        exitwhen i < YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType]
        call UnitRemoveAbility(u, YDWEGeneralBounsSystem___BonusAbilitys[i])
        set i = i - 1
    endloop
    call SaveInteger(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusType" + I2S(bonusType)), 0)
endfunction
function YDWEGeneralBounsSystem___SetUnitMaxState takes unit u, integer bonusType, real value returns boolean
    local integer v = R2I(value)
    local integer o = 0
    local unitstate state
    local integer i = YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType + 1] - 2
    if value > 65535 or value <= 0 then
        return false
    endif
    if bonusType == 0 then
        set state = UNIT_STATE_MAX_LIFE
    elseif bonusType == 1 then
        set state = UNIT_STATE_MAX_MANA
    else
        return false
    endif
    set v = v - R2I(GetUnitState(u, state))
    call SaveInteger(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusType" + I2S(bonusType)), v)
    if v > 0 then
        set o = 3
    elseif v < 0 then
        set o = 2
        set v =- v
    else
        return false
    endif
    loop
        exitwhen i < YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType]
        if v >= YDWEGeneralBounsSystem___PowersOf2[i] then
            call UnitAddAbility(u, YDWEGeneralBounsSystem___BonusAbilitys[i])
            call SetUnitAbilityLevel(u, YDWEGeneralBounsSystem___BonusAbilitys[i], o)
            call UnitRemoveAbility(u, YDWEGeneralBounsSystem___BonusAbilitys[i])
            set v = v - YDWEGeneralBounsSystem___PowersOf2[i]
        endif
        set i = i - 1
    endloop
    return true
endfunction
function YDWEGeneralBounsSystem___UnitSetBonus takes unit u, integer bonusType, integer ammount returns boolean
    local integer i
    if ammount == 0 then
        call YDWEGeneralBounsSystem___UnitClearBonus(u, bonusType)
        return false
    endif
    if ammount < YDWEGeneralBounsSystem___MinBonus[bonusType] or ammount > YDWEGeneralBounsSystem___MaxBonus[bonusType] then
        return false
    elseif bonusType < 0 or bonusType >= YDWEGeneralBounsSystem___BONUS_TYPES then
        return false
    endif
    call SaveInteger(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusType" + I2S(bonusType)), ammount)
    if ammount < 0 then
        set ammount = YDWEGeneralBounsSystem___MaxBonus[bonusType] + ammount + 1
        call UnitAddAbility(u, YDWEGeneralBounsSystem___BonusAbilitys[YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType + 1] - 1])
        call UnitMakeAbilityPermanent(u, true, YDWEGeneralBounsSystem___BonusAbilitys[YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType + 1] - 1])
    else
        call UnitRemoveAbility(u, YDWEGeneralBounsSystem___BonusAbilitys[YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType + 1] - 1])
    endif
    set i = YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType + 1] - 2
    loop
        exitwhen i < YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType]
        if ammount >= YDWEGeneralBounsSystem___PowersOf2[i] then
            call UnitAddAbility(u, YDWEGeneralBounsSystem___BonusAbilitys[i])
            call UnitMakeAbilityPermanent(u, true, YDWEGeneralBounsSystem___BonusAbilitys[i])
            set ammount = ammount - YDWEGeneralBounsSystem___PowersOf2[i]
        else
            call UnitRemoveAbility(u, YDWEGeneralBounsSystem___BonusAbilitys[i])
        endif
        set i = i - 1
    endloop
    if not LoadBoolean(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusMark")) then
        call SaveBoolean(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusMark"), true)
        set YDWEGeneralBounsSystem___UnitCount = YDWEGeneralBounsSystem___UnitCount + 1
        set YDWEGeneralBounsSystem___Units[YDWEGeneralBounsSystem___UnitCount] = u
    endif
    return true
endfunction
function YDWEGeneralBounsSystem___UnitGetBonus takes unit u, integer bonusType returns integer
    return LoadInteger(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusType" + I2S(bonusType)))
endfunction
function YDWEGeneralBounsSystem___AddUnitMaxState takes unit u, integer bonusType, real value returns boolean
    local unitstate state
    if bonusType == 0 then
        set state = UNIT_STATE_MAX_LIFE
    elseif bonusType == 1 then
        set state = UNIT_STATE_MAX_MANA
    else
        return false
    endif
    return YDWEGeneralBounsSystem___SetUnitMaxState(u, bonusType, value + GetUnitState(u, state))
endfunction
function YDWEGeneralBounsSystem___UnitAddBonus takes unit u, integer bonusType, integer ammount returns boolean
    return YDWEGeneralBounsSystem___UnitSetBonus(u, bonusType, LoadInteger(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusType" + I2S(bonusType))) + ammount)
endfunction
function YDWEGeneralBounsSystem___FlushUnits takes nothing returns nothing
    local integer i = YDWEGeneralBounsSystem___UnitCount
    local string h
    loop
        exitwhen i < 1
        if GetUnitTypeId(YDWEGeneralBounsSystem___Units[i]) == 0 then
            set h = I2S(GetHandleId(YDWEGeneralBounsSystem___Units[i]))
            call SaveInteger(YDHT, StringHash(h), StringHash("bonusType0"), 0)
            call SaveInteger(YDHT, StringHash(h), StringHash("bonusType1"), 0)
            call SaveInteger(YDHT, StringHash(h), StringHash("bonusType2"), 0)
            call SaveInteger(YDHT, StringHash(h), StringHash("bonusType3"), 0)
            call SaveBoolean(YDHT, StringHash(h), StringHash("bonusMark"), false)
            set YDWEGeneralBounsSystem___Units[i] = YDWEGeneralBounsSystem___Units[YDWEGeneralBounsSystem___UnitCount]
            set YDWEGeneralBounsSystem___Units[YDWEGeneralBounsSystem___UnitCount] = null
            set YDWEGeneralBounsSystem___UnitCount = YDWEGeneralBounsSystem___UnitCount - 1
        endif
        set i = i - 1
    endloop
endfunction
function YDWEUnitSetBonus takes unit u, integer bonusType, integer ammount returns nothing
    if bonusType == 0 or bonusType == 1 then
        call YDWEGeneralBounsSystem___SetUnitMaxState(u, bonusType, ammount)
    else
        call YDWEGeneralBounsSystem___UnitSetBonus(u, bonusType, ammount)
    endif
endfunction
function YDWEUnitAddBonus takes unit u, integer bonusType, integer ammount returns nothing
    if bonusType == 0 or bonusType == 1 then
        call YDWEGeneralBounsSystem___AddUnitMaxState(u, bonusType, ammount)
    else
        call YDWEGeneralBounsSystem___UnitAddBonus(u, bonusType, ammount)
    endif
endfunction
function YDWEGeneralBounsSystemUnitSetBonus takes unit u, integer bonusType, integer mod, integer ammount returns nothing
    if mod == 0 then
        call YDWEUnitAddBonus(u, bonusType, ammount)
    elseif mod == 1 then
        call YDWEUnitAddBonus(u, bonusType, 0 - ammount)
    else
        call YDWEUnitSetBonus(u, bonusType, ammount)
    endif
endfunction
function YDWEGeneralBounsSystemUnitGetBonus takes unit u, integer bonusType returns integer
    return LoadInteger(YDHT, StringHash(I2S(GetHandleId(u))), StringHash("bonusType" + I2S(bonusType)))
endfunction
function YDWEGeneralBounsSystem___InitializeAbilitys takes nothing returns nothing
    local integer i = 0
    local integer m = 0
    set YDWEGeneralBounsSystem___ABILITY_COUNT[0] = 0
    set YDWEGeneralBounsSystem___ABILITY_COUNT[1] = 15
    set YDWEGeneralBounsSystem___ABILITY_COUNT[2] = 30
    set YDWEGeneralBounsSystem___ABILITY_COUNT[3] = 43
    set YDWEGeneralBounsSystem___ABILITY_COUNT[4] = 67
    set YDWEGeneralBounsSystem___ABILITY_NUM[0] = 15
    set YDWEGeneralBounsSystem___ABILITY_NUM[1] = 15
    set YDWEGeneralBounsSystem___ABILITY_NUM[2] = 13
    set YDWEGeneralBounsSystem___ABILITY_NUM[3] = 24
    loop
        exitwhen i > 9
        set YDWEGeneralBounsSystem___YDWEBONUS_MyChar[i] = 48 + m
        set m = m + 1
        set i = i + 1
    endloop
    set m = 0
    loop
        exitwhen i > 26
        set YDWEGeneralBounsSystem___YDWEBONUS_MyChar[i] = 97 + m
        set m = m + 1
        set i = i + 1
    endloop
    set i = 0
    set m = 0
    loop
        exitwhen m > YDWEGeneralBounsSystem___ABILITY_NUM[0] - 1
        set YDWEGeneralBounsSystem___BonusAbilitys[i] = $59446C30 - 48 + YDWEGeneralBounsSystem___YDWEBONUS_MyChar[m]
        set i = i + 1
        set m = m + 1
    endloop
    set m = 0
    loop
        exitwhen m > YDWEGeneralBounsSystem___ABILITY_NUM[1] - 1
        set YDWEGeneralBounsSystem___BonusAbilitys[i] = $59446D30 - 48 + YDWEGeneralBounsSystem___YDWEBONUS_MyChar[m]
        set i = i + 1
        set m = m + 1
    endloop
    set m = 0
    loop
        exitwhen m > YDWEGeneralBounsSystem___ABILITY_NUM[2] - 1
        set YDWEGeneralBounsSystem___BonusAbilitys[i] = $59446330 - 48 + YDWEGeneralBounsSystem___YDWEBONUS_MyChar[m]
        set i = i + 1
        set m = m + 1
    endloop
    set m = 0
    loop
        exitwhen m > YDWEGeneralBounsSystem___ABILITY_NUM[3] - 1
        set YDWEGeneralBounsSystem___BonusAbilitys[i] = $59446230 - 48 + YDWEGeneralBounsSystem___YDWEBONUS_MyChar[m]
        set i = i + 1
        set m = m + 1
    endloop
endfunction
function YDWEGeneralBounsSystem___Initialize takes nothing returns nothing
    local integer i = 1
    local unit u
    local integer n = 0
    local integer add = 0
    call YDWEGeneralBounsSystem___InitializeAbilitys()
    loop
        set i = 1
        set YDWEGeneralBounsSystem___PowersOf2[add] = 1
        loop
            set YDWEGeneralBounsSystem___PowersOf2[add + 1] = YDWEGeneralBounsSystem___PowersOf2[add] * 2
            set add = add + 1
            set i = i + 1
            exitwhen i == YDWEGeneralBounsSystem___ABILITY_NUM[n]
        endloop
        set YDWEGeneralBounsSystem___MaxBonus[n] = YDWEGeneralBounsSystem___PowersOf2[add] - 1
        set YDWEGeneralBounsSystem___MinBonus[n] =- YDWEGeneralBounsSystem___PowersOf2[add]
        set add = add + 1
        set n = n + 1
        exitwhen n >= 4
    endloop
    if YDWEGeneralBounsSystem___PRELOAD_ABILITYS then
        set u = CreateUnit(Player(15), YDWEGeneralBounsSystem___PRELOAD_DUMMY_UNIT, 0, 0, 0)
        set i = 0
        loop
            exitwhen i == YDWEGeneralBounsSystem___ABILITY_COUNT[5]
            call UnitAddAbility(u, YDWEGeneralBounsSystem___BonusAbilitys[i])
            set i = i + 1
        endloop
        call RemoveUnit(u)
        set u = null
    endif
    call TimerStart(CreateTimer(), 10, true, function YDWEGeneralBounsSystem___FlushUnits)
endfunction
function YDWELifeChange takes unit u, integer mod, integer ch, integer id returns nothing
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
    if ch > 99999 then
        set ch = 99999
    endif
    if ch <- 99999 then
        set ch =- 99999
    endif
    if ch < 0 then
        set a = 2
        set ch =- ch
    else
        set a = 7
    endif
    set b = 0
    loop
        exitwhen b == 5
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
function YDWEManaChange takes unit u, integer mod, integer ch, integer id returns nothing
    local integer a
    local integer b
    local integer c
    local integer d
    local integer aid = id
    if mod == 1 then
        set ch =- ch
    elseif mod == 2 then
        set ch = ch - R2I(GetUnitState(u, UNIT_STATE_MAX_MANA))
    endif
    if ch > 99999 then
        set ch = 99999
    endif
    if ch <- 99999 then
        set ch =- 99999
    endif
    if ch < 0 then
        set a = 2
        set ch =- ch
    else
        set a = 7
    endif
    set b = 0
    loop
        exitwhen b == 5
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
function YDWEMultiboardSetItemWidthBJNull takes multiboard mb, integer col, integer row, real width returns nothing
    local integer curRow = 0
    local integer curCol = 0
    local integer numRows = MultiboardGetRowCount(mb)
    local integer numCols = MultiboardGetColumnCount(mb)
    local multiboarditem mbitem = null
    loop
        set curRow = curRow + 1
        exitwhen curRow > numRows
        if row == 0 or row == curRow then
            set curCol = 0
            loop
                set curCol = curCol + 1
                exitwhen curCol > numCols
                if col == 0 or col == curCol then
                    set mbitem = MultiboardGetItem(mb, curRow - 1, curCol - 1)
                    call MultiboardSetItemWidth(mbitem, width / 100.)
                    call MultiboardReleaseItem(mbitem)
                endif
            endloop
        endif
    endloop
    set mbitem = null
endfunction
function YDWEPolledWaitNull takes real duration returns nothing
    local timer t
    local real timeRemaining
    if duration > 0 then
        set t = CreateTimer()
        call TimerStart(t, duration, false, null)
        loop
            set timeRemaining = TimerGetRemaining(t)
            exitwhen timeRemaining <= 0
            if timeRemaining > bj_POLLED_WAIT_SKIP_THRESHOLD then
                call TriggerSleepAction(.1 * timeRemaining)
            else
                call TriggerSleepAction(bj_POLLED_WAIT_INTERVAL)
            endif
        endloop
        call DestroyTimer(t)
    endif
    set t = null
endfunction
function YDWEAnyUnitDamagedTriggerAction takes nothing returns nothing
    local integer i = 0
    loop
        exitwhen i >= YDWETriggerEvent___DamageEventNumber
        if YDWETriggerEvent___DamageEventQueue[i] != null and IsTriggerEnabled(YDWETriggerEvent___DamageEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent___DamageEventQueue[i]) then
            call TriggerExecute(YDWETriggerEvent___DamageEventQueue[i])
        endif
        set i = i + 1
    endloop
endfunction
function YDWEAnyUnitDamagedFilter takes nothing returns boolean
    if GetUnitAbilityLevel(GetFilterUnit(), $416C6F63) <= 0 then
        call TriggerRegisterUnitEvent(yd_DamageEventTrigger, GetFilterUnit(), EVENT_UNIT_DAMAGED)
    endif
    return false
endfunction
function YDWEAnyUnitDamagedEnumUnit takes nothing returns nothing
    local trigger t = CreateTrigger()
    local region r = CreateRegion()
    local group g = CreateGroup()
    call RegionAddRect(r, GetWorldBounds())
    call TriggerRegisterEnterRegion(t, r, Condition(function YDWEAnyUnitDamagedFilter))
    call GroupEnumUnitsInRect(g, GetWorldBounds(), Condition(function YDWEAnyUnitDamagedFilter))
    call DestroyGroup(g)
    set r = null
    set t = null
    set g = null
endfunction
function YDWESyStemAnyUnitDamagedRegistTrigger takes trigger trg returns nothing
    if trg == null then
        return
    endif
    if YDWETriggerEvent___DamageEventNumber == 0 then
        set yd_DamageEventTrigger = CreateTrigger()
        call TriggerAddAction(yd_DamageEventTrigger, function YDWEAnyUnitDamagedTriggerAction)
        call YDWEAnyUnitDamagedEnumUnit()
    endif
    set YDWETriggerEvent___DamageEventQueue[YDWETriggerEvent___DamageEventNumber] = trg
    set YDWETriggerEvent___DamageEventNumber = YDWETriggerEvent___DamageEventNumber + 1
endfunction
function YDWESyStemItemUnmovableTriggerAction takes nothing returns nothing
    local integer i = 0
    if GetIssuedOrderId() >= 852002 and GetIssuedOrderId() <= 852007 then
        set bj_lastMovedItemInItemSlot = GetOrderTargetItem()
        loop
            exitwhen i >= YDWETriggerEvent___MoveItemEventNumber
            if YDWETriggerEvent___MoveItemEventQueue[i] != null and IsTriggerEnabled(YDWETriggerEvent___MoveItemEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent___MoveItemEventQueue[i]) then
                call TriggerExecute(YDWETriggerEvent___MoveItemEventQueue[i])
            endif
            set i = i + 1
        endloop
    endif
endfunction
function YDWESyStemItemUnmovableRegistTrigger takes trigger trg returns nothing
    if trg == null then
        return
    endif
    if YDWETriggerEvent___MoveItemEventNumber == 0 then
        set YDWETriggerEvent___MoveItemEventTrigger = CreateTrigger()
        call TriggerAddAction(YDWETriggerEvent___MoveItemEventTrigger, function YDWESyStemItemUnmovableTriggerAction)
        call TriggerRegisterAnyUnitEventBJ(YDWETriggerEvent___MoveItemEventTrigger, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    endif
    set YDWETriggerEvent___MoveItemEventQueue[YDWETriggerEvent___MoveItemEventNumber] = trg
    set YDWETriggerEvent___MoveItemEventNumber = YDWETriggerEvent___MoveItemEventNumber + 1
endfunction
function GetLastMovedItemInItemSlot takes nothing returns item
    return bj_lastMovedItemInItemSlot
endfunction
function YDWETriggerRegisterEnterRectSimpleNull takes trigger trig, rect r returns event
    local region rectRegion = CreateRegion()
    call RegionAddRect(rectRegion, r)
    set yd_NullTempRegion = rectRegion
    set rectRegion = null
    return TriggerRegisterEnterRegion(trig, yd_NullTempRegion, null)
endfunction
function YDWEUnitHasItemOfTypeBJNull takes unit whichUnit, integer itemId returns boolean
    local integer index = 0
    if itemId != 0 then
        loop
            if GetItemTypeId(UnitItemInSlot(whichUnit, index)) == itemId then
                return true
            endif
            set index = index + 1
            exitwhen index >= bj_MAX_INVENTORY
        endloop
    endif
    return false
endfunction
function GetLastCombinedItem takes nothing returns item
    return bj_lastCombinedItem
endfunction
function YDWESyStemItemCombineTriggerAction takes nothing returns nothing
    local integer i = 0
    loop
        exitwhen i >= YDWEStringFormula___ItemCombineEventNumber
        if YDWEStringFormula___ItemCombineEventQueue[i] != null and TriggerEvaluate(YDWEStringFormula___ItemCombineEventQueue[i]) and IsTriggerEnabled(YDWEStringFormula___ItemCombineEventQueue[i]) then
            call TriggerExecute(YDWEStringFormula___ItemCombineEventQueue[i])
        endif
        set i = i + 1
    endloop
endfunction
function YDWESyStemItemCombineRegistTrigger takes trigger trg returns nothing
    set YDWEStringFormula___ItemCombineEventQueue[YDWEStringFormula___ItemCombineEventNumber] = trg
    set YDWEStringFormula___ItemCombineEventNumber = YDWEStringFormula___ItemCombineEventNumber + 1
endfunction
function s__YDWEStringFormula___Inventory_reset takes integer this returns nothing
    call FlushChildHashtable(YDHT, StringHash("YDWEStringFormula." + I2S(this)))
endfunction
function s__YDWEStringFormula___Inventory_onDestroy takes integer this returns nothing
    call FlushChildHashtable(YDHT, StringHash("YDWEStringFormula." + I2S(this)))
endfunction
function s__YDWEStringFormula___StringTable__getindex takes integer this, string key returns integer
    return LoadInteger(YDHT, StringHash("YDWEStringFormula." + I2S(this)), StringHash(key))
endfunction
function s__YDWEStringFormula___StringTable__setindex takes integer this, string key, integer value returns nothing
    call SaveInteger(YDHT, StringHash("YDWEStringFormula." + I2S(this)), StringHash(key), value)
endfunction
function s__YDWEStringFormula___StringTable_flush takes integer this, string key returns nothing
    call RemoveSavedInteger(YDHT, StringHash("YDWEStringFormula." + I2S(this)), StringHash(key))
endfunction
function s__YDWEStringFormula___StringTable_exists takes integer this, string key returns boolean
    return HaveSavedInteger(YDHT, StringHash("YDWEStringFormula." + I2S(this)), StringHash(key))
endfunction
function YDWEStringFormula___Convert takes integer value, integer length returns string
    local string Char = I2S(value)
    local integer slen = StringLength(Char)
    loop
        exitwhen slen >= length
        set Char = "0" + Char
        set slen = slen + 1
    endloop
    return Char
endfunction
function s__YDWEStringFormula___ItemIdMatrix_get takes integer id returns integer
    return LoadInteger(YDHT, StringHash("YDWEStringFormula." + I2S(s__YDWEStringFormula___ItemIdMatrix_Data)), StringHash(I2S(id)))
endfunction
function s__YDWEStringFormula___ItemIdMatrix_exists takes integer id returns boolean
    return HaveSavedInteger(YDHT, StringHash("YDWEStringFormula." + I2S(s__YDWEStringFormula___ItemIdMatrix_Data)), StringHash(I2S(id)))
endfunction
function s__YDWEStringFormula___ItemIdMatrix_sub takes integer this, integer segment returns integer
    local integer start = s__YDWEStringFormula___ItemIdMatrix_keyLen[this] * segment + 1
    return S2I(SubString(s__YDWEStringFormula___ItemIdMatrix_keyStr[this], start, start + s__YDWEStringFormula___ItemIdMatrix_keyLen[this]))
endfunction
function s__YDWEStringFormula___ItemIdMatrix_assigns takes integer id returns integer
    local integer this = 0
    if id == null or id == 0 then
        return 0
    endif
    set this = LoadInteger(YDHT, StringHash("YDWEStringFormula." + I2S(s__YDWEStringFormula___ItemIdMatrix_Data)), StringHash(I2S(id)))
    if this > 0 then
        return this
    endif
    set this = s__YDWEStringFormula___ItemIdMatrix_Total
    set s__YDWEStringFormula___ItemIdMatrix_itemId[this] = id
    set s__YDWEStringFormula___ItemIdMatrix_keyStr[this] = I2S(YDWEStringFormula___SEGMENT_LENGTH)
    set s__YDWEStringFormula___ItemIdMatrix_keyLen[this] = YDWEStringFormula___SEGMENT_LENGTH
    call SaveInteger(YDHT, StringHash("YDWEStringFormula." + I2S(s__YDWEStringFormula___ItemIdMatrix_Data)), StringHash(I2S(id)), this)
    set s__YDWEStringFormula___ItemIdMatrix_Total = s__YDWEStringFormula___ItemIdMatrix_Total + 1
    return this
endfunction
function s__YDWEStringFormula___ItemIdMatrix_memory takes integer this, string key returns nothing
    set s__YDWEStringFormula___ItemIdMatrix_keyStr[this] = s__YDWEStringFormula___ItemIdMatrix_keyStr[this] + key
endfunction
function s__YDWEStringFormula___ItemIdMatrix_onInit takes nothing returns nothing
    set s__YDWEStringFormula___ItemIdMatrix_Data = s__YDWEStringFormula___StringTable__allocate()
endfunction
function s__YDWEStringFormula___FormulaMatrix_exists takes string s returns boolean
    return HaveSavedInteger(YDHT, StringHash("YDWEStringFormula." + I2S(s__YDWEStringFormula___FormulaMatrix_Data)), StringHash(s))
endfunction
function s__YDWEStringFormula___FormulaMatrix_sub takes integer this, integer segment returns integer
    local integer start = s__YDWEStringFormula___FormulaMatrix_segmLen[this] * segment + 1
    return S2I(SubString(s__YDWEStringFormula___FormulaMatrix_formula[this], start, start + s__YDWEStringFormula___FormulaMatrix_segmLen[this]))
endfunction
function s__YDWEStringFormula___FormulaMatrix_memory takes integer lingth, string formStr, integer eventually returns integer
    local integer this = 0
    if HaveSavedInteger(YDHT, StringHash("YDWEStringFormula." + I2S(s__YDWEStringFormula___FormulaMatrix_Data)), StringHash(formStr)) then
        return 0
    endif
    set this = s__YDWEStringFormula___FormulaMatrix_Total
    set s__YDWEStringFormula___FormulaMatrix_formula[this] = formStr + YDWEStringFormula___Convert(eventually, YDWEStringFormula___SEGMENT_LENGTH)
    set s__YDWEStringFormula___FormulaMatrix_segmLen[this] = lingth
    set s__YDWEStringFormula___FormulaMatrix_model[this] = null
    set s__YDWEStringFormula___FormulaMatrix_message[this] = null
    set s__YDWEStringFormula___FormulaMatrix_chance[this] = 100
    set s__YDWEStringFormula___FormulaMatrix_delete[this] = false
    call SaveInteger(YDHT, StringHash("YDWEStringFormula." + I2S(s__YDWEStringFormula___FormulaMatrix_Data)), StringHash(formStr), this)
    set s__YDWEStringFormula___FormulaMatrix_Total = s__YDWEStringFormula___FormulaMatrix_Total + 1
    return this
endfunction
function s__YDWEStringFormula___FormulaMatrix_onInit takes nothing returns nothing
    set s__YDWEStringFormula___FormulaMatrix_Data = s__YDWEStringFormula___StringTable__allocate()
endfunction
function s__YDWEStringFormula___Sorting_onDestroy takes integer this returns nothing
    local integer i = 0
    loop
        exitwhen i == s___YDWEStringFormula___Sorting_stack_size
        set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + i] = 0
        set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + i] = 0
        set i = i + 1
    endloop
    set s__YDWEStringFormula___Sorting_char[this] = ""
endfunction
function s__YDWEStringFormula___Sorting_deallocate takes integer this returns nothing
    if this == null then
        return
    elseif si__YDWEStringFormula___Sorting_V[this] !=- 1 then
        return
    endif
    call s__YDWEStringFormula___Sorting_onDestroy(this)
    set si__YDWEStringFormula___Sorting_V[this] = si__YDWEStringFormula___Sorting_F
    set si__YDWEStringFormula___Sorting_F = this
endfunction
function s__YDWEStringFormula___Sorting_create takes integer type1, integer n1, integer type2, integer n2, integer type3, integer n3, integer type4, integer n4, integer type5, integer n5, integer type6, integer n6, integer type7, integer n7 returns integer
    local integer this = s__YDWEStringFormula___Sorting__allocate()
    set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + 1] = s__YDWEStringFormula___ItemIdMatrix_assigns(type1)
    set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + 2] = s__YDWEStringFormula___ItemIdMatrix_assigns(type2)
    set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + 3] = s__YDWEStringFormula___ItemIdMatrix_assigns(type3)
    set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + 4] = s__YDWEStringFormula___ItemIdMatrix_assigns(type4)
    set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + 5] = s__YDWEStringFormula___ItemIdMatrix_assigns(type5)
    set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + 6] = s__YDWEStringFormula___ItemIdMatrix_assigns(type6)
    set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + 7] = s__YDWEStringFormula___ItemIdMatrix_assigns(type7)
    set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + 1] = n1
    set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + 2] = n2
    set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + 3] = n3
    set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + 4] = n4
    set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + 5] = n5
    set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + 6] = n6
    set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + 7] = n7
    return this
endfunction
function s__YDWEStringFormula___Sorting_convert takes integer this returns string
    local integer i = 1
    local integer j
    local integer k
    set s__YDWEStringFormula___Sorting_char[this] = ""
    loop
        exitwhen i > s__YDWEStringFormula___Sorting_total[this]
        if s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + i] == 0 or s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + i] == 0 then
            set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + i] = s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + s__YDWEStringFormula___Sorting_total[this]]
            set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + i] = s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + s__YDWEStringFormula___Sorting_total[this]]
            set s__YDWEStringFormula___Sorting_total[this] = s__YDWEStringFormula___Sorting_total[this] - 1
            set i = i - 1
        else
            set j = i + 1
            loop
                exitwhen j > s__YDWEStringFormula___Sorting_total[this]
                if s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + j] == 0 or s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + j] == 0 then
                    set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + j] = s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + s__YDWEStringFormula___Sorting_total[this]]
                    set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + j] = s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + s__YDWEStringFormula___Sorting_total[this]]
                    set s__YDWEStringFormula___Sorting_total[this] = s__YDWEStringFormula___Sorting_total[this] - 1
                    set j = j - 1
                elseif s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + i] > s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + j] then
                    set k = s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + i]
                    set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + i] = s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + j]
                    set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + j] = k
                    set k = s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + i]
                    set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + i] = s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + j]
                    set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + j] = k
                elseif s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + i] == s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + j] then
                    set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + i] = s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + i] + s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + j]
                    set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + j] = 0
                    set j = j - 1
                endif
                set j = j + 1
            endloop
            set j = s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + i]
            loop
                exitwhen j == 0
                set s__YDWEStringFormula___Sorting_char[this] = s__YDWEStringFormula___Sorting_char[this] + YDWEStringFormula___Convert(s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + i], YDWEStringFormula___SEGMENT_LENGTH)
                set j = j - 1
            endloop
        endif
        set i = i + 1
    endloop
    return s__YDWEStringFormula___Sorting_char[this]
endfunction
function YDWEStringFormula___Adaptation takes nothing returns boolean
    return true
endfunction
function YDWEStringFormula___verify takes nothing returns boolean
    return HaveSavedInteger(YDHT, StringHash("YDWEStringFormula." + I2S(s__YDWEStringFormula___ItemIdMatrix_Data)), StringHash(I2S(GetItemTypeId(GetManipulatedItem()))))
endfunction
function YDWEStringFormula___GetCharges takes item it returns integer
    local integer charges = GetItemCharges(it)
    if charges == 0 then
        set charges = 1
    endif
    return charges
endfunction
function YDWEStringFormula___CraftItem takes nothing returns nothing
    local integer forx = 0
    local integer itmx = LoadInteger(YDHT, StringHash("YDWEStringFormula." + I2S(s__YDWEStringFormula___ItemIdMatrix_Data)), StringHash(I2S(GetItemTypeId(GetManipulatedItem()))))
    local integer size = StringLength(s__YDWEStringFormula___ItemIdMatrix_keyStr[itmx]) / s__YDWEStringFormula___ItemIdMatrix_keyLen[itmx]
    local integer inst = 0
    local integer numb = 0
    local integer sum = 0
    local integer tmpid = 0
    local integer i = 0
    local integer j = 0
    local boolean b = false
    local item it = null
    local item article = GetManipulatedItem()
    local unit caster = GetTriggerUnit()
    local item array items
    local integer array typeid
    local integer array amount
    local integer array surplus
    set i = 0
    loop
        exitwhen i == 6
        set it = UnitItemInSlot(caster, i)
        if it != null then
            set items[sum] = it
            set typeid[sum] = GetItemTypeId(it)
            set amount[sum] = YDWEStringFormula___GetCharges(it)
            if it == article then
                set b = true
            endif
            set sum = sum + 1
        endif
        set i = i + 1
        set it = null
    endloop
    if b == false then
        set items[sum] = article
        set typeid[sum] = GetItemTypeId(article)
        set amount[sum] = 1
        set sum = sum + 1
    endif
    loop
        exitwhen inst == size
        set forx = s__YDWEStringFormula___ItemIdMatrix_sub(itmx, inst)
        set numb = StringLength(s__YDWEStringFormula___FormulaMatrix_formula[forx]) / s__YDWEStringFormula___FormulaMatrix_segmLen[forx] - 1
        set i = 0
        loop
            exitwhen i == sum
            set surplus[i] = amount[i]
            set i = i + 1
        endloop
        set i = 0
        loop
            set tmpid = s__YDWEStringFormula___ItemIdMatrix_itemId[s__YDWEStringFormula___FormulaMatrix_sub(forx, i)]
            exitwhen i == numb
            set j = 0
            loop
                exitwhen j == sum
                if typeid[j] == tmpid and surplus[j] > 0 then
                    set surplus[j] = surplus[j] - 1
                    exitwhen true
                endif
                set j = j + 1
            endloop
            exitwhen j == sum
            set i = i + 1
        endloop
        if i == numb then
            if GetRandomInt(0, 99) < s__YDWEStringFormula___FormulaMatrix_chance[forx] then
                if s__YDWEStringFormula___FormulaMatrix_model[forx] != null then
                    call DestroyEffect(AddSpecialEffectTarget(s__YDWEStringFormula___FormulaMatrix_model[forx], caster, "origin"))
                endif
                if s__YDWEStringFormula___FormulaMatrix_message[forx] != null then
                    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, s__YDWEStringFormula___FormulaMatrix_message[forx])
                endif
                set i = 0
                loop
                    exitwhen i == sum
                    if surplus[i] > 0 and GetItemCharges(items[i]) > 0 then
                        call SetItemCharges(items[i], surplus[i])
                    elseif surplus[i] == 0 then
                        call RemoveItem(items[i])
                    endif
                    set i = i + 1
                endloop
                set it = CreateItem(tmpid, GetUnitX(caster), GetUnitY(caster))
                if GetItemCharges(it) > 0 then
                    call SetItemCharges(it, 1)
                    set i = 0
                    loop
                        exitwhen i == sum
                        if typeid[i] == tmpid then
                            call RemoveItem(items[i])
                            call SetItemCharges(it, surplus[i] + 1)
                        endif
                        set i = i + 1
                    endloop
                endif
                call UnitAddItem(caster, it)
                set bj_lastCombinedItem = it
                call YDWESyStemItemCombineTriggerAction()
            elseif s__YDWEStringFormula___FormulaMatrix_delete[forx] then
                set i = 0
                loop
                    exitwhen i == sum
                    if surplus[i] > 0 and GetItemCharges(items[i]) > 0 then
                        call SetItemCharges(items[i], surplus[i])
                    elseif surplus[i] == 0 then
                        call RemoveItem(items[i])
                    endif
                    set i = i + 1
                endloop
            endif
            set it = null
            exitwhen true
        endif
        set inst = inst + 1
    endloop
    if b == false then
        call RemoveItem(article)
    endif
    set i = 0
    loop
        exitwhen i == sum
        set items[i] = null
        set i = i + 1
    endloop
    set article = null
    set caster = null
    set it = null
endfunction
function YDWEStringFormula___Init takes nothing returns nothing
    local filterfunc f = Filter(function YDWEStringFormula___Adaptation)
    local trigger t = CreateTrigger()
    local integer i = 0
    loop
        exitwhen i > 15
        call TriggerRegisterPlayerUnitEvent(t, Player(i), EVENT_PLAYER_UNIT_PICKUP_ITEM, f)
        set i = i + 1
    endloop
    call TriggerAddCondition(t, Condition(function YDWEStringFormula___verify))
    call TriggerAddAction(t, function YDWEStringFormula___CraftItem)
    call DestroyFilter(f)
    set f = null
    set t = null
endfunction
function YDWENewItemsFormula takes integer type1, integer n1, integer type2, integer n2, integer type3, integer n3, integer type4, integer n4, integer type5, integer n5, integer type6, integer n6, integer eventually returns nothing
    local integer sort = s__YDWEStringFormula___Sorting_create(type1, n1, type2, n2, type3, n3, type4, n4, type5, n5, type6, n6, 0, 0)
    local integer itmx = s__YDWEStringFormula___ItemIdMatrix_assigns(eventually)
    local string f = I2S(YDWEStringFormula___SEGMENT_LENGTH) + s__YDWEStringFormula___Sorting_convert(sort)
    local string s = ""
    local integer i = 0
    set YDWEStringFormula___FormulaData = s__YDWEStringFormula___FormulaMatrix_memory(YDWEStringFormula___SEGMENT_LENGTH, f, itmx)
    if YDWEStringFormula___FormulaData > 0 then
        set s = YDWEStringFormula___Convert(YDWEStringFormula___FormulaData, YDWEStringFormula___SEGMENT_LENGTH)
        set i = 0
        loop
            exitwhen i > s__YDWEStringFormula___Sorting_total[sort]
            call s__YDWEStringFormula___ItemIdMatrix_memory(s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[sort] + i], s)
            set i = i + 1
        endloop
        call s__YDWEStringFormula___ItemIdMatrix_memory(itmx, s)
    endif
    call s__YDWEStringFormula___Sorting_deallocate(sort)
    set f = ""
    set s = ""
endfunction




function YDWETimerDestroyTextTag takes real pw, texttag tt returns nothing
    if pw <= 0 then
        set pw = .01
    endif
    call SetTextTagPermanent(tt, false)
    call SetTextTagLifespan(tt, pw)
    call SetTextTagFadepoint(tt, pw)
endfunction





function s__Tower_create takes unit u, integer item_num returns integer
    local integer tw = s__Tower__allocate()
    set s__Tower_u[tw] = u
    call sc__Tower_setAbility(tw)
    call sc__Tower_setItemNum(tw, item_num)
    return tw
endfunction
function s__Tower_IncAbility takes integer this, integer i returns nothing
    call IncUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i))
    call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i, LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i) + 1)
    call DisplayTextToPlayer(GetOwningPlayer(s__Tower_u[this]), 0, 0, GetUnitName(s__Tower_u[this]) + "的" + GetAbilityName(LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i)) + "已升级")
    if LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i) == $41303039 then
        call PauseUnit(s__Tower_u[this], true)
        call PauseUnit(s__Tower_u[this], false)
    endif
endfunction
function s__Tower_ResetCD takes integer this, integer i returns nothing
    call UnitRemoveAbility(s__Tower_u[this], LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i))
    call UnitAddAbility(s__Tower_u[this], LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i))
    call SetUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i), LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i))
endfunction
function s__Tower_setAbility takes integer this returns nothing
    local integer i = 0
    local integer tower_id = GetUnitTypeId(s__Tower_u[this])
    loop
        exitwhen i >= 11
        if LoadInteger(YDHT, tower_id * 2, i) != 0 then
            if GetUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i)) == 0 then
                call UnitAddAbility(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i))
            endif
            call SetUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i), LoadInteger(YDHT, tower_id * 3, i))
            call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i, LoadInteger(YDHT, tower_id * 2, i))
            call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i, LoadInteger(YDHT, tower_id * 3, i))
            if LoadInteger(YDHT, tower_id * 2, i) == $41303052 then
                call UnitRemoveAbility(s__Tower_u[this], $41303051)
                call UnitAddAbility(s__Tower_u[this], $41303051)
                call SetPlayerAbilityAvailableBJ(false, $41303051, GetOwningPlayer(s__Tower_u[this]))
                call SetUnitAbilityLevel(s__Tower_u[this], $4130304F, LoadInteger(YDHT, tower_id * 3, i))
                call SetUnitAbilityLevel(s__Tower_u[this], $41303050, LoadInteger(YDHT, tower_id * 3, i))
            endif
            if LoadInteger(YDHT, tower_id * 2, i) == $41303039 then
                call PauseUnit(s__Tower_u[this], true)
                call PauseUnit(s__Tower_u[this], false)
            endif
        endif
        set i = i + 1
    endloop
endfunction
function s__Tower_setItemNum takes integer this, integer item_num returns nothing
    if item_num > 0 then
        call UnitAddAbility(s__Tower_u[this], $41303131)
        call SetUnitAbilityLevel(s__Tower_u[this], $41303131, item_num)
        call UnitMakeAbilityPermanent(s__Tower_u[this], true, $41303131)
    endif
endfunction
function s__Tower_getItemNum takes integer this returns integer
    return GetUnitAbilityLevel(s__Tower_u[this], $41303131)
endfunction
function s__Tower_getUnit takes integer this returns unit
    return s__Tower_u[this]
endfunction
function getTowerInstance takes unit u returns integer
    local integer i = 0
    loop
        exitwhen i > tower_num
        if s__Tower_u[tower[i]] == u then
            return tower[i]
        endif
        set i = i + 1
    endloop
    return 0
endfunction
function SaveTowerAbility_1 takes integer tower_id, integer spell_id, integer level returns nothing
    local integer i = 0
    loop
        exitwhen i >= 11
        if LoadInteger(YDHT, tower_id * 2, i) == 0 then
            call SaveInteger(YDHT, tower_id * 2, i, spell_id)
            call SaveInteger(YDHT, tower_id * 3, i, level)
            exitwhen true
        endif
        set i = i + 1
    endloop
endfunction
function SaveTowerAbility takes nothing returns nothing
    call SaveTowerAbility_1($6F303030, $41303036, 1)
    call SaveTowerAbility_1($6F303042, $41303031, 1)
    call SaveTowerAbility_1($6F303031, $41303031, 2)
    call SaveTowerAbility_1($6F303043, $41303031, 3)
    call SaveTowerAbility_1($6F303044, $41303031, 4)
    call SaveTowerAbility_1($6E303030, $41303032, 1)
    call SaveTowerAbility_1($6E303131, $41303032, 2)
    call SaveTowerAbility_1($6E303137, $41303032, 3)
    call SaveTowerAbility_1($6E303031, $41303037, 1)
    call SaveTowerAbility_1($6E303132, $41303037, 2)
    call SaveTowerAbility_1($6E303059, $41303031, 3)
    call SaveTowerAbility_1($6E303059, $41303154, 1)
    call SaveTowerAbility_1($6E303134, $41303031, 3)
    call SaveTowerAbility_1($6E303134, $41303154, 2)
    call SaveTowerAbility_1($6E30305A, $41303031, 3)
    call SaveTowerAbility_1($6E30305A, $41303046, 1)
    call SaveTowerAbility_1($6E303135, $41303031, 3)
    call SaveTowerAbility_1($6E303135, $41303046, 2)
    call SaveTowerAbility_1($6E303130, $41303039, 1)
    call SaveTowerAbility_1($6E303133, $41303039, 2)
    call SaveTowerAbility_1($6E303032, $41303041, 1)
    call SaveTowerAbility_1($6E303032, $41303046, 2)
    call SaveTowerAbility_1($6E303136, $41303041, 2)
    call SaveTowerAbility_1($6E303136, $41303046, 2)
    call SaveTowerAbility_1($6F303032, $41303031, 5)
    call SaveTowerAbility_1($6F303032, $41303154, 2)
    call SaveTowerAbility_1($6F303032, $41303042, 1)
    call SaveTowerAbility_1($4F303033, $41303044, 1)
    call SaveTowerAbility_1($4F303033, $41303031, 5)
    call SaveTowerAbility_1($68303031, $41303048, 1)
    call SaveTowerAbility_1($68303042, $41303048, 2)
    call SaveTowerAbility_1($68303046, $41303048, 3)
    call SaveTowerAbility_1($68303047, $41303049, 1)
    call SaveTowerAbility_1($68303043, $41303049, 2)
    call SaveTowerAbility_1($68303048, $41303049, 3)
    call SaveTowerAbility_1($6E303037, $4130304A, 1)
    call SaveTowerAbility_1($6E303138, $4130304A, 2)
    call SaveTowerAbility_1($6E303138, $4130304B, 1)
    call SaveTowerAbility_1($6E303139, $4130304B, 2)
    call SaveTowerAbility_1($6E303139, $4130304C, 2)
    call SaveTowerAbility_1($6E303038, $41303052, 1)
    call SaveTowerAbility_1($6E303141, $41303052, 1)
    call SaveTowerAbility_1($6E303141, $4130304C, 1)
    call SaveTowerAbility_1($6E303142, $41303052, 2)
    call SaveTowerAbility_1($6E303142, $4130304C, 2)
    call SaveTowerAbility_1($6E303143, $4130304E, 1)
    call SaveTowerAbility_1($6E303144, $4130304E, 2)
    call SaveTowerAbility_1($6E303145, $4130304E, 3)
    call SaveTowerAbility_1($6E303145, $41303054, 1)
    call SaveTowerAbility_1($6E303146, $41303056, 1)
    call SaveTowerAbility_1($6E303147, $41303056, 2)
    call SaveTowerAbility_1($6E303148, $41303056, 3)
    call SaveTowerAbility_1($6E303148, $41303052, 2)
    call SaveTowerAbility_1($6E30314B, $41303054, 1)
    call SaveTowerAbility_1($6E303149, $41303054, 2)
    call SaveTowerAbility_1($6E30314A, $41303054, 3)
    call SaveTowerAbility_1($6E30314A, $41303057, 1)
    call SaveTowerAbility_1($6E30314C, $41303058, 1)
    call SaveTowerAbility_1($6E30314D, $41303058, 2)
    call SaveTowerAbility_1($6E30314E, $41303058, 3)
    call SaveTowerAbility_1($6E30314E, $41303057, 2)
    call SaveTowerAbility_1($6E30314E, $41303052, 1)
    call SaveTowerAbility_1($6E30314F, $41303058, 3)
    call SaveTowerAbility_1($6E30314F, $41303057, 3)
    call SaveTowerAbility_1($6E30314F, $41303130, 1)
    call SaveTowerAbility_1($48303034, $41303052, 3)
    call SaveTowerAbility_1($48303034, $4130304C, 3)
    call SaveTowerAbility_1($48303034, $41303049, 2)
    call SaveTowerAbility_1($65303030, $41303151, 1)
    call SaveTowerAbility_1($65303030, $41303152, 1)
    call SaveTowerAbility_1($65303041, $41303151, 2)
    call SaveTowerAbility_1($65303041, $41303152, 2)
    call SaveTowerAbility_1($65303042, $41303151, 3)
    call SaveTowerAbility_1($65303042, $41303152, 2)
    call SaveTowerAbility_1($65303031, $41303151, 1)
    call SaveTowerAbility_1($65303031, $4130334C, 1)
    call SaveTowerAbility_1($65303044, $41303151, 2)
    call SaveTowerAbility_1($65303044, $4130334C, 2)
    call SaveTowerAbility_1($65303043, $41303151, 2)
    call SaveTowerAbility_1($65303043, $4130334C, 3)
    call SaveTowerAbility_1($6E303033, $41303151, 2)
    call SaveTowerAbility_1($6E303033, $41303156, 1)
    call SaveTowerAbility_1($6E303151, $41303151, 2)
    call SaveTowerAbility_1($6E303151, $41303156, 2)
    call SaveTowerAbility_1($6E303152, $41303151, 2)
    call SaveTowerAbility_1($6E303152, $41303156, 3)
    call SaveTowerAbility_1($6E303153, $41303151, 2)
    call SaveTowerAbility_1($6E303153, $41303232, 1)
    call SaveTowerAbility_1($6E303154, $41303151, 2)
    call SaveTowerAbility_1($6E303154, $41303232, 2)
    call SaveTowerAbility_1($6E303155, $41303151, 3)
    call SaveTowerAbility_1($6E303155, $41303234, 1)
    call SaveTowerAbility_1($6E303156, $41303151, 3)
    call SaveTowerAbility_1($6E303156, $41303234, 2)
    call SaveTowerAbility_1($6E303157, $41303151, 3)
    call SaveTowerAbility_1($6E303157, $41303234, 3)
    call SaveTowerAbility_1($6E303158, $41303151, 3)
    call SaveTowerAbility_1($6E303158, $41303236, 1)
    call SaveTowerAbility_1($6E303159, $41303151, 4)
    call SaveTowerAbility_1($6E303159, $41303236, 2)
    call SaveTowerAbility_1($6E30315A, $41303151, 2)
    call SaveTowerAbility_1($6E30315A, $41303237, 1)
    call SaveTowerAbility_1($6E303230, $41303151, 3)
    call SaveTowerAbility_1($6E303230, $41303237, 2)
    call SaveTowerAbility_1($6E303231, $41303151, 4)
    call SaveTowerAbility_1($6E303231, $41303237, 2)
    call SaveTowerAbility_1($6E303232, $41303151, 3)
    call SaveTowerAbility_1($6E303232, $41303243, 1)
    call SaveTowerAbility_1($6E303233, $41303151, 4)
    call SaveTowerAbility_1($6E303233, $41303243, 2)
    call SaveTowerAbility_1($6E303234, $41303151, 3)
    call SaveTowerAbility_1($6E303234, $41303244, 1)
    call SaveTowerAbility_1($6E303235, $41303151, 4)
    call SaveTowerAbility_1($6E303235, $41303244, 2)
    call SaveTowerAbility_1($6E303236, $41303151, 5)
    call SaveTowerAbility_1($6E303236, $41303245, 2)
    call SaveTowerAbility_1($6E303237, $41303151, 5)
    call SaveTowerAbility_1($6E303237, $41303239, 1)
    call SaveTowerAbility_1($6E303237, $41303248, 2)
    call SaveTowerAbility_1($48303030, $41303151, 6)
    call SaveTowerAbility_1($48303030, $41303246, 1)
    call SaveTowerAbility_1($48303030, $41303245, 3)
    call SaveTowerAbility_1($6E303041, $4130324B, 1)
    call SaveTowerAbility_1($6E303238, $4130324B, 2)
    call SaveTowerAbility_1($6E303239, $4130324B, 3)
    call SaveTowerAbility_1($6E303241, $4130324B, 4)
    call SaveTowerAbility_1($6E303242, $4130324B, 5)
    call SaveTowerAbility_1($6E303243, $41303254, 1)
    call SaveTowerAbility_1($6E303244, $41303254, 1)
    call SaveTowerAbility_1($6E303245, $41303254, 2)
    call SaveTowerAbility_1($6E303043, $41303249, 1)
    call SaveTowerAbility_1($6E303246, $41303249, 2)
    call SaveTowerAbility_1($6E303247, $4130324D, 2)
    call SaveTowerAbility_1($6E303042, $4130324B, 2)
    call SaveTowerAbility_1($6E303042, $4130324E, 1)
    call SaveTowerAbility_1($6E303248, $4130324B, 3)
    call SaveTowerAbility_1($6E303248, $41303251, 1)
    call SaveTowerAbility_1($6E303249, $4130324B, 4)
    call SaveTowerAbility_1($6E303249, $41303252, 1)
    call SaveTowerAbility_1($6E30324A, $4130324B, 5)
    call SaveTowerAbility_1($6E30324A, $4130324E, 2)
    call SaveTowerAbility_1($6E30324B, $41303254, 1)
    call SaveTowerAbility_1($6E30324B, $41303259, 1)
    call SaveTowerAbility_1($6E30324C, $41303254, 1)
    call SaveTowerAbility_1($6E30324C, $41303337, 1)
    call SaveTowerAbility_1($6E30324D, $41303254, 1)
    call SaveTowerAbility_1($6E30324D, $41303331, 1)
    call SaveTowerAbility_1($6E303045, $41303254, 1)
    call SaveTowerAbility_1($6E303045, $41303256, 1)
    call SaveTowerAbility_1($6E30324E, $41303254, 2)
    call SaveTowerAbility_1($6E30324E, $41303251, 3)
    call SaveTowerAbility_1($6E30324F, $41303254, 2)
    call SaveTowerAbility_1($6E30324F, $41303259, 2)
    call SaveTowerAbility_1($6E303250, $41303252, 4)
    call SaveTowerAbility_1($6E303251, $41303254, 2)
    call SaveTowerAbility_1($6E303251, $41303256, 2)
    call SaveTowerAbility_1($6E303252, $41303254, 2)
    call SaveTowerAbility_1($6E303252, $41303337, 2)
    call SaveTowerAbility_1($6E303253, $41303254, 2)
    call SaveTowerAbility_1($6E303253, $41303331, 2)
    call SaveTowerAbility_1($6E303253, $41303334, 1)
    call SaveTowerAbility_1($4E303047, $41303254, 3)
    call SaveTowerAbility_1($4E303047, $41303331, 3)
    call SaveTowerAbility_1($4E303047, $41303334, 2)
    call SaveTowerAbility_1($4E303047, $41303332, 1)
    call SaveTowerAbility_1($6830304F, $41303530, 1)
    call SaveTowerAbility_1($68303050, $41303530, 2)
    call SaveTowerAbility_1($68303051, $41303530, 3)
    call SaveTowerAbility_1($68303052, $41303457, 1)
    call SaveTowerAbility_1($68303053, $41303457, 2)
    call SaveTowerAbility_1($68303054, $41303457, 3)
    call SaveTowerAbility_1($68303055, $41303450, 1)
    call SaveTowerAbility_1($68303056, $41303450, 2)
    call SaveTowerAbility_1($68303056, $4130344F, 1)
    call SaveTowerAbility_1($68303057, $41303450, 2)
    call SaveTowerAbility_1($68303057, $4130344F, 2)
    call SaveTowerAbility_1($68303058, $41303450, 3)
    call SaveTowerAbility_1($68303058, $4130344F, 2)
    call SaveTowerAbility_1($68303059, $4130344E, 1)
    call SaveTowerAbility_1($6830305A, $41303458, 1)
    call SaveTowerAbility_1($68303130, $41303455, 1)
    call SaveTowerAbility_1($68303131, $41303455, 2)
    call SaveTowerAbility_1($68303131, $41303453, 1)
    call SaveTowerAbility_1($68303132, $41303456, 1)
    call SaveTowerAbility_1($68303133, $41303456, 2)
    call SaveTowerAbility_1($68303134, $41303456, 3)
    call SaveTowerAbility_1($68303135, $41303451, 1)
    call SaveTowerAbility_1($68303135, $41303454, 1)
    call SaveTowerAbility_1($48303137, $4130344E, 4)
    call SaveTowerAbility_1($48303137, $41303459, 1)
    call SaveTowerAbility_1($48303137, $41303534, 1)
    call SaveTowerAbility_1($6F303053, $41303435, 1)
    call SaveTowerAbility_1($6F303054, $41303435, 2)
    call SaveTowerAbility_1($6F303055, $41303435, 3)
    call SaveTowerAbility_1($6F303056, $41303435, 4)
    call SaveTowerAbility_1($6F303057, $41303435, 5)
    call SaveTowerAbility_1($4F303058, $41303435, 6)
    call SaveTowerAbility_1($4F303059, $41303438, 1)
    call SaveTowerAbility_1($4F303059, $41303439, 1)
    call SaveTowerAbility_1($4F303059, $41303441, 1)
    call SaveTowerAbility_1($6F30305A, $41303442, 1)
    call SaveTowerAbility_1($6F303130, $41303437, 1)
endfunction







function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_MapInit)
endfunction
function InitCustomPlayerSlots takes nothing returns nothing
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)
    call SetPlayerStartLocation(Player(4), 4)
    call ForcePlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(4), false)
    call SetPlayerController(Player(4), MAP_CONTROL_COMPUTER)
    call SetPlayerStartLocation(Player(5), 5)
    call ForcePlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(5), false)
    call SetPlayerController(Player(5), MAP_CONTROL_COMPUTER)
endfunction
function InitCustomTeams takes nothing returns nothing
    call SetPlayerTeam(Player(0), 0)
    call SetPlayerState(Player(0), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(1), 0)
    call SetPlayerState(Player(1), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(2), 0)
    call SetPlayerState(Player(2), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(3), 0)
    call SetPlayerState(Player(3), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerTeam(Player(4), 0)
    call SetPlayerState(Player(4), PLAYER_STATE_ALLIED_VICTORY, 1)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
    call SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
    call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
    call SetPlayerTeam(Player(5), 1)
    call SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
endfunction
function InitAllyPriorities takes nothing returns nothing
    call SetStartLocPrioCount(0, 3)
    call SetStartLocPrio(0, 0, 1, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 1, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(0, 2, 3, MAP_LOC_PRIO_LOW)
    call SetStartLocPrioCount(1, 1)
    call SetStartLocPrio(1, 0, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(2, 2)
    call SetStartLocPrio(2, 0, 1, MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(2, 1, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(3, 1)
    call SetStartLocPrio(3, 0, 2, MAP_LOC_PRIO_HIGH)
endfunction
function main takes nothing returns nothing
    call SetCameraBounds(- 5376. + GetCameraMargin(CAMERA_MARGIN_LEFT), - 5376. + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 5376. - GetCameraMargin(CAMERA_MARGIN_RIGHT), 5376. - GetCameraMargin(CAMERA_MARGIN_TOP), - 5376. + GetCameraMargin(CAMERA_MARGIN_LEFT), 5376. - GetCameraMargin(CAMERA_MARGIN_TOP), 5376. - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 5376. + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call CreateRegions()
    call CreateAllUnits()
    call InitBlizzard()
    call ExecuteFunc("jasshelper__initstructs1472141390")
    call ExecuteFunc("FrameLibrary___init")
    call ExecuteFunc("YDTriggerSaveLoadSystem___Init")
    call ExecuteFunc("InitializeYD")
    call ExecuteFunc("YDWEGeneralBounsSystem___Initialize")
    call ExecuteFunc("YDWEStringFormula___Init")
    call InitGlobals()
    call InitCustomTriggers()
    call ConditionalTriggerExecute(gg_trg_MapInit)
endfunction
function config takes nothing returns nothing
    call SetMapName("决战江湖TD")
    call SetMapDescription("决战江湖TD
    |CFF00ff00版本：v1.1.1
    |CFF00ff00 =原汁原味的武侠游戏=
    |CFFffff00 =丰富多样的玩法=
    |CFFff0000 =紧张刺激的游戏节奏=")
    call SetPlayers(6)
    call SetTeams(6)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    call DefineStartLocation(0, - 832., 512.)
    call DefineStartLocation(1, - 1152., - 4224.)
    call DefineStartLocation(2, - 2944., - 3264.)
    call DefineStartLocation(3, - 4352., - 3712.)
    call DefineStartLocation(4, 2176., 0.)
    call DefineStartLocation(5, 1728., - 1600.)
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction
function sa__Frame_onDestroy takes nothing returns boolean
    local integer this = f__arg_this
    if s__Frame_id[this] != 0 then
        call DzDestroyFrame(s__Frame_id[this])
    endif
    set s__Frame_id[this] = 0
    return true
endfunction
function sa__Tower_setAbility takes nothing returns boolean
    local integer this = f__arg_this
    local integer i = 0
    local integer tower_id = GetUnitTypeId(s__Tower_u[this])
    loop
        exitwhen i >= 11
        if LoadInteger(YDHT, tower_id * 2, i) != 0 then
            if GetUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i)) == 0 then
                call UnitAddAbility(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i))
            endif
            call SetUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i), LoadInteger(YDHT, tower_id * 3, i))
            call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i, LoadInteger(YDHT, tower_id * 2, i))
            call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i, LoadInteger(YDHT, tower_id * 3, i))
            if LoadInteger(YDHT, tower_id * 2, i) == $41303052 then
                call UnitRemoveAbility(s__Tower_u[this], $41303051)
                call UnitAddAbility(s__Tower_u[this], $41303051)
                call SetPlayerAbilityAvailableBJ(false, $41303051, GetOwningPlayer(s__Tower_u[this]))
                call SetUnitAbilityLevel(s__Tower_u[this], $4130304F, LoadInteger(YDHT, tower_id * 3, i))
                call SetUnitAbilityLevel(s__Tower_u[this], $41303050, LoadInteger(YDHT, tower_id * 3, i))
            endif
            if LoadInteger(YDHT, tower_id * 2, i) == $41303039 then
                call PauseUnit(s__Tower_u[this], true)
                call PauseUnit(s__Tower_u[this], false)
            endif
        endif
        set i = i + 1
    endloop
    return true
endfunction
function sa__Tower_setItemNum takes nothing returns boolean
    local integer this = f__arg_this
    local integer item_num = f__arg_integer1
    if item_num > 0 then
        call UnitAddAbility(s__Tower_u[this], $41303131)
        call SetUnitAbilityLevel(s__Tower_u[this], $41303131, item_num)
        call UnitMakeAbilityPermanent(s__Tower_u[this], true, $41303131)
    endif
    return true
endfunction
function sa__YDWEStringFormula___Sorting_onDestroy takes nothing returns boolean
    local integer this = f__arg_this
    local integer i = 0
    loop
        exitwhen i == s___YDWEStringFormula___Sorting_stack_size
        set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this] + i] = 0
        set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this] + i] = 0
        set i = i + 1
    endloop
    set s__YDWEStringFormula___Sorting_char[this] = ""
    return true
endfunction
function sa__YDWEStringFormula___Inventory_onDestroy takes nothing returns boolean
    local integer this = f__arg_this
    call FlushChildHashtable(YDHT, StringHash("YDWEStringFormula." + I2S(this)))
    return true
endfunction
function sa___prototype25_SetUnitMoveSpeedEx takes nothing returns boolean
    call s__ModSpeed_setSpeed(f__arg_unit1, f__arg_real1 * 1.)
    return true
endfunction
function jasshelper__initstructs1472141390 takes nothing returns nothing
    set st__Frame_onDestroy = CreateTrigger()
    call TriggerAddCondition(st__Frame_onDestroy, Condition(function sa__Frame_onDestroy))
    set st__Tower_setAbility = CreateTrigger()
    call TriggerAddCondition(st__Tower_setAbility, Condition(function sa__Tower_setAbility))
    set st__Tower_setItemNum = CreateTrigger()
    call TriggerAddCondition(st__Tower_setItemNum, Condition(function sa__Tower_setItemNum))
    set st__YDWEStringFormula___Sorting_onDestroy = CreateTrigger()
    call TriggerAddCondition(st__YDWEStringFormula___Sorting_onDestroy, Condition(function sa__YDWEStringFormula___Sorting_onDestroy))
    set st__YDWEStringFormula___Inventory_onDestroy[3] = CreateTrigger()
    set st__YDWEStringFormula___Inventory_onDestroy[4] = st__YDWEStringFormula___Inventory_onDestroy[3]
    call TriggerAddCondition(st__YDWEStringFormula___Inventory_onDestroy[3], Condition(function sa__YDWEStringFormula___Inventory_onDestroy))
    set st___prototype25[1] = CreateTrigger()
    call TriggerAddAction(st___prototype25[1], function sa___prototype25_SetUnitMoveSpeedEx)
    call TriggerAddCondition(st___prototype25[1], Condition(function sa___prototype25_SetUnitMoveSpeedEx))
    call ExecuteFunc("s__ModSpeed_Init___onInit")
    call ExecuteFunc("s__YDWEStringFormula___ItemIdMatrix_onInit")
    call ExecuteFunc("s__YDWEStringFormula___FormulaMatrix_onInit")
endfunction
