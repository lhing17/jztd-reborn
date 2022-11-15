globals
	Frame array tooltipWidget

	Frame array itemTooltipWidget

	// 显示塔的属性
	Frame array towerTooltipWidget

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
	integer array originalItemButton
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
			if unitInSelection[i] == null or IsBuilder(GetUnitTypeId(unitInSelection[i])) or GetUnitTypeId(unitInSelection[i]) == 'o00R'  or GetUnitTypeId(unitInSelection[i]) == 'o00N' or GetOwningPlayer(unitInSelection[i]) != DzGetTriggerUIEventPlayer() then
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

function getWeaponRandomAttrTooltip takes item it returns string
	local integer attr = 0
	local integer value = 0
	local string str = ""
	if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY) != 0 then
		set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY)
		set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_VALUE_KEY)
		set str = str + affixTitle[attr] + "：" + affixDesc[attr]
		if value != 0 then
			if attr == 13 then
				set str = str + R2S(value * 0.1)
			else
				set str = str + I2S(value)
			endif
		endif
		if attr == 1 or attr == 6 or attr == 7 or attr == 8 or attr == 9 or attr == 10 or attr == 11 or attr == 13 or attr == 14 then
			set str = str + "%"
		endif 
	endif
	if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY) != 0 then
		set str = str + "\n"
		set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY)
		set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_VALUE_KEY)
		set str = str + affixTitle[attr] + "：" + affixDesc[attr]
		if value != 0 then
			if attr == 13 then
				set str = str + R2S(value * 0.1)
			else
				set str = str + I2S(value)
			endif
		endif
		if attr == 1 or attr == 6 or attr == 7 or attr == 8 or attr == 9 or attr == 10 or attr == 11 or attr == 13 or attr == 14 then
			set str = str + "%"
		endif 
	endif
	if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY) != 0 then
		set str = str + "\n"
		set attr = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY)
		set value = LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_VALUE_KEY)
		set str = str + affixTitle[attr] + "：" + affixDesc[attr]
		if value != 0 then
			if attr == 13 then
				set str = str + R2S(value * 0.1)
			else
				set str = str + I2S(value)
			endif
		endif
		if attr == 1 or attr == 6 or attr == 7 or attr == 8 or attr == 9 or attr == 10 or attr == 11 or attr == 13 or attr == 14 then
			set str = str + "%"
		endif 
	endif
	return str
endfunction

function setWeaponTooltip takes item it returns nothing
	local integer id = GetItemTypeId(it)
	local string name = YDWEGetObjectPropertyString(YDWE_OBJECT_TYPE_ITEM, id, "Name")
	local string art = YDWEGetObjectPropertyString(YDWE_OBJECT_TYPE_ITEM, id, "Art")
	local string description = YDWEGetObjectPropertyString(YDWE_OBJECT_TYPE_ITEM, id, "Description")
	local string randomAttr = getWeaponRandomAttrTooltip(it)
	local string abilityDesc = LoadStr(YDHT, id, EQUIP_ABILITY_KEY)

	call itemTooltipWidget[2].setTexture(art)
	call itemTooltipWidget[3].setText(name)
	call itemTooltipWidget[4].setText(LoadStr(YDHT, id, EQUIP_LEVEL_KEY))
	call itemTooltipWidget[6].setText(description)

	if randomAttr == "" or randomAttr == null then
		if abilityDesc == "" or abilityDesc == null then
			call itemTooltipWidget[7].hide()
			call itemTooltipWidget[8].hide()
			call itemTooltipWidget[9].hide()
			call itemTooltipWidget[10].hide()
			call itemTooltipWidget[6].setPoint(BOTTOMRIGHT, Frame.getFrame(originalAbilityButton[4]), TOPRIGHT, 0.01, 0.035)
			call itemTooltipWidget[1].setPoint(BOTTOMRIGHT, itemTooltipWidget[6], BOTTOMRIGHT, 0.005, - 0.005)
		else
			call itemTooltipWidget[7].hide()
			call itemTooltipWidget[8].hide()
			call itemTooltipWidget[9].show()
			call itemTooltipWidget[10].show()
			call itemTooltipWidget[10].setPoint(BOTTOMRIGHT, Frame.getFrame(originalAbilityButton[4]), TOPRIGHT, 0.01, 0.035)
			call itemTooltipWidget[9].setPoint(BOTTOM, itemTooltipWidget[10], TOP, 0, 0.005)
			call itemTooltipWidget[6].setPoint(BOTTOM, itemTooltipWidget[9], TOP, 0, 0.005)
			call itemTooltipWidget[1].setPoint(BOTTOMRIGHT, itemTooltipWidget[10], BOTTOMRIGHT, 0.005, - 0.005)
		endif
	else
		if abilityDesc == "" or abilityDesc == null then
			call itemTooltipWidget[7].show()
			call itemTooltipWidget[8].show()
			call itemTooltipWidget[9].hide()
			call itemTooltipWidget[10].hide()
			call itemTooltipWidget[8].setPoint(BOTTOMRIGHT, Frame.getFrame(originalAbilityButton[4]), TOPRIGHT, 0.01, 0.035)
			call itemTooltipWidget[7].setPoint(BOTTOM, itemTooltipWidget[8], TOP, 0, 0.005)
			call itemTooltipWidget[6].setPoint(BOTTOM, itemTooltipWidget[7], TOP, 0, 0.005)
			call itemTooltipWidget[1].setPoint(BOTTOMRIGHT, itemTooltipWidget[8], BOTTOMRIGHT, 0.005, - 0.005)
		else
			call itemTooltipWidget[7].show()
			call itemTooltipWidget[8].show()
			call itemTooltipWidget[9].show()
			call itemTooltipWidget[10].show()
			call itemTooltipWidget[10].setPoint(BOTTOMRIGHT, Frame.getFrame(originalAbilityButton[4]), TOPRIGHT, 0.01, 0.035)
			call itemTooltipWidget[9].setPoint(BOTTOM, itemTooltipWidget[10], TOP, 0, 0.005)
			call itemTooltipWidget[8].setPoint(BOTTOM, itemTooltipWidget[9], TOP, 0, 0.005)
			call itemTooltipWidget[7].setPoint(BOTTOM, itemTooltipWidget[8], TOP, 0, 0.005)
			call itemTooltipWidget[6].setPoint(BOTTOM, itemTooltipWidget[7], TOP, 0, 0.005)
			call itemTooltipWidget[1].setPoint(BOTTOMRIGHT, itemTooltipWidget[10], BOTTOMRIGHT, 0.005, - 0.005)
		endif
	endif

	call itemTooltipWidget[8].setText(randomAttr)
	call itemTooltipWidget[10].setText(abilityDesc)


	call itemTooltipWidget[1].show()
