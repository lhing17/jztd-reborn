// 游戏细节处理

function onUpdate takes nothing returns nothing
	call SavePlayerHandle(YDLOC, 0x4481DC09, 0xBAB343BB, GetLocalPlayer())
	call SetCameraFieldForPlayer(LoadPlayerHandle(YDLOC, 0x4481DC09, 0xBAB343BB), CAMERA_FIELD_TARGET_DISTANCE, I2R(LoadInteger(YDHT, GetHandleId(Player(0)), 0xA816E128)), 0.00)
	call SetCameraFieldForPlayer(LoadPlayerHandle(YDLOC, 0x4481DC09, 0xBAB343BB), CAMERA_FIELD_ANGLE_OF_ATTACK, 304.00, 0.00)
endfunction

function changeCameraDistance takes nothing returns nothing
	call SavePlayerHandle(YDLOC, 0x4F134CEC, 0xBAB343BB, DzGetTriggerKeyPlayer())
	if ( ( DzGetWheelDelta() > 0 ) ) then
		if ( ( LoadInteger(YDHT, GetHandleId(Player(0)), 0xA816E128) > 400 ) ) then
			call SaveInteger(YDHT, GetHandleId(Player(0)), 0xA816E128, ( LoadInteger(YDHT, GetHandleId(Player(0)), 0xA816E128) - 100 ))
		else
		endif
	else
		if ( ( LoadInteger(YDHT, GetHandleId(Player(0)), 0xA816E128) < 3500 ) ) then
			call SaveInteger(YDHT, GetHandleId(Player(0)), 0xA816E128, ( LoadInteger(YDHT, GetHandleId(Player(0)), 0xA816E128) + 100 ))
		else
		endif
	endif
endfunction

function registerWheelEvent takes nothing returns nothing
    call SaveInteger(YDHT, GetHandleId(Player(0)), 0xA816E128, 2200)
	if GetLocalPlayer() == GetLocalPlayer() then
		call DzFrameSetUpdateCallbackByCode(function onUpdate)
		call DzTriggerRegisterMouseWheelEventByCode(null, false, function changeCameraDistance)
	endif
endfunction

function GameDetail_Trigger takes nothing returns nothing
    local timer tm = CreateTimer()
    // 为本地玩家注册滚轮事件（滚轮缩放视角）
	call TimerStart(tm, 0.05, false, function registerWheelEvent)
	set tm = null
endfunction
