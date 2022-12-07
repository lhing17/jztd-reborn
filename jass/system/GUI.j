globals
	Frame array tooltipWidget

	Frame array itemTooltipWidget

	// 显示塔的属性
	Frame array towerTooltipWidget

	// 显示兑换物品提示
	Frame array exchangeTooltipWidget

	// 显示波数
	Frame array waveWidget

	Frame array exchangeIcon
	Frame array exchangeIconStatus

	// 显示抽卡结果的图标
	Frame array cardResultWidget
	Frame array cardResultTooltipWidget
	

	// 顶部菜单
	Frame array topMenuWidget // 顶部菜单按钮图片
	Frame array topMenuButton // 顶部菜单按钮
	Frame array topMenuSelected // 顶部菜单按钮效果

	// 存档项
	Frame array topMenuItem1Widget
	Frame array topMenuItem1Button

	// 弹出
	Frame array popupWidget
	Frame array popupCloseWidget
	Frame array popupCloseButton

	// 弹出层右侧
	Frame array popupRightWidget

	// 商城图标
	Frame array shopWidget
	Frame array shopButton
	Frame array shopTooltipWidget


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
	string array exchangeIconPath
	string array exchangeDisIconPath
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
	local integer id = 0
	local integer j = 1
	local integer level = 0
	local integer gold = 0
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		// if DzGetTriggerUIEventFrame() == originalAbilityButton[5] then
		// 	if unitInSelection[i] == null or IsBuilder(GetUnitTypeId(unitInSelection[i])) or GetUnitTypeId(unitInSelection[i]) == 'o00R'  or GetUnitTypeId(unitInSelection[i]) == 'o00N' or GetOwningPlayer(unitInSelection[i]) != DzGetTriggerUIEventPlayer() then
		// 		return
		// 	endif
		

		// 	set cont = LoadInteger(CONT_HT, GetHandleId(unitInSelection[i]), CONT_KEY)
		// 	set str = "杀敌数：" + I2S(cont) + "\n内力上限+" + I2S(2 * cont) + "\n武学伤害+" + R2S(cont * 0.2) + "%"
		// 	call tooltipWidget[3].setText(str)
		// 	call tooltipWidget[1].show()
		// endif
		if GetUnitTypeId(unitInSelection[i]) == 'o014' and GetOwningPlayer(unitInSelection[i]) == DzGetTriggerUIEventPlayer() then
			set j = 1
			loop
				exitwhen j > 4
				set id = LoadInteger(CARD_HT, i, j)
				if DzGetTriggerUIEventFrame() == originalAbilityButton[j] and id != 0 then
					
					set level = LoadInteger(YDHT, id, TOWER_LEVEL_KEY)
					if level == 1 then
						set gold = 500
					elseif level == 2 then
						set gold = 1000
					elseif level == 3 then
						set gold = 2000
					elseif level == 4 then
						set gold = 5000
					endif
					call cardResultTooltipWidget[2].setText(YDWEGetObjectPropertyString(YDWE_OBJECT_TYPE_ITEM, id, "Name"))
					call cardResultTooltipWidget[4].setText(I2S(gold))
					call cardResultTooltipWidget[5].setText(YDWEGetObjectPropertyString(YDWE_OBJECT_TYPE_ITEM, id, "Ubertip"))
					call hideOriginalTooltip()
					call cardResultTooltipWidget[1].show()

				endif
				set j = j + 1
			endloop
		endif
		
	endif
endfunction