endfunction

function showItemTooltip takes nothing returns nothing
	local integer i = 1 + GetPlayerId(DzGetTriggerUIEventPlayer())
	local integer cont = 0
	local string str = ""
	local integer j = 1
	local item it = null
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		if unitInSelection[i] == null then
			return
		endif

		loop
			exitwhen j > 6
			if DzGetTriggerUIEventFrame() == originalItemButton[j] then
				set it = UnitItemInSlotBJ(unitInSelection[i], j)
				if it != null and isWeapon(it) then
					call hideOriginalTooltip()
					call setWeaponTooltip(it)
					
				endif
			endif
			set j = j + 1
		endloop
	endif
	set it = null
endfunction

function hideItemTooltip takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call showOriginalTooltip()
		call itemTooltipWidget[1].hide()
	endif
endfunction

function showTowerTooltip takes nothing returns nothing
	local integer i = 1 + GetPlayerId(DzGetTriggerUIEventPlayer())
	local real damageAddition = 0 
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		if unitInSelection[i] == null or IsBuilder(GetUnitTypeId(unitInSelection[i])) or GetUnitTypeId(unitInSelection[i]) == 'o00R'  or GetUnitTypeId(unitInSelection[i]) == 'o00N' or GetOwningPlayer(unitInSelection[i]) != DzGetTriggerUIEventPlayer() then
			return
		endif
		// 每点功勋增加0.5%伤害
		if LoadInteger(CONT_HT, GetHandleId(unitInSelection[i]), CONT_KEY) > 0 then
			set damageAddition = damageAddition + LoadInteger(CONT_HT, GetHandleId(unitInSelection[i]), CONT_KEY) * 0.005
		endif
		// 北冥神功 伤害增加40%
		if GetUnitAbilityLevel(unitInSelection[i], 'A03N') >= 1 then
			set damageAddition = damageAddition + .4
		endif
	
		// 太玄神功 伤害增加50%
		if GetUnitAbilityLevel(unitInSelection[i], 'A03P') >= 1 then
			set damageAddition = damageAddition + .5
		endif
	
		// 蛤蟆功 伤害增加40%
		if GetUnitAbilityLevel(unitInSelection[i], 'A03Q') >= 1 then
			set damageAddition = damageAddition + .4
		endif
	
		// 洗髓经 伤害增加50%
		if GetUnitAbilityLevel(unitInSelection[i], 'A03R') >= 1 then
			set damageAddition = damageAddition + .5
		endif

		// 塔的伤害加成
		if LoadReal(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_DAMAGE_KEY) > 0 then
			set damageAddition = damageAddition + LoadReal(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_DAMAGE_KEY)
		endif
		call towerTooltipWidget[3].setText("命中：" + I2S(100 + LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_HIT_KEY) + 100 * GetPlayerTechCountSimple('R00A', GetOwningPlayer(unitInSelection[i]))))
		call towerTooltipWidget[4].setText("武学暴击率：" + I2S(5 + LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_CRITICAL_RATE_KEY)) + "%")
		call towerTooltipWidget[5].setText("暴击倍数：" + R2S(2 + LoadReal(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_CRITICAL_ADDITION_KEY)))
		call towerTooltipWidget[6].setText("内力回复：" + I2S(LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_MANA_RECOVERY_KEY)))
		call towerTooltipWidget[7].setText("伤害加成：" + R2S(damageAddition * 100) + "%")
		call towerTooltipWidget[8].setText("连击率：" + I2S(LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_COMBO_KEY)) + "%")
		call towerTooltipWidget[9].setText("破防率：" + I2S(LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_PIERCE_KEY)) + "%")
		call towerTooltipWidget[10].setText("冷却缩减：" + I2S(LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_COOLDOWN_KEY)) + "%")
		call towerTooltipWidget[1].show()
	endif
