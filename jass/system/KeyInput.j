function KeyInput takes nothing returns nothing
    local string s = GetEventPlayerChatString()
    local player p = GetTriggerPlayer()
    local integer i = GetPlayerId(p) + 1
    if s == "+" then
        call SetCameraFieldForPlayer(p, CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) + 200., 1.)
    endif
    if s == "-" then
        call SetCameraFieldForPlayer(p, CAMERA_FIELD_TARGET_DISTANCE, GetCameraField(CAMERA_FIELD_TARGET_DISTANCE) - 200., 1.)
    endif
    if s == "ckrp" then
        call DisplayTimedTextToPlayer(p, 0, 0, 15, "|cffff6800当前人品值为" + I2S(luck[i]))
    endif
    if s == "testBo" and udg_isTest[i] then
        set wave = 54
    endif
    if s == "addSpeed250" and udg_isTest[i] then
        call setAttackSpeed(unitInSelection[i], 250)
    endif

    if s == "combo" and udg_isTest[i] then
        call combo(unitInSelection[i])
    endif
    if s == "cx" or s == "CX" then
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9系统提示：|r" + "|CFFFE890D" + "战斗力：" + I2S(udg_zdl[i]))
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9系统提示：|r" + "|CFFFE890D" + "积分：" + I2S(udg_point[i]))
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9系统提示：|r" + "|CFFFE890D" + "每局可用积分剩余：" + I2S(MAX_POINT - udg_pointMax[i]))
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9系统提示：|r" + "|CFFFE890D" + "通关次数：" + I2S(udg_success[i]))
    endif
    if s == "ck" then
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9系统提示：|r" + "|CFFFE890D" + "伤害第1名 " + GetUnitName(LoadUnitHandle(YDHT, DAMAGE_UNIT_KEY, 1)) + "：" + R2S(LoadReal(YDHT, DAMAGE_KEY, 1)))
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9系统提示：|r" + "|CFFFE890D" + "伤害第2名 " + GetUnitName(LoadUnitHandle(YDHT, DAMAGE_UNIT_KEY, 2)) + "：" + R2S(LoadReal(YDHT, DAMAGE_KEY, 2)))
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9系统提示：|r" + "|CFFFE890D" + "伤害第3名 " + GetUnitName(LoadUnitHandle(YDHT, DAMAGE_UNIT_KEY, 3)) + "：" + R2S(LoadReal(YDHT, DAMAGE_KEY, 3)))
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9系统提示：|r" + "|CFFFE890D" + "伤害第4名 " + GetUnitName(LoadUnitHandle(YDHT, DAMAGE_UNIT_KEY, 4)) + "：" + R2S(LoadReal(YDHT, DAMAGE_KEY, 4)))
    endif
    if s == "ChuBoss1" and udg_isTest[i] then
        call spawnBoss(i, 1)
    endif
    if s == "ChuBoss3" and udg_isTest[i] then
        call spawnBoss(i, 3)
    endif
    if s == "survive" and udg_isTest[i] then
        set gameMode = 1
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9系统提示：|r|CFFFE890D已开启生存模式")
    endif
    if s == "wisdomball" and udg_isTest[i] then
        set wisbomBall[i] = CreateUnit(p, 'o00R', wisdomBallX[i], wisdomBallY[i], 270)
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9系统提示：|r|CFFFE890D创建了智慧球")
    endif
    if s == "wave54" and udg_isTest[i] then
        set wave = 54
    endif
    if StringHash(s) == 1661513981 then
        set udg_isTest[i] = true
    endif
    if s == "JZTD666" or s == "jztd666" then
        set qqTeamAward[i] = true
        call DzAPI_Map_StoreBoolean(p, "qqTeamAward" , true)
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9[系统]：|r|CFFFE890D恭喜解锁了QQ群福利")
    endif
    if s == "showName" then
        call BJDebugMsg(GetPlayerName(Player(i - 1)))
        if GetPlayerName(Player(i - 1)) == "zeikale" then
            call BJDebugMsg("zeikale")
        else
            call BJDebugMsg("not zeikale")
        endif
    endif
    set p = null
endfunction

function KeyInputSystem takes nothing returns nothing
    local trigger t = CreateTrigger()
    local integer i = 0
    loop
        exitwhen i > 6
        call TriggerRegisterPlayerChatEvent(t, Player(i), "", true)
        set i = i + 1
    endloop
    call TriggerAddAction(t, function KeyInput)
    set t = null
endfunction