function hideTooltip takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		// if DzGetTriggerUIEventFrame() == originalAbilityButton[5] then
		call showOriginalTooltip()
		call tooltipWidget[1].hide()
		call cardResultTooltipWidget[1].hide()
		// endif
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
	local integer criticalRate = 0
	local real criticalTimes = 0
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		if unitInSelection[i] == null or IsBuilder(GetUnitTypeId(unitInSelection[i])) or GetUnitTypeId(unitInSelection[i]) == 'o00R'  or GetUnitTypeId(unitInSelection[i]) == 'o00N' or GetOwningPlayer(unitInSelection[i]) != DzGetTriggerUIEventPlayer() then
			return
		endif
		set damageAddition = kungfuCoeff[i]
		// 每点功勋增加0.5%伤害
		if LoadInteger(CONT_HT, GetHandleId(unitInSelection[i]), CONT_KEY) > 0 then
			set damageAddition = damageAddition + LoadInteger(CONT_HT, GetHandleId(unitInSelection[i]), CONT_KEY) * 0.002
		endif
		// 北冥神功 伤害增加40%
		if GetUnitAbilityLevel(unitInSelection[i], 'A03N') >= 1 then
			set damageAddition = damageAddition + 0.05 + 0.15 * GetUnitAbilityLevel(unitInSelection[i], 'A03N')
		endif
	
		// 太玄神功 伤害增加50%
		if GetUnitAbilityLevel(unitInSelection[i], 'A03P') >= 1 then
			set damageAddition = damageAddition + 0.15 + 0.15 * GetUnitAbilityLevel(unitInSelection[i], 'A03P')
		endif
	
		// 蛤蟆功 伤害增加40%
		if GetUnitAbilityLevel(unitInSelection[i], 'A03Q') >= 1 then
			set damageAddition = damageAddition + 0.05 + 0.15 * GetUnitAbilityLevel(unitInSelection[i], 'A03Q')
		endif
	
		// 洗髓经 伤害增加50%
		if GetUnitAbilityLevel(unitInSelection[i], 'A03R') >= 1 then
			set damageAddition = damageAddition + 0.15 + 0.15 * GetUnitAbilityLevel(unitInSelection[i], 'A03R')
		endif

		// 小无相功 伤害增加50%
		if GetUnitAbilityLevel(unitInSelection[i], 'A096') >= 1 then
			set damageAddition = damageAddition + 0.15 + 0.15 * GetUnitAbilityLevel(unitInSelection[i], 'A096')
		endif


		// 塔的伤害加成
		if LoadReal(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_DAMAGE_KEY) > 0 then
			set damageAddition = damageAddition + LoadReal(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_DAMAGE_KEY)
		endif

		// 地图等级大于等于6级，伤害增加5%
		if mapLevel[i] >= 6 then
			set damageAddition = damageAddition + 0.05
		endif
		
		// 地图等级大于等于20级，伤害增加10%
		if mapLevel[i] >= 20 then
			set damageAddition = damageAddition + 0.1
		endif

		// 通关N1，伤害增加10%
		if winDifficulty[i] >= 1 then
			set damageAddition = damageAddition + 0.1
		endif

		// 通关N5，伤害增加10%
		if winDifficulty[i] >= 5 then
			set damageAddition = damageAddition + 0.1
		endif

		// 通关N10，伤害增加10%
		if winDifficulty[i] >= 10 then
			set damageAddition = damageAddition + 0.1
		endif

		set criticalRate = 5 + LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_CRITICAL_RATE_KEY)
		set criticalTimes = 2 + LoadReal(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_CRITICAL_ADDITION_KEY)

		if GetUnitAbilityLevel(unitInSelection[i], 'A03N') > 0 then
			set criticalRate = criticalRate + 5 * GetUnitAbilityLevel(unitInSelection[i], 'A03N')
			set criticalTimes = criticalTimes + 0.3 + 0.2 * GetUnitAbilityLevel(unitInSelection[i], 'A03N')
		endif
	

		call towerTooltipWidget[3].setText("命中：" + I2S(100 + LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_HIT_KEY) + 100 * GetPlayerTechCountSimple('R00A', GetOwningPlayer(unitInSelection[i]))))
		call towerTooltipWidget[4].setText("武学暴击率：" + I2S(criticalRate) + "%")
		call towerTooltipWidget[5].setText("暴击倍数：" + R2S(criticalTimes))
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

function toggleTopMenuSelected takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call topMenuSelected[1].setAlpha(80 + 160 - topMenuSelected[1].getAlpha())
	endif
endfunction

function toggleSavePopup takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call popupWidget[1].toggle()
	endif
endfunction

function showShopIcons takes nothing returns nothing
	call shopWidget[1].show()
	call shopWidget[2].show()
	call shopWidget[3].show()
	call shopWidget[4].show()
	call shopWidget[5].show()
endfunction

function hideShopIcons takes nothing returns nothing
	call shopWidget[1].hide()
	call shopWidget[2].hide()
	call shopWidget[3].hide()
	call shopWidget[4].hide()
	call shopWidget[5].hide()