endfunction

function hideTowerTooltip takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call towerTooltipWidget[1].hide()
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

	set originalItemButton[1] = DzFrameGetItemBarButton(0)
	set originalItemButton[2] = DzFrameGetItemBarButton(1)
	set originalItemButton[3] = DzFrameGetItemBarButton(2)
	set originalItemButton[4] = DzFrameGetItemBarButton(3)
	set originalItemButton[5] = DzFrameGetItemBarButton(4)
	set originalItemButton[6] = DzFrameGetItemBarButton(5)

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

	// 物品的说明
	set itemTooltipWidget[1] = Frame.newTips0(GUI, "tipbox")
	call itemTooltipWidget[1].hide()

	set itemTooltipWidget[2] = Frame.newImage1(itemTooltipWidget[1], "ReplaceableTextures\\CommandButtons\\BTNdalibao.blp", 0.04, 0.04)

	set itemTooltipWidget[3] = Frame.newText1(itemTooltipWidget[1], "物品名称", "TXA14")

	set itemTooltipWidget[4] = Frame.newText1(itemTooltipWidget[1], "普通", "TXA11")

	set itemTooltipWidget[5] = Frame.newText1(itemTooltipWidget[1], "|cffff6800【固定属性】|r", "TXA12")
	call itemTooltipWidget[5].setSize(0.2, 0)

	set itemTooltipWidget[6] = Frame.newText1(itemTooltipWidget[1], "固定属性内容", "TXA11")
	call itemTooltipWidget[6].setSize(0.2, 0)

	set itemTooltipWidget[7] = Frame.newText1(itemTooltipWidget[1], "|cffff6800【随机属性】|r", "TXA12")
	call itemTooltipWidget[7].setSize(0.2, 0)

	set itemTooltipWidget[8] = Frame.newText1(itemTooltipWidget[1], "随机属性内容", "TXA11")
	call itemTooltipWidget[8].setSize(0.2, 0)

	set itemTooltipWidget[9] = Frame.newText1(itemTooltipWidget[1], "|cffff6800【物品技能】|r", "TXA12")
	call itemTooltipWidget[9].setSize(0.2, 0)

	set itemTooltipWidget[10] = Frame.newText1(itemTooltipWidget[1], "|cFFFEFFA8物品技能内容|r", "TXA11")
	call itemTooltipWidget[10].setSize(0.2, 0)

	call itemTooltipWidget[10].setPoint(BOTTOMRIGHT, Frame.getFrame(originalAbilityButton[4]), TOPRIGHT, 0.01, 0.035)
	call itemTooltipWidget[9].setPoint(BOTTOM, itemTooltipWidget[10], TOP, 0, 0.005)
	call itemTooltipWidget[8].setPoint(BOTTOM, itemTooltipWidget[9], TOP, 0, 0.005)
	call itemTooltipWidget[7].setPoint(BOTTOM, itemTooltipWidget[8], TOP, 0, 0.005)
	call itemTooltipWidget[6].setPoint(BOTTOM, itemTooltipWidget[7], TOP, 0, 0.005)
	call itemTooltipWidget[5].setPoint(BOTTOM, itemTooltipWidget[6], TOP, 0, 0.005)
	call itemTooltipWidget[2].setPoint(BOTTOMLEFT, itemTooltipWidget[5], TOPLEFT, 0, 0.005)
	call itemTooltipWidget[3].setPoint(TOPLEFT, itemTooltipWidget[2], TOPRIGHT, 0.005, - 0.005)
	call itemTooltipWidget[4].setPoint(TOPLEFT, itemTooltipWidget[3], BOTTOMLEFT, 0, - 0.005)
	call itemTooltipWidget[1].setPoint(TOPLEFT, itemTooltipWidget[2], TOPLEFT, - 0.005, 0.005)
	call itemTooltipWidget[1].setPoint(BOTTOMRIGHT, itemTooltipWidget[10], BOTTOMRIGHT, 0.005, - 0.005)

	set j = 1
	loop
		exitwhen j > 6
		call DzFrameSetScriptByCode(originalItemButton[j], FRAME_MOUSE_ENTER, function showItemTooltip, false)
		call DzFrameSetScriptByCode(originalItemButton[j], FRAME_MOUSE_LEAVE, function hideItemTooltip, false)
		set j = j + 1
	endloop

	// 塔属性的说明
	// 命中 武学暴击率 暴击倍数 内力回复 伤害加成 连击率 破防率 冷却缩减
	set towerTooltipWidget[1] = Frame.newTips0(GUI, "tipbox")
	call towerTooltipWidget[1].hide()

	set towerTooltipWidget[2] = Frame.newText1(towerTooltipWidget[1], "|cFF00FF00属性|r", "TXA14")
	call towerTooltipWidget[2].setSize(0.08, 0)

	set towerTooltipWidget[3] = Frame.newText1(towerTooltipWidget[1], "命中：100", "TXA11")
	call towerTooltipWidget[3].setSize(0.08, 0)

	set towerTooltipWidget[4] = Frame.newText1(towerTooltipWidget[1], "武学暴击率：5%", "TXA11")
	call towerTooltipWidget[4].setSize(0.08, 0)

	set towerTooltipWidget[5] = Frame.newText1(towerTooltipWidget[1], "暴击倍数：1.5", "TXA11")
	call towerTooltipWidget[5].setSize(0.08, 0)

	set towerTooltipWidget[6] = Frame.newText1(towerTooltipWidget[1], "内力回复：10", "TXA11")
	call towerTooltipWidget[6].setSize(0.08, 0)

	set towerTooltipWidget[7] = Frame.newText1(towerTooltipWidget[1], "伤害加成：10%", "TXA11")
	call towerTooltipWidget[7].setSize(0.08, 0)

	set towerTooltipWidget[8] = Frame.newText1(towerTooltipWidget[1], "连击率：10%", "TXA11")
	call towerTooltipWidget[8].setSize(0.08, 0)

	set towerTooltipWidget[9] = Frame.newText1(towerTooltipWidget[1], "破防率：10%", "TXA11")
	call towerTooltipWidget[9].setSize(0.08, 0)

	set towerTooltipWidget[10] = Frame.newText1(towerTooltipWidget[1], "冷却缩减：10%", "TXA11")
	call towerTooltipWidget[10].setSize(0.08, 0)

	call towerTooltipWidget[10].setPoint(BOTTOM, Frame.getFrame(DzFrameGetPortrait()), TOP, 0, 0.035)
	call towerTooltipWidget[9].setPoint(BOTTOM, towerTooltipWidget[10], TOP, 0, 0.005)
	call towerTooltipWidget[8].setPoint(BOTTOM, towerTooltipWidget[9], TOP, 0, 0.005)
	call towerTooltipWidget[7].setPoint(BOTTOM, towerTooltipWidget[8], TOP, 0, 0.005)
	call towerTooltipWidget[6].setPoint(BOTTOM, towerTooltipWidget[7], TOP, 0, 0.005)
	call towerTooltipWidget[5].setPoint(BOTTOM, towerTooltipWidget[6], TOP, 0, 0.005)
	call towerTooltipWidget[4].setPoint(BOTTOM, towerTooltipWidget[5], TOP, 0, 0.005)
	call towerTooltipWidget[3].setPoint(BOTTOM, towerTooltipWidget[4], TOP, 0, 0.005)
	call towerTooltipWidget[2].setPoint(BOTTOM, towerTooltipWidget[3], TOP, 0, 0.005)
	call towerTooltipWidget[1].setPoint(TOPLEFT, towerTooltipWidget[2], TOPLEFT, - 0.005, 0.005)
	call towerTooltipWidget[1].setPoint(BOTTOMRIGHT, towerTooltipWidget[10], BOTTOMRIGHT, 0.005, - 0.005)

	call DzFrameSetScriptByCode(DzFrameGetPortrait(), FRAME_MOUSE_ENTER, function showTowerTooltip, false)
	call DzFrameSetScriptByCode(DzFrameGetPortrait(), FRAME_MOUSE_LEAVE, function hideTowerTooltip, false)


	
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


