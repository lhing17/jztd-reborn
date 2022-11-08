globals
	Frame array tooltipWidget

	// UI设置对齐锚点的常量 DzFrameSetPoint achor定义，从0开始
	constant integer TOPLEFT = 0
	constant integer TOP = 1
	constant integer TOPRIGHT = 2
	constant integer LEFT = 3
	constant integer CENTER = 4
	constant integer RIGHT = 5
	constant integer BOTTOMLEFT = 6
	constant integer BOTTOM = 7
	constant integer BOTTOMRIGHT = 8
	
	//DzFrameSetScript  注册ui事件的事件ID
	constant integer NONE = 0
	constant integer FRAME_EVENT_PRESSED = 1
	constant integer FRAME_MOUSE_ENTER = 2
	constant integer FRAME_MOUSE_LEAVE = 3
	constant integer FRAME_MOUSE_UP = 4
	constant integer FRAME_MOUSE_DOWN = 5
	constant integer FRAME_MOUSE_WHEEL = 6
	constant integer FRAME_FOCUS_ENTER = FRAME_MOUSE_ENTER
	constant integer FRAME_FOCUS_LEAVE = FRAME_MOUSE_LEAVE
	constant integer FRAME_CHECKBOX_CHECKED = 7
	constant integer FRAME_CHECKBOX_UNCHECKED = 8
	constant integer FRAME_EDITBOX_TEXT_CHANGED = 9
	constant integer FRAME_POPUPMENU_ITEM_CHANGE_START = 10
	constant integer FRAME_POPUPMENU_ITEM_CHANGED = 11
	constant integer FRAME_MOUSE_DOUBLECLICK = 12
	constant integer FRAME_SPRITE_ANIM_UPDATE = 13

	integer array originalAbilityButton
endglobals

function hideOriginalTooltip takes nothing returns nothing
	call DzFrameSetPoint(DzFrameGetTooltip(), BOTTOMRIGHT, DzFrameGetCommandBarButton(0, 3), TOPRIGHT, 0.80, 0.60)
endfunction

function showOriginalTooltip takes nothing returns nothing
	call DzFrameSetPoint(DzFrameGetTooltip(), BOTTOMRIGHT, DzFrameGetCommandBarButton(0, 3), TOPRIGHT, 0.01, 0.035)
endfunction

function showTooltip takes nothing returns nothing
	local integer i = 1 + GetPlayerId(DzGetTriggerUIEventPlayer())
	local integer cont = 0
	local string str = ""
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		if DzGetTriggerUIEventFrame() == originalAbilityButton[5] then
			if unitInSelection[i] == null or IsBuilder(GetUnitTypeId(unitInSelection[i])) or GetUnitTypeId(unitInSelection[i]) == 'o00R' or GetOwningPlayer(unitInSelection[i]) != DzGetTriggerUIEventPlayer() then
				return
			endif
			call hideOriginalTooltip()

			set cont = LoadInteger(CONT_HT, GetHandleId(unitInSelection[i]), CONT_KEY)
			set str = "杀敌数：" + I2S(cont) + "\n内力上限+" + I2S(2 * cont) + "\n武学伤害+" + I2S(cont / 2) + "%"
			call tooltipWidget[3].setText(str)
			call tooltipWidget[1].show()
		endif
	endif
endfunction

function hideTooltip takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		if DzGetTriggerUIEventFrame() == originalAbilityButton[5] then
			call showOriginalTooltip()
			call tooltipWidget[1].hide()
		endif
	endif
endfunction

function drawUI_Conditions takes nothing returns boolean

	local integer j = 1

	set originalAbilityButton[1] = DzFrameGetCommandBarButton(0, 0)
	set originalAbilityButton[2] = DzFrameGetCommandBarButton(0, 1)
	set originalAbilityButton[3] = DzFrameGetCommandBarButton(0, 2)
	set originalAbilityButton[4] = DzFrameGetCommandBarButton(0, 3)
	set originalAbilityButton[5] = DzFrameGetCommandBarButton(1, 0)
	set originalAbilityButton[6] = DzFrameGetCommandBarButton(1, 1)
	set originalAbilityButton[7] = DzFrameGetCommandBarButton(1, 2)
	set originalAbilityButton[8] = DzFrameGetCommandBarButton(1, 3)
	set originalAbilityButton[9] = DzFrameGetCommandBarButton(2, 0)
	set originalAbilityButton[10] = DzFrameGetCommandBarButton(2, 1)
	set originalAbilityButton[11] = DzFrameGetCommandBarButton(2, 2)
	set originalAbilityButton[12] = DzFrameGetCommandBarButton(2, 3)
	call DzLoadToc("ui\\custom.toc")
	
	// 功勋的说明
	set tooltipWidget[1] = Frame.newTips0(GUI, "tipbox")
	call tooltipWidget[1].hide()
	
	set tooltipWidget[2] = Frame.newText1(tooltipWidget[1], "|cFF00FF00功勋|r", "TXA14")
	call tooltipWidget[2].setSize(0.22, 0)

	set tooltipWidget[3] = Frame.newText1(tooltipWidget[1], "杀敌数：100\n内力上限+200\n伤害+50%", "TXA11")
	call tooltipWidget[3].setSize(0.22, 0)

	call tooltipWidget[3].setPoint(BOTTOMRIGHT, Frame.getFrame(originalAbilityButton[4]), TOPRIGHT, 0.01, 0.035)
	call tooltipWidget[2].setPoint(BOTTOM, tooltipWidget[3], TOP, 0, 0.005)
	call tooltipWidget[1].setPoint(TOPLEFT, tooltipWidget[2], TOPLEFT, - 0.005, 0.005)
	call tooltipWidget[1].setPoint(BOTTOMRIGHT, tooltipWidget[3], BOTTOMRIGHT, 0.005, - 0.005)

	set j = 1
	loop
		exitwhen j > 12
		call DzFrameSetScriptByCode(originalAbilityButton[j], FRAME_MOUSE_ENTER, function showTooltip, false)
		call DzFrameSetScriptByCode(originalAbilityButton[j], FRAME_MOUSE_LEAVE, function hideTooltip, false)
		set j = j + 1
	endloop

	
	return false
endfunction




function initUI takes nothing returns nothing
	local trigger t = CreateTrigger()
	local integer i = 1
	local integer id = 0
	
	call TriggerRegisterTimerEventSingle(t, 1.)
	call TriggerAddCondition(t, Condition(function drawUI_Conditions))
	
	set t = null
endfunction