endfunction

function jumpToMapAward takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call topMenuItem1Widget[1].setAlpha(80)
		call topMenuItem1Widget[2].setAlpha(0)
		call topMenuItem1Widget[3].setAlpha(0)
		call topMenuItem1Widget[4].setAlpha(0)
		call topMenuItem1Widget[5].setAlpha(0)
		call popupRightWidget[1].setTexture("war3mapImported\\ui\\mapAward.tga")
		call hideShopIcons()
	endif
endfunction

function jumpToLevelAward takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call topMenuItem1Widget[1].setAlpha(0)
		call topMenuItem1Widget[2].setAlpha(80)
		call topMenuItem1Widget[3].setAlpha(0)
		call topMenuItem1Widget[4].setAlpha(0)
		call topMenuItem1Widget[5].setAlpha(0)
		call popupRightWidget[1].setTexture("war3mapImported\\ui\\levelAward.tga")
		call hideShopIcons()
	endif
endfunction
function jumpToWinAward takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call topMenuItem1Widget[1].setAlpha(0)
		call topMenuItem1Widget[2].setAlpha(0)
		call topMenuItem1Widget[3].setAlpha(80)
		call topMenuItem1Widget[4].setAlpha(0)
		call topMenuItem1Widget[5].setAlpha(0)
		call popupRightWidget[1].setTexture("war3mapImported\\ui\\winAward.tga")
		call hideShopIcons()
	endif
endfunction
function jumpToAchievement takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call topMenuItem1Widget[1].setAlpha(0)
		call topMenuItem1Widget[2].setAlpha(0)
		call topMenuItem1Widget[3].setAlpha(0)
		call topMenuItem1Widget[4].setAlpha(80)
		call topMenuItem1Widget[5].setAlpha(0)
		call popupRightWidget[1].setTexture("war3mapImported\\ui\\achievement.tga")
		call hideShopIcons()
	endif
endfunction
function jumpToMall takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call topMenuItem1Widget[1].setAlpha(0)
		call topMenuItem1Widget[2].setAlpha(0)
		call topMenuItem1Widget[3].setAlpha(0)
		call topMenuItem1Widget[4].setAlpha(0)
		call topMenuItem1Widget[5].setAlpha(80)
		call popupRightWidget[1].setTexture("war3mapImported\\ui\\mall.tga")
		call showShopIcons()
	endif
endfunction

function showShopTooltip takes nothing returns nothing
	local integer i = 1 + GetPlayerId(DzGetTriggerUIEventPlayer())
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		if DzGetTriggerUIEventFrame() == shopButton[1].id then
			call shopTooltipWidget[4].setPoint(BOTTOM, shopWidget[1], TOP, 0, 0.01)
			call shopTooltipWidget[2].setText("|cFF00FF00中型金币礼包|r")
			call shopTooltipWidget[3].setText("效果：15波后地图中间NPC领取中型金币资源包")
			if middle_gold_flag[i] == 1 then
				call shopTooltipWidget[4].setText("解锁状态：|cff00ff00已解锁|r")
			else
				call shopTooltipWidget[4].setText("解锁状态：|cffff0000未解锁|r")
			endif
			call shopTooltipWidget[1].show()
		endif
		if DzGetTriggerUIEventFrame() == shopButton[2].id then
			call shopTooltipWidget[4].setPoint(BOTTOM, shopWidget[2], TOP, 0, 0.01)
			call shopTooltipWidget[2].setText("|cFF00FF00中型珍稀币礼包|r")
			call shopTooltipWidget[3].setText("效果：15波后地图中间NPC领取中型珍稀币资源包")
			if middle_lumber_flag[i] == 1 then
				call shopTooltipWidget[4].setText("解锁状态：|cff00ff00已解锁|r")
			else
				call shopTooltipWidget[4].setText("解锁状态：|cffff0000未解锁|r")
			endif
			call shopTooltipWidget[1].show()
		endif
		if DzGetTriggerUIEventFrame() == shopButton[3].id then
			call shopTooltipWidget[4].setPoint(BOTTOM, shopWidget[3], TOP, 0, 0.01)
			call shopTooltipWidget[2].setText("|cFF00FF00首充礼包|r")
			call shopTooltipWidget[3].setText("效果：每秒金币+3 开局送三个欧皇大礼包")
			if europe_flag[i] == 1 then
				call shopTooltipWidget[4].setText("解锁状态：|cff00ff00已解锁|r")
			else
				call shopTooltipWidget[4].setText("解锁状态：|cffff0000未解锁|r")
			endif
			call shopTooltipWidget[1].show()
		endif
		if DzGetTriggerUIEventFrame() == shopButton[4].id then
			call shopTooltipWidget[4].setPoint(BOTTOM, shopWidget[4], TOP, 0, 0.01)
			call shopTooltipWidget[2].setText("|cFF00FF00智慧球|r")
			call shopTooltipWidget[3].setText("效果：开局在地图上解锁智慧球")
			if wisdom_ball_flag[i] == 1 then
				call shopTooltipWidget[4].setText("解锁状态：|cff00ff00已解锁|r")
			else
				call shopTooltipWidget[4].setText("解锁状态：|cffff0000未解锁|r")
			endif
			call shopTooltipWidget[1].show()
		endif
		if DzGetTriggerUIEventFrame() == shopButton[5].id then
			call shopTooltipWidget[4].setPoint(BOTTOM, shopWidget[5], TOP, 0, 0.01)
			call shopTooltipWidget[2].setText("|cFF00FF00敬请期待|r")
			call shopTooltipWidget[3].setText("更多福利敬请期待")
			call shopTooltipWidget[4].setText("感谢支持")
			call shopTooltipWidget[1].show()
		endif
	endif
endfunction

function hideShopTooltip takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call shopTooltipWidget[1].hide()
	endif
endfunction

function drawUI_Conditions takes nothing returns boolean

	local integer j = 1

	set exchangeIconPath[1] = "ReplaceableTextures\\CommandButtons\\BTNExchangeOne.blp"
	set exchangeIconPath[2] = "ReplaceableTextures\\CommandButtons\\BTNExchangeTwo.blp"
	set exchangeIconPath[3] = "ReplaceableTextures\\CommandButtons\\BTNExchangeThree.blp"
	set exchangeIconPath[4] = "ReplaceableTextures\\CommandButtons\\BTNExchangeFour.blp"
	set exchangeIconPath[5] = "ReplaceableTextures\\CommandButtons\\BTNExchangeFive.blp"

	set exchangeDisIconPath[1] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNExchangeOne.blp"
	set exchangeDisIconPath[2] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNExchangeTwo.blp"
	set exchangeDisIconPath[3] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNExchangeThree.blp"
	set exchangeDisIconPath[4] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNExchangeFour.blp"
	set exchangeDisIconPath[5] = "ReplaceableTextures\\CommandButtonsDisabled\\DISBTNExchangeFive.blp"

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

	// 显示波数
	// set waveWidget[1] = Frame.newImage1(GUI, "war3mapImported\\0.blp", 0.01, 0.03)
	// set waveWidget[2] = Frame.newImage1(GUI, "war3mapImported\\1.blp", 0.01, 0.03)
	// set waveWidget[3] = Frame.newImage1(GUI, "war3mapImported\\wave.blp", 0.03, 0.04)

	// call waveWidget[2].setPoint(TOP, GUI, TOP, -0.015, - 0.01)
	// call waveWidget[1].setPoint(RIGHT, waveWidget[2], LEFT, -0.005, 0)
	// call waveWidget[3].setPoint(LEFT, waveWidget[2], RIGHT, 0.005, 0)

	// 顶部菜单
	set topMenuWidget[1] = Frame.newImage1(GUI, "war3mapImported\\ui\\save.blp", 0.032, 0.04)
	call topMenuWidget[1].setPoint(3, Frame.getFrame(DzFrameGetHeroBarButton(0)), 5, 0.05, - 0.005)

	set topMenuSelected[1] = Frame.newImage1(topMenuWidget[1], "war3mapImported\\ui\\saveItemSelected.tga", 0.032, 0.04)
	call topMenuSelected[1].setAllPoints(topMenuWidget[1])
	call topMenuSelected[1].setAlpha(80)

	set topMenuButton[1] = Frame.newTextButton(topMenuWidget[1])
	call topMenuButton[1].setAllPoints(topMenuWidget[1])
	call topMenuButton[1].regEvent(FRAME_EVENT_PRESSED, function toggleSavePopup)
	call topMenuButton[1].regEvent(FRAME_MOUSE_ENTER, function toggleTopMenuSelected)
	call topMenuButton[1].regEvent(FRAME_MOUSE_LEAVE, function toggleTopMenuSelected)
	
	set popupWidget[1] = Frame.newImage1(GUI, "war3mapImported\\ui\\savePopup.tga", 0.36, 0.32)
	call popupWidget[1].setPoint(4, GUI, 4, 0, 0.05)
	call popupWidget[1].hide()

	set popupCloseWidget[1] = Frame.newImage1(popupWidget[1], "war3mapImported\\ui\\close0.tga", 0.018, 0.024)
	call popupCloseWidget[1].setPoint(CENTER, popupWidget[1], TOPRIGHT, 0, - 0.03)

	set popupCloseButton[1] = Frame.newTextButton(popupCloseWidget[1])
	call popupCloseButton[1].setAllPoints(popupCloseWidget[1])
	call popupCloseButton[1].regEvent(FRAME_EVENT_PRESSED, function toggleSavePopup)

	set popupRightWidget[1] = Frame.newImage1(popupWidget[1], "war3mapImported\\ui\\mapAward.tga", 0.25, 0.28)
	call popupRightWidget[1].setPoint(LEFT, popupWidget[1], LEFT, 0.105, - 0.01)

	set topMenuItem1Widget[1] = Frame.newImage1(popupWidget[1], "war3mapImported\\ui\\itemSelected.tga", 0.1, 0.034)
	call topMenuItem1Widget[1].setPoint(TOPLEFT, popupWidget[1], TOPLEFT, 0, - 0.032)
	call topMenuItem1Widget[1].setAlpha(80)

	set topMenuItem1Button[1] = Frame.newTextButton(topMenuItem1Widget[1])
	call topMenuItem1Button[1].setAllPoints(topMenuItem1Widget[1])
	call topMenuItem1Button[1].regEvent(FRAME_EVENT_PRESSED, function jumpToMapAward)

	set topMenuItem1Widget[2] = Frame.newImage1(popupWidget[1], "war3mapImported\\ui\\itemSelected.tga", 0.1, 0.034)
	call topMenuItem1Widget[2].setPoint(TOPLEFT, topMenuItem1Widget[1], BOTTOMLEFT, 0, - 0.002)
	call topMenuItem1Widget[2].setAlpha(0)

	set topMenuItem1Button[2] = Frame.newTextButton(topMenuItem1Widget[2])
	call topMenuItem1Button[2].setAllPoints(topMenuItem1Widget[2])
	call topMenuItem1Button[2].regEvent(FRAME_EVENT_PRESSED, function jumpToLevelAward)

	set topMenuItem1Widget[3] = Frame.newImage1(popupWidget[1], "war3mapImported\\ui\\itemSelected.tga", 0.1, 0.034)
	call topMenuItem1Widget[3].setPoint(TOPLEFT, topMenuItem1Widget[2], BOTTOMLEFT, 0, - 0.002)
	call topMenuItem1Widget[3].setAlpha(0)

	set topMenuItem1Button[3] = Frame.newTextButton(topMenuItem1Widget[3])
	call topMenuItem1Button[3].setAllPoints(topMenuItem1Widget[3])
	call topMenuItem1Button[3].regEvent(FRAME_EVENT_PRESSED, function jumpToWinAward)

	set topMenuItem1Widget[4] = Frame.newImage1(popupWidget[1], "war3mapImported\\ui\\itemSelected.tga", 0.1, 0.034)
	call topMenuItem1Widget[4].setPoint(TOPLEFT, topMenuItem1Widget[3], BOTTOMLEFT, 0, - 0.002)
	call topMenuItem1Widget[4].setAlpha(0)

	set topMenuItem1Button[4] = Frame.newTextButton(topMenuItem1Widget[4])
	call topMenuItem1Button[4].setAllPoints(topMenuItem1Widget[4])
	call topMenuItem1Button[4].regEvent(FRAME_EVENT_PRESSED, function jumpToAchievement)

	set topMenuItem1Widget[5] = Frame.newImage1(popupWidget[1], "war3mapImported\\ui\\itemSelected.tga", 0.1, 0.034)
	call topMenuItem1Widget[5].setPoint(TOPLEFT, topMenuItem1Widget[4], BOTTOMLEFT, 0, - 0.002)
	call topMenuItem1Widget[5].setAlpha(0)

	set topMenuItem1Button[5] = Frame.newTextButton(topMenuItem1Widget[5])
	call topMenuItem1Button[5].setAllPoints(topMenuItem1Widget[5])
	call topMenuItem1Button[5].regEvent(FRAME_EVENT_PRESSED, function jumpToMall)
	

	// 商城图标
	set shopWidget[1] = Frame.newImage1(popupRightWidget[1], "replaceabletextures\\commandbuttons\\PASBTNjinbi.blp", 0.04, 0.047)
	call shopWidget[1].setPoint(TOPLEFT, popupRightWidget[1], TOPLEFT, 0.01, - 0.018)

	set shopButton[1] = Frame.newTextButton(shopWidget[1])
	call shopButton[1].setAllPoints(shopWidget[1])
	call shopButton[1].regEvent	(FRAME_MOUSE_ENTER, function showShopTooltip)
	call shopButton[1].regEvent(FRAME_MOUSE_LEAVE, function hideShopTooltip)

	set shopWidget[2] = Frame.newImage1(popupRightWidget[1], "replaceabletextures\\commandbuttons\\PASBTNmucai.blp", 0.04, 0.047)
	call shopWidget[2].setPoint(LEFT, shopWidget[1], RIGHT, 0.0088, 0)

	set shopButton[2] = Frame.newTextButton(shopWidget[2])
	call shopButton[2].setAllPoints(shopWidget[2])
	call shopButton[2].regEvent	(FRAME_MOUSE_ENTER, function showShopTooltip)
	call shopButton[2].regEvent(FRAME_MOUSE_LEAVE, function hideShopTooltip)

	set shopWidget[3] = Frame.newImage1(popupRightWidget[1], "replaceabletextures\\commandbuttons\\PASBTNshouchong.blp", 0.04, 0.047)
	call shopWidget[3].setPoint(LEFT, shopWidget[2], RIGHT, 0.0088, 0)

	set shopButton[3] = Frame.newTextButton(shopWidget[3])
	call shopButton[3].setAllPoints(shopWidget[3])
	call shopButton[3].regEvent	(FRAME_MOUSE_ENTER, function showShopTooltip)
	call shopButton[3].regEvent(FRAME_MOUSE_LEAVE, function hideShopTooltip)

	set shopWidget[4] = Frame.newImage1(popupRightWidget[1], "replaceabletextures\\commandbuttons\\PASBTNzhihuiqiu.blp", 0.04, 0.047)
	call shopWidget[4].setPoint(LEFT, shopWidget[3], RIGHT, 0.0088, 0)

	set shopButton[4] = Frame.newTextButton(shopWidget[4])
	call shopButton[4].setAllPoints(shopWidget[4])
	call shopButton[4].regEvent	(FRAME_MOUSE_ENTER, function showShopTooltip)
	call shopButton[4].regEvent(FRAME_MOUSE_LEAVE, function hideShopTooltip)

	set shopWidget[5] = Frame.newImage1(popupRightWidget[1], "replaceabletextures\\commandbuttons\\PASBTNjingqingqidai.blp", 0.04, 0.047)
	call shopWidget[5].setPoint(LEFT, shopWidget[4], RIGHT, 0.0088, 0)

	set shopButton[5] = Frame.newTextButton(shopWidget[5])
	call shopButton[5].setAllPoints(shopWidget[5])
	call shopButton[5].regEvent	(FRAME_MOUSE_ENTER, function showShopTooltip)
	call shopButton[5].regEvent(FRAME_MOUSE_LEAVE, function hideShopTooltip)

	call hideShopIcons()

	set shopTooltipWidget[1] = Frame.newTips0(GUI, "tipbox")
	call shopTooltipWidget[1].hide()

	set shopTooltipWidget[2] = Frame.newText1(shopTooltipWidget[1], "|cFF00FF00中型金币礼包|r", "TXA14")
	call shopTooltipWidget[2].setSize(0.22, 0)

	set shopTooltipWidget[3] = Frame.newText1(shopTooltipWidget[1], "效果：15波后地图中间NPC领取中型金币资源包", "TXA11")
	call shopTooltipWidget[3].setSize(0.22, 0)

	set shopTooltipWidget[4] = Frame.newText1(shopTooltipWidget[1], "解锁状态：|cffff0000未解锁|r", "TXA11")
	call shopTooltipWidget[4].setSize(0.22, 0)

	call shopTooltipWidget[4].setPoint(BOTTOM, shopWidget[1], TOP, 0, 0.01)
	call shopTooltipWidget[3].setPoint(BOTTOM, shopTooltipWidget[4], TOP, 0, 0.005)
	call shopTooltipWidget[2].setPoint(BOTTOM, shopTooltipWidget[3], TOP, 0, 0.005)
	call shopTooltipWidget[1].setPoint(TOPLEFT, shopTooltipWidget[2], TOPLEFT, - 0.005, 0.005)
	call shopTooltipWidget[1].setPoint(BOTTOMRIGHT, shopTooltipWidget[4], BOTTOMRIGHT, 0.005, - 0.005)


	set j = 1
	loop
		exitwhen j > 10
		set exchangeIcon[j] = Frame.newImage0(GUI)
		call exchangeIcon[j].setTexture("ReplaceableTextures\\CommandButtons\\BTNExchangeOne.blp")
		call exchangeIcon[j].setAllPoints(Frame.getFrame(originalAbilityButton[j]))
		call exchangeIcon[j].hide()

		set exchangeIconStatus[j] = Frame.newImage0(exchangeIcon[j])
		call exchangeIconStatus[j].setTexture("war3mapImported\\exchanged.tga")
		call exchangeIconStatus[j].setAllPoints(exchangeIcon[j])
		set j = j + 1
	endloop

	set j = 1
	loop
		exitwhen j > 4
		set cardResultWidget[j] = Frame.newImage0(GUI)
		call cardResultWidget[j].setTexture("ReplaceableTextures\\CommandButtons\\BTNExchangeOne.blp")
		call cardResultWidget[j].setAllPoints(Frame.getFrame(originalAbilityButton[j]))
		call cardResultWidget[j].hide()
		set j = j + 1
	endloop

	// 抽卡结果
	set cardResultTooltipWidget[1] = Frame.newTips0(GUI, "tipbox")
	call cardResultTooltipWidget[1].hide()

	
	set cardResultTooltipWidget[2] = Frame.newText1(cardResultTooltipWidget[1], "|cFF00FF00功勋|r", "TXA14")
	call cardResultTooltipWidget[2].setSize(0.22, 0)

	set cardResultTooltipWidget[3] = Frame.newImage1(cardResultTooltipWidget[1], "UI\\Widgets\\EscMenu\\Human\\alliance-gold.blp", 0.04, 0.03)

	set cardResultTooltipWidget[4] = Frame.newText1(cardResultTooltipWidget[1], "500", "TXA11")
	

	set cardResultTooltipWidget[5] = Frame.newText1(cardResultTooltipWidget[1], "杀敌数：100\n内力上限+200\n伤害+50%", "TXA11")
	call cardResultTooltipWidget[5].setSize(0.22, 0)

	call cardResultTooltipWidget[5].setPoint(BOTTOMRIGHT, Frame.getFrame(originalAbilityButton[4]), TOPRIGHT, 0.01, 0.035)
	call cardResultTooltipWidget[3].setPoint(BOTTOMLEFT, cardResultTooltipWidget[5], TOPLEFT, 0, 0.005)
	call cardResultTooltipWidget[4].setPoint(LEFT, cardResultTooltipWidget[3], LEFT, 0.018, 0)
	call cardResultTooltipWidget[2].setPoint(BOTTOMLEFT, cardResultTooltipWidget[3], TOPLEFT, 0, 0.005)
	call cardResultTooltipWidget[1].setPoint(TOPLEFT, cardResultTooltipWidget[2], TOPLEFT, - 0.005, 0.005)
	call cardResultTooltipWidget[1].setPoint(BOTTOMRIGHT, cardResultTooltipWidget[5], BOTTOMRIGHT, 0.005, - 0.005)
	
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


