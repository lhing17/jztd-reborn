globals
//globals from BzAPI:
constant boolean LIBRARY_BzAPI=true
//endglobals from BzAPI
//globals from FrameLibrary:
constant boolean LIBRARY_FrameLibrary=true
//endglobals from FrameLibrary
//globals from MaxSpeed:
constant boolean LIBRARY_MaxSpeed=true
constant boolean MaxSpeed___USE_TABLE= true
constant boolean MaxSpeed___NEW_TABLE= true
            // Vexorian's Table or Bribe's (NEW)
constant boolean MaxSpeed___TEST_MODE= false
constant real MaxSpeed___PERIOD= 0.03125
           //  private constant real MAX_SPEED = 2088.0
constant real MaxSpeed___MAX_SPEED= 1400.0
            // 最大速度限定，超出视为传送。
constant real MaxSpeed___MIN_SPEED= 500.0
            // 判定的最小距离，此项过小或速度过大会使原地打转几率增加，超出则没有加速效果。
           // 测试最大为500刚出头，与522还有些差距
   
//endglobals from MaxSpeed
//globals from TowerLibrary:
constant boolean LIBRARY_TowerLibrary=true
//endglobals from TowerLibrary
//globals from YDTriggerSaveLoadSystem:
constant boolean LIBRARY_YDTriggerSaveLoadSystem=true
hashtable YDHT
hashtable YDLOC
//endglobals from YDTriggerSaveLoadSystem
//globals from YDWEBase:
constant boolean LIBRARY_YDWEBase=true
//ȫ�ֹ�ϣ�� 
string bj_AllString=".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
//全局系统变量
unit bj_lastAbilityCastingUnit=null
unit bj_lastAbilityTargetUnit=null
unit bj_lastPoolAbstractedUnit=null
unitpool bj_lastCreatedUnitPool=null
item bj_lastPoolAbstractedItem=null
itempool bj_lastCreatedItemPool=null
attacktype bj_lastSetAttackType= ATTACK_TYPE_NORMAL
damagetype bj_lastSetDamageType= DAMAGE_TYPE_NORMAL
weapontype bj_lastSetWeaponType= WEAPON_TYPE_WHOKNOWS
real yd_MapMaxX= 0
real yd_MapMinX= 0
real yd_MapMaxY= 0
real yd_MapMinY= 0
string array YDWEBase__yd_PlayerColor
trigger array YDWEBase__AbilityCastingOverEventQueue
integer array YDWEBase__AbilityCastingOverEventType
integer YDWEBase__AbilityCastingOverEventNumber= 0
//endglobals from YDWEBase
//globals from YDWEGeneralBounsSystem:
constant boolean LIBRARY_YDWEGeneralBounsSystem=true
integer array YDWEGeneralBounsSystem__ABILITY_COUNT
integer array YDWEGeneralBounsSystem__ABILITY_NUM
integer array YDWEGeneralBounsSystem__BonusAbilitys
integer array YDWEGeneralBounsSystem__PowersOf2
integer YDWEGeneralBounsSystem__PRELOAD_DUMMY_UNIT= 'hpea'
integer array YDWEGeneralBounsSystem__YDWEBONUS_MyChar
boolean YDWEGeneralBounsSystem__PRELOAD_ABILITYS= true
constant integer YDWEGeneralBounsSystem__BONUS_TYPES= 4
integer array YDWEGeneralBounsSystem__MaxBonus
integer array YDWEGeneralBounsSystem__MinBonus
unit array YDWEGeneralBounsSystem__Units
integer YDWEGeneralBounsSystem__UnitCount= 0
//endglobals from YDWEGeneralBounsSystem
//globals from YDWEMultiboardSetItemWidthBJNull:
constant boolean LIBRARY_YDWEMultiboardSetItemWidthBJNull=true
//endglobals from YDWEMultiboardSetItemWidthBJNull
//globals from YDWEPolledWaitNull:
constant boolean LIBRARY_YDWEPolledWaitNull=true
//endglobals from YDWEPolledWaitNull
//globals from YDWETriggerEvent:
constant boolean LIBRARY_YDWETriggerEvent=true
trigger yd_DamageEventTrigger= null
trigger array YDWETriggerEvent__DamageEventQueue
integer YDWETriggerEvent__DamageEventNumber= 0
	
item bj_lastMovedItemInItemSlot= null
	
trigger YDWETriggerEvent__MoveItemEventTrigger= null
trigger array YDWETriggerEvent__MoveItemEventQueue
integer YDWETriggerEvent__MoveItemEventNumber= 0
//endglobals from YDWETriggerEvent
//globals from YDWETriggerRegisterEnterRectSimpleNull:
constant boolean LIBRARY_YDWETriggerRegisterEnterRectSimpleNull=true
region yd_NullTempRegion
//endglobals from YDWETriggerRegisterEnterRectSimpleNull
//globals from YDWEUnitHasItemOfTypeBJNull:
constant boolean LIBRARY_YDWEUnitHasItemOfTypeBJNull=true
//endglobals from YDWEUnitHasItemOfTypeBJNull
//globals from YDWEStringFormula:
constant boolean LIBRARY_YDWEStringFormula=true
item bj_lastCombinedItem=null
trigger array YDWEStringFormula__ItemCombineEventQueue
integer YDWEStringFormula__ItemCombineEventNumber= 0
constant integer YDWEStringFormula__MAX_INSTANCES= 8100
constant integer YDWEStringFormula__SEGMENT_LENGTH= 4
integer YDWEStringFormula__FormulaData= 0
//endglobals from YDWEStringFormula
//globals from YDWETimerSystem:
constant boolean LIBRARY_YDWETimerSystem=true
integer YDWETimerSystem__CurrentTime
integer YDWETimerSystem__CurrentIndex
integer YDWETimerSystem__TaskListHead
integer YDWETimerSystem__TaskListIdleHead
integer YDWETimerSystem__TaskListIdleMax
integer array YDWETimerSystem__TaskListIdle
integer array YDWETimerSystem__TaskListNext
integer array YDWETimerSystem__TaskListTime
trigger array YDWETimerSystem__TaskListProc
trigger YDWETimerSystem__fnRemoveUnit
trigger YDWETimerSystem__fnDestroyTimer
trigger YDWETimerSystem__fnRemoveItem
trigger YDWETimerSystem__fnDestroyEffect
trigger YDWETimerSystem__fnDestroyLightning
trigger YDWETimerSystem__fnRunTrigger
timer YDWETimerSystem__Timer
integer YDWETimerSystem__TimerHandle
integer YDWETimerSystem__TimerSystem_RunIndex= 0
//endglobals from YDWETimerSystem
    // User-defined
rect array udg_drop_rect
    // Generated
rect gg_rct_drop1= null
rect gg_rct_drop2= null
rect gg_rct_drop3= null
rect gg_rct_drop4= null
trigger gg_trg_EventFirstOccur= null
trigger gg_trg_MapFirstOccur= null
trigger gg_trg_InitAll= null
unit gg_unit_o011_0006= null
unit gg_unit_o011_0007= null
unit gg_unit_o011_0008= null
unit gg_unit_o011_0009= null
unit gg_unit_o00M_0010= null
unit gg_unit_o00M_0011= null
unit gg_unit_o00M_0012= null
unit gg_unit_o00M_0013= null
unit gg_unit_o00A_0014= null
unit gg_unit_o00P_0015= null
unit gg_unit_o00P_0016= null
unit gg_unit_o00P_0017= null
unit gg_unit_o00P_0018= null
unit gg_unit_o00J_0019= null
unit gg_unit_o00L_0020= null
unit gg_unit_o00K_0021= null
unit gg_unit_o00Q_0022= null
unit gg_unit_e00H_0026= null
unit gg_unit_e00H_0024= null
unit gg_unit_e00H_0025= null
unit gg_unit_e00H_0023= null
unit gg_unit_o013_0027= null
unit gg_unit_o013_0028= null
unit gg_unit_o013_0029= null
unit gg_unit_o013_0030= null
unit gg_unit_o014_0031= null
unit gg_unit_o014_0032= null
unit gg_unit_o014_0033= null
unit gg_unit_o014_0034= null
unit gg_unit_o00N_0035= null
unit gg_unit_o00N_0036= null
unit gg_unit_o00N_0037= null
unit gg_unit_o00N_0038= null
unit gg_unit_o00E_0039= null
unit gg_unit_o00E_0040= null
unit gg_unit_o00E_0041= null
unit gg_unit_o00E_0042= null
constant integer FRAME_ID= - 29734415
integer GUI
constant integer ELEMENT_GOLD= 1
constant integer ELEMENT_WOOD= 2
constant integer ELEMENT_ICE= 3
constant integer ELEMENT_FIRE= 4
constant integer ELEMENT_EARTH= 5
constant integer ELEMENT_LIGHTENING= 6
constant integer ELEMENT_WIND= 7

integer array attackSpeedAbility
integer array powerOfTwo
string PROPERTY_GOLD= "BGOLD5DAYS"
string PROPERTY_LUMBER= "BLUMB5DAYS"
string PROPERTY_WISDOM_BALL= "AWISDOM001"
    // 欧皇大礼包
string PROPERTY_EUROPE= "AEUROPE001"
integer array middle_gold_flag
integer array middle_lumber_flag
integer array five_star_flag
integer array wisdom_ball_flag
integer array europe_flag
    // 词缀
string array affixTitle
string array affixDesc
integer array affixMin
integer array affixMax
constant integer AFFIX_COUNT= 22
integer array exchangeItemId
integer array oneKeyExchangeItemId
unit array exchangeUnit
    // 当前完成兑换的次数
integer array exchangeCount
    // 兑换的奖励
integer array exchangeHit
real array exchangeCriticalRate
real array exchangeCriticalDamage
integer array exchangeStr
integer array exchangeAgi
integer array exchangeInt
real array exchangeManaRecovery
real array exchangeDamage
real array exchangeCooldownReduction
integer array exchangeKillGold
unit array cardShop
hashtable CARD_HT= InitHashtable()
integer array cardMax
real array wisdomBallX
real array wisdomBallY
unit array unitInSelection
constant integer ATTR_STR= 1
constant integer ATTR_AGI= 2
constant integer ATTR_INT= 3
constant integer ATTR_ALL= 4
integer array goldLevel
integer array lumberLevel
integer array tooltipWidget
integer array itemTooltipWidget
	// 显示塔的属性
integer array towerTooltipWidget
	// 显示兑换物品提示
integer array exchangeTooltipWidget
	// 显示波数
integer array waveWidget
integer array exchangeIcon
integer array exchangeIconStatus
	// 显示抽卡结果的图标
integer array cardResultWidget
integer array cardResultTooltipWidget
	
	// 顶部菜单
integer array topMenuWidget
integer array topMenuButton
integer array topMenuSelected

	// 存档项
integer array topMenuItem1Widget
integer array topMenuItem1Button
	// 弹出
integer array popupWidget
integer array popupCloseWidget
integer array popupCloseButton
	// 弹出层右侧
integer array popupRightWidget
	// 商城图标
integer array shopWidget
integer array shopButton
integer array shopTooltipWidget
	// UI设置对齐锚点的常量 DzFrameSetPoint achor定义，从0开始
constant integer TOPLEFT= 0
constant integer TOP= 1
constant integer TOPRIGHT= 2
constant integer LEFT= 3
constant integer CENTER= 4
constant integer RIGHT= 5
constant integer BOTTOMLEFT= 6
constant integer BOTTOM= 7
constant integer BOTTOMRIGHT= 8
	
	//DzFrameSetScript  注册ui事件的事件ID
constant integer NONE= 0
constant integer FRAME_EVENT_PRESSED= 1
constant integer FRAME_MOUSE_ENTER= 2
constant integer FRAME_MOUSE_LEAVE= 3
constant integer FRAME_MOUSE_UP= 4
constant integer FRAME_MOUSE_DOWN= 5
constant integer FRAME_MOUSE_WHEEL= 6
constant integer FRAME_FOCUS_ENTER= FRAME_MOUSE_ENTER
constant integer FRAME_FOCUS_LEAVE= FRAME_MOUSE_LEAVE
constant integer FRAME_CHECKBOX_CHECKED= 7
constant integer FRAME_CHECKBOX_UNCHECKED= 8
constant integer FRAME_EDITBOX_TEXT_CHANGED= 9
constant integer FRAME_POPUPMENU_ITEM_CHANGE_START= 10
constant integer FRAME_POPUPMENU_ITEM_CHANGED= 11
constant integer FRAME_MOUSE_DOUBLECLICK= 12
constant integer FRAME_SPRITE_ANIM_UPDATE= 13
integer array originalAbilityButton
integer array originalItemButton
string array exchangeIconPath
string array exchangeDisIconPath
integer udg_ShengYuGuaiShu= 0
leaderboard udg_jifenpai= null
timer udg_shuabingtimer= null
dialog udg_select_diff= null
button array udg_diff
timer udg_boss_hint= null
integer udg_kill_final_num= 0
integer udg_difficulty= 0
multiboard udg_multi= null
rect gg_rct_circle= null
rect gg_rct______________001= null
rect gg_rct______________002= null
rect gg_rct______________003= null
rect gg_rct______________004= null
rect gg_rct______________005= null
rect gg_rct______________006= null
rect gg_rct______________007= null
rect gg_rct______________008= null
rect gg_rct______________009= null
rect gg_rct______________010= null
rect gg_rct______________011= null
rect gg_rct______________012= null
rect gg_rct______________013= null
rect gg_rct______________014= null
rect gg_rct______________015= null
rect gg_rct______________016= null
rect gg_rct______________017= null
rect gg_rct______________018= null
rect gg_rct______________019= null
rect gg_rct______________020= null
rect gg_rct______________021= null
rect gg_rct______________022= null
rect gg_rct______________023= null
rect gg_rct______________024= null
rect gg_rct_spawn1= null
rect gg_rct_spawn2= null
rect gg_rct_spawn3= null
rect gg_rct_spawn4= null
trigger gg_trg_SystemWindow= null
trigger gg_trg_MapInit= null
trigger gg_trg_OneSecond= null
trigger gg_trg_ChooseNanDu= null
trigger gg_trg_ChooseNanDu_2= null
trigger gg_trg_PlayerLeave= null
trigger gg_trg_KillFinalBoss= null
trigger gg_trg_Win= null
trigger gg_trg____________________001= null
trigger gg_trg_JiFenPaiUpdate= null
trigger gg_trg____________________002= null
trigger gg_trg_FirstOccur= null
integer array udg_zdl
integer array udg_point
integer array udg_pointMax
integer MAX_POINT= 50
integer array udg_success
integer array udg_tech
string array udg_tech_evaluate
boolean array saveFlag
integer unitnumber_lh= 0
integer createdunitnumber_lh= 0
string StringList_naji
string array Sdummy_naji
trigger array Ttest_naji
player Ptest_naji
integer Ihandle_naji
integer Ibm_naji
integer Itrigger_naji
integer Iquest_naji
integer Iweather_naji
boolean Bfog_naji
boolean Bpause_naji
boolean Bxy_naji
boolean Bid_naji
boolean Bir_naji
boolean array Bcamera_naji
boolean Bpn_naji
boolean Bddm_naji
dialog array Dnaji_naji
button array Button_naji
real Rhandle_naji
real Rdummy_naji
real array Rcamera_naji
region Rworld_naji
group array Gcd_naji
group Guw_naji
group Gms_naji
quest array Q_naji
timer Tcamera_naji
texttag array Tbm_naji
weathereffect array Weather_naji
integer array join_menpai_flag
string array menpai_name
integer array menpai_item_id
integer array menpai_builder_id
location array born_loc
integer array udg_jiuyang
integer array udg_jiuyin
integer array udg_douzhuan
integer array udg_xixing
integer array udg_huagong
integer array jianghu_item_id
integer array challenge_id
integer array challenge_item_id
integer array save_present
integer array point2gold
integer array point2lumber
integer array middle_gold
integer array middle_lumber
unit array builder
integer OPEN_DOMINATION_NUM= 5
sound Ih= null
integer DUMMY_OWNER_KEY= 944027
integer array goldHit
integer array lumberHit
real array kungfuCoeff
integer array tower
integer tower_num= 0
integer RANGE_DAMAGE_HASH= $F69219
integer DAMAGE_UNIT_KEY= $DDEFF8
integer DAMAGE_KEY= $DDEFF9
integer damageCounter= 0
integer array normal_drops
integer array rare_drops
integer array valuable_drops
integer array ancient_drops
integer array epic_drops
integer MAX_NORMAL_DROP= 5
integer MAX_RARE_DROP= 5
integer MAX_VALUABLE_DROP= 6
integer MAX_ANCIENT_DROP= 5
integer MAX_EPIC_DROP= 5
integer array luck
integer FIRST_WAVE_TIME= 40
integer SPAWN_FREQUENCY= 2
    // 每波时间
integer WAVE_TIME= 40
    // 每波之前间隔
integer WAVE_INTERVAL= 10
integer BOSS_WAVE_INTERVAL= 9
integer BORN_LOC_X= 977855
integer BORN_LOC_Y= 977854
integer array mob
integer array survive_mob
integer array survive_boss
integer array boss
timer mobTimer
timerdialog mobTimerDialog
timer bossTimer
timerdialog bossTimerDialog
integer wave= 0
trigger spawnTrigger
group attackerGroup
integer gameMode= 0
region array nodes
rect array nodeRects
integer NODE= 65518
dialog array wugong_practice
button array practice_wugong
integer array low_towers
integer array normal_towers
integer array fine_towers
integer array perfect_towers
integer LOW_SIZE= 15
integer NORMAL_SIZE= 15
integer FINE_SIZE= 15
integer PERFECT_SIZE= 13
integer passed_time= 0
integer array shenqi
integer array random_shenqi
integer array juenei
boolean array udg_isTest
integer SHEN_QI_NUM= 11
integer open_shenqi= 3
boolean array showHint
hashtable NHT= InitHashtable()
    // 记录塔功勋的哈希表
hashtable CONT_HT= InitHashtable()
constant integer CONT_KEY= 0
constant integer CONT_MANA_ADDITION= 2
    // 记录塔额外属性的哈希表
hashtable TOWER_ATTR_HT= InitHashtable()
constant integer TOWER_HIT_KEY= 0
constant integer TOWER_CRITICAL_RATE_KEY= 1
constant integer TOWER_CRITICAL_ADDITION_KEY= 2
constant integer TOWER_MANA_RECOVERY_KEY= 3
constant integer TOWER_DAMAGE_KEY= 4
constant integer TOWER_COMBO_KEY= 5
constant integer TOWER_PIERCE_KEY= 6
constant integer TOWER_COOLDOWN_KEY= 7
constant integer TOWER_RESET_CD_KEY= 8
constant integer TOWER_SEAL_KEY= 9

    // 记录装备附加属性的哈希表
hashtable EQUIP_ATTR_HT= InitHashtable()
    // 属性1类型
constant integer EQUIP_ATTR1_TYPE_KEY= 0
    // 属性1值
constant integer EQUIP_ATTR1_VALUE_KEY= 1
    // 属性2类型
constant integer EQUIP_ATTR2_TYPE_KEY= 2
    // 属性2值
constant integer EQUIP_ATTR2_VALUE_KEY= 3
    // 属性3类型
constant integer EQUIP_ATTR3_TYPE_KEY= 4
    // 属性3值
constant integer EQUIP_ATTR3_VALUE_KEY= 5
    // 装备强度
constant integer EQUIP_STRENGTH_KEY= 6
    // 记录装备需要几项附加属性
constant integer EQUIP_ATTR_COUNT_KEY= 999
constant integer EQUIP_LEVEL_KEY= 1000
constant integer EQUIP_ABILITY_KEY= 1001

constant integer EQUIP_PICKUP_KEY= 1002
constant integer EQUIP_INT_LEVEL_KEY= 1003
constant integer EQUIP_BASE_STRENGTH_KEY= 1004

constant integer TOWER_LEVEL_KEY= 2000

    // 判断是否处于失败状态
boolean isFailing= false
integer failingCounter= 0
    // 玩家是否有智慧球
boolean array hasWisdomBall
unit array wisbomBall
    
    // 智慧球智能模式
boolean array wisdomBallSmartMode
unit fastPickUnit= null
trigger array st___prototype25
boolean finalBossAttack= false
    // 存档相关
boolean array qqTeamAward
integer array mapLevel
integer array winDifficulty


trigger l__library_init

//JASSHelper struct globals:
constant integer si__Frame=1
integer si__Frame_F=0
integer si__Frame_I=0
integer array si__Frame_V
hashtable s__Frame_HT= InitHashtable()
integer s__Frame_num= 0
integer array s__Frame_id
boolean array s__Frame_isShow
boolean array s__Frame_isEnable
boolean array s__Frame_hover
constant integer si__ImageButton=2
integer si__ImageButton_F=0
integer si__ImageButton_I=0
integer array si__ImageButton_V
integer array s__ImageButton_image
integer array s__ImageButton_button
constant integer si__ModSpeed=3
timer s__ModSpeed_tm= CreateTimer()
integer s__ModSpeed_instanceMaxCount= 0
integer array s__ModSpeed_prev
integer array s__ModSpeed_next
unit array s__ModSpeed_u
real array s__ModSpeed_lastX
real array s__ModSpeed_lastY
real array s__ModSpeed_speed
boolean array s__ModSpeed_lead
real s__ModSpeed_x
real s__ModSpeed_y
real s__ModSpeed_dx
real s__ModSpeed_dy
real s__ModSpeed_dist
real s__ModSpeed_rate
constant integer si__Tower=4
integer si__Tower_F=0
integer si__Tower_I=0
integer array si__Tower_V
unit array s__Tower_u
constant integer si__YDWEStringFormula__Inventory=5
integer si__YDWEStringFormula__Inventory_F=0
integer si__YDWEStringFormula__Inventory_I=0
integer array si__YDWEStringFormula__Inventory_V
constant integer si__YDWEStringFormula__StringTable=6
constant integer si__YDWEStringFormula__ItemIdMatrix=7
integer s__YDWEStringFormula__ItemIdMatrix_Data
integer s__YDWEStringFormula__ItemIdMatrix_Total= 1
integer array s__YDWEStringFormula__ItemIdMatrix_itemId
string array s__YDWEStringFormula__ItemIdMatrix_keyStr
integer array s__YDWEStringFormula__ItemIdMatrix_keyLen
constant integer si__YDWEStringFormula__FormulaMatrix=8
integer s__YDWEStringFormula__FormulaMatrix_Data
integer s__YDWEStringFormula__FormulaMatrix_Total= 1
string array s__YDWEStringFormula__FormulaMatrix_formula
integer array s__YDWEStringFormula__FormulaMatrix_segmLen
string array s__YDWEStringFormula__FormulaMatrix_model
string array s__YDWEStringFormula__FormulaMatrix_message
integer array s__YDWEStringFormula__FormulaMatrix_chance
boolean array s__YDWEStringFormula__FormulaMatrix_delete
constant integer si__YDWEStringFormula__Sorting=9
integer si__YDWEStringFormula__Sorting_F=0
integer si__YDWEStringFormula__Sorting_I=0
integer array si__YDWEStringFormula__Sorting_V
integer array s___YDWEStringFormula__Sorting_stack
constant integer s___YDWEStringFormula__Sorting_stack_size=8
integer array s__YDWEStringFormula__Sorting_stack
integer array s___YDWEStringFormula__Sorting_count
constant integer s___YDWEStringFormula__Sorting_count_size=8
integer array s__YDWEStringFormula__Sorting_count
integer array s__YDWEStringFormula__Sorting_total
string array s__YDWEStringFormula__Sorting_char
integer array si__YDWEStringFormula__Inventory_type
trigger array st__YDWEStringFormula__Inventory_onDestroy
trigger st__Frame_onDestroy
trigger st__Tower_setAbility
trigger st__Tower_setItemNum
trigger st__YDWEStringFormula__Sorting_onDestroy
trigger array st___prototype9
integer f__arg_integer1
unit f__arg_unit1
real f__arg_real1
integer f__arg_this

endglobals
    native DzGetMouseTerrainX takes nothing returns real
    native DzGetMouseTerrainY takes nothing returns real
    native DzGetMouseTerrainZ takes nothing returns real
    native DzIsMouseOverUI takes nothing returns boolean
    native DzGetMouseX takes nothing returns integer
    native DzGetMouseY takes nothing returns integer
    native DzGetMouseXRelative takes nothing returns integer
    native DzGetMouseYRelative takes nothing returns integer
    native DzSetMousePos takes integer x, integer y returns nothing
    native DzTriggerRegisterMouseEvent takes trigger trig, integer btn, integer status, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseEventByCode takes trigger trig, integer btn, integer status, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterKeyEvent takes trigger trig, integer key, integer status, boolean sync, string func returns nothing
    native DzTriggerRegisterKeyEventByCode takes trigger trig, integer key, integer status, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterMouseWheelEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseWheelEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzTriggerRegisterMouseMoveEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterMouseMoveEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzGetTriggerKey takes nothing returns integer
    native DzGetWheelDelta takes nothing returns integer
    native DzIsKeyDown takes integer iKey returns boolean
    native DzGetTriggerKeyPlayer takes nothing returns player
    native DzGetWindowWidth takes nothing returns integer
    native DzGetWindowHeight takes nothing returns integer
    native DzGetWindowX takes nothing returns integer
    native DzGetWindowY takes nothing returns integer
    native DzTriggerRegisterWindowResizeEvent takes trigger trig, boolean sync, string func returns nothing
    native DzTriggerRegisterWindowResizeEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
    native DzIsWindowActive takes nothing returns boolean
    native DzDestructablePosition takes destructable d, real x, real y returns nothing
    native DzSetUnitPosition takes unit whichUnit, real x, real y returns nothing
    native DzExecuteFunc takes string funcName returns nothing
    native DzGetUnitUnderMouse takes nothing returns unit
    native DzSetUnitTexture takes unit whichUnit, string path, integer texId returns nothing
    native DzSetMemory takes integer address, real value returns nothing
    native DzSetUnitID takes unit whichUnit, integer id returns nothing
    native DzSetUnitModel takes unit whichUnit, string path returns nothing
    native DzSetWar3MapMap takes string map returns nothing
    native DzGetLocale takes nothing returns string
    native DzGetUnitNeededXP takes unit whichUnit, integer level returns integer
    native DzTriggerRegisterSyncData takes trigger trig, string prefix, boolean server returns nothing
    native DzSyncData takes string prefix, string data returns nothing
    native DzGetTriggerSyncData takes nothing returns string
    native DzGetTriggerSyncPlayer takes nothing returns player
    native DzFrameHideInterface takes nothing returns nothing
    native DzFrameEditBlackBorders takes real upperHeight, real bottomHeight returns nothing
    native DzFrameGetPortrait takes nothing returns integer
    native DzFrameGetMinimap takes nothing returns integer
    native DzFrameGetCommandBarButton takes integer row, integer column returns integer
    native DzFrameGetHeroBarButton takes integer buttonId returns integer
    native DzFrameGetHeroHPBar takes integer buttonId returns integer
    native DzFrameGetHeroManaBar takes integer buttonId returns integer
    native DzFrameGetItemBarButton takes integer buttonId returns integer
    native DzFrameGetMinimapButton takes integer buttonId returns integer
    native DzFrameGetUpperButtonBarButton takes integer buttonId returns integer
    native DzFrameGetTooltip takes nothing returns integer
    native DzFrameGetChatMessage takes nothing returns integer
    native DzFrameGetUnitMessage takes nothing returns integer
    native DzFrameGetTopMessage takes nothing returns integer
    native DzGetColor takes integer r, integer g, integer b, integer a returns integer
    native DzFrameSetUpdateCallback takes string func returns nothing
    native DzFrameSetUpdateCallbackByCode takes code funcHandle returns nothing
    native DzFrameShow takes integer frame, boolean enable returns nothing
    native DzCreateFrame takes string frame, integer parent, integer id returns integer
    native DzCreateSimpleFrame takes string frame, integer parent, integer id returns integer
    native DzDestroyFrame takes integer frame returns nothing
    native DzLoadToc takes string fileName returns nothing
    native DzFrameSetPoint takes integer frame, integer point, integer relativeFrame, integer relativePoint, real x, real y returns nothing
    native DzFrameSetAbsolutePoint takes integer frame, integer point, real x, real y returns nothing
    native DzFrameClearAllPoints takes integer frame returns nothing
    native DzFrameSetEnable takes integer name, boolean enable returns nothing
    native DzFrameSetScript takes integer frame, integer eventId, string func, boolean sync returns nothing
    native DzFrameSetScriptByCode takes integer frame, integer eventId, code funcHandle, boolean sync returns nothing
    native DzGetTriggerUIEventPlayer takes nothing returns player
    native DzGetTriggerUIEventFrame takes nothing returns integer
    native DzFrameFindByName takes string name, integer id returns integer
    native DzSimpleFrameFindByName takes string name, integer id returns integer
    native DzSimpleFontStringFindByName takes string name, integer id returns integer
    native DzSimpleTextureFindByName takes string name, integer id returns integer
    native DzGetGameUI takes nothing returns integer
    native DzClickFrame takes integer frame returns nothing
    native DzSetCustomFovFix takes real value returns nothing
    native DzEnableWideScreen takes boolean enable returns nothing
    native DzFrameSetText takes integer frame, string text returns nothing
    native DzFrameGetText takes integer frame returns string
    native DzFrameSetTextSizeLimit takes integer frame, integer size returns nothing
    native DzFrameGetTextSizeLimit takes integer frame returns integer
    native DzFrameSetTextColor takes integer frame, integer color returns nothing
    native DzGetMouseFocus takes nothing returns integer
    native DzFrameSetAllPoints takes integer frame, integer relativeFrame returns boolean
    native DzFrameSetFocus takes integer frame, boolean enable returns boolean
    native DzFrameSetModel takes integer frame, string modelFile, integer modelType, integer flag returns nothing
    native DzFrameGetEnable takes integer frame returns boolean
    native DzFrameSetAlpha takes integer frame, integer alpha returns nothing
    native DzFrameGetAlpha takes integer frame returns integer
    native DzFrameSetAnimate takes integer frame, integer animId, boolean autocast returns nothing
    native DzFrameSetAnimateOffset takes integer frame, real offset returns nothing
    native DzFrameSetTexture takes integer frame, string texture, integer flag returns nothing
    native DzFrameSetScale takes integer frame, real scale returns nothing
    native DzFrameSetTooltip takes integer frame, integer tooltip returns nothing
    native DzFrameCageMouse takes integer frame, boolean enable returns nothing
    native DzFrameGetValue takes integer frame returns real
    native DzFrameSetMinMaxValue takes integer frame, real minValue, real maxValue returns nothing
    native DzFrameSetStepValue takes integer frame, real step returns nothing
    native DzFrameSetValue takes integer frame, real value returns nothing
    native DzFrameSetSize takes integer frame, real w, real h returns nothing
    native DzCreateFrameByTagName takes string frameType, string name, integer parent, string template, integer id returns integer
    native DzFrameSetVertexColor takes integer frame, integer color returns nothing
    native DzOriginalUIAutoResetPoint takes boolean enable returns nothing
    native DzFrameSetPriority takes integer frame, integer priority returns nothing
    native DzFrameSetParent takes integer frame, integer parent returns nothing
    native DzFrameGetHeight takes integer frame returns real
    native DzFrameSetFont takes integer frame, string fileName, real height, integer flag returns nothing
    native DzFrameGetParent takes integer frame returns integer
    native DzFrameSetTextAlignment takes integer frame, integer align returns nothing
    native DzFrameGetName takes integer frame returns string
native DzAPI_Map_SaveServerValue takes player whichPlayer, string key, string value returns boolean
native DzAPI_Map_GetServerValue takes player whichPlayer, string key returns string
native DzAPI_Map_Ladder_SetStat takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_IsRPGLadder takes nothing returns boolean
native DzAPI_Map_GetGameStartTime takes nothing returns integer
native DzAPI_Map_Stat_SetStat takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_GetMatchType takes nothing returns integer
native DzAPI_Map_Ladder_SetPlayerStat takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_GetServerValueErrorCode takes player whichPlayer returns integer
native DzAPI_Map_GetLadderLevel takes player whichPlayer returns integer
native DzAPI_Map_IsRedVIP takes player whichPlayer returns boolean
native DzAPI_Map_IsBlueVIP takes player whichPlayer returns boolean
native DzAPI_Map_GetLadderRank takes player whichPlayer returns integer
native DzAPI_Map_GetMapLevelRank takes player whichPlayer returns integer
native DzAPI_Map_GetGuildName takes player whichPlayer returns string
native DzAPI_Map_GetGuildRole takes player whichPlayer returns integer
native DzAPI_Map_IsRPGLobby takes nothing returns boolean
native DzAPI_Map_GetMapLevel takes player whichPlayer returns integer
native DzAPI_Map_MissionComplete takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_GetActivityData takes nothing returns string
native DzAPI_Map_GetMapConfig takes string key returns string
native DzAPI_Map_HasMallItem takes player whichPlayer, string key returns boolean
native DzAPI_Map_SavePublicArchive takes player whichPlayer, string key, string value returns boolean
native DzAPI_Map_GetPublicArchive takes player whichPlayer, string key returns string
native DzAPI_Map_UseConsumablesItem takes player whichPlayer, string key returns nothing
native DzAPI_Map_OrpgTrigger takes player whichPlayer, string key returns nothing
native DzAPI_Map_GetServerArchiveDrop takes player whichPlayer, string key returns string
native DzAPI_Map_GetServerArchiveEquip takes player whichPlayer, string key returns integer
native RequestExtraIntegerData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns integer
native RequestExtraBooleanData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns boolean
native RequestExtraStringData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns string
native RequestExtraRealData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns real
native DzAPI_Map_GetPlatformVIP takes player whichPlayer returns integer
native EXGetUnitAbility takes unit u, integer abilcode returns ability
native EXGetUnitAbilityByIndex takes unit u, integer index returns ability
native EXGetAbilityId takes ability abil returns integer
native EXGetAbilityState takes ability abil, integer state_type returns real
native EXSetAbilityState takes ability abil, integer state_type, real value returns boolean
native EXGetAbilityDataReal takes ability abil, integer level, integer data_type returns real
native EXSetAbilityDataReal takes ability abil, integer level, integer data_type, real value returns boolean
native EXGetAbilityDataInteger takes ability abil, integer level, integer data_type returns integer
native EXSetAbilityDataInteger takes ability abil, integer level, integer data_type, integer value returns boolean
native EXGetAbilityDataString takes ability abil, integer level, integer data_type returns string
native EXSetAbilityDataString takes ability abil, integer level, integer data_type, string value returns boolean
native EXSetAbilityAEmeDataA takes ability abil, integer unitid returns boolean
native EXGetItemDataString takes integer itemcode, integer data_type returns string
native EXSetItemDataString takes integer itemcode, integer data_type, string value returns boolean
native EXGetEventDamageData takes integer edd_type returns integer
native EXSetEventDamage takes real amount returns boolean
native EXGetEffectX takes effect e returns real
native EXGetEffectY takes effect e returns real
native EXGetEffectZ takes effect e returns real
native EXSetEffectXY takes effect e, real x, real y returns nothing
native EXSetEffectZ takes effect e, real z returns nothing
native EXGetEffectSize takes effect e returns real
native EXSetEffectSize takes effect e, real size returns nothing
native EXEffectMatRotateX takes effect e, real angle returns nothing
native EXEffectMatRotateY takes effect e, real angle returns nothing
native EXEffectMatRotateZ takes effect e, real angle returns nothing
native EXEffectMatScale takes effect e, real x, real y, real z returns nothing
native EXEffectMatReset takes effect e returns nothing
native EXSetEffectSpeed takes effect e, real speed returns nothing
native EXExecuteScript takes string script returns string
native EXSetUnitArrayString takes integer uid, integer id, integer n, string name returns boolean
native EXSetUnitInteger takes integer uid, integer id, integer n returns boolean


//Generated method caller for Frame.onDestroy
function sc__Frame_onDestroy takes integer this returns nothing
            if s__Frame_id[this] != 0 then
                call DzDestroyFrame(s__Frame_id[this])
            endif
            set s__Frame_id[this]=0
endfunction

//Generated allocator of Frame
function s__Frame__allocate takes nothing returns integer
 local integer this=si__Frame_F
    if (this!=0) then
        set si__Frame_F=si__Frame_V[this]
    else
        set si__Frame_I=si__Frame_I+1
        set this=si__Frame_I
    endif
    if (this>8190) then
        return 0
    endif

   set s__Frame_id[this]= 0
   set s__Frame_isShow[this]= true
   set s__Frame_isEnable[this]= true
   set s__Frame_hover[this]= false
    set si__Frame_V[this]=-1
 return this
endfunction

//Generated destructor of Frame
function sc__Frame_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Frame_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__Frame_onDestroy)
    set si__Frame_V[this]=si__Frame_F
    set si__Frame_F=this
endfunction

//Generated method caller for YDWEStringFormula__Sorting.onDestroy
function sc__YDWEStringFormula__Sorting_onDestroy takes integer this returns nothing
            local integer i= 0
            loop
                exitwhen i == s___YDWEStringFormula__Sorting_stack_size
                set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+i]=0
                set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+i]=0
                set i=i + 1
            endloop
            set s__YDWEStringFormula__Sorting_char[this]=""
endfunction

//Generated allocator of YDWEStringFormula__Sorting
function s__YDWEStringFormula__Sorting__allocate takes nothing returns integer
 local integer this=si__YDWEStringFormula__Sorting_F
    if (this!=0) then
        set si__YDWEStringFormula__Sorting_F=si__YDWEStringFormula__Sorting_V[this]
    else
        set si__YDWEStringFormula__Sorting_I=si__YDWEStringFormula__Sorting_I+1
        set this=si__YDWEStringFormula__Sorting_I
    endif
    if (this>1022) then
        return 0
    endif
    set s__YDWEStringFormula__Sorting_stack[this]=(this-1)*8
    set s__YDWEStringFormula__Sorting_count[this]=(this-1)*8
   set s__YDWEStringFormula__Sorting_total[this]= 7
    set si__YDWEStringFormula__Sorting_V[this]=-1
 return this
endfunction

//Generated destructor of YDWEStringFormula__Sorting
function sc__YDWEStringFormula__Sorting_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__YDWEStringFormula__Sorting_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__YDWEStringFormula__Sorting_onDestroy)
    set si__YDWEStringFormula__Sorting_V[this]=si__YDWEStringFormula__Sorting_F
    set si__YDWEStringFormula__Sorting_F=this
endfunction

//Generated allocator of ImageButton
function s__ImageButton__allocate takes nothing returns integer
 local integer this=si__ImageButton_F
    if (this!=0) then
        set si__ImageButton_F=si__ImageButton_V[this]
    else
        set si__ImageButton_I=si__ImageButton_I+1
        set this=si__ImageButton_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__ImageButton_V[this]=-1
 return this
endfunction

//Generated destructor of ImageButton
function s__ImageButton_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__ImageButton_V[this]!=-1) then
        return
    endif
    set si__ImageButton_V[this]=si__ImageButton_F
    set si__ImageButton_F=this
endfunction

//Generated method caller for YDWEStringFormula__Inventory.onDestroy
function sc__YDWEStringFormula__Inventory_onDestroy takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__YDWEStringFormula__Inventory_onDestroy[5])
endfunction

//Generated allocator of YDWEStringFormula__Inventory
function s__YDWEStringFormula__Inventory__allocate takes nothing returns integer
 local integer this=si__YDWEStringFormula__Inventory_F
    if (this!=0) then
        set si__YDWEStringFormula__Inventory_F=si__YDWEStringFormula__Inventory_V[this]
    else
        set si__YDWEStringFormula__Inventory_I=si__YDWEStringFormula__Inventory_I+1
        set this=si__YDWEStringFormula__Inventory_I
    endif
    if (this>8190) then
        return 0
    endif

    set si__YDWEStringFormula__Inventory_type[this]=5
    set si__YDWEStringFormula__Inventory_V[this]=-1
 return this
endfunction

//Generated destructor of YDWEStringFormula__Inventory
function sc__YDWEStringFormula__Inventory_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__YDWEStringFormula__Inventory_V[this]!=-1) then
        return
    endif
    set f__arg_this=this
    call TriggerEvaluate(st__YDWEStringFormula__Inventory_onDestroy[si__YDWEStringFormula__Inventory_type[this]])
    set si__YDWEStringFormula__Inventory_V[this]=si__YDWEStringFormula__Inventory_F
    set si__YDWEStringFormula__Inventory_F=this
endfunction

//Generated method caller for Tower.setAbility
function sc__Tower_setAbility takes integer this returns nothing
    set f__arg_this=this
    call TriggerEvaluate(st__Tower_setAbility)
endfunction

//Generated method caller for Tower.setItemNum
function sc__Tower_setItemNum takes integer this,integer item_num returns nothing
            if item_num > 0 then
                call UnitAddAbility(s__Tower_u[this], 'A011')
                call SetUnitAbilityLevel(s__Tower_u[this], 'A011', item_num)
                call UnitMakeAbilityPermanent(s__Tower_u[this], true, 'A011')
            endif
endfunction

//Generated allocator of Tower
function s__Tower__allocate takes nothing returns integer
 local integer this=si__Tower_F
    if (this!=0) then
        set si__Tower_F=si__Tower_V[this]
    else
        set si__Tower_I=si__Tower_I+1
        set this=si__Tower_I
    endif
    if (this>8190) then
        return 0
    endif

   set s__Tower_u[this]= null
    set si__Tower_V[this]=-1
 return this
endfunction

//Generated destructor of Tower
function s__Tower_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Tower_V[this]!=-1) then
        return
    endif
    set si__Tower_V[this]=si__Tower_F
    set si__Tower_F=this
endfunction

//Generated allocator of YDWEStringFormula__StringTable
function s__YDWEStringFormula__StringTable__allocate takes nothing returns integer
 local integer this=s__YDWEStringFormula__Inventory__allocate()
 local integer kthis
    if(this==0) then
        return 0
    endif
    set si__YDWEStringFormula__Inventory_type[this]=6
    set kthis=this

 return this
endfunction

function sc___prototype9_execute takes integer i,unit a1,real a2 returns nothing
    set f__arg_unit1=a1
    set f__arg_real1=a2

    call TriggerExecute(st___prototype9[i])
endfunction
function sc___prototype9_evaluate takes integer i,unit a1,real a2 returns nothing
    set f__arg_unit1=a1
    set f__arg_real1=a2

    call TriggerEvaluate(st___prototype9[i])

endfunction
function h__SetUnitMoveSpeed takes unit a0, real a1 returns nothing
    //hook: SetUnitMoveSpeedEx
    call sc___prototype9_evaluate(1,a0,a1)
call SetUnitMoveSpeed(a0,a1)
endfunction

//library BzAPI:
    //hardware




























    //plus











    //sync




    //gui








































































    function DzTriggerRegisterMouseEventTrg takes trigger trg,integer status,integer btn returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterMouseEvent(trg, btn, status, true, null)
    endfunction
    function DzTriggerRegisterKeyEventTrg takes trigger trg,integer status,integer btn returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterKeyEvent(trg, btn, status, true, null)
    endfunction
    function DzTriggerRegisterMouseMoveEventTrg takes trigger trg returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterMouseMoveEvent(trg, true, null)
    endfunction
    function DzTriggerRegisterMouseWheelEventTrg takes trigger trg returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterMouseWheelEvent(trg, true, null)
    endfunction
    function DzTriggerRegisterWindowResizeEventTrg takes trigger trg returns nothing
        if trg == null then
            return
        endif
        call DzTriggerRegisterWindowResizeEvent(trg, true, null)
    endfunction
    function DzF2I takes integer i returns integer
        return i
    endfunction
    function DzI2F takes integer i returns integer
        return i
    endfunction
    function DzK2I takes integer i returns integer
        return i
    endfunction
    function DzI2K takes integer i returns integer
        return i
    endfunction
 function DzTriggerRegisterMallItemSyncData takes trigger trig returns nothing
		call DzTriggerRegisterSyncData(trig, "DZMIA", true)
	endfunction
  function DzGetTriggerMallItemPlayer takes nothing returns player
		return DzGetTriggerSyncPlayer()
	endfunction
  function DzGetTriggerMallItem takes nothing returns string
		return DzGetTriggerSyncData()
	endfunction

//library BzAPI ends
//library FrameLibrary:
        function s__Frame_numadd takes integer this returns nothing
            set s__Frame_num=s__Frame_num + 1
        endfunction
        function s__Frame_getFrame takes integer id returns integer
            local integer f= LoadInteger(s__Frame_HT, FRAME_ID, id)
            if f == 0 then
                set f=s__Frame__allocate()
                set s__Frame_id[f]=id
                call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            endif
            return f
        endfunction
        function s__Frame_new takes string name,integer parent returns integer
            local integer f= s__Frame__allocate()
            set s__Frame_id[f]=DzCreateFrame(name, s__Frame_id[parent], 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newImage0 takes integer parent returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BACKDROP", "Frame_Image" + I2S(s__Frame_num), s__Frame_id[parent], "ImageTemplate", 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newImage1 takes integer parent,string path,real w,real h returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BACKDROP", "Frame_Image" + I2S(s__Frame_num), s__Frame_id[parent], "ImageTemplate", 0)
            if path != null then
                call DzFrameSetTexture(s__Frame_id[f], path, 0)
            endif
            call DzFrameSetSize(s__Frame_id[f], w, h)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newSprite takes integer parent,string path returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("SPRITE", "Frame_Sprite" + I2S(s__Frame_num), s__Frame_id[parent], "sprite", 0)
            call DzFrameSetModel(s__Frame_id[f], path, 0, 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newTips0 takes integer parent,string path returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BACKDROP", "Frame_Image" + I2S(s__Frame_num), s__Frame_id[parent], path, 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newTips takes integer parent,string path,real w,real h returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BACKDROP", "Frame_Image" + I2S(s__Frame_num), s__Frame_id[parent], path, 0)
            call DzFrameSetSize(s__Frame_id[f], w, h)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newText0 takes integer parent,string ff returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("TEXT", "Frame_Text" + I2S(s__Frame_num), s__Frame_id[parent], ff, 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newText1 takes integer parent,string str,string ff returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("TEXT", "Frame_Text" + I2S(s__Frame_num), s__Frame_id[parent], ff, 0)
            call DzFrameSetText(s__Frame_id[f], str)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newTextButton takes integer parent returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("GLUETEXTBUTTON", "Frame_Button" + I2S(s__Frame_num), s__Frame_id[parent], "template", 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newButton0 takes integer parent returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON", "Frame_Button" + I2S(s__Frame_num), s__Frame_id[parent], "ButtonTemplate", 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newButton1 takes integer parent,real w,real h returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON", "Frame_Button" + I2S(s__Frame_num), s__Frame_id[parent], "ButtonTemplate", 0)
            call DzFrameSetSize(s__Frame_id[f], w, h)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newButtonEmpty0 takes integer parent returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON", "Frame_ButtonEmpty" + I2S(s__Frame_num), s__Frame_id[parent], "ButtonTemplateEmpty", 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newButtonEmpty1 takes integer parent,real w,real h returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON", "Frame_ButtonEmpty" + I2S(s__Frame_num), s__Frame_id[parent], "ButtonTemplateEmpty", 0)
            call DzFrameSetSize(s__Frame_id[f], w, h)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_newCloseButton takes integer parent returns integer
            local integer f= s__Frame__allocate()
            call s__Frame_numadd(f)
            set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON", "Frame_ButtonEmpty" + I2S(s__Frame_num), s__Frame_id[parent], "icon1", 0)
            call SaveInteger(s__Frame_HT, FRAME_ID, s__Frame_id[f], f)
            return f
        endfunction
        function s__Frame_setScale takes integer this,real r returns nothing
            call DzFrameSetScale(s__Frame_id[this], r)
        endfunction
        function s__Frame_setColor takes integer this,integer c returns nothing
            call DzFrameSetTextColor(s__Frame_id[this], c)
        endfunction
        function s__Frame_setSize takes integer this,real w,real h returns nothing
            call DzFrameSetSize(s__Frame_id[this], w, h)
        endfunction
        function s__Frame_setTexture takes integer this,string path returns nothing
            call DzFrameSetTexture(s__Frame_id[this], path, 0)
        endfunction
        function s__Frame_setText takes integer this,string str returns nothing
            call DzFrameSetText(s__Frame_id[this], str)
        endfunction
        function s__Frame_setPoint takes integer this,integer a,integer tar,integer b,real x,real y returns nothing
            call DzFrameSetPoint(s__Frame_id[this], a, s__Frame_id[tar], b, x, y)
        endfunction
        function s__Frame_setPriority takes integer this,integer prior returns nothing
            call DzFrameSetPriority(s__Frame_id[this], prior)
        endfunction
        function s__Frame_setColor255 takes integer this,integer r,integer g,integer b returns nothing
            call DzFrameSetTextColor(s__Frame_id[this], DzGetColor(255, r, g, b))
        endfunction
        function s__Frame_setAllPoints takes integer this,integer tar returns nothing
            call DzFrameSetAllPoints(s__Frame_id[this], s__Frame_id[tar])
        endfunction
        function s__Frame_clearAllPoints takes integer this returns nothing
            call DzFrameClearAllPoints(s__Frame_id[this])
        endfunction
        function s__Frame_regEvent takes integer this,integer i,code func returns nothing
            call DzFrameSetScriptByCode(s__Frame_id[this], i, func, false)
        endfunction
        function s__Frame_regWheelEvent takes integer this,code func returns nothing
            call DzFrameSetScriptByCode(s__Frame_id[this], 6, func, false)
        endfunction
        function s__Frame_regClickEvent takes integer this,code func returns nothing
            call DzFrameSetScriptByCode(s__Frame_id[this], 1, func, false)
        endfunction
        function s__Frame_hide takes integer this returns nothing
            call DzFrameShow(s__Frame_id[this], false)
            set s__Frame_isShow[this]=false
        endfunction
        function s__Frame_show takes integer this returns nothing
            call DzFrameShow(s__Frame_id[this], true)
            set s__Frame_isShow[this]=true
        endfunction
        function s__Frame_toggle takes integer this returns nothing
            if s__Frame_isShow[this] then
                call DzFrameShow(s__Frame_id[this], false)
                set s__Frame_isShow[this]=false
            else
                call DzFrameShow(s__Frame_id[this], true)
                set s__Frame_isShow[this]=true
            endif
        endfunction
        function s__Frame_toggerHover takes integer this,string path0,string path1 returns nothing
            if s__Frame_hover[this] then
                set s__Frame_hover[this]=false
                call DzFrameSetTexture(s__Frame_id[this], path0, 0)
            else
                set s__Frame_hover[this]=true
                call DzFrameSetTexture(s__Frame_id[this], path1, 0)
            endif
        endfunction
        function s__Frame_enable takes integer this returns nothing
            call DzFrameSetEnable(s__Frame_id[this], true)
            set s__Frame_isEnable[this]=true
        endfunction
        function s__Frame_disable takes integer this returns nothing
            call DzFrameSetEnable(s__Frame_id[this], false)
            set s__Frame_isEnable[this]=false
        endfunction
        function s__Frame_setAlpha takes integer this,integer a returns nothing
            call DzFrameSetAlpha(s__Frame_id[this], a)
        endfunction
        function s__Frame_getAlpha takes integer this returns integer
            return DzFrameGetAlpha(s__Frame_id[this])
        endfunction
        function s__Frame_onDestroy takes integer this returns nothing
            if s__Frame_id[this] != 0 then
                call DzDestroyFrame(s__Frame_id[this])
            endif
            set s__Frame_id[this]=0
        endfunction

//Generated destructor of Frame
function s__Frame_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__Frame_V[this]!=-1) then
        return
    endif
    call s__Frame_onDestroy(this)
    set si__Frame_V[this]=si__Frame_F
    set si__Frame_F=this
endfunction
    
    function onButtonPressed takes nothing returns nothing
    endfunction
    function toggleImage takes nothing returns nothing
        
    endfunction
        function s__ImageButton_create takes integer imageWidget,real w,real h returns integer
            local integer ib= s__ImageButton__allocate()
            set s__ImageButton_image[ib]=imageWidget
            set s__ImageButton_button[ib]=s__Frame_newTextButton(s__ImageButton_image[ib])
            call DzFrameSetAllPoints(s__Frame_id[(s__ImageButton_button[ib])], s__Frame_id[(s__ImageButton_image[ib])]) // INLINED!!
            call DzFrameSetScriptByCode(s__Frame_id[(s__ImageButton_button[ib])], (FRAME_EVENT_PRESSED ), ( function onButtonPressed), false) // INLINED!!
            call DzFrameSetScriptByCode(s__Frame_id[(s__ImageButton_button[ib])], (FRAME_MOUSE_ENTER ), ( function toggleImage), false) // INLINED!!
            call DzFrameSetScriptByCode(s__Frame_id[(s__ImageButton_button[ib])], (FRAME_MOUSE_LEAVE ), ( function toggleImage), false) // INLINED!!
            return ib
        endfunction
    function FrameLibrary___init takes nothing returns nothing
        // local integer f = DzFrameGetTooltip()
        // local real size = 0.75
        set GUI=s__Frame_getFrame(DzGetGameUI())
        //call openBoardButton.setText("任务")
        //call DzFrameClearAllPoints(f)
        //call DzFrameSetPoint(f, 7, DzGetGameUI(), 7, 0, .14)
    endfunction

//library FrameLibrary ends
//library MaxSpeed:
   
   
   
            //private:
   
            //temp variables
   







//Implemented from module Init:





   
            function s__ModSpeed_destroy takes integer this returns nothing
                set s__ModSpeed_speed[this]=0.
                if ( s__ModSpeed_next[this] != 0 ) then
                    set s__ModSpeed_prev[s__ModSpeed_next[this]]=s__ModSpeed_prev[this]
                endif
                set s__ModSpeed_next[s__ModSpeed_prev[this]]=s__ModSpeed_next[this]
                set s__ModSpeed_prev[this]=s__ModSpeed_prev[(0)]
                set s__ModSpeed_prev[(0)]=this
                if ( s__ModSpeed_next[(0)] == 0 ) then
                    call PauseTimer(s__ModSpeed_tm)



                endif







            endfunction
   
           function s__ModSpeed__get_moveFilter takes integer this returns boolean
                return GetUnitAbilityLevel(s__ModSpeed_u[this], 'BSTN') < 1 and GetUnitAbilityLevel(s__ModSpeed_u[this], 'BPSE') < 1 and GetUnitMoveSpeed(s__ModSpeed_u[this]) > 521.0 and not IsUnitPaused(s__ModSpeed_u[this]) and not s__ModSpeed_lead[this]
            endfunction
   
            function s__ModSpeed_move takes integer this returns nothing
                if ( not s__ModSpeed__get_moveFilter(this) ) then
                    return
                endif
                set s__ModSpeed_x=GetUnitX(s__ModSpeed_u[this])
                set s__ModSpeed_y=GetUnitY(s__ModSpeed_u[this])
                set s__ModSpeed_dx=s__ModSpeed_x - s__ModSpeed_lastX[this]
                set s__ModSpeed_dy=s__ModSpeed_y - s__ModSpeed_lastY[this]
                set s__ModSpeed_lastX[this]=s__ModSpeed_x
                set s__ModSpeed_lastY[this]=s__ModSpeed_y
                set s__ModSpeed_dist=SquareRoot(s__ModSpeed_dx * s__ModSpeed_dx + s__ModSpeed_dy * s__ModSpeed_dy) / MaxSpeed___PERIOD
                if ( s__ModSpeed_dist >= MaxSpeed___MIN_SPEED and s__ModSpeed_dist <= MaxSpeed___MAX_SPEED ) then
                    set s__ModSpeed_rate=( s__ModSpeed_speed[this] - 522. ) / s__ModSpeed_dist
                    set s__ModSpeed_lastX[this]=s__ModSpeed_x + s__ModSpeed_dx * s__ModSpeed_rate
                    set s__ModSpeed_lastY[this]=s__ModSpeed_y + s__ModSpeed_dy * s__ModSpeed_rate
                    call SetUnitX(s__ModSpeed_u[this], s__ModSpeed_lastX[this])
                    call SetUnitY(s__ModSpeed_u[this], s__ModSpeed_lastY[this])



                endif
            endfunction
   
            function s__ModSpeed_iterate takes nothing returns nothing
                local integer this= (0)
                loop
                    set this=s__ModSpeed_next[this]
                    exitwhen ( this == 0 )
                    if ( GetWidgetLife(s__ModSpeed_u[this]) < 0.405 ) then
                        call s__ModSpeed_destroy(this)
                    else
                        call s__ModSpeed_move(this)
                    endif
                endloop
            endfunction
   
   
            //public:
            function s__ModSpeed_getInstance takes unit u returns integer
                local integer this= (0)











                    loop
                        set this=s__ModSpeed_next[this]
                        exitwhen this == 0
                        if s__ModSpeed_u[this] == u then
                            return this
                        endif
                    endloop

                return (0)
            endfunction
   
            function s__ModSpeed_setUnitLed takes unit u,boolean b returns nothing
                local integer this= s__ModSpeed_getInstance(u)
                if ( this > 0 ) then
                    set s__ModSpeed_lead[this]=b
                endif
            endfunction
   
            function s__ModSpeed_getSpeed takes unit u returns real
                local integer this= s__ModSpeed_getInstance(u)
                if ( this > 0 and GetUnitMoveSpeed(u) > 521.0 ) then
                    return s__ModSpeed_speed[this]
                endif
                return GetUnitMoveSpeed(u)
            endfunction
   
            function s__ModSpeed_setSpeed takes unit u,real amount returns nothing
                local integer this
                if ( u == null or GetWidgetLife(u) < 0.405 ) then
                    return
                endif
                set this=s__ModSpeed_getInstance(u)
                if ( amount < 523. ) then
                    if ( this > 0 ) then
                        call s__ModSpeed_destroy(this)
                    endif
                    return
                elseif ( this == 0 ) then
                    if ( s__ModSpeed_prev[(0)] == 0 ) then
                        set s__ModSpeed_instanceMaxCount=s__ModSpeed_instanceMaxCount + 1
                        set this=s__ModSpeed_instanceMaxCount
                    else
                        set this=s__ModSpeed_prev[(0)]
                        set s__ModSpeed_prev[(0)]=s__ModSpeed_prev[s__ModSpeed_prev[(0)]]
                    endif
                    if ( s__ModSpeed_next[(0)] == 0 ) then
                        call TimerStart(s__ModSpeed_tm, MaxSpeed___PERIOD, true, function s__ModSpeed_iterate)



                    else
                        set s__ModSpeed_prev[s__ModSpeed_next[(0)]]=this
                    endif
                    set s__ModSpeed_next[this]=s__ModSpeed_next[(0)]
                    set s__ModSpeed_next[(0)]=this
                    set s__ModSpeed_prev[this]=(0)
   
                    set s__ModSpeed_u[this]=u







                endif
                set amount=RMinBJ(amount, MaxSpeed___MAX_SPEED)
                set s__ModSpeed_lastX[this]=GetUnitX(u)
                set s__ModSpeed_lastY[this]=GetUnitY(u)
                set s__ModSpeed_speed[this]=amount
            endfunction
   
        //interface:
        function SetUnitLed takes unit u,boolean b returns nothing
            call s__ModSpeed_setUnitLed(u , b)
        endfunction
        function GetUnitMoveSpeedEx takes unit u returns real
            return s__ModSpeed_getSpeed(u)
        endfunction
        function SetUnitMoveSpeedEx takes unit u,real speed returns nothing
            call s__ModSpeed_setSpeed(u , speed)
        endfunction
   
//processed hook:         hook SetUnitMoveSpeed SetUnitMoveSpeedEx

//library MaxSpeed ends
//library TowerLibrary:
    function IsBuilder takes integer id returns boolean
        return id == 'u00C' or id == 'u00D' or id == 'u00E' or id == 'u00F' or id == 'u00W' or id == 'U00X'
    endfunction
    
        function s__Tower_create takes unit u,integer item_num returns integer
            local integer tw= s__Tower__allocate()
            set s__Tower_u[tw]=u
            call sc__Tower_setAbility(tw)
            call sc__Tower_setItemNum(tw,item_num)
            // if not IsBuilder(GetUnitTypeId(u)) and GetUnitTypeId(u) != 'o00R' then
            //     call UnitAddAbility(u, 'A0B0')
            //     call UnitMakeAbilityPermanent(u, true, 'A0B0')
            // endif
            return tw
        endfunction
        function s__Tower_IncAbility takes integer this,integer i returns nothing
            call IncUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i))
            call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i, LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i) + 1)
            call DisplayTextToPlayer(GetOwningPlayer(s__Tower_u[this]), 0, 0, GetUnitName(s__Tower_u[this]) + "的" + GetAbilityName(LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i)) + "已升级")
            if LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i) == 'A009' then
                call PauseUnit(s__Tower_u[this], true)
                call PauseUnit(s__Tower_u[this], false)
            endif
            if LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i) == 'A00R' then
                call UnitRemoveAbility(s__Tower_u[this], 'A00Q')
                call UnitAddAbility(s__Tower_u[this], 'A00Q')
                call SetPlayerAbilityAvailableBJ(false, 'A00Q', GetOwningPlayer(s__Tower_u[this]))
                call SetUnitAbilityLevel(s__Tower_u[this], 'A00O', LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i))
                call SetUnitAbilityLevel(s__Tower_u[this], 'A00P', LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i))
            endif
            if LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i) == 'A03P' then
                call UnitRemoveAbility(s__Tower_u[this], 'A03S')
                call UnitAddAbility(s__Tower_u[this], 'A03S')
                call SetPlayerAbilityAvailableBJ(false, 'A03S', GetOwningPlayer(s__Tower_u[this]))
                call SetUnitAbilityLevel(s__Tower_u[this], 'A03S', LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i))
            endif
            
        endfunction
        function s__Tower_ResetCD takes integer this,integer i returns nothing
            call UnitRemoveAbility(s__Tower_u[this], LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i))
            call UnitAddAbility(s__Tower_u[this], LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i))
            call SetUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i), LoadInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i))
        endfunction
        function s__Tower_setAbility takes integer this returns nothing
            local integer i= 1
            local integer id= 0
            local integer tower_id= GetUnitTypeId(s__Tower_u[this])
            if IsUnitType(s__Tower_u[this], UNIT_TYPE_HERO) and not IsBuilder(tower_id) then
                call UnitAddAbility(s__Tower_u[this], 'A09K')
                call UnitMakeAbilityPermanent(s__Tower_u[this], true, 'A09K')
                call UnitAddAbility(s__Tower_u[this], 'A000')
                call UnitMakeAbilityPermanent(s__Tower_u[this], true, 'A000')
            endif
               
            if LoadStr(NHT, tower_id, 1) == "少林" then
                set id='A001'
            elseif LoadStr(NHT, tower_id, 1) == "武当" then
                set id='A00L'
            elseif LoadStr(NHT, tower_id, 1) == "峨眉" then
                set id='A03L'
            elseif LoadStr(NHT, tower_id, 1) == "丐帮" then
                set id='A02T'
            elseif LoadStr(NHT, tower_id, 1) == "全真" then
                set id='A04O'
            endif
            if id != 0 then
                call UnitAddAbility(s__Tower_u[this], id)
                call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, 0, id)
                call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, 0, 1)
            endif
            loop
                exitwhen i >= 11
                if LoadInteger(YDHT, tower_id * 2, i) != 0 then
                    if GetUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i)) == 0 then
                        call UnitAddAbility(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i))
                    endif
                    call SetUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i), LoadInteger(YDHT, tower_id * 3, i))
                    call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i, LoadInteger(YDHT, tower_id * 2, i))
                    call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i, LoadInteger(YDHT, tower_id * 3, i))
                    if LoadInteger(YDHT, tower_id * 2, i) == 'A00R' then
                        call UnitRemoveAbility(s__Tower_u[this], 'A00Q')
                        call UnitAddAbility(s__Tower_u[this], 'A00Q')
                        call SetPlayerAbilityAvailableBJ(false, 'A00Q', GetOwningPlayer(s__Tower_u[this]))
                        call SetUnitAbilityLevel(s__Tower_u[this], 'A00O', LoadInteger(YDHT, tower_id * 3, i))
                        call SetUnitAbilityLevel(s__Tower_u[this], 'A00P', LoadInteger(YDHT, tower_id * 3, i))
                    endif
                    if LoadInteger(YDHT, tower_id * 2, i) == 'A009' then
                        call PauseUnit(s__Tower_u[this], true)
                        call PauseUnit(s__Tower_u[this], false)
                    endif
                endif
                set i=i + 1
            endloop
        endfunction
        function s__Tower_setItemNum takes integer this,integer item_num returns nothing
            if item_num > 0 then
                call UnitAddAbility(s__Tower_u[this], 'A011')
                call SetUnitAbilityLevel(s__Tower_u[this], 'A011', item_num)
                call UnitMakeAbilityPermanent(s__Tower_u[this], true, 'A011')
            endif
        endfunction
        function s__Tower_getItemNum takes integer this returns integer
            return GetUnitAbilityLevel(s__Tower_u[this], 'A011')
        endfunction
        function s__Tower_getUnit takes integer this returns unit
            return s__Tower_u[this]
        endfunction
    function getTowerInstance takes unit u returns integer
        local integer i= 0
        loop
            exitwhen i > tower_num
            if s__Tower_u[tower[i]] == u then
                return tower[i]
            endif
            set i=i + 1
        endloop
        return 0
    endfunction
    // 保存塔的元素属性
    function saveTowerElementAttr takes integer towerId,integer elementId,integer value returns nothing
        call SaveInteger(YDHT, towerId * 5, elementId, value)
    endfunction
    function SaveTowerAbility_1 takes integer tower_id,integer spell_id,integer level returns nothing
        local integer i= 1
        loop
            exitwhen i >= 11
            if LoadInteger(YDHT, tower_id * 2, i) == 0 then
                call SaveInteger(YDHT, tower_id * 2, i, spell_id)
                call SaveInteger(YDHT, tower_id * 3, i, level)
                exitwhen true
            endif
            set i=i + 1
        endloop
    endfunction
    function SaveTowerAbility takes nothing returns nothing
        // O100 少林四代弟子 少林童子功	
        call SaveTowerAbility_1('O100' , 'A006' , 1)
        // O101 达摩院弟子 达摩棍法	
        call SaveTowerAbility_1('O101' , 'A002' , 1)
        // O102 戒律院弟子 拈花擒拿手	
        call SaveTowerAbility_1('O102' , 'A007' , 1)
        // O103 藏经阁弟子 大力金刚指	
        call SaveTowerAbility_1('O103' , 'A01T' , 1)
        // O104 罗汉堂弟子 达摩八法	
        call SaveTowerAbility_1('O104' , 'A00F' , 1)
        // O105 般若堂弟子 龙象般若功	
        call SaveTowerAbility_1('O105' , 'A009' , 1)
        // O106 菩提院弟子 菩提心法	
        call SaveTowerAbility_1('O106' , 'A00A' , 1)
        // O107 醉世 罗汉伏魔功	
        call SaveTowerAbility_1('O107' , 'A00B' , 1)
        // O108 少林掌门 少林罗汉阵	
        call SaveTowerAbility_1('O108' , 'A00D' , 1)
        // O109 武当三代弟子 柔云掌	
        call SaveTowerAbility_1('O109' , 'A00H' , 1)
        // O10A 知客道人 绕指柔剑法	
        call SaveTowerAbility_1('O10A' , 'A00J' , 1)
        // O10B 莫声谷 太极拳法	
        call SaveTowerAbility_1('O10B' , 'A00R' , 1)
        // O10C 殷梨亭 武当剑法	
        call SaveTowerAbility_1('O10C' , 'A00K' , 1)
        // O10D 张翠山 铁画银钩	
        call SaveTowerAbility_1('O10D' , 'A00N' , 1)
        // O10E 张松溪 内家拳法	
        call SaveTowerAbility_1('O10E' , 'A00V' , 1)
        // O10F 俞岱岩 纯阳无极功	
        call SaveTowerAbility_1('O10F' , 'A00T' , 1)
        // O10G 俞莲舟 虎爪绝户手	武当心法
        call SaveTowerAbility_1('O10G' , 'A00X' , 1)
        call SaveTowerAbility_1('O10G' , 'A00W' , 1)
        // O10H 宋远桥 真武七截阵	
        call SaveTowerAbility_1('O10H' , 'A010' , 1)
        // O10I 武当掌门 武当身法	
        call SaveTowerAbility_1('O10I' , 'A00I' , 1)
        // O10J 峨眉小师太 峨眉入门剑法
        call SaveTowerAbility_1('O10J' , 'A01R' , 1)
        // O10K 纪晓芙 四象掌	
        call SaveTowerAbility_1('O10K' , 'A01Q' , 1)
        // O10L 静慧 金顶绵掌	
        call SaveTowerAbility_1('O10L' , 'A01V' , 1)
        // O10M 苏梦清 天罡指穴法	
        call SaveTowerAbility_1('O10M' , 'A022' , 1)
        // O10N 静空 佛光普照	
        call SaveTowerAbility_1('O10N' , 'A024' , 1)
        // O10O 贝锦仪 峨眉身法
        call SaveTowerAbility_1('O10O' , 'A026' , 1)
        	
        // O10P 静虚 回风拂柳剑	
        call SaveTowerAbility_1('O10P' , 'A027' , 1)
        // O10Q 丁敏君 灭剑	
        call SaveTowerAbility_1('O10Q' , 'A02C' , 1)
        // O10R 静玄 绝剑	
        call SaveTowerAbility_1('O10R' , 'A02D' , 1)
        // O10S 周芷若 九阴白骨爪
        call SaveTowerAbility_1('O10S' , 'A02H' , 1)
        // O10T 峨眉掌门 灭绝剑法	截手九式
        call SaveTowerAbility_1('O10T' , 'A02E' , 1)
        call SaveTowerAbility_1('O10T' , 'A02F' , 1)
        // O10U 丐帮白莲使者 莲花掌	
        call SaveTowerAbility_1('O10U' , 'A02M' , 1)
        // O10V 大勇分舵舵主 丐帮心法	
        call SaveTowerAbility_1('O10V' , 'A031' , 1)
        // O10W 大信分舵舵主 丐帮入门棍法	
        call SaveTowerAbility_1('O10W' , 'A02K' , 1)
        // O10X 大智分舵舵主 太祖长拳	
        call SaveTowerAbility_1('O10X' , 'A02I' , 1)
        // O10Y 大礼分舵舵主 青竹镖	
        call SaveTowerAbility_1('O10Y' , 'A02N' , 1)
        // O10Z 大义分舵舵主 六合刀法
        call SaveTowerAbility_1('O10Z' , 'A02Q' , 1)
        // O110 大仁分舵舵主 铜锤手	
        call SaveTowerAbility_1('O110' , 'A02R' , 1)
        // O111 护法长老 疯魔杖法	
        call SaveTowerAbility_1('O111' , 'A02V' , 1)
        // O112 执法长老 逍遥游	
        call SaveTowerAbility_1('O112' , 'A02Y' , 1)
        // O113 传功长老 丐帮身法
        call SaveTowerAbility_1('O113' , 'A037' , 1)
        // O114 丐帮帮主 降龙十八掌	打狗棒法
        call SaveTowerAbility_1('O114' , 'A032' , 1)
        call SaveTowerAbility_1('O114' , 'A034' , 1)
        // O115 全真大道士 破冰掌法	
        call SaveTowerAbility_1('O115' , 'A050' , 1)
        // O116 苗道一 空明拳
        call SaveTowerAbility_1('O116' , 'A04T' , 1)
        // O117 尹志平 昊天掌
        call SaveTowerAbility_1('O117' , 'A04P' , 1)
        // O118 孙不二 三花聚顶	
        call SaveTowerAbility_1('O118' , 'A04Y' , 1)
        // O119 郝大通 全真剑法	
        call SaveTowerAbility_1('O119' , 'A04N' , 1)
        // O11A 谭处端 金雁功	
        call SaveTowerAbility_1('O11A' , 'A054' , 1)
        // O11B 刘处玄 东方第一剑	
        call SaveTowerAbility_1('O11B' , 'A04U' , 1)
        // O11C 王处一 后发先至	
        call SaveTowerAbility_1('O11C' , 'A04S' , 1)
        // O11D 丘处机 一气化三清
        call SaveTowerAbility_1('O11D' , 'A04V' , 1)
        // O11E 马钰 天罡北斗阵	
        call SaveTowerAbility_1('O11E' , 'A04X' , 1)
        // O11F 周伯通 空明拳	双手互搏
        // call SaveTowerAbility_1('O11F', 'A04T', 1)
        call SaveTowerAbility_1('O11F' , 'A04Q' , 1)
        // O11G 全真掌教 先天功	金雁功
        call SaveTowerAbility_1('O11G' , 'A04W' , 1)
        // call SaveTowerAbility_1('O11G', 'A053', 1)
        // O11H 江湖巨侠 虾米神拳	
        call SaveTowerAbility_1('O11H' , 'A045' , 1)
        // O11I 茅盈 五雷咒	玄冰咒 谷衣心法
        call SaveTowerAbility_1('O11I' , 'A048' , 1)
        call SaveTowerAbility_1('O11I' , 'A049' , 1)
        call SaveTowerAbility_1('O11I' , 'A04A' , 1)
        // O11J 韦小宝 乾坤一掷	神行百变
        call SaveTowerAbility_1('O11J' , 'A047' , 1)
        // call SaveTowerAbility_1('O11J', 'A00D', 1)
        // O11K 云中鹤 擒龙控鹤	
        call SaveTowerAbility_1('O11K' , 'A04B' , 1)
        // O11L 虚竹子 天山折梅手	生死符
        call SaveTowerAbility_1('O11L' , 'A098' , 1)
        // call SaveTowerAbility_1('O11L', 'A00D', 1)
    endfunction

//library TowerLibrary ends
//library YDTriggerSaveLoadSystem:
    function YDTriggerSaveLoadSystem__Init takes nothing returns nothing
            set YDHT=InitHashtable()
        set YDLOC=InitHashtable()
    endfunction

//library YDTriggerSaveLoadSystem ends
//library YDWEBase:
//===========================================================================
//HashTable
//===========================================================================
//===========================================================================
//Return bug
//===========================================================================
function YDWEH2I takes handle h returns integer
    return GetHandleId(h)
endfunction
//����
function YDWEFlushAllData takes nothing returns nothing
    call FlushParentHashtable(YDHT)
endfunction
function YDWEFlushMissionByInteger takes integer i returns nothing
    call FlushChildHashtable(YDHT, i)
endfunction
function YDWEFlushMissionByString takes string s returns nothing
    call FlushChildHashtable(YDHT, StringHash(s))
endfunction
function YDWEFlushStoredIntegerByInteger takes integer i,integer j returns nothing
    call RemoveSavedInteger(YDHT, i, j)
endfunction
function YDWEFlushStoredIntegerByString takes string s1,string s2 returns nothing
    call RemoveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
endfunction
function YDWEHaveSavedIntegerByInteger takes integer i,integer j returns boolean
    return HaveSavedInteger(YDHT, i, j)
endfunction
function YDWEHaveSavedIntegerByString takes string s1,string s2 returns boolean
    return HaveSavedInteger(YDHT, StringHash(s1), StringHash(s2))
endfunction
//store and get integer
function YDWESaveIntegerByInteger takes integer pTable,integer pKey,integer i returns nothing
    call SaveInteger(YDHT, pTable, pKey, i)
endfunction
function YDWESaveIntegerByString takes string pTable,string pKey,integer i returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), i)
endfunction
function YDWEGetIntegerByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction
function YDWEGetIntegerByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//store and get real
function YDWESaveRealByInteger takes integer pTable,integer pKey,real r returns nothing
    call SaveReal(YDHT, pTable, pKey, r)
endfunction
function YDWESaveRealByString takes string pTable,string pKey,real r returns nothing
    call SaveReal(YDHT, StringHash(pTable), StringHash(pKey), r)
endfunction
function YDWEGetRealByInteger takes integer pTable,integer pKey returns real
    return LoadReal(YDHT, pTable, pKey)
endfunction
function YDWEGetRealByString takes string pTable,string pKey returns real
    return LoadReal(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//store and get string
function YDWESaveStringByInteger takes integer pTable,integer pKey,string s returns nothing
    call SaveStr(YDHT, pTable, pKey, s)
endfunction
function YDWESaveStringByString takes string pTable,string pKey,string s returns nothing
    call SaveStr(YDHT, StringHash(pTable), StringHash(pKey), s)
endfunction
function YDWEGetStringByInteger takes integer pTable,integer pKey returns string
    return LoadStr(YDHT, pTable, pKey)
endfunction
function YDWEGetStringByString takes string pTable,string pKey returns string
    return LoadStr(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//store and get boolean
function YDWESaveBooleanByInteger takes integer pTable,integer pKey,boolean b returns nothing
    call SaveBoolean(YDHT, pTable, pKey, b)
endfunction
function YDWESaveBooleanByString takes string pTable,string pKey,boolean b returns nothing
    call SaveBoolean(YDHT, StringHash(pTable), StringHash(pKey), b)
endfunction
function YDWEGetBooleanByInteger takes integer pTable,integer pKey returns boolean
    return LoadBoolean(YDHT, pTable, pKey)
endfunction
function YDWEGetBooleanByString takes string pTable,string pKey returns boolean
    return LoadBoolean(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Unit
function YDWESaveUnitByInteger takes integer pTable,integer pKey,unit u returns nothing
    call SaveUnitHandle(YDHT, pTable, pKey, u)
endfunction
function YDWESaveUnitByString takes string pTable,string pKey,unit u returns nothing
    call SaveUnitHandle(YDHT, StringHash(pTable), StringHash(pKey), u)
endfunction
function YDWEGetUnitByInteger takes integer pTable,integer pKey returns unit
    return LoadUnitHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetUnitByString takes string pTable,string pKey returns unit
    return LoadUnitHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert UnitID
function YDWESaveUnitIDByInteger takes integer pTable,integer pKey,integer uid returns nothing
    call SaveInteger(YDHT, pTable, pKey, uid)
endfunction
function YDWESaveUnitIDByString takes string pTable,string pKey,integer uid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), uid)
endfunction
function YDWEGetUnitIDByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction
function YDWEGetUnitIDByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert AbilityID
function YDWESaveAbilityIDByInteger takes integer pTable,integer pKey,integer abid returns nothing
    call SaveInteger(YDHT, pTable, pKey, abid)
endfunction
function YDWESaveAbilityIDByString takes string pTable,string pKey,integer abid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), abid)
endfunction
function YDWEGetAbilityIDByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction
function YDWEGetAbilityIDByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Player
function YDWESavePlayerByInteger takes integer pTable,integer pKey,player p returns nothing
    call SavePlayerHandle(YDHT, pTable, pKey, p)
endfunction
function YDWESavePlayerByString takes string pTable,string pKey,player p returns nothing
    call SavePlayerHandle(YDHT, StringHash(pTable), StringHash(pKey), p)
endfunction
function YDWEGetPlayerByInteger takes integer pTable,integer pKey returns player
    return LoadPlayerHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetPlayerByString takes string pTable,string pKey returns player
    return LoadPlayerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Item
function YDWESaveItemByInteger takes integer pTable,integer pKey,item it returns nothing
    call SaveItemHandle(YDHT, pTable, pKey, it)
endfunction
function YDWESaveItemByString takes string pTable,string pKey,item it returns nothing
    call SaveItemHandle(YDHT, StringHash(pTable), StringHash(pKey), it)
endfunction
function YDWEGetItemByInteger takes integer pTable,integer pKey returns item
    return LoadItemHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetItemByString takes string pTable,string pKey returns item
    return LoadItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert ItemID
function YDWESaveItemIDByInteger takes integer pTable,integer pKey,integer itid returns nothing
    call SaveInteger(YDHT, pTable, pKey, itid)
endfunction
function YDWESaveItemIDByString takes string pTable,string pKey,integer itid returns nothing
    call SaveInteger(YDHT, StringHash(pTable), StringHash(pKey), itid)
endfunction
function YDWEGetItemIDByInteger takes integer pTable,integer pKey returns integer
    return LoadInteger(YDHT, pTable, pKey)
endfunction
function YDWEGetItemIDByString takes string pTable,string pKey returns integer
    return LoadInteger(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Timer
function YDWESaveTimerByInteger takes integer pTable,integer pKey,timer t returns nothing
    call SaveTimerHandle(YDHT, pTable, pKey, t)
endfunction
function YDWESaveTimerByString takes string pTable,string pKey,timer t returns nothing
    call SaveTimerHandle(YDHT, StringHash(pTable), StringHash(pKey), t)
endfunction
function YDWEGetTimerByInteger takes integer pTable,integer pKey returns timer
    return LoadTimerHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTimerByString takes string pTable,string pKey returns timer
    return LoadTimerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Trigger
function YDWESaveTriggerByInteger takes integer pTable,integer pKey,trigger trg returns nothing
    call SaveTriggerHandle(YDHT, pTable, pKey, trg)
endfunction
function YDWESaveTriggerByString takes string pTable,string pKey,trigger trg returns nothing
    call SaveTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey), trg)
endfunction
function YDWEGetTriggerByInteger takes integer pTable,integer pKey returns trigger
    return LoadTriggerHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTriggerByString takes string pTable,string pKey returns trigger
    return LoadTriggerHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Location
function YDWESaveLocationByInteger takes integer pTable,integer pKey,location pt returns nothing
    call SaveLocationHandle(YDHT, pTable, pKey, pt)
endfunction
function YDWESaveLocationByString takes string pTable,string pKey,location pt returns nothing
    call SaveLocationHandle(YDHT, StringHash(pTable), StringHash(pKey), pt)
endfunction
function YDWEGetLocationByInteger takes integer pTable,integer pKey returns location
    return LoadLocationHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetLocationByString takes string pTable,string pKey returns location
    return LoadLocationHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Group
function YDWESaveGroupByInteger takes integer pTable,integer pKey,group g returns nothing
    call SaveGroupHandle(YDHT, pTable, pKey, g)
endfunction
function YDWESaveGroupByString takes string pTable,string pKey,group g returns nothing
    call SaveGroupHandle(YDHT, StringHash(pTable), StringHash(pKey), g)
endfunction
function YDWEGetGroupByInteger takes integer pTable,integer pKey returns group
    return LoadGroupHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetGroupByString takes string pTable,string pKey returns group
    return LoadGroupHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Multiboard
function YDWESaveMultiboardByInteger takes integer pTable,integer pKey,multiboard m returns nothing
    call SaveMultiboardHandle(YDHT, pTable, pKey, m)
endfunction
function YDWESaveMultiboardByString takes string pTable,string pKey,multiboard m returns nothing
    call SaveMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey), m)
endfunction
function YDWEGetMultiboardByInteger takes integer pTable,integer pKey returns multiboard
    return LoadMultiboardHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetMultiboardByString takes string pTable,string pKey returns multiboard
    return LoadMultiboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert MultiboardItem
function YDWESaveMultiboardItemByInteger takes integer pTable,integer pKey,multiboarditem mt returns nothing
    call SaveMultiboardItemHandle(YDHT, pTable, pKey, mt)
endfunction
function YDWESaveMultiboardItemByString takes string pTable,string pKey,multiboarditem mt returns nothing
    call SaveMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey), mt)
endfunction
function YDWEGetMultiboardItemByInteger takes integer pTable,integer pKey returns multiboarditem
    return LoadMultiboardItemHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetMultiboardItemByString takes string pTable,string pKey returns multiboarditem
    return LoadMultiboardItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert TextTag
function YDWESaveTextTagByInteger takes integer pTable,integer pKey,texttag tt returns nothing
    call SaveTextTagHandle(YDHT, pTable, pKey, tt)
endfunction
function YDWESaveTextTagByString takes string pTable,string pKey,texttag tt returns nothing
    call SaveTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey), tt)
endfunction
function YDWEGetTextTagByInteger takes integer pTable,integer pKey returns texttag
    return LoadTextTagHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTextTagByString takes string pTable,string pKey returns texttag
    return LoadTextTagHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Lightning
function YDWESaveLightningByInteger takes integer pTable,integer pKey,lightning ln returns nothing
    call SaveLightningHandle(YDHT, pTable, pKey, ln)
endfunction
function YDWESaveLightningByString takes string pTable,string pKey,lightning ln returns nothing
    call SaveLightningHandle(YDHT, StringHash(pTable), StringHash(pKey), ln)
endfunction
function YDWEGetLightningByInteger takes integer pTable,integer pKey returns lightning
    return LoadLightningHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetLightningByString takes string pTable,string pKey returns lightning
    return LoadLightningHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Region
function YDWESaveRegionByInteger takes integer pTable,integer pKey,region rn returns nothing
    call SaveRegionHandle(YDHT, pTable, pKey, rn)
endfunction
function YDWESaveRegionByString takes string pTable,string pKey,region rt returns nothing
    call SaveRegionHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
endfunction
function YDWEGetRegionByInteger takes integer pTable,integer pKey returns region
    return LoadRegionHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetRegionByString takes string pTable,string pKey returns region
    return LoadRegionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Rect
function YDWESaveRectByInteger takes integer pTable,integer pKey,rect rn returns nothing
    call SaveRectHandle(YDHT, pTable, pKey, rn)
endfunction
function YDWESaveRectByString takes string pTable,string pKey,rect rt returns nothing
    call SaveRectHandle(YDHT, StringHash(pTable), StringHash(pKey), rt)
endfunction
function YDWEGetRectByInteger takes integer pTable,integer pKey returns rect
    return LoadRectHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetRectByString takes string pTable,string pKey returns rect
    return LoadRectHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Leaderboard
function YDWESaveLeaderboardByInteger takes integer pTable,integer pKey,leaderboard lb returns nothing
    call SaveLeaderboardHandle(YDHT, pTable, pKey, lb)
endfunction
function YDWESaveLeaderboardByString takes string pTable,string pKey,leaderboard lb returns nothing
    call SaveLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey), lb)
endfunction
function YDWEGetLeaderboardByInteger takes integer pTable,integer pKey returns leaderboard
    return LoadLeaderboardHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetLeaderboardByString takes string pTable,string pKey returns leaderboard
    return LoadLeaderboardHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Effect
function YDWESaveEffectByInteger takes integer pTable,integer pKey,effect e returns nothing
    call SaveEffectHandle(YDHT, pTable, pKey, e)
endfunction
function YDWESaveEffectByString takes string pTable,string pKey,effect e returns nothing
    call SaveEffectHandle(YDHT, StringHash(pTable), StringHash(pKey), e)
endfunction
function YDWEGetEffectByInteger takes integer pTable,integer pKey returns effect
    return LoadEffectHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetEffectByString takes string pTable,string pKey returns effect
    return LoadEffectHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert Destructable
function YDWESaveDestructableByInteger takes integer pTable,integer pKey,destructable da returns nothing
    call SaveDestructableHandle(YDHT, pTable, pKey, da)
endfunction
function YDWESaveDestructableByString takes string pTable,string pKey,destructable da returns nothing
    call SaveDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey), da)
endfunction
function YDWEGetDestructableByInteger takes integer pTable,integer pKey returns destructable
    return LoadDestructableHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetDestructableByString takes string pTable,string pKey returns destructable
    return LoadDestructableHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert triggercondition
function YDWESaveTriggerConditionByInteger takes integer pTable,integer pKey,triggercondition tc returns nothing
    call SaveTriggerConditionHandle(YDHT, pTable, pKey, tc)
endfunction
function YDWESaveTriggerConditionByString takes string pTable,string pKey,triggercondition tc returns nothing
    call SaveTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey), tc)
endfunction
function YDWEGetTriggerConditionByInteger takes integer pTable,integer pKey returns triggercondition
    return LoadTriggerConditionHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTriggerConditionByString takes string pTable,string pKey returns triggercondition
    return LoadTriggerConditionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert triggeraction
function YDWESaveTriggerActionByInteger takes integer pTable,integer pKey,triggeraction ta returns nothing
    call SaveTriggerActionHandle(YDHT, pTable, pKey, ta)
endfunction
function YDWESaveTriggerActionByString takes string pTable,string pKey,triggeraction ta returns nothing
    call SaveTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
endfunction
function YDWEGetTriggerActionByInteger takes integer pTable,integer pKey returns triggeraction
    return LoadTriggerActionHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTriggerActionByString takes string pTable,string pKey returns triggeraction
    return LoadTriggerActionHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert event
function YDWESaveTriggerEventByInteger takes integer pTable,integer pKey,event et returns nothing
    call SaveTriggerEventHandle(YDHT, pTable, pKey, et)
endfunction
function YDWESaveTriggerEventByString takes string pTable,string pKey,event et returns nothing
    call SaveTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey), et)
endfunction
function YDWEGetTriggerEventByInteger takes integer pTable,integer pKey returns event
    return LoadTriggerEventHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTriggerEventByString takes string pTable,string pKey returns event
    return LoadTriggerEventHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert force
function YDWESaveForceByInteger takes integer pTable,integer pKey,force fc returns nothing
    call SaveForceHandle(YDHT, pTable, pKey, fc)
endfunction
function YDWESaveForceByString takes string pTable,string pKey,force fc returns nothing
    call SaveForceHandle(YDHT, StringHash(pTable), StringHash(pKey), fc)
endfunction
function YDWEGetForceByInteger takes integer pTable,integer pKey returns force
    return LoadForceHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetForceByString takes string pTable,string pKey returns force
    return LoadForceHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert boolexpr
function YDWESaveBoolexprByInteger takes integer pTable,integer pKey,boolexpr be returns nothing
    call SaveBooleanExprHandle(YDHT, pTable, pKey, be)
endfunction
function YDWESaveBoolexprByString takes string pTable,string pKey,boolexpr be returns nothing
    call SaveBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey), be)
endfunction
function YDWEGetBoolexprByInteger takes integer pTable,integer pKey returns boolexpr
    return LoadBooleanExprHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetBoolexprByString takes string pTable,string pKey returns boolexpr
    return LoadBooleanExprHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert sound
function YDWESaveSoundByInteger takes integer pTable,integer pKey,sound sd returns nothing
    call SaveSoundHandle(YDHT, pTable, pKey, sd)
endfunction
function YDWESaveSoundByString takes string pTable,string pKey,sound sd returns nothing
    call SaveSoundHandle(YDHT, StringHash(pTable), StringHash(pKey), sd)
endfunction
function YDWEGetSoundByInteger takes integer pTable,integer pKey returns sound
    return LoadSoundHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetSoundByString takes string pTable,string pKey returns sound
    return LoadSoundHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert timerdialog
function YDWESaveTimerDialogByInteger takes integer pTable,integer pKey,timerdialog td returns nothing
    call SaveTimerDialogHandle(YDHT, pTable, pKey, td)
endfunction
function YDWESaveTimerDialogByString takes string pTable,string pKey,timerdialog td returns nothing
    call SaveTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), td)
endfunction
function YDWEGetTimerDialogByInteger takes integer pTable,integer pKey returns timerdialog
    return LoadTimerDialogHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTimerDialogByString takes string pTable,string pKey returns timerdialog
    return LoadTimerDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert trackable
function YDWESaveTrackableByInteger takes integer pTable,integer pKey,trackable ta returns nothing
    call SaveTrackableHandle(YDHT, pTable, pKey, ta)
endfunction
function YDWESaveTrackableByString takes string pTable,string pKey,trackable ta returns nothing
    call SaveTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey), ta)
endfunction
function YDWEGetTrackableByInteger takes integer pTable,integer pKey returns trackable
    return LoadTrackableHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetTrackableByString takes string pTable,string pKey returns trackable
    return LoadTrackableHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert dialog
function YDWESaveDialogByInteger takes integer pTable,integer pKey,dialog d returns nothing
    call SaveDialogHandle(YDHT, pTable, pKey, d)
endfunction
function YDWESaveDialogByString takes string pTable,string pKey,dialog d returns nothing
    call SaveDialogHandle(YDHT, StringHash(pTable), StringHash(pKey), d)
endfunction
function YDWEGetDialogByInteger takes integer pTable,integer pKey returns dialog
    return LoadDialogHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetDialogByString takes string pTable,string pKey returns dialog
    return LoadDialogHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert button
function YDWESaveButtonByInteger takes integer pTable,integer pKey,button bt returns nothing
    call SaveButtonHandle(YDHT, pTable, pKey, bt)
endfunction
function YDWESaveButtonByString takes string pTable,string pKey,button bt returns nothing
    call SaveButtonHandle(YDHT, StringHash(pTable), StringHash(pKey), bt)
endfunction
function YDWEGetButtonByInteger takes integer pTable,integer pKey returns button
    return LoadButtonHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetButtonByString takes string pTable,string pKey returns button
    return LoadButtonHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert quest
function YDWESaveQuestByInteger takes integer pTable,integer pKey,quest qt returns nothing
    call SaveQuestHandle(YDHT, pTable, pKey, qt)
endfunction
function YDWESaveQuestByString takes string pTable,string pKey,quest qt returns nothing
    call SaveQuestHandle(YDHT, StringHash(pTable), StringHash(pKey), qt)
endfunction
function YDWEGetQuestByInteger takes integer pTable,integer pKey returns quest
    return LoadQuestHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetQuestByString takes string pTable,string pKey returns quest
    return LoadQuestHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
//Covert questitem
function YDWESaveQuestItemByInteger takes integer pTable,integer pKey,questitem qi returns nothing
    call SaveQuestItemHandle(YDHT, pTable, pKey, qi)
endfunction
function YDWESaveQuestItemByString takes string pTable,string pKey,questitem qi returns nothing
    call SaveQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey), qi)
endfunction
function YDWEGetQuestItemByInteger takes integer pTable,integer pKey returns questitem
    return LoadQuestItemHandle(YDHT, pTable, pKey)
endfunction
function YDWEGetQuestItemByString takes string pTable,string pKey returns questitem
    return LoadQuestItemHandle(YDHT, StringHash(pTable), StringHash(pKey))
endfunction
function YDWES2I takes string s returns integer
    return StringHash(s)
endfunction
function YDWESaveAbilityHandleBJ takes integer AbilityID,integer key,integer missionKey,hashtable table returns nothing
    call SaveInteger(table, missionKey, key, AbilityID)
endfunction
function YDWESaveAbilityHandle takes hashtable table,integer parentKey,integer childKey,integer AbilityID returns nothing
    call SaveInteger(table, parentKey, childKey, AbilityID)
endfunction
function YDWELoadAbilityHandleBJ takes integer key,integer missionKey,hashtable table returns integer
    return LoadInteger(table, missionKey, key)
endfunction
function YDWELoadAbilityHandle takes hashtable table,integer parentKey,integer childKey returns integer
    return LoadInteger(table, parentKey, childKey)
endfunction
//===========================================================================
//返回参数
//===========================================================================
//地图边界判断
function YDWECoordinateX takes real x returns real
    return RMinBJ(RMaxBJ(x, yd_MapMinX), yd_MapMaxX)
endfunction
function YDWECoordinateY takes real y returns real
    return RMinBJ(RMaxBJ(y, yd_MapMinY), yd_MapMaxY)
endfunction
//两个单位之间的距离
function YDWEDistanceBetweenUnits takes unit a,unit b returns real
    return SquareRoot(( GetUnitX(a) - GetUnitX(b) ) * ( GetUnitX(a) - GetUnitX(b) ) + ( GetUnitY(a) - GetUnitY(b) ) * ( GetUnitY(a) - GetUnitY(b) ))
endfunction
//两个单位之间的角度
function YDWEAngleBetweenUnits takes unit fromUnit,unit toUnit returns real
    return bj_RADTODEG * Atan2(GetUnitY(toUnit) - GetUnitY(fromUnit), GetUnitX(toUnit) - GetUnitX(fromUnit))
endfunction
//生成区域
function YDWEGetRect takes real x,real y,real width,real height returns rect
    return Rect(x - width * 0.5, y - height * 0.5, x + width * 0.5, y + height * 0.5)
endfunction
//===========================================================================
//设置单位可以飞行
//===========================================================================
function YDWEFlyEnable takes unit u returns nothing
    call UnitAddAbility(u, 'Amrf')
    call UnitRemoveAbility(u, 'Amrf')
endfunction
//===========================================================================
//字符窜与ID转换
//===========================================================================
function YDWEId2S takes integer value returns string
    local string charMap=bj_AllString
    local string result= ""
    local integer remainingValue= value
    local integer charValue
    local integer byteno
    set byteno=0
    loop
        set charValue=ModuloInteger(remainingValue, 256)
        set remainingValue=remainingValue / 256
        set result=SubString(charMap, charValue, charValue + 1) + result
        set byteno=byteno + 1
        exitwhen byteno == 4
    endloop
    return result
endfunction
function YDWES2Id takes string targetstr returns integer
    local string originstr=bj_AllString
    local integer strlength=StringLength(targetstr)
    local integer a=0
local integer b=0
local integer numx=1
local integer result=0
    loop
    exitwhen b > strlength - 1
        set numx=R2I(Pow(256, strlength - 1 - b))
        set a=1
        loop
            exitwhen a > 255
            if SubString(targetstr, b, b + 1) == SubString(originstr, a, a + 1) then
                set result=result + a * numx
                set a=256
            endif
            set a=a + 1
        endloop
        set b=b + 1
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
function YDWESetMapLimitCoordinate takes real MinX,real MaxX,real MinY,real MaxY returns nothing
    set yd_MapMaxX=MaxX
    set yd_MapMinX=MinX
    set yd_MapMaxY=MaxY
    set yd_MapMinY=MinY
endfunction
//===========================================================================
//===========================================================================
//地图初始化
//===========================================================================
//YDWE特殊技能结束事件 
function YDWESyStemAbilityCastingOverTriggerAction takes unit hero,integer index returns nothing
 local integer i= 0
    loop
        exitwhen i >= YDWEBase__AbilityCastingOverEventNumber
        if YDWEBase__AbilityCastingOverEventType[i] == index then
            set bj_lastAbilityCastingUnit=hero
			if YDWEBase__AbilityCastingOverEventQueue[i] != null and TriggerEvaluate(YDWEBase__AbilityCastingOverEventQueue[i]) and IsTriggerEnabled(YDWEBase__AbilityCastingOverEventQueue[i]) then
				call TriggerExecute(YDWEBase__AbilityCastingOverEventQueue[i])
			endif
		endif
        set i=i + 1
    endloop
endfunction
//===========================================================================  
//YDWE技能捕捉事件 
//===========================================================================  
function YDWESyStemAbilityCastingOverRegistTrigger takes trigger trg,integer index returns nothing
	set YDWEBase__AbilityCastingOverEventQueue[YDWEBase__AbilityCastingOverEventNumber]=trg
	set YDWEBase__AbilityCastingOverEventType[YDWEBase__AbilityCastingOverEventNumber]=index
	set YDWEBase__AbilityCastingOverEventNumber=YDWEBase__AbilityCastingOverEventNumber + 1
endfunction 
//===========================================================================
//系统函数完善
//===========================================================================
function YDWECreateUnitPool takes nothing returns nothing
    set bj_lastCreatedUnitPool=CreateUnitPool()
endfunction
function YDWEPlaceRandomUnit takes unitpool up,player p,real x,real y,real face returns nothing
set bj_lastPoolAbstractedUnit=PlaceRandomUnit(up, p, x, y, face)
endfunction
function YDWEGetLastUnitPool takes nothing returns unitpool
    return bj_lastCreatedUnitPool
endfunction
function YDWEGetLastPoolAbstractedUnit takes nothing returns unit
    return bj_lastPoolAbstractedUnit
endfunction
function YDWECreateItemPool takes nothing returns nothing
    set bj_lastCreatedItemPool=CreateItemPool()
endfunction
function YDWEPlaceRandomItem takes itempool ip,real x,real y returns nothing
set bj_lastPoolAbstractedItem=PlaceRandomItem(ip, x, y)
endfunction
function YDWEGetLastItemPool takes nothing returns itempool
    return bj_lastCreatedItemPool
endfunction
function YDWEGetLastPoolAbstractedItem takes nothing returns item
    return bj_lastPoolAbstractedItem
endfunction
function YDWESetAttackDamageWeaponType takes attacktype at,damagetype dt,weapontype wt returns nothing
    set bj_lastSetAttackType=at
    set bj_lastSetDamageType=dt
    set bj_lastSetWeaponType=wt
endfunction
//unitpool bj_lastCreatedPool=null
//unit bj_lastPoolAbstractedUnit=null
function YDWEGetPlayerColorString takes player p,string s returns string
    return YDWEBase__yd_PlayerColor[GetHandleId(GetPlayerColor(p))] + s + "|r"
endfunction
//===========================================================================
//===========================================================================
//系统函数补充
//===========================================================================
//===========================================================================
function YDWEGetUnitItemSoftId takes unit hero,item it returns integer
    local integer i= 0
    loop
         exitwhen i > 5
         if UnitItemInSlot(hero, i) == it then
            return i + 1
         endif
         set i=i + 1
    endloop
    return 0
endfunction
//===========================================================================
//===========================================================================
//地图初始化
//===========================================================================
//===========================================================================
//显示版本
function YDWEVersion_Display takes nothing returns boolean
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, "|cFF1E90FF当前编辑器版本为： |r|cFF00FF00YDWE 1.31.8.1850")
    return false
endfunction
function YDWEVersion_Init takes nothing returns nothing
    local trigger t= CreateTrigger()
    local integer i= 0
    loop
        exitwhen i == 12
        call TriggerRegisterPlayerChatEvent(t, Player(i), "YDWE Version", true)
        set i=i + 1
    endloop
    call TriggerAddCondition(t, Condition(function YDWEVersion_Display))
    set t=null
endfunction
function InitializeYD takes nothing returns nothing
     set YDHT=InitHashtable()
	//=================设置变量=====================
	set yd_MapMinX=GetCameraBoundMinX() - GetCameraMargin(CAMERA_MARGIN_LEFT)
	set yd_MapMinY=GetCameraBoundMinY() - GetCameraMargin(CAMERA_MARGIN_BOTTOM)
	set yd_MapMaxX=GetCameraBoundMaxX() + GetCameraMargin(CAMERA_MARGIN_RIGHT)
	set yd_MapMaxY=GetCameraBoundMaxY() + GetCameraMargin(CAMERA_MARGIN_TOP)
	
    set YDWEBase__yd_PlayerColor[0]="|cFFFF0303"
    set YDWEBase__yd_PlayerColor[1]="|cFF0042FF"
    set YDWEBase__yd_PlayerColor[2]="|cFF1CE6B9"
    set YDWEBase__yd_PlayerColor[3]="|cFF540081"
    set YDWEBase__yd_PlayerColor[4]="|cFFFFFC01"
    set YDWEBase__yd_PlayerColor[5]="|cFFFE8A0E"
    set YDWEBase__yd_PlayerColor[6]="|cFF20C000"
    set YDWEBase__yd_PlayerColor[7]="|cFFE55BB0"
    set YDWEBase__yd_PlayerColor[8]="|cFF959697"
    set YDWEBase__yd_PlayerColor[9]="|cFF7EBFF1"
    set YDWEBase__yd_PlayerColor[10]="|cFF106246"
    set YDWEBase__yd_PlayerColor[11]="|cFF4E2A04"
    set YDWEBase__yd_PlayerColor[12]="|cFF282828"
    set YDWEBase__yd_PlayerColor[13]="|cFF282828"
    set YDWEBase__yd_PlayerColor[14]="|cFF282828"
    set YDWEBase__yd_PlayerColor[15]="|cFF282828"
    //=================显示版本=====================
    call YDWEVersion_Init()
endfunction

//library YDWEBase ends
//library YDWEGeneralBounsSystem:

//以下函数仅仅是让技能ID出现在代码里，不然SLK优化器会删除这些技能
function YDWEGeneralBounsSystem__DisplayAllAbilityId takes nothing returns nothing
    local integer aid=0
    set aid='YDl0'
    set aid='YDl1'
    set aid='YDl2'
    set aid='YDl3'
    set aid='YDl4'
    set aid='YDl5'
    set aid='YDl6'
    set aid='YDl7'
    set aid='YDl8'
    set aid='YDl9'
    set aid='YDla'
    set aid='YDlb'
    set aid='YDlc'
    set aid='YDld'
    set aid='YDle'
    set aid='YDlf'
    set aid='YDm0'
    set aid='YDm1'
    set aid='YDm2'
    set aid='YDm3'
    set aid='YDm4'
    set aid='YDm5'
    set aid='YDm6'
    set aid='YDm7'
    set aid='YDm8'
    set aid='YDm9'
    set aid='YDma'
    set aid='YDmb'
    set aid='YDmc'
    set aid='YDmd'
    set aid='YDme'
    set aid='YDmf'
    set aid='YDc0'
    set aid='YDc1'
    set aid='YDc2'
    set aid='YDc3'
    set aid='YDc4'
    set aid='YDc5'
    set aid='YDc6'
    set aid='YDc7'
    set aid='YDc8'
    set aid='YDc9'
    set aid='YDca'
    set aid='YDcb'
    set aid='YDcc'
    set aid='YDb0'
    set aid='YDb1'
    set aid='YDb2'
    set aid='YDb3'
    set aid='YDb4'
    set aid='YDb5'
    set aid='YDb6'
    set aid='YDb7'
    set aid='YDb8'
    set aid='YDb9'
    set aid='YDba'
    set aid='YDbb'
    set aid='YDbc'
    set aid='YDbd'
    set aid='YDbe'
    set aid='YDbf'
    set aid='YDbg'
    set aid='YDbh'
    set aid='YDbi'
    set aid='YDbj'
    set aid='YDbk'
    set aid='YDbl'
    set aid='YDbm'
    set aid='YDbn'
endfunction
    function YDWEGeneralBounsSystem__UnitClearBonus takes unit u,integer bonusType returns nothing
        local integer i=YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType + 1] - 1
        loop
            exitwhen i < YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType]
            call UnitRemoveAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[i])
            set i=i - 1
        endloop
        call SaveInteger(YDHT, StringHash((I2S((GetHandleId((u)))) )), StringHash(( "bonusType" + I2S(bonusType) )), ( 0)) // INLINED!!
    endfunction
    function YDWEGeneralBounsSystem__SetUnitMaxState takes unit u,integer bonusType,real value returns boolean
        local integer v=R2I(value)
        local integer s=0
        local integer o=0
        local unitstate state
        local integer i=YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType + 1] - 2
        local integer a=YDWEGeneralBounsSystem__ABILITY_NUM[bonusType]
        if value > 65535 or value <= 0 then
            return false
        endif
        if bonusType == 0 then
            set state=UNIT_STATE_MAX_LIFE
          elseif bonusType == 1 then
            set state=UNIT_STATE_MAX_MANA
          else
            return false
        endif
        set v=v - R2I(GetUnitState(u, state))
        call SaveInteger(YDHT, StringHash((I2S((GetHandleId((u)))) )), StringHash(( "bonusType" + I2S(bonusType) )), ( v)) // INLINED!!
        if v > 0 then
            set o=3
          elseif v < 0 then
            set o=2
            set v=- v
          else
            return false
        endif
        loop
            exitwhen i < YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType]
            if v >= YDWEGeneralBounsSystem__PowersOf2[i] then
                call UnitAddAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[i])
                call SetUnitAbilityLevel(u, YDWEGeneralBounsSystem__BonusAbilitys[i], o)
                call UnitRemoveAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[i])
                set v=v - YDWEGeneralBounsSystem__PowersOf2[i]
            endif
            set i=i - 1
        endloop
        return true
    endfunction
function YDWEGeneralBounsSystem__UnitSetBonus takes unit u,integer bonusType,integer ammount returns boolean
    local integer i
    //设置属性为0不进行Loop
    if ammount == 0 then
        call YDWEGeneralBounsSystem__UnitClearBonus(u , bonusType)
        return false
    endif
    if ammount < YDWEGeneralBounsSystem__MinBonus[bonusType] or ammount > YDWEGeneralBounsSystem__MaxBonus[bonusType] then
        return false
    elseif bonusType < 0 or bonusType >= YDWEGeneralBounsSystem__BONUS_TYPES then
        return false
    endif
    call SaveInteger(YDHT, StringHash((I2S((GetHandleId((u)))) )), StringHash(( "bonusType" + I2S(bonusType) )), ( ammount)) // INLINED!!
    if ammount < 0 then
        set ammount=YDWEGeneralBounsSystem__MaxBonus[bonusType] + ammount + 1
        call UnitAddAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType + 1] - 1])
        call UnitMakeAbilityPermanent(u, true, YDWEGeneralBounsSystem__BonusAbilitys[YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType + 1] - 1])
      else
        call UnitRemoveAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType + 1] - 1])
    endif
    set i=YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType + 1] - 2
    loop
        exitwhen i < YDWEGeneralBounsSystem__ABILITY_COUNT[bonusType]
        if ammount >= YDWEGeneralBounsSystem__PowersOf2[i] then
            call UnitAddAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[i])
            call UnitMakeAbilityPermanent(u, true, YDWEGeneralBounsSystem__BonusAbilitys[i])
            set ammount=ammount - YDWEGeneralBounsSystem__PowersOf2[i]
        else
            call UnitRemoveAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[i])
        endif
        set i=i - 1
    endloop
    if not (LoadBoolean(YDHT, StringHash((I2S((GetHandleId((u)))) )), StringHash(( "bonusMark")))) then // INLINED!!
        call SaveBoolean(YDHT, StringHash((I2S((GetHandleId((u)))) )), StringHash(( "bonusMark" )), ( true)) // INLINED!!
        set YDWEGeneralBounsSystem__UnitCount=YDWEGeneralBounsSystem__UnitCount + 1
        set YDWEGeneralBounsSystem__Units[YDWEGeneralBounsSystem__UnitCount]=u
    endif
    return true
endfunction
function YDWEGeneralBounsSystem__UnitGetBonus takes unit u,integer bonusType returns integer
    return (LoadInteger(YDHT, StringHash((I2S((GetHandleId((u)))) )), StringHash(( "bonusType" + I2S(bonusType))))) // INLINED!!
endfunction
function YDWEGeneralBounsSystem__AddUnitMaxState takes unit u,integer bonusType,real value returns boolean
    local unitstate state
    if bonusType == 0 then
        set state=UNIT_STATE_MAX_LIFE
      elseif bonusType == 1 then
        set state=UNIT_STATE_MAX_MANA
      else
        return false
    endif
    return YDWEGeneralBounsSystem__SetUnitMaxState(u , bonusType , value + GetUnitState(u, state))
endfunction
function YDWEGeneralBounsSystem__UnitAddBonus takes unit u,integer bonusType,integer ammount returns boolean
    return YDWEGeneralBounsSystem__UnitSetBonus(u , bonusType , (LoadInteger(YDHT, StringHash((I2S((GetHandleId(((u ))))) )), StringHash(( "bonusType" + I2S(( bonusType)))))) + ammount) // INLINED!!
endfunction
function YDWEGeneralBounsSystem__FlushUnits takes nothing returns nothing
    local integer i= YDWEGeneralBounsSystem__UnitCount
    local string h
    loop
        exitwhen i < 1
        if GetUnitTypeId(YDWEGeneralBounsSystem__Units[i]) == 0 then
            set h=I2S((GetHandleId((YDWEGeneralBounsSystem__Units[i])))) // INLINED!!
            call SaveInteger(YDHT, StringHash((h )), StringHash(( "bonusType0" )), ( 0)) // INLINED!!
            call SaveInteger(YDHT, StringHash((h )), StringHash(( "bonusType1" )), ( 0)) // INLINED!!
            call SaveInteger(YDHT, StringHash((h )), StringHash(( "bonusType2" )), ( 0)) // INLINED!!
            call SaveInteger(YDHT, StringHash((h )), StringHash(( "bonusType3" )), ( 0)) // INLINED!!
            call SaveBoolean(YDHT, StringHash((h )), StringHash(( "bonusMark" )), ( false)) // INLINED!!
            set YDWEGeneralBounsSystem__Units[i]=YDWEGeneralBounsSystem__Units[YDWEGeneralBounsSystem__UnitCount]
            set YDWEGeneralBounsSystem__Units[YDWEGeneralBounsSystem__UnitCount]=null
            set YDWEGeneralBounsSystem__UnitCount=YDWEGeneralBounsSystem__UnitCount - 1
        endif
        set i=i - 1
    endloop
endfunction
function YDWEUnitSetBonus takes unit u,integer bonusType,integer ammount returns nothing
    if bonusType == 0 or bonusType == 1 then
        call YDWEGeneralBounsSystem__SetUnitMaxState(u , bonusType , ammount)
      else
        call YDWEGeneralBounsSystem__UnitSetBonus(u , bonusType , ammount)
    endif
endfunction
function YDWEUnitAddBonus takes unit u,integer bonusType,integer ammount returns nothing
    if bonusType == 0 or bonusType == 1 then
        call YDWEGeneralBounsSystem__AddUnitMaxState(u , bonusType , ammount)
      else
        call YDWEGeneralBounsSystem__UnitAddBonus(u , bonusType , ammount)
    endif
endfunction
function YDWEGeneralBounsSystemUnitSetBonus takes unit u,integer bonusType,integer mod,integer ammount returns nothing
    if mod == 0 then
        call YDWEUnitAddBonus(u , bonusType , ammount)
      elseif mod == 1 then
        call YDWEUnitAddBonus(u , bonusType , 0 - ammount)
      else
        call YDWEUnitSetBonus(u , bonusType , ammount)
    endif
endfunction
function YDWEGeneralBounsSystemUnitGetBonus takes unit u,integer bonusType returns integer
    return (LoadInteger(YDHT, StringHash((I2S((GetHandleId((u)))) )), StringHash(( "bonusType" + I2S(bonusType))))) // INLINED!!
endfunction
//private keyword BonusAbilitys
function YDWEGeneralBounsSystem__InitializeAbilitys takes nothing returns nothing
    local integer i=0
    local integer m=0
    set YDWEGeneralBounsSystem__ABILITY_COUNT[0]=0 //life max
set YDWEGeneralBounsSystem__ABILITY_COUNT[1]=15 //mana max
set YDWEGeneralBounsSystem__ABILITY_COUNT[2]=30 //armor
set YDWEGeneralBounsSystem__ABILITY_COUNT[3]=43 //attack
set YDWEGeneralBounsSystem__ABILITY_COUNT[4]=67
    set YDWEGeneralBounsSystem__ABILITY_NUM[0]=15
    set YDWEGeneralBounsSystem__ABILITY_NUM[1]=15
    set YDWEGeneralBounsSystem__ABILITY_NUM[2]=13
    set YDWEGeneralBounsSystem__ABILITY_NUM[3]=24
    // Bonus Mod - armor abilitys
    loop
        exitwhen i > 9
        set YDWEGeneralBounsSystem__YDWEBONUS_MyChar[i]='0' + m
        set m=m + 1
        set i=i + 1
    endloop
    set m=0
    loop
        exitwhen i > 26
        set YDWEGeneralBounsSystem__YDWEBONUS_MyChar[i]='a' + m
        set m=m + 1
        set i=i + 1
    endloop
    set i=0
    set m=0
    loop
        exitwhen m > ( YDWEGeneralBounsSystem__ABILITY_NUM[0] - 1 )
        set YDWEGeneralBounsSystem__BonusAbilitys[i]='YDl0' - '0' + YDWEGeneralBounsSystem__YDWEBONUS_MyChar[m] // +1
        set i=i + 1
        set m=m + 1
    endloop
    // Bonus Mod - Damage abilitys
    set m=0
    loop
        exitwhen m > ( YDWEGeneralBounsSystem__ABILITY_NUM[1] - 1 )
        set YDWEGeneralBounsSystem__BonusAbilitys[i]='YDm0' - '0' + YDWEGeneralBounsSystem__YDWEBONUS_MyChar[m] // +1
        set i=i + 1
        set m=m + 1
    endloop
    // Bonus Mod - Life MaxState abilitys
    set m=0
    loop
        exitwhen m > ( YDWEGeneralBounsSystem__ABILITY_NUM[2] - 1 )
        set YDWEGeneralBounsSystem__BonusAbilitys[i]='YDc0' - '0' + YDWEGeneralBounsSystem__YDWEBONUS_MyChar[m] // +1
        set i=i + 1
        set m=m + 1
    endloop
    // Bonus Mod - Mana MaxState abilitys
    set m=0
    loop
        exitwhen m > ( YDWEGeneralBounsSystem__ABILITY_NUM[3] - 1 )
        set YDWEGeneralBounsSystem__BonusAbilitys[i]='YDb0' - '0' + YDWEGeneralBounsSystem__YDWEBONUS_MyChar[m] // +1
        set i=i + 1
        set m=m + 1
    endloop
endfunction
function YDWEGeneralBounsSystem__Initialize takes nothing returns nothing
    local integer i= 1
    local unit u
    local integer n=0
    local integer add=0
    call YDWEGeneralBounsSystem__InitializeAbilitys()
    loop
        set i=1
        set YDWEGeneralBounsSystem__PowersOf2[add]=1
            loop
                set YDWEGeneralBounsSystem__PowersOf2[add + 1]=YDWEGeneralBounsSystem__PowersOf2[add] * 2
                set add=add + 1
                set i=i + 1
                exitwhen i == YDWEGeneralBounsSystem__ABILITY_NUM[n]
            endloop
        set YDWEGeneralBounsSystem__MaxBonus[n]=YDWEGeneralBounsSystem__PowersOf2[add] - 1
        set YDWEGeneralBounsSystem__MinBonus[n]=- YDWEGeneralBounsSystem__PowersOf2[add]
        set add=add + 1
        set n=n + 1
        exitwhen n >= 4
    endloop
    //预读技能
    if YDWEGeneralBounsSystem__PRELOAD_ABILITYS then
        set u=CreateUnit(Player(15), YDWEGeneralBounsSystem__PRELOAD_DUMMY_UNIT, 0, 0, 0)
        set i=0
        loop
            exitwhen i == YDWEGeneralBounsSystem__ABILITY_COUNT[5]
            call UnitAddAbility(u, YDWEGeneralBounsSystem__BonusAbilitys[i])
            set i=i + 1
        endloop
        call RemoveUnit(u)
        set u=null
    endif
    //回收数据
    call TimerStart(CreateTimer(), 10, true, function YDWEGeneralBounsSystem__FlushUnits)
endfunction
function YDWELifeChange takes unit u,integer mod,integer ch,integer id returns nothing
    local integer a
    local integer b
    local integer c
    local integer d
    local integer aid= id
    if mod == 1 then
        set ch=- ch
      elseif mod == 2 then
        set ch=ch - R2I(GetUnitState(u, UNIT_STATE_MAX_LIFE))
    endif
    //set YDWEADDBONUS_LIFE=YDWEADDBONUS_LIFE+ch
    if ch > 99999 then
        set ch=99999
    endif
    if ch < - 99999 then
        set ch=- 99999
    endif
    if ch < 0 then
        set a=2
        set ch=- ch
    else
        set a=7
    endif
    set b=0
    loop
        exitwhen b == 5
        set c=ch - ch / 10 * 10
        set d=0
        loop
            exitwhen d == c
            call UnitAddAbility(u, aid)
            call SetUnitAbilityLevel(u, aid, a)
            call UnitRemoveAbility(u, aid)
            set d=d + 1
        endloop
        set ch=ch / 10
        set a=a + 1
        set b=b + 1
    endloop
endfunction
//===========================================================================
//修改魔法
//===========================================================================
function YDWEManaChange takes unit u,integer mod,integer ch,integer id returns nothing
    local integer a
    local integer b
    local integer c
    local integer d
    local integer aid= id
    if mod == 1 then
        set ch=- ch
      elseif mod == 2 then
        set ch=ch - R2I(GetUnitState(u, UNIT_STATE_MAX_MANA))
    endif
    //set YDWEADDBONUS_MANA=YDWEADDBONUS_MANA+ch
    if ch > 99999 then
        set ch=99999
    endif
    if ch < - 99999 then
        set ch=- 99999
    endif
    if ch < 0 then
        set a=2
        set ch=- ch
    else
        set a=7
    endif
    set b=0
    loop
        exitwhen b == 5
        set c=ch - ch / 10 * 10
        set d=0
        loop
            exitwhen d == c
            call UnitAddAbility(u, aid)
            call SetUnitAbilityLevel(u, aid, a)
            call UnitRemoveAbility(u, aid)
            set d=d + 1
        endloop
        set ch=ch / 10
        set a=a + 1
        set b=b + 1
    endloop
endfunction

//library YDWEGeneralBounsSystem ends
//library YDWEMultiboardSetItemWidthBJNull:
function YDWEMultiboardSetItemWidthBJNull takes multiboard mb,integer col,integer row,real width returns nothing
    local integer curRow= 0
    local integer curCol= 0
    local integer numRows= MultiboardGetRowCount(mb)
    local integer numCols= MultiboardGetColumnCount(mb)
    local multiboarditem mbitem= null
    // Loop over rows, using 1-based index
    loop
        set curRow=curRow + 1
        exitwhen curRow > numRows
        // Apply setting to the requested row, or all rows (if row is 0)
        if ( row == 0 or row == curRow ) then
            // Loop over columns, using 1-based index
            set curCol=0
            loop
                set curCol=curCol + 1
                exitwhen curCol > numCols
                // Apply setting to the requested column, or all columns (if col is 0)
                if ( col == 0 or col == curCol ) then
                    set mbitem=MultiboardGetItem(mb, curRow - 1, curCol - 1)
                    call MultiboardSetItemWidth(mbitem, width / 100.0)
                    call MultiboardReleaseItem(mbitem)
                endif
            endloop
        endif
    endloop
    set mbitem=null
endfunction

//library YDWEMultiboardSetItemWidthBJNull ends
//library YDWEPolledWaitNull:
function YDWEPolledWaitNull takes real duration returns nothing
    local timer t
    local real timeRemaining
    if ( duration > 0 ) then
        set t=CreateTimer()
        call TimerStart(t, duration, false, null)
        loop
            set timeRemaining=TimerGetRemaining(t)
            exitwhen timeRemaining <= 0
            // If we have a bit of time left, skip past 10% of the remaining
            // duration instead of checking every interval, to minimize the
            // polling on long waits.
            if ( timeRemaining > bj_POLLED_WAIT_SKIP_THRESHOLD ) then
                call TriggerSleepAction(0.1 * timeRemaining)
            else
                call TriggerSleepAction(bj_POLLED_WAIT_INTERVAL)
            endif
        endloop
        call DestroyTimer(t)
    endif
    set t=null
endfunction

//library YDWEPolledWaitNull ends
//library YDWETriggerEvent:
	
//===========================================================================  
//???ⵥλ?˺??¼? 
//===========================================================================
function YDWEAnyUnitDamagedTriggerAction takes nothing returns nothing
    local integer i= 0
    
    loop
        exitwhen i >= YDWETriggerEvent__DamageEventNumber
        if YDWETriggerEvent__DamageEventQueue[i] != null and IsTriggerEnabled(YDWETriggerEvent__DamageEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent__DamageEventQueue[i]) then
            call TriggerExecute(YDWETriggerEvent__DamageEventQueue[i])
        endif
        set i=i + 1
    endloop
endfunction
function YDWEAnyUnitDamagedFilter takes nothing returns boolean
    if GetUnitAbilityLevel(GetFilterUnit(), 'Aloc') <= 0 then
        call TriggerRegisterUnitEvent(yd_DamageEventTrigger, GetFilterUnit(), EVENT_UNIT_DAMAGED)
    endif
    return false
endfunction
function YDWEAnyUnitDamagedEnumUnit takes nothing returns nothing
    local trigger t= CreateTrigger()
    local region r= CreateRegion()
    local group g= CreateGroup()
    call RegionAddRect(r, GetWorldBounds())
    call TriggerRegisterEnterRegion(t, r, Condition(function YDWEAnyUnitDamagedFilter))
    call GroupEnumUnitsInRect(g, GetWorldBounds(), Condition(function YDWEAnyUnitDamagedFilter))
    call DestroyGroup(g)
    set r=null
    set t=null
    set g=null
endfunction
	
function YDWESyStemAnyUnitDamagedRegistTrigger takes trigger trg returns nothing
    if trg == null then
        return
    endif
        
    if YDWETriggerEvent__DamageEventNumber == 0 then
        set yd_DamageEventTrigger=CreateTrigger()
        call TriggerAddAction(yd_DamageEventTrigger, function YDWEAnyUnitDamagedTriggerAction)
        call YDWEAnyUnitDamagedEnumUnit()
    endif
    
    set YDWETriggerEvent__DamageEventQueue[YDWETriggerEvent__DamageEventNumber]=trg
    set YDWETriggerEvent__DamageEventNumber=YDWETriggerEvent__DamageEventNumber + 1
endfunction
//===========================================================================  
//?ƶ???Ʒ?¼? 
//===========================================================================  
function YDWESyStemItemUnmovableTriggerAction takes nothing returns nothing
    local integer i= 0
    
    if GetIssuedOrderId() >= 852002 and GetIssuedOrderId() <= 852007 then
		set bj_lastMovedItemInItemSlot=GetOrderTargetItem()
    	loop
        	exitwhen i >= YDWETriggerEvent__MoveItemEventNumber
        	if YDWETriggerEvent__MoveItemEventQueue[i] != null and IsTriggerEnabled(YDWETriggerEvent__MoveItemEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent__MoveItemEventQueue[i]) then
        	    call TriggerExecute(YDWETriggerEvent__MoveItemEventQueue[i])
        	endif
        	set i=i + 1
    	endloop
	endif
endfunction
function YDWESyStemItemUnmovableRegistTrigger takes trigger trg returns nothing
    if trg == null then
        return
    endif
        
    if YDWETriggerEvent__MoveItemEventNumber == 0 then
        set YDWETriggerEvent__MoveItemEventTrigger=CreateTrigger()
        call TriggerAddAction(YDWETriggerEvent__MoveItemEventTrigger, function YDWESyStemItemUnmovableTriggerAction)
        call TriggerRegisterAnyUnitEventBJ(YDWETriggerEvent__MoveItemEventTrigger, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    endif
    
    set YDWETriggerEvent__MoveItemEventQueue[YDWETriggerEvent__MoveItemEventNumber]=trg
    set YDWETriggerEvent__MoveItemEventNumber=YDWETriggerEvent__MoveItemEventNumber + 1
endfunction
function GetLastMovedItemInItemSlot takes nothing returns item
    return bj_lastMovedItemInItemSlot
endfunction

//library YDWETriggerEvent ends
//library YDWETriggerRegisterEnterRectSimpleNull:
function YDWETriggerRegisterEnterRectSimpleNull takes trigger trig,rect r returns event
    local region rectRegion= CreateRegion()
    call RegionAddRect(rectRegion, r)
    set yd_NullTempRegion=rectRegion
    set rectRegion=null
    return TriggerRegisterEnterRegion(trig, yd_NullTempRegion, null)
endfunction

//library YDWETriggerRegisterEnterRectSimpleNull ends
//library YDWEUnitHasItemOfTypeBJNull:
function YDWEUnitHasItemOfTypeBJNull takes unit whichUnit,integer itemId returns boolean
    local integer index= 0
	if itemId != 0 then
		loop
			if GetItemTypeId(UnitItemInSlot(whichUnit, index)) == itemId then
				return true
			endif
			set index=index + 1
			exitwhen index >= bj_MAX_INVENTORY
		endloop
	endif
    return false
endfunction

//library YDWEUnitHasItemOfTypeBJNull ends
//library YDWEStringFormula:
function GetLastCombinedItem takes nothing returns item
    return bj_lastCombinedItem
endfunction
//===========================================================================
//??Ʒ?ϳ?
function YDWESyStemItemCombineTriggerAction takes nothing returns nothing
 local integer i= 0
    loop
        exitwhen i >= YDWEStringFormula__ItemCombineEventNumber
        if YDWEStringFormula__ItemCombineEventQueue[i] != null and TriggerEvaluate(YDWEStringFormula__ItemCombineEventQueue[i]) and IsTriggerEnabled(YDWEStringFormula__ItemCombineEventQueue[i]) then
            call TriggerExecute(YDWEStringFormula__ItemCombineEventQueue[i])
        endif
        set i=i + 1
    endloop
endfunction
//GetLastMovedItemInItemSlot 
//===========================================================================  
//??Ʒ?ϳ??¼? 
//===========================================================================  
function YDWESyStemItemCombineRegistTrigger takes trigger trg returns nothing
	set YDWEStringFormula__ItemCombineEventQueue[YDWEStringFormula__ItemCombineEventNumber]=trg
	set YDWEStringFormula__ItemCombineEventNumber=YDWEStringFormula__ItemCombineEventNumber + 1
endfunction
        function s__YDWEStringFormula__Inventory_reset takes integer this returns nothing
            call FlushChildHashtable(YDHT, StringHash(("YDWEStringFormula." + I2S(this)))) // INLINED!!
        endfunction
        
        function s__YDWEStringFormula__Inventory_onDestroy takes integer this returns nothing
            call FlushChildHashtable(YDHT, StringHash(("YDWEStringFormula." + I2S(this)))) // INLINED!!
        endfunction
    
        function s__YDWEStringFormula__StringTable__getindex takes integer this,string key returns integer
            return (LoadInteger(YDHT, StringHash(("YDWEStringFormula." + I2S(this) )), StringHash(( key)))) // INLINED!!
        endfunction
        
        function s__YDWEStringFormula__StringTable__setindex takes integer this,string key,integer value returns nothing
            call SaveInteger(YDHT, StringHash(("YDWEStringFormula." + I2S(this) )), StringHash(( key )), ( value)) // INLINED!!
        endfunction
        
        function s__YDWEStringFormula__StringTable_flush takes integer this,string key returns nothing
            call RemoveSavedInteger(YDHT, StringHash(("YDWEStringFormula." + I2S(this) )), StringHash(( key))) // INLINED!!
        endfunction
        
        function s__YDWEStringFormula__StringTable_exists takes integer this,string key returns boolean
            return (HaveSavedInteger(YDHT, StringHash(("YDWEStringFormula." + I2S(this) )), StringHash(( key)))) // INLINED!!
        endfunction 
//***************************************************************
//* StringFormula 2.0 - Fetrix_sai
//* ------------
//*
//***************************************************************
    
    function YDWEStringFormula__Convert takes integer value,integer length returns string
        local string Char= I2S(value)
        local integer slen= StringLength(Char)
            
        loop
            exitwhen slen >= length
            set Char="0" + Char
            set slen=slen + 1
        endloop
        
        return Char
    endfunction
   
   
////////////////////////////////////////////////////////////
//////////////////// __ItemId Matrix__ /////////////////////
    
        
        
        function s__YDWEStringFormula__ItemIdMatrix_get takes integer id returns integer
            return (LoadInteger(YDHT, StringHash(("YDWEStringFormula." + I2S((s__YDWEStringFormula__ItemIdMatrix_Data)) )), StringHash(( (I2S(id)))))) // INLINED!!
        endfunction
        
        function s__YDWEStringFormula__ItemIdMatrix_exists takes integer id returns boolean
            return (HaveSavedInteger(YDHT, StringHash(("YDWEStringFormula." + I2S((s__YDWEStringFormula__ItemIdMatrix_Data)) )), StringHash(( (I2S(id)))))) // INLINED!!
        endfunction
                 
        function s__YDWEStringFormula__ItemIdMatrix_sub takes integer this,integer segment returns integer
            local integer start= s__YDWEStringFormula__ItemIdMatrix_keyLen[this] * segment + 1
            return S2I(SubString(s__YDWEStringFormula__ItemIdMatrix_keyStr[this], start, ( start + s__YDWEStringFormula__ItemIdMatrix_keyLen[this] )))
        endfunction
        
        function s__YDWEStringFormula__ItemIdMatrix_assigns takes integer id returns integer
            local integer this= 0
            if id == null or id == 0 then
                return 0
            endif
            
            set this=(LoadInteger(YDHT, StringHash(("YDWEStringFormula." + I2S((s__YDWEStringFormula__ItemIdMatrix_Data)) )), StringHash(( (I2S((id))))))) // INLINED!!
                
            if (this) > 0 then
                return this
            endif
            
            set this=(s__YDWEStringFormula__ItemIdMatrix_Total)
            set s__YDWEStringFormula__ItemIdMatrix_itemId[this]=id
            set s__YDWEStringFormula__ItemIdMatrix_keyStr[this]=I2S(YDWEStringFormula__SEGMENT_LENGTH)
            set s__YDWEStringFormula__ItemIdMatrix_keyLen[this]=YDWEStringFormula__SEGMENT_LENGTH
            call SaveInteger(YDHT, StringHash(("YDWEStringFormula." + I2S((s__YDWEStringFormula__ItemIdMatrix_Data)) )), StringHash(( (I2S(id)) )), ( ( (this)))) // INLINED!!
            set s__YDWEStringFormula__ItemIdMatrix_Total=s__YDWEStringFormula__ItemIdMatrix_Total + 1
            return this
        endfunction
        
        function s__YDWEStringFormula__ItemIdMatrix_memory takes integer this,string key returns nothing
            set s__YDWEStringFormula__ItemIdMatrix_keyStr[this]=s__YDWEStringFormula__ItemIdMatrix_keyStr[this] + key
            //debug call BJDebugMsg("|cff00ff00KEY: |r" + .keyStr)
        endfunction
        
        function s__YDWEStringFormula__ItemIdMatrix_onInit takes nothing returns nothing
            set s__YDWEStringFormula__ItemIdMatrix_Data=s__YDWEStringFormula__StringTable__allocate()
        endfunction
        
////////////////// __End of ItemId Matrix__ ////////////////
////////////////////////////////////////////////////////////
    
    
////////////////////////////////////////////////////////////
//////////////////// __Formula Matrix__ ////////////////////
    
    
        
        
        
        
        function s__YDWEStringFormula__FormulaMatrix_exists takes string s returns boolean
            return (HaveSavedInteger(YDHT, StringHash(("YDWEStringFormula." + I2S((s__YDWEStringFormula__FormulaMatrix_Data)) )), StringHash(( (s))))) // INLINED!!
        endfunction
        
        function s__YDWEStringFormula__FormulaMatrix_sub takes integer this,integer segment returns integer
            local integer start= s__YDWEStringFormula__FormulaMatrix_segmLen[this] * segment + 1
            return S2I(SubString(s__YDWEStringFormula__FormulaMatrix_formula[this], start, ( start + s__YDWEStringFormula__FormulaMatrix_segmLen[this] )))
        endfunction
        
        function s__YDWEStringFormula__FormulaMatrix_memory takes integer lingth,string formStr,integer eventually returns integer
            local integer this= 0
            
            if (HaveSavedInteger(YDHT, StringHash(("YDWEStringFormula." + I2S((s__YDWEStringFormula__FormulaMatrix_Data)) )), StringHash(( ((formStr)))))) then // INLINED!!
                //debug call BJDebugMsg("|cffff0000Registration cannot be repeated !!|r")
                return 0
            endif
            
            set this=(s__YDWEStringFormula__FormulaMatrix_Total)
            set s__YDWEStringFormula__FormulaMatrix_formula[this]=formStr + YDWEStringFormula__Convert(eventually , YDWEStringFormula__SEGMENT_LENGTH)
            set s__YDWEStringFormula__FormulaMatrix_segmLen[this]=lingth
            
            set s__YDWEStringFormula__FormulaMatrix_model[this]=null //"Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"
set s__YDWEStringFormula__FormulaMatrix_message[this]=null //"|cff00ff00???ϳ??ˣ?|r" 
set s__YDWEStringFormula__FormulaMatrix_chance[this]=100
            set s__YDWEStringFormula__FormulaMatrix_delete[this]=false
            call SaveInteger(YDHT, StringHash(("YDWEStringFormula." + I2S((s__YDWEStringFormula__FormulaMatrix_Data)) )), StringHash(( (formStr) )), ( ( (this)))) // INLINED!!
            set s__YDWEStringFormula__FormulaMatrix_Total=s__YDWEStringFormula__FormulaMatrix_Total + 1
            
            //debug call BJDebugMsg("|cff00ff00Formula Register: |r" + I2S(integer(this)) + ". " + this.formula)
            return this
        endfunction
        
        function s__YDWEStringFormula__FormulaMatrix_onInit takes nothing returns nothing
            set s__YDWEStringFormula__FormulaMatrix_Data=s__YDWEStringFormula__StringTable__allocate()
        endfunction
        
    
////////////////// __End of Formula Matrix__ ///////////////
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////
//////////////////// __Formula Sorting__ ///////////////////
        
        function s__YDWEStringFormula__Sorting_onDestroy takes integer this returns nothing
            local integer i= 0
            loop
                exitwhen i == s___YDWEStringFormula__Sorting_stack_size
                set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+i]=0
                set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+i]=0
                set i=i + 1
            endloop
            set s__YDWEStringFormula__Sorting_char[this]=""
        endfunction

//Generated destructor of YDWEStringFormula__Sorting
function s__YDWEStringFormula__Sorting_deallocate takes integer this returns nothing
    if this==null then
        return
    elseif (si__YDWEStringFormula__Sorting_V[this]!=-1) then
        return
    endif
    call s__YDWEStringFormula__Sorting_onDestroy(this)
    set si__YDWEStringFormula__Sorting_V[this]=si__YDWEStringFormula__Sorting_F
    set si__YDWEStringFormula__Sorting_F=this
endfunction
        
        function s__YDWEStringFormula__Sorting_create takes integer type1,integer n1,integer type2,integer n2,integer type3,integer n3,integer type4,integer n4,integer type5,integer n5,integer type6,integer n6,integer type7,integer n7 returns integer
            local integer this= s__YDWEStringFormula__Sorting__allocate()
            
            set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+1]=s__YDWEStringFormula__ItemIdMatrix_assigns(type1)
            set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+2]=s__YDWEStringFormula__ItemIdMatrix_assigns(type2)
            set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+3]=s__YDWEStringFormula__ItemIdMatrix_assigns(type3)
            set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+4]=s__YDWEStringFormula__ItemIdMatrix_assigns(type4)
            set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+5]=s__YDWEStringFormula__ItemIdMatrix_assigns(type5)
            set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+6]=s__YDWEStringFormula__ItemIdMatrix_assigns(type6)
            set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+7]=s__YDWEStringFormula__ItemIdMatrix_assigns(type7)
            
            set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+1]=n1
            set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+2]=n2
            set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+3]=n3
            set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+4]=n4
            set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+5]=n5
            set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+6]=n6
            set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+7]=n7
            
            return this
        endfunction
        
        function s__YDWEStringFormula__Sorting_convert takes integer this returns string
            local integer i= 1
            local integer j
            local integer k
              
            set s__YDWEStringFormula__Sorting_char[this]=""
            loop
                exitwhen i > s__YDWEStringFormula__Sorting_total[this]
                if s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+i] == 0 or s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+i] == 0 then
                    set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+i]=s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+s__YDWEStringFormula__Sorting_total[this]]
                    set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+i]=s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+s__YDWEStringFormula__Sorting_total[this]]
                    set s__YDWEStringFormula__Sorting_total[this]=s__YDWEStringFormula__Sorting_total[this] - 1
                    set i=i - 1
                else
                    set j=i + 1
                    loop
                        exitwhen j > s__YDWEStringFormula__Sorting_total[this]
                        if s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+j] == 0 or s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+j] == 0 then
                            set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+j]=s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+s__YDWEStringFormula__Sorting_total[this]]
                            set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+j]=s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+s__YDWEStringFormula__Sorting_total[this]]
                            set s__YDWEStringFormula__Sorting_total[this]=s__YDWEStringFormula__Sorting_total[this] - 1
                            set j=j - 1
                        elseif (s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+i]) > (s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+j]) then
                            set k=s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+i]
                            set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+i]=s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+j]
                            set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+j]=k
                            set k=s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+i]
                            set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+i]=s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+j]
                            set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+j]=k
                        elseif (s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+i]) == (s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+j]) then
                            set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+i]=s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+i] + s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+j]
                            set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+j]=0
                            set j=j - 1
                        endif
                        set j=j + 1
                    endloop
                
                    set j=s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+i]
                    loop
                        exitwhen j == 0
                        set s__YDWEStringFormula__Sorting_char[this]=s__YDWEStringFormula__Sorting_char[this] + YDWEStringFormula__Convert(s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+i] , YDWEStringFormula__SEGMENT_LENGTH)
                        set j=j - 1
                    endloop
                endif
                set i=i + 1
            endloop
            
            return s__YDWEStringFormula__Sorting_char[this]
        endfunction
        
////////////////// __End of Formula Sorting__ //////////////
////////////////////////////////////////////////////////////
    
    
////////////////////////////////////////////////////////////
/////////////////////// __Craft Item__ /////////////////////
    
    function YDWEStringFormula__Adaptation takes nothing returns boolean
        return true
    endfunction
        
    function YDWEStringFormula__verify takes nothing returns boolean
        return (HaveSavedInteger(YDHT, StringHash(("YDWEStringFormula." + I2S((s__YDWEStringFormula__ItemIdMatrix_Data)) )), StringHash(( (I2S((GetItemTypeId(GetManipulatedItem())))))))) // INLINED!!
    endfunction
        
    function YDWEStringFormula__GetCharges takes item it returns integer
        local integer charges= GetItemCharges(it)
        if charges == 0 then
            set charges=1
        endif
        return charges
    endfunction
        
    function YDWEStringFormula__CraftItem takes nothing returns nothing
        local integer forx= 0
        local integer itmx= (LoadInteger(YDHT, StringHash(("YDWEStringFormula." + I2S((s__YDWEStringFormula__ItemIdMatrix_Data)) )), StringHash(( (I2S((GetItemTypeId(GetManipulatedItem())))))))) // INLINED!!
        local integer size= StringLength(s__YDWEStringFormula__ItemIdMatrix_keyStr[itmx]) / s__YDWEStringFormula__ItemIdMatrix_keyLen[itmx]
        local integer inst= 0
        local integer numb= 0
        local integer sum= 0
        
        local integer tmpid= 0
        local integer i= 0
        local integer j= 0
        local boolean b= false
        local item it= null
        
        local item article= GetManipulatedItem()
        local unit caster= GetTriggerUnit()
        
        local item array items
        local integer array typeid
        local integer array amount
        local integer array surplus
        //* Check Slots
        set i=0
        loop
            exitwhen i == 6
            set it=UnitItemInSlot(caster, i)
                
            if it != null then
                set items[sum]=it
                set typeid[sum]=GetItemTypeId(it)
                set amount[sum]=YDWEStringFormula__GetCharges(it)
                if it == article then
                    set b=true
                endif
                set sum=sum + 1
            endif
                
            set i=i + 1
            set it=null
        endloop
            
        if b == false then
            set items[sum]=article
            set typeid[sum]=GetItemTypeId(article)
            set amount[sum]=1
            set sum=sum + 1
        endif
        //* Check Formulas
        loop
            exitwhen inst == size
            set forx=(s__YDWEStringFormula__ItemIdMatrix_sub(itmx,inst))
            set numb=StringLength(s__YDWEStringFormula__FormulaMatrix_formula[forx]) / s__YDWEStringFormula__FormulaMatrix_segmLen[forx] - 1
            
            set i=0
            loop
                exitwhen i == sum
                set surplus[i]=amount[i]
                set i=i + 1
            endloop
                
            set i=0
            loop
                set tmpid=s__YDWEStringFormula__ItemIdMatrix_itemId[(s__YDWEStringFormula__FormulaMatrix_sub(forx,i))]
                exitwhen i == numb
                
                set j=0
                loop
                    exitwhen j == sum
                    
                    if typeid[j] == tmpid and surplus[j] > 0 then
                        set surplus[j]=surplus[j] - 1
                        exitwhen true
                    endif
                        
                    set j=j + 1
                endloop
                
                exitwhen j == sum
                set i=i + 1
            endloop
            if i == numb then
                if GetRandomInt(0, 99) < s__YDWEStringFormula__FormulaMatrix_chance[forx] then
                    if s__YDWEStringFormula__FormulaMatrix_model[forx] != null then
                        call DestroyEffect(AddSpecialEffectTarget(s__YDWEStringFormula__FormulaMatrix_model[forx], caster, "origin"))
                    endif
                    
                    if s__YDWEStringFormula__FormulaMatrix_message[forx] != null then
                        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 30, s__YDWEStringFormula__FormulaMatrix_message[forx])
                    endif
                
                    set i=0
                    loop
                        exitwhen i == sum
                        if surplus[i] > 0 and GetItemCharges(items[i]) > 0 then
                            call SetItemCharges(items[i], surplus[i])
                        elseif surplus[i] == 0 then
                            call RemoveItem(items[i])
                        endif
                        set i=i + 1
                    endloop
                    
                    set it=CreateItem(tmpid, GetUnitX(caster), GetUnitY(caster))
            
                    if GetItemCharges(it) > 0 then
                        call SetItemCharges(it, 1)
                
                        set i=0
                        loop
                            exitwhen i == sum
                            if typeid[i] == tmpid then
                                call RemoveItem(items[i])
                                call SetItemCharges(it, surplus[i] + 1)
                            endif
                            set i=i + 1
                        endloop
                    endif
            
                    call UnitAddItem(caster, it)
                    set bj_lastCombinedItem=it
                    call YDWESyStemItemCombineTriggerAction()
                elseif s__YDWEStringFormula__FormulaMatrix_delete[forx] then
                    set i=0
                    loop
                        exitwhen i == sum
                        if surplus[i] > 0 and GetItemCharges(items[i]) > 0 then
                            call SetItemCharges(items[i], surplus[i])
                        elseif surplus[i] == 0 then
                            call RemoveItem(items[i])
                        endif
                        set i=i + 1
                    endloop
                endif
                    
                set it=null
                exitwhen true
            endif
                
            set inst=inst + 1
        endloop
        if b == false then
            call RemoveItem(article)
        endif
        
        set i=0
        loop
            exitwhen i == sum
            set items[i]=null
            set i=i + 1
        endloop
            
        set article=null
        set caster=null
        set it=null
    endfunction
    function YDWEStringFormula__Init takes nothing returns nothing
        local filterfunc f= Filter(function YDWEStringFormula__Adaptation)
        local trigger t= CreateTrigger()
        local integer i= 0
        
        loop
            exitwhen i > 15
            call TriggerRegisterPlayerUnitEvent(t, Player(i), EVENT_PLAYER_UNIT_PICKUP_ITEM, f)
            set i=i + 1
        endloop
        
        call TriggerAddCondition(t, Condition(function YDWEStringFormula__verify))
        call TriggerAddAction(t, function YDWEStringFormula__CraftItem)
        call DestroyFilter(f)
        
        set f=null
        set t=null
    endfunction
    
///////////////////// __End of Craft Item__ ////////////////
////////////////////////////////////////////////////////////
    
    // call YDWENewItemsFormula('rat6', 6, 'rat9', 5, 'ratc', 4, 'rde1', 3, 'rde2', 2, 'rde3', 1, 'mcou')
    function YDWENewItemsFormula takes integer type1,integer n1,integer type2,integer n2,integer type3,integer n3,integer type4,integer n4,integer type5,integer n5,integer type6,integer n6,integer eventually returns nothing
        local integer sort= s__YDWEStringFormula__Sorting_create(type1 , n1 , type2 , n2 , type3 , n3 , type4 , n4 , type5 , n5 , type6 , n6 , 0 , 0)
        local integer itmx= s__YDWEStringFormula__ItemIdMatrix_assigns(eventually)
        local string f= I2S(YDWEStringFormula__SEGMENT_LENGTH) + s__YDWEStringFormula__Sorting_convert(sort)
        local string s= ""
        local integer i= 0
        
        set YDWEStringFormula__FormulaData=s__YDWEStringFormula__FormulaMatrix_memory(YDWEStringFormula__SEGMENT_LENGTH , f , itmx)
        if (YDWEStringFormula__FormulaData) > 0 then
            set s=YDWEStringFormula__Convert((YDWEStringFormula__FormulaData) , YDWEStringFormula__SEGMENT_LENGTH)
            
            set i=0
            loop
                exitwhen i > s__YDWEStringFormula__Sorting_total[sort]
                call s__YDWEStringFormula__ItemIdMatrix_memory(s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[sort]+i],s)
                set i=i + 1
            endloop
            
            call s__YDWEStringFormula__ItemIdMatrix_memory(itmx,s)
        endif
        
        call s__YDWEStringFormula__Sorting_deallocate(sort)
        set f=""
        set s=""
    endfunction

//library YDWEStringFormula ends
//library YDWETimerSystem:
function YDWETimerSystem__NewTaskIndex takes nothing returns integer
 local integer h= YDWETimerSystem__TaskListIdleHead
	if YDWETimerSystem__TaskListIdleHead < 0 then
		if YDWETimerSystem__TaskListIdleMax >= 8000 then
			return 8100
		else
			set YDWETimerSystem__TaskListIdleMax=YDWETimerSystem__TaskListIdleMax + 1
			return YDWETimerSystem__TaskListIdleMax
		endif
	endif
	set YDWETimerSystem__TaskListIdleHead=YDWETimerSystem__TaskListIdle[h]
	return h
endfunction
function YDWETimerSystem__DeleteTaskIndex takes integer index returns nothing
	set YDWETimerSystem__TaskListIdle[index]=YDWETimerSystem__TaskListIdleHead
	set YDWETimerSystem__TaskListIdleHead=index
endfunction
//?ú??????д???
function YDWETimerSystem__NewTask takes real time,trigger proc returns integer
 local integer index= YDWETimerSystem__NewTaskIndex()
 local integer h= YDWETimerSystem__TaskListHead
 local integer t= R2I(100. * time) + YDWETimerSystem__CurrentTime
 local integer p
	set YDWETimerSystem__TaskListProc[index]=proc
	set YDWETimerSystem__TaskListTime[index]=t
	loop
		set p=YDWETimerSystem__TaskListNext[h]
		if p < 0 or YDWETimerSystem__TaskListTime[p] >= t then
		//	call BJDebugMsg("NewTask:"+I2S(index))
			set YDWETimerSystem__TaskListNext[h]=index
			set YDWETimerSystem__TaskListNext[index]=p
			return index
		endif
		set h=p
	endloop
	return index
endfunction
function YDWETimerSystemNewTask takes real time,trigger proc returns integer
	return YDWETimerSystem__NewTask(time , proc)
endfunction
function YDWETimerSystemGetCurrentTask takes nothing returns integer
	return YDWETimerSystem__CurrentIndex
endfunction
//ɾ????λ
function YDWETimerSystem__RemoveUnit_CallBack takes nothing returns nothing
    call RemoveUnit(LoadUnitHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
endfunction
function YDWETimerRemoveUnit takes real time,unit u returns nothing
    call SaveUnitHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time , YDWETimerSystem__fnRemoveUnit), u)
endfunction
//?ݻټ?ʱ??
function YDWETimerSystem__DestroyTimer_CallBack takes nothing returns nothing
    call DestroyTimer(LoadTimerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
endfunction
function YDWETimerDestroyTimer takes real time,timer t returns nothing
    call SaveTimerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time , YDWETimerSystem__fnDestroyTimer), t)
endfunction
//ɾ????Ʒ
function YDWETimerSystem__RemoveItem_CallBack takes nothing returns nothing
    call RemoveItem(LoadItemHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
endfunction
function YDWETimerRemoveItem takes real time,item it returns nothing
    call SaveItemHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time , YDWETimerSystem__fnRemoveItem), it)
endfunction
//ɾ????Ч
function YDWETimerSystem__DestroyEffect_CallBack takes nothing returns nothing
    call DestroyEffect(LoadEffectHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
endfunction
function YDWETimerDestroyEffect takes real time,effect e returns nothing
    call SaveEffectHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time , YDWETimerSystem__fnDestroyEffect), e)
endfunction
//ɾ????????Ч
function YDWETimerSystem__DestroyLightning_CallBack takes nothing returns nothing
    call DestroyLightning(LoadLightningHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
endfunction
function YDWETimerDestroyLightning takes real time,lightning lt returns nothing
 local integer i= YDWETimerSystem__NewTask(time , YDWETimerSystem__fnDestroyLightning)
    call SaveLightningHandle(YDHT, YDWETimerSystem__TimerHandle, i, lt)
endfunction
//???д?????
function YDWETimerSystem__RunTrigger_CallBack takes nothing returns nothing
    call TriggerExecute(LoadTriggerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex))
    call RemoveSavedHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__CurrentIndex)
endfunction
function YDWETimerRunTrigger takes real time,trigger trg returns nothing
    call SaveTriggerHandle(YDHT, YDWETimerSystem__TimerHandle, YDWETimerSystem__NewTask(time , YDWETimerSystem__fnRunTrigger), trg)
endfunction
//ɾ??Ư??????
function YDWETimerDestroyTextTag takes real time,texttag tt returns nothing
    local integer N=0
    local integer i=0
    if time <= 0 then
        set time=0.01
    endif
    call SetTextTagPermanent(tt, false)
    call SetTextTagLifespan(tt, time)
    call SetTextTagFadepoint(tt, time)
endfunction
//???ļ?ʱ????????
function YDWETimerSystem__Main takes nothing returns nothing
 local integer h= YDWETimerSystem__TaskListHead
 local integer p
	loop
		set YDWETimerSystem__CurrentIndex=YDWETimerSystem__TaskListNext[h]
		exitwhen YDWETimerSystem__CurrentIndex < 0 or YDWETimerSystem__CurrentTime < YDWETimerSystem__TaskListTime[YDWETimerSystem__CurrentIndex]
		//call BJDebugMsg("Task:"+I2S(CurrentIndex))
		call TriggerEvaluate(YDWETimerSystem__TaskListProc[YDWETimerSystem__CurrentIndex])
		call YDWETimerSystem__DeleteTaskIndex(YDWETimerSystem__CurrentIndex)
		set YDWETimerSystem__TaskListNext[h]=YDWETimerSystem__TaskListNext[YDWETimerSystem__CurrentIndex]
	endloop
	set YDWETimerSystem__CurrentTime=YDWETimerSystem__CurrentTime + 1
endfunction
//??ʼ??????
function YDWETimerSystem__Init takes nothing returns nothing
    set YDWETimerSystem__Timer=CreateTimer()
	set YDWETimerSystem__TimerHandle=GetHandleId(YDWETimerSystem__Timer)
	set YDWETimerSystem__CurrentTime=0
	set YDWETimerSystem__TaskListHead=0
	set YDWETimerSystem__TaskListNext[0]=- 1
	set YDWETimerSystem__TaskListIdleHead=1
	set YDWETimerSystem__TaskListIdleMax=1
	set YDWETimerSystem__TaskListIdle[1]=- 1
	
	set YDWETimerSystem__fnRemoveUnit=CreateTrigger()
	set YDWETimerSystem__fnDestroyTimer=CreateTrigger()
	set YDWETimerSystem__fnRemoveItem=CreateTrigger()
	set YDWETimerSystem__fnDestroyEffect=CreateTrigger()
	set YDWETimerSystem__fnDestroyLightning=CreateTrigger()
	set YDWETimerSystem__fnRunTrigger=CreateTrigger()
	call TriggerAddCondition(YDWETimerSystem__fnRemoveUnit, Condition(function YDWETimerSystem__RemoveUnit_CallBack))
	call TriggerAddCondition(YDWETimerSystem__fnDestroyTimer, Condition(function YDWETimerSystem__DestroyTimer_CallBack))
	call TriggerAddCondition(YDWETimerSystem__fnRemoveItem, Condition(function YDWETimerSystem__RemoveItem_CallBack))
	call TriggerAddCondition(YDWETimerSystem__fnDestroyEffect, Condition(function YDWETimerSystem__DestroyEffect_CallBack))
	call TriggerAddCondition(YDWETimerSystem__fnDestroyLightning, Condition(function YDWETimerSystem__DestroyLightning_CallBack))
	call TriggerAddCondition(YDWETimerSystem__fnRunTrigger, Condition(function YDWETimerSystem__RunTrigger_CallBack))
	
    call TimerStart(YDWETimerSystem__Timer, 0.01, true, function YDWETimerSystem__Main)
endfunction
//ѭ???????ö?????ʱ??
function YDWETimerSystemGetRunIndex takes nothing returns integer
    return YDWETimerSystem__TimerSystem_RunIndex
endfunction
function YDWETimerSystem__RunPeriodicTriggerFunction takes nothing returns nothing
    local integer tid= GetHandleId(GetExpiredTimer())
    local trigger trg= LoadTriggerHandle(YDHT, tid, $D0001)
	call SaveInteger(YDHT, StringHash(I2S(GetHandleId(trg))), StringHash("RunIndex"), LoadInteger(YDHT, tid, $D0002))
    if TriggerEvaluate(trg) then
        call TriggerExecute(trg)
    endif
    set trg=null
endfunction
function YDWETimerSystem__RunPeriodicTriggerFunctionByTimes takes nothing returns nothing
    local integer tid= GetHandleId(GetExpiredTimer())
    local trigger trg= LoadTriggerHandle(YDHT, tid, $D0001)
    local integer times= LoadInteger(YDHT, tid, $D0003)
	call SaveInteger(YDHT, StringHash(I2S(GetHandleId(trg))), StringHash("RunIndex"), LoadInteger(YDHT, tid, $D0002))
    if TriggerEvaluate(trg) then
        call TriggerExecute(trg)
    endif
    set times=times - 1
    if times > 0 then
		call SaveInteger(YDHT, tid, $D0003, times)
      else
        call DestroyTimer(GetExpiredTimer())
        call FlushChildHashtable(YDHT, tid)
    endif
    set trg=null
endfunction
function YDWETimerRunPeriodicTrigger takes real timeout,trigger trg,boolean b,integer times,integer data returns nothing
    local timer t
    local integer tid
    local integer index= 0
    if timeout < 0 then
        return
      else
        set t=CreateTimer()
		set tid=GetHandleId(t)
    endif
    set YDWETimerSystem__TimerSystem_RunIndex=YDWETimerSystem__TimerSystem_RunIndex + 1
	call SaveTriggerHandle(YDHT, tid, $D0001, trg)
	call SaveInteger(YDHT, tid, $D0002, YDWETimerSystem__TimerSystem_RunIndex)
	set index=LoadInteger(YDHT, GetHandleId(trg), 'YDTS' + data)
    set index=index + 1
	call SaveInteger(YDHT, GetHandleId(trg), 'YDTS' + data, index)
	call SaveTimerHandle(YDHT, GetHandleId(trg), ( 'YDTS' + data ) * index, t)
	
    if b == false then
		call SaveInteger(YDHT, tid, $D0003, times)
        call TimerStart(t, timeout, true, function YDWETimerSystem__RunPeriodicTriggerFunctionByTimes)
      else
        call TimerStart(t, timeout, true, function YDWETimerSystem__RunPeriodicTriggerFunction)
    endif
    set t=null
endfunction
function YDWETimerRunPeriodicTriggerOver takes trigger trg,integer data returns nothing
 local integer trgid= GetHandleId(trg)
    local integer index= LoadInteger(YDHT, trgid, 'YDTS' + data)
    local timer t
    loop
        exitwhen index <= 0
        set t=LoadTimerHandle(YDHT, trgid, ( 'YDTS' + data ) * index)
        call DestroyTimer(t)
        call FlushChildHashtable(YDHT, GetHandleId(t))
		call RemoveSavedHandle(YDHT, trgid, ( 'YDTS' + data ) * index)
        set index=index - 1
    endloop
	
    call RemoveSavedInteger(YDHT, trgid, 'YDTS' + data)
    set t=null
endfunction

//library YDWETimerSystem ends
//===========================================================================
// 
// 决战江湖TD
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Mon Dec 26 14:25:08 2022
//   Map Author: 未知
// 
//===========================================================================
//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************
function InitGlobals takes nothing returns nothing
    local integer i= 0
    set i=0
    loop
        exitwhen ( i > 4 )
        set udg_drop_rect[i]=null
        set i=i + 1
    endloop
endfunction
//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************
//===========================================================================
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_o011_0006=CreateUnit(p, 'o011', - 1280.0, 2240.0, 270.000)
    set gg_unit_o00M_0010=CreateUnit(p, 'o00M', - 1280.0, 1984.0, 270.000)
    set gg_unit_o00P_0015=CreateUnit(p, 'o00P', - 1280.0, 1728.0, 270.000)
    set gg_unit_o013_0027=CreateUnit(p, 'o013', - 1280.0, 1856.0, 270.000)
    set gg_unit_o014_0031=CreateUnit(p, 'o014', - 896.0, 1408.0, 270.000)
    set gg_unit_o00N_0035=CreateUnit(p, 'o00N', - 704.0, 1408.0, 270.000)
    set gg_unit_o00E_0039=CreateUnit(p, 'o00E', - 512.0, 1408.0, 270.000)
endfunction
//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_e00H_0023=CreateUnit(p, 'e00H', - 169.1, - 59.0, 342.900)
endfunction
//===========================================================================
function CreateBuildingsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_o011_0009=CreateUnit(p, 'o011', 2240.0, 1280.0, 270.000)
    set gg_unit_o00M_0013=CreateUnit(p, 'o00M', 1984.0, 1280.0, 270.000)
    set gg_unit_o00P_0018=CreateUnit(p, 'o00P', 1728.0, 1280.0, 270.000)
    set gg_unit_o013_0028=CreateUnit(p, 'o013', 1856.0, 1280.0, 270.000)
    set gg_unit_o014_0032=CreateUnit(p, 'o014', 1408.0, 896.0, 270.000)
    set gg_unit_o00N_0036=CreateUnit(p, 'o00N', 1408.0, 704.0, 270.000)
    set gg_unit_o00E_0040=CreateUnit(p, 'o00E', 1408.0, 512.0, 270.000)
endfunction
//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_e00H_0024=CreateUnit(p, 'e00H', 0.4, - 177.6, 162.890)
endfunction
//===========================================================================
function CreateBuildingsForPlayer2 takes nothing returns nothing
    local player p= Player(2)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_o011_0008=CreateUnit(p, 'o011', 1280.0, - 2240.0, 270.000)
    set gg_unit_o00M_0012=CreateUnit(p, 'o00M', 1280.0, - 1984.0, 270.000)
    set gg_unit_o00P_0017=CreateUnit(p, 'o00P', 1280.0, - 1728.0, 270.000)
    set gg_unit_o013_0029=CreateUnit(p, 'o013', 1280.0, - 1856.0, 270.000)
    set gg_unit_o014_0033=CreateUnit(p, 'o014', 896.0, - 1408.0, 270.000)
    set gg_unit_o00N_0037=CreateUnit(p, 'o00N', 704.0, - 1408.0, 270.000)
    set gg_unit_o00E_0041=CreateUnit(p, 'o00E', 512.0, - 1408.0, 270.000)
endfunction
//===========================================================================
function CreateUnitsForPlayer2 takes nothing returns nothing
    local player p= Player(2)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_e00H_0025=CreateUnit(p, 'e00H', 172.2, - 89.5, 97.730)
endfunction
//===========================================================================
function CreateBuildingsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_o011_0007=CreateUnit(p, 'o011', - 2240.0, - 1280.0, 270.000)
    set gg_unit_o00M_0011=CreateUnit(p, 'o00M', - 1984.0, - 1280.0, 270.000)
    set gg_unit_o00P_0016=CreateUnit(p, 'o00P', - 1728.0, - 1280.0, 270.000)
    set gg_unit_o013_0030=CreateUnit(p, 'o013', - 1856.0, - 1280.0, 270.000)
    set gg_unit_o014_0034=CreateUnit(p, 'o014', - 1408.0, - 896.0, 270.000)
    set gg_unit_o00N_0038=CreateUnit(p, 'o00N', - 1408.0, - 704.0, 270.000)
    set gg_unit_o00E_0042=CreateUnit(p, 'o00E', - 1408.0, - 448.0, 270.000)
endfunction
//===========================================================================
function CreateUnitsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_e00H_0026=CreateUnit(p, 'e00H', 26.1, 122.4, 358.290)
endfunction
//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life
    set gg_unit_o00A_0014=CreateUnit(p, 'o00A', 0.0, - 64.0, 270.000)
    set gg_unit_o00J_0019=CreateUnit(p, 'o00J', 256.0, 192.0, 270.000)
    set gg_unit_o00L_0020=CreateUnit(p, 'o00L', 256.0, - 320.0, 270.000)
    set gg_unit_o00K_0021=CreateUnit(p, 'o00K', - 320.0, - 320.0, 270.000)
    set gg_unit_o00Q_0022=CreateUnit(p, 'o00Q', - 320.0, 256.0, 270.000)
endfunction
//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0()
    call CreateBuildingsForPlayer1()
    call CreateBuildingsForPlayer2()
    call CreateBuildingsForPlayer3()
endfunction
//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
    call CreateUnitsForPlayer1()
    call CreateUnitsForPlayer2()
    call CreateUnitsForPlayer3()
endfunction
//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreatePlayerUnits()
endfunction
//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************
function CreateRegions takes nothing returns nothing
    local weathereffect we
    set gg_rct_drop1=Rect(- 992.0, 1696.0, - 352.0, 2272.0)
    set gg_rct_drop2=Rect(1696.0, 416.0, 2336.0, 992.0)
    set gg_rct_drop3=Rect(352.0, - 2272.0, 992.0, - 1696.0)
    set gg_rct_drop4=Rect(- 2272.0, - 992.0, - 1632.0, - 416.0)
endfunction
//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//TESH.scrollpos=0
//TESH.alwaysfold=0

































    
//library DzAPI ends
    
// japi






























    
    
    
//library DzAPI:
function DzAPI_Map_IsPlatformVIP takes player whichPlayer returns boolean
    return DzAPI_Map_GetPlatformVIP(whichPlayer) > 0
endfunction
    
function DzAPI_Map_Global_GetStoreString takes string key returns string
    return RequestExtraStringData(36, GetLocalPlayer(), key, null, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_Global_StoreString takes string key,string value returns nothing
    call RequestExtraStringData(37, GetLocalPlayer(), key, value, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_Global_ChangeMsg takes trigger trig returns nothing
    call DzTriggerRegisterSyncData(trig, "DZGAU", true)
endfunction
    
function DzAPI_Map_ServerArchive takes player whichPlayer,string key returns string
    return RequestExtraStringData(38, whichPlayer, key, null, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_SaveServerArchive takes player whichPlayer,string key,string value returns nothing
    call RequestExtraBooleanData(39, whichPlayer, key, value, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_IsRPGQuickMatch takes nothing returns boolean
    return RequestExtraBooleanData(40, null, null, null, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_GetMallItemCount takes player whichPlayer,string key returns integer
    return RequestExtraIntegerData(41, whichPlayer, key, null, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_ConsumeMallItem takes player whichPlayer,string key,integer count returns boolean
    return RequestExtraBooleanData(42, whichPlayer, key, null, false, count, 0, 0)
endfunction
    
function DzAPI_Map_EnablePlatformSettings takes player whichPlayer,integer option,boolean enable returns boolean
    return RequestExtraBooleanData(43, whichPlayer, null, null, enable, option, 0, 0)
endfunction
    
function DzAPI_Map_IsBuyReforged takes player whichPlayer returns boolean
    return RequestExtraBooleanData(44, whichPlayer, null, null, false, 0, 0, 0)
endfunction
    
function GetPlayerServerValueSuccess takes player whichPlayer returns boolean
    if ( DzAPI_Map_GetServerValueErrorCode(whichPlayer) == 0 ) then
        return true
    else
        return false
    endif
endfunction
    
function DzAPI_Map_StoreIntegerEX takes player whichPlayer,string key,integer value returns nothing
    set key="I" + key
    call RequestExtraBooleanData(39, whichPlayer, key, I2S(value), false, 0, 0, 0)
    set key=null
    set whichPlayer=null
endfunction
    
function DzAPI_Map_GetStoredIntegerEX takes player whichPlayer,string key returns integer
    local integer value
    set key="I" + key
    set value=S2I(RequestExtraStringData(38, whichPlayer, key, null, false, 0, 0, 0))
    set key=null
    set whichPlayer=null
    return value
endfunction
    
function DzAPI_Map_StoreInteger takes player whichPlayer,string key,integer value returns nothing
    set key="I" + key
    call DzAPI_Map_SaveServerValue(whichPlayer, key, I2S(value))
    set key=null
    set whichPlayer=null
endfunction
    
function DzAPI_Map_GetStoredInteger takes player whichPlayer,string key returns integer
    local integer value
    set key="I" + key
    set value=S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
    set key=null
    set whichPlayer=null
    return value
endfunction
    
function DzAPI_Map_CommentTotalCount1 takes player whichPlayer,integer id returns integer
    return RequestExtraIntegerData(52, whichPlayer, null, null, false, id, 0, 0)
endfunction
    
function DzAPI_Map_StoreReal takes player whichPlayer,string key,real value returns nothing
    set key="R" + key
    call DzAPI_Map_SaveServerValue(whichPlayer, key, R2S(value))
    set key=null
    set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredReal takes player whichPlayer,string key returns real
    local real value
    set key="R" + key
    set value=S2R(DzAPI_Map_GetServerValue(whichPlayer, key))
    set key=null
    set whichPlayer=null
    return value
endfunction
function DzAPI_Map_StoreBoolean takes player whichPlayer,string key,boolean value returns nothing
    set key="B" + key
    if ( value ) then
        call DzAPI_Map_SaveServerValue(whichPlayer, key, "1")
    else
        call DzAPI_Map_SaveServerValue(whichPlayer, key, "0")
    endif
    set key=null
    set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredBoolean takes player whichPlayer,string key returns boolean
    local boolean value
    set key="B" + key
    set key=DzAPI_Map_GetServerValue(whichPlayer, key)
    if ( key == "1" ) then
        set value=true
    else
        set value=false
    endif
    set key=null
    set whichPlayer=null
    return value
endfunction
function DzAPI_Map_StoreString takes player whichPlayer,string key,string value returns nothing
    set key="S" + key
    call DzAPI_Map_SaveServerValue(whichPlayer, key, value)
    set key=null
    set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredString takes player whichPlayer,string key returns string
    return DzAPI_Map_GetServerValue(whichPlayer, "S" + key)
endfunction
function DzAPI_Map_StoreStringEX takes player whichPlayer,string key,string value returns nothing
    set key="S" + key
    call RequestExtraBooleanData(39, whichPlayer, key, value, false, 0, 0, 0)
    set key=null
    set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredStringEX takes player whichPlayer,string key returns string
    return RequestExtraStringData(38, whichPlayer, "S" + key, null, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_GetStoredUnitType takes player whichPlayer,string key returns integer
    local integer value
    set key="I" + key
    set value=S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
    set key=null
    set whichPlayer=null
    return value
endfunction
    
function DzAPI_Map_GetStoredAbilityId takes player whichPlayer,string key returns integer
    local integer value
    set key="I" + key
    set value=S2I(DzAPI_Map_GetServerValue(whichPlayer, key))
    set key=null
    set whichPlayer=null
    return value
endfunction
    
    
    
    
function DzAPI_Map_FlushStoredMission takes player whichPlayer,string key returns nothing
    call DzAPI_Map_SaveServerValue(whichPlayer, key, null)
    set key=null
    set whichPlayer=null
endfunction
    
function DzAPI_Map_Ladder_SubmitIntegerData takes player whichPlayer,string key,integer value returns nothing
    call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
endfunction
function DzAPI_Map_Stat_SubmitUnitIdData takes player whichPlayer,string key,integer value returns nothing
    if ( value == 0 ) then
        //call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
    else
        call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
    endif
endfunction
function DzAPI_Map_Stat_SubmitUnitData takes player whichPlayer,string key,unit value returns nothing
    call DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer , key , GetUnitTypeId(value))
endfunction
function DzAPI_Map_Ladder_SubmitAblityIdData takes player whichPlayer,string key,integer value returns nothing
    if ( value == 0 ) then
        //call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
    else
        call DzAPI_Map_Ladder_SetStat(whichPlayer, key, I2S(value))
    endif
endfunction
function DzAPI_Map_Ladder_SubmitItemIdData takes player whichPlayer,string key,integer value returns nothing
    local string S
    if ( value == 0 ) then
        set S="0"
    else
        set S=I2S(value)
        call DzAPI_Map_Ladder_SetStat(whichPlayer, key, S)
    endif
    //call DzAPI_Map_Ladder_SetStat(whichPlayer,key,S)
    set S=null
    set whichPlayer=null
endfunction
function DzAPI_Map_Ladder_SubmitItemData takes player whichPlayer,string key,item value returns nothing
    call DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer , key , GetItemTypeId(value))
endfunction
function DzAPI_Map_Ladder_SubmitBooleanData takes player whichPlayer,string key,boolean value returns nothing
    if ( value ) then
        call DzAPI_Map_Ladder_SetStat(whichPlayer, key, "1")
    else
        call DzAPI_Map_Ladder_SetStat(whichPlayer, key, "0")
    endif
endfunction
function DzAPI_Map_Ladder_SubmitTitle takes player whichPlayer,string value returns nothing
    call DzAPI_Map_Ladder_SetStat(whichPlayer, value, "1")
endfunction
function DzAPI_Map_Ladder_SubmitPlayerRank takes player whichPlayer,integer value returns nothing
    call DzAPI_Map_Ladder_SetPlayerStat(whichPlayer, "RankIndex", I2S(value))
endfunction
    
function DzAPI_Map_Ladder_SubmitPlayerExtraExp takes player whichPlayer,integer value returns nothing
    call DzAPI_Map_Ladder_SetStat(whichPlayer, "ExtraExp", I2S(value))
endfunction
    
function DzAPI_Map_PlayedGames takes player whichPlayer returns integer
    return RequestExtraIntegerData(45, whichPlayer, null, null, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_CommentCount takes player whichPlayer returns integer
    return RequestExtraIntegerData(46, whichPlayer, null, null, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_FriendCount takes player whichPlayer returns integer
    return RequestExtraIntegerData(47, whichPlayer, null, null, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_IsConnoisseur takes player whichPlayer returns boolean
    return RequestExtraBooleanData(48, whichPlayer, null, null, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_IsBattleNetAccount takes player whichPlayer returns boolean
    return RequestExtraBooleanData(49, whichPlayer, null, null, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_IsAuthor takes player whichPlayer returns boolean
    return RequestExtraBooleanData(50, whichPlayer, null, null, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_CommentTotalCount takes nothing returns integer
    return RequestExtraIntegerData(51, null, null, null, false, 0, 0, 0)
endfunction
    
function DzAPI_Map_Statistics takes player whichPlayer,string eventKey,string eventType,integer value returns nothing
    call RequestExtraBooleanData(34, whichPlayer, eventKey, "", false, value, 0, 0)
endfunction
    
function DzAPI_Map_Returns takes player whichPlayer,integer label returns boolean
    return RequestExtraBooleanData(53, whichPlayer, null, null, false, label, 0, 0)
endfunction
    
    
function DzAPI_Map_ContinuousCount takes player whichPlayer,integer id returns integer
    return RequestExtraIntegerData(54, whichPlayer, null, null, false, id, 0, 0)
endfunction
    
// IsPlayer,                      //是否为玩家
function DzAPI_Map_IsPlayer takes player whichPlayer returns boolean
    return RequestExtraBooleanData(55, whichPlayer, null, null, false, 0, 0, 0)
endfunction
    
// MapsTotalPlayed,               //所有地图的总游戏时长
function DzAPI_Map_MapsTotalPlayed takes player whichPlayer returns integer
    return RequestExtraIntegerData(56, whichPlayer, null, null, false, 0, 0, 0)
endfunction
    
// MapsLevel,                    //指定地图的地图等级
function DzAPI_Map_MapsLevel takes player whichPlayer,integer mapId returns integer
    return RequestExtraIntegerData(57, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
    
// MapsConsumeGold,              //所有地图的金币消耗
function DzAPI_Map_MapsConsumeGold takes player whichPlayer,integer mapId returns integer
    return RequestExtraIntegerData(58, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
    
// MapsConsumeLumber,            //所有地图的木材消耗
function DzAPI_Map_MapsConsumeLumber takes player whichPlayer,integer mapId returns integer
    return RequestExtraIntegerData(59, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
    
// MapsConsumeLv1,               //消费 1-199
function DzAPI_Map_MapsConsumeLv1 takes player whichPlayer,integer mapId returns boolean
    return RequestExtraBooleanData(60, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
    
// MapsConsumeLv2,               //消费 200-499
function DzAPI_Map_MapsConsumeLv2 takes player whichPlayer,integer mapId returns boolean
    return RequestExtraBooleanData(61, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
    
// MapsConsumeLv3,               //消费 500~999
function DzAPI_Map_MapsConsumeLv3 takes player whichPlayer,integer mapId returns boolean
    return RequestExtraBooleanData(62, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
    
// MapsConsumeLv4,               //消费 1000+
function DzAPI_Map_MapsConsumeLv4 takes player whichPlayer,integer mapId returns boolean
    return RequestExtraBooleanData(63, whichPlayer, null, null, false, mapId, 0, 0)
endfunction
//获取论坛数据（0=累计获得赞数，1=精华帖数量，2=发表回复次数，3=收到的欢乐数，4=是否发过贴子，5=是否版主，6=主题数量）
function DzAPI_Map_GetForumData takes player whichPlayer,integer whichData returns integer
    return RequestExtraIntegerData(65, whichPlayer, null, null, false, whichData, 0, 0)
endfunction
    
    
function DzAPI_Map_OpenMall takes player whichPlayer,string whichkey returns boolean
    return RequestExtraBooleanData(66, whichPlayer, whichkey, null, false, 0, 0, 0)
endfunction
    
//hardware

//获取鼠标在游戏内的坐标X

//获取鼠标在游戏内的坐标Y

    
//获取鼠标在游戏内的坐标Z

    
//鼠标是否在游戏内

    
//获取鼠标屏幕坐标X

    
//获取鼠标屏幕坐标Y

    
//获取鼠标游戏窗口坐标X

    
//获取鼠标游戏窗口坐标Y

    
//设置鼠标位置

    
//注册鼠标点击触发（sync为true时，调用TriggerExecute。为false时，直接运行action函数，可以异步不掉线，action里不要有同步操作）


    
//注册键盘点击触发


    
//注册鼠标滚轮触发


    
//注册鼠标移动触发


    
//获取触发器的按键码

    
//获取滚轮delta

    
//判断按键是否按下

    
//获取触发key的玩家

    
//获取war3窗口宽度

    
//获取war3窗口高度

    
//获取war3窗口X坐标

    
//获取war3窗口Y坐标

    
//注册war3窗口大小变化事件


    
//判断窗口是否激活

    
//plus
    
//设置可摧毁物位置

    
//设置单位位置-本地调用

    
//异步执行函数

    
//取鼠标指向的unit

    
//设置unit的贴图

    
//设置内存数值

    
//设置单位ID

    
//设置单位模型

    
//设置小地图背景图片

    


    
//sync
    
//注册数据同步trigger

    
//同步游戏数据

    
//获取同步的数据

    
//获取同步数据的玩家

    
//gui
    
/////////////////////////////// 原生UI修改
//隐藏界面元素

    
//修改游戏世界窗口位置

    
//头像

    
//小地图

    
//技能按钮

    
//英雄按钮

    
//英雄血条

    
//英雄蓝条

    
//道具按钮

    
//小地图按钮

    
//左上菜单按钮

    
//鼠标提示

    
//聊天信息

    
//unit message

    
//top message

    
///////////////////////////////
//取rgba色值

    
//设置界面更新回调（非同步）


    
//显示/隐藏Frame

    
//创建frame

    
//创建SimpleFrame

    
//销毁frame

    
//加载toc

    
//设置frame相对位置

    
//设置frame绝对位置

    
//清空frame锚点

    
//设置frame禁用/启用

    
//注册UI事件回调


    
//获取触发ui的玩家

    
//获取触发的Frame

    
//查找frame

    
//查找SimpleFrame

    
//查找String

    
//查找Texture

    
//获取game ui

    
//点击frame

    
//自定义屏幕比例

    
//使用宽屏模式

    
//设置文字（支持EditBox, TextFrame, TextArea, SimpleFontString、GlueEditBoxWar3、SlashChatBox、TimerTextFrame、TextButtonFrame、GlueTextButton）

    
//获取文字（支持EditBox, TextFrame, TextArea, SimpleFontString）

    
//设置字数限制（支持EditBox）

    
//获取字数限制（支持EditBox）

    
//设置文字颜色（支持TextFrame, EditBox）

    
//获取鼠标所在位置的ui控件指针

    
//设置所有锚点到目标frame上

    
//设置焦点

    
//设置模型（支持Sprite、Model、StatusBar）

    
//获取控件是否启用

    
//设置透明度（0-255）

    
//获取透明度

    
//设置动画

    
//设置动画进度（autocast为false是可用）

    
//设置texture（支持Backdrop、SimpleStatusBar）

    
//设置缩放

    
//设置tooltip

    
//鼠标限制在ui内

    
//获取当前值（支持Slider、SimpleStatusBar、StatusBar）

    
//设置最大最小值（支持Slider、SimpleStatusBar、StatusBar）

    
//设置Step值（支持Slider）

    
//设置当前值（支持Slider、SimpleStatusBar、StatusBar）

    
//设置frame大小

    
//根据tag创建frame

    
//设置颜色（支持SimpleStatusBar）

    










    
// function DzTriggerRegisterMouseEventTrg takes trigger trg, integer status, integer btn returns nothing
//     if trg == null then
//         return
//     endif
//     call DzTriggerRegisterMouseEvent(trg, btn, status, true, null)
// endfunction
    
// function DzTriggerRegisterKeyEventTrg takes trigger trg, integer status, integer btn returns nothing
//     if trg == null then
//         return
//     endif
//     call DzTriggerRegisterKeyEvent(trg, btn, status, true, null)
// endfunction
    
// function DzTriggerRegisterMouseMoveEventTrg takes trigger trg returns nothing
//     if trg == null then
//         return
//     endif
//     call DzTriggerRegisterMouseMoveEvent(trg, true, null)
// endfunction
    
// function DzTriggerRegisterMouseWheelEventTrg takes trigger trg returns nothing
//     if trg == null then
//         return
//     endif
//     call DzTriggerRegisterMouseWheelEvent(trg, true, null)
// endfunction
    
// function DzTriggerRegisterWindowResizeEventTrg takes trigger trg returns nothing
//     if trg == null then
//         return
//     endif
//     call DzTriggerRegisterWindowResizeEvent(trg, true, null)
// endfunction
    
// function DzF2I takes integer i returns integer
//     return i
// endfunction
    
// function DzI2F takes integer i returns integer
//     return i
// endfunction
    
// function DzK2I takes integer i returns integer
//     return i
// endfunction
    
// function DzI2K takes integer i returns integer
//     return i
// endfunction
    
// function DzTriggerRegisterMallItemSyncData takes trigger trig returns nothing
//     call DzTriggerRegisterSyncData(trig, "DZMIA", true)
// endfunction
    
// function DzGetTriggerMallItemPlayer takes nothing returns player
//     return DzGetTriggerSyncPlayer()
// endfunction
    
// function DzGetTriggerMallItem takes nothing returns string
//     return DzGetTriggerSyncData()
// endfunction
    
   
function transformInt takes integer i returns integer
    local string s= DzAPI_Map_GetMapConfig("hashKey")
    local integer hash= 0
    if s == null or s == "" then
        set hash=68
    else
        set hash=S2I(s)
    endif
    return i * hash + GetRandomInt(1, 63)
endfunction
function untransformInt takes integer i returns integer
    local string s= DzAPI_Map_GetMapConfig("hashKey")
    local integer hash= 0
    if s == null or s == "" then
        set hash=68
    else
        set hash=S2I(s)
    endif
    return i / hash
endfunction
// 将整数转换为62进制字符
function encodeChar takes integer i returns string
    if i == 0 then
        return "a"
    elseif i == 1 then
        return "b"
    elseif i == 2 then
        return "c"
    elseif i == 3 then
        return "d"
    elseif i == 4 then
        return "e"
    elseif i == 5 then
        return "f"
    elseif i == 6 then
        return "g"
    elseif i == 7 then
        return "h"
    elseif i == 8 then
        return "i"
    elseif i == 9 then
        return "j"
    elseif i == 10 then
        return "k"
    elseif i == 11 then
        return "l"
    elseif i == 12 then
        return "m"
    elseif i == 13 then
        return "n"
    elseif i == 14 then
        return "o"
    elseif i == 15 then
        return "p"
    elseif i == 16 then
        return "q"
    elseif i == 17 then
        return "r"
    elseif i == 18 then
        return "s"
    elseif i == 19 then
        return "t"
    elseif i == 20 then
        return "u"
    elseif i == 21 then
        return "v"
    elseif i == 22 then
        return "w"
    elseif i == 23 then
        return "x"
    elseif i == 24 then
        return "y"
    elseif i == 25 then
        return "z"
    elseif i == 26 then
        return "A"
    elseif i == 27 then
        return "B"
    elseif i == 28 then
        return "C"
    elseif i == 29 then
        return "D"
    elseif i == 30 then
        return "E"
    elseif i == 31 then
        return "F"
    elseif i == 32 then
        return "G"
    elseif i == 33 then
        return "H"
    elseif i == 34 then
        return "I"
    elseif i == 35 then
        return "J"
    elseif i == 36 then
        return "K"
    elseif i == 37 then
        return "L"
    elseif i == 38 then
        return "M"
    elseif i == 39 then
        return "N"
    elseif i == 40 then
        return "O"
    elseif i == 41 then
        return "P"
    elseif i == 42 then
        return "Q"
    elseif i == 43 then
        return "R"
    elseif i == 44 then
        return "S"
    elseif i == 45 then
        return "T"
    elseif i == 46 then
        return "U"
    elseif i == 47 then
        return "V"
    elseif i == 48 then
        return "W"
    elseif i == 49 then
        return "X"
    elseif i == 50 then
        return "Y"
    elseif i == 51 then
        return "Z"
    elseif i == 52 then
        return "0"
    elseif i == 53 then
        return "1"
    elseif i == 54 then
        return "2"
    elseif i == 55 then
        return "3"
    elseif i == 56 then
        return "4"
    elseif i == 57 then
        return "5"
    elseif i == 58 then
        return "6"
    elseif i == 59 then
        return "7"
    elseif i == 60 then
        return "8"
    elseif i == 61 then
        return "9"
    endif
    return ""
endfunction
// 将62进制字符转换为整数
function decodeChar takes string s returns integer
    if s == "a" then
        return 0
    elseif s == "b" then
        return 1
    elseif s == "c" then
        return 2
    elseif s == "d" then
        return 3
    elseif s == "e" then
        return 4
    elseif s == "f" then
        return 5
    elseif s == "g" then
        return 6
    elseif s == "h" then
        return 7
    elseif s == "i" then
        return 8
    elseif s == "j" then
        return 9
    elseif s == "k" then
        return 10
    elseif s == "l" then
        return 11
    elseif s == "m" then
        return 12
    elseif s == "n" then
        return 13
    elseif s == "o" then
        return 14
    elseif s == "p" then
        return 15
    elseif s == "q" then
        return 16
    elseif s == "r" then
        return 17
    elseif s == "s" then
        return 18
    elseif s == "t" then
        return 19
    elseif s == "u" then
        return 20
    elseif s == "v" then
        return 21
    elseif s == "w" then
        return 22
    elseif s == "x" then
        return 23
    elseif s == "y" then
        return 24
    elseif s == "z" then
        return 25
    elseif s == "A" then
        return 26
    elseif s == "B" then
        return 27
    elseif s == "C" then
        return 28
    elseif s == "D" then
        return 29
    elseif s == "E" then
        return 30
    elseif s == "F" then
        return 31
    elseif s == "G" then
        return 32
    elseif s == "H" then
        return 33
    elseif s == "I" then
        return 34
    elseif s == "J" then
        return 35
    elseif s == "K" then
        return 36
    elseif s == "L" then
        return 37
    elseif s == "M" then
        return 38
    elseif s == "N" then
        return 39
    elseif s == "O" then
        return 40
    elseif s == "P" then
        return 41
    elseif s == "Q" then
        return 42
    elseif s == "R" then
        return 43
    elseif s == "S" then
        return 44
    elseif s == "T" then
        return 45
    elseif s == "U" then
        return 46
    elseif s == "V" then
        return 47
    elseif s == "W" then
        return 48
    elseif s == "X" then
        return 49
    elseif s == "Y" then
        return 50
    elseif s == "Z" then
        return 51
    elseif s == "0" then
        return 52
    elseif s == "1" then
        return 53
    elseif s == "2" then
        return 54
    elseif s == "3" then
        return 55
    elseif s == "4" then
        return 56
    elseif s == "5" then
        return 57
    elseif s == "6" then
        return 58
    elseif s == "7" then
        return 59
    elseif s == "8" then
        return 60
    elseif s == "9" then
        return 61
    endif
    return - 1
endfunction
// 将整数转换为62进制字符串
function encodeInt takes integer i returns string
    local string result= ""
    local integer temp= i
    local integer remainder
    if i == 0 then
        return "MAGIC"
    endif
    loop
        set remainder=ModuloInteger(temp, 62)
        set temp=temp / 62
        set result=result + encodeChar(remainder)
        if temp < 1 then
            exitwhen true
        endif
    endloop
    return result
endfunction
// 将62进制字符串转为整数
function decodeInt takes string s returns integer
    local integer result= 0
    local integer i= 0
    local integer temp
    local integer char
    local integer k= 1
    if s == null or s == "" or s == "MAGIC" then
        return 0
    endif
    loop
        exitwhen i > StringLength(s) - 1
        set char=decodeChar(SubString(s, i, i + 1))
        set temp=char * k
        set result=result + temp
        set k=k * 62
        set i=i + 1
    endloop
    return result
endfunction
function newEncryptInt takes integer i returns string
    return encodeInt(transformInt(i))
endfunction
function newDecryptInt takes string s returns integer
    if s == "" or s == null then
        return 0
    endif
    return untransformInt(decodeInt(s))
endfunction

function clearAttackSpeed takes unit u returns nothing
    local integer i= 10
    loop
        exitwhen i < 1
        call UnitRemoveAbility(u, attackSpeedAbility[i])
        set i=i - 1
    endloop
    call SaveInteger(YDHT, GetHandleId(u), StringHash("attackSpeed"), 0)
endfunction
// 设置攻速
function setAttackSpeed takes unit u,integer rate returns boolean
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
        set rate=512 + rate
        call UnitAddAbility(u, attackSpeedAbility[10])
        call UnitMakeAbilityPermanent(u, true, attackSpeedAbility[10])
    else
        call UnitRemoveAbility(u, attackSpeedAbility[10])
    endif
    set i=9
    loop
        exitwhen i < 1
        if rate > powerOfTwo[i] then
            call UnitAddAbility(u, attackSpeedAbility[i])
            call UnitMakeAbilityPermanent(u, true, attackSpeedAbility[i])
            set rate=rate - powerOfTwo[i]
        else
            call UnitRemoveAbility(u, attackSpeedAbility[i])
        endif
        set i=i - 1
    endloop
    return true
endfunction
// 增加攻速
function addAttackSpeed takes unit u,integer rate returns boolean
    return setAttackSpeed(u , LoadInteger(YDHT, GetHandleId(u), StringHash("attackSpeed")) + rate)
endfunction
function initSetAttackSpeed takes nothing returns nothing
    set attackSpeedAbility[1]='YDa0'
    set attackSpeedAbility[2]='YDa1'
    set attackSpeedAbility[3]='YDa2'
    set attackSpeedAbility[4]='YDa3'
    set attackSpeedAbility[5]='YDa4'
    set attackSpeedAbility[6]='YDa5'
    set attackSpeedAbility[7]='YDa6'
    set attackSpeedAbility[8]='YDa7'
    set attackSpeedAbility[9]='YDa8'
    set attackSpeedAbility[10]='YDa9'
    set powerOfTwo[0]=1
    set powerOfTwo[1]=2
    set powerOfTwo[2]=4
    set powerOfTwo[3]=8
    set powerOfTwo[4]=16
    set powerOfTwo[5]=32
    set powerOfTwo[6]=64
    set powerOfTwo[7]=128
    set powerOfTwo[8]=256
    set powerOfTwo[9]=512
endfunction
function WanBuff_1 takes integer buffnum,integer num,unit uc,integer id,integer orderid,unit ut,string s returns nothing
    local unit u
    local player p
    local location loc
    if buffnum == num then
        set p=GetOwningPlayer(uc)
        set loc=GetUnitLoc(ut)
        call CreateNUnitsAtLoc(1, 'e100', p, loc, bj_UNIT_FACING)
        set u=bj_lastCreatedUnit
        call ShowUnitHide(u)
        call UnitAddAbility(u, id)
        if num == 12 or num == 14 then
            call IncUnitAbilityLevel(u, id)
        endif
        call IssueTargetOrderById(u, orderid, ut)
        call UnitApplyTimedLife(u, 'BHwe', 2.)
        call CreateTextTagLocBJ(s, loc, 60., 12., 65., 55., 42., 0)
        call YDWETimerDestroyTextTag(3. , bj_lastCreatedTextTag)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100., 90)
        call RemoveLocation(loc)
    endif
    set loc=null
    set p=null
    set u=null
endfunction
function WanBuff takes unit u,unit ut,integer buffnum returns nothing
    call WanBuff_1(buffnum , 1 , u , 'A077' , 852111 , ut , "内伤")
    call WanBuff_1(buffnum , 2 , u , 'A079' , 852668 , ut , "走火入魔")
    call WanBuff_1(buffnum , 3 , u , 'A075' , 852527 , ut , "流血")
    call WanBuff_1(buffnum , 4 , u , 'A06I' , 852189 , ut , "混乱")
    call WanBuff_1(buffnum , 5 , u , 'A0AZ' , 852075 , ut , "昏迷")
    call WanBuff_1(buffnum , 6 , u , 'A076' , 852075 , ut , "重伤")
    call WanBuff_1(buffnum , 7 , u , 'A078' , 852527 , ut , "血流不止")
    call WanBuff_1(buffnum , 8 , u , 'A0AY' , 852190 , ut , "麻痹")
    call WanBuff_1(buffnum , 9 , u , 'A03O' , 852149 , ut , "破防")
    call WanBuff_1(buffnum , 10 , u , 'A05N' , 852190 , ut , "神经错乱")
    call WanBuff_1(buffnum , 11 , u , 'A05L' , 852095 , ut , "封穴")
    call WanBuff_1(buffnum , 12 , u , 'A05L' , 852095 , ut , "穴位全封")
    call WanBuff_1(buffnum , 13 , u , 'A074' , 852527 , ut , "中毒")
    call WanBuff_1(buffnum , 14 , u , 'A074' , 852527 , ut , "深度中毒")
    call WanBuff_1(buffnum , 15 , u , 'A097' , 852190 , ut , "致盲")
    call WanBuff_1(buffnum , 16 , u , 'A097' , 852190 , ut , "伤害加深")
endfunction
function dealDamage takes unit u,unit ut,real damage returns nothing
    local location loc= GetUnitLoc(ut)
    local real coeff= 1
    local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
    // 敌方闪避
    local integer enemyDodge= ( udg_difficulty - 1 ) * 5 + ( wave - 1 ) / 9 * 10
    // 我方命中
    local integer myHit= 100 + LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_HIT_KEY)
    local integer rand= GetRandomInt(0, 100)
    local integer hitRate= 0
    local integer criticalRate= 5 + LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_CRITICAL_RATE_KEY)
    // 暴击倍数
    local real criticalTimes= 2 + LoadReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_CRITICAL_ADDITION_KEY)
    // 如果敌方单位是英雄，闪避加100
    if IsUnitType(ut, UNIT_TYPE_HERO) then
        set enemyDodge=enemyDodge + 100
    endif
    // 蓝怪闪避+500
	if LoadInteger(YDHT, GetHandleId(ut), StringHash("color")) == 3 then
		set enemyDodge=enemyDodge + 500
	endif
    // R00A科技等级，每级命中+100
    if GetPlayerTechCountSimple('R00A', GetOwningPlayer(u)) > 0 then
        set myHit=myHit + 100 * GetPlayerTechCountSimple('R00A', GetOwningPlayer(u))
    endif
    set hitRate=100 * myHit / ( myHit + enemyDodge )
    set coeff=coeff + kungfuCoeff[i]
    // 北冥神功 暴击率+20%  暴击倍数+1
    if GetUnitAbilityLevel(u, 'A03N') > 0 then
        set criticalRate=criticalRate + 5 * GetUnitAbilityLevel(u, 'A03N')
        set criticalTimes=criticalTimes + 0.3 + 0.2 * GetUnitAbilityLevel(u, 'A03N')
    endif
    // 每点功勋增加0.2%伤害
    if LoadInteger(CONT_HT, GetHandleId(u), CONT_KEY) > 0 then
        set coeff=coeff + LoadInteger(CONT_HT, GetHandleId(u), CONT_KEY) * 0.002
    endif
    // 北冥神功 伤害增加40%
    if GetUnitAbilityLevel(u, 'A03N') >= 1 then
        set coeff=coeff + 0.05 + 0.15 * GetUnitAbilityLevel(u, 'A03N')
    endif
    // 太玄神功 伤害增加50%
    if GetUnitAbilityLevel(u, 'A03P') >= 1 then
        set coeff=coeff + 0.15 + 0.15 * GetUnitAbilityLevel(u, 'A03P')
    endif
    // 蛤蟆功 伤害增加40%
    if GetUnitAbilityLevel(u, 'A03Q') >= 1 then
        set coeff=coeff + 0.05 + 0.15 * GetUnitAbilityLevel(u, 'A03Q')
    endif
    // 洗髓经 伤害增加50%
    if GetUnitAbilityLevel(u, 'A03R') >= 1 then
        set coeff=coeff + 0.15 + 0.15 * GetUnitAbilityLevel(u, 'A03R')
    endif
    // 小无相功 伤害增加50%
    if GetUnitAbilityLevel(u, 'A096') >= 1 then
        set coeff=coeff + 0.15 + 0.15 * GetUnitAbilityLevel(u, 'A096')
    endif
    // 地图等级大于等于6级，伤害增加5%
    if mapLevel[i] >= 6 then
        set coeff=coeff + 0.05
    endif
    // 地图等级大于等于20级，伤害增加10%
    if mapLevel[i] >= 20 then
        set coeff=coeff + 0.1
    endif
    // 通关N1，伤害增加10%
    if winDifficulty[i] >= 1 then
        set coeff=coeff + 0.1
    endif
    // 通关N5，伤害增加10%
    if winDifficulty[i] >= 5 then
        set coeff=coeff + 0.1
    endif
    // 通关N10，伤害增加10%
    if winDifficulty[i] >= 10 then
        set coeff=coeff + 0.1
    endif
    // 塔的伤害加成
    if LoadReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_DAMAGE_KEY) > 0 then
        set coeff=coeff + LoadReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_DAMAGE_KEY)
    endif
    set damage=damage * coeff
    if UnitHasBuffBJ(ut, 'B005') then
        set damage=damage * 2
    endif
    // 伤害减免 红怪减免80%伤害，绿怪减免50%伤害且不吃暴击
    if LoadInteger(YDHT, GetHandleId(ut), StringHash("color")) == 1 then
        set damage=damage * 0.2
    elseif LoadInteger(YDHT, GetHandleId(ut), StringHash("color")) == 2 then
        set damage=damage * 0.5
    endif
    // 圆桌理论 闪避+暴击+普通 = 100
    if rand <= 100 - hitRate then
        // 闪避
        call CreateTextTagUnitBJ("MISS", ut, 0., 11., 255., 0., 0., 30.)
    elseif rand <= 100 - hitRate + criticalRate and LoadInteger(YDHT, GetHandleId(ut), StringHash("color")) != 2 then
        // 暴击 绿怪不吃暴击
        set damage=damage * criticalTimes
        call UnitDamageTarget(u, ut, damage, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
        call CreateTextTagUnitBJ(I2S(R2I(damage)), ut, 0., 14., 100., 100., 0., 30.)
    else
        call UnitDamageTarget(u, ut, damage, true, false, ATTACK_TYPE_MAGIC, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
        call CreateTextTagUnitBJ(I2S(R2I(damage)), ut, 0., 11., 100., 100., 100., 30.)
    endif
    call SetTextTagVelocityBJ(bj_lastCreatedTextTag, 400., GetRandomReal(80., 100.))
    call YDWETimerDestroyTextTag(.65 , bj_lastCreatedTextTag)
    call RemoveLocation(loc)
    set loc=null
endfunction
function LifeChange takes unit u,integer mod,integer ch,integer id returns nothing
    local integer a
    local integer b
    local integer c
    local integer d
    local integer aid= id
    if mod == 1 then
        set ch=- ch
    elseif mod == 2 then
        set ch=ch - R2I(GetUnitState(u, UNIT_STATE_MAX_LIFE))
    endif
    if ch > $3B9AC9FF then
        set ch=$3B9AC9FF
    endif
    if ch < - 999999999 then
        set ch=- 999999999
    endif
    if ch < 0 then
        set a=2
        set ch=- ch
    else
        set a=12
    endif
    set b=0
    loop
        exitwhen b == 10
        set c=ch - ch / 10 * 10
        set d=0
        loop
            exitwhen d == c
            call UnitAddAbility(u, aid)
            call SetUnitAbilityLevel(u, aid, a)
            call UnitRemoveAbility(u, aid)
            set d=d + 1
        endloop
        set ch=ch / 10
        set a=a + 1
        set b=b + 1
    endloop
endfunction
function IsEnemyAndAlive takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(LoadUnitHandle(YDHT, RANGE_DAMAGE_HASH, 0))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function IsEnemyAndAliveForAttack takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function AttackerDamageRange takes nothing returns nothing
    local unit u= LoadUnitHandle(YDHT, RANGE_DAMAGE_HASH, 0)
    local unit ut= GetEnumUnit()
    local real damage= LoadReal(YDHT, RANGE_DAMAGE_HASH, 1)
    local string effects= LoadStr(YDHT, RANGE_DAMAGE_HASH, 2)
    local location loc= GetUnitLoc(ut)
    call dealDamage(u , ut , damage)
    call DestroyEffect(AddSpecialEffectLoc(effects, loc))
    call RemoveLocation(loc)
    set loc=null
    set u=null
    set ut=null
endfunction
function PassiveRangeDamage takes unit attacker,unit attackee,integer spell_id,real range,real w1,real w2,integer whichAttr,string effects,integer possibility,integer mana_cost returns nothing
    local group g= CreateGroup()
    local location loc= GetUnitLoc(attackee)
    local real dmg= 0
    local real coeff= 1
    local real baseDamage= 0
    local real attr= 0
    local real attack= GetUnitState(attacker, ConvertUnitState(0x15))
    // 主属性
    if whichAttr == 1 then
        set attr=GetHeroStr(attacker, true)
    elseif whichAttr == 2 then
        set attr=GetHeroAgi(attacker, true)
    elseif whichAttr == 3 then
        set attr=GetHeroInt(attacker, true)
    elseif whichAttr == 4 then
        set attr=GetHeroStr(attacker, true) + GetHeroAgi(attacker, true) + GetHeroInt(attacker, true)
    endif
    // 基础伤害
    set baseDamage=( attack + w1 * attr ) * w2
    set dmg=baseDamage * GetUnitAbilityLevel(attacker, spell_id) * GetUnitAbilityLevel(attacker, spell_id)
    if GetRandomInt(0, 100) <= possibility or ( GetRandomInt(0, 100) <= possibility * 2 and YDWEUnitHasItemOfTypeBJNull(attacker , 'I00L') ) and GetUnitAbilityLevel(attacker, spell_id) >= 1 and GetUnitState(attacker, UNIT_STATE_MANA) >= mana_cost then
        
        // 韦陀棍法
        if spell_id == 'A001' then
            if GetUnitAbilityLevel(attacker, spell_id) >= 5 then
                set coeff=coeff + 1
            endif
            if GetUnitAbilityLevel(attacker, 'A03N') >= 1 then
                set coeff=coeff * 3
            endif
            if udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(attacker))] == 1 then
                set dmg=dmg * 8
            endif
            // call BJDebugMsg("伤害：" + R2S(coeff * dmg))
        endif
        // 虾米神拳
        if spell_id == 'A045' then
            set dmg=dmg * GetUnitAbilityLevel(attacker, 'A045')
            if GetRandomInt(0, 100) <= 50 then
                call WanBuff(attacker , attackee , 16)
            endif
        endif
        // 五雷咒
        if spell_id == 'A048' then
            set dmg=dmg * mana_cost * mana_cost
        endif
        // 乾坤一掷
        if spell_id == 'A047' then
            if GetPlayerState(GetOwningPlayer(attacker), PLAYER_STATE_RESOURCE_GOLD) >= 50 then
                call SetPlayerState(GetOwningPlayer(attacker), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(GetOwningPlayer(attacker), PLAYER_STATE_RESOURCE_GOLD) - 50)
                call CreateTextTagUnitBJ("-50", attacker, 0., 11., 80.4, 49.8, 19.6, 30.)
                call SetTextTagVelocityBJ(bj_lastCreatedTextTag, 400., GetRandomReal(80., 100.))
                call YDWETimerDestroyTextTag(.65 , bj_lastCreatedTextTag)
            else
                call DestroyGroup(g)
                call RemoveLocation(loc)
                set loc=null
                set g=null
                return
            endif
        endif
        // 武当剑法
        if spell_id == 'A00K' and udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(attacker))] == 1 then
            set range=range + 450
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
    set loc=null
    set g=null
endfunction
function PassiveSingleDamage takes unit attacker,unit attackee,integer spell_id,real w1,real w2,integer whichAttr,string effects,integer possibility,integer mana_cost returns nothing
    local location loc= GetUnitLoc(attackee)
    local real baseDamage= 0
    local real attr= 0
    local real attack= GetUnitState(attacker, ConvertUnitState(0x15))
    local real damage= 0
    // 主属性
    if whichAttr == 1 then
        set attr=GetHeroStr(attacker, true)
    elseif whichAttr == 2 then
        set attr=GetHeroAgi(attacker, true)
    elseif whichAttr == 3 then
        set attr=GetHeroInt(attacker, true)
    elseif whichAttr == 4 then
        set attr=GetHeroStr(attacker, true) + GetHeroAgi(attacker, true) + GetHeroInt(attacker, true)
    endif
    // 基础伤害
    set baseDamage=( attack + w1 * attr ) * w2
    set damage=baseDamage * GetUnitAbilityLevel(attacker, spell_id) * GetUnitAbilityLevel(attacker, spell_id)
    if GetRandomInt(0, 100) <= possibility or ( GetRandomInt(0, 100) <= possibility * 2 and YDWEUnitHasItemOfTypeBJNull(attacker , 'I00L') ) and GetUnitAbilityLevel(attacker, spell_id) >= 1 and GetUnitState(attacker, UNIT_STATE_MANA) >= mana_cost then
        call dealDamage(attacker , attackee , damage)
        call DestroyEffect(AddSpecialEffectLoc(effects, loc))
        call SetUnitState(attacker, UNIT_STATE_MANA, GetUnitState(attacker, UNIT_STATE_MANA) - mana_cost)
    endif
    call RemoveLocation(loc)
    set loc=null
endfunction
function PassiveUseAbility takes unit attacker,unit attackee,integer spell_id,integer shadow_id,integer order_id,integer possibility,integer mana_cost returns nothing
    local location loc= GetUnitLoc(attacker)
    local location loc2= GetUnitLoc(attackee)
    local integer manacost= mana_cost
    if spell_id == 'A02C' or spell_id == 'A02D' or spell_id == 'A02E' and udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(attacker))] >= 1 then
        set manacost=manacost - 20
    endif
    if GetRandomInt(0, 100) <= possibility or ( GetRandomInt(0, 100) <= possibility * 2 and YDWEUnitHasItemOfTypeBJNull(attacker , 'I00L') ) and GetUnitAbilityLevel(attacker, spell_id) >= 1 and GetUnitState(attacker, UNIT_STATE_MANA) >= manacost then
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
    set loc=null
    set loc2=null
endfunction
function UnitHaveItem takes unit u,integer j returns boolean
    local integer i= 0
    if j != 0 then
        loop
            if GetItemTypeId(UnitItemInSlot(u, i)) == j then
                return true
            endif
            set i=i + 1
            exitwhen i >= 6
        endloop
    endif
    return false
endfunction
function FetchUnitItem takes unit u,integer j returns item
    local integer i= 0
    local item d4= null
    loop
        set d4=UnitItemInSlot(u, i)
        if GetItemTypeId(d4) == j then
            return d4
        endif
        set i=i + 1
        exitwhen i >= 6
    endloop
    return null
endfunction
// 装备随机属性数量
function getEquipRandomAttrCount takes integer strength returns integer
    // 每8点强度增加1个随机属性
    return ( strength - 1 ) / 8 + 1
endfunction
function generateRandomAttr takes item it returns nothing
    local integer handleId= GetHandleId(it)
    // 从词缀中随机选取count个
    local integer array affixIndex
    local integer i= 1
    local integer temp= 0
    local integer j= 0
    local integer rand= 0
    local integer count= 0
    local integer strength= LoadInteger(EQUIP_ATTR_HT, handleId, EQUIP_STRENGTH_KEY)
    local integer affixCount= 17
    if strength == 0 then
        set strength=LoadInteger(YDHT, GetItemTypeId(it), EQUIP_BASE_STRENGTH_KEY)
    endif
    if strength >= 20 then
        set affixCount=AFFIX_COUNT
    endif
    set count=(( (strength) - 1 ) / 8 + 1) // INLINED!!
    
    if count <= 0 then
        return
    endif
    loop
        exitwhen i > affixCount
        set affixIndex[i]=i
        set i=i + 1
    endloop
    set i=affixCount
    loop
        exitwhen i < 1
        set j=GetRandomInt(1, i - 1)
        set temp=affixIndex[i]
        set affixIndex[i]=affixIndex[j]
        set affixIndex[j]=temp
        set i=i - 1
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
function equipAddition takes unit u,integer attr,integer value returns nothing
    if attr == 1 then
        // 增益-疾速 加攻击速度
        call addAttackSpeed(u , value)
    elseif attr == 2 then
        // 增益-练气 加内力上限
        call YDWEGeneralBounsSystemUnitSetBonus(u , 1 , 0 , value)
    elseif attr == 3 then
        // 增益-冥思 加内力回复速度
        call SaveInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_MANA_RECOVERY_KEY, LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_MANA_RECOVERY_KEY) + value)
    elseif attr == 4 then
        // 增益-吼叫 加攻击力
        call YDWEGeneralBounsSystemUnitSetBonus(u , 3 , 0 , value)
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
function addExtraAttr takes unit u,item it returns nothing
    local integer attr= 0
    local integer value= 0
    // 额外属性效果
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY) != 0 then
        set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY)
        set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_VALUE_KEY)
        call equipAddition(u , attr , value)
    endif
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY) != 0 then
        set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY)
        set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_VALUE_KEY)
        call equipAddition(u , attr , value)
    endif
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY) != 0 then
        set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY)
        set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_VALUE_KEY)
        call equipAddition(u , attr , value)
    endif
endfunction
function SynItem takes unit u,integer itemid_before,integer itemid_after returns nothing
    local item it= null
    local item it2= null
    if UnitHaveItem(u , itemid_before) then
        set it=FetchUnitItem(u , itemid_before)
        call UnitRemoveItem(u, it)
        if UnitHaveItem(u , itemid_before) then
            call RemoveItem(FetchUnitItem(u , itemid_before))
            call RemoveItem(it)
            set it2=UnitAddItemById(u, itemid_after)
            call generateRandomAttr(it2)
            call addExtraAttr(u , it2)
        else
            call UnitAddItem(u, it)
        endif
    endif
    set it=null
    set it2=null
endfunction
// 获取单位身上指定级别的物品
function fetchUnitItemOfLevel takes unit u,integer level returns item
    local item it= null
    local integer i= 0
    loop
        exitwhen i == 6
        set it=UnitItemInSlot(u, i)
        if it != null then
            if LoadInteger(YDHT, GetItemTypeId(it), EQUIP_INT_LEVEL_KEY) == level then
                exitwhen true
            endif
        endif
        set i=i + 1
    endloop
    return it
endfunction
// 三个物品合成一个
function synItemThree takes unit u returns nothing
    local integer j= 1
    local item it= null
    local item it2= null
    local integer normalCount= 0
    local integer rareCount= 0
    local integer valuableCount= 0
    local integer ancientCount= 0
    local integer id= 0
    loop
        exitwhen j > 6
        set it=UnitItemInSlotBJ(u, j)
        set id=GetItemTypeId(it)
        if LoadInteger(YDHT, id, EQUIP_INT_LEVEL_KEY) == 1 then
            set normalCount=normalCount + 1
        elseif LoadInteger(YDHT, id, EQUIP_INT_LEVEL_KEY) == 2 then
            set rareCount=rareCount + 1
        elseif LoadInteger(YDHT, id, EQUIP_INT_LEVEL_KEY) == 3 then
            set valuableCount=valuableCount + 1
        elseif LoadInteger(YDHT, id, EQUIP_INT_LEVEL_KEY) == 4 then
            set ancientCount=ancientCount + 1
        endif
        set j=j + 1
    endloop
    if normalCount >= 3 then
        // 三个普通物品合成一个稀有物品
        call RemoveItem(fetchUnitItemOfLevel(u , 1))
        call RemoveItem(fetchUnitItemOfLevel(u , 1))
        call RemoveItem(fetchUnitItemOfLevel(u , 1))
        set it2=UnitAddItemById(u, rare_drops[GetRandomInt(1, MAX_RARE_DROP)])
        call generateRandomAttr(it2)
        call addExtraAttr(u , it2)
        set rareCount=rareCount + 1
    endif
    if rareCount >= 3 then
        // 三个稀有物品合成一个珍稀物品
        call RemoveItem(fetchUnitItemOfLevel(u , 2))
        call RemoveItem(fetchUnitItemOfLevel(u , 2))
        call RemoveItem(fetchUnitItemOfLevel(u , 2))
        set it2=UnitAddItemById(u, valuable_drops[GetRandomInt(1, MAX_VALUABLE_DROP)])
        call generateRandomAttr(it2)
        call addExtraAttr(u , it2)
        set valuableCount=valuableCount + 1
    endif
    if valuableCount >= 3 then
        // 三个珍稀物品合成一个远古物品
        call RemoveItem(fetchUnitItemOfLevel(u , 3))
        call RemoveItem(fetchUnitItemOfLevel(u , 3))
        call RemoveItem(fetchUnitItemOfLevel(u , 3))
        set it2=UnitAddItemById(u, ancient_drops[GetRandomInt(1, MAX_ANCIENT_DROP)])
        call generateRandomAttr(it2)
        call addExtraAttr(u , it2)
        set ancientCount=ancientCount + 1
    endif
    if ancientCount >= 3 then
        // 三个远古物品合成一个史诗物品
        call RemoveItem(fetchUnitItemOfLevel(u , 4))
        call RemoveItem(fetchUnitItemOfLevel(u , 4))
        call RemoveItem(fetchUnitItemOfLevel(u , 4))
        set it2=UnitAddItemById(u, epic_drops[GetRandomInt(1, MAX_EPIC_DROP)])
        call generateRandomAttr(it2)
        call addExtraAttr(u , it2)
    endif
    
    set it=null
    set it2=null
endfunction
// 获取随机品质的武魂石，概率和波数以及人品有关
function getRandomSoulStone takes integer i returns integer
    local integer id= 0
    local real rand= GetRandomReal(0, 100)
    // I02B为劣质品质，I02C为平凡品质，I02D为精致品质，I02E为完美品质
    // 10波之前，完美品质概率为0
    // 10-30波，完美品质概率为5%+波数*0.2%
    // 30波以后，完美品质概率为10%+波数*0.3%
    if wave <= 10 then
        if rand < RMinBJ(15, 10 + luck[i] * 0.025) then
            set id='I02D'
        elseif rand < RMinBJ(50, 40 + luck[i] * 0.05) then
            set id='I02C'
        else
            set id='I02B'
        endif
    elseif wave <= 30 then
        if rand < RMinBJ(15, 5 + luck[i] * 0.02) then
            set id='I02E'
        elseif rand < RMinBJ(30, 20 + luck[i] * 0.05) then
            set id='I02D'
        elseif rand < RMinBJ(65, 50 + luck[i] * 0.075) then
            set id='I02C'
        else
            set id='I02B'
        endif
    else
        if rand < RMinBJ(20, 10 + luck[i] * 0.03) then
            set id='I02E'
        elseif rand < RMinBJ(35, 20 + luck[i] * 0.06) then
            set id='I02D'
        elseif rand < RMinBJ(70, 50 + luck[i] * 0.09) then
            set id='I02C'
        else
            set id='I02B'
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
function addLumber takes player p,integer count returns nothing
    call AdjustPlayerStateBJ(count, p, PLAYER_STATE_RESOURCE_LUMBER)
endfunction
// 加金币
function addGold takes player p,integer count returns nothing
    call AdjustPlayerStateBJ(count, p, PLAYER_STATE_RESOURCE_GOLD)
endfunction
// 判断物品是否为武器
function isWeapon takes item it returns boolean
    local integer id= GetItemTypeId(it)
    local integer j= 1
    loop
        exitwhen j > MAX_NORMAL_DROP
        if id == normal_drops[j] then
            return true
        endif
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > MAX_RARE_DROP
        if id == rare_drops[j] then
            return true
        endif
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > MAX_VALUABLE_DROP
        if id == valuable_drops[j] then
            return true
        endif
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > MAX_ANCIENT_DROP
        if id == ancient_drops[j] then
            return true
        endif
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > MAX_EPIC_DROP
        if id == epic_drops[j] then
            return true
        endif
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > SHEN_QI_NUM
        if id == shenqi[j] then
            return true
        endif
        set j=j + 1
    endloop
    return false
endfunction
function tryUnitAddItem takes unit u,item it returns nothing
    // if UnitAddItem(u, it) then
    //     call addExtraAttr(u, it)
    // endif
    call UnitAddItem(u, it)
endfunction
function removeCombo takes nothing returns nothing
    local timer t= GetExpiredTimer()
    local unit u= LoadUnitHandle(YDHT, GetHandleId(t), 0)
    call UnitRemoveAbility(u, 'A095')
    call DestroyTimer(t)
    set t=null
    set u=null
endfunction
function combo takes unit u returns nothing
    local timer t
    local location loc
    if GetUnitAbilityLevel(u, 'A095') == 0 then
        set t=CreateTimer()
        set loc=GetUnitLoc(u)
        call UnitAddAbility(u, 'A095')
        call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
        call CreateTextTagLocBJ("连击", loc, 60., 12., 65., 55., 42., 0)
        call YDWETimerDestroyTextTag(3. , bj_lastCreatedTextTag)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag, 100., 90)
        call RemoveLocation(loc)
        call TimerStart(t, 2, false, function removeCombo)
    endif
    set t=null
    set loc=null
    
endfunction
function EMeiXinFa takes nothing returns nothing
    local unit u= GetEnumUnit()
    local location loc= GetUnitLoc(u)
    local location loc2= PolarProjectionBJ(loc, 500, GetUnitFacing(u))
    if GetUnitCurrentOrder(u) == 0 then
        if LoadReal(YDHT, GetHandleId(u), 61440) == 0 and LoadReal(YDHT, GetHandleId(u), 61441) == 0 then
            call IssuePointOrder(u, "attack", - 1800, 810)
        else
            call IssuePointOrder(u, "attack", LoadReal(YDHT, GetHandleId(u), 61440), LoadReal(YDHT, GetHandleId(u), 61441))
        endif
    endif
    if UnitHasBuffBJ(u, 'B004') then
        if GetWidgetLife(u) - GetUnitState(u, UNIT_STATE_MAX_LIFE) * .02 >= 1 then
            call SetWidgetLife(u, GetWidgetLife(u) - GetUnitState(u, UNIT_STATE_MAX_LIFE) * .02)
        else
            call SetWidgetLife(u, 1.)
        endif
    endif
    if UnitHasBuffBJ(u, 'BEsh') then
        if GetWidgetLife(u) - GetUnitState(u, UNIT_STATE_MAX_LIFE) * .001 >= 1 then
            call SetWidgetLife(u, GetWidgetLife(u) - GetUnitState(u, UNIT_STATE_MAX_LIFE) * .001)
        else
            call SetWidgetLife(u, 1.)
        endif
    endif
    if UnitHasBuffBJ(u, 'B013') then
        if GetWidgetLife(u) - GetUnitState(u, UNIT_STATE_MAX_LIFE) * .01 >= 1 then
            call SetWidgetLife(u, GetWidgetLife(u) - GetUnitState(u, UNIT_STATE_MAX_LIFE) * .01)
        else
            call SetWidgetLife(u, 1.)
        endif
    endif
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set u=null
    set loc=null
    set loc2=null
endfunction
function registerNextNodeChoice takes region whichNode,region choice0,region choice1,region choice2 returns nothing
    call SaveRegionHandle(YDHT, GetHandleId(whichNode), 1, choice0)
    if choice1 != null then
        call SaveRegionHandle(YDHT, GetHandleId(whichNode), 2, choice1)
    endif
    if choice2 != null then
        call SaveRegionHandle(YDHT, GetHandleId(whichNode), 3, choice2)
    endif
endfunction
function getRandomRegion takes region choice0,region choice1 returns region
    if choice1 == null or GetRandomInt(0, 100) <= 50 then
        return choice0
    endif
    return choice1
endfunction
function chooseNextNodeForRegion takes region currentNode,region previousNode returns region
    local region choice0= LoadRegionHandle(YDHT, GetHandleId(currentNode), 1)
    local region choice1= LoadRegionHandle(YDHT, GetHandleId(currentNode), 2)
    local region choice2= LoadRegionHandle(YDHT, GetHandleId(currentNode), 3)
    if previousNode == null then
        return getRandomRegion(choice0 , choice1)
    endif
    if GetHandleId(choice0) == GetHandleId(previousNode) then
        return getRandomRegion(choice1 , choice2)
    endif
    if GetHandleId(choice1) == GetHandleId(previousNode) then
        return getRandomRegion(choice0 , choice2)
    endif
    if choice2 != null and GetHandleId(choice2) == GetHandleId(previousNode) then
        return getRandomRegion(choice0 , choice1)
    endif
    return getRandomRegion(choice0 , choice1)
endfunction
function moveToNextNode takes unit whichUnit,region whichNode returns nothing
    local rect r= LoadRectHandle(YDHT, GetHandleId(whichNode), 0)
    local real x= GetRectCenterX(r)
    local real y= GetRectCenterY(r)
    call SaveReal(YDHT, GetHandleId(whichUnit), 61440, x)
    call SaveReal(YDHT, GetHandleId(whichUnit), 61441, y)
    call IssuePointOrderById(whichUnit, 851986, x, y)
    set r=null
endfunction
function isEnemy takes nothing returns boolean
    return IsUnitEnemy(GetTriggerUnit(), Player(0))
endfunction
function chooseNextNode takes nothing returns nothing
    local region currentNode= GetTriggeringRegion()
    local unit u= GetEnteringUnit()
    local region previousNode= LoadRegionHandle(YDHT, GetHandleId(u), NODE)
    local region nextNode= chooseNextNodeForRegion(currentNode , previousNode)
    call moveToNextNode(u , nextNode)
    call SaveRegionHandle(YDHT, GetHandleId(u), NODE, currentNode)
    set currentNode=null
    set u=null
    set previousNode=null
    set nextNode=null
endfunction
function registerNextChoices takes nothing returns nothing
    call registerNextNodeChoice(nodes[1] , nodes[2] , nodes[8] , null)
    call registerNextNodeChoice(nodes[2] , nodes[1] , nodes[3] , nodes[12])
    call registerNextNodeChoice(nodes[3] , nodes[2] , nodes[4] , null)
    call registerNextNodeChoice(nodes[4] , nodes[3] , nodes[5] , nodes[15])
    call registerNextNodeChoice(nodes[5] , nodes[4] , nodes[6] , null)
    call registerNextNodeChoice(nodes[6] , nodes[5] , nodes[7] , nodes[18])
    call registerNextNodeChoice(nodes[7] , nodes[6] , nodes[8] , null)
    call registerNextNodeChoice(nodes[8] , nodes[1] , nodes[7] , nodes[9])
    call registerNextNodeChoice(nodes[9] , nodes[8] , nodes[10] , nodes[20])
    call registerNextNodeChoice(nodes[10] , nodes[9] , nodes[11] , null)
    call registerNextNodeChoice(nodes[11] , nodes[10] , nodes[12] , null)
    call registerNextNodeChoice(nodes[12] , nodes[2] , nodes[11] , nodes[13])
    call registerNextNodeChoice(nodes[13] , nodes[12] , nodes[14] , null)
    call registerNextNodeChoice(nodes[14] , nodes[13] , nodes[15] , null)
    call registerNextNodeChoice(nodes[15] , nodes[4] , nodes[14] , nodes[16])
    call registerNextNodeChoice(nodes[16] , nodes[15] , nodes[17] , null)
    call registerNextNodeChoice(nodes[17] , nodes[16] , nodes[18] , null)
    call registerNextNodeChoice(nodes[18] , nodes[6] , nodes[17] , nodes[19])
    call registerNextNodeChoice(nodes[19] , nodes[18] , nodes[20] , null)
    call registerNextNodeChoice(nodes[20] , nodes[9] , nodes[19] , null)
    call registerNextNodeChoice(nodes[21] , nodes[20] , null , null)
    call registerNextNodeChoice(nodes[22] , nodes[11] , null , null)
    call registerNextNodeChoice(nodes[23] , nodes[14] , null , null)
    call registerNextNodeChoice(nodes[24] , nodes[17] , null , null)
endfunction
function initEnemyMove takes nothing returns nothing
    local trigger t= CreateTrigger()
    local integer i= 1
    set nodeRects[1]=gg_rct______________001
    set nodeRects[2]=gg_rct______________002
    set nodeRects[3]=gg_rct______________003
    set nodeRects[4]=gg_rct______________004
    set nodeRects[5]=gg_rct______________005
    set nodeRects[6]=gg_rct______________006
    set nodeRects[7]=gg_rct______________007
    set nodeRects[8]=gg_rct______________008
    set nodeRects[9]=gg_rct______________009
    set nodeRects[10]=gg_rct______________010
    set nodeRects[11]=gg_rct______________011
    set nodeRects[12]=gg_rct______________012
    set nodeRects[13]=gg_rct______________013
    set nodeRects[14]=gg_rct______________014
    set nodeRects[15]=gg_rct______________015
    set nodeRects[16]=gg_rct______________016
    set nodeRects[17]=gg_rct______________017
    set nodeRects[18]=gg_rct______________018
    set nodeRects[19]=gg_rct______________019
    set nodeRects[20]=gg_rct______________020
    set nodeRects[21]=gg_rct______________021
    set nodeRects[22]=gg_rct______________022
    set nodeRects[23]=gg_rct______________023
    set nodeRects[24]=gg_rct______________024
    loop
        exitwhen i > 24
        set nodes[i]=CreateRegion()
        call RegionAddRect(nodes[i], nodeRects[i])
        call SaveRectHandle(YDHT, GetHandleId(nodes[i]), 0, nodeRects[i])
        set i=i + 1
    endloop
    call registerNextChoices()
    set i=1
    loop
        exitwhen i > 24
        call TriggerRegisterEnterRegionSimple(t, nodes[i])
        set i=i + 1
    endloop
    call TriggerAddCondition(t, Condition(function isEnemy))
    call TriggerAddAction(t, function chooseNextNode)
endfunction
function checkPurchase takes nothing returns nothing
    local integer i= 1
    loop
        exitwhen i > 5
        if DzAPI_Map_HasMallItem(Player(i - 1), PROPERTY_GOLD) or udg_isTest[i] then
            set middle_gold_flag[i]=1
            call SetPlayerTechResearched(Player(i - 1), 'R007', 1)
        endif
        if DzAPI_Map_HasMallItem(Player(i - 1), PROPERTY_WISDOM_BALL) or udg_isTest[i] then
            set wisdom_ball_flag[i]=1
            call SetPlayerTechResearched(Player(i - 1), 'R008', 1)
        endif
        if DzAPI_Map_HasMallItem(Player(i - 1), PROPERTY_LUMBER) or udg_isTest[i] then
            set middle_lumber_flag[i]=1
            call SetPlayerTechResearched(Player(i - 1), 'R009', 1)
        endif
        if DzAPI_Map_GetMapLevel(Player(i - 1)) >= 3 or udg_isTest[i] then
            set five_star_flag[i]=1
            call SetPlayerTechResearched(Player(i - 1), 'R005', 1)
        endif
        if DzAPI_Map_HasMallItem(Player(i - 1), PROPERTY_EUROPE) or udg_isTest[i] then
            set europe_flag[i]=1
        endif
        // 收藏游戏
        if (RequestExtraBooleanData(53, (Player(i - 1) ), null, null, false, ( 16), 0, 0)) or udg_isTest[i] then // INLINED!!
            call SetPlayerTechResearched(Player(i - 1), 'R006', 1)
        endif
        set i=i + 1
    endloop
endfunction
function mallInit takes nothing returns nothing
    local timer t= CreateTimer()
    local integer i= 1
    loop
        exitwhen i > 5
        set middle_gold_flag[i]=0
        set middle_lumber_flag[i]=0
        set five_star_flag[i]=0
        set wisdom_ball_flag[i]=0
        set europe_flag[i]=0
        set i=i + 1
    endloop
    call TimerStart(t, 0.1, false, function checkPurchase)
    set t=null
endfunction
// 装备系统
function equipKillingEffectByAttr takes unit u,integer attr,integer value returns nothing
    if attr == 12 then
        // 击杀-瞄准 击杀敌人时，加命中
        call SaveInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_HIT_KEY, LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_HIT_KEY) + value)
    elseif attr == 13 then
        // 击杀-蓄力 击杀敌人时，加武学伤害
        call SaveReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_DAMAGE_KEY, LoadReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_DAMAGE_KEY) + value * 0.001)
    elseif attr == 14 then
        // 击杀-狂暴 击杀敌人时，加暴击倍数
        call SaveReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_CRITICAL_ADDITION_KEY, LoadReal(TOWER_ATTR_HT, GetHandleId(u), TOWER_CRITICAL_ADDITION_KEY) + value * 0.01)
    elseif attr == 15 then
        // 击杀-赏金 击杀敌人时，加金钱
        call AdjustPlayerStateBJ(value, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
    elseif attr == 16 then
        // 击杀-回复 击杀敌人时，回复内力
        call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) + value * 0.01 * GetUnitState(u, UNIT_STATE_MAX_MANA))
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl", u, "origin"))
    elseif attr == 17 then
        // 击杀-封穴
        call SaveBoolean(TOWER_ATTR_HT, GetHandleId(u), TOWER_SEAL_KEY, true)
    endif
endfunction
function equipKillingEffect takes unit u,item it returns nothing
    local integer attr= 0
    local integer value= 0
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY) != 0 then
        set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY)
        set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_VALUE_KEY)
        call equipKillingEffectByAttr(u , attr , value)
    endif
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY) != 0 then
        set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY)
        set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_VALUE_KEY)
        call equipKillingEffectByAttr(u , attr , value)
    endif
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY) != 0 then
        set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY)
        set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_VALUE_KEY)
        call equipKillingEffectByAttr(u , attr , value)
    endif
endfunction
function equipWaveStartEffectByAttr takes unit u,integer attr,integer value returns nothing
    local item it= null
    local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
    local location loc= null
    if attr == 18 then
        // 激励-赏金 金钱+1000
        call AdjustPlayerStateBJ(1000, GetOwningPlayer(u), PLAYER_STATE_RESOURCE_GOLD)
    elseif attr == 19 then
        // 激励-回复 塔内力回满
        call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MAX_MANA))
    elseif attr == 20 then
        // 激励-成长 获得1000点经验（仅英雄有效）
        if IsUnitType(u, UNIT_TYPE_HERO) then
            call AddHeroXP(u, 1000, false)
        endif
    elseif attr == 21 then
        // 激励-丰收 20%概率获得一件随机品质的武器
        if GetRandomInt(0, 10) <= 2 then
            set loc=GetRandomLocInRect(udg_drop_rect[i])
            set it=CreateItemLoc(getRandomDrop(), loc)
            call generateRandomAttr(it)
            call RemoveLocation(loc)
        endif
    elseif attr == 22 then
        // 激励-武魂 20%概率额外获得1个随机品质的武魂石
        if GetRandomInt(0, 10) <= 2 then
            set loc=GetRandomLocInRect(udg_drop_rect[i])
            call CreateItemLoc(getRandomSoulStone(1 + GetPlayerId(GetOwningPlayer(u))), loc)
            call RemoveLocation(loc)
        endif
    endif
    set it=null
    set loc=null
endfunction
function equipWaveStartEffect takes unit u,item it returns nothing
    local integer attr= 0
    local integer value= 0
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY) != 0 then
        set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY)
        set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_VALUE_KEY)
        call equipWaveStartEffectByAttr(u , attr , value)
    endif
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY) != 0 then
        set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY)
        set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_VALUE_KEY)
        call equipWaveStartEffectByAttr(u , attr , value)
    endif
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY) != 0 then
        set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY)
        set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_VALUE_KEY)
        call equipWaveStartEffectByAttr(u , attr , value)
    endif
endfunction
function initEquip takes nothing returns nothing
    set affixTitle[1]="增益-疾速"
    set affixDesc[1]="攻击速度+"
    set affixMin[1]=5
    set affixMax[1]=30
    set affixTitle[2]="增益-练气"
    set affixDesc[2]="内力上限+"
    set affixMin[2]=20
    set affixMax[2]=200
    set affixTitle[3]="增益-冥思"
    set affixDesc[3]="内力回复速度+"
    set affixMin[3]=1
    set affixMax[3]=10
    set affixTitle[4]="增益-吼叫"
    set affixDesc[4]="攻击力+"
    set affixMin[4]=1000
    set affixMax[4]=3000
    set affixTitle[5]="增益-瞄准"
    set affixDesc[5]="命中+"
    set affixMin[5]=100
    set affixMax[5]=500
    set affixTitle[6]="增益-蓄力"
    set affixDesc[6]="武学伤害+"
    set affixMin[6]=5
    set affixMax[6]=100
    set affixTitle[7]="增益-狂暴"
    set affixDesc[7]="武学暴击率+"
    set affixMin[7]=2
    set affixMax[7]=20
    set affixTitle[8]="增益-连击"
    set affixDesc[8]="连击概率+"
    set affixMin[8]=2
    set affixMax[8]=20
    set affixTitle[9]="增益-破甲"
    set affixDesc[9]="破防概率+"
    set affixMin[9]=2
    set affixMax[9]=20
    set affixTitle[10]="增益-冷静"
    set affixDesc[10]="冷却缩减+"
    set affixMin[10]=5
    set affixMax[10]=50
    set affixTitle[11]="增益-连贯"
    set affixDesc[11]="重置CD概率+"
    set affixMin[11]=2
    set affixMax[11]=20
    set affixTitle[12]="击杀-瞄准"
    set affixDesc[12]="击杀敌人时，命中+" // 10-50
set affixMin[12]=10
    set affixMax[12]=50
    set affixTitle[13]="击杀-蓄力"
    set affixDesc[13]="击杀敌人时，武学伤害+" // 0.1-1
set affixMin[13]=1
    set affixMax[13]=10
    set affixTitle[14]="击杀-狂暴"
    set affixDesc[14]="击杀敌人时，武学暴击倍数+" // 1-5%
set affixMin[14]=1
    set affixMax[14]=5
    set affixTitle[15]="击杀-赏金"
    set affixDesc[15]="击杀敌人时，额外获得金钱+" // 10-50
set affixMin[15]=10
    set affixMax[15]=50
    set affixTitle[16]="击杀-回复"
    set affixDesc[16]="击杀敌人时，回复内力+" // 1-20
set affixMin[16]=1
    set affixMax[16]=20
    set affixTitle[17]="击杀-封穴"
    set affixDesc[17]="击杀敌人时，下次伤害附带封穴效果"
    set affixMin[17]=0
    set affixMax[17]=0
    set affixTitle[18]="激励-赏金"
    set affixDesc[18]="每波开始时，额外获得金钱+1000"
    set affixMin[18]=0
    set affixMax[18]=0
    set affixTitle[19]="激励-回复"
    set affixDesc[19]="每波开始时，回满内力"
    set affixMin[19]=0
    set affixMax[19]=0
    set affixTitle[20]="激励-成长"
    set affixDesc[20]="每波开始时，额外获得1000点经验（仅对英雄有效）"
    set affixMin[20]=0
    set affixMax[20]=0
    set affixTitle[21]="激励-丰收"
    set affixDesc[21]="每波开始时，20%概率额外获得1件随机品质的武器"
    set affixMin[21]=0
    set affixMax[21]=0
    set affixTitle[22]="激励-武魂"
    set affixDesc[22]="每波开始时，20%概率额外获得1个随机品质的武魂石"
    set affixMin[22]=0
    set affixMax[22]=0
endfunction
function spawnBoss takes integer i,integer boss_index returns nothing
    local location array loc
    local location array target
    set loc[0]=GetRectCenter(gg_rct_spawn1)
    set loc[1]=GetRectCenter(gg_rct_spawn2)
    set loc[2]=GetRectCenter(gg_rct_spawn3)
    set loc[3]=GetRectCenter(gg_rct_spawn4)
    set target[0]=GetRectCenter(nodeRects[22])
    set target[1]=GetRectCenter(nodeRects[23])
    set target[2]=GetRectCenter(nodeRects[24])
    set target[3]=GetRectCenter(nodeRects[21])
    call CreateNUnitsAtLoc(1, boss[boss_index], Player(5), loc[i - 1], bj_UNIT_FACING)
    call GroupAddUnit(attackerGroup, bj_lastCreatedUnit)
    call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851986, target[i - 1])
    call RemoveLocation(target[i - 1])
    call RemoveLocation(loc[i - 1])
    set target[i - 1]=null
    set loc[i - 1]=null
endfunction
function ServerSavePointsEveryTenWave takes nothing returns nothing
    local integer i= 1
    local integer point= 5
    local string point_times= DzAPI_Map_GetMapConfig("point_time")
    if S2I(point_times) >= 1 then
        set point=point * S2I(point_times)
    endif
    loop
        exitwhen i > 4
        set udg_zdl[i]=udg_zdl[i] + point
        set udg_point[i]=udg_point[i] + point
        if not saveFlag[i] then
            set udg_success[i]=udg_success[i] + 1
            set saveFlag[i]=true
        endif
        set udg_tech[i]=udg_tech[i] + 1
        if GetPlayerController(Player(i - 1)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(i - 1)) == PLAYER_SLOT_STATE_PLAYING then
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFF99CC00获得战斗力和积分：" + I2S(point))
            call DzAPI_Map_StoreInteger(Player(i - 1) , "zdl" , udg_zdl[i])
            call DzAPI_Map_StoreInteger(Player(i - 1) , "point" , udg_point[i])
            call DzAPI_Map_StoreInteger(Player(i - 1) , "success" , udg_success[i])
            call DzAPI_Map_StoreInteger(Player(i - 1) , "tech" , udg_tech[i])
        endif
        if udg_tech[i] > udg_success[i] * 5 and udg_success[i] >= 10 then
            set udg_tech_evaluate[i]="A+"
        elseif udg_tech[i] > udg_success[i] * 4 and udg_success[i] >= 10 then
            set udg_tech_evaluate[i]="A"
        elseif udg_tech[i] > udg_success[i] * 3 and udg_success[i] >= 10 then
            set udg_tech_evaluate[i]="B"
        elseif udg_tech[i] > udg_success[i] * 2 and udg_success[i] >= 10 then
            set udg_tech_evaluate[i]="C"
        elseif udg_tech[i] > udg_success[i] then
            set udg_tech_evaluate[i]="D"
        else
            set udg_tech_evaluate[i]="D-"
        endif
        if GetPlayerServerValueSuccess(Player(i - 1)) then
            call DzAPI_Map_Stat_SetStat(Player(i - 1), "zdl", I2S(udg_zdl[i]))
            call DzAPI_Map_Stat_SetStat(Player(i - 1), "point", I2S(udg_point[i]))
            call DzAPI_Map_Stat_SetStat(Player(i - 1), "tech", udg_tech_evaluate[i])
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFFFE890D" + GetPlayerName(Player(i - 1)) + "|CFF99CC00数据保存成功")
        else
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFFFE890D" + GetPlayerName(Player(i - 1)) + "|CFFFF0303数据保存失败")
        endif
        set i=i + 1
    endloop
endfunction
function initMobsAndBosses takes nothing returns nothing
    set mob[1]='h005'
    set mob[2]='u000'
    set mob[3]='h006'
    set mob[4]='e002'
    set mob[5]='o004'
    set mob[6]='u001'
    set mob[7]='n00H'
    set mob[8]='h007'
    set mob[9]='z000'
    set mob[10]='z001'
    set mob[11]='u002'
    set mob[12]='o005'
    set mob[13]='n02T'
    set mob[14]='e003'
    set mob[15]='n00J'
    set mob[16]='u003'
    set mob[17]='e004'
    set mob[18]='e005'
    set mob[19]='u004'
    set mob[20]='n00K'
    set mob[21]='e006'
    set mob[22]='u005'
    set mob[23]='h008'
    set mob[24]='h009'
    set mob[25]='n00L'
    set mob[26]='n00M'
    set mob[27]='n00N'
    set mob[28]='n00O'
    set mob[29]='n00P'
    set mob[30]='n00Q'
    set mob[31]='u006'
    set mob[32]='o008'
    set mob[33]='h00A'
    set mob[34]='e007'
    set mob[35]='n00S'
    set mob[36]='u007'
    set mob[37]='o009'
    set mob[38]='n00T'
    set mob[39]='n00U'
    set mob[40]='n00V'
    set mob[41]='n00W'
    set mob[42]='u009'
    set mob[43]='e008'
    set mob[44]='u00A'
    set mob[45]='n00X'
    set mob[46]='n02U'
    set mob[47]='n02V'
    set mob[48]='n02W'
    set mob[49]='n02X'
    set mob[50]='n02Y'
    set mob[51]='n02Z'
    set mob[52]='n030'
    set mob[53]='n031'
    set mob[54]='n032'
    set mob[55]='n033'
    set boss[1]='N00I'
    set boss[2]='O007'
    set boss[3]='N00R'
    set boss[4]='U008'
    set boss[5]='U00P'
    set boss[6]='U00B'
    set survive_mob[1]='h00M'
    set survive_mob[2]='h00L'
    set survive_mob[3]='h00K'
    set survive_mob[4]='h00N'
    set survive_boss[1]='N034'
endfunction
function doSpawnFinalBoss takes nothing returns nothing
    local location array loc
    local location array target
    local integer i= 0
    set loc[0]=GetRectCenter(gg_rct_spawn1)
    set loc[1]=GetRectCenter(gg_rct_spawn2)
    set loc[2]=GetRectCenter(gg_rct_spawn3)
    set loc[3]=GetRectCenter(gg_rct_spawn4)
    set target[0]=GetRectCenter(nodeRects[22])
    set target[1]=GetRectCenter(nodeRects[23])
    set target[2]=GetRectCenter(nodeRects[24])
    set target[3]=GetRectCenter(nodeRects[21])
    loop
        exitwhen i > 3
        if GetPlayerController(Player(i)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING and gameMode == 0 then
            call CreateNUnitsAtLoc(1, 'U00B', Player(5), loc[i], bj_UNIT_FACING)
            call GroupAddUnit(attackerGroup, bj_lastCreatedUnit)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851986, target[i])
            call RemoveLocation(target[i])
            call RemoveLocation(loc[i])
            set target[i]=null
            set loc[i]=null
        endif
        set i=i + 1
    endloop
endfunction
function recoverManaAndEquipEffect takes nothing returns nothing
    local unit u= GetEnumUnit()
    local item it= null
    local integer j= 1
    call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MAX_MANA) * 0.3 + GetUnitState(u, UNIT_STATE_MANA))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl", u, "origin"))
    loop
        exitwhen j > 6
        set it=UnitItemInSlotBJ(u, j)
        if it != null then
            call equipWaveStartEffect(u , it)
        endif
        set j=j + 1
    endloop
    set it=null
    set u=null
endfunction
function mutatedAttacker takes unit u returns nothing
 local integer i= GetRandomInt(1, 100)
	if udg_difficulty >= 6 then
		if i <= 33 then
			call SetUnitVertexColor(u, 225, 0, 0, 255)
			call SaveInteger(YDHT, GetHandleId(u), StringHash("color"), 1)
		elseif i <= 66 then
			call SetUnitVertexColor(u, 0, 225, 0, 255)
			call SaveInteger(YDHT, GetHandleId(u), StringHash("color"), 2)
		else
			call SetUnitVertexColor(u, 0, 0, 225, 255)
			call SaveInteger(YDHT, GetHandleId(u), StringHash("color"), 3)
		endif
        call SetUnitScale(u, 1.5, 1.5, 1.5)
	endif
endfunction
function getGoldByLevel takes integer i returns integer
    // 100 200 300 400 500 700 900 1100 1300 1500 1900 2300 2700 3100 3500 4300 5100 5900 6700 7500
    local integer level= goldLevel[i]
    local integer gold= 0
    if level <= 5 then
        set gold=100 * level
    elseif level <= 10 then
        set gold=500 + 200 * ( level - 5 )
    elseif level <= 15 then
        set gold=1500 + 400 * ( level - 10 )
    elseif level <= 20 then
        set gold=3500 + 800 * ( level - 15 )
    else
        set gold=7500 + 800 * ( level - 20 )
    endif
    return gold
endfunction
function getLumberByLevel takes integer i returns integer
    // 10 15 20 25 30 40 50 60 70 80 100 120 140 160 180 220 260 300 340 380
    local integer level= lumberLevel[i]
    local integer lumber= 0
    if level <= 5 then
        set lumber=5 * level + 5
    elseif level <= 10 then
        set lumber=30 + 10 * ( level - 5 )
    elseif level <= 15 then
        set lumber=80 + 20 * ( level - 10 )
    elseif level <= 20 then
        set lumber=180 + 40 * ( level - 15 )
    else
        set lumber=380 + 40 * ( level - 20 )
    endif
    return lumber
endfunction
function spawn takes nothing returns nothing
    local integer i= 0
    local integer j= 0
    local integer rand= 1
    local real randReal= 1
    local location array loc
    local location array target
    local timer t= CreateTimer()
    local integer life= 0
    local integer jmax= 7
    local integer count= CountUnitsInGroup(attackerGroup)
    local group g= null
    local integer gold= 0
    local integer luckAddition= 2
    local real goldCoeff= 1
    local integer lumber= 0
    local integer lumberAddition= 0
    local integer extraGold= 0
    local integer extraLumber= 0
    set wave=wave + 1
    set loc[0]=GetRectCenter(gg_rct_spawn1)
    set loc[1]=GetRectCenter(gg_rct_spawn2)
    set loc[2]=GetRectCenter(gg_rct_spawn3)
    set loc[3]=GetRectCenter(gg_rct_spawn4)
    set target[0]=GetRectCenter(nodeRects[22])
    set target[1]=GetRectCenter(nodeRects[23])
    set target[2]=GetRectCenter(nodeRects[24])
    set target[3]=GetRectCenter(nodeRects[21])
    if ModuloInteger(wave, 9) == 0 then
        call AddPlayerTechResearched(Player(5), 'R00B', 1)
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000【系统】|r挑战怪难度提升")
    endif
    if isFailing and udg_ShengYuGuaiShu <= count then
        call CustomDefeatBJ(Player(0), "胜败乃兵家常事，大侠请重新来过！")
        call CustomDefeatBJ(Player(1), "胜败乃兵家常事，大侠请重新来过！")
        call CustomDefeatBJ(Player(2), "胜败乃兵家常事，大侠请重新来过！")
        call CustomDefeatBJ(Player(3), "胜败乃兵家常事，大侠请重新来过！")
        call DisableTrigger(GetTriggeringTrigger())
    endif
    if gameMode == 1 then
        set jmax=100
    endif
    if gameMode == 1 and wave > 30 and ModuloInteger(wave, 10) == 1 then
        call ServerSavePointsEveryTenWave()
    endif
    loop
        exitwhen i >= 4
        set randReal=1
        if wave <= 60 then
            if mapLevel[i + 1] >= 8 then
                set luckAddition=luckAddition + 1
            endif
            if mapLevel[i + 1] >= 12 then
                set luckAddition=luckAddition + 1
            endif
            // 通关N6，额外加2点人品
            if winDifficulty[i + 1] >= 6 then
                set luckAddition=luckAddition + 2
            endif
            set luck[i + 1]=luck[i + 1] + luckAddition
            if wave <= 20 then
                set gold=150 * wave
            else
                set gold=3000 + GetRandomInt(1, wave * 150 - 3000)
            endif
            if winDifficulty[i + 1] >= 3 then
                set goldCoeff=goldCoeff + 0.1
            endif
            set gold=R2I(goldCoeff * gold)
            call DisplayTextToPlayer(Player(i), 0, 0, "|cff00ff00[系统]|r第" + I2S(wave) + "波开始，奖励黄金" + I2S(gold) + "，人品+" + I2S(luckAddition) + "，所有塔恢复30%内力")
            set g=CreateGroup()
            call GroupEnumUnitsOfPlayer(g, Player(i), null)
            call ForGroup(g, function recoverManaAndEquipEffect)
            call DestroyGroup(g)
            if goldHit[i + 1] == 1 then
                set randReal=GetRandomReal(2, 4)
                set goldHit[i + 1]=0
                call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[系统]|r|cff00ff00玩家" + GetPlayerName(Player(i)) + "的智慧球发动了金币暴击，获得" + R2S(randReal) + "倍的金币奖励|R")
            endif
            call AdjustPlayerStateBJ(R2I(gold * randReal), Player(i), PLAYER_STATE_RESOURCE_GOLD)
            set extraGold=getGoldByLevel(i + 1)
            if extraGold > 0 then
                call AdjustPlayerStateBJ(extraGold, Player(i), PLAYER_STATE_RESOURCE_GOLD)
                call DisplayTextToPlayer(Player(i), 0, 0, "|cff00ff00[系统]|r由于升级了科技，额外获得黄金" + I2S(extraGold))
            endif
            set extraLumber=getLumberByLevel(i + 1)
            if extraLumber > 0 then
                call AdjustPlayerStateBJ(extraLumber, Player(i), PLAYER_STATE_RESOURCE_LUMBER)
                call DisplayTextToPlayer(Player(i), 0, 0, "|cff00ff00[系统]|r由于升级了科技，额外获得木材" + I2S(extraLumber))
            endif
        endif
        set j=1
        loop
            exitwhen j > jmax
            if wave == 9 * j + 1 and GetPlayerController(Player(i)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING then
                if gameMode == 0 then
                    call CreateNUnitsAtLoc(1, boss[j], Player(5), loc[i], bj_UNIT_FACING)
                elseif gameMode == 1 then
                    call CreateNUnitsAtLoc(1, survive_boss[1], Player(5), loc[i], bj_UNIT_FACING)
                    set life=30 * R2I(7.6591 * wave * wave * wave - 108.55 * wave * wave + 798.28 * wave - 518.31)
                    call LifeChange(bj_lastCreatedUnit , 2 , life , 'A044')
                    call h__SetUnitMoveSpeed(bj_lastCreatedUnit , RMinBJ(300 + 5 * wave, 522))
                    call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit , 2 , 2 , 10 + wave)
                endif
                // 记录是谁刷的怪
                call SaveInteger(YDHT, GetHandleId(bj_lastCreatedUnit), StringHash("owner"), i + 1)
                // 难六以上，有概率出现变异怪
                if udg_difficulty > 5 and GetRandomInt(1, 50) <= udg_difficulty then
                    call mutatedAttacker(bj_lastCreatedUnit)
                endif
                call GroupAddUnit(attackerGroup, bj_lastCreatedUnit)
                call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851986, target[i])
                call RemoveLocation(target[i])
                call RemoveLocation(loc[i])
                if j != 6 or gameMode == 1 then
                    call TimerStart(bossTimer, ( WAVE_TIME + WAVE_INTERVAL ) * BOSS_WAVE_INTERVAL, false, null)
                    call TimerDialogSetTitle(bossTimerDialog, "第" + I2S(wave / 9 + 1) + "个BOSS剩余：")
                    call TimerDialogDisplay(bossTimerDialog, true)
                else
                    call EnableTrigger(gg_trg_Win)
                endif
                if wave <= 60 then
                    set rand=1
                    if lumberHit[i + 1] == 1 then
                        set rand=GetRandomInt(2, 4)
                        set lumberHit[i + 1]=0
                        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i)) + "的智慧球发动了珍稀币暴击，获得" + I2S(rand) + "倍的珍稀币奖励|R")
                    endif
                    if j == 6 then
                        call DisplayTextToPlayer(Player(i), 0, 0, "魔教教主前来进攻，存活并击败教主即可获得胜利！")
                        set finalBossAttack=true
                    else
                        set lumber=20
                        if winDifficulty[i + 1] >= 4 then
                            set lumber=lumber + 10
                        endif
                        call DisplayTextToPlayer(Player(i), 0, 0, "魔教第" + I2S(j) + "个BOSS前来进攻，奖励珍稀币" + I2S(lumber) + "个")
                        call AdjustPlayerStateBJ(( lumber ) * rand, Player(i), PLAYER_STATE_RESOURCE_LUMBER)
                    endif
                endif
                set target[i]=null
                set loc[i]=null
            endif
            set j=j + 1
        endloop
        set i=i + 1
    endloop
    if wave < 55 or gameMode == 1 then
        call EnableTrigger(spawnTrigger)
        call TimerStart(mobTimer, WAVE_TIME + WAVE_INTERVAL, false, null)
        call TimerDialogSetTitle(mobTimerDialog, "第" + I2S(wave + 1) + "波进攻：")
    endif
    call YDWEPolledWaitNull(WAVE_TIME)
    call DisableTrigger(spawnTrigger)
    set g=null
endfunction
function doSpawn takes nothing returns nothing
    local location array loc
    local location array target
    local integer i= 0
    local integer life= 0
    set loc[0]=GetRectCenter(gg_rct_spawn1)
    set loc[1]=GetRectCenter(gg_rct_spawn2)
    set loc[2]=GetRectCenter(gg_rct_spawn3)
    set loc[3]=GetRectCenter(gg_rct_spawn4)
    set target[0]=GetRectCenter(nodeRects[22])
    set target[1]=GetRectCenter(nodeRects[23])
    set target[2]=GetRectCenter(nodeRects[24])
    set target[3]=GetRectCenter(nodeRects[21])
    set i=0
    loop
        exitwhen i > 3
        if GetPlayerController(Player(i)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING then
            if gameMode == 0 then
                call CreateNUnitsAtLoc(1, mob[wave], Player(5), loc[i], bj_UNIT_FACING)
            elseif gameMode == 1 then
                call CreateNUnitsAtLoc(1, survive_mob[ModuloInteger(wave - 1, 4) + 1], Player(5), loc[i], bj_UNIT_FACING)
                set life=R2I(7.6591 * wave * wave * wave - 108.55 * wave * wave + 798.28 * wave - 518.31)
                call LifeChange(bj_lastCreatedUnit , 2 , life , 'A044')
                call h__SetUnitMoveSpeed(bj_lastCreatedUnit , RMinBJ(300 + 5 * wave, 522))
                call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit , 2 , 2 , 10 + wave)
            endif
            // 记录是谁刷的怪
            call SaveInteger(YDHT, GetHandleId(bj_lastCreatedUnit), StringHash("owner"), i + 1)
            // 难六以上，有概率出现变异怪
            if udg_difficulty > 5 and GetRandomInt(1, 50) <= udg_difficulty then
                call mutatedAttacker(bj_lastCreatedUnit)
            endif
            call GroupAddUnit(attackerGroup, bj_lastCreatedUnit)
            call SaveReal(YDHT, GetHandleId(bj_lastCreatedUnit), BORN_LOC_X, GetUnitX(bj_lastCreatedUnit))
            call SaveReal(YDHT, GetHandleId(bj_lastCreatedUnit), BORN_LOC_Y, GetUnitY(bj_lastCreatedUnit))
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851986, target[i])
            call RemoveLocation(target[i])
            call RemoveLocation(loc[i])
            set target[i]=null
            set loc[i]=null
        endif
        set i=i + 1
    endloop
endfunction
function initSpawn takes nothing returns nothing
    local trigger t= CreateTrigger()
    call initMobsAndBosses()
    set attackerGroup=CreateGroup()
    set mobTimer=CreateTimer()
    set mobTimerDialog=CreateTimerDialogBJ(mobTimer, "第1波进攻：")
    call TimerStart(mobTimer, FIRST_WAVE_TIME, false, null)
    call TimerDialogDisplay(mobTimerDialog, true)
    
    // 刷BOSS 每9波一个boss
    set bossTimer=CreateTimer()
    set bossTimerDialog=CreateTimerDialogBJ(bossTimer, "第1个BOSS剩余：")
    call TimerStart(bossTimer, FIRST_WAVE_TIME + ( WAVE_TIME + WAVE_INTERVAL ) * BOSS_WAVE_INTERVAL, false, null)
    call TimerDialogDisplay(bossTimerDialog, true)
    call TriggerRegisterTimerExpireEvent(t, mobTimer)
    call TriggerAddAction(t, function spawn)
    // 每隔指定时间刷一次怪
    set spawnTrigger=CreateTrigger()
    call DisableTrigger(spawnTrigger)
    call TriggerRegisterTimerEventPeriodic(spawnTrigger, SPAWN_FREQUENCY)
    call TriggerAddAction(spawnTrigger, function doSpawn)
    set t=null
endfunction
// 兑换商店
function exchangeItem takes integer i,integer id returns nothing
    if id == exchangeItemId[1] then
        set exchangeHit[i]=exchangeHit[i] + 20
    endif
    if id == exchangeItemId[2] then
        set exchangeCriticalRate[i]=exchangeCriticalRate[i] + 0.5
    endif
    if id == exchangeItemId[3] then
        set exchangeCriticalDamage[i]=exchangeCriticalDamage[i] + 0.02
    endif
    if id == exchangeItemId[4] then
        set exchangeStr[i]=exchangeStr[i] + 5
    endif
    if id == exchangeItemId[5] then
        set exchangeAgi[i]=exchangeAgi[i] + 5
    endif
    if id == exchangeItemId[6] then
        set exchangeInt[i]=exchangeInt[i] + 5
    endif
    if id == exchangeItemId[7] then
        set exchangeManaRecovery[i]=exchangeManaRecovery[i] + 0.2
    endif
    if id == exchangeItemId[8] then
        set exchangeDamage[i]=exchangeDamage[i] + 0.005
    endif
    if id == exchangeItemId[9] then
        set exchangeCooldownReduction[i]=exchangeCooldownReduction[i] + 2
    endif
    if id == exchangeItemId[10] then
        set exchangeKillGold[i]=exchangeKillGold[i] + 1
    endif
    if id == exchangeItemId[11] then
        set exchangeHit[i]=exchangeHit[i] + 50
    endif
    if id == exchangeItemId[12] then
        set exchangeCriticalRate[i]=exchangeCriticalRate[i] + 1
    endif
    if id == exchangeItemId[13] then
        set exchangeCriticalDamage[i]=exchangeCriticalDamage[i] + 0.05
    endif
    if id == exchangeItemId[14] then
        set exchangeStr[i]=exchangeStr[i] + 10
    endif
    if id == exchangeItemId[15] then
        set exchangeAgi[i]=exchangeAgi[i] + 10
    endif
    if id == exchangeItemId[16] then
        set exchangeInt[i]=exchangeInt[i] + 10
    endif
    if id == exchangeItemId[17] then
        set exchangeManaRecovery[i]=exchangeManaRecovery[i] + 0.5
    endif
    if id == exchangeItemId[18] then
        set exchangeDamage[i]=exchangeDamage[i] + 0.005
    endif
    if id == exchangeItemId[19] then
        set exchangeCooldownReduction[i]=exchangeCooldownReduction[i] + 2
    endif
    if id == exchangeItemId[20] then
        set exchangeKillGold[i]=exchangeKillGold[i] + 2
    endif
    if id == exchangeItemId[21] then
        set exchangeHit[i]=exchangeHit[i] + 100
    endif
    if id == exchangeItemId[22] then
        set exchangeCriticalRate[i]=exchangeCriticalRate[i] + 2
    endif
    if id == exchangeItemId[23] then
        set exchangeCriticalDamage[i]=exchangeCriticalDamage[i] + 0.1
    endif
    if id == exchangeItemId[24] then
        set exchangeStr[i]=exchangeStr[i] + 20
    endif
    if id == exchangeItemId[25] then
        set exchangeAgi[i]=exchangeAgi[i] + 20
    endif
    if id == exchangeItemId[26] then
        set exchangeInt[i]=exchangeInt[i] + 20
    endif
    if id == exchangeItemId[27] then
        set exchangeManaRecovery[i]=exchangeManaRecovery[i] + 1
    endif
    if id == exchangeItemId[28] then
        set exchangeDamage[i]=exchangeDamage[i] + 0.005
    endif
    if id == exchangeItemId[29] then
        set exchangeCooldownReduction[i]=exchangeCooldownReduction[i] + 2
    endif
    if id == exchangeItemId[30] then
        set exchangeKillGold[i]=exchangeKillGold[i] + 3
    endif
    if id == exchangeItemId[31] then
        set exchangeHit[i]=exchangeHit[i] + 200
    endif
    if id == exchangeItemId[32] then
        set exchangeCriticalRate[i]=exchangeCriticalRate[i] + 4
    endif
    if id == exchangeItemId[33] then
        set exchangeCriticalDamage[i]=exchangeCriticalDamage[i] + 0.2
    endif
    if id == exchangeItemId[34] then
        set exchangeStr[i]=exchangeStr[i] + 40
    endif
    if id == exchangeItemId[35] then
        set exchangeAgi[i]=exchangeAgi[i] + 40
    endif
    if id == exchangeItemId[36] then
        set exchangeInt[i]=exchangeInt[i] + 40
    endif
    if id == exchangeItemId[37] then
        set exchangeManaRecovery[i]=exchangeManaRecovery[i] + 1.5
    endif
    if id == exchangeItemId[38] then
        set exchangeDamage[i]=exchangeDamage[i] + 0.005
    endif
    if id == exchangeItemId[39] then
        set exchangeCooldownReduction[i]=exchangeCooldownReduction[i] + 2
    endif
    if id == exchangeItemId[40] then
        set exchangeKillGold[i]=exchangeKillGold[i] + 4
    endif
    if id == exchangeItemId[41] then
        set exchangeHit[i]=exchangeHit[i] + 400
    endif
    if id == exchangeItemId[42] then
        set exchangeCriticalRate[i]=exchangeCriticalRate[i] + 8
    endif
    if id == exchangeItemId[43] then
        set exchangeCriticalDamage[i]=exchangeCriticalDamage[i] + 0.4
    endif
    if id == exchangeItemId[44] then
        set exchangeStr[i]=exchangeStr[i] + 80
    endif
    if id == exchangeItemId[45] then
        set exchangeAgi[i]=exchangeAgi[i] + 80
    endif
    if id == exchangeItemId[46] then
        set exchangeInt[i]=exchangeInt[i] + 80
    endif
    if id == exchangeItemId[47] then
        set exchangeManaRecovery[i]=exchangeManaRecovery[i] + 2
    endif
    if id == exchangeItemId[48] then
        set exchangeDamage[i]=exchangeDamage[i] + 0.005
    endif
    if id == exchangeItemId[49] then
        set exchangeCooldownReduction[i]=exchangeCooldownReduction[i] + 2
    endif
    if id == exchangeItemId[50] then
        set exchangeKillGold[i]=exchangeKillGold[i] + 5
    endif
endfunction
function initExchange takes nothing returns nothing
    local integer j
    local integer k
    set exchangeItemId[1]='I069'
    set exchangeItemId[2]='I06A'
    set exchangeItemId[3]='I06B'
    set exchangeItemId[4]='I06C'
    set exchangeItemId[5]='I06D'
    set exchangeItemId[6]='I06E'
    set exchangeItemId[7]='I06F'
    set exchangeItemId[8]='I06G'
    set exchangeItemId[9]='I06H'
    set exchangeItemId[10]='I06I'
    set exchangeItemId[11]='I06K'
    set exchangeItemId[12]='I06L'
    set exchangeItemId[13]='I06M'
    set exchangeItemId[14]='I06N'
    set exchangeItemId[15]='I06O'
    set exchangeItemId[16]='I06P'
    set exchangeItemId[17]='I06Q'
    set exchangeItemId[18]='I06R'
    set exchangeItemId[19]='I06S'
    set exchangeItemId[20]='I06T'
    set exchangeItemId[21]='I06V'
    set exchangeItemId[22]='I06W'
    set exchangeItemId[23]='I06X'
    set exchangeItemId[24]='I06Y'
    set exchangeItemId[25]='I06Z'
    set exchangeItemId[26]='I070'
    set exchangeItemId[27]='I071'
    set exchangeItemId[28]='I072'
    set exchangeItemId[29]='I073'
    set exchangeItemId[30]='I074'
    set exchangeItemId[31]='I076'
    set exchangeItemId[32]='I077'
    set exchangeItemId[33]='I078'
    set exchangeItemId[34]='I079'
    set exchangeItemId[35]='I07A'
    set exchangeItemId[36]='I07B'
    set exchangeItemId[37]='I07C'
    set exchangeItemId[38]='I07D'
    set exchangeItemId[39]='I07E'
    set exchangeItemId[40]='I07F'
    set exchangeItemId[41]='I07H'
    set exchangeItemId[42]='I07I'
    set exchangeItemId[43]='I07J'
    set exchangeItemId[44]='I07K'
    set exchangeItemId[45]='I07L'
    set exchangeItemId[46]='I07M'
    set exchangeItemId[47]='I07N'
    set exchangeItemId[48]='I07O'
    set exchangeItemId[49]='I07P'
    set exchangeItemId[50]='I07Q'
    set oneKeyExchangeItemId[1]='I06J'
    set oneKeyExchangeItemId[2]='I06U'
    set oneKeyExchangeItemId[3]='I075'
    set oneKeyExchangeItemId[4]='I07G'
    set oneKeyExchangeItemId[5]='I07R'
    set exchangeUnit[1]=gg_unit_o013_0027
    set exchangeUnit[2]=gg_unit_o013_0028
    set exchangeUnit[3]=gg_unit_o013_0029
    set exchangeUnit[4]=gg_unit_o013_0030
    set j=1
    loop
        exitwhen j > 4
        set exchangeCount[j]=0
        set k=1
        loop
            exitwhen k > 10
            call AddItemToStock(exchangeUnit[j], exchangeItemId[k], 1, 1)
            set k=k + 1
        endloop
        call AddItemToStock(exchangeUnit[j], oneKeyExchangeItemId[1], 1, 1)
        set j=j + 1
    endloop
endfunction
function refreshCardResultWidget takes integer i returns nothing
 local integer j= 1
 local integer id= 0
	if Player(i - 1) == GetLocalPlayer() then
        if GetUnitTypeId(unitInSelection[i]) == 'o014' then
            loop
                exitwhen j > cardMax[i]
                set id=LoadInteger(CARD_HT, i, j)
                if id == 0 then
                    call s__Frame_hide(cardResultWidget[j])
                else
                    call DzFrameSetTexture(s__Frame_id[(cardResultWidget[j])], (( EXExecuteScript("(require'jass.slk').item[" + I2S(id) + "].Art") )), 0) // INLINED!!
                    call s__Frame_show(cardResultWidget[j])
                endif
                set j=j + 1
            endloop
        else
            loop
                exitwhen j > cardMax[i]
                call s__Frame_hide(cardResultWidget[j])
                set j=j + 1
            endloop
        endif
	endif
	
endfunction
function lowDrawCard takes integer i returns nothing
    local integer rand= 0
    local integer j= 1
    local integer jmax= cardMax[i]
    local integer id= 0
    local integer array cards
    // 在卡牌商店里加入3张占位卡（如果解锁了商店物品，则为4张）
    if GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER) < 5 then
        call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 5, "|cff00ff00[系统]|r|cffff0000珍稀币不足|r")
        return
    endif
    call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER) - 5)
    call UnitAddAbility(cardShop[i], 'A09C')
    call UnitAddAbility(cardShop[i], 'A09D')
    call UnitAddAbility(cardShop[i], 'A09E')
    // call UnitAddAbility(cardShop[i], 'A09F')
    call FlushChildHashtable(CARD_HT, i)
    loop
        exitwhen j > jmax
        loop
            // 85%概率出现N卡，15%概率出现R卡
            set rand=GetRandomInt(1, 100)
            if rand <= 85 then
                set id=low_towers[GetRandomInt(1, LOW_SIZE)]
            else
                set id=normal_towers[GetRandomInt(1, NORMAL_SIZE)]
            endif
            call SaveInteger(CARD_HT, i, j, id)
            exitwhen id != cards[1] and id != cards[2] and id != cards[3] and id != cards[4]
        endloop
        set cards[j]=id
        set j=j + 1
    endloop
    call refreshCardResultWidget(i)
endfunction
function normalDrawCard takes integer i returns nothing
    local integer rand= 0
    local integer j= 1
    local integer jmax= cardMax[i]
    local integer id= 0
    local integer array cards
    // 在卡牌商店里加入3张占位卡（如果解锁了商店物品，则为4张）
    if GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER) < 20 then
        call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 5, "|cff00ff00[系统]|r|cffff0000珍稀币不足|r")
        return
    endif
    call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER) - 20)
    call UnitAddAbility(cardShop[i], 'A09C')
    call UnitAddAbility(cardShop[i], 'A09D')
    call UnitAddAbility(cardShop[i], 'A09E')
    // call UnitAddAbility(cardShop[i], 'A09F')
    call FlushChildHashtable(CARD_HT, i)
    loop
        exitwhen j > jmax
        loop
            // 38% N卡 57% R卡 5% SR卡
            set rand=GetRandomInt(1, 100)
            if rand <= 38 then
                set id=low_towers[GetRandomInt(1, LOW_SIZE)]
            elseif rand <= 95 then
                set id=normal_towers[GetRandomInt(1, NORMAL_SIZE)]
            else
                set id=fine_towers[GetRandomInt(1, FINE_SIZE)]
            endif
            call SaveInteger(CARD_HT, i, j, id)
            exitwhen id != cards[1] and id != cards[2] and id != cards[3] and id != cards[4]
        endloop
        set cards[j]=id
        set j=j + 1
    endloop
    call refreshCardResultWidget(i)
endfunction
function highDrawCard takes integer i returns nothing
    local integer rand= 0
    local integer j= 1
    local integer jmax= cardMax[i]
    local integer id= 0
    local integer array cards
    // 在卡牌商店里加入3张占位卡（如果解锁了商店物品，则为4张）
    if GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER) < 50 then
        call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 5, "|cff00ff00[系统]|r|cffff0000珍稀币不足|r")
        return
    endif
    call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER) - 50)
    call UnitAddAbility(cardShop[i], 'A09C')
    call UnitAddAbility(cardShop[i], 'A09D')
    call UnitAddAbility(cardShop[i], 'A09E')
    // call UnitAddAbility(cardShop[i], 'A09F')
    call FlushChildHashtable(CARD_HT, i)
    loop
        exitwhen j > jmax
        loop
            // 15% N卡 59% R卡 22% SR卡 4% SSR卡
            set rand=GetRandomInt(1, 100)
            if rand <= 15 then
                set id=low_towers[GetRandomInt(1, LOW_SIZE)]
            elseif rand <= 74 then
                set id=normal_towers[GetRandomInt(1, NORMAL_SIZE)]
            elseif rand <= 96 then
                set id=fine_towers[GetRandomInt(1, FINE_SIZE)]
            else
                set id=perfect_towers[GetRandomInt(1, PERFECT_SIZE)]
            endif
            call SaveInteger(CARD_HT, i, j, id)
            exitwhen id != cards[1] and id != cards[2] and id != cards[3] and id != cards[4]
        endloop
        set cards[j]=id
        set j=j + 1
    endloop
    call refreshCardResultWidget(i)
endfunction
function getCard takes integer i,integer number returns nothing
    local integer id= LoadInteger(CARD_HT, i, number)
    local integer level= LoadInteger(YDHT, id, TOWER_LEVEL_KEY)
    local integer gold= 0
    if level == 1 then
        set gold=500
    elseif level == 2 then
        set gold=1000
    elseif level == 3 then
        set gold=2000
    elseif level == 4 then
        set gold=5000
    endif
    if GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD) < gold then
        call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 5, "|cff00ff00[系统]|r|cffff0000金币不足|r")
        return
    endif
    call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD) - gold)
    call UnitAddItemById(builder[i], id)
    call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 5, "|cff00ff00[系统]|r|cff00ff00获得卡牌|r")
    call UnitRemoveAbility(cardShop[i], 'A09C')
    call UnitRemoveAbility(cardShop[i], 'A09D')
    call UnitRemoveAbility(cardShop[i], 'A09E')
    call UnitRemoveAbility(cardShop[i], 'A09F')
    call FlushChildHashtable(CARD_HT, i)
    call refreshCardResultWidget(i)
endfunction
function initDrawCard takes nothing returns nothing
    // 初始化卡牌商店
    set cardShop[1]=gg_unit_o014_0031
    set cardShop[2]=gg_unit_o014_0032
    set cardShop[3]=gg_unit_o014_0033
    set cardShop[4]=gg_unit_o014_0034
    set cardMax[1]=3
    set cardMax[2]=3
    set cardMax[3]=3
    set cardMax[4]=3
endfunction
function EverySecond_Conditions takes nothing returns boolean
    local string info= DzAPI_Map_GetMapConfig("info")
    local integer i= 1
    local integer level= 1
    local integer gold= 0
  
    set passed_time=passed_time + 1
    if passed_time == 5 then
        loop
            exitwhen i > 5
            if wisdom_ball_flag[i] == 1 then
                set wisbomBall[i]=CreateUnit(Player(i - 1), 'o00R', wisdomBallX[i], wisdomBallY[i], 270)
                call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 10, "|cff00ff00[系统]|r您已开启智慧球")
                set hasWisdomBall[i]=true
            endif
            set i=i + 1
        endloop
        if info != "无" then
            call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cff00ff00来自zeikale的提示：|r|cffff00de" + info + "|r")
            call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cff00ff00来自zeikale的提示：|r|cffff00de" + info + "|r")
            call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 30, "|cff00ff00来自zeikale的提示：|r|cffff00de" + info + "|r")
        endif
    endif
    if passed_time == 10 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10, "|cfffff000欢迎来到|cffff00de决战江湖TD|r")
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 10, "|cff00ff00[小贴士]|r收藏游戏的玩家可以在地图中间的商店中领取福利礼包！")
    endif
    if passed_time == 20 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r游戏前期金钱较匮乏，可以合理使用木材兑换金钱，欢迎在地图留言区提出您的宝贵意见")
    endif
    if passed_time == 40 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r高级防御塔性价比较高，建议将资源优先用于升级防御塔")
    endif
    if passed_time == 60 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r游戏里的相关指令请按F9打开任务面板进行查询")
    endif
    if passed_time == 80 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r由于制作和测试时间紧张，如遇游戏里有BUG或不舒适的体验给你带来不愉快，尽情谅解。")
    endif
    if passed_time == 100 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r塔升级到顶级后，如果有技能还没修炼到满级，可以使用武学修炼丹继续修炼。")
    endif
    // if passed_time == 120 then
    //     call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r生存模式前期强度较高，尽量在普通模式下积累一些积分后再进行尝试。")
    // endif
    // if passed_time == 140 then
    //     call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r生存模式下从第31波（第一次获得）起每10波获得5点存档积分。")
    // endif
    // if passed_time == 160 then
    //     call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[小贴士]|r生存模式第60波后将不再给予每波金钱和珍稀币奖励。")
    // endif
    call ForGroupBJ(attackerGroup, function EMeiXinFa)
    if udg_ShengYuGuaiShu + 10 <= CountUnitsInGroup(attackerGroup) and GetRandomInt(1, 5) <= 2 then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00[系统]|r|cffff0000圈内的进攻怪太多了，请注意防守！！|R")
    endif
    set i=1
    loop
        exitwhen i > 5
        // if five_star_flag[i] == 1 then
        //     call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD) + 2)
        // endif
        if mapLevel[i] >= 2 then
            set gold=gold + 1
        endif
        if mapLevel[i] >= 3 then
            set gold=gold + 2
        endif
        if mapLevel[i] >= 14 then
            set gold=gold + 2
        endif
        if mapLevel[i] >= 16 then
            set gold=gold + 2
        endif
        // 通关N2
        if winDifficulty[i] >= 2 then
            set gold=gold + 2
        endif
        // 欧皇大礼包
        if europe_flag[i] == 1 then
            set gold=gold + 3
        endif
        call SetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD) + gold)
        // 智慧球智能模式
        if wisdomBallSmartMode[i] and wisbomBall[i] != null then
            call IssueImmediateOrder(wisbomBall[i], "chainlightning")
            call IssueImmediateOrder(wisbomBall[i], "charm")
            call IssueImmediateOrder(wisbomBall[i], "corrosivebreath")
            call IssueImmediateOrder(wisbomBall[i], "chemicalrage")
            call IssueImmediateOrder(wisbomBall[i], "cloudoffog")
            call IssueImmediateOrder(wisbomBall[i], "cyclone")
            call IssueImmediateOrder(wisbomBall[i], "coldarrows")
        endif
        set i=i + 1
    endloop
    set i=0
    loop
        exitwhen i > tower_num
        if GetUnitAbilityLevel(s__Tower_u[tower[i]], 'A00I') >= 1 then
            call IssueImmediateOrder(s__Tower_u[tower[i]], "frenzy")
        endif
        // 装备加成
        if LoadInteger(TOWER_ATTR_HT, GetHandleId(s__Tower_u[tower[i]]), TOWER_MANA_RECOVERY_KEY) > 0 then
            call SetUnitState(s__Tower_u[tower[i]], UNIT_STATE_MANA, GetUnitState(s__Tower_u[tower[i]], UNIT_STATE_MANA) + LoadInteger(TOWER_ATTR_HT, GetHandleId(s__Tower_u[tower[i]]), TOWER_MANA_RECOVERY_KEY))
        endif
        // 谷衣心法
        if ModuloInteger(passed_time, 5) == 0 and GetUnitAbilityLevel(s__Tower_u[tower[i]], 'A04A') >= 1 then
            set level=GetUnitAbilityLevel(s__Tower_u[tower[i]], 'A04A')
            call SetUnitState(s__Tower_u[tower[i]], UNIT_STATE_MANA, GetUnitState(s__Tower_u[tower[i]], UNIT_STATE_MANA) + GetRandomInt(level * 10, level * 100))
        endif
        set i=i + 1
    endloop
    return false
endfunction
function EverySecond takes nothing returns nothing
    local trigger t= CreateTrigger()
    set wisdomBallX[1]=- 2380
    set wisdomBallX[2]=820
    set wisdomBallX[3]=2380
    set wisdomBallX[4]=- 820
    set wisdomBallY[1]=820
    set wisdomBallY[2]=2380
    set wisdomBallY[3]=- 820
    set wisdomBallY[4]=- 2380
    call TriggerRegisterTimerEventPeriodic(t, 1.)
    call TriggerAddCondition(t, Condition(function EverySecond_Conditions))
    set t=null
endfunction
function IssueUnitOrder_Conditions takes nothing returns boolean
    local integer id= GetIssuedOrderId()
    local unit u= GetTriggerUnit()
    local unit ut= GetOrderTargetUnit()
    local player p= GetOwningPlayer(u)
    local integer i= 1 + GetPlayerId(p)
    local location loc= GetUnitLoc(u)
    local location loc2= GetUnitLoc(ut)
    local location temp_loc= null
    local group g= null
    if id == 852066 and GetUnitAbilityLevel(u, 'A006') >= 1 and udg_jiuyang[i] >= 1 then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A030')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A030', GetUnitAbilityLevel(u, 'A006'))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852101, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 2.)
    endif
    if id == 852149 and GetUnitAbilityLevel(u, 'A00J') >= 1 and udg_jiuyang[i] >= 1 then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A038')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A038', GetUnitAbilityLevel(u, 'A00J'))
        call IssueTargetOrderById(bj_lastCreatedUnit, 852095, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 2.)
    endif
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set u=null
    set ut=null
    set p=null
    set loc=null
    set loc2=null
    set temp_loc=null
    set g=null
    return false
endfunction
function IssueOrder_Conditions takes nothing returns boolean
    return false
endfunction
function IssuePointOrder_Conditions takes nothing returns boolean
    local integer id= GetIssuedOrderId()
    local unit u= GetTriggerUnit()
    local player p= GetOwningPlayer(u)
    local integer i= 1 + GetPlayerId(p)
    set u=null
    set p=null
    return false
endfunction
function IssueOrder takes nothing returns nothing
    local trigger t= CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER)
    call TriggerAddCondition(t, Condition(function IssueUnitOrder_Conditions))
    set t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(t, Condition(function IssueOrder_Conditions))
    set t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    call TriggerAddCondition(t, Condition(function IssuePointOrder_Conditions))
    set t=null
endfunction
function KeyInput takes nothing returns nothing
    local string s= GetEventPlayerChatString()
    local player p= GetTriggerPlayer()
    local integer i= GetPlayerId(p) + 1
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
        set wave=54
    endif
    if s == "addSpeed250" and udg_isTest[i] then
        call setAttackSpeed(unitInSelection[i] , 250)
    endif
    if s == "combo" and udg_isTest[i] then
        call combo(unitInSelection[i])
    endif
    if s == "cx" or s == "CX" then
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9[系统]：|r" + "|CFFFE890D" + "战斗力：" + I2S(udg_zdl[i]))
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9[系统]：|r" + "|CFFFE890D" + "积分：" + I2S(udg_point[i]))
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9[系统]：|r" + "|CFFFE890D" + "每局可用积分剩余：" + I2S(MAX_POINT - udg_pointMax[i]))
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9[系统]：|r" + "|CFFFE890D" + "通关次数：" + I2S(udg_success[i]))
    endif
    if s == "ck" then
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9[系统]：|r" + "|CFFFE890D" + "伤害第1名 " + GetUnitName(LoadUnitHandle(YDHT, DAMAGE_UNIT_KEY, 1)) + "：" + R2S(LoadReal(YDHT, DAMAGE_KEY, 1)))
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9[系统]：|r" + "|CFFFE890D" + "伤害第2名 " + GetUnitName(LoadUnitHandle(YDHT, DAMAGE_UNIT_KEY, 2)) + "：" + R2S(LoadReal(YDHT, DAMAGE_KEY, 2)))
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9[系统]：|r" + "|CFFFE890D" + "伤害第3名 " + GetUnitName(LoadUnitHandle(YDHT, DAMAGE_UNIT_KEY, 3)) + "：" + R2S(LoadReal(YDHT, DAMAGE_KEY, 3)))
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9[系统]：|r" + "|CFFFE890D" + "伤害第4名 " + GetUnitName(LoadUnitHandle(YDHT, DAMAGE_UNIT_KEY, 4)) + "：" + R2S(LoadReal(YDHT, DAMAGE_KEY, 4)))
    endif
    if s == "ChuBoss1" and udg_isTest[i] then
        call spawnBoss(i , 1)
    endif
    if s == "ChuBoss3" and udg_isTest[i] then
        call spawnBoss(i , 3)
    endif
    if s == "survive" and udg_isTest[i] then
        set gameMode=1
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9[系统]：|r|CFFFE890D已开启生存模式")
    endif
    if s == "wisdomball" and udg_isTest[i] then
        set wisbomBall[i]=CreateUnit(p, 'o00R', wisdomBallX[i], wisdomBallY[i], 270)
        call DisplayTimedTextToPlayer(p, 0, 0, 10, "|CFF1CE6B9[系统]：|r|CFFFE890D创建了智慧球")
    endif
    if s == "wave54" and udg_isTest[i] then
        set wave=54
    endif
    if StringHash(s) == 1661513981 then
        set udg_isTest[i]=true
    endif
    if s == "JZTD666" or s == "jztd666" then
        set qqTeamAward[i]=true
        call DzAPI_Map_StoreBoolean(p , "qqTeamAward" , true)
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
    set p=null
endfunction
function KeyInputSystem takes nothing returns nothing
    local trigger t= CreateTrigger()
    local integer i= 0
    loop
        exitwhen i > 6
        call TriggerRegisterPlayerChatEvent(t, Player(i), "", true)
        set i=i + 1
    endloop
    call TriggerAddAction(t, function KeyInput)
    set t=null
endfunction
function GetMaxLevel takes integer spell_id returns integer
    return LoadInteger(YDHT, spell_id * 3, 0)
endfunction
function SaveMaxLevel_1 takes integer spell_id,integer max_level returns nothing
    call SaveInteger(YDHT, spell_id * 3, 0, max_level)
endfunction
function SaveMaxLevel takes nothing returns nothing
    call SaveInteger(YDHT, 'A00X' * 3, 0, 3)
    call SaveInteger(YDHT, 'A027' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00V' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00R' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00N' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00K' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00W' * 3, 0, 3)
    call SaveInteger(YDHT, 'A029' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02F' * 3, 0, 3)
    call SaveInteger(YDHT, 'A01V' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02D' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02C' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02E' * 3, 0, 3)
    call SaveInteger(YDHT, 'A034' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02V' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02K' * 3, 0, 5)
    call SaveInteger(YDHT, 'A02Q' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02T' * 3, 0, 5)
    call SaveInteger(YDHT, 'A02Y' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00B' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00A' * 3, 0, 3)
    call SaveInteger(YDHT, 'A001' * 3, 0, 8)
    call SaveInteger(YDHT, 'A037' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00T' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00J' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00H' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00L' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00I' * 3, 0, 3)
    call SaveInteger(YDHT, 'A010' * 3, 0, 3)
    call SaveInteger(YDHT, 'A01Q' * 3, 0, 6)
    call SaveInteger(YDHT, 'A01R' * 3, 0, 3)
    call SaveInteger(YDHT, 'A026' * 3, 0, 3)
    call SaveInteger(YDHT, 'A024' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02H' * 3, 0, 3)
    call SaveInteger(YDHT, 'A03L' * 3, 0, 3)
    call SaveInteger(YDHT, 'A022' * 3, 0, 3)
    call SaveInteger(YDHT, 'A031' * 3, 0, 3)
    call SaveInteger(YDHT, 'A032' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02M' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02N' * 3, 0, 4)
    call SaveInteger(YDHT, 'A02I' * 3, 0, 3)
    call SaveInteger(YDHT, 'A02R' * 3, 0, 4)
    call SaveInteger(YDHT, 'A00F' * 3, 0, 3)
    call SaveInteger(YDHT, 'A002' * 3, 0, 3)
    call SaveInteger(YDHT, 'A01T' * 3, 0, 3)
    call SaveInteger(YDHT, 'A009' * 3, 0, 3)
    call SaveInteger(YDHT, 'A007' * 3, 0, 3)
    call SaveInteger(YDHT, 'A00D' * 3, 0, 3)
    call SaveInteger(YDHT, 'A006' * 3, 0, 1)
    call SaveInteger(YDHT, 'A050' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04O' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04P' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04W' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04N' * 3, 0, 10)
    call SaveInteger(YDHT, 'A04X' * 3, 0, 7)
    call SaveInteger(YDHT, 'A04U' * 3, 0, 4)
    call SaveInteger(YDHT, 'A04S' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04V' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04Q' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04T' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04Y' * 3, 0, 3)
    call SaveInteger(YDHT, 'A054' * 3, 0, 3)
    call SaveInteger(YDHT, 'A048' * 3, 0, 3)
    call SaveInteger(YDHT, 'A049' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04B' * 3, 0, 3)
    call SaveInteger(YDHT, 'A047' * 3, 0, 3)
    call SaveInteger(YDHT, 'A04A' * 3, 0, 3)
    call SaveInteger(YDHT, 'A045' * 3, 0, 6)
    call SaveInteger(YDHT, 'A03N' * 3, 0, 5)
    call SaveInteger(YDHT, 'A03Q' * 3, 0, 5)
    call SaveInteger(YDHT, 'A03P' * 3, 0, 5)
    call SaveInteger(YDHT, 'A03R' * 3, 0, 5)
    call SaveInteger(YDHT, 'A096' * 3, 0, 5)
endfunction
function pointChange takes integer i,integer jf returns nothing
    set udg_pointMax[i]=udg_pointMax[i] + jf
    set udg_point[i]=udg_point[i] - jf
    call DzAPI_Map_StoreInteger(Player(i - 1) , "point" , udg_point[i])
endfunction
function Challenge takes integer player_i,integer challenge_num,integer item_id returns nothing
    local player p= Player(player_i - 1)
    local location array udl_loc
    local location array target
    set udl_loc[0]=GetRectCenter(gg_rct_spawn1)
    set udl_loc[1]=GetRectCenter(gg_rct_spawn2)
    set udl_loc[2]=GetRectCenter(gg_rct_spawn3)
    set udl_loc[3]=GetRectCenter(gg_rct_spawn4)
    set target[0]=GetRectCenter(nodeRects[22])
    set target[1]=GetRectCenter(nodeRects[23])
    set target[2]=GetRectCenter(nodeRects[24])
    set target[3]=GetRectCenter(nodeRects[21])
    if item_id == challenge_item_id[challenge_num] then
        if challenge_num <= 4 then
            call CreateNUnitsAtLoc(1, challenge_id[challenge_num], Player(5), udl_loc[player_i - 1], bj_UNIT_FACING)
            call GroupAddUnit(attackerGroup, bj_lastCreatedUnit)
            call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 851986, target[player_i - 1])
            call RemoveLocation(target[player_i - 1])
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933挑战开始|r")
            // 记录是谁刷的怪
            call SaveInteger(YDHT, GetHandleId(bj_lastCreatedUnit), StringHash("owner"), player_i)
            // 难六以上，有概率出现变异怪
            if udg_difficulty > 5 and GetRandomInt(1, 50) <= udg_difficulty then
                call mutatedAttacker(bj_lastCreatedUnit)
            endif
        elseif challenge_num == 5 then
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933该挑战尚未开放|r")
            call AdjustPlayerStateBJ(3, p, PLAYER_STATE_RESOURCE_LUMBER)
        elseif challenge_num == 6 then
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933该挑战尚未开放|r")
            call AdjustPlayerStateBJ(50, p, PLAYER_STATE_RESOURCE_LUMBER)
        endif
    endif
    set p=null
endfunction
function GoldLumberExChange takes integer player_i,integer item_id,unit u returns nothing
    local player p= Player(player_i - 1)
    if item_id == 'I01C' then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) >= 4000 then
            call PlaySoundOnUnitBJ(Ih, 100, u)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 1)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) - 4000)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933黄金不足|r")
        endif
    endif
    if item_id == 'I01D' then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) >= 1 then
            call PlaySoundOnUnitBJ(Ih, 100, u)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) - 1)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 2000)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933珍稀币不足|r")
        endif
    endif
    if item_id == 'I028' then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) >= 40000 then
            call PlaySoundOnUnitBJ(Ih, 100, u)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 10)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) - 40000)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933黄金不足|r")
        endif
    endif
    if item_id == 'I027' then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) >= 10 then
            call PlaySoundOnUnitBJ(Ih, 100, u)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) - 10)
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 20000)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933珍稀币不足|r")
        endif
    endif
    if item_id == 'I01Y' then
        if GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) < 100 then
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) + 2)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933人口上限已达上限，无法继续购买|r")
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 1)
        endif
    endif
    if item_id == 'I01Z' then
        if (RequestExtraBooleanData(53, (p ), null, null, false, ( 16), 0, 0)) or udg_isTest[player_i] then // INLINED!!
            if save_present[player_i] != 1 then
                set save_present[player_i]=1
                call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933恭喜玩家" + I2S(player_i) + "领取了小型资源包")
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 3000)
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 10)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经领取过了|r")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff0000只有先收藏地图才能领取哦~|r")
        endif
    endif
    if item_id == 'I020' then
        if udg_point[player_i] >= 5 and udg_pointMax[player_i] + 5 <= MAX_POINT then
            if point2lumber[player_i] != 1 then
                set point2lumber[player_i]=1
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 30)
                call DisplayTimedTextToPlayer(p, 0, 0, 5, "|cFF66CC00珍稀币+30，扣除5积分")
                call pointChange(player_i , 5)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经领取过了|r")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 5, "|CFFFE890D不好意思你的积分不够了哦，或者已经或者已经达到本局使用上限50！")
        endif
    endif
    if item_id == 'I021' then
        if udg_point[player_i] >= 5 and udg_pointMax[player_i] + 5 <= MAX_POINT then
            if point2gold[player_i] != 1 then
                set point2gold[player_i]=1
                call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 5000)
                call DisplayTimedTextToPlayer(p, 0, 0, 5, "|cFF66CC00金币+8000，扣除5积分")
                call pointChange(player_i , 5)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经领取过了|r")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 5, "|CFFFE890D不好意思你的积分不够了哦，或者已经或者已经达到本局使用上限50！")
        endif
    endif
    if item_id == 'I02M' then
        if udg_point[player_i] >= 5 and udg_pointMax[player_i] + 5 <= MAX_POINT then
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) + 5)
            call DisplayTimedTextToPlayer(p, 0, 0, 5, "|cFF66CC00可用人口+5，扣除5积分")
            call pointChange(player_i , 5)
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 5, "|CFFFE890D不好意思你的积分不够了哦，或者已经或者已经达到本局使用上限50！")
        endif
    endif
    if item_id == 'I029' then
        if middle_gold_flag[player_i] == 1 then
            if middle_gold[player_i] != 1 then
                if wave >= 15 then
                    set middle_gold[player_i]=1
                    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933恭喜玩家" + I2S(player_i) + "领取了中型金币包")
                    call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) + 20000)
                else
                    call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933限第15波以后领取|r")
                endif
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经领取过了|r")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您未解锁中型金币包|r")
        endif
    endif
    if item_id == 'I02A' then
        if middle_lumber_flag[player_i] == 1 then
            if middle_lumber[player_i] != 1 then
                if wave >= 15 then
                    set middle_lumber[player_i]=1
                    call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933恭喜玩家" + I2S(player_i) + "领取了中型珍稀币包")
                    call SetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(p, PLAYER_STATE_RESOURCE_LUMBER) + 80)
                else
                    call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933限第15波以后领取|r")
                endif
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经领取过了|r")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您未解锁中型珍稀币包|r")
        endif
    endif
    set p=null
endfunction
function CheckHolyWeapon takes integer player_i,integer item_id returns nothing
    local player p= Player(player_i - 1)
    local string s= ""
    local integer i= 1
    if item_id == 'I01W' then
        loop
            exitwhen i > open_shenqi
            set s=s + GetObjectName(random_shenqi[i]) + "\n"
            set i=i + 1
        endloop
        call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933本局开放神器：\n" + s + "|r")
    endif
endfunction
function SynHolyWeapon takes nothing returns nothing
    call YDWENewItemsFormula('I00D' , 1 , 'I016' , 1 , 'I01L' , 1 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'I012')
    call YDWENewItemsFormula('I00D' , 1 , 'I016' , 1 , 'I01K' , 1 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'I00C')
    call YDWENewItemsFormula('I007' , 1 , 'I016' , 1 , 'I01M' , 1 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'I00N')
    call YDWENewItemsFormula('I007' , 1 , 'I016' , 1 , 'I01N' , 1 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'I00R')
    call YDWENewItemsFormula('I00K' , 1 , 'I016' , 1 , 'I01R' , 1 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'I00L')
    call YDWENewItemsFormula('I00K' , 1 , 'I016' , 1 , 'I01Q' , 1 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'I00M')
    call YDWENewItemsFormula('I011' , 1 , 'I016' , 1 , 'I01O' , 1 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'I00U')
    call YDWENewItemsFormula('I011' , 1 , 'I016' , 1 , 'I01P' , 1 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'I013')
    call YDWENewItemsFormula('I00T' , 1 , 'I016' , 1 , 'I01U' , 1 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'I00V')
    call YDWENewItemsFormula('I00T' , 1 , 'I016' , 1 , 'I01S' , 1 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'I00F')
    call YDWENewItemsFormula('I00T' , 1 , 'I016' , 1 , 'I01T' , 1 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'I00W')
endfunction
function LearnJiangHu takes integer player_i,integer jianghu_num,integer item_id returns nothing
    local player p= Player(player_i - 1)
    if item_id == jianghu_item_id[jianghu_num] then
        if jianghu_num == 1 then
            if udg_jiuyang[player_i] == 0 then
                set udg_jiuyang[player_i]=1
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜你成功修习九阳神功|r")
                call SaveInteger(YDHT, 'A02D' * 3, 0, 4)
                call SaveInteger(YDHT, 'A02C' * 3, 0, 4)
                call SaveInteger(YDHT, 'A02E' * 3, 0, 4)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933你已经修习过该武功了|r")
                call AdjustPlayerStateBJ(70, p, PLAYER_STATE_RESOURCE_LUMBER)
            endif
        elseif jianghu_num == 2 then
            if udg_jiuyin[player_i] == 0 then
                set udg_jiuyin[player_i]=1
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜你成功修习九阴真经|r")
                call SaveInteger(YDHT, 'A00F' * 3, 0, 4)
                call SaveInteger(YDHT, 'A009' * 3, 0, 4)
                call SaveInteger(YDHT, 'A00R' * 3, 0, 4)
                call SaveInteger(YDHT, 'A00N' * 3, 0, 4)
                call SaveInteger(YDHT, 'A026' * 3, 0, 4)
                call SaveInteger(YDHT, 'A024' * 3, 0, 4)
                call SaveInteger(YDHT, 'A034' * 3, 0, 4)
                call SaveInteger(YDHT, 'A037' * 3, 0, 4)
                call SaveInteger(YDHT, 'A04W' * 3, 0, 4)
                call SaveInteger(YDHT, 'A04Q' * 3, 0, 4)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933你已经修习过该武功了|r")
                call AdjustPlayerStateBJ(50, p, PLAYER_STATE_RESOURCE_LUMBER)
            endif
        elseif jianghu_num == 3 then
            if udg_douzhuan[player_i] == 0 then
                set udg_douzhuan[player_i]=1
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜你成功修习斗转星移|r")
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933你已经修习过该武功了|r")
                call AdjustPlayerStateBJ(50, p, PLAYER_STATE_RESOURCE_LUMBER)
            endif
        elseif jianghu_num == 4 then
            if udg_xixing[player_i] == 0 then
                set udg_xixing[player_i]=1
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜你成功修习吸星大法|r")
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933你已经修习过该武功了|r")
                call AdjustPlayerStateBJ(50, p, PLAYER_STATE_RESOURCE_LUMBER)
            endif
        elseif jianghu_num == 5 then
            if udg_huagong[player_i] == 0 then
                set udg_huagong[player_i]=1
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜你成功修习化功大法|r")
                call SaveInteger(YDHT, 'A00A' * 3, 0, 4)
                call SaveInteger(YDHT, 'A00X' * 3, 0, 4)
                call SaveInteger(YDHT, 'A027' * 3, 0, 4)
                call SaveInteger(YDHT, 'A02R' * 3, 0, 5)
                call SaveInteger(YDHT, 'A04T' * 3, 0, 4)
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933你已经修习过该武功了|r")
                call AdjustPlayerStateBJ(30, p, PLAYER_STATE_RESOURCE_LUMBER)
            endif
        endif
    endif
    set p=null
endfunction
function JoinMenPai takes integer player_i,integer menpai_num,integer item_id returns nothing
    local player p= Player(player_i - 1)
    local unit array selector
    set selector[1]=gg_unit_e00H_0023
    set selector[2]=gg_unit_e00H_0024
    set selector[3]=gg_unit_e00H_0025
    set selector[4]=gg_unit_e00H_0026
    if item_id == menpai_item_id[menpai_num] then
        if menpai_num > OPEN_DOMINATION_NUM then
            call DisplayTimedTextToPlayer(p, 0, 0, 15, "|CFFFF0000该门派尚未开放")
        else
            if join_menpai_flag[player_i] == 0 then
                set join_menpai_flag[player_i]=menpai_num
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933恭喜加入" + menpai_name[menpai_num] + "|r")
                call SetPlayerName(p, menpai_name[menpai_num] + GetPlayerName(p))
                call CreateNUnitsAtLoc(1, 'U00X', p, born_loc[player_i], bj_UNIT_FACING)
                set builder[player_i]=bj_lastCreatedUnit
                call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03U')
                call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03V')
                call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03W')
                call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03X')
                call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A04I')
                // call UnitAddAbility(builder[player_i], 'AInv')
                call PanCameraToTimedLocForPlayer(p, born_loc[player_i], 0)
                call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933玩家" + I2S(player_i) + "选择了" + menpai_name[menpai_num])
                call KillUnit(selector[player_i])
                call RemoveUnit(selector[player_i])
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 15., "|CFFff9933您已经加入过门派了|r")
                call AddItemToStockBJ(item_id, gg_unit_o00A_0014, 1, 1)
            endif
        endif
    endif
    set p=null
endfunction
function InitBornLoc takes nothing returns nothing
    set born_loc[1]=Location(- 2226, 1621)
    set born_loc[2]=Location(1600, 2330)
    set born_loc[3]=Location(2250, - 1835)
    set born_loc[4]=Location(- 1742, - 2330)
endfunction
function InitMenPai takes nothing returns nothing
    set menpai_name[1]="〓少林派〓"
    set menpai_name[2]="〓武当派〓"
    set menpai_name[3]="〓峨眉派〓"
    set menpai_name[4]="〓丐帮〓"
    set menpai_name[5]="〓全真教〓"
    set menpai_item_id[1]='I000'
    set menpai_item_id[2]='I001'
    set menpai_item_id[3]='I002'
    set menpai_item_id[4]='I003'
    set menpai_item_id[5]='I02K'
    set menpai_builder_id[1]='u00C'
    set menpai_builder_id[2]='u00D'
    set menpai_builder_id[3]='u00E'
    set menpai_builder_id[4]='u00F'
    set menpai_builder_id[5]='u00W'
    set jianghu_item_id[1]='I015'
    set jianghu_item_id[2]='I017'
    set jianghu_item_id[3]='I018'
    set jianghu_item_id[4]='I019'
    set jianghu_item_id[5]='I01A'
    set challenge_item_id[1]='I01F'
    set challenge_item_id[2]='I01G'
    set challenge_item_id[3]='I01H'
    set challenge_item_id[4]='I026'
    set challenge_item_id[5]='I01E'
    set challenge_item_id[6]='I01I'
    set challenge_id[1]='H00E'
    set challenge_id[2]='H00I'
    set challenge_id[3]='H00J'
    set challenge_id[4]='U00U'
    set challenge_id[5]='H00D'
    set challenge_id[6]='H002'
endfunction
function InitSavePlayerName takes nothing returns nothing
    loop
        exitwhen bj_forLoopAIndex >= 4
        if GetPlayerController(Player(bj_forLoopAIndex)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(bj_forLoopAIndex)) == PLAYER_SLOT_STATE_PLAYING then
            call SaveStr(YDHT, GetHandleId(Player(bj_forLoopAIndex)), GetHandleId(Player(bj_forLoopAIndex)), GetPlayerName(Player(bj_forLoopAIndex)))
            call SaveStr(YDHT, GetHandleId(Player(bj_forLoopAIndex)), GetHandleId(Player(bj_forLoopAIndex)) * 2, GetPlayerName(Player(bj_forLoopAIndex)))
        endif
        set bj_forLoopAIndex=bj_forLoopAIndex + 1
    endloop
endfunction
function PickupItem_Conditions takes nothing returns boolean
    local item it= GetManipulatedItem()
    local unit u= GetTriggerUnit()
    local player p= GetOwningPlayer(u)
    local integer i= 1 + GetPlayerId(p)
    local integer award= 0
    local real rand= 0
    local integer attr= 0
    local integer value= 0
    local item it2= null
    local integer j
    call GoldLumberExChange(i , GetItemTypeId(it) , u)
    call CheckHolyWeapon(i , GetItemTypeId(it))
    call Challenge(i , 1 , GetItemTypeId(it))
    call Challenge(i , 2 , GetItemTypeId(it))
    call Challenge(i , 3 , GetItemTypeId(it))
    call Challenge(i , 4 , GetItemTypeId(it))
    call Challenge(i , 5 , GetItemTypeId(it))
    call Challenge(i , 6 , GetItemTypeId(it))
    call LearnJiangHu(i , 1 , GetItemTypeId(it))
    call LearnJiangHu(i , 2 , GetItemTypeId(it))
    call LearnJiangHu(i , 3 , GetItemTypeId(it))
    call LearnJiangHu(i , 4 , GetItemTypeId(it))
    call LearnJiangHu(i , 5 , GetItemTypeId(it))
    call JoinMenPai(i , 1 , GetItemTypeId(it))
    call JoinMenPai(i , 2 , GetItemTypeId(it))
    call JoinMenPai(i , 3 , GetItemTypeId(it))
    call JoinMenPai(i , 4 , GetItemTypeId(it))
    call JoinMenPai(i , 5 , GetItemTypeId(it))
    if GetItemTypeId(it) == 'I02J' then
        set award=getRandomSoulStone(i)
        call UnitAddItemById(u, award)
        call DisplayTextToForce(bj_FORCE_ALL_PLAYERS, "|CFFff9933" + GetPlayerName(Player(i - 1)) + "在断指轩辕处抽取武魂石，获得了" + GetObjectName(award))
    endif
    // 普通武器
    if GetItemTypeId(it) == 'I062' then
        set award=normal_drops[GetRandomInt(1, MAX_NORMAL_DROP)]
        set it2=CreateItem(award, GetUnitX(builder[i]), GetUnitY(builder[i]))
        call generateRandomAttr(it2)
        call UnitAddItem((builder[i] ), ( it2)) // INLINED!!
    endif
    if GetItemTypeId(it) == 'I063' then
        set award=rare_drops[GetRandomInt(1, MAX_RARE_DROP)]
        set it2=CreateItem(award, GetUnitX(builder[i]), GetUnitY(builder[i]))
        call generateRandomAttr(it2)
        call UnitAddItem((builder[i] ), ( it2)) // INLINED!!
    endif
    if GetItemTypeId(it) == 'I064' then
        set award=valuable_drops[GetRandomInt(1, MAX_VALUABLE_DROP)]
        set it2=CreateItem(award, GetUnitX(builder[i]), GetUnitY(builder[i]))
        call generateRandomAttr(it2)
        call UnitAddItem((builder[i] ), ( it2)) // INLINED!!
    endif
    if GetItemTypeId(it) == 'I066' then
        set award=ancient_drops[GetRandomInt(1, MAX_ANCIENT_DROP)]
        set it2=CreateItem(award, GetUnitX(builder[i]), GetUnitY(builder[i]))
        call generateRandomAttr(it2)
        call UnitAddItem((builder[i] ), ( it2)) // INLINED!!
    endif
    if GetItemTypeId(it) == 'I065' then
        set award=epic_drops[GetRandomInt(1, MAX_EPIC_DROP)]
        set it2=CreateItem(award, GetUnitX(builder[i]), GetUnitY(builder[i]))
        call generateRandomAttr(it2)
        call UnitAddItem((builder[i] ), ( it2)) // INLINED!!
    endif
    // 物品堆叠 对于可充的物品生效
    if GetItemType(it) == ITEM_TYPE_CHARGED then
        set j=1
        loop
            exitwhen j > 6
            if GetItemTypeId(it) == GetItemTypeId(UnitItemInSlotBJ(u, j)) and it != UnitItemInSlotBJ(u, j) then
                set award=GetItemCharges(it)
                call SetItemCharges(UnitItemInSlotBJ(u, j), GetItemCharges(UnitItemInSlotBJ(u, j)) + award)
                call RemoveItem(it)
                exitwhen true
            endif
            set j=j + 1
        endloop
    endif
    call addExtraAttr(u , it)
    set it=null
    set u=null
    set p=null
    set it2=null
    return false
endfunction
function DropItem_Conditions takes nothing returns boolean
    local item it= GetManipulatedItem()
    local unit u= GetTriggerUnit()
    local integer attr= 0
    local integer value= 0
    // 额外属性效果
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY) != 0 then
        set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY)
        set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_VALUE_KEY)
        call equipAddition(u , attr , - value)
    endif
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY) != 0 then
        set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY)
        set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_VALUE_KEY)
        call equipAddition(u , attr , - value)
    endif
    if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY) != 0 then
        set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY)
        set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_VALUE_KEY)
        call equipAddition(u , attr , - value)
    endif
    set it=null
    set u=null
    return false
endfunction
function YDWESystemItemCombineAction takes nothing returns nothing
    local item it= (bj_lastCombinedItem) // INLINED!!
    call generateRandomAttr(it)
    call addExtraAttr(GetTriggerUnit() , it)
    set it=null
endfunction
function BuyItem_Conditions takes nothing returns boolean
    local unit u= GetBuyingUnit()
 local unit ut= GetSellingUnit()
 local item it= GetSoldItem()
 local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
    // 所有物品买到门派建造者的身上
    if builder[i] != null and u != builder[i] then
        call UnitAddItemById(builder[i], GetItemTypeId(it))
        call RemoveItem(it)
    endif
    set u=null
    set ut=null
    set it=null
    return false
endfunction
function PickupItem takes nothing returns nothing
    local trigger t= CreateTrigger()
    call InitBornLoc()
    call InitMenPai()
    call InitSavePlayerName()
    call SaveMaxLevel()
    call SynHolyWeapon()
    set Ih=CreateSound("Abilities\\Spells\\Items\\ResourceItems\\ReceiveGold.wav", false, true, true, 10, 10, "SpellsEAX")
    call SetSoundParamsFromLabel(Ih, "ReceiveGold")
    call SetSoundDuration(Ih, 589)
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(t, Condition(function PickupItem_Conditions))
    set t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DROP_ITEM)
    call TriggerAddCondition(t, Condition(function DropItem_Conditions))
    set t=CreateTrigger()
    call YDWESyStemItemCombineRegistTrigger(t)
    call TriggerAddAction(t, function YDWESystemItemCombineAction)
    set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELL_ITEM)
	call TriggerAddCondition(t, Condition(function BuyItem_Conditions))
    set t=null
endfunction
function showHealthPointAction takes nothing returns nothing
    local integer i= 1 + GetPlayerId(GetTriggerPlayer())
    local integer j= 1
    // call BJDebugMsg("当前选中单位为："+GetUnitName(GetTriggerUnit()))
    if GetTriggerUnit() != null then
        set unitInSelection[i]=GetTriggerUnit()
        if GetTriggerPlayer() == GetLocalPlayer() then
            call refreshCardResultWidget(i)
        endif
    endif
    if showHint[i] and GetUnitState(GetTriggerUnit(), UNIT_STATE_MAX_LIFE) >= 999999 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "单位" + GetUnitName(GetTriggerUnit()) + "|r的血量为" + R2S(GetWidgetLife(GetTriggerUnit())) + " / " + R2S(GetUnitState(GetTriggerUnit(), UNIT_STATE_MAX_LIFE)))
    endif
    if showHint[i] and LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 4077) > 0 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "单位" + GetUnitName(GetTriggerUnit()) + "|r的护盾百分比为" + R2S(LoadReal(YDHT, GetHandleId(GetTriggerUnit()), 4077)) + " %")
    endif
endfunction
function toggleHint takes nothing returns nothing
    local player p= GetTriggerPlayer()
    local string s= GetEventPlayerChatString()
    if s == "qxts" then
        call DisplayTextToPlayer(p, 0, 0, "|cffffff00取消血量提示")
        set showHint[1 + GetPlayerId(p)]=false
    endif
    if s == "kqts" then
        call DisplayTextToPlayer(p, 0, 0, "|cffffff00开启血量提示")
        set showHint[1 + GetPlayerId(p)]=true
    endif
    set p=null
endfunction
function SelectUnitSystem takes nothing returns nothing
    local trigger t= CreateTrigger()
    local integer i= 1
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SELECTED)
    call TriggerAddAction(t, function showHealthPointAction)
    loop
        exitwhen i > 5
        set showHint[i]=true
        set unitInSelection[i]=null
        set i=i + 1
    endloop
    set i=0
    loop
        exitwhen i > 6
        call TriggerRegisterPlayerChatEvent(t, Player(i), "", true)
        set i=i + 1
    endloop
    call TriggerAddAction(t, function toggleHint)
endfunction
function QinLong takes nothing returns nothing
    local unit attacker= GetAttacker()
    local unit ut= GetEnumUnit()
    local location loc= GetUnitLoc(attacker)
    call CreateNUnitsAtLoc(1, 'e009', GetOwningPlayer(attacker), loc, bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, 'A04D')
    call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A04D', GetUnitAbilityLevel(attacker, 'A04B'))
    call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, attacker)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852480, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 5.)
    call RemoveLocation(loc)
    set loc=null
    set attacker=null
    set ut=null
endfunction
function HaoTian takes nothing returns nothing
    local unit attacker= GetAttacker()
    local unit ut= GetEnumUnit()
    local location loc= GetUnitLoc(attacker)
    call CreateNUnitsAtLoc(1, 'e009', GetOwningPlayer(attacker), loc, bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, 'A052')
    call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A052', GetUnitAbilityLevel(attacker, 'A04P'))
    call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, attacker)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852230, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 5.)
    call RemoveLocation(loc)
    set loc=null
    set attacker=null
    set ut=null
endfunction
function UnitAttack_Conditions takes nothing returns boolean
    local unit u= GetAttacker()
    local unit ut= GetTriggerUnit()
    local player p= GetOwningPlayer(u)
    local integer i= 1 + GetPlayerId(p)
    local location loc= GetUnitLoc(u)
    local location loc2= GetUnitLoc(ut)
    local location temp_loc= null
    local location array udl_loc
    local group g= null
    local integer tw= getTowerInstance(u)
    local integer j= 0
    local integer k= 0
    local unit dummy= null
    set udl_loc[0]=GetRectCenter(gg_rct_spawn1)
    set udl_loc[1]=GetRectCenter(gg_rct_spawn2)
    set udl_loc[2]=GetRectCenter(gg_rct_spawn3)
    set udl_loc[3]=GetRectCenter(gg_rct_spawn4)
    // 如果下次塔必定封穴，执行封穴
    if LoadBoolean(TOWER_ATTR_HT, GetHandleId(u), TOWER_SEAL_KEY) then
        call WanBuff(u , ut , 11)
        call SaveBoolean(TOWER_ATTR_HT, GetHandleId(u), TOWER_SEAL_KEY, false)
    endif
    if udg_douzhuan[i] >= 1 and GetRandomReal(0, 100) <= 2 then
        if LoadReal(YDHT, GetHandleId(ut), BORN_LOC_X) != 0 then
            call SetUnitX(ut, LoadReal(YDHT, GetHandleId(ut), BORN_LOC_X))
            call SetUnitY(ut, LoadReal(YDHT, GetHandleId(ut), BORN_LOC_Y))
        else
            call SetUnitX(ut, GetLocationX(udl_loc[i - 1]))
            call SetUnitY(ut, GetLocationY(udl_loc[i - 1]))
        endif
        call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", loc2))
        set temp_loc=GetUnitLoc(ut)
        call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", temp_loc))
        call RemoveLocation(temp_loc)
        set temp_loc=null
    endif
    if udg_xixing[i] >= 1 and GetRandomReal(0, 100) <= 15 then
        call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) + GetUnitState(u, UNIT_STATE_MAX_MANA) * .05)
    endif
    if YDWEUnitHasItemOfTypeBJNull(u , 'I00R') and GetRandomReal(0, 100) <= 20 then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A036')
        call IssueTargetOrderById(bj_lastCreatedUnit, 852101, u)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 3.)
    endif
    if YDWEUnitHasItemOfTypeBJNull(u , 'I00U') and GetRandomReal(0, 100) <= 5 then
        set j=0
        loop
            exitwhen j >= 11
            call s__Tower_ResetCD(tw , j)
            set j=j + 1
        endloop
    endif
    if YDWEUnitHasItemOfTypeBJNull(u , 'I00M') and GetRandomReal(0, 100) <= .5 then
        if IsUnitType(ut, UNIT_TYPE_HERO) == false then
            call SetWidgetLife(ut, 1.)
            call UnitDamageTarget(u, ut, $F4240, true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
        else
            call SetWidgetLife(ut, GetWidgetLife(ut) * .9)
        endif
    endif
    if YDWEUnitHasItemOfTypeBJNull(u , 'I01J') and GetRandomReal(0, 100) <= 15 and GetUnitTypeId(u) != 'u00C' and GetUnitTypeId(u) != 'u00D' and GetUnitTypeId(u) != 'u00E' and GetUnitTypeId(u) != 'u00F' then
        // if IsUnitType(ut, UNIT_TYPE_HERO) == false then
        call AdjustPlayerStateBJ(50, p, PLAYER_STATE_RESOURCE_GOLD)
        // elseif GetRandomReal(0, 100) <= 14 then
        // call AdjustPlayerStateBJ(1, p, PLAYER_STATE_RESOURCE_LUMBER)
        // endif
    endif
    // 韦陀棍法 (攻击 + 10 * 全属性 ) * 1 * 技能等级 * 技能等级
    call PassiveRangeDamage(u , ut , 'A001' , 500 , 10 , 1 , ATTR_ALL , "Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl" , 21 , 0)
    // 虾米神拳 (攻击 + 10 * 敏捷 ) * 1 * 技能等级 * 技能等级
    call PassiveRangeDamage(u , ut , 'A045' , 800 , 10 , 1 , ATTR_AGI , "Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl" , 25 , 25 + GetUnitAbilityLevel(u, 'A045') * 5)
    // 五雷咒 (攻击 + 10 * 智力 ) * 1 * 技能等级 * 技能等级
    call PassiveRangeDamage(u , ut , 'A048' , 700 , 10 , 1 , ATTR_INT , "Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl" , 18 , GetRandomInt(10, 100))
    // 乾坤一掷 (攻击 + 10 * 智力 ) * 250 * 技能等级 * 技能等级
    call PassiveRangeDamage(u , ut , 'A047' , 1000 , 10 , 250 , ATTR_INT , "Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl" , 28 , 30)
    // 丐帮入门棍法 (攻击 + 10 * 智力 ) * 3 * 技能等级 * 技能等级
    call PassiveRangeDamage(u , ut , 'A02K' , 400 , 10 , 3 , ATTR_INT , "Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl" , 27 , 15)
    // 武当剑法 (攻击 + 10 * 敏捷 ) * 15 * 技能等级 * 技能等级
    call PassiveRangeDamage(u , ut , 'A00K' , 50 , 10 , 15 , ATTR_AGI , "Abilities\\Spells\\Other\\Levelup\\LevelupCaster.mdl" , 26 , 25)
    // 全真剑法 (攻击 + 10 * 力量 ) * 20 * 技能等级 * 技能等级
    call PassiveRangeDamage(u , ut , 'A04N' , 800 , 10 , 20 , ATTR_STR , "Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl" , 26 , 40)
    
    // 天山折梅手 (攻击 + 10 * 敏捷 ) * 50 * 技能等级 * 技能等级
    call PassiveRangeDamage(u , ut , 'A098' , 800 , 10 , 50 , ATTR_AGI , "war3mapImported\\56.mdl" , 16 , 50)
    // 金顶绵掌 (攻击 + 10 * 敏捷 ) * 50 * 技能等级 * 技能等级
    call PassiveSingleDamage(u , ut , 'A01V' , 10 , 50 , ATTR_AGI , "Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl" , 19 , 40)
    // 空明拳 (攻击 + 10 * 敏捷 ) * 0.2 * 技能等级 * 技能等级
    call PassiveSingleDamage(u , ut , 'A04T' , 10 , 200 , ATTR_AGI , "Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl" , 100 , 6)
    call PassiveUseAbility(u , ut , 'A00N' , 'A00S' , 852119 , 18 , 50)
    call PassiveUseAbility(u , ut , 'A00V' , 'A00U' , 852106 , 25 , 25)
    call PassiveUseAbility(u , ut , 'A00X' , 'A00Y' , 852652 , 17 , 70)
    call PassiveUseAbility(u , ut , 'A027' , 'A028' , 852597 , 15 , 70)
    call PassiveUseAbility(u , ut , 'A02C' , 'A02A' , 852662 , 21 , 50)
    call PassiveUseAbility(u , ut , 'A02D' , 'A02B' , 852560 , 18 , 60)
    call PassiveUseAbility(u , ut , 'A02E' , 'A02A' , 852662 , 21 , 50)
    call PassiveUseAbility(u , ut , 'A02E' , 'A02B' , 852560 , 18 , 60)
    call PassiveUseAbility(u , ut , 'A02F' , 'A02G' , 852591 , 10 , 90)
    call PassiveUseAbility(u , ut , 'A02Q' , 'A02P' , 852128 , 20 , 50)
    call PassiveUseAbility(u , ut , 'A02T' , 'A02U' , 852587 , 25 , 0)
    call PassiveUseAbility(u , ut , 'A02V' , 'A02W' , 852126 , 23 , 50)
    call PassiveUseAbility(u , ut , 'A02Y' , 'A02X' , 852502 , 14 , 40)
    call PassiveUseAbility(u , ut , 'A034' , 'A035' , 852126 , 13 , 120)
    call PassiveUseAbility(u , ut , 'A037' , 'A036' , 852101 , 15 + GetUnitAbilityLevel(u, 'A037') * 5 , 30)
    call PassiveUseAbility(u , ut , 'A04O' , 'A051' , 852238 , 20 , 0)
    call PassiveUseAbility(u , ut , 'A04S' , 'A056' , 852226 , 14 , 45)
    if GetUnitAbilityLevel(u, 'A04P') > 0 and GetUnitState(u, UNIT_STATE_MANA) >= 50 and GetRandomInt(1, 100) <= 16 then
        set g=CreateGroup()
        call GroupEnumUnitsInRange(g, GetUnitX(u), GetUnitY(u), 1000, Condition(function IsEnemyAndAliveForAttack))
        call ForGroup(g, function HaoTian)
        call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) - 50)
        call DestroyGroup(g)
    endif
    if GetUnitAbilityLevel(u, 'A04Q') > 0 and GetUnitState(u, UNIT_STATE_MANA) >= 50 and GetRandomInt(1, 100) <= 17 then
        set k=1
        loop
            exitwhen k > GetUnitAbilityLevel(u, 'A04Q')
            set dummy=CreateUnit(p, 'h016', GetUnitX(u) + GetRandomReal(200, 400) * CosBJ(GetRandomReal(0, 360)), GetUnitY(u) + GetRandomReal(200, 400) * SinBJ(GetRandomReal(0, 360)), 270)
            call SetUnitVertexColorBJ(dummy, GetRandomReal(20., 80.), GetRandomReal(20., 80.), GetRandomReal(20., 80.), GetRandomReal(20., 60.))
            call SetUnitAbilityLevel(dummy, 'A04T', GetUnitAbilityLevel(u, 'A04T'))
            call UnitApplyTimedLife(dummy, 'BHwe', 5.)
            set k=k + 1
        endloop
    endif
    call PassiveUseAbility(u , ut , 'A049' , 'A04C' , 852226 , 19 , 60)
    if GetUnitAbilityLevel(u, 'A03Q') > 0 and GetRandomInt(1, 100) <= 3 * GetUnitAbilityLevel(u, 'A03Q') then
        call WanBuff(u , ut , 13)
    endif
    // 洗髓经 15%概率破防
    if GetUnitAbilityLevel(u, 'A03R') > 0 and GetRandomInt(1, 100) <= 3 * GetUnitAbilityLevel(u, 'A03R') then
        call WanBuff(u , ut , 9)
    endif
    // 装备加成破防概率
    if GetRandomInt(1, 100) <= LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_PIERCE_KEY) then
        call WanBuff(u , ut , 9)
    endif
    // 装备连击
    if GetRandomInt(1, 100) <= LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_COMBO_KEY) then
        call combo(u)
    endif
    // 小无相 连击
    if GetUnitAbilityLevel(u, 'A096') > 0 and GetRandomInt(1, 100) <= 3 * GetUnitAbilityLevel(u, 'A096') then
        call combo(u)
    endif
    if GetUnitAbilityLevel(u, 'A04B') > 0 and GetUnitState(u, UNIT_STATE_MANA) >= 30 and GetRandomInt(1, 100) <= 15 then
        set g=CreateGroup()
        call GroupEnumUnitsInRange(g, GetUnitX(u), GetUnitY(u), 1000, Condition(function IsEnemyAndAliveForAttack))
        call ForGroup(g, function QinLong)
        call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) - 30)
        call DestroyGroup(g)
    endif
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set u=null
    set ut=null
    set loc=null
    set loc2=null
    set p=null
    set dummy=null
    return false
endfunction
function UnitAttack takes nothing returns nothing
    local trigger t= CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(t, Condition(function UnitAttack_Conditions))
    set t=null
endfunction
function initNeutralStructures takes nothing returns nothing
    call SaveInteger(NHT, 'O11L', 0, 'I11L')
    call SaveInteger(NHT, 'O11H', 0, 'I11H')
    call SaveInteger(NHT, 'O109', 0, 'I109')
    call SaveInteger(NHT, 'O106', 0, 'I106')
    call SaveInteger(NHT, 'O10E', 0, 'I10E')
    call SaveInteger(NHT, 'O10G', 0, 'I10G')
    call SaveInteger(NHT, 'O11A', 0, 'I11A')
    call SaveInteger(NHT, 'O104', 0, 'I104')
    call SaveInteger(NHT, 'O11E', 0, 'I11E')
    call SaveInteger(NHT, 'O10V', 0, 'I10V')
    call SaveInteger(NHT, 'O117', 0, 'I117')
    call SaveInteger(NHT, 'O11I', 0, 'I11I')
    call SaveInteger(NHT, 'O10A', 0, 'I10A')
    call SaveInteger(NHT, 'O10H', 0, 'I10H')
    call SaveInteger(NHT, 'O10Z', 0, 'I10Z')
    call SaveInteger(NHT, 'O10M', 0, 'I10M')
    call SaveInteger(NHT, 'O10P', 0, 'I10P')
    call SaveInteger(NHT, 'O111', 0, 'I111')
    call SaveInteger(NHT, 'O102', 0, 'I102')
    call SaveInteger(NHT, 'O10J', 0, 'I10J')
    call SaveInteger(NHT, 'O101', 0, 'I101')
    call SaveInteger(NHT, 'O10U', 0, 'I10U')
    call SaveInteger(NHT, 'O116', 0, 'I116')
    call SaveInteger(NHT, 'O103', 0, 'I103')
    call SaveInteger(NHT, 'O11B', 0, 'I11B')
    call SaveInteger(NHT, 'O11C', 0, 'I11C')
    call SaveInteger(NHT, 'O11D', 0, 'I11D')
    call SaveInteger(NHT, 'O10W', 0, 'I10W')
    call SaveInteger(NHT, 'O118', 0, 'I118')
    call SaveInteger(NHT, 'O10B', 0, 'I10B')
    call SaveInteger(NHT, 'O11K', 0, 'I11K')
    call SaveInteger(NHT, 'O10R', 0, 'I10R')
    call SaveInteger(NHT, 'O113', 0, 'I113')
    call SaveInteger(NHT, 'O10I', 0, 'I10I')
    call SaveInteger(NHT, 'O10X', 0, 'I10X')
    call SaveInteger(NHT, 'O119', 0, 'I119')
    call SaveInteger(NHT, 'O10O', 0, 'I10O')
    call SaveInteger(NHT, 'O110', 0, 'I110')
    call SaveInteger(NHT, 'O10F', 0, 'I10F')
    call SaveInteger(NHT, 'O10Y', 0, 'I10Y')
    call SaveInteger(NHT, 'O10T', 0, 'I10T')
    call SaveInteger(NHT, 'O115', 0, 'I115')
    call SaveInteger(NHT, 'O10S', 0, 'I10S')
    call SaveInteger(NHT, 'O114', 0, 'I114')
    call SaveInteger(NHT, 'O105', 0, 'I105')
    call SaveInteger(NHT, 'O100', 0, 'I100')
    call SaveInteger(NHT, 'O108', 0, 'I108')
    call SaveInteger(NHT, 'O11J', 0, 'I11J')
    call SaveInteger(NHT, 'O11F', 0, 'I11F')
    call SaveInteger(NHT, 'O10Q', 0, 'I10Q')
    call SaveInteger(NHT, 'O112', 0, 'I112')
    call SaveInteger(NHT, 'O10C', 0, 'I10C')
    call SaveInteger(NHT, 'O10L', 0, 'I10L')
    call SaveInteger(NHT, 'O10D', 0, 'I10D')
    call SaveInteger(NHT, 'O10N', 0, 'I10N')
    call SaveInteger(NHT, 'O107', 0, 'I107')
    call SaveInteger(NHT, 'O11G', 0, 'I11G')
    call SaveInteger(NHT, 'O10K', 0, 'I10K')
    call SaveStr(NHT, 'O100', 1, "少林")
    call SaveStr(NHT, 'O101', 1, "少林")
    call SaveStr(NHT, 'O102', 1, "少林")
    call SaveStr(NHT, 'O103', 1, "少林")
    call SaveStr(NHT, 'O104', 1, "少林")
    call SaveStr(NHT, 'O105', 1, "少林")
    call SaveStr(NHT, 'O106', 1, "少林")
    call SaveStr(NHT, 'O107', 1, "少林")
    call SaveStr(NHT, 'O108', 1, "少林")
    call SaveStr(NHT, 'O109', 1, "武当")
    call SaveStr(NHT, 'O10A', 1, "武当")
    call SaveStr(NHT, 'O10B', 1, "武当")
    call SaveStr(NHT, 'O10C', 1, "武当")
    call SaveStr(NHT, 'O10D', 1, "武当")
    call SaveStr(NHT, 'O10E', 1, "武当")
    call SaveStr(NHT, 'O10F', 1, "武当")
    call SaveStr(NHT, 'O10G', 1, "武当")
    call SaveStr(NHT, 'O10H', 1, "武当")
    call SaveStr(NHT, 'O10I', 1, "武当")
    call SaveStr(NHT, 'O10J', 1, "峨眉")
    call SaveStr(NHT, 'O10K', 1, "峨眉")
    call SaveStr(NHT, 'O10L', 1, "峨眉")
    call SaveStr(NHT, 'O10M', 1, "峨眉")
    call SaveStr(NHT, 'O10N', 1, "峨眉")
    call SaveStr(NHT, 'O10O', 1, "峨眉")
    call SaveStr(NHT, 'O10P', 1, "峨眉")
    call SaveStr(NHT, 'O10Q', 1, "峨眉")
    call SaveStr(NHT, 'O10R', 1, "峨眉")
    call SaveStr(NHT, 'O10S', 1, "峨眉")
    call SaveStr(NHT, 'O10T', 1, "峨眉")
    call SaveStr(NHT, 'O10U', 1, "丐帮")
    call SaveStr(NHT, 'O10V', 1, "丐帮")
    call SaveStr(NHT, 'O10W', 1, "丐帮")
    call SaveStr(NHT, 'O10X', 1, "丐帮")
    call SaveStr(NHT, 'O10Y', 1, "丐帮")
    call SaveStr(NHT, 'O10Z', 1, "丐帮")
    call SaveStr(NHT, 'O110', 1, "丐帮")
    call SaveStr(NHT, 'O111', 1, "丐帮")
    call SaveStr(NHT, 'O112', 1, "丐帮")
    call SaveStr(NHT, 'O113', 1, "丐帮")
    call SaveStr(NHT, 'O114', 1, "丐帮")
    call SaveStr(NHT, 'O115', 1, "全真")
    call SaveStr(NHT, 'O116', 1, "全真")
    call SaveStr(NHT, 'O117', 1, "全真")
    call SaveStr(NHT, 'O118', 1, "全真")
    call SaveStr(NHT, 'O119', 1, "全真")
    call SaveStr(NHT, 'O11A', 1, "全真")
    call SaveStr(NHT, 'O11B', 1, "全真")
    call SaveStr(NHT, 'O11C', 1, "全真")
    call SaveStr(NHT, 'O11D', 1, "全真")
    call SaveStr(NHT, 'O11E', 1, "全真")
    call SaveStr(NHT, 'O11F', 1, "全真")
    call SaveStr(NHT, 'O11G', 1, "全真")
    call SaveStr(NHT, 'O11H', 1, "江湖")
    call SaveStr(NHT, 'O11I', 1, "江湖")
    call SaveStr(NHT, 'O11J', 1, "江湖")
    call SaveStr(NHT, 'O11K', 1, "江湖")
    call SaveStr(NHT, 'O11L', 1, "江湖")
endfunction
function getStructItem takes integer unitId returns integer
    return LoadInteger(NHT, unitId, 0)
endfunction
function UnitBuilt_Conditions takes nothing returns boolean
    local unit u= GetTriggerUnit()
    local player p= GetOwningPlayer(u)
    if GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_USED) > GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) then
        call RemoveUnit(u)
        call DisplayTextToPlayer(p, 0, 0, "|CFFFF0000人口达到上限，无法继续建造，物品归还至门派建造者")
        call UnitAddItemById(builder[1 + GetPlayerId(p)], (LoadInteger(NHT, (GetUnitTypeId(u)), 0))) // INLINED!!
    endif
    set p=null
    set u=null
    return false
endfunction
function UnitBuiltFinish_Conditions takes nothing returns boolean
    local unit u= GetTriggerUnit()
    local integer level= 0
    if not IsUnitType(u, UNIT_TYPE_HERO) or IsUnitType(u, UNIT_TYPE_STRUCTURE) then
        set level=LoadInteger(YDHT, (LoadInteger(NHT, (GetUnitTypeId(u)), 0)), TOWER_LEVEL_KEY) // INLINED!!
        if level == 1 then
            call SaveEffectHandle(YDHT, GetHandleId(u), $A0B0C0, AddSpecialEffect("war3mapImported\\pinzhi-lan.mdx", GetUnitX(u), GetUnitY(u)))
        elseif level == 2 then
            call SaveEffectHandle(YDHT, GetHandleId(u), $A0B0C0, AddSpecialEffect("war3mapImported\\pinzhi-zi.mdx", GetUnitX(u), GetUnitY(u)))
        elseif level == 3 then
            call SaveEffectHandle(YDHT, GetHandleId(u), $A0B0C0, AddSpecialEffect("war3mapImported\\pinzhi-cheng.mdx", GetUnitX(u), GetUnitY(u)))
        elseif level == 4 then
            call SaveEffectHandle(YDHT, GetHandleId(u), $A0B0C0, AddSpecialEffect("war3mapImported\\pinzhi-hong.mdx", GetUnitX(u), GetUnitY(u)))
        endif
    endif
    set u=null
    return false
endfunction
function UnitBuilt takes nothing returns nothing
    local trigger t= CreateTrigger()
    call initNeutralStructures()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_CONSTRUCT_START)
    call TriggerAddCondition(t, Condition(function UnitBuilt_Conditions))
    set t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
    call TriggerAddCondition(t, Condition(function UnitBuiltFinish_Conditions))
    set t=null
endfunction
function dealRealDamage takes real damage,real smallDamage,integer abilityId,unit u,unit ut,real w1,real w2,integer whichAttr returns nothing
    local unit uc= LoadUnitHandle(YDHT, GetHandleId(u), DUMMY_OWNER_KEY)
    local integer level= GetUnitAbilityLevel(uc, abilityId)
    local real baseDamage= 0
    local real realDamage= 0
    local real attack= 0
    local integer attr= 0
    if uc == null then
        set uc=u
    endif
    set attack=GetUnitState(uc, ConvertUnitState(0x15))
    // 主属性
    if whichAttr == 1 then
        set attr=GetHeroStr(uc, true)
    elseif whichAttr == 2 then
        set attr=GetHeroAgi(uc, true)
    elseif whichAttr == 3 then
        set attr=GetHeroInt(uc, true)
    elseif whichAttr == 4 then
        set attr=GetHeroStr(uc, true) + GetHeroAgi(uc, true) + GetHeroInt(uc, true)
    endif
    // 基础伤害
    set baseDamage=( attack + w1 * attr ) * w2
    set level=GetUnitAbilityLevel(uc, abilityId)
    set realDamage=baseDamage * level * level
    if damage == smallDamage and level > 0 then
        if abilityId == 'A00N' and level == 4 then
            set realDamage=realDamage * 2.5
        endif
        // if abilityId == 'A02M' then
        //     if level == 2 then
        //         set realDamage = 3000
        //     elseif level == 3 then
        //         set realDamage = 20000
        //     endif
        // endif
        if abilityId == 'A04V' and udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(u))] == 1 then
            call WanBuff(uc , ut , 3)
        endif
        if abilityId == 'A04O' and udg_jiuyang[1 + GetPlayerId(GetOwningPlayer(u))] == 1 then
            set realDamage=realDamage * 8
        endif
        call dealDamage(uc , ut , realDamage)
    endif
    set uc=null
endfunction
function calculateTotalDamage takes unit u,real damage returns nothing
    local integer t= getTowerInstance(u)
    local integer i= LoadInteger(YDHT, GetHandleId(u), DAMAGE_UNIT_KEY)
    if t != 0 then
        if i == 0 then
            set i=damageCounter + 1
            set damageCounter=damageCounter + 1
            call SaveInteger(YDHT, GetHandleId(u), DAMAGE_UNIT_KEY, i)
            call SaveUnitHandle(YDHT, DAMAGE_UNIT_KEY, i, u)
        endif
        call SaveReal(YDHT, DAMAGE_KEY, i, LoadReal(YDHT, DAMAGE_KEY, i) + damage)
    endif
endfunction
function UnitDamage_Conditions takes nothing returns boolean
    local unit u= GetEventDamageSource()
    local unit uc= null
    local unit ut= GetTriggerUnit()
    local player p= GetOwningPlayer(u)
    local integer i= 1 + GetPlayerId(p)
    local location loc= GetUnitLoc(u)
    local location loc2= GetUnitLoc(ut)
    local real damage= GetEventDamage()
    local trigger t= null
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
    // 达摩棍法 门派技能 (攻击 + 10 * 敏捷 ) * 1.6 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.11 , 'A002' , u , ut , 10 , 3.2 , ATTR_AGI)
    // 拈花擒拿手 (攻击 + 10 * 敏捷 ) * 10 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.12 , 'A007' , u , ut , 10 , 10 , ATTR_AGI)
    // 大力金刚指 (攻击 + 10 * 智力 ) * 60 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.13 , 'A01T' , u , ut , 10 , 60 , ATTR_INT)
    // 达摩八法 (攻击 + 10 * 力量 ) * 8 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.14 , 'A00F' , u , ut , 10 , 8 , ATTR_STR)
    // 龙象般若功 (攻击 + 10 * 智力 ) * 12 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.15 , 'A009' , u , ut , 10 , 12 , ATTR_INT)
    // 太极剑法 (攻击 + 10 * 全属性 ) * 0.2 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.2 , 'A00L' , u , ut , 10 , 0.2 , ATTR_ALL)
    // 铁画银钩 (攻击 + 10 * 智力 ) * 20 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.21 , 'A00N' , u , ut , 10 , 20 , ATTR_INT)
    // 虎爪绝户手 (攻击 + 10 * 敏捷 ) * 2.5 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.22 , 'A00X' , u , ut , 10 , 2.5 , ATTR_INT)
    // 天罡指穴法 (攻击 + 10 * 智力 ) * 1 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.3 , 'A022' , u , ut , 10 , 1 , ATTR_INT)
    // 峨眉入门剑法 (攻击 + 10 * 敏捷 ) * 0.2 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.31 , 'A01R' , u , ut , 10 , 0.2 , ATTR_AGI)
    call dealRealDamage(damage , 1.32 , 'A01R' , u , ut , 10 , 2 , ATTR_AGI)
    // 灭剑 (攻击 + 10 * 力量 ) * 2 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.34 , 'A02C' , u , ut , 10 , 2 , ATTR_STR)
    // 灭绝剑法 (攻击 + 10 * 力量 ) * 2 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.34 , 'A02E' , u , ut , 10 , 2 , ATTR_STR)
    // 绝剑 (攻击 + 10 * 敏捷 ) * 2.5 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.35 , 'A02D' , u , ut , 10 , 2.5 , ATTR_AGI)
    // 灭绝剑法 (攻击 + 10 * 敏捷 ) * 2.5 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.35 , 'A02E' , u , ut , 10 , 2.5 , ATTR_AGI)
    // 绝剑 (攻击 + 10 * 敏捷 ) * 10 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.36 , 'A02D' , u , ut , 10 , 10 , ATTR_AGI)
    // 灭绝剑法 (攻击 + 10 * 敏捷 ) * 10 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.36 , 'A02E' , u , ut , 10 , 10 , ATTR_AGI)
    // 截手九式 (攻击 + 10 * 力量 ) * 50 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.37 , 'A02F' , u , ut , 10 , 50 , ATTR_STR)
    // 太祖棍法 (攻击 + 10 * 全属性 ) * 1 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.4 , 'A02T' , u , ut , 10 , 1 , ATTR_ALL)
    // 太祖长拳 (攻击 + 10 * 智力 ) * 5 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.41 , 'A02I' , u , ut , 10 , 5 , ATTR_INT)
    // 铜锤手 (攻击 + 10 * 力量 ) * 100 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.43 , 'A02R' , u , ut , 10 , 100 , ATTR_STR)
    // 莲花掌 (攻击 + 10 * 力量 ) * 4 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.44 , 'A02M' , u , ut , 10 , 4 , ATTR_STR)
    // 青竹镖 (攻击 + 10 * 智力 ) * 20 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.45 , 'A02N' , u , ut , 10 , 20 , ATTR_INT)
    // 同归剑法 (攻击 + 10 * 全属性 ) * 0.75 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.5 , 'A04O' , u , ut , 10 , 0.75 , ATTR_ALL)
    // 昊天掌 (攻击 + 10 * 力量 ) * 10 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.51 , 'A04P' , u , ut , 10 , 10 , ATTR_STR)
    // 先天功 (攻击 + 10 * 敏捷 ) * 4 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.52 , 'A04W' , u , ut , 10 , 4 , ATTR_AGI)
    // 一气化三清 (攻击 + 10 * 智力 ) * 60 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.53 , 'A04V' , u , ut , 10 , 60 , ATTR_INT)
    // 后发先至 (攻击 + 10 * 智力 ) * 20 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.54 , 'A04S' , u , ut , 10 , 20 , ATTR_INT)
    // 三花聚顶 (攻击 + 10 * 力量 ) * 60 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.55 , 'A04Y' , u , ut , 10 , 60 , ATTR_STR)
    // 东方第一剑 (攻击 + 10 * 敏捷 ) * 40 * 技能等级 * 技能等级
    call dealRealDamage(damage , 1.56 , 'A04U' , u , ut , 10 , 40 , ATTR_AGI)
    // 玄冰咒 (攻击 + 10 * 智力 ) * 20 * 技能等级 * 技能等级
    call dealRealDamage(damage , 2. , 'A049' , u , ut , 10 , 20 , ATTR_INT)
    
    // 六合刀法 (攻击 + 10 * 敏捷 ) * 20 * 技能等级 * 技能等级
    if GetUnitTypeId(u) == 'e00E' then
        set uc=LoadUnitHandle(YDHT, GetHandleId(u), DUMMY_OWNER_KEY)
        set attack=GetUnitState(uc, ConvertUnitState(0x15))
        set attr=GetHeroAgi(uc, true)
        // 基础伤害
        set baseDamage=( attack + 10 * attr ) * 20
        call dealDamage(uc , ut , baseDamage * GetUnitAbilityLevel(uc, 'A02Q') * GetUnitAbilityLevel(uc, 'A02Q'))
    endif
    // 四象掌 (攻击 + 10 * 全属性 ) * 技能等级 * 技能等级
    if GetUnitTypeId(u) == 'e00I' then
        set uc=LoadUnitHandle(YDHT, GetHandleId(u), DUMMY_OWNER_KEY)
        set attack=GetUnitState(uc, ConvertUnitState(0x15))
        set attr=GetHeroInt(uc, true) + GetHeroStr(uc, true) + GetHeroAgi(uc, true)
        
        // 基础伤害
        set baseDamage=( attack + 10 * attr )
        call dealDamage(uc , ut , baseDamage * GetUnitAbilityLevel(uc, 'A03L') * GetUnitAbilityLevel(uc, 'A03L'))
    endif
    // call calculateTotalDamage(u, damage)
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set t=null
    set u=null
    set ut=null
    set uc=null
    set loc=null
    set loc2=null
    set p=null
    return false
endfunction
function UnitDamage takes nothing returns nothing
    local trigger t= CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger(t)
    call TriggerAddCondition(t, Condition(function UnitDamage_Conditions))
    set t=null
endfunction
function GetTuPu takes integer id returns integer
    if id == 'I00V' then
        return 'I01U'
    endif
    if id == 'I013' then
        return 'I01P'
    endif
    if id == 'I00F' then
        return 'I01S'
    endif
    if id == 'I00M' then
        return 'I01Q'
    endif
    if id == 'I012' then
        return 'I01L'
    endif
    if id == 'I00L' then
        return 'I01R'
    endif
    if id == 'I00U' then
        return 'I01O'
    endif
    if id == 'I00N' then
        return 'I01M'
    endif
    if id == 'I00C' then
        return 'I01K'
    endif
    if id == 'I00R' then
        return 'I01N'
    endif
    if id == 'I00W' then
        return 'I01T'
    endif
    return 0
endfunction
function npcRevive takes nothing returns nothing
    local timer t= GetExpiredTimer()
    local real x= LoadReal(YDHT, GetHandleId(t), 0)
    local real y= LoadReal(YDHT, GetHandleId(t), 1)
    local integer id= LoadInteger(YDHT, GetHandleId(t), 2)
    call CreateUnit(Player(5), id, x, y, 270)
    call PauseTimer(t)
    call DestroyTimer(t)
    set t=null
endfunction
function rewardLumber takes unit ut,player p,integer count returns nothing
    local player awardPlayer= null
    local integer i= 0
    if LoadInteger(YDHT, GetHandleId(ut), StringHash("owner")) != 0 then
        set awardPlayer=Player(LoadInteger(YDHT, GetHandleId(ut), StringHash("owner")) - 1)
    else
        set awardPlayer=p
    endif
    set i=1 + GetPlayerId(awardPlayer)
    if mapLevel[i] >= 5 then
        set count=count + 10
    endif
    if mapLevel[i] >= 18 then
        set count=count + 10
    endif
    call AdjustPlayerStateBJ(count, awardPlayer, PLAYER_STATE_RESOURCE_LUMBER)
    call DisplayTextToPlayer(awardPlayer, 0, 0, "|cff00ff00[系统]|r击杀BOSS,奖励珍稀币" + I2S(count) + "个")
    set awardPlayer=null
endfunction
function UnitDeath_Conditions takes nothing returns boolean
    local unit u= GetKillingUnit()
    local unit ut= GetTriggerUnit()
    local player p= GetOwningPlayer(u)
    local integer i= 1 + GetPlayerId(p)
    local location loc= null
    local timer t= null
    local integer j= 1
    local item it= null
    local integer gold= 0
    local real coeff= 1
    // 击杀单位时，如果凶手有对应的装备，触发对应的效果
    loop
        exitwhen j > 6
        set it=UnitItemInSlotBJ(u, j)
        if it != null then
            call equipKillingEffect(u , it)
        endif
        set j=j + 1
    endloop
    // 击杀单位获得功勋
    if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
        call SaveInteger(CONT_HT, GetHandleId(u), CONT_KEY, LoadInteger(CONT_HT, GetHandleId(u), CONT_KEY) + 1)
        // 内力上限加5
        call YDWEGeneralBounsSystemUnitSetBonus(u , 1 , 0 , CONT_MANA_ADDITION)
    endif
        
    // 击杀小怪获得金钱
    if GetOwningPlayer(ut) == Player(5) then
        if wave <= 20 then
            set gold=R2I(GetRandomReal(wave * 3, wave * 5))
        else
            set gold=GetRandomInt(60, 80)
        endif
        // QQ群福利 杀怪金钱+20%
        if qqTeamAward[i] then
            set coeff=coeff + 0.2
        endif
        // 地图等级到达4、10、23级，各增加10%杀怪金钱
        if mapLevel[i] >= 4 then
            set coeff=coeff + 0.1
        endif
        if mapLevel[i] >= 10 then
            set coeff=coeff + 0.1
        endif
        if mapLevel[i] >= 23 then
            set coeff=coeff + 0.1
        endif
        // 通关N7，杀怪金钱+10%
        if winDifficulty[i] >= 7 then
            set coeff=coeff + 0.1
        endif
        set gold=R2I(gold * coeff)
        call AdjustPlayerStateBJ(gold, p, PLAYER_STATE_RESOURCE_GOLD)
        call GroupRemoveUnit(attackerGroup, ut)
    endif
    // 击杀小怪随机掉落物品
    if GetOwningPlayer(ut) == Player(5) then
        if GetRandomInt(1, 5000) <= luck[i] then
            if LoadInteger(YDHT, GetHandleId(ut), StringHash("owner")) != 0 then
                set loc=GetRandomLocInRect(udg_drop_rect[LoadInteger(YDHT, GetHandleId(ut), StringHash("owner"))])
            else
                set loc=GetRandomLocInRect(udg_drop_rect[i])
            endif
            set luck[i]=luck[i] - 1
            set it=CreateItemLoc(getRandomDrop(), loc)
            call generateRandomAttr(it)
            call RemoveLocation(loc)
        endif
    endif
    if GetUnitTypeId(ut) == boss[1] then
        call rewardLumber(ut , p , 10)
    endif
    if GetUnitTypeId(ut) == boss[2] then
        call rewardLumber(ut , p , 20)
    endif
    if GetUnitTypeId(ut) == boss[3] then
        call rewardLumber(ut , p , 30)
    endif
    if GetUnitTypeId(ut) == boss[4] then
        call rewardLumber(ut , p , 40)
    endif
    if GetUnitTypeId(ut) == boss[5] then
        call rewardLumber(ut , p , 50)
    endif
    if GetUnitTypeId(ut) == survive_boss[1] then
        call AdjustPlayerStateBJ(wave / 9, p, PLAYER_STATE_RESOURCE_LUMBER)
        call DisplayTextToPlayer(p, 0, 0, "击杀BOSS,奖励珍稀币" + I2S(wave / 9) + "个")
    endif
    // 击杀达摩祖师,学会匹夫有责
    if GetUnitTypeId(ut) == 'H00E' then
        call SetPlayerTechResearched(p, 'R004', 1)
        call DisplayTextToPlayer(p, 0, 0, "恭喜击杀达摩祖师,学会匹夫有责")
    endif
    // 击杀冯默风获得随机神器图谱
    if GetUnitTypeId(ut) == 'H00I' then
        if LoadInteger(YDHT, GetHandleId(ut), StringHash("owner")) != 0 then
            set loc=GetRandomLocInRect(udg_drop_rect[LoadInteger(YDHT, GetHandleId(ut), StringHash("owner"))])
        else
            set loc=GetUnitLoc(ut)
        endif
        call CreateItemLoc(GetTuPu(random_shenqi[GetRandomInt(1, open_shenqi)]), loc)
        call RemoveLocation(loc)
    endif
    // 击杀黄裳获取随机绝内
    if GetUnitTypeId(ut) == 'U00U' then
        if LoadInteger(YDHT, GetHandleId(ut), StringHash("owner")) != 0 then
            set loc=GetRandomLocInRect(udg_drop_rect[LoadInteger(YDHT, GetHandleId(ut), StringHash("owner"))])
        else
            set loc=GetUnitLoc(ut)
        endif
        call CreateItemLoc(juenei[GetRandomInt(1, 5)], loc)
        call RemoveLocation(loc)
    endif
    // 击杀朱聪获得妙手空空手套
    if GetUnitTypeId(ut) == 'H00J' then
        if LoadInteger(YDHT, GetHandleId(ut), StringHash("owner")) != 0 then
            set loc=GetRandomLocInRect(udg_drop_rect[LoadInteger(YDHT, GetHandleId(ut), StringHash("owner"))])
        else
            set loc=GetUnitLoc(ut)
        endif
        call CreateItemLoc('I01J', loc)
        call DisplayTextToPlayer(p, 0, 0, "恭喜击杀朱聪，获得|cFF00FF00妙手空空手套|r")
        call RemoveLocation(loc)
    endif
    
    if GetUnitTypeId(ut) == 'U00Q' or GetUnitTypeId(ut) == 'U00R' or GetUnitTypeId(ut) == 'U00S' or GetUnitTypeId(ut) == 'U00T' then
        set t=CreateTimer()
        call SaveReal(YDHT, GetHandleId(t), 0, GetUnitX(ut))
        call SaveReal(YDHT, GetHandleId(t), 1, GetUnitY(ut))
        call SaveInteger(YDHT, GetHandleId(t), 2, GetUnitTypeId(ut))
        call TimerStart(t, 30, false, function npcRevive)
    endif
    // 清空哈希表
    call FlushChildHashtable(YDHT, GetHandleId(ut))
    call FlushChildHashtable(CONT_HT, GetHandleId(ut))
    call FlushChildHashtable(TOWER_ATTR_HT, GetHandleId(ut))
    call FlushChildHashtable(EQUIP_ATTR_HT, GetHandleId(ut))
    set u=null
    set ut=null
    set p=null
    set loc=null
    set t=null
    set it=null
    return false
endfunction
function UnitDeath takes nothing returns nothing
    local trigger t= CreateTrigger()
    local integer j= 1
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(t, Condition(function UnitDeath_Conditions))
    set t=null
endfunction
function IsXuanTieJian takes nothing returns boolean
    return IsUnitAlly(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function XuanTieJianFa takes nothing returns nothing
    local unit u= GetTriggerUnit()
    local unit ut= GetEnumUnit()
    local location loc= GetUnitLoc(ut)
    local player p= GetOwningPlayer(u)
    call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, 'A03H')
    call IssueTargetOrderById(bj_lastCreatedUnit, 852101, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    call RemoveLocation(loc)
    set u=null
    set ut=null
    set loc=null
    set p=null
endfunction
function IsLianHuaZhang takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(), GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function LianHuaZhang takes nothing returns nothing
    local unit u= GetTriggerUnit()
    local unit ut= GetEnumUnit()
    local location loc= GetUnitLoc(u)
    local player p= GetOwningPlayer(u)
    call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit, 'A02L')
    call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A02L', GetUnitAbilityLevel(u, 'A02M'))
    call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
    call IssueTargetOrderById(bj_lastCreatedUnit, 852487, ut)
    call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    call RemoveLocation(loc)
    set u=null
    set ut=null
    set loc=null
    set p=null
endfunction
function MinusAttack takes nothing returns nothing
    local timer t= GetExpiredTimer()
    call YDWEGeneralBounsSystemUnitSetBonus(LoadUnitHandle(YDHT, GetHandleId(t), 0) , 3 , 1 , LoadInteger(YDHT, GetHandleId(t), 1))
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set t=null
endfunction
function removeFake takes nothing returns nothing
    local timer t= GetExpiredTimer()
    local unit u= LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer abilityId= LoadInteger(YDHT, GetHandleId(t), 1)
    local integer fakeId= LoadInteger(YDHT, GetHandleId(t), 2)
    call UnitRemoveAbility(u, fakeId)
    call UnitAddAbility(u, abilityId)
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set u=null
    set t=null
endfunction
function addFake takes unit u,real time,integer abilityId,integer fakeId returns nothing
    local timer t= CreateTimer()
    call UnitRemoveAbility(u, abilityId)
    call UnitAddAbility(u, fakeId)
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveInteger(YDHT, GetHandleId(t), 1, abilityId)
    call SaveInteger(YDHT, GetHandleId(t), 2, fakeId)
    call TimerStart(t, time, false, function removeFake)
    set t=null
endfunction
function setFullMana takes nothing returns nothing
    local unit u= GetEnumUnit()
    call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MAX_MANA))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl", u, "origin"))
    set u=null
endfunction
function reduceCooldown takes nothing returns nothing
    local timer t= GetExpiredTimer()
    local unit u= LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer id= LoadInteger(YDHT, GetHandleId(t), 1)
    local integer percent= LoadInteger(YDHT, GetHandleId(t), 2)
    call EXSetAbilityState(EXGetUnitAbility(u, id), 1, EXGetAbilityState(EXGetUnitAbility(u, id), 1) * ( 100 - percent ) / 100)
    call DestroyTimer(t)
    set u=null
    set t=null
endfunction
function doFastPick takes nothing returns nothing
    call UnitAddItem(fastPickUnit, GetEnumItem())
endfunction
function fastPick takes unit u,real x,real y returns nothing
    local rect r= Rect(x - 600, y - 600, x + 600, y + 600)
    set fastPickUnit=u
	call EnumItemsInRect(r, null, function doFastPick)
	call RemoveRect(r)
	set r=null
endfunction
function fastDrop takes unit u,real x,real y returns nothing
 local integer i= 0
    local item it= null
	loop
		exitwhen i >= 6
		set it=UnitRemoveItemFromSlot(u, i)
        if it != null then
            call SetItemPosition(it, x, y)
        endif
		set i=i + 1
	endloop
	set u=null
    set it=null
endfunction
function addFoodTimer takes nothing returns nothing
    local timer t= GetExpiredTimer()
    local unit u= LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer level= LoadInteger(YDHT, GetHandleId(t), 1)
    if level < 5 then
        call UnitRemoveAbility(u, 'A09G')
        call UnitAddAbility(u, 'A09G')
        call SetUnitAbilityLevel(u, 'A09G', level + 1)
    else
        call UnitRemoveAbility(u, 'A09G')
    endif
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set t=null
    set u=null
endfunction
function addFood takes unit u returns nothing
    local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
    local integer level= GetUnitAbilityLevel(u, 'A09G')
    local timer t= CreateTimer()
    call SetPlayerState(GetOwningPlayer(u), PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(GetOwningPlayer(u), PLAYER_STATE_RESOURCE_FOOD_CAP) + 1)
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveInteger(YDHT, GetHandleId(t), 1, level)
    call TimerStart(t, 0, false, function addFoodTimer)
    set t=null
endfunction
function addLumberLevelTimer takes nothing returns nothing
    local timer t= GetExpiredTimer()
    local unit u= LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer level= LoadInteger(YDHT, GetHandleId(t), 1)
    if level < 20 then
        call UnitRemoveAbility(u, 'A09H')
        call UnitAddAbility(u, 'A09H')
        call SetUnitAbilityLevel(u, 'A09H', level + 1)
    else
        call UnitRemoveAbility(u, 'A09H')
    endif
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set t=null
    set u=null
endfunction
function addLumberLevel takes unit u returns nothing
    local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
    local integer level= GetUnitAbilityLevel(u, 'A09H')
    local timer t= CreateTimer()
    set lumberLevel[i]=lumberLevel[i] + 1
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveInteger(YDHT, GetHandleId(t), 1, level)
    call TimerStart(t, 0, false, function addLumberLevelTimer)
    set t=null
endfunction
function addGoldLevelTimer takes nothing returns nothing
    local timer t= GetExpiredTimer()
    local unit u= LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer level= LoadInteger(YDHT, GetHandleId(t), 1)
    if level < 20 then
        call UnitRemoveAbility(u, 'A09I')
        call UnitAddAbility(u, 'A09I')
        call SetUnitAbilityLevel(u, 'A09I', level + 1)
    else
        call UnitRemoveAbility(u, 'A09I')
    endif
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set t=null
    set u=null
endfunction
function addGoldLevel takes unit u returns nothing
    local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
    local integer level= GetUnitAbilityLevel(u, 'A09I')
    local timer t= CreateTimer()
    set goldLevel[i]=goldLevel[i] + 1
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveInteger(YDHT, GetHandleId(t), 1, level)
    call TimerStart(t, 0, false, function addGoldLevelTimer)
    set t=null
endfunction
function unlockDrawCardTimer takes nothing returns nothing
    local timer t= GetExpiredTimer()
    local unit u= LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer level= LoadInteger(YDHT, GetHandleId(t), 1)
    if level < 2 then
        call UnitRemoveAbility(u, 'A09J')
        call UnitAddAbility(u, 'A09J')
        call SetUnitAbilityLevel(u, 'A09J', level + 1)
    else
        call UnitRemoveAbility(u, 'A09J')
    endif
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set t=null
    set u=null
endfunction
function unlockDrawCard takes unit u returns nothing
    local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
    local integer level= GetUnitAbilityLevel(u, 'A09J')
    local timer t= CreateTimer()
    if level == 1 then
        call SetPlayerTechResearched(Player(i - 1), 'R00C', 1)
    elseif level == 2 then
        call SetPlayerTechResearched(Player(i - 1), 'R00D', 1)
    endif
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveInteger(YDHT, GetHandleId(t), 1, level)
    call TimerStart(t, 0, false, function unlockDrawCardTimer)
    set t=null
endfunction
function heroLevelUpTimer takes nothing returns nothing
    local timer t= GetExpiredTimer()
    local unit u= LoadUnitHandle(YDHT, GetHandleId(t), 0)
    local integer level= LoadInteger(YDHT, GetHandleId(t), 1)
    if level < 29 then
        call UnitRemoveAbility(u, 'A09K')
        call UnitAddAbility(u, 'A09K')
        call SetUnitAbilityLevel(u, 'A09K', level + 1)
    else
        call UnitRemoveAbility(u, 'A09K')
    endif
    call FlushChildHashtable(YDHT, GetHandleId(t))
    call PauseTimer(t)
    call DestroyTimer(t)
    set t=null
    set u=null
endfunction
function heroLevelUp takes unit u returns nothing
    local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
    local integer level= GetUnitAbilityLevel(u, 'A09K')
    local timer t= CreateTimer()
    call SetHeroLevel(u, GetHeroLevel(u) + 1, true)
    call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
    call SaveInteger(YDHT, GetHandleId(t), 1, level)
    call TimerStart(t, 0, false, function heroLevelUpTimer)
    set t=null
endfunction
function UseAbility_Conditions takes nothing returns boolean
    local integer id= GetSpellAbilityId()
    local unit u= GetTriggerUnit()
    local unit ut= GetSpellTargetUnit()
    local player p= GetOwningPlayer(u)
    local integer i= 1 + GetPlayerId(p)
    local location loc= GetUnitLoc(u)
    local location loc2= GetUnitLoc(ut)
    local location temp_loc= null
    local timer t= null
    local real r= 0
    local integer j= 0
    local real range= 500
    local real rand= 0
    local integer randInt= 0
    local group g= null
    local integer k= 0
    local integer returnGold= 0
    local integer level= 0
    // 装备加成缩减CD
    if LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_COOLDOWN_KEY) > 0 then
        set t=CreateTimer()
        call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
        call SaveInteger(YDHT, GetHandleId(t), 1, id)
        call SaveInteger(YDHT, GetHandleId(t), 2, LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_COOLDOWN_KEY))
        call TimerStart(t, 0.02, true, function reduceCooldown)
        set t=null
    endif
    // 装备重置CD
    if LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_RESET_CD_KEY) > 0 and GetRandomInt(1, 100) <= LoadInteger(TOWER_ATTR_HT, GetHandleId(u), TOWER_RESET_CD_KEY) then
        set t=CreateTimer()
        call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
        call SaveInteger(YDHT, GetHandleId(t), 1, id)
        call SaveInteger(YDHT, GetHandleId(t), 2, 100)
        call TimerStart(t, 0.02, true, function reduceCooldown)
        set t=null
    endif
        
    if id == 'A03Z' then
        set goldHit[i]=1
        call DisplayTextToPlayer(p, 0, 0, "|CFF99CC00智慧球发动了金币暴击，下一波到来时金币奖励随机翻倍")
    endif
    if id == 'A03Y' then
        set lumberHit[i]=1
        call DisplayTextToPlayer(p, 0, 0, "|CFF99CC00智慧球发动了珍稀币暴击，下一个BOSS到来时珍稀币奖励随机翻倍")
        call addFake(u , 600 , 'A03Y' , 'A04J')
    endif
    if id == 'A042' then
        set rand=GetRandomReal(.1, .2)
        set kungfuCoeff[i]=kungfuCoeff[i] + rand
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了增加武学伤害，所有武学伤害增加" + R2S(rand * 100) + "%（召唤类除外）")
        call addFake(u , 600 , 'A042' , 'A04M')
    endif
    if id == 'A041' then
        set randInt=GetRandomInt(3, 7)
        call SetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP, GetPlayerState(p, PLAYER_STATE_RESOURCE_FOOD_CAP) + randInt)
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了增加可用人口，增加了" + I2S(randInt) + "个可用人口（上限为100人口）")
        call addFake(u , 600 , 'A041' , 'A04K')
    endif
    if id == 'A040' then
        set randInt=GetRandomInt(5, 10)
        set luck[i]=luck[i] + randInt
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了人品爆发，增加了" + I2S(randInt) + "点人品")
    endif
    if id == 'A043' then
        if open_shenqi < SHEN_QI_NUM then
            set open_shenqi=open_shenqi + 1
            call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了开放随机神器，本局游戏额外开放神器" + GetObjectName(random_shenqi[open_shenqi]))
            call addFake(u , 1200 , 'A043' , 'A04L')
        else
            call DisplayTextToPlayer(p, 0, 0, "|CFFFF0000全部神器都已开放")
        endif
    endif
    if id == 'A05B' then
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS, 15, "|cff00ff00玩家" + GetPlayerName(Player(i - 1)) + "的智慧球发动了内力回复，所有塔的内力回满")
        set g=CreateGroup()
        call GroupEnumUnitsOfPlayer(g, p, null)
        call ForGroup(g, function setFullMana)
        call DestroyGroup(g)
    endif
    // 出售塔
    if id == 'A000' then
        
        set level=LoadInteger(YDHT, (LoadInteger(NHT, (GetUnitTypeId(u)), 0)), TOWER_LEVEL_KEY) // INLINED!!
        if level == 1 then
            set returnGold=500
        elseif level == 2 then
            set returnGold=1000
        elseif level == 3 then
            set returnGold=2000
        elseif level == 4 then
            set returnGold=5000
        endif
        set level=GetHeroLevel(u)
        // 英雄等级为1时，不返还金钱；英雄等级为2时，返还100；英雄等级为3时，返还300；英雄等级为4时，返还600；英雄等级为5时，返还1000；以此类推
        set returnGold=returnGold + level * ( level - 1 ) * 50
        // 只返还80%
        set returnGold=R2I(returnGold * 0.8)
        call AdjustPlayerStateBJ(returnGold, p, PLAYER_STATE_RESOURCE_GOLD)
        call CreateTextTagUnitBJ("+" + I2S(returnGold), u, 0, 11, 255, 215, 0, 30)
        call SetTextTagVelocityBJ(bj_lastCreatedTextTag, 400., GetRandomReal(80., 100.))
        call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl", loc))
        call YDWETimerDestroyTextTag(.65 , GetLastCreatedTextTag())
        call DestroyEffect(LoadEffectHandle(YDHT, GetHandleId(u), $A0B0C0))
        // 清空哈希表，避免Handle重用
        call FlushChildHashtable(YDHT, GetHandleId(u))
        call FlushChildHashtable(CONT_HT, GetHandleId(u))
        call FlushChildHashtable(TOWER_ATTR_HT, GetHandleId(u))
        call FlushChildHashtable(EQUIP_ATTR_HT, GetHandleId(u))
        call KillUnit(u)
        call RemoveUnit(u)
    endif
    if id == 'A02Z' then
        set j=0
        if GetUnitAbilityLevel(u, 'A009') >= 1 then
            set range=1800
        endif
        if GetUnitAbilityLevel(u, 'A029') >= 1 then
            set range=450 + 450 * GetUnitAbilityLevel(u, 'A029')
        endif
        if GetUnitAbilityLevel(u, 'A00W') >= 1 then
            set range=400 + 200 * GetUnitAbilityLevel(u, 'A00W')
        endif
        if GetUnitAbilityLevel(u, 'A00T') >= 1 then
            set range=400 + 200 * GetUnitAbilityLevel(u, 'A00T')
        endif
        if GetUnitAbilityLevel(u, 'A00A') >= 1 then
            set range=600 + 200 * GetUnitAbilityLevel(u, 'A00A')
        endif
        loop
            exitwhen j >= 24
            set temp_loc=PolarProjectionBJ(loc, range, 15 * j)
            call CreateNUnitsAtLocFacingLocBJ(1, 'e00F', p, temp_loc, loc)
            call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 4.)
            call RemoveLocation(temp_loc)
            set j=j + 1
        endloop
    endif
    if id == 'A002' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc2, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A003')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A003', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852593, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A01T' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A004')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A004', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852230, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 2.)
    endif
    if id == 'A007' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A008')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A008', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852480, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A00D' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A00C')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A00C', GetUnitAbilityLevel(u, id))
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852556)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 30.)
    endif
    if id == 'A00F' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A00E')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A00E', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852183)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A00L' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A00M')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A00M', GetUnitAbilityLevel(u, id))
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852488, loc2)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
    endif
    if id == 'A010' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A00Z')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A00Z', GetUnitAbilityLevel(u, id))
        call IssuePointOrderByIdLoc(bj_lastCreatedUnit, 852221, loc2)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A01R' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A01S')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A01S', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852527, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A03L' then
        call CreateNUnitsAtLoc(1, 'e00I', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A01U')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A01U', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852526)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A022' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A023')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A023', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852171, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A024' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A025')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A025', GetUnitAbilityLevel(u, id))
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852164)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A02I' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A02J')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A02J', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852096)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 5.)
    endif
    if id == 'A02M' then
        set g=CreateGroup()
        call GroupEnumUnitsInRangeOfLoc(g, loc, 800, Condition(function IsLianHuaZhang))
        call ForGroupBJ(g, function LianHuaZhang)
        call DestroyGroup(g)
    endif
    if id == 'A02N' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A02O')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A02O', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852095, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A02R' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A02S')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A02S', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852095, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A031' then
        if IsUnitType(ut, UNIT_TYPE_HERO) == false then
            set r=GetUnitState(ut, UNIT_STATE_MAX_LIFE) * .05 * GetUnitAbilityLevel(u, id)
            if udg_jiuyang[i] >= 1 then
                set r=r * 2
            endif
            call SetUnitState(ut, UNIT_STATE_LIFE, 1)
            call UnitDamageTarget(u, ut, $989680, true, false, ATTACK_TYPE_CHAOS, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
            call YDWEGeneralBounsSystemUnitSetBonus(u , 3 , 0 , R2I(r))
            set t=CreateTimer()
            call SaveUnitHandle(YDHT, GetHandleId(t), 0, u)
            call SaveInteger(YDHT, GetHandleId(t), 1, R2I(r))
            call TimerStart(t, 5., false, function MinusAttack)
            set t=null
        else
            call SetUnitState(u, UNIT_STATE_MANA, GetUnitState(u, UNIT_STATE_MANA) + 50)
        endif
    endif
    if id == 'A032' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A033')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A033', GetUnitAbilityLevel(u, id))
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852556)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 30.)
    endif
    if id == 'A04W' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A053')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A053', GetUnitAbilityLevel(u, id))
        call IssueImmediateOrderById(bj_lastCreatedUnit, 852127)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A04V' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A055')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A055', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852580, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A04Y' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A057')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A057', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852119, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A04U' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A058')
        call SetUnitAbilityLevel(bj_lastCreatedUnit, 'A058', GetUnitAbilityLevel(u, id))
        call SaveUnitHandle(YDHT, GetHandleId(bj_lastCreatedUnit), DUMMY_OWNER_KEY, u)
        call IssueTargetOrderById(bj_lastCreatedUnit, 852218, ut)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 10.)
    endif
    if id == 'A04X' then
        call CreateNUnitsAtLoc(1, 'e009', p, loc2, bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddAbility(bj_lastCreatedUnit, 'A05A')
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 5 + GetUnitAbilityLevel(u, id) * 5)
        call TerrainDeformationCraterBJ(15.8, false, loc2, 400., 400.)
        set k=1
        loop
            exitwhen k > 16
            call CreateNUnitsAtLocFacingLocBJ(1, 'e00J', p, PolarProjectionBJ(loc2, 350., 22.5 * k), loc2)
            call UnitApplyTimedLifeBJ(5 + GetUnitAbilityLevel(u, id) * 5, 'BTLF', bj_lastCreatedUnit)
            call DestroyEffect(AddSpecialEffectLocBJ(PolarProjectionBJ(loc2, 350., 22.5 * k), "Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl"))
            set k=k + 1
        endloop
    endif
    if id == 'A03G' then
        set g=CreateGroup()
        call GroupEnumUnitsInRangeOfLoc(g, loc, 800, Condition(function IsXuanTieJian))
        call ForGroupBJ(g, function XuanTieJianFa)
        call DestroyGroup(g)
    endif
    if id == 'A005' then
        call CreateNUnitsAtLoc(1, 'u00O', p, Location(- 252, 15), bj_UNIT_FACING)
        call ShowUnitHide(bj_lastCreatedUnit)
        call UnitAddItemById(bj_lastCreatedUnit, GetItemTypeId(GetSpellTargetItem()))
        call UnitDropItemTarget(bj_lastCreatedUnit, UnitItemInSlotBJ(bj_lastCreatedUnit, 1), gg_unit_o00A_0014)
        call UnitApplyTimedLife(bj_lastCreatedUnit, 'BHwe', 5.)
        call RemoveItem(GetSpellTargetItem())
        call PlaySoundOnUnitBJ(Ih, 100, u)
        call AddSpecialEffectTargetUnitBJ("overhead", u, "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
        call DestroyEffect(bj_lastCreatedEffect)
    endif
    if id == 'A03M' then
        // 相同武器二合一
        call SynItem(u , 'I00E' , 'I00B')
        call SynItem(u , 'I00B' , 'I00A')
        call SynItem(u , 'I00A' , 'I009')
        call SynItem(u , 'I009' , 'I00D')
        call SynItem(u , 'I00P' , 'I00O')
        call SynItem(u , 'I00O' , 'I006')
        call SynItem(u , 'I006' , 'I00Q')
        call SynItem(u , 'I00Q' , 'I007')
        call SynItem(u , 'I00G' , 'I00H')
        call SynItem(u , 'I00H' , 'I00I')
        call SynItem(u , 'I00I' , 'I00J')
        call SynItem(u , 'I00J' , 'I00K')
        call SynItem(u , 'I004' , 'I005')
        call SynItem(u , 'I005' , 'I008')
        call SynItem(u , 'I008' , 'I00S')
        call SynItem(u , 'I00S' , 'I00T')
        call SynItem(u , 'I00X' , 'I00Y')
        call SynItem(u , 'I00Y' , 'I00Z')
        call SynItem(u , 'I00Z' , 'I010')
        call SynItem(u , 'I010' , 'I011')
        // 相同级别不同武器三合一
        call synItemThree(u)
    endif
    // 开启智慧球智能模式
    if id == 'A08Z' then
        set wisdomBallSmartMode[i]=true
        call UnitRemoveAbility(u, 'A08Z')
        call UnitAddAbility(u, 'A090')
    endif
    // 关闭智慧球智能模式
    if id == 'A090' then
        set wisdomBallSmartMode[i]=false
        call UnitRemoveAbility(u, 'A090')
        call UnitAddAbility(u, 'A08Z')
    endif
    // 快速拾取
    if id == 'A091' then
        call fastPick(u , GetSpellTargetX() , GetSpellTargetY())
    endif
    // 快速丢弃
    if id == 'A092' then
        call fastDrop(u , GetSpellTargetX() , GetSpellTargetY())
    endif
    // 初级招募
    if id == 'A099' then
        call lowDrawCard(i)
    endif
    // 中级招募
    if id == 'A09A' then
        call normalDrawCard(i)
    endif
    // 高级招募
    if id == 'A09B' then
        call highDrawCard(i)
    endif
    // 占位卡1
    if id == 'A09C' then
        call getCard(i , 1)
    endif
    // 占位卡2
    if id == 'A09D' then
        call getCard(i , 2)
    endif
    // 占位卡3
    if id == 'A09E' then
        call getCard(i , 3)
    endif
    // 占位卡4
    if id == 'A09F' then
        call getCard(i , 4)
    endif
    // 增加可用人口
    if id == 'A09G' then
        call addFood(u)
    endif
    // 增加珍稀币等级
    if id == 'A09H' then
        call addLumberLevel(u)
    endif
    // 增加金币等级
    if id == 'A09I' then
        call addGoldLevel(u)
    endif
    // 解锁中/高级招募
    if id == 'A09J' then
        call unlockDrawCard(u)
    endif
    // 英雄升级
    if id == 'A09K' then
        call heroLevelUp(u)
    endif
    call RemoveLocation(loc)
    call RemoveLocation(loc2)
    set u=null
    set ut=null
    set p=null
    set loc=null
    set loc2=null
    set g=null
    set temp_loc=null
    set t=null
    return false
endfunction
function UseAbility takes nothing returns nothing
    local trigger t= CreateTrigger()
    local integer i= 1
    loop
        exitwhen i > 5
        set goldHit[i]=0
        set lumberHit[i]=0
        set kungfuCoeff[i]=0.
        set goldLevel[i]=0
        set lumberLevel[i]=0
        set i=i + 1
    endloop
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(t, Condition(function UseAbility_Conditions))
    set t=null
endfunction
function LearnKungfu takes unit u,item it returns nothing
    local integer abilityId= 0
    local integer i= 1
    if not IsUnitType(u, UNIT_TYPE_HERO) then
        call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|CFFFF0000只有英雄单位可以学习绝世武功")
        call UnitAddItemById(u, GetItemTypeId(it))
        return
    endif
    if GetUnitLevel(u) < 20 then
        call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|CFFFF0000只有20级以上才可以学习")
        call UnitAddItemById(u, GetItemTypeId(it))
        return
    endif
    set abilityId=LoadInteger(YDHT, GetItemTypeId(it), 65244)
    if GetUnitAbilityLevel(u, abilityId) > 0 then
        call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|CFFFF0000您已经拥有此武功了")
        call UnitAddItemById(u, GetItemTypeId(it))
        return
    endif
    loop
        exitwhen i >= 11
        if LoadInteger(YDHT, GetHandleId(u) * 2, i) == 0 then
            call SaveInteger(YDHT, GetHandleId(u) * 2, i, abilityId)
            call SaveInteger(YDHT, GetHandleId(u) * 3, i, 1)
            exitwhen true
        endif
        set i=i + 1
    endloop
    call UnitAddAbility(u, abilityId)
    if abilityId == 'A03P' then
        call UnitAddAbility(u, 'A03S')
    endif
    call DisplayTextToPlayer(GetOwningPlayer(u), 0, 0, "|CFF99CC00恭喜" + GetUnitName(u) + "学会" + GetObjectName(abilityId))
endfunction
function europaGift takes unit u returns nothing
    local integer i= 1 + GetPlayerId(GetOwningPlayer(u))
    local integer rand= GetRandomInt(1, 1000)
    local integer rand2= GetRandomInt(1, 100)
    local integer array x
    local integer array y
    local integer id
    local item it= null
    if rand == 666 and not hasWisdomBall[i] then
        set wisbomBall[i]=CreateUnit(Player(i - 1), 'o00R', wisdomBallX[i], wisdomBallY[i], 270)
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|CFF99CC00玩家" + GetPlayerName(Player(i - 1)) + "人品大爆发，欧皇大礼包开出了|CFF00FF00智慧之球")
        set hasWisdomBall[i]=true
    elseif rand < 300 then
        set id=getRandomSoulStone(i)
        call UnitAddItemById(u, id)
        call DisplayTimedTextToPlayer(GetOwningPlayer(u), 0, 0, 10, "|CFF99CC00恭喜获得|CFF00FF00" + GetObjectName(id))
    elseif rand < 600 then
        set id=getRandomDrop()
        set it=CreateItem(id, GetUnitX(u), GetUnitY(u))
        call generateRandomAttr(it)
        call UnitAddItem((u ), ( it)) // INLINED!!
        call DisplayTimedTextToPlayer(GetOwningPlayer(u), 0, 0, 10, "|CFF99CC00恭喜获得|CFF00FF00" + GetObjectName(id))
    elseif rand < 700 then
        set id=GetRandomInt(1, 4) * 10
        call addLumber(Player(i - 1) , id)
        call DisplayTimedTextToPlayer(GetOwningPlayer(u), 0, 0, 10, "|CFF99CC00恭喜获得|CFF00FF00" + I2S(id) + "个珍稀币")
    elseif rand < 998 then
        set id=GetRandomInt(1, 4000)
        call addGold(Player(i - 1) , id)
        call DisplayTimedTextToPlayer(GetOwningPlayer(u), 0, 0, 10, "|CFF99CC00恭喜获得|CFFFFFF00" + I2S(id) + "个金币")
    else
        set id=random_shenqi[GetRandomInt(1, open_shenqi)]
        set it=CreateItem(id, GetUnitX(u), GetUnitY(u))
        call generateRandomAttr(it)
        call UnitAddItem((u ), ( it)) // INLINED!!
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|CFF99CC00玩家" + GetPlayerName(GetOwningPlayer(u)) + "人品大爆发，欧皇大礼包开出了|CFF00FF00" + GetObjectName(id))
    endif
    if rand2 <= 10 then
        call UnitAddItemById(u, 'I061')
        call DisplayTimedTextToForce(GetPlayersAll(), 10, "|CFF99CC00玩家" + GetPlayerName(Player(i - 1)) + "人品大爆发，欧皇大礼包开出了|CFF00FF00再来一包")
    endif
    set it=null
endfunction
function UseItem_Conditions takes nothing returns boolean
    local unit u= GetTriggerUnit()
    local item it= GetManipulatedItem()
    local integer i= 0
    local integer j= 1 + GetPlayerId(GetOwningPlayer(u))
    local integer tw= getTowerInstance(u)
    local integer id= 0
    if GetItemTypeId(it) == 'I01B' then
        if GetUnitAbilityLevel(s__Tower_u[tw], 'A011') >= 6 then
            call UnitAddItemById(u, 'I01B')
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "物品栏已满")
        else
            call s__Tower_setItemNum(tw , GetUnitAbilityLevel(s__Tower_u[tw], 'A011') + 1)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "增加一个物品栏")
        endif
    endif
    if GetItemTypeId(it) == 'I02B' then
        call UnitAddItemById(u, low_towers[GetRandomInt(1, LOW_SIZE)])
    endif
    if GetItemTypeId(it) == 'I02C' then
        call UnitAddItemById(u, normal_towers[GetRandomInt(1, NORMAL_SIZE)])
    endif
    if GetItemTypeId(it) == 'I02D' then
        call UnitAddItemById(u, fine_towers[GetRandomInt(1, FINE_SIZE)])
    endif
    if GetItemTypeId(it) == 'I02E' then
        call UnitAddItemById(u, perfect_towers[GetRandomInt(1, PERFECT_SIZE)])
    endif
    if GetItemTypeId(it) == 'I02L' then
        set id=getRandomSoulStone(j)
        call UnitAddItemById(u, id)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffff9933恭喜鉴定成功，获得|r" + GetObjectName(id))
    endif
    if GetItemTypeId(it) == 'I014' then
        call SaveUnitHandle(YDHT, GetHandleId(wugong_practice[j]), j, u)
        set i=0
        loop
            exitwhen i >= 11
            set practice_wugong[i + 20 * j]=null
            if LoadInteger(YDHT, GetHandleId(u) * 3, i) < LoadInteger(YDHT, LoadInteger(YDHT, GetHandleId(u) * 2, i) * 3, 0) then
                set practice_wugong[i + 20 * j]=DialogAddButtonBJ(wugong_practice[j], GetAbilityName(LoadInteger(YDHT, GetHandleId(u) * 2, i)))
            endif
            set i=i + 1
        endloop
        set practice_wugong[11 + 20 * j]=DialogAddButtonBJ(wugong_practice[j], "取消")
        call DialogDisplay(GetOwningPlayer(u), wugong_practice[j], true)
    endif
    if GetItemTypeId(it) == 'I022' or GetItemTypeId(it) == 'I023' or GetItemTypeId(it) == 'I024' or GetItemTypeId(it) == 'I025' or GetItemTypeId(it) == 'I068' then
        call LearnKungfu(u , it)
    endif
    // 开启欧皇大礼包
    if GetItemTypeId(it) == 'I061' then
        call europaGift(u)
    endif
    // 易筋洗髓丹，使用后等级+1
    if GetItemTypeId(it) == 'I067' then
        if IsUnitType(u, UNIT_TYPE_HERO) then
            call SetHeroLevel(u, GetHeroLevel(u) + 1, true)
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffff0000只有英雄才能使用|r")
            call UnitAddItemById(u, 'I067')
        endif
    endif
    set u=null
    set it=null
    return false
endfunction
function Dialog_Actions takes nothing returns nothing
    local button bt= GetClickedButton()
    local integer j= 1 + GetPlayerId(GetTriggerPlayer())
    local unit u= LoadUnitHandle(YDHT, GetHandleId(wugong_practice[j]), j)
    local integer i= 20 * j
    local integer tw= getTowerInstance(u)
    set i=20 * j
    loop
        exitwhen i >= 11 + 20 * j
        if bt == practice_wugong[i] then
            call s__Tower_IncAbility(tw , i - 20 * j)
            call DialogClear(wugong_practice[j])
            return
        endif
        set i=i + 1
    endloop
    if bt == practice_wugong[11 + 20 * j] then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "已取消")
        call UnitAddItemById(u, 'I014')
    endif
    call DialogClear(wugong_practice[j])
    set u=null
    set bt=null
endfunction
function UseItem takes nothing returns nothing
    local trigger t= CreateTrigger()
    local integer i= 0
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_USE_ITEM)
    call TriggerAddCondition(t, Condition(function UseItem_Conditions))
    set t=CreateTrigger()
    set i=1
    loop
        exitwhen i >= 5
        set wugong_practice[i]=DialogCreate()
        call TriggerRegisterDialogEvent(t, wugong_practice[i])
        set i=i + 1
    endloop
    call TriggerAddAction(t, function Dialog_Actions)
    set t=null
endfunction
function hideOriginalTooltip takes nothing returns nothing
	call DzFrameSetPoint(DzFrameGetTooltip(), BOTTOMRIGHT, DzFrameGetCommandBarButton(0, 3), TOPRIGHT, 0.80, 0.60)
endfunction
function showOriginalTooltip takes nothing returns nothing
	call DzFrameSetPoint(DzFrameGetTooltip(), BOTTOMRIGHT, DzFrameGetCommandBarButton(0, 3), TOPRIGHT, 0.01, 0.035)
endfunction
function showTooltip takes nothing returns nothing
 local integer i= 1 + GetPlayerId(DzGetTriggerUIEventPlayer())
 local integer cont= 0
 local string str= ""
 local integer id= 0
 local integer j= 1
 local integer level= 0
 local integer gold= 0
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
			set j=1
			loop
				exitwhen j > 4
				set id=LoadInteger(CARD_HT, i, j)
				if DzGetTriggerUIEventFrame() == originalAbilityButton[j] and id != 0 then
					
					set level=LoadInteger(YDHT, id, TOWER_LEVEL_KEY)
					if level == 1 then
						set gold=500
					elseif level == 2 then
						set gold=1000
					elseif level == 3 then
						set gold=2000
					elseif level == 4 then
						set gold=5000
					endif
					call DzFrameSetText(s__Frame_id[(cardResultTooltipWidget[2])], (( EXExecuteScript("(require'jass.slk').item[" + I2S(id) + "].Name") ))) // INLINED!!
					call DzFrameSetText(s__Frame_id[(cardResultTooltipWidget[4])], (I2S(gold))) // INLINED!!
					call DzFrameSetText(s__Frame_id[(cardResultTooltipWidget[5])], (( EXExecuteScript("(require'jass.slk').item[" + I2S(id) + "].Ubertip") ))) // INLINED!!
					call DzFrameSetPoint(DzFrameGetTooltip(), BOTTOMRIGHT, DzFrameGetCommandBarButton(0, 3), TOPRIGHT, 0.80, 0.60) // INLINED!!
					call s__Frame_show(cardResultTooltipWidget[1])
				endif
				set j=j + 1
			endloop
		endif
		
	endif
endfunction
function hideTooltip takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		// if DzGetTriggerUIEventFrame() == originalAbilityButton[5] then
		call DzFrameSetPoint(DzFrameGetTooltip(), BOTTOMRIGHT, DzFrameGetCommandBarButton(0, 3), TOPRIGHT, 0.01, 0.035) // INLINED!!
		call s__Frame_hide(tooltipWidget[1])
		call s__Frame_hide(cardResultTooltipWidget[1])
		// endif
	endif
endfunction
function getWeaponRandomAttrTooltip takes item it returns string
 local integer attr= 0
 local integer value= 0
 local string str= ""
	if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY) != 0 then
		set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_TYPE_KEY)
		set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR1_VALUE_KEY)
		set str=str + affixTitle[attr] + "：" + affixDesc[attr]
		if value != 0 then
			if attr == 13 then
				set str=str + R2S(value * 0.1)
			else
				set str=str + I2S(value)
			endif
		endif
		if attr == 1 or attr == 6 or attr == 7 or attr == 8 or attr == 9 or attr == 10 or attr == 11 or attr == 13 or attr == 14 then
			set str=str + "%"
		endif
	endif
	if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY) != 0 then
		set str=str + "\n"
		set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_TYPE_KEY)
		set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR2_VALUE_KEY)
		set str=str + affixTitle[attr] + "：" + affixDesc[attr]
		if value != 0 then
			if attr == 13 then
				set str=str + R2S(value * 0.1)
			else
				set str=str + I2S(value)
			endif
		endif
		if attr == 1 or attr == 6 or attr == 7 or attr == 8 or attr == 9 or attr == 10 or attr == 11 or attr == 13 or attr == 14 then
			set str=str + "%"
		endif
	endif
	if LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY) != 0 then
		set str=str + "\n"
		set attr=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_TYPE_KEY)
		set value=LoadInteger(EQUIP_ATTR_HT, GetHandleId(it), EQUIP_ATTR3_VALUE_KEY)
		set str=str + affixTitle[attr] + "：" + affixDesc[attr]
		if value != 0 then
			if attr == 13 then
				set str=str + R2S(value * 0.1)
			else
				set str=str + I2S(value)
			endif
		endif
		if attr == 1 or attr == 6 or attr == 7 or attr == 8 or attr == 9 or attr == 10 or attr == 11 or attr == 13 or attr == 14 then
			set str=str + "%"
		endif
	endif
	return str
endfunction
function setWeaponTooltip takes item it returns nothing
 local integer id= GetItemTypeId(it)
 local string name= ( EXExecuteScript("(require'jass.slk').item[" + I2S(id) + "].Name") )
 local string art= ( EXExecuteScript("(require'jass.slk').item[" + I2S(id) + "].Art") )
 local string description= ( EXExecuteScript("(require'jass.slk').item[" + I2S(id) + "].Description") )
 local string randomAttr= getWeaponRandomAttrTooltip(it)
 local string abilityDesc= LoadStr(YDHT, id, EQUIP_ABILITY_KEY)
	call DzFrameSetTexture(s__Frame_id[(itemTooltipWidget[2])], (art), 0) // INLINED!!
	call DzFrameSetText(s__Frame_id[(itemTooltipWidget[3])], (name)) // INLINED!!
	call DzFrameSetText(s__Frame_id[(itemTooltipWidget[4])], (LoadStr(YDHT, id, EQUIP_LEVEL_KEY))) // INLINED!!
	call DzFrameSetText(s__Frame_id[(itemTooltipWidget[6])], (description)) // INLINED!!
	if randomAttr == "" or randomAttr == null then
		if abilityDesc == "" or abilityDesc == null then
			call s__Frame_hide(itemTooltipWidget[7])
			call s__Frame_hide(itemTooltipWidget[8])
			call s__Frame_hide(itemTooltipWidget[9])
			call s__Frame_hide(itemTooltipWidget[10])
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[6])], (BOTTOMRIGHT ), s__Frame_id[( s__Frame_getFrame(originalAbilityButton[4]) )], ( TOPRIGHT ), (( 0.01 )*1.0), (( 0.035)*1.0)) // INLINED!!
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[1])], (BOTTOMRIGHT ), s__Frame_id[( itemTooltipWidget[6] )], ( BOTTOMRIGHT ), (( 0.005 )*1.0), (( - 0.005)*1.0)) // INLINED!!
		else
			call s__Frame_hide(itemTooltipWidget[7])
			call s__Frame_hide(itemTooltipWidget[8])
			call s__Frame_show(itemTooltipWidget[9])
			call s__Frame_show(itemTooltipWidget[10])
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[10])], (BOTTOMRIGHT ), s__Frame_id[( s__Frame_getFrame(originalAbilityButton[4]) )], ( TOPRIGHT ), (( 0.01 )*1.0), (( 0.035)*1.0)) // INLINED!!
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[9])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[10] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[6])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[9] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[1])], (BOTTOMRIGHT ), s__Frame_id[( itemTooltipWidget[10] )], ( BOTTOMRIGHT ), (( 0.005 )*1.0), (( - 0.005)*1.0)) // INLINED!!
		endif
	else
		if abilityDesc == "" or abilityDesc == null then
			call s__Frame_show(itemTooltipWidget[7])
			call s__Frame_show(itemTooltipWidget[8])
			call s__Frame_hide(itemTooltipWidget[9])
			call s__Frame_hide(itemTooltipWidget[10])
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[8])], (BOTTOMRIGHT ), s__Frame_id[( s__Frame_getFrame(originalAbilityButton[4]) )], ( TOPRIGHT ), (( 0.01 )*1.0), (( 0.035)*1.0)) // INLINED!!
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[7])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[8] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[6])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[7] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[1])], (BOTTOMRIGHT ), s__Frame_id[( itemTooltipWidget[8] )], ( BOTTOMRIGHT ), (( 0.005 )*1.0), (( - 0.005)*1.0)) // INLINED!!
		else
			call s__Frame_show(itemTooltipWidget[7])
			call s__Frame_show(itemTooltipWidget[8])
			call s__Frame_show(itemTooltipWidget[9])
			call s__Frame_show(itemTooltipWidget[10])
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[10])], (BOTTOMRIGHT ), s__Frame_id[( s__Frame_getFrame(originalAbilityButton[4]) )], ( TOPRIGHT ), (( 0.01 )*1.0), (( 0.035)*1.0)) // INLINED!!
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[9])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[10] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[8])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[9] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[7])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[8] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[6])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[7] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
			call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[1])], (BOTTOMRIGHT ), s__Frame_id[( itemTooltipWidget[10] )], ( BOTTOMRIGHT ), (( 0.005 )*1.0), (( - 0.005)*1.0)) // INLINED!!
		endif
	endif
	call DzFrameSetText(s__Frame_id[(itemTooltipWidget[8])], (randomAttr)) // INLINED!!
	call DzFrameSetText(s__Frame_id[(itemTooltipWidget[10])], (abilityDesc)) // INLINED!!
	call s__Frame_show(itemTooltipWidget[1])
endfunction
function showItemTooltip takes nothing returns nothing
 local integer i= 1 + GetPlayerId(DzGetTriggerUIEventPlayer())
 local integer cont= 0
 local string str= ""
 local integer j= 1
 local item it= null
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		if unitInSelection[i] == null then
			return
		endif
		loop
			exitwhen j > 6
			if DzGetTriggerUIEventFrame() == originalItemButton[j] then
				set it=UnitItemInSlotBJ(unitInSelection[i], j)
				if it != null and isWeapon(it) then
					call DzFrameSetPoint(DzFrameGetTooltip(), BOTTOMRIGHT, DzFrameGetCommandBarButton(0, 3), TOPRIGHT, 0.80, 0.60) // INLINED!!
					call setWeaponTooltip(it)
					
				endif
			endif
			set j=j + 1
		endloop
	endif
	set it=null
endfunction
function hideItemTooltip takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call DzFrameSetPoint(DzFrameGetTooltip(), BOTTOMRIGHT, DzFrameGetCommandBarButton(0, 3), TOPRIGHT, 0.01, 0.035) // INLINED!!
		call s__Frame_hide(itemTooltipWidget[1])
	endif
endfunction
function showTowerTooltip takes nothing returns nothing
 local integer i= 1 + GetPlayerId(DzGetTriggerUIEventPlayer())
 local real damageAddition= 0
 local integer criticalRate= 0
 local real criticalTimes= 0
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		if unitInSelection[i] == null or IsBuilder(GetUnitTypeId(unitInSelection[i])) or GetUnitTypeId(unitInSelection[i]) == 'o00R' or GetUnitTypeId(unitInSelection[i]) == 'o00N' or GetOwningPlayer(unitInSelection[i]) != DzGetTriggerUIEventPlayer() then
			return
		endif
		set damageAddition=kungfuCoeff[i]
		// 每点功勋增加0.5%伤害
		if LoadInteger(CONT_HT, GetHandleId(unitInSelection[i]), CONT_KEY) > 0 then
			set damageAddition=damageAddition + LoadInteger(CONT_HT, GetHandleId(unitInSelection[i]), CONT_KEY) * 0.002
		endif
		// 北冥神功 伤害增加40%
		if GetUnitAbilityLevel(unitInSelection[i], 'A03N') >= 1 then
			set damageAddition=damageAddition + 0.05 + 0.15 * GetUnitAbilityLevel(unitInSelection[i], 'A03N')
		endif
	
		// 太玄神功 伤害增加50%
		if GetUnitAbilityLevel(unitInSelection[i], 'A03P') >= 1 then
			set damageAddition=damageAddition + 0.15 + 0.15 * GetUnitAbilityLevel(unitInSelection[i], 'A03P')
		endif
	
		// 蛤蟆功 伤害增加40%
		if GetUnitAbilityLevel(unitInSelection[i], 'A03Q') >= 1 then
			set damageAddition=damageAddition + 0.05 + 0.15 * GetUnitAbilityLevel(unitInSelection[i], 'A03Q')
		endif
	
		// 洗髓经 伤害增加50%
		if GetUnitAbilityLevel(unitInSelection[i], 'A03R') >= 1 then
			set damageAddition=damageAddition + 0.15 + 0.15 * GetUnitAbilityLevel(unitInSelection[i], 'A03R')
		endif
		// 小无相功 伤害增加50%
		if GetUnitAbilityLevel(unitInSelection[i], 'A096') >= 1 then
			set damageAddition=damageAddition + 0.15 + 0.15 * GetUnitAbilityLevel(unitInSelection[i], 'A096')
		endif
		// 塔的伤害加成
		if LoadReal(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_DAMAGE_KEY) > 0 then
			set damageAddition=damageAddition + LoadReal(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_DAMAGE_KEY)
		endif
		// 地图等级大于等于6级，伤害增加5%
		if mapLevel[i] >= 6 then
			set damageAddition=damageAddition + 0.05
		endif
		
		// 地图等级大于等于20级，伤害增加10%
		if mapLevel[i] >= 20 then
			set damageAddition=damageAddition + 0.1
		endif
		// 通关N1，伤害增加10%
		if winDifficulty[i] >= 1 then
			set damageAddition=damageAddition + 0.1
		endif
		// 通关N5，伤害增加10%
		if winDifficulty[i] >= 5 then
			set damageAddition=damageAddition + 0.1
		endif
		// 通关N10，伤害增加10%
		if winDifficulty[i] >= 10 then
			set damageAddition=damageAddition + 0.1
		endif
		set criticalRate=5 + LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_CRITICAL_RATE_KEY)
		set criticalTimes=2 + LoadReal(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_CRITICAL_ADDITION_KEY)
		if GetUnitAbilityLevel(unitInSelection[i], 'A03N') > 0 then
			set criticalRate=criticalRate + 5 * GetUnitAbilityLevel(unitInSelection[i], 'A03N')
			set criticalTimes=criticalTimes + 0.3 + 0.2 * GetUnitAbilityLevel(unitInSelection[i], 'A03N')
		endif
	
		call DzFrameSetText(s__Frame_id[(towerTooltipWidget[3])], ("命中：" + I2S(100 + LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_HIT_KEY) + 100 * GetPlayerTechCountSimple('R00A', GetOwningPlayer(unitInSelection[i]))))) // INLINED!!
		call DzFrameSetText(s__Frame_id[(towerTooltipWidget[4])], ("武学暴击率：" + I2S(criticalRate) + "%")) // INLINED!!
		call DzFrameSetText(s__Frame_id[(towerTooltipWidget[5])], ("暴击倍数：" + R2S(criticalTimes))) // INLINED!!
		call DzFrameSetText(s__Frame_id[(towerTooltipWidget[6])], ("内力回复：" + I2S(LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_MANA_RECOVERY_KEY)))) // INLINED!!
		call DzFrameSetText(s__Frame_id[(towerTooltipWidget[7])], ("伤害加成：" + R2S(damageAddition * 100) + "%")) // INLINED!!
		call DzFrameSetText(s__Frame_id[(towerTooltipWidget[8])], ("连击率：" + I2S(LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_COMBO_KEY)) + "%")) // INLINED!!
		call DzFrameSetText(s__Frame_id[(towerTooltipWidget[9])], ("破防率：" + I2S(LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_PIERCE_KEY)) + "%")) // INLINED!!
		call DzFrameSetText(s__Frame_id[(towerTooltipWidget[10])], ("冷却缩减：" + I2S(LoadInteger(TOWER_ATTR_HT, GetHandleId(unitInSelection[i]), TOWER_COOLDOWN_KEY)) + "%")) // INLINED!!
		call s__Frame_show(towerTooltipWidget[1])
	endif
endfunction
function hideTowerTooltip takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call s__Frame_hide(towerTooltipWidget[1])
	endif
endfunction
function toggleTopMenuSelected takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call DzFrameSetAlpha(s__Frame_id[(topMenuSelected[1])], (80 + 160 - (DzFrameGetAlpha(s__Frame_id[(topMenuSelected[1])])))) // INLINED!!
	endif
endfunction
function toggleSavePopup takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call s__Frame_toggle(popupWidget[1])
	endif
endfunction
function showShopIcons takes nothing returns nothing
	call s__Frame_show(shopWidget[1])
	call s__Frame_show(shopWidget[2])
	call s__Frame_show(shopWidget[3])
	call s__Frame_show(shopWidget[4])
	call s__Frame_show(shopWidget[5])
endfunction
function hideShopIcons takes nothing returns nothing
	call s__Frame_hide(shopWidget[1])
	call s__Frame_hide(shopWidget[2])
	call s__Frame_hide(shopWidget[3])
	call s__Frame_hide(shopWidget[4])
	call s__Frame_hide(shopWidget[5])
endfunction
function jumpToMapAward takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[1])], (80)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[2])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[3])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[4])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[5])], (0)) // INLINED!!
		call DzFrameSetTexture(s__Frame_id[(popupRightWidget[1])], ("war3mapImported\\ui\\mapAward.tga"), 0) // INLINED!!
		call hideShopIcons()
	endif
endfunction
function jumpToLevelAward takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[1])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[2])], (80)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[3])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[4])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[5])], (0)) // INLINED!!
		call DzFrameSetTexture(s__Frame_id[(popupRightWidget[1])], ("war3mapImported\\ui\\levelAward.tga"), 0) // INLINED!!
		call hideShopIcons()
	endif
endfunction
function jumpToWinAward takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[1])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[2])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[3])], (80)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[4])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[5])], (0)) // INLINED!!
		call DzFrameSetTexture(s__Frame_id[(popupRightWidget[1])], ("war3mapImported\\ui\\winAward.tga"), 0) // INLINED!!
		call hideShopIcons()
	endif
endfunction
function jumpToAchievement takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[1])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[2])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[3])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[4])], (80)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[5])], (0)) // INLINED!!
		call DzFrameSetTexture(s__Frame_id[(popupRightWidget[1])], ("war3mapImported\\ui\\achievement.tga"), 0) // INLINED!!
		call hideShopIcons()
	endif
endfunction
function jumpToMall takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[1])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[2])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[3])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[4])], (0)) // INLINED!!
		call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[5])], (80)) // INLINED!!
		call DzFrameSetTexture(s__Frame_id[(popupRightWidget[1])], ("war3mapImported\\ui\\mall.tga"), 0) // INLINED!!
		call showShopIcons()
	endif
endfunction
function showShopTooltip takes nothing returns nothing
 local integer i= 1 + GetPlayerId(DzGetTriggerUIEventPlayer())
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		if DzGetTriggerUIEventFrame() == s__Frame_id[shopButton[1]] then
			call DzFrameSetPoint(s__Frame_id[(shopTooltipWidget[4])], (BOTTOM ), s__Frame_id[( shopWidget[1] )], ( TOP ), (( 0 )*1.0), (( 0.01)*1.0)) // INLINED!!
			call DzFrameSetText(s__Frame_id[(shopTooltipWidget[2])], ("|cFF00FF00中型金币礼包|r")) // INLINED!!
			call DzFrameSetText(s__Frame_id[(shopTooltipWidget[3])], ("效果：15波后地图中间NPC领取中型金币资源包")) // INLINED!!
			if middle_gold_flag[i] == 1 then
				call DzFrameSetText(s__Frame_id[(shopTooltipWidget[4])], ("解锁状态：|cff00ff00已解锁|r")) // INLINED!!
			else
				call DzFrameSetText(s__Frame_id[(shopTooltipWidget[4])], ("解锁状态：|cffff0000未解锁|r")) // INLINED!!
			endif
			call s__Frame_show(shopTooltipWidget[1])
		endif
		if DzGetTriggerUIEventFrame() == s__Frame_id[shopButton[2]] then
			call DzFrameSetPoint(s__Frame_id[(shopTooltipWidget[4])], (BOTTOM ), s__Frame_id[( shopWidget[2] )], ( TOP ), (( 0 )*1.0), (( 0.01)*1.0)) // INLINED!!
			call DzFrameSetText(s__Frame_id[(shopTooltipWidget[2])], ("|cFF00FF00中型珍稀币礼包|r")) // INLINED!!
			call DzFrameSetText(s__Frame_id[(shopTooltipWidget[3])], ("效果：15波后地图中间NPC领取中型珍稀币资源包")) // INLINED!!
			if middle_lumber_flag[i] == 1 then
				call DzFrameSetText(s__Frame_id[(shopTooltipWidget[4])], ("解锁状态：|cff00ff00已解锁|r")) // INLINED!!
			else
				call DzFrameSetText(s__Frame_id[(shopTooltipWidget[4])], ("解锁状态：|cffff0000未解锁|r")) // INLINED!!
			endif
			call s__Frame_show(shopTooltipWidget[1])
		endif
		if DzGetTriggerUIEventFrame() == s__Frame_id[shopButton[3]] then
			call DzFrameSetPoint(s__Frame_id[(shopTooltipWidget[4])], (BOTTOM ), s__Frame_id[( shopWidget[3] )], ( TOP ), (( 0 )*1.0), (( 0.01)*1.0)) // INLINED!!
			call DzFrameSetText(s__Frame_id[(shopTooltipWidget[2])], ("|cFF00FF00首充礼包|r")) // INLINED!!
			call DzFrameSetText(s__Frame_id[(shopTooltipWidget[3])], ("效果：每秒金币+3 开局送三个欧皇大礼包")) // INLINED!!
			if europe_flag[i] == 1 then
				call DzFrameSetText(s__Frame_id[(shopTooltipWidget[4])], ("解锁状态：|cff00ff00已解锁|r")) // INLINED!!
			else
				call DzFrameSetText(s__Frame_id[(shopTooltipWidget[4])], ("解锁状态：|cffff0000未解锁|r")) // INLINED!!
			endif
			call s__Frame_show(shopTooltipWidget[1])
		endif
		if DzGetTriggerUIEventFrame() == s__Frame_id[shopButton[4]] then
			call DzFrameSetPoint(s__Frame_id[(shopTooltipWidget[4])], (BOTTOM ), s__Frame_id[( shopWidget[4] )], ( TOP ), (( 0 )*1.0), (( 0.01)*1.0)) // INLINED!!
			call DzFrameSetText(s__Frame_id[(shopTooltipWidget[2])], ("|cFF00FF00智慧球|r")) // INLINED!!
			call DzFrameSetText(s__Frame_id[(shopTooltipWidget[3])], ("效果：开局在地图上解锁智慧球")) // INLINED!!
			if wisdom_ball_flag[i] == 1 then
				call DzFrameSetText(s__Frame_id[(shopTooltipWidget[4])], ("解锁状态：|cff00ff00已解锁|r")) // INLINED!!
			else
				call DzFrameSetText(s__Frame_id[(shopTooltipWidget[4])], ("解锁状态：|cffff0000未解锁|r")) // INLINED!!
			endif
			call s__Frame_show(shopTooltipWidget[1])
		endif
		if DzGetTriggerUIEventFrame() == s__Frame_id[shopButton[5]] then
			call DzFrameSetPoint(s__Frame_id[(shopTooltipWidget[4])], (BOTTOM ), s__Frame_id[( shopWidget[5] )], ( TOP ), (( 0 )*1.0), (( 0.01)*1.0)) // INLINED!!
			call DzFrameSetText(s__Frame_id[(shopTooltipWidget[2])], ("|cFF00FF00敬请期待|r")) // INLINED!!
			call DzFrameSetText(s__Frame_id[(shopTooltipWidget[3])], ("更多福利敬请期待")) // INLINED!!
			call DzFrameSetText(s__Frame_id[(shopTooltipWidget[4])], ("感谢支持")) // INLINED!!
			call s__Frame_show(shopTooltipWidget[1])
		endif
	endif
endfunction
function hideShopTooltip takes nothing returns nothing
	if DzGetTriggerUIEventPlayer() == GetLocalPlayer() then
		call s__Frame_hide(shopTooltipWidget[1])
	endif
endfunction
function drawUI_Conditions takes nothing returns boolean
 local integer j= 1
	set exchangeIconPath[1]="ReplaceableTextures\\CommandButtons\\BTNExchangeOne.blp"
	set exchangeIconPath[2]="ReplaceableTextures\\CommandButtons\\BTNExchangeTwo.blp"
	set exchangeIconPath[3]="ReplaceableTextures\\CommandButtons\\BTNExchangeThree.blp"
	set exchangeIconPath[4]="ReplaceableTextures\\CommandButtons\\BTNExchangeFour.blp"
	set exchangeIconPath[5]="ReplaceableTextures\\CommandButtons\\BTNExchangeFive.blp"
	set exchangeDisIconPath[1]="ReplaceableTextures\\CommandButtonsDisabled\\DISBTNExchangeOne.blp"
	set exchangeDisIconPath[2]="ReplaceableTextures\\CommandButtonsDisabled\\DISBTNExchangeTwo.blp"
	set exchangeDisIconPath[3]="ReplaceableTextures\\CommandButtonsDisabled\\DISBTNExchangeThree.blp"
	set exchangeDisIconPath[4]="ReplaceableTextures\\CommandButtonsDisabled\\DISBTNExchangeFour.blp"
	set exchangeDisIconPath[5]="ReplaceableTextures\\CommandButtonsDisabled\\DISBTNExchangeFive.blp"
	set originalAbilityButton[1]=DzFrameGetCommandBarButton(0, 0)
	set originalAbilityButton[2]=DzFrameGetCommandBarButton(0, 1)
	set originalAbilityButton[3]=DzFrameGetCommandBarButton(0, 2)
	set originalAbilityButton[4]=DzFrameGetCommandBarButton(0, 3)
	set originalAbilityButton[5]=DzFrameGetCommandBarButton(1, 0)
	set originalAbilityButton[6]=DzFrameGetCommandBarButton(1, 1)
	set originalAbilityButton[7]=DzFrameGetCommandBarButton(1, 2)
	set originalAbilityButton[8]=DzFrameGetCommandBarButton(1, 3)
	set originalAbilityButton[9]=DzFrameGetCommandBarButton(2, 0)
	set originalAbilityButton[10]=DzFrameGetCommandBarButton(2, 1)
	set originalAbilityButton[11]=DzFrameGetCommandBarButton(2, 2)
	set originalAbilityButton[12]=DzFrameGetCommandBarButton(2, 3)
	set originalItemButton[1]=DzFrameGetItemBarButton(0)
	set originalItemButton[2]=DzFrameGetItemBarButton(1)
	set originalItemButton[3]=DzFrameGetItemBarButton(2)
	set originalItemButton[4]=DzFrameGetItemBarButton(3)
	set originalItemButton[5]=DzFrameGetItemBarButton(4)
	set originalItemButton[6]=DzFrameGetItemBarButton(5)
	call DzLoadToc("ui\\custom.toc")
	
	// 功勋的说明
	set tooltipWidget[1]=s__Frame_newTips0(GUI , "tipbox")
	call s__Frame_hide(tooltipWidget[1])
	
	set tooltipWidget[2]=s__Frame_newText1(tooltipWidget[1] , "|cFF00FF00功勋|r" , "TXA14")
	call DzFrameSetSize(s__Frame_id[(tooltipWidget[2])], ((0.22 )*1.0), (( 0)*1.0)) // INLINED!!
	set tooltipWidget[3]=s__Frame_newText1(tooltipWidget[1] , "杀敌数：100\n内力上限+200\n伤害+50%" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(tooltipWidget[3])], ((0.22 )*1.0), (( 0)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(tooltipWidget[3])], (BOTTOMRIGHT ), s__Frame_id[( s__Frame_getFrame(originalAbilityButton[4]) )], ( TOPRIGHT ), (( 0.01 )*1.0), (( 0.035)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(tooltipWidget[2])], (BOTTOM ), s__Frame_id[( tooltipWidget[3] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(tooltipWidget[1])], (TOPLEFT ), s__Frame_id[( tooltipWidget[2] )], ( TOPLEFT ), (( - 0.005 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(tooltipWidget[1])], (BOTTOMRIGHT ), s__Frame_id[( tooltipWidget[3] )], ( BOTTOMRIGHT ), (( 0.005 )*1.0), (( - 0.005)*1.0)) // INLINED!!
	set j=1
	loop
		exitwhen j > 12
		call DzFrameSetScriptByCode(originalAbilityButton[j], FRAME_MOUSE_ENTER, function showTooltip, false)
		call DzFrameSetScriptByCode(originalAbilityButton[j], FRAME_MOUSE_LEAVE, function hideTooltip, false)
		set j=j + 1
	endloop
	// 物品的说明
	set itemTooltipWidget[1]=s__Frame_newTips0(GUI , "tipbox")
	call s__Frame_hide(itemTooltipWidget[1])
	set itemTooltipWidget[2]=s__Frame_newImage1(itemTooltipWidget[1] , "ReplaceableTextures\\CommandButtons\\BTNdalibao.blp" , 0.04 , 0.04)
	set itemTooltipWidget[3]=s__Frame_newText1(itemTooltipWidget[1] , "物品名称" , "TXA14")
	set itemTooltipWidget[4]=s__Frame_newText1(itemTooltipWidget[1] , "普通" , "TXA11")
	set itemTooltipWidget[5]=s__Frame_newText1(itemTooltipWidget[1] , "|cffff6800【固定属性】|r" , "TXA12")
	call DzFrameSetSize(s__Frame_id[(itemTooltipWidget[5])], ((0.2 )*1.0), (( 0)*1.0)) // INLINED!!
	set itemTooltipWidget[6]=s__Frame_newText1(itemTooltipWidget[1] , "固定属性内容" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(itemTooltipWidget[6])], ((0.2 )*1.0), (( 0)*1.0)) // INLINED!!
	set itemTooltipWidget[7]=s__Frame_newText1(itemTooltipWidget[1] , "|cffff6800【随机属性】|r" , "TXA12")
	call DzFrameSetSize(s__Frame_id[(itemTooltipWidget[7])], ((0.2 )*1.0), (( 0)*1.0)) // INLINED!!
	set itemTooltipWidget[8]=s__Frame_newText1(itemTooltipWidget[1] , "随机属性内容" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(itemTooltipWidget[8])], ((0.2 )*1.0), (( 0)*1.0)) // INLINED!!
	set itemTooltipWidget[9]=s__Frame_newText1(itemTooltipWidget[1] , "|cffff6800【物品技能】|r" , "TXA12")
	call DzFrameSetSize(s__Frame_id[(itemTooltipWidget[9])], ((0.2 )*1.0), (( 0)*1.0)) // INLINED!!
	set itemTooltipWidget[10]=s__Frame_newText1(itemTooltipWidget[1] , "|cFFFEFFA8物品技能内容|r" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(itemTooltipWidget[10])], ((0.2 )*1.0), (( 0)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[10])], (BOTTOMRIGHT ), s__Frame_id[( s__Frame_getFrame(originalAbilityButton[4]) )], ( TOPRIGHT ), (( 0.01 )*1.0), (( 0.035)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[9])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[10] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[8])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[9] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[7])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[8] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[6])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[7] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[5])], (BOTTOM ), s__Frame_id[( itemTooltipWidget[6] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[2])], (BOTTOMLEFT ), s__Frame_id[( itemTooltipWidget[5] )], ( TOPLEFT ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[3])], (TOPLEFT ), s__Frame_id[( itemTooltipWidget[2] )], ( TOPRIGHT ), (( 0.005 )*1.0), (( - 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[4])], (TOPLEFT ), s__Frame_id[( itemTooltipWidget[3] )], ( BOTTOMLEFT ), (( 0 )*1.0), (( - 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[1])], (TOPLEFT ), s__Frame_id[( itemTooltipWidget[2] )], ( TOPLEFT ), (( - 0.005 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(itemTooltipWidget[1])], (BOTTOMRIGHT ), s__Frame_id[( itemTooltipWidget[10] )], ( BOTTOMRIGHT ), (( 0.005 )*1.0), (( - 0.005)*1.0)) // INLINED!!
	set j=1
	loop
		exitwhen j > 6
		call DzFrameSetScriptByCode(originalItemButton[j], FRAME_MOUSE_ENTER, function showItemTooltip, false)
		call DzFrameSetScriptByCode(originalItemButton[j], FRAME_MOUSE_LEAVE, function hideItemTooltip, false)
		set j=j + 1
	endloop
	// 塔属性的说明
	// 命中 武学暴击率 暴击倍数 内力回复 伤害加成 连击率 破防率 冷却缩减
	set towerTooltipWidget[1]=s__Frame_newTips0(GUI , "tipbox")
	call s__Frame_hide(towerTooltipWidget[1])
	set towerTooltipWidget[2]=s__Frame_newText1(towerTooltipWidget[1] , "|cFF00FF00属性|r" , "TXA14")
	call DzFrameSetSize(s__Frame_id[(towerTooltipWidget[2])], ((0.08 )*1.0), (( 0)*1.0)) // INLINED!!
	set towerTooltipWidget[3]=s__Frame_newText1(towerTooltipWidget[1] , "命中：100" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(towerTooltipWidget[3])], ((0.08 )*1.0), (( 0)*1.0)) // INLINED!!
	set towerTooltipWidget[4]=s__Frame_newText1(towerTooltipWidget[1] , "武学暴击率：5%" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(towerTooltipWidget[4])], ((0.08 )*1.0), (( 0)*1.0)) // INLINED!!
	set towerTooltipWidget[5]=s__Frame_newText1(towerTooltipWidget[1] , "暴击倍数：1.5" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(towerTooltipWidget[5])], ((0.08 )*1.0), (( 0)*1.0)) // INLINED!!
	set towerTooltipWidget[6]=s__Frame_newText1(towerTooltipWidget[1] , "内力回复：10" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(towerTooltipWidget[6])], ((0.08 )*1.0), (( 0)*1.0)) // INLINED!!
	set towerTooltipWidget[7]=s__Frame_newText1(towerTooltipWidget[1] , "伤害加成：10%" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(towerTooltipWidget[7])], ((0.08 )*1.0), (( 0)*1.0)) // INLINED!!
	set towerTooltipWidget[8]=s__Frame_newText1(towerTooltipWidget[1] , "连击率：10%" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(towerTooltipWidget[8])], ((0.08 )*1.0), (( 0)*1.0)) // INLINED!!
	set towerTooltipWidget[9]=s__Frame_newText1(towerTooltipWidget[1] , "破防率：10%" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(towerTooltipWidget[9])], ((0.08 )*1.0), (( 0)*1.0)) // INLINED!!
	set towerTooltipWidget[10]=s__Frame_newText1(towerTooltipWidget[1] , "冷却缩减：10%" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(towerTooltipWidget[10])], ((0.08 )*1.0), (( 0)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(towerTooltipWidget[10])], (BOTTOM ), s__Frame_id[( s__Frame_getFrame(DzFrameGetPortrait()) )], ( TOP ), (( 0 )*1.0), (( 0.035)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(towerTooltipWidget[9])], (BOTTOM ), s__Frame_id[( towerTooltipWidget[10] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(towerTooltipWidget[8])], (BOTTOM ), s__Frame_id[( towerTooltipWidget[9] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(towerTooltipWidget[7])], (BOTTOM ), s__Frame_id[( towerTooltipWidget[8] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(towerTooltipWidget[6])], (BOTTOM ), s__Frame_id[( towerTooltipWidget[7] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(towerTooltipWidget[5])], (BOTTOM ), s__Frame_id[( towerTooltipWidget[6] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(towerTooltipWidget[4])], (BOTTOM ), s__Frame_id[( towerTooltipWidget[5] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(towerTooltipWidget[3])], (BOTTOM ), s__Frame_id[( towerTooltipWidget[4] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(towerTooltipWidget[2])], (BOTTOM ), s__Frame_id[( towerTooltipWidget[3] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(towerTooltipWidget[1])], (TOPLEFT ), s__Frame_id[( towerTooltipWidget[2] )], ( TOPLEFT ), (( - 0.005 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(towerTooltipWidget[1])], (BOTTOMRIGHT ), s__Frame_id[( towerTooltipWidget[10] )], ( BOTTOMRIGHT ), (( 0.005 )*1.0), (( - 0.005)*1.0)) // INLINED!!
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
	set topMenuWidget[1]=s__Frame_newImage1(GUI , "war3mapImported\\ui\\save.blp" , 0.032 , 0.04)
	call DzFrameSetPoint(s__Frame_id[(topMenuWidget[1])], (3 ), s__Frame_id[( s__Frame_getFrame(DzFrameGetHeroBarButton(0)) )], ( 5 ), (( 0.05 )*1.0), (( - 0.005)*1.0)) // INLINED!!
	set topMenuSelected[1]=s__Frame_newImage1(topMenuWidget[1] , "war3mapImported\\ui\\saveItemSelected.tga" , 0.032 , 0.04)
	call DzFrameSetAllPoints(s__Frame_id[(topMenuSelected[1])], s__Frame_id[(topMenuWidget[1])]) // INLINED!!
	call DzFrameSetAlpha(s__Frame_id[(topMenuSelected[1])], (80)) // INLINED!!
	set topMenuButton[1]=s__Frame_newTextButton(topMenuWidget[1])
	call DzFrameSetAllPoints(s__Frame_id[(topMenuButton[1])], s__Frame_id[(topMenuWidget[1])]) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(topMenuButton[1])], (FRAME_EVENT_PRESSED ), ( function toggleSavePopup), false) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(topMenuButton[1])], (FRAME_MOUSE_ENTER ), ( function toggleTopMenuSelected), false) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(topMenuButton[1])], (FRAME_MOUSE_LEAVE ), ( function toggleTopMenuSelected), false) // INLINED!!
	
	set popupWidget[1]=s__Frame_newImage1(GUI , "war3mapImported\\ui\\savePopup.tga" , 0.36 , 0.32)
	call DzFrameSetPoint(s__Frame_id[(popupWidget[1])], (4 ), s__Frame_id[( GUI )], ( 4 ), (( 0 )*1.0), (( 0.05)*1.0)) // INLINED!!
	call s__Frame_hide(popupWidget[1])
	set popupCloseWidget[1]=s__Frame_newImage1(popupWidget[1] , "war3mapImported\\ui\\close0.tga" , 0.018 , 0.024)
	call DzFrameSetPoint(s__Frame_id[(popupCloseWidget[1])], (CENTER ), s__Frame_id[( popupWidget[1] )], ( TOPRIGHT ), (( 0 )*1.0), (( - 0.03)*1.0)) // INLINED!!
	set popupCloseButton[1]=s__Frame_newTextButton(popupCloseWidget[1])
	call DzFrameSetAllPoints(s__Frame_id[(popupCloseButton[1])], s__Frame_id[(popupCloseWidget[1])]) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(popupCloseButton[1])], (FRAME_EVENT_PRESSED ), ( function toggleSavePopup), false) // INLINED!!
	set popupRightWidget[1]=s__Frame_newImage1(popupWidget[1] , "war3mapImported\\ui\\mapAward.tga" , 0.25 , 0.28)
	call DzFrameSetPoint(s__Frame_id[(popupRightWidget[1])], (LEFT ), s__Frame_id[( popupWidget[1] )], ( LEFT ), (( 0.105 )*1.0), (( - 0.01)*1.0)) // INLINED!!
	set topMenuItem1Widget[1]=s__Frame_newImage1(popupWidget[1] , "war3mapImported\\ui\\itemSelected.tga" , 0.1 , 0.034)
	call DzFrameSetPoint(s__Frame_id[(topMenuItem1Widget[1])], (TOPLEFT ), s__Frame_id[( popupWidget[1] )], ( TOPLEFT ), (( 0 )*1.0), (( - 0.032)*1.0)) // INLINED!!
	call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[1])], (80)) // INLINED!!
	set topMenuItem1Button[1]=s__Frame_newTextButton(topMenuItem1Widget[1])
	call DzFrameSetAllPoints(s__Frame_id[(topMenuItem1Button[1])], s__Frame_id[(topMenuItem1Widget[1])]) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(topMenuItem1Button[1])], (FRAME_EVENT_PRESSED ), ( function jumpToMapAward), false) // INLINED!!
	set topMenuItem1Widget[2]=s__Frame_newImage1(popupWidget[1] , "war3mapImported\\ui\\itemSelected.tga" , 0.1 , 0.034)
	call DzFrameSetPoint(s__Frame_id[(topMenuItem1Widget[2])], (TOPLEFT ), s__Frame_id[( topMenuItem1Widget[1] )], ( BOTTOMLEFT ), (( 0 )*1.0), (( - 0.002)*1.0)) // INLINED!!
	call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[2])], (0)) // INLINED!!
	set topMenuItem1Button[2]=s__Frame_newTextButton(topMenuItem1Widget[2])
	call DzFrameSetAllPoints(s__Frame_id[(topMenuItem1Button[2])], s__Frame_id[(topMenuItem1Widget[2])]) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(topMenuItem1Button[2])], (FRAME_EVENT_PRESSED ), ( function jumpToLevelAward), false) // INLINED!!
	set topMenuItem1Widget[3]=s__Frame_newImage1(popupWidget[1] , "war3mapImported\\ui\\itemSelected.tga" , 0.1 , 0.034)
	call DzFrameSetPoint(s__Frame_id[(topMenuItem1Widget[3])], (TOPLEFT ), s__Frame_id[( topMenuItem1Widget[2] )], ( BOTTOMLEFT ), (( 0 )*1.0), (( - 0.002)*1.0)) // INLINED!!
	call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[3])], (0)) // INLINED!!
	set topMenuItem1Button[3]=s__Frame_newTextButton(topMenuItem1Widget[3])
	call DzFrameSetAllPoints(s__Frame_id[(topMenuItem1Button[3])], s__Frame_id[(topMenuItem1Widget[3])]) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(topMenuItem1Button[3])], (FRAME_EVENT_PRESSED ), ( function jumpToWinAward), false) // INLINED!!
	set topMenuItem1Widget[4]=s__Frame_newImage1(popupWidget[1] , "war3mapImported\\ui\\itemSelected.tga" , 0.1 , 0.034)
	call DzFrameSetPoint(s__Frame_id[(topMenuItem1Widget[4])], (TOPLEFT ), s__Frame_id[( topMenuItem1Widget[3] )], ( BOTTOMLEFT ), (( 0 )*1.0), (( - 0.002)*1.0)) // INLINED!!
	call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[4])], (0)) // INLINED!!
	set topMenuItem1Button[4]=s__Frame_newTextButton(topMenuItem1Widget[4])
	call DzFrameSetAllPoints(s__Frame_id[(topMenuItem1Button[4])], s__Frame_id[(topMenuItem1Widget[4])]) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(topMenuItem1Button[4])], (FRAME_EVENT_PRESSED ), ( function jumpToAchievement), false) // INLINED!!
	set topMenuItem1Widget[5]=s__Frame_newImage1(popupWidget[1] , "war3mapImported\\ui\\itemSelected.tga" , 0.1 , 0.034)
	call DzFrameSetPoint(s__Frame_id[(topMenuItem1Widget[5])], (TOPLEFT ), s__Frame_id[( topMenuItem1Widget[4] )], ( BOTTOMLEFT ), (( 0 )*1.0), (( - 0.002)*1.0)) // INLINED!!
	call DzFrameSetAlpha(s__Frame_id[(topMenuItem1Widget[5])], (0)) // INLINED!!
	set topMenuItem1Button[5]=s__Frame_newTextButton(topMenuItem1Widget[5])
	call DzFrameSetAllPoints(s__Frame_id[(topMenuItem1Button[5])], s__Frame_id[(topMenuItem1Widget[5])]) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(topMenuItem1Button[5])], (FRAME_EVENT_PRESSED ), ( function jumpToMall), false) // INLINED!!
	
	// 商城图标
	set shopWidget[1]=s__Frame_newImage1(popupRightWidget[1] , "replaceabletextures\\commandbuttons\\PASBTNjinbi.blp" , 0.04 , 0.047)
	call DzFrameSetPoint(s__Frame_id[(shopWidget[1])], (TOPLEFT ), s__Frame_id[( popupRightWidget[1] )], ( TOPLEFT ), (( 0.01 )*1.0), (( - 0.018)*1.0)) // INLINED!!
	set shopButton[1]=s__Frame_newTextButton(shopWidget[1])
	call DzFrameSetAllPoints(s__Frame_id[(shopButton[1])], s__Frame_id[(shopWidget[1])]) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(shopButton[1])], (FRAME_MOUSE_ENTER ), ( function showShopTooltip), false) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(shopButton[1])], (FRAME_MOUSE_LEAVE ), ( function hideShopTooltip), false) // INLINED!!
	set shopWidget[2]=s__Frame_newImage1(popupRightWidget[1] , "replaceabletextures\\commandbuttons\\PASBTNmucai.blp" , 0.04 , 0.047)
	call DzFrameSetPoint(s__Frame_id[(shopWidget[2])], (LEFT ), s__Frame_id[( shopWidget[1] )], ( RIGHT ), (( 0.0088 )*1.0), (( 0)*1.0)) // INLINED!!
	set shopButton[2]=s__Frame_newTextButton(shopWidget[2])
	call DzFrameSetAllPoints(s__Frame_id[(shopButton[2])], s__Frame_id[(shopWidget[2])]) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(shopButton[2])], (FRAME_MOUSE_ENTER ), ( function showShopTooltip), false) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(shopButton[2])], (FRAME_MOUSE_LEAVE ), ( function hideShopTooltip), false) // INLINED!!
	set shopWidget[3]=s__Frame_newImage1(popupRightWidget[1] , "replaceabletextures\\commandbuttons\\PASBTNshouchong.blp" , 0.04 , 0.047)
	call DzFrameSetPoint(s__Frame_id[(shopWidget[3])], (LEFT ), s__Frame_id[( shopWidget[2] )], ( RIGHT ), (( 0.0088 )*1.0), (( 0)*1.0)) // INLINED!!
	set shopButton[3]=s__Frame_newTextButton(shopWidget[3])
	call DzFrameSetAllPoints(s__Frame_id[(shopButton[3])], s__Frame_id[(shopWidget[3])]) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(shopButton[3])], (FRAME_MOUSE_ENTER ), ( function showShopTooltip), false) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(shopButton[3])], (FRAME_MOUSE_LEAVE ), ( function hideShopTooltip), false) // INLINED!!
	set shopWidget[4]=s__Frame_newImage1(popupRightWidget[1] , "replaceabletextures\\commandbuttons\\PASBTNzhihuiqiu.blp" , 0.04 , 0.047)
	call DzFrameSetPoint(s__Frame_id[(shopWidget[4])], (LEFT ), s__Frame_id[( shopWidget[3] )], ( RIGHT ), (( 0.0088 )*1.0), (( 0)*1.0)) // INLINED!!
	set shopButton[4]=s__Frame_newTextButton(shopWidget[4])
	call DzFrameSetAllPoints(s__Frame_id[(shopButton[4])], s__Frame_id[(shopWidget[4])]) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(shopButton[4])], (FRAME_MOUSE_ENTER ), ( function showShopTooltip), false) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(shopButton[4])], (FRAME_MOUSE_LEAVE ), ( function hideShopTooltip), false) // INLINED!!
	set shopWidget[5]=s__Frame_newImage1(popupRightWidget[1] , "replaceabletextures\\commandbuttons\\PASBTNjingqingqidai.blp" , 0.04 , 0.047)
	call DzFrameSetPoint(s__Frame_id[(shopWidget[5])], (LEFT ), s__Frame_id[( shopWidget[4] )], ( RIGHT ), (( 0.0088 )*1.0), (( 0)*1.0)) // INLINED!!
	set shopButton[5]=s__Frame_newTextButton(shopWidget[5])
	call DzFrameSetAllPoints(s__Frame_id[(shopButton[5])], s__Frame_id[(shopWidget[5])]) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(shopButton[5])], (FRAME_MOUSE_ENTER ), ( function showShopTooltip), false) // INLINED!!
	call DzFrameSetScriptByCode(s__Frame_id[(shopButton[5])], (FRAME_MOUSE_LEAVE ), ( function hideShopTooltip), false) // INLINED!!
	call hideShopIcons()
	set shopTooltipWidget[1]=s__Frame_newTips0(GUI , "tipbox")
	call s__Frame_hide(shopTooltipWidget[1])
	set shopTooltipWidget[2]=s__Frame_newText1(shopTooltipWidget[1] , "|cFF00FF00中型金币礼包|r" , "TXA14")
	call DzFrameSetSize(s__Frame_id[(shopTooltipWidget[2])], ((0.22 )*1.0), (( 0)*1.0)) // INLINED!!
	set shopTooltipWidget[3]=s__Frame_newText1(shopTooltipWidget[1] , "效果：15波后地图中间NPC领取中型金币资源包" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(shopTooltipWidget[3])], ((0.22 )*1.0), (( 0)*1.0)) // INLINED!!
	set shopTooltipWidget[4]=s__Frame_newText1(shopTooltipWidget[1] , "解锁状态：|cffff0000未解锁|r" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(shopTooltipWidget[4])], ((0.22 )*1.0), (( 0)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(shopTooltipWidget[4])], (BOTTOM ), s__Frame_id[( shopWidget[1] )], ( TOP ), (( 0 )*1.0), (( 0.01)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(shopTooltipWidget[3])], (BOTTOM ), s__Frame_id[( shopTooltipWidget[4] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(shopTooltipWidget[2])], (BOTTOM ), s__Frame_id[( shopTooltipWidget[3] )], ( TOP ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(shopTooltipWidget[1])], (TOPLEFT ), s__Frame_id[( shopTooltipWidget[2] )], ( TOPLEFT ), (( - 0.005 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(shopTooltipWidget[1])], (BOTTOMRIGHT ), s__Frame_id[( shopTooltipWidget[4] )], ( BOTTOMRIGHT ), (( 0.005 )*1.0), (( - 0.005)*1.0)) // INLINED!!
	set j=1
	loop
		exitwhen j > 10
		set exchangeIcon[j]=s__Frame_newImage0(GUI)
		call DzFrameSetTexture(s__Frame_id[(exchangeIcon[j])], ("ReplaceableTextures\\CommandButtons\\BTNExchangeOne.blp"), 0) // INLINED!!
		call DzFrameSetAllPoints(s__Frame_id[(exchangeIcon[j])], s__Frame_id[(s__Frame_getFrame(originalAbilityButton[j]))]) // INLINED!!
		call s__Frame_hide(exchangeIcon[j])
		set exchangeIconStatus[j]=s__Frame_newImage0(exchangeIcon[j])
		call DzFrameSetTexture(s__Frame_id[(exchangeIconStatus[j])], ("war3mapImported\\exchanged.tga"), 0) // INLINED!!
		call DzFrameSetAllPoints(s__Frame_id[(exchangeIconStatus[j])], s__Frame_id[(exchangeIcon[j])]) // INLINED!!
		set j=j + 1
	endloop
	set j=1
	loop
		exitwhen j > 4
		set cardResultWidget[j]=s__Frame_newImage0(GUI)
		call DzFrameSetTexture(s__Frame_id[(cardResultWidget[j])], ("ReplaceableTextures\\CommandButtons\\BTNExchangeOne.blp"), 0) // INLINED!!
		call DzFrameSetAllPoints(s__Frame_id[(cardResultWidget[j])], s__Frame_id[(s__Frame_getFrame(originalAbilityButton[j]))]) // INLINED!!
		call s__Frame_hide(cardResultWidget[j])
		set j=j + 1
	endloop
	// 抽卡结果
	set cardResultTooltipWidget[1]=s__Frame_newTips0(GUI , "tipbox")
	call s__Frame_hide(cardResultTooltipWidget[1])
	
	set cardResultTooltipWidget[2]=s__Frame_newText1(cardResultTooltipWidget[1] , "|cFF00FF00功勋|r" , "TXA14")
	call DzFrameSetSize(s__Frame_id[(cardResultTooltipWidget[2])], ((0.22 )*1.0), (( 0)*1.0)) // INLINED!!
	set cardResultTooltipWidget[3]=s__Frame_newImage1(cardResultTooltipWidget[1] , "UI\\Widgets\\EscMenu\\Human\\alliance-gold.blp" , 0.04 , 0.03)
	set cardResultTooltipWidget[4]=s__Frame_newText1(cardResultTooltipWidget[1] , "500" , "TXA11")
	
	set cardResultTooltipWidget[5]=s__Frame_newText1(cardResultTooltipWidget[1] , "杀敌数：100\n内力上限+200\n伤害+50%" , "TXA11")
	call DzFrameSetSize(s__Frame_id[(cardResultTooltipWidget[5])], ((0.22 )*1.0), (( 0)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(cardResultTooltipWidget[5])], (BOTTOMRIGHT ), s__Frame_id[( s__Frame_getFrame(originalAbilityButton[4]) )], ( TOPRIGHT ), (( 0.01 )*1.0), (( 0.035)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(cardResultTooltipWidget[3])], (BOTTOMLEFT ), s__Frame_id[( cardResultTooltipWidget[5] )], ( TOPLEFT ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(cardResultTooltipWidget[4])], (LEFT ), s__Frame_id[( cardResultTooltipWidget[3] )], ( LEFT ), (( 0.018 )*1.0), (( 0)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(cardResultTooltipWidget[2])], (BOTTOMLEFT ), s__Frame_id[( cardResultTooltipWidget[3] )], ( TOPLEFT ), (( 0 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(cardResultTooltipWidget[1])], (TOPLEFT ), s__Frame_id[( cardResultTooltipWidget[2] )], ( TOPLEFT ), (( - 0.005 )*1.0), (( 0.005)*1.0)) // INLINED!!
	call DzFrameSetPoint(s__Frame_id[(cardResultTooltipWidget[1])], (BOTTOMRIGHT ), s__Frame_id[( cardResultTooltipWidget[5] )], ( BOTTOMRIGHT ), (( 0.005 )*1.0), (( - 0.005)*1.0)) // INLINED!!
	
	return false
endfunction
function initUI takes nothing returns nothing
 local trigger t= CreateTrigger()
 local integer i= 1
 local integer id= 0
	
	call TriggerRegisterTimerEventSingle(t, 1.)
	call TriggerAddCondition(t, Condition(function drawUI_Conditions))
	
	set t=null
endfunction
function ID2S_naji takes integer i_naji returns string
    local integer z_naji
    local integer n_naji= 0
    set Sdummy_naji[100]=""
    if Bid_naji == false then
        return Sdummy_naji[100]
    endif
    if i_naji != 0 then
        loop
            set z_naji=i_naji - i_naji / 256 * 256
            set i_naji=i_naji / 256
            set Sdummy_naji[100]=SubString(StringList_naji, z_naji, z_naji + 1) + Sdummy_naji[100]
            set n_naji=n_naji + 1
            exitwhen n_naji == 4
        endloop
        set Sdummy_naji[100]="'" + Sdummy_naji[100] + "'"
    else
        set Sdummy_naji[100]="null"
    endif
    return Sdummy_naji[100]
endfunction
function S2ID_naji takes string s_naji returns integer
    local integer l_naji= StringLength(s_naji)
    local integer i_naji= 0
    local integer z_naji= 0
    local integer n_naji= 1
    local integer result_naji= 0
    loop
        exitwhen z_naji > l_naji - 1
        set n_naji=R2I(Pow(256, l_naji - 1 - z_naji))
        set i_naji=1
        loop
            exitwhen i_naji > 255
            if SubString(s_naji, z_naji, z_naji + 1) == SubString(StringList_naji, i_naji, i_naji + 1) then
                set result_naji=result_naji + i_naji * n_naji
                set i_naji=256
            endif
            set i_naji=i_naji + 1
        endloop
        set z_naji=z_naji + 1
    endloop
    return result_naji
endfunction
function IDidentify_naji takes integer i_naji returns string
    local integer l_naji
    local integer a_naji= 0
    local integer z_naji
    local integer n_naji= 0
    local integer result= 0
    set Sdummy_naji[100]=""
    if i_naji != 0 then
        loop
            set z_naji=i_naji - i_naji / 256 * 256
            set i_naji=i_naji / 256
            set Sdummy_naji[100]=SubString(StringList_naji, z_naji, z_naji + 1) + Sdummy_naji[100]
            set n_naji=n_naji + 1
            exitwhen n_naji == 4
        endloop
    else
        set Sdummy_naji[100]="null"
        return Sdummy_naji[100]
    endif
    set l_naji=StringLength(Sdummy_naji[100])
    set n_naji=1
    set z_naji=0
    loop
        exitwhen z_naji > l_naji - 1
        set n_naji=R2I(Pow(256, l_naji - 1 - z_naji))
        set a_naji=1
        loop
            exitwhen a_naji > 255
            if SubString(Sdummy_naji[100], z_naji, z_naji + 1) == SubString(StringList_naji, a_naji, a_naji + 1) then
                set result=result + a_naji * n_naji
                set a_naji=256
            endif
            set a_naji=a_naji + 1
        endloop
        set z_naji=z_naji + 1
    endloop
    return GetObjectName(result)
endfunction
function Distance_naji takes real x1_naji,real y1_naji,real x2_naji,real y2_naji returns real
    return SquareRoot(( y2_naji - y1_naji ) * ( y2_naji - y1_naji ) + ( x2_naji - x1_naji ) * ( x2_naji - x1_naji ))
endfunction
function Angle_naji takes real x1_naji,real y1_naji,real x2_naji,real y2_naji returns real
    local real r_naji
    set r_naji=57.29582 * Atan2(y2_naji - y1_naji, x2_naji - x1_naji)
    if r_naji < 0 then
        return 360 + r_naji
    endif
    return r_naji
endfunction
function DialogResetA3_naji takes nothing returns nothing
    call DialogClear(Dnaji_naji[2])
    if IsMapFlagSet(MAP_OBSERVERS_ON_DEATH) then
        set Button_naji[1]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF失败时作为观看者|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F1）|r", 768)
    else
        set Button_naji[1]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF失败时作为观看者|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F1）|r", 768)
    endif
    if IsMapFlagSet(MAP_LOCK_RESOURCE_TRADING) then
        set Button_naji[2]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF锁定资源交易|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F2）|r", 769)
    else
        set Button_naji[2]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF锁定资源交易|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F2）|r", 769)
    endif
    if IsMapFlagSet(MAP_RESOURCE_TRADING_ALLIES_ONLY) then
        set Button_naji[3]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF限定盟友资源交易|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F3）|r", 770)
    else
        set Button_naji[3]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF限定盟友资源交易|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F3）|r", 770)
    endif
    if IsMapFlagSet(MAP_LOCK_ALLIANCE_CHANGES) then
        set Button_naji[4]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF锁定联盟设置|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F4）|r", 771)
    else
        set Button_naji[4]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF锁定联盟设置|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F4）|r", 771)
    endif
    if IsMapFlagSet(MAP_ALLIANCE_CHANGES_HIDDEN) then
        set Button_naji[5]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF隐藏联盟设置|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F5）|r", 772)
    else
        set Button_naji[5]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF隐藏联盟设置|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F5）|r", 772)
    endif
    set Button_naji[100]=DialogAddButton(Dnaji_naji[2], "|cff00FFFF取消|cff00FF00（Esc）|r", 512)
endfunction
function DialogResetA2_naji takes nothing returns nothing
    call DialogClear(Dnaji_naji[1])
    if Bxy_naji then
        set Button_naji[1]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF坐标参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F1）|r", 768)
    else
        set Button_naji[1]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF坐标参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F1）|r", 768)
    endif
    if Bid_naji then
        set Button_naji[2]=DialogAddButton(Dnaji_naji[1], "|cff00FFFFID参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F2）|r", 769)
    else
        set Button_naji[2]=DialogAddButton(Dnaji_naji[1], "|cff00FFFFID参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F2）|r", 769)
    endif
    if Bpn_naji then
        set Button_naji[3]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF玩家名参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F3）|r", 770)
    else
        set Button_naji[3]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF玩家名参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F3）|r", 770)
    endif
    if Bir_naji then
        set Button_naji[4]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF数值显示|cffFFFF00（当前状态：|cffFF0000整数|cffFFFF00）|cff00FF00（F4）|r", 771)
    else
        set Button_naji[4]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF数值显示|cffFFFF00（当前状态：|cffFF0000实数|cffFFFF00）|cff00FF00（F4）|r", 771)
    endif
    if Bddm_naji then
        set Button_naji[5]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF伤害显示类型|cffFFFF00（当前状态：|cffFF0000游戏文本|cffFFFF00）|cff00FF00（F5）|r", 772)
    else
        set Button_naji[5]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF伤害显示类型|cffFFFF00（当前状态：|cffFF0000飘浮文字|cffFFFF00）|cff00FF00（F5）|r", 772)
    endif
    set Button_naji[0]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF返回上一层|cff00FF00（space）|r", 32)
    set Button_naji[100]=DialogAddButton(Dnaji_naji[1], "|cff00FFFF取消|cff00FF00（Esc）|r", 512)
endfunction
function DialogResetA_naji takes nothing returns nothing
    call DialogClear(Dnaji_naji[0])
    if IsTriggerEnabled(Ttest_naji[2]) then
        set Button_naji[1]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF技能信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F1）|r", 768)
    else
        set Button_naji[1]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF技能信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F1）|r", 768)
    endif
    if IsTriggerEnabled(Ttest_naji[15]) then
        set Button_naji[2]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF命令信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F2）|r", 769)
    else
        set Button_naji[2]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF命令信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F2）|r", 769)
    endif
    if IsTriggerEnabled(Ttest_naji[17]) then
        set Button_naji[3]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF寿命信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F3）|r", 770)
    else
        set Button_naji[3]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF寿命信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F3）|r", 770)
    endif
    if IsTriggerEnabled(Ttest_naji[26]) then
        set Button_naji[4]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF伤害信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F4）|r", 771)
    else
        set Button_naji[4]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF伤害信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F4）|r", 771)
    endif
    if IsTriggerEnabled(Ttest_naji[4]) then
        set Button_naji[5]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF技能无冷却不耗魔|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F5）|r", 772)
    else
        set Button_naji[5]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF技能无冷却不耗魔|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F5）|r", 772)
    endif
    if IsTriggerEnabled(Ttest_naji[71]) then
        set Button_naji[8]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF群体施法|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F6）|r", 773)
    else
        set Button_naji[8]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF群体施法|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F6）|r", 773)
    endif
    if IsTriggerEnabled(Ttest_naji[7]) then
        set Button_naji[6]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF句柄信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F7）|r", 774)
    else
        set Button_naji[6]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF句柄信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F7）|r", 774)
    endif
    if IsTriggerEnabled(Ttest_naji[61]) then
        set Button_naji[7]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF公共聊天系统|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F8）|r", 775)
    else
        set Button_naji[7]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF公共聊天系统|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F8）|r", 775)
    endif
    set Button_naji[0]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF系统信息调整|cff00FF00（space）|r", 32)
    set Button_naji[100]=DialogAddButton(Dnaji_naji[0], "|cff00FFFF取消|cff00FF00（Esc）|r", 512)
endfunction
function TestA82_naji takes nothing returns nothing
    call ExecuteFunc(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
endfunction
function TestA81_naji takes nothing returns nothing
    local integer i_naji
    if StringLength(GetEventPlayerChatString()) <= 6 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000参数输入错误！位数不足无法判断进制类型|r")
    elseif StringLength(GetEventPlayerChatString()) == 7 then
        set i_naji=S2ID_naji(SubString(GetEventPlayerChatString(), 3, 7))
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0" + SubString(GetEventPlayerChatString(), 3, 7) + "|r→|cffFFFF00" + I2S(i_naji) + "|r")
    else
        set i_naji=S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0" + SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())) + "|r→|cffFFFF00" + ID2S_naji(i_naji) + "|r")
    endif
endfunction
function TestA80_naji takes nothing returns nothing
    local group g_naji
    local unit u_naji
    local real x_naji
    local real y_naji
    local integer z_naji= StringLength(GetEventPlayerChatString()) - 1
    set g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            loop
                set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
                if Sdummy_naji[1] == "," then
                    if z_naji == 4 then
                        set x_naji=GetUnitX(u_naji)
                    else
                        set x_naji=S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
                    endif
                    if z_naji == StringLength(GetEventPlayerChatString()) - 1 then
                        set y_naji=GetUnitY(u_naji)
                    else
                        set y_naji=S2R(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
                    endif
                    exitwhen true
                endif
                set z_naji=z_naji - 1
                if z_naji <= 0 then
                    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000参数不足！请输入|cffFFFF002|cffFF0000位参数|r")
                    call DestroyGroup(g_naji)
                    set g_naji=null
                    set u_naji=null
                    return
                endif
            endloop
            call SetUnitX(u_naji, x_naji)
            call SetUnitY(u_naji, y_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00玩家选择单位的所有单位的坐标更改为|cffFF0000(" + R2S(x_naji) + "," + R2S(y_naji) + ")|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA79_naji takes nothing returns nothing
    local group g_naji
    local unit u_naji
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
    local item it_naji
    if i_naji < 0 or i_naji >= 7 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000参数输入错误！请输入|cffFFFF001~6|cffFF0000间的整数|r")
        return
    elseif i_naji == 0 then
        set i_naji=1
    endif
    set g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    set u_naji=FirstOfGroup(g_naji)
    if u_naji != null then
        if UnitItemInSlot(u_naji, i_naji - 1) != null then
            set it_naji=UnitItemInSlot(u_naji, i_naji - 1)
            if GetItemType(it_naji) == ITEM_TYPE_PERMANENT then
                set Sdummy_naji[0]="永久"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_CHARGED then
                set Sdummy_naji[0]="可允"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_POWERUP then
                set Sdummy_naji[0]="能量提升"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_ARTIFACT then
                set Sdummy_naji[0]="人造"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_PURCHASABLE then
                set Sdummy_naji[0]="可购买"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_CAMPAIGN then
                set Sdummy_naji[0]="战役"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_MISCELLANEOUS then
                set Sdummy_naji[0]="混杂"
            endif
            if GetItemType(it_naji) == ITEM_TYPE_UNKNOWN then
                set Sdummy_naji[0]="未知"
            endif
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "===============*****===============")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0物品名称：|cffFFFF00" + GetItemName(it_naji) + "|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0ID256进制/10进制：|cffFFFF00" + ID2S_naji(GetItemTypeId(it_naji)) + "/" + I2S(GetItemTypeId(it_naji)) + "|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0存储地址：|cffFFFF00" + I2S(GetHandleId(it_naji)) + "|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0所属玩家/cj索引：|cffFFFF00" + GetPlayerName(GetItemPlayer(it_naji)) + "/" + I2S(GetPlayerId(GetItemPlayer(it_naji))) + "|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0坐标：|cffFFFF00(" + R2S(GetItemX(it_naji)) + "," + R2S(GetItemY(it_naji)) + ")|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0物品分类：|cffFFFF00" + Sdummy_naji[0] + "|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0物品等级：|cffFFFF00" + I2S(GetItemLevel(it_naji)) + "|r")
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0自定义值：|cffFFFF00" + I2S(GetItemUserData(it_naji)) + "|r")
            set Sdummy_naji[0]=" "
            if IsItemPowerup(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0] + "拾取自动使用，"
            endif
            if IsItemSellable(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0] + "可出售，"
            endif
            if IsItemPawnable(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0] + "可抵押，"
            endif
            if IsItemVisible(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0] + "可见，"
            endif
            if IsItemInvulnerable(it_naji) then
                set Sdummy_naji[0]=Sdummy_naji[0] + "无敌的，"
            endif
            set Sdummy_naji[0]=SubString(Sdummy_naji[0], 1, StringLength(Sdummy_naji[0]) - 2)
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0可识别状态：|cffFFFF00" + Sdummy_naji[0] + "||r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000该单位|cffFFFF00第" + I2S(i_naji) + "格物品栏|cffFF0000不存在物品|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA78_naji takes nothing returns nothing
    local group g_naji= CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if IsUnitInGroup(FirstOfGroup(g_naji), Gcd_naji[1]) then
            call GroupRemoveUnit(Gcd_naji[1], FirstOfGroup(g_naji))
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已取消玩家选择单位的|cffFF0000技能无冷却不耗蓝判定|r")
        else
            call SetUnitState(FirstOfGroup(g_naji), UNIT_STATE_MANA, GetUnitState(FirstOfGroup(g_naji), UNIT_STATE_MAX_MANA))
            call UnitResetCooldown(FirstOfGroup(g_naji))
            call GroupAddUnit(Gcd_naji[1], FirstOfGroup(g_naji))
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已启动玩家选择单位的|cffFF0000技能无冷却不耗蓝判定|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA77_naji takes nothing returns nothing
    local group g_naji= CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if IsUnitInGroup(FirstOfGroup(g_naji), Gms_naji) then
            call GroupRemoveUnit(Gms_naji, FirstOfGroup(g_naji))
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已取消玩家选择单位的|cffFF0000群体施法判定|r")
        else
            call GroupAddUnit(Gms_naji, FirstOfGroup(g_naji))
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已启动玩家选择单位的|cffFF0000群体施法判定|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA76_naji takes nothing returns nothing
    local unit u_naji
    local group g_naji
    local integer i_naji
    local integer z_naji
    local integer n_naji
    local real r_naji
    local boolean b_naji
    local location p_naji= GetSpellTargetLoc()
    if IsUnitInGroup(GetTriggerUnit(), Gms_naji) and GetSpellTargetUnit() != null or p_naji != null then
        set i_naji=GetUnitCurrentOrder(GetTriggerUnit())
        set z_naji=GetSpellAbilityId()
        set n_naji=GetUnitAbilityLevel(GetTriggerUnit(), z_naji)
        if GetSpellTargetUnit() != null then
            set g_naji=CreateGroup()
            set b_naji=IsUnitEnemy(GetSpellTargetUnit(), GetTriggerPlayer())
            call GroupEnumUnitsInRange(g_naji, GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), Distance_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetUnitX(GetSpellTargetUnit()) , GetUnitY(GetSpellTargetUnit())), null)
            loop
                exitwhen FirstOfGroup(g_naji) == null
                if IsUnitType(FirstOfGroup(g_naji), UNIT_TYPE_DEAD) == false and FirstOfGroup(g_naji) != GetSpellTargetUnit() and b_naji == IsUnitEnemy(FirstOfGroup(g_naji), GetTriggerPlayer()) then
                    set u_naji=CreateUnit(GetTriggerPlayer(), 'nvul', GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), Angle_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetUnitX(FirstOfGroup(g_naji)) , GetUnitY(FirstOfGroup(g_naji))))
                    call UnitAddAbility(u_naji, 'Aloc')
                    call UnitAddAbility(u_naji, 'Abun')
                    call UnitAddAbility(u_naji, 'AIbm')
                    call UnitAddAbility(u_naji, 'AI2m')
                    call UnitAddAbility(u_naji, 'AImb')
                    call UnitAddAbility(u_naji, 'AImz')
                    call UnitAddAbility(u_naji, 'AImv')
                    call UnitRemoveAbility(u_naji, 'Awan')
                    if UnitAddAbility(u_naji, 'Arav') then
                        call UnitRemoveAbility(u_naji, 'Arav')
                    endif
                    call SetUnitState(u_naji, UNIT_STATE_MANA, GetUnitState(u_naji, UNIT_STATE_MAX_MANA))
                    call ShowUnit(u_naji, false)
                    call UnitApplyTimedLife(u_naji, 'BTLF', 10)
                    call SetUnitUseFood(u_naji, false)
                    call SetUnitPathing(u_naji, false)
                    call h__SetUnitMoveSpeed(u_naji , 522)
                    call SetUnitTurnSpeed(u_naji, 1)
                    call SetUnitFlyHeight(u_naji, GetUnitFlyHeight(GetTriggerUnit()), 0)
                    call UnitAddType(u_naji, UNIT_TYPE_ANCIENT)
                    call UnitAddType(u_naji, UNIT_TYPE_PEON)
                    call UnitAddAbility(u_naji, z_naji)
                    call SetUnitAbilityLevel(u_naji, z_naji, n_naji)
                    call IssueTargetOrderById(u_naji, i_naji, FirstOfGroup(g_naji))
                endif
                call GroupRemoveUnit(g_naji, FirstOfGroup(g_naji))
            endloop
            call DestroyGroup(g_naji)
            set g_naji=null
        else
            set r_naji=0
            loop
                exitwhen r_naji >= 2
                set u_naji=CreateUnit(GetTriggerPlayer(), 'nvul', GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), Angle_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetLocationX(p_naji) , GetLocationY(p_naji)) - 30 + 60 * r_naji)
                call UnitAddAbility(u_naji, 'Aloc')
                call UnitAddAbility(u_naji, 'Abun')
                call UnitAddAbility(u_naji, 'AIbm')
                call UnitAddAbility(u_naji, 'AI2m')
                call UnitAddAbility(u_naji, 'AImb')
                call UnitAddAbility(u_naji, 'AImz')
                call UnitAddAbility(u_naji, 'AImv')
                call UnitRemoveAbility(u_naji, 'Awan')
                if UnitAddAbility(u_naji, 'Arav') then
                    call UnitRemoveAbility(u_naji, 'Arav')
                endif
                call SetUnitState(u_naji, UNIT_STATE_MANA, GetUnitState(u_naji, UNIT_STATE_MAX_MANA))
                call ShowUnit(u_naji, false)
                call UnitApplyTimedLife(u_naji, 'BTLF', 10)
                call SetUnitUseFood(u_naji, false)
                call SetUnitPathing(u_naji, false)
                call h__SetUnitMoveSpeed(u_naji , 522)
                call SetUnitTurnSpeed(u_naji, 1)
                call SetUnitFlyHeight(u_naji, GetUnitFlyHeight(GetTriggerUnit()), 0)
                call UnitAddType(u_naji, UNIT_TYPE_ANCIENT)
                call UnitAddType(u_naji, UNIT_TYPE_PEON)
                call UnitAddAbility(u_naji, z_naji)
                call SetUnitAbilityLevel(u_naji, z_naji, n_naji)
                call IssuePointOrderById(u_naji, i_naji, GetUnitX(GetTriggerUnit()) + Cos(.01745 * ( Angle_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetLocationX(p_naji) , GetLocationY(p_naji)) - 30 + 60 * r_naji )) * Distance_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetLocationX(p_naji) , GetLocationY(p_naji)), GetUnitY(GetTriggerUnit()) + Sin(.01745 * ( Angle_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetLocationX(p_naji) , GetLocationY(p_naji)) - 30 + 60 * r_naji )) * Distance_naji(GetUnitX(GetTriggerUnit()) , GetUnitY(GetTriggerUnit()) , GetLocationX(p_naji) , GetLocationY(p_naji)))
                set r_naji=r_naji + 1
            endloop
        endif
    endif
    call RemoveLocation(p_naji)
    set p_naji=null
endfunction
function TestA75_naji takes nothing returns nothing
    call RestartGame(true)
endfunction
function TestA74_naji takes nothing returns nothing
    local integer array i_naji
    local integer a_naji= 2
    local integer b_naji= 8
    local integer c_naji= 8
    set i_naji[1]=S2ID_naji(SubString(GetEventPlayerChatString(), 3, 7))
    set i_naji[2]=0
    set i_naji[3]=GetPlayerId(GetTriggerPlayer()) + 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), b_naji, b_naji + 1)
        if Sdummy_naji[1] == "," then
            set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(), c_naji, b_naji))
            set a_naji=a_naji + 1
            set c_naji=b_naji + 1
            if a_naji >= 3 then
                set i_naji[3]=S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
                exitwhen true
            endif
        endif
        set b_naji=b_naji + 1
        if b_naji >= StringLength(GetEventPlayerChatString()) then
            set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
    endloop
    if i_naji[3] >= 1 and i_naji[3] <= 16 then
        call SetPlayerTechResearched(Player(i_naji[3] - 1), i_naji[1], i_naji[2])
        call SetPlayerTechMaxAllowed(Player(i_naji[3] - 1), i_naji[1], i_naji[2])
        call SetPlayerTechMaxAllowed(Player(i_naji[3] - 1), i_naji[1], i_naji[2])
        if i_naji[2] == 0 then
            call SetPlayerAbilityAvailable(Player(i_naji[3] - 1), i_naji[1], false)
        else
            call SetPlayerAbilityAvailable(Player(i_naji[3] - 1), i_naji[1], true)
        endif
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000已对|cff00FFFF" + GetPlayerName(Player(i_naji[3] - 1)) + "|cffFF0000执行对应行为，若没有效果，请确认你是否输入了|cffFFFF00正确的物编ID|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家参数输入数值错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA73_naji takes nothing returns nothing
    local integer i_naji= S2ID_naji(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if StringLength(GetEventPlayerChatString()) <= 6 then
        if Iweather_naji >= 1 then
            loop
                call RemoveWeatherEffect(Weather_naji[Iweather_naji])
                set Iweather_naji=Iweather_naji - 1
                exitwhen Iweather_naji <= 0
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000删除|cffFFFF00所有已创建的全图天气|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00请输入|cffFF0000合法的天气ID|cffFFFF00，可点击|cffFF0000F9|cffFFFF00查看所有天气ID|r")
        endif
    else
        set Iweather_naji=Iweather_naji + 1
        set Weather_naji[Iweather_naji]=AddWeatherEffect(GetWorldBounds(), i_naji)
        call EnableWeatherEffect(Weather_naji[Iweather_naji], true)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已创建对应的天气。目前已有|cffFF0000" + I2S(Iweather_naji) + "|cffFFFF00个全图天气|r")
    endif
endfunction
function TestA72_naji takes nothing returns nothing
    call EnableUserControl(true)
    call ShowInterface(true, .01)
    call EnableOcclusion(true)
endfunction
function TestA71_naji takes nothing returns nothing
    if GetClickedButton() != Button_naji[100] then
        if GetClickedButton() == Button_naji[1] then
            if IsMapFlagSet(MAP_OBSERVERS_ON_DEATH) then
                call SetMapFlag(MAP_OBSERVERS_ON_DEATH, false)
            else
                call SetMapFlag(MAP_OBSERVERS_ON_DEATH, true)
            endif
        elseif GetClickedButton() == Button_naji[2] then
            if IsMapFlagSet(MAP_LOCK_RESOURCE_TRADING) then
                call SetMapFlag(MAP_LOCK_RESOURCE_TRADING, false)
            else
                call SetMapFlag(MAP_LOCK_RESOURCE_TRADING, true)
            endif
        elseif GetClickedButton() == Button_naji[3] then
            if IsMapFlagSet(MAP_RESOURCE_TRADING_ALLIES_ONLY) then
                call SetMapFlag(MAP_RESOURCE_TRADING_ALLIES_ONLY, false)
            else
                call SetMapFlag(MAP_RESOURCE_TRADING_ALLIES_ONLY, true)
            endif
        elseif GetClickedButton() == Button_naji[4] then
            if IsMapFlagSet(MAP_LOCK_ALLIANCE_CHANGES) then
                call SetMapFlag(MAP_LOCK_ALLIANCE_CHANGES, false)
            else
                call SetMapFlag(MAP_LOCK_ALLIANCE_CHANGES, true)
            endif
        elseif GetClickedButton() == Button_naji[5] then
            if IsMapFlagSet(MAP_ALLIANCE_CHANGES_HIDDEN) then
                call SetMapFlag(MAP_ALLIANCE_CHANGES_HIDDEN, false)
            else
                call SetMapFlag(MAP_ALLIANCE_CHANGES_HIDDEN, true)
            endif
        endif
        call DialogResetA3_naji()
        call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[2], true)
    endif
endfunction
function TestA70_naji takes nothing returns nothing
    call DialogResetA3_naji()
    call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[2], true)
endfunction
function TestA69_naji takes nothing returns nothing
    local real i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if i_naji >= 1 and i_naji <= 5 then
        call SetMapFlag(MAP_LOCK_SPEED, false)
        if i_naji == 1 then
            call SetGameSpeed(MAP_SPEED_SLOWEST)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000极慢|r")
        elseif i_naji == 2 then
            call SetGameSpeed(MAP_SPEED_SLOW)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000慢|r")
        elseif i_naji == 3 then
            call SetGameSpeed(MAP_SPEED_NORMAL)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000普通|r")
        elseif i_naji == 4 then
            call SetGameSpeed(MAP_SPEED_FAST)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000快|r")
        elseif i_naji == 5 then
            call SetGameSpeed(MAP_SPEED_FASTEST)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00当前的游戏速度为|cffFF0000极快|r")
        endif
    else
        call DisplayTextToPlayer(Ptest_naji, 0, 0, "|cffFF0000输入错误！请输入|cffFFFF001~5|cffFF0000之间的整数|r")
    endif
endfunction
function TestA68_naji takes nothing returns nothing
    call EndGame(true)
endfunction
function TestA67_naji takes nothing returns nothing
    local group g_naji= CreateGroup()
    local unit u_naji
    local real r_naji= S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call SetUnitScale(u_naji, r_naji, r_naji, r_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00玩家选择的所有单位的缩放更改为原模型默认的|cffFF0000" + R2S(r_naji) + "|cffFFFF00倍|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA66_naji takes nothing returns nothing
    local integer i_naji
    set i_naji=0
    loop
        call DisplayTimedTextToPlayer(Player(i_naji), 0, 0, 15, "                              |cff00FFFF" + GetPlayerName(GetTriggerPlayer()) + "：|r" + GetEventPlayerChatString())
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
endfunction
function TestA65_naji takes nothing returns nothing
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "===============*****===============")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0目标坐标：|cffFFFF00(" + R2S(GetCameraTargetPositionX()) + "," + R2S(GetCameraTargetPositionY()) + "," + R2S(GetCameraTargetPositionZ()) + ")|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0源坐标：|cffFFFF00(" + R2S(GetCameraEyePositionX()) + "," + R2S(GetCameraEyePositionY()) + "," + R2S(GetCameraEyePositionZ()) + ")|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0X轴旋转角度/弧度：|cffFFFF00" + R2S(57.295 * GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK)) + "/" + R2S(GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK)) + "|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0Y轴旋转角度/弧度：|cffFFFF00" + R2S(57.295 * GetCameraField(CAMERA_FIELD_ROLL)) + "/" + R2S(GetCameraField(CAMERA_FIELD_ROLL)) + "|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0Z轴旋转角度/弧度：|cffFFFF00" + R2S(57.295 * GetCameraField(CAMERA_FIELD_ROTATION)) + "/" + R2S(GetCameraField(CAMERA_FIELD_ROTATION)) + "|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0Z轴偏移：|cffFFFF00" + R2S(GetCameraField(CAMERA_FIELD_ZOFFSET)) + "|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0镜头距离：|cffFFFF00" + R2S(GetCameraField(CAMERA_FIELD_TARGET_DISTANCE)) + "|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0远景截断距离：|cffFFFF00" + R2S(GetCameraField(CAMERA_FIELD_FARZ)) + "|r")
    call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0镜头区域：|cffFFFF00" + R2S(GetCameraField(CAMERA_FIELD_FIELD_OF_VIEW)) + "|r")
endfunction
function TestA64_naji takes nothing returns nothing
    if GetLocalPlayer() == Ptest_naji then
        set Rcamera_naji[2]=57.29582 * GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK)
        set Rcamera_naji[3]=57.29582 * GetCameraField(CAMERA_FIELD_ROTATION)
        if Bcamera_naji[1] then
            set Rcamera_naji[2]=Rcamera_naji[2] - 1
        endif
        if Bcamera_naji[2] then
            set Rcamera_naji[2]=Rcamera_naji[2] + 1
        endif
        if Bcamera_naji[3] then
            set Rcamera_naji[3]=Rcamera_naji[3] - 1
        endif
        if Bcamera_naji[4] then
            set Rcamera_naji[3]=Rcamera_naji[3] + 1
        endif
        call SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK, Rcamera_naji[2], .01)
        call SetCameraField(CAMERA_FIELD_ROTATION, Rcamera_naji[3], .01)
        call PanCameraToTimed(Rcamera_naji[0], Rcamera_naji[1], 0)
    endif
endfunction
function TestA63_naji takes nothing returns nothing
    local integer i_naji= 0
    if GetTriggerEventId() == EVENT_PLAYER_ARROW_UP_UP then
        set Bcamera_naji[1]=false
    elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_DOWN_UP then
        set Bcamera_naji[2]=false
    elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_LEFT_UP then
        set Bcamera_naji[3]=false
    elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_RIGHT_UP then
        set Bcamera_naji[4]=false
    endif
    loop
        set i_naji=i_naji + 1
        if i_naji >= 5 then
            call DestroyTimer(Tcamera_naji)
            set Tcamera_naji=null
            exitwhen true
        endif
        if Bcamera_naji[i_naji] then
            exitwhen true
        endif
    endloop
endfunction
function TestA62_naji takes nothing returns nothing
    if Tcamera_naji == null then
        set Tcamera_naji=CreateTimer()
        call TimerStart(Tcamera_naji, .01, true, function TestA64_naji)
    endif
    set Rcamera_naji[0]=GetCameraTargetPositionX()
    set Rcamera_naji[1]=GetCameraTargetPositionY()
    if GetTriggerEventId() == EVENT_PLAYER_ARROW_UP_DOWN then
        set Bcamera_naji[1]=true
    elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_DOWN_DOWN then
        set Bcamera_naji[2]=true
    elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_LEFT_DOWN then
        set Bcamera_naji[3]=true
    elseif GetTriggerEventId() == EVENT_PLAYER_ARROW_RIGHT_DOWN then
        set Bcamera_naji[4]=true
    endif
endfunction
function TestA61_naji takes nothing returns nothing
    if Bcamera_naji[0] then
        set Bcamera_naji[0]=false
        call DestroyTimer(Tcamera_naji)
        call DisableTrigger(Ttest_naji[58])
        call DisableTrigger(Ttest_naji[59])
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000关闭|cffFFFF00镜头模式|r")
    else
        set Bcamera_naji[0]=true
        call EnableTrigger(Ttest_naji[58])
        call EnableTrigger(Ttest_naji[59])
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 10, "|cffFF0000开启|cffFFFF00镜头模式|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 10, "|cffFF0000用上下左右对镜头进行调整，镜头距离请用|cffFFFF00'cd|cffFF0000代码，重置镜头请用|cffFFFF00'cr|cffFF0000代码|r")
    endif
endfunction
function TestA60_naji takes nothing returns nothing
    local group g_naji= CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if GetLocalPlayer() == GetTriggerPlayer() then
            call SetCameraTargetController(FirstOfGroup(g_naji), 0, 0, false)
        endif
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已锁定|cffFF0000玩家选择的第一个单位|cffFFFF00的镜头，按下|cffFF0000Ctrl+C|cffFFFF00可解锁|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA59_naji takes nothing returns nothing
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call UnitRemoveBuffs(u_naji, true, true)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已清除玩家选择的所有单位的|cffFF0000魔法效果|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA58_naji takes nothing returns nothing
    local integer i_naji= 0
    call ClearTextMessages()
    loop
        call DisplayTextToPlayer(Player(i_naji), 0, 0, "|cffFFFF00你已经被|cffFF0000踢出游戏|r")
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
endfunction
function TestA57_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString()))) - 1
    if i_naji >= 0 and i_naji <= 15 then
        if GetPlayerSlotState(Player(i_naji)) == PLAYER_SLOT_STATE_PLAYING then
            if GetLocalPlayer() == Player(i_naji) then
                call TimerStart(CreateTimer(), 0, true, function TestA58_naji)
            endif
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已将|cffFF0000" + GetPlayerName(Player(i_naji)) + "|cffFFFF00踢出游戏！|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00这个玩家位|cffFF0000并不存在玩家|r")
        endif
    else
        call DisplayTextToPlayer(Ptest_naji, 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA56_naji takes nothing returns nothing
    local integer i_naji= S2ID_naji(SubString(GetEventPlayerChatString(), 3, 7))
    local group g_naji
    local item tt
    local integer z_naji= 1
    if StringLength(GetEventPlayerChatString()) >= 8 then
        set z_naji=S2I(SubString(GetEventPlayerChatString(), 8, StringLength(GetEventPlayerChatString())))
        if z_naji <= 0 then
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000数值部分请输入|cffFFFF00大于0|cffFF0000的整数|r")
            return
        endif
    endif
    set g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00已执行对应行为，若没有效果，请确定你输入了正确的|cffFF0000物体编辑器ID|r")
        if UnitAddAbility(FirstOfGroup(g_naji), i_naji) == false then
            if StringLength(GetEventPlayerChatString()) >= 8 then
                call SetUnitAbilityLevel(FirstOfGroup(g_naji), i_naji, z_naji)
            else
                call UnitRemoveAbility(FirstOfGroup(g_naji), i_naji)
                call UnitMakeAbilityPermanent(FirstOfGroup(g_naji), false, i_naji)
            endif
        else
            call UnitMakeAbilityPermanent(FirstOfGroup(g_naji), true, i_naji)
            call SetUnitAbilityLevel(FirstOfGroup(g_naji), i_naji, z_naji)
        endif
        loop
            call CreateUnit(GetTriggerPlayer(), i_naji, GetUnitX(FirstOfGroup(g_naji)), GetUnitY(FirstOfGroup(g_naji)), 0)
            set tt=CreateItem(i_naji, GetUnitX(FirstOfGroup(g_naji)), GetUnitY(FirstOfGroup(g_naji)))
            if tt != null then
                call SetItemPlayer(tt, GetTriggerPlayer(), false)
                set tt=null
            endif
            call CreateDestructable(i_naji, GetUnitX(FirstOfGroup(g_naji)), GetUnitY(FirstOfGroup(g_naji)), 0, 1, 0)
            set z_naji=z_naji - 1
            exitwhen z_naji <= 0
        endloop
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA55_naji takes nothing returns nothing
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            if IsUnitInGroup(u_naji, Guw_naji) then
                call SetUnitPathing(u_naji, true)
                call GroupRemoveUnit(Guw_naji, u_naji)
            else
                call SetUnitPathing(u_naji, false)
                call GroupAddUnit(Guw_naji, u_naji)
            endif
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000已切换玩家选择的所有单位的|cffFFFF00触碰|cffFF0000状态|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA54_naji takes nothing returns nothing
    local real r_naji= S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if GetLocalPlayer() == GetTriggerPlayer() then
        if r_naji > 0 then
            call SetCameraField(CAMERA_FIELD_FARZ, r_naji, 0)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家当前镜头的远景截断距离为|cffFFFF00" + R2S(r_naji) + "|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000数值错误！|cffFFFF00请输入|cffFF0000大于0|cffFFFF00的实数|r")
        endif
    endif
endfunction
function TestA53_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString()))) - 1
    local group g_naji= CreateGroup()
    local unit u_naji
    if i_naji >= 0 and i_naji <= 15 then
        call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
        if FirstOfGroup(g_naji) != null then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitOwner(u_naji, Player(i_naji), true)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家选择的所有单位|cffFFFF00的所有者已改变为|cffFF0000" + GetPlayerName(Player(i_naji)) + "|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
        endif
    else
        call DisplayTextToPlayer(Ptest_naji, 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA52_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString()))) - 1
    local integer z_naji= StringLength(GetEventPlayerChatString()) - 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
        if Sdummy_naji[1] == "," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji - 1
        if z_naji <= 0 then
            set z_naji=GetPlayerId(GetTriggerPlayer()) + 1
            exitwhen true
        endif
    endloop
    if z_naji <= 0 or z_naji >= 17 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
        return
    endif
    if i_naji >= 0 and i_naji <= 15 then
        if IsPlayerAlly(Player(i_naji), GetTriggerPlayer()) then
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_PASSIVE, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_XP, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_VISION, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_SPELLS, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_HELP_REQUEST, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_HELP_RESPONSE, false)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_PASSIVE, false)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_XP, false)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_VISION, false)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_SPELLS, false)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_HELP_REQUEST, false)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_HELP_RESPONSE, false)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000" + GetPlayerName(Player(z_naji - 1)) + "|cffFFFF00和|cffFF0000" + GetPlayerName(Player(i_naji)) + "|cffFFFF00成为|cffFF0000敌人|r")
        else
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_PASSIVE, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_XP, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_VISION, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_SPELLS, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_HELP_REQUEST, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_HELP_RESPONSE, true)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_PASSIVE, true)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_XP, true)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_VISION, true)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_SHARED_SPELLS, true)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_HELP_REQUEST, true)
            call SetPlayerAlliance(Player(z_naji - 1), Player(i_naji), ALLIANCE_HELP_RESPONSE, true)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000" + GetPlayerName(Player(z_naji - 1)) + "|cffFFFF00和|cffFF0000" + GetPlayerName(Player(i_naji)) + "|cffFFFF00成为|cffFF0000同盟|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA51_naji takes nothing returns nothing
    if GetLocalPlayer() == Ptest_naji then
        call ClearTextMessages()
        call ResetToGameCamera(0)
        loop
            call DestroyQuest(Q_naji[Iquest_naji])
            set Iquest_naji=Iquest_naji - 1
            exitwhen Iquest_naji == 0
        endloop
    endif
    loop
        call DestroyTrigger(Ttest_naji[Itrigger_naji])
        set Itrigger_naji=Itrigger_naji - 1
        exitwhen Itrigger_naji == 0
    endloop
    if Ttest_naji[0] != null then
        call DestroyTrigger(Ttest_naji[0])
    endif
    if Ibm_naji >= 1 then
        loop
            set Ibm_naji=Ibm_naji - 1
            call DestroyTextTag(Tbm_naji[Ibm_naji])
            set Tbm_naji[Ibm_naji]=null
            exitwhen Ibm_naji <= 0
        endloop
    endif
    loop
        call RemoveWeatherEffect(Weather_naji[Iweather_naji])
        set Iweather_naji=Iweather_naji - 1
        exitwhen Iweather_naji <= 0
    endloop
    call DialogDestroy(Dnaji_naji[0])
    call DialogDestroy(Dnaji_naji[1])
    call DialogDestroy(Dnaji_naji[2])
    call DestroyGroup(Gcd_naji[0])
    call DestroyGroup(Gcd_naji[1])
    call DestroyGroup(Gms_naji)
    call DestroyGroup(Guw_naji)
    call RemoveRegion(Rworld_naji)
    call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "|cffFF0000已移除|cffFFFF00najitest|cffFF0000测试系统")
endfunction
function TestA50_naji takes nothing returns nothing
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call KillUnit(u_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00杀死|cffFF0000玩家选择的所有单位|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA49_naji takes nothing returns nothing
    local real array r_naji
    local integer a_naji= 1
    local integer b_naji= 3
    local integer c_naji= 3
    set r_naji[1]=1
    set r_naji[2]=GetPlayerId(GetTriggerPlayer()) + 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), b_naji, b_naji + 1)
        if Sdummy_naji[1] == "," then
            set r_naji[a_naji]=S2R(SubString(GetEventPlayerChatString(), c_naji, b_naji))
            set a_naji=a_naji + 1
            set c_naji=b_naji + 1
            if a_naji >= 2 and c_naji < StringLength(GetEventPlayerChatString()) then
                set r_naji[2]=S2R(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
                exitwhen true
            endif
        endif
        set b_naji=b_naji + 1
        if b_naji >= StringLength(GetEventPlayerChatString()) then
            set r_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
    endloop
    if R2I(r_naji[2]) >= 1 and R2I(r_naji[2]) <= 16 then
        call SetMapFlag(MAP_USE_HANDICAPS, true)
        call SetPlayerHandicap(Player(R2I(r_naji[2]) - 1), r_naji[1])
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000已设置|cff00FFFF" + GetPlayerName(Player(R2I(r_naji[2]) - 1)) + "|cffFF0000的生命障碍为|cffFFFF00" + R2S(r_naji[1]) + "|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家参数输入数值错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA48_naji takes nothing returns nothing
    local real r_naji= S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    call SetTimeOfDayScale(r_naji / 100)
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置时间流逝速度为|cffFFFF00" + R2S(r_naji) + "%|r")
endfunction
function TestA47_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call SetUnitUserData(u_naji, i_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的自定义值为|cffFFFF00" + I2S(i_naji) + "|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA46_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if i_naji >= 1 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                if IsUnitType(u_naji, UNIT_TYPE_HERO) then
                    call SetHeroInt(u_naji, i_naji, true)
                    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有英雄的智力为|cffFFFF00" + I2S(i_naji) + "|r")
                endif
            endloop
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA45_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if i_naji >= 1 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                if IsUnitType(u_naji, UNIT_TYPE_HERO) then
                    call SetHeroAgi(u_naji, i_naji, true)
                    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有英雄的敏捷为|cffFFFF00" + I2S(i_naji) + "|r")
                endif
            endloop
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA44_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if i_naji >= 1 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                if IsUnitType(u_naji, UNIT_TYPE_HERO) then
                    call SetHeroStr(u_naji, i_naji, true)
                    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有英雄的力量为|cffFFFF00" + I2S(i_naji) + "|r")
                endif
            endloop
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA43_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            if IsUnitType(u_naji, UNIT_TYPE_HERO) then
                if GetHeroSkillPoints(u_naji) + i_naji >= 0 then
                    call UnitModifySkillPoints(u_naji, i_naji)
                else
                    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF80C0" + GetUnitName(u_naji) + "|cffFF0000的剩余技能点不能|cffFFFF00低于0|cffFF0000！|r")
                endif
            endif
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000增加玩家选择的所有英雄的技能点数：|cffFFFF00" + I2S(i_naji) + "|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA42_naji takes nothing returns nothing
    local real r_naji= S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            if UnitAddAbility(u_naji, 'Arav') then
                call UnitRemoveAbility(u_naji, 'Arav')
            endif
            call SetUnitFlyHeight(u_naji, r_naji, 0)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的飞行高度为|cffFFFF00" + R2S(r_naji) + "|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA41_naji takes nothing returns nothing
    local real r_naji= S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if r_naji > 0 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitAcquireRange(u_naji, r_naji)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的主动攻击范围为|cffFFFF00" + R2S(r_naji) + "|r")
        else
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitAcquireRange(u_naji, GetUnitDefaultAcquireRange(u_naji))
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认主动攻击范围|cffFF0000。请输入|cffFFFF00大于0|cffFF0000的实数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA40_naji takes nothing returns nothing
    local real r_naji= S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if r_naji >= 0 and r_naji <= 1 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitTurnSpeed(u_naji, r_naji)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的转身速率为|cffFFFF00" + R2S(r_naji) + "|r")
        else
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitTurnSpeed(u_naji, GetUnitDefaultTurnSpeed(u_naji))
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认转身速率|cffFF0000。请输入|cffFFFF000~1|cffFF0000之间的实数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA39_naji takes nothing returns nothing
    local real r_naji= S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        if r_naji >= 0 and r_naji <= 522 then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call h__SetUnitMoveSpeed(u_naji , r_naji)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的移动速度为|cffFFFF00" + R2S(r_naji) + "|r")
        else
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call h__SetUnitMoveSpeed(u_naji , GetUnitDefaultMoveSpeed(u_naji))
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认移动速度|cffFF0000。请输入|cffFFFF000~522|cffFF0000之间的实数|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA38_naji takes nothing returns nothing
    local real r_naji= S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if r_naji >= 0 and r_naji <= 24 then
        call SetFloatGameState(GAME_STATE_TIME_OF_DAY, r_naji)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000当前时间设置为|cffFFFF00" + R2S(r_naji) + "|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000请输入|cffFFFF000~24|cffFF0000之间的实数|r")
    endif
endfunction
function TestA37_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    call SetRandomSeed(i_naji)
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000随机种子设置为|cffFFFF00" + I2S(i_naji) + "|r")
endfunction
function TestA36_naji takes nothing returns nothing
    local group g_naji
    local unit u_naji
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
    local integer z_naji= StringLength(GetEventPlayerChatString()) - 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
        if Sdummy_naji[1] == "," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji - 1
        if z_naji <= 0 then
            set z_naji=1
            exitwhen true
        endif
    endloop
    if z_naji <= 0 or z_naji >= 7 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000第二参数输入错误！请输入|cffFFFF001~6|cffFF0000间的整数|r")
        return
    endif
    set g_naji=CreateGroup()
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    set u_naji=FirstOfGroup(g_naji)
    if u_naji != null then
        if UnitItemInSlot(u_naji, z_naji - 1) != null then
            if i_naji <= 0 then
                set i_naji=0
            endif
            call SetItemCharges(UnitItemInSlot(u_naji, z_naji - 1), i_naji)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000该单位|cffFFFF00第" + I2S(z_naji) + "格物品栏|cffFF0000的可允次数设置为|cffFFFF00" + I2S(i_naji) + "|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000该单位|cffFFFF00第" + I2S(z_naji) + "格物品栏|cffFF0000不存在物品|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA35_naji takes nothing returns nothing
    loop
        set Ibm_naji=Ibm_naji - 1
        call DestroyTextTag(Tbm_naji[Ibm_naji])
        set Tbm_naji[Ibm_naji]=null
        exitwhen Ibm_naji <= 0
    endloop
    call DisplayTextToPlayer(GetLocalPlayer(), 0, 0, "|cffFF0000已清除所有|cffFFFF00备忘文字|r")
endfunction
function TestA34_naji takes nothing returns nothing
    set Tbm_naji[Ibm_naji]=CreateTextTag()
    call SetTextTagText(Tbm_naji[Ibm_naji], SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())), 20 * .023 / 10)
    call SetTextTagPos(Tbm_naji[Ibm_naji], GetCameraTargetPositionX(), GetCameraTargetPositionY(), 0)
    call SetTextTagColor(Tbm_naji[Ibm_naji], 0, 255, 0, 255)
    set Ibm_naji=Ibm_naji + 1
endfunction
function TestA33_naji takes nothing returns nothing
    local real r_naji= S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if r_naji > 100 then
        set r_naji=1
    endif
    if r_naji < 0 then
        set r_naji=0
    endif
    set r_naji=r_naji / 100
    if GetLocalPlayer() == GetTriggerPlayer() then
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_AMBIENTSOUNDS, r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_SPELLS, r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_COMBAT, r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_FIRE, r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITMOVEMENT, r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITSOUNDS, r_naji)
        call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UI, r_naji)
    endif
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000你当前的音效音量为：|cffFFFF00" + I2S(R2I(r_naji * 100)) + "%|r")
endfunction
function TestA32_naji takes nothing returns nothing
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000骰得点数：|cffFFFF00" + I2S(GetRandomInt(1, 100)) + "|r")
endfunction
function TestA31_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if i_naji > 100 then
        set i_naji=100
    endif
    if i_naji < 0 then
        set i_naji=0
    endif
    if GetLocalPlayer() == GetTriggerPlayer() then
        call SetMusicVolume(R2I(I2R(i_naji) * 1.27))
    endif
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000你当前的音乐音量为：|cffFFFF00" + I2S(i_naji) + "%|r")
endfunction
function TestA30_naji takes nothing returns nothing
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            if IsUnitPaused(u_naji) then
                call PauseUnit(u_naji, false)
            else
                call PauseUnit(u_naji, true)
            endif
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000已切换玩家选择的所有单位的|cffFFFF00暂停状态|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA29_naji takes nothing returns nothing
    local texttag tt
    if Bir_naji then
        set Sdummy_naji[0]=I2S(R2I(GetEventDamage()))
    else
        set Sdummy_naji[0]=R2S(GetEventDamage())
    endif
    if Bddm_naji then
        if Bpn_naji then
            set Sdummy_naji[3]=GetPlayerName(GetTriggerPlayer()) + "（玩家" + I2S(GetPlayerId(GetTriggerPlayer()) + 1) + "）"
            set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetEventDamageSource())) + "（玩家" + I2S(GetPlayerId(GetOwningPlayer(GetEventDamageSource())) + 1) + "）"
        else
            set Sdummy_naji[3]=""
            set Sdummy_naji[4]=""
        endif
        if Bxy_naji then
            set Sdummy_naji[1]="（" + R2S(GetUnitX(GetTriggerUnit())) + "," + R2S(GetUnitY(GetTriggerUnit())) + "）"
            set Sdummy_naji[2]="（" + R2S(GetWidgetX(GetEventDamageSource())) + "," + R2S(GetWidgetY(GetEventDamageSource())) + "）"
        else
            set Sdummy_naji[1]=""
            set Sdummy_naji[2]=""
        endif
        call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF8000受到了|cffFFFF00" + Sdummy_naji[0] + "|cffFF8000点伤害！|cff00FFFF伤害来源为|r" + Sdummy_naji[4] + "|cffFFFF00" + GetUnitName(GetEventDamageSource()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetEventDamageSource())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
    else
        if GetLocalPlayer() == Ptest_naji then
            set tt=CreateTextTag()
            call SetTextTagText(tt, Sdummy_naji[0], 13 * .023 / 10)
            call SetTextTagPosUnit(tt, GetTriggerUnit(), 0)
            call SetTextTagColor(tt, 255, 0, 0, 255)
            call SetTextTagVelocity(tt, 150 * .071 / 128 * Cos(Rdummy_naji * .01745), 150 * .071 / 128 * Sin(Rdummy_naji * .01745))
            call SetTextTagPermanent(tt, false)
            call SetTextTagLifespan(tt, 1)
            call SetTextTagFadepoint(tt, .8)
            set tt=null
            set Rdummy_naji=Rdummy_naji + 30
            if Rdummy_naji >= 360 then
                set Rdummy_naji=Rdummy_naji - 360
            endif
        endif
    endif
endfunction
function TestA28_naji takes nothing returns nothing
    if GetUnitAbilityLevel(GetTriggerUnit(), 'Aloc') == 0 then
        call TriggerRegisterUnitEvent(Ttest_naji[0], GetTriggerUnit(), EVENT_UNIT_DAMAGED)
    endif
endfunction
function TestA27_naji takes nothing returns nothing
    local group g_naji= CreateGroup()
    local integer i_naji= 0
    local integer z_naji
    loop
        call GroupEnumUnitsOfPlayer(g_naji, Player(i_naji), null)
        set z_naji=0
        loop
            exitwhen FirstOfGroup(g_naji) == null
            call GroupRemoveUnit(g_naji, FirstOfGroup(g_naji))
            set z_naji=z_naji + 1
        endloop
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 15, "|cff00FFFF(" + I2S(i_naji + 1) + ")|cffFF0000" + GetPlayerName(Player(i_naji)) + "|r：|cffFF80C0总单位数|cffFFFF00" + I2S(z_naji) + "|r：|cffFF80C0金钱|cffFFFF00" + I2S(GetPlayerState(Player(i_naji), PLAYER_STATE_RESOURCE_GOLD)) + "|r：|cffFF80C0木头|cffFFFF00" + I2S(GetPlayerState(Player(i_naji), PLAYER_STATE_RESOURCE_LUMBER)) + "|r：|cffFF80C0已用/可用人口|cffFFFF00" + I2S(GetPlayerState(Player(i_naji), PLAYER_STATE_RESOURCE_FOOD_USED)) + "|r/|cffFFFF00" + I2S(GetPlayerState(Player(i_naji), PLAYER_STATE_RESOURCE_FOOD_CAP)))
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA26_naji takes nothing returns nothing
    if Bpause_naji then
        call PauseGame(false)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000继续游戏|r")
        set Bpause_naji=false
    else
        call PauseGame(true)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000暂停游戏|r")
        set Bpause_naji=true
    endif
endfunction
function TestA25_naji takes nothing returns nothing
    local real r_naji= S2R(SubString(GetEventPlayerChatString(), 4, StringLength(GetEventPlayerChatString())))
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call SetUnitTimeScale(u_naji, r_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的动画播放速率为|cffFFFF00" + R2S(r_naji) + "|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA24_naji takes nothing returns nothing
    local integer array i_naji
    local integer a_naji= 1
    local integer b_naji= 4
    local integer c_naji= 4
    local group g_naji
    local unit u_naji
    set i_naji[1]=0
    set i_naji[2]=0
    set i_naji[3]=0
    set i_naji[4]=0
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), b_naji, b_naji + 1)
        if Sdummy_naji[1] == "," then
            set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(), c_naji, b_naji))
            set a_naji=a_naji + 1
            set c_naji=b_naji + 1
            if a_naji >= 4 then
                set i_naji[4]=S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
                exitwhen true
            endif
        endif
        set b_naji=b_naji + 1
        if b_naji >= StringLength(GetEventPlayerChatString()) then
            set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(), c_naji, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
    endloop
    if i_naji[1] >= 0 and i_naji[1] <= 255 and i_naji[2] >= 0 and i_naji[2] <= 255 and i_naji[3] >= 0 and i_naji[3] <= 255 and i_naji[4] >= 0 and i_naji[4] <= 255 then
        set g_naji=CreateGroup()
        call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
        if FirstOfGroup(g_naji) != null then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitVertexColor(u_naji, i_naji[1], i_naji[2], i_naji[3], i_naji[4])
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000设置玩家选择的所有单位的染色为|cffFFFF00" + I2S(i_naji[1]) + "|cffFF0000,|cffFFFF00" + I2S(i_naji[2]) + "|cffFF0000,|cffFFFF00" + I2S(i_naji[3]) + "|cffFF0000,|cffFFFF00" + I2S(i_naji[4]) + "|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
        endif
        call DestroyGroup(g_naji)
        set g_naji=null
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！请输入|cffFFFF000~255|cffFF0000之间的整数|r")
    endif
endfunction
function TestA23_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString()))) - 1
    local integer z_naji= StringLength(GetEventPlayerChatString()) - 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
        if Sdummy_naji[1] == "," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji - 1
        if z_naji <= 0 then
            set z_naji=GetPlayerId(GetTriggerPlayer()) + 1
            exitwhen true
        endif
    endloop
    if z_naji <= 0 or z_naji >= 17 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
        return
    endif
    if i_naji >= 0 and i_naji <= 15 then
        if GetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_ADVANCED_CONTROL) then
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_VISION, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_CONTROL, false)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_ADVANCED_CONTROL, false)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000" + GetPlayerName(Player(z_naji - 1)) + "|cffFFFF00失去了|cffFF0000" + GetPlayerName(Player(i_naji)) + "|cffFFFF00的|cffFF0000控制权|r")
        else
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_VISION, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_CONTROL, true)
            call SetPlayerAlliance(Player(i_naji), Player(z_naji - 1), ALLIANCE_SHARED_ADVANCED_CONTROL, true)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000" + GetPlayerName(Player(z_naji - 1)) + "|cffFFFF00获得了|cffFF0000" + GetPlayerName(Player(i_naji)) + "|cffFFFF00的|cffFF0000控制权|r")
        endif
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
    endif
endfunction
function TestA22_naji takes nothing returns nothing
    local group g_naji= CreateGroup()
    local unit u_naji
    local integer i_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    set u_naji=FirstOfGroup(g_naji)
    if u_naji != null then
        set i_naji=GetUnitTypeId(u_naji)
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "===============*****===============")
        if IsUnitType(u_naji, UNIT_TYPE_HERO) then
            set Sdummy_naji[0]=GetHeroProperName(u_naji)
        else
            set Sdummy_naji[0]="无"
        endif
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0单位名称/称谓：|cffFFFF00" + GetUnitName(u_naji) + "/" + Sdummy_naji[0] + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0ID256进制/10进制：|cffFFFF00" + ID2S_naji(GetUnitTypeId(u_naji)) + "/" + I2S(GetUnitTypeId(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0存储地址：|cffFFFF00" + I2S(GetHandleId(u_naji)) + "|r")
        if IsUnitRace(u_naji, RACE_HUMAN) then
            set Sdummy_naji[0]="人族"
        endif
        if IsUnitRace(u_naji, RACE_ORC) then
            set Sdummy_naji[0]="兽族"
        endif
        if IsUnitRace(u_naji, RACE_UNDEAD) then
            set Sdummy_naji[0]="不死族"
        endif
        if IsUnitRace(u_naji, RACE_NIGHTELF) then
            set Sdummy_naji[0]="暗夜精灵族"
        endif
        if IsUnitRace(u_naji, RACE_DEMON) then
            set Sdummy_naji[0]="恶魔"
        endif
        if IsUnitRace(u_naji, ConvertRace(0)) then
            set Sdummy_naji[0]="没有"
        endif
        if IsUnitRace(u_naji, ConvertRace(7)) then
            set Sdummy_naji[0]="其它"
        endif
        if IsUnitRace(u_naji, ConvertRace(8)) then
            set Sdummy_naji[0]="野外生物"
        endif
        if IsUnitRace(u_naji, ConvertRace(9)) then
            set Sdummy_naji[0]="平民"
        endif
        if IsUnitRace(u_naji, RACE_HUMAN) then
            set Sdummy_naji[0]="人族"
        endif
        if IsUnitRace(u_naji, ConvertRace(10)) then
            set Sdummy_naji[0]="动物"
        endif
        if IsUnitRace(u_naji, ConvertRace(11)) then
            set Sdummy_naji[0]="娜迦族"
        endif
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0种族/等级：|cffFFFF00" + Sdummy_naji[0] + "/" + I2S(GetUnitLevel(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0所属玩家/cj索引：|cffFFFF00" + GetPlayerName(GetOwningPlayer(u_naji)) + "/" + I2S(GetPlayerId(GetOwningPlayer(u_naji))) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0坐标：|cffFFFF00(" + R2S(GetUnitX(u_naji)) + "," + R2S(GetUnitY(u_naji)) + ")|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0面向角度/弧度：|cffFFFF00" + R2S(GetUnitFacing(u_naji)) + "/" + R2S(.017 * GetUnitFacing(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0自定义值：|cffFFFF00" + I2S(GetUnitUserData(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0附加值：|cffFFFF00" + I2S(GetUnitPointValue(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0主动攻击范围当前/默认：|cffFFFF00" + R2S(GetUnitAcquireRange(u_naji)) + "/" + R2S(GetUnitDefaultAcquireRange(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0移动速度当前/默认：|cffFFFF00" + R2S(GetUnitMoveSpeed(u_naji)) + "/" + R2S(GetUnitDefaultMoveSpeed(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0转身速率当前/默认：|cffFFFF00" + R2S(GetUnitTurnSpeed(u_naji)) + "/" + R2S(GetUnitDefaultTurnSpeed(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0飞行高度当前/默认：|cffFFFF00" + R2S(GetUnitFlyHeight(u_naji)) + "/" + R2S(GetUnitDefaultFlyHeight(u_naji)) + "|r")
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0拥有buff数量全部/正面/负面：|cffFFFF00" + I2S(UnitCountBuffsEx(u_naji, true, true, false, false, true, true, false)) + "/" + I2S(UnitCountBuffsEx(u_naji, true, false, false, false, true, true, false)) + "/" + I2S(UnitCountBuffsEx(u_naji, false, true, false, false, true, true, false)) + "|r")
        set Sdummy_naji[0]=" "
        if IsUnitIdType(i_naji, UNIT_TYPE_MELEE_ATTACKER) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "近战，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_RANGED_ATTACKER) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "远程，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_STRUCTURE) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "建筑，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_HERO) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "英雄，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_GROUND) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "地面，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_FLYING) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "飞行，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_SUMMONED) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "召唤单位，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_PLAGUED) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "附带瘟疫，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_SNARED) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "被束缚的，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_STUNNED) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "被眩晕的，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_GIANT) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "泰坦，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_TAUREN) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "牛头人，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_UNDEAD) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "不死族，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_MECHANICAL) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "机械，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_ANCIENT) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "古树，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_PEON) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "工人，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_TOWNHALL) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "城镇大厅，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_SAPPER) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "地精工兵，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_POISONED) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "中毒的，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_POLYMORPHED) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "被变形的，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_SLEEPING) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "被催眠的，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_RESISTANT) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "有抗性皮肤的，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_ETHEREAL) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "处于虚无状态，"
        endif
        if IsUnitIdType(i_naji, UNIT_TYPE_MAGIC_IMMUNE) then
            set Sdummy_naji[0]=Sdummy_naji[0] + "魔法免疫，"
        endif
        set Sdummy_naji[0]=SubString(Sdummy_naji[0], 1, StringLength(Sdummy_naji[0]) - 2)
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 60, "|cffFF80C0可识别类型：|cffFFFF00" + Sdummy_naji[0] + "||r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
    set u_naji=null
endfunction
function TestA21_naji takes nothing returns nothing
    if GetLocalPlayer() == GetTriggerPlayer() then
        call ResetToGameCamera(0)
    endif
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000重置镜头|r")
endfunction
function TestA20_naji takes nothing returns nothing
    if GetLocalPlayer() == GetTriggerPlayer() then
        call ClearTextMessages()
    endif
endfunction
function TestA19_naji takes nothing returns nothing
    if Bpn_naji then
        set Sdummy_naji[3]=GetPlayerName(GetOwningPlayer(GetTriggerUnit())) + "（玩家" + I2S(GetPlayerId(GetOwningPlayer(GetTriggerUnit())) + 1) + "）"
    else
        set Sdummy_naji[3]=""
    endif
    if Bxy_naji then
        set Sdummy_naji[1]="（" + R2S(GetUnitX(GetTriggerUnit())) + "," + R2S(GetUnitY(GetTriggerUnit())) + "）"
        set Sdummy_naji[2]="（" + R2S(GetWidgetX(GetKillingUnit())) + "," + R2S(GetWidgetY(GetKillingUnit())) + "）"
    else
        set Sdummy_naji[1]=""
        set Sdummy_naji[2]=""
    endif
    if GetTriggerPlayer() == null then
        set unitnumber_lh=unitnumber_lh + 1
        set createdunitnumber_lh=createdunitnumber_lh + 1
        call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0第一次进入地图,当前单位数：" + I2S(unitnumber_lh) + ",创建单位总数：" + I2S(createdunitnumber_lh) + "|r")
    else
        if Bpn_naji then
            set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetKillingUnit())) + "（玩家" + I2S(GetPlayerId(GetOwningPlayer(GetKillingUnit())) + 1) + "）"
        else
            set Sdummy_naji[4]=""
        endif
        set unitnumber_lh=unitnumber_lh - 1
        call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0死亡！凶手是：|r" + Sdummy_naji[4] + "|cffFFFF00" + GetUnitName(GetKillingUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetKillingUnit())) + "|cffFFFF00" + Sdummy_naji[2] + ",当前单位数：" + I2S(unitnumber_lh) + ",创建单位总数：" + I2S(createdunitnumber_lh) + "|r")
    endif
endfunction
function TestA18_naji takes nothing returns nothing
    call SetPlayerName(GetTriggerPlayer(), SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000你当前的名称为：|cffFFFF00" + GetPlayerName(GetTriggerPlayer()) + "|r")
endfunction
function TestA17_naji takes nothing returns nothing
    local location p_naji
    if Bpn_naji then
        set Sdummy_naji[3]=GetPlayerName(GetTriggerPlayer()) + "（玩家" + I2S(GetPlayerId(GetTriggerPlayer()) + 1) + "）"
    else
        set Sdummy_naji[3]=""
    endif
    if Bxy_naji then
        set Sdummy_naji[1]="（" + R2S(GetUnitX(GetTriggerUnit())) + "," + R2S(GetUnitY(GetTriggerUnit())) + "）"
        set Sdummy_naji[2]="（" + R2S(GetWidgetX(GetOrderTarget())) + "," + R2S(GetWidgetY(GetOrderTarget())) + "）"
    else
        set Sdummy_naji[1]=""
        set Sdummy_naji[2]=""
    endif
    set Sdummy_naji[0]=OrderId2String(GetIssuedOrderId())
    if Sdummy_naji[0] == null then
        set Sdummy_naji[0]=UnitId2String(GetIssuedOrderId())
        if Sdummy_naji[0] == null then
            set Sdummy_naji[0]=IDidentify_naji(GetIssuedOrderId())
            if Sdummy_naji[0] == null or Sdummy_naji[0] == "Default string" then
                set Sdummy_naji[0]="null"
            else
                set Sdummy_naji[0]=Sdummy_naji[0] + "|cff00FF00" + ID2S_naji(GetIssuedOrderId())
            endif
        endif
    endif
    if GetOrderTargetUnit() == null then
        if GetOrderTargetDestructable() == null then
            if GetOrderTargetItem() == null then
                set p_naji=GetOrderPointLoc()
                if p_naji == null then
                    call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0发布了|cffFFFF00" + Sdummy_naji[0] + "|cffFF0000（" + I2S(GetIssuedOrderId()) + "）|r")
                else
                    call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0发布了|cffFFFF00" + Sdummy_naji[0] + "|cffFF0000（" + I2S(GetIssuedOrderId()) + "）|cff00FFFF目标点为|cffFFFF00（" + R2S(GetOrderPointX()) + "," + R2S(GetOrderPointY()) + "）|r")
                endif
                call RemoveLocation(p_naji)
                set p_naji=null
            else
                call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0发布了|cffFFFF00" + Sdummy_naji[0] + "|cffFF0000（" + I2S(GetIssuedOrderId()) + "）|cff00FFFF目标为|cffFFFF00" + GetItemName(GetOrderTargetItem()) + "|cffFF0000" + ID2S_naji(GetItemTypeId(GetOrderTargetItem())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
            endif
        else
            call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0发布了|cffFFFF00" + Sdummy_naji[0] + "|cffFF0000（" + I2S(GetIssuedOrderId()) + "）|cff00FFFF目标为|cffFFFF00" + GetDestructableName(GetOrderTargetDestructable()) + "|cffFF0000" + ID2S_naji(GetDestructableTypeId(GetOrderTargetDestructable())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
        endif
    else
        if Bpn_naji then
            set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetOrderTargetUnit())) + "（玩家" + I2S(GetPlayerId(GetOwningPlayer(GetOrderTargetUnit())) + 1) + "）"
        else
            set Sdummy_naji[4]=""
        endif
        call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF80C0发布了|cffFFFF00" + Sdummy_naji[0] + "|cffFF0000（" + I2S(GetIssuedOrderId()) + "）|cff00FFFF目标为|r" + Sdummy_naji[4] + "|cffFFFF00" + GetUnitName(GetOrderTargetUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetOrderTargetUnit())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
    endif
endfunction
function TestA16_naji takes nothing returns nothing
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call RemoveUnit(u_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFFFF00删除|cffFF0000玩家选择的所有单位|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA15_naji takes nothing returns nothing
    local real r_naji= S2R(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    if GetLocalPlayer() == GetTriggerPlayer() then
        if r_naji > 0 then
            call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE, r_naji, 0)
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000玩家当前镜头的镜头距离为|cffFFFF00" + R2S(r_naji) + "|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000数值错误！|cffFFFF00请输入|cffFF0000大于0|cffFFFF00的实数|r")
        endif
    endif
endfunction
function TestA14_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji
    local unit u_naji
    if i_naji >= 0 then
        set g_naji=CreateGroup()
        call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
        if FirstOfGroup(g_naji) != null then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                call SetUnitAnimationByIndex(u_naji, i_naji)
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000播放玩家选择的所有单位的第|cffFFFF00" + I2S(i_naji) + "|cffFF0000号动作|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
        endif
        call DestroyGroup(g_naji)
        set g_naji=null
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！请输入|cffFFFF00大于0|cffFF0000的数值|r")
    endif
endfunction
function TestA13_naji takes nothing returns nothing
    if Bfog_naji then
        call FogEnable(false)
        call FogMaskEnable(false)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000关闭|cffFFFF00阴影及战争迷雾|r")
        set Bfog_naji=false
    else
        call FogEnable(true)
        call FogMaskEnable(true)
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000开启|cffFFFF00阴影及战争迷雾|r")
        set Bfog_naji=true
    endif
endfunction
function TestA12_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local group g_naji
    local unit u_naji
    if i_naji >= 1 then
        set g_naji=CreateGroup()
        call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
        if FirstOfGroup(g_naji) != null then
            loop
                set u_naji=FirstOfGroup(g_naji)
                exitwhen u_naji == null
                call GroupRemoveUnit(g_naji, u_naji)
                if IsUnitType(u_naji, UNIT_TYPE_HERO) then
                    if GetUnitLevel(u_naji) <= i_naji then
                        call SetHeroLevel(u_naji, i_naji, true)
                    else
                        call UnitStripHeroLevel(u_naji, GetUnitLevel(u_naji) - i_naji)
                    endif
                endif
            endloop
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000将玩家选择的所有英雄等级设置为|cffFFFF00" + I2S(i_naji) + "|r")
        else
            call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
        endif
        call DestroyGroup(g_naji)
        set g_naji=null
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000输入数值错误！请输入|cffFFFF00大于1|cffFF0000的数值|r")
    endif
endfunction
function TestA11_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local integer z_naji= StringLength(GetEventPlayerChatString()) - 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
        if Sdummy_naji[1] == "," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji - 1
        if z_naji <= 0 then
            set z_naji=GetPlayerId(GetTriggerPlayer()) + 1
            exitwhen true
        endif
    endloop
    if z_naji <= 0 or z_naji >= 17 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000第二参数输入错误！请输入|cffFFFF001~16|cffFF0000间的整数|r")
        return
    endif
    call SetPlayerState(Player(z_naji - 1), PLAYER_STATE_RESOURCE_LUMBER, GetPlayerState(Player(z_naji - 1), PLAYER_STATE_RESOURCE_LUMBER) + i_naji)
    if i_naji > 0 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000为|cff00FFFF" + GetPlayerName(Player(z_naji - 1)) + "|cffFF0000增加了|cffFFFF00" + I2S(i_naji) + "|cffFF0000木头|r")
    elseif i_naji < 0 then
        set i_naji=i_naji * - 1
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000为|cff00FFFF" + GetPlayerName(Player(z_naji - 1)) + "|cffFF0000减少了|cffFFFF00" + I2S(i_naji) + "|cffFF0000木头|r")
    endif
endfunction
function TestA10_naji takes nothing returns nothing
    local integer i_naji= S2I(SubString(GetEventPlayerChatString(), 3, StringLength(GetEventPlayerChatString())))
    local integer z_naji= StringLength(GetEventPlayerChatString()) - 1
    loop
        set Sdummy_naji[1]=SubString(GetEventPlayerChatString(), z_naji, z_naji + 1)
        if Sdummy_naji[1] == "," then
            set z_naji=S2I(SubString(GetEventPlayerChatString(), z_naji + 1, StringLength(GetEventPlayerChatString())))
            exitwhen true
        endif
        set z_naji=z_naji - 1
        if z_naji <= 0 then
            set z_naji=GetPlayerId(GetTriggerPlayer()) + 1
            exitwhen true
        endif
    endloop
    if z_naji <= 0 or z_naji >= 17 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000第二参数输入错误！请输入|cffFFFF001~16|cffFF0000间的整数|r")
        return
    endif
    call SetPlayerState(Player(z_naji - 1), PLAYER_STATE_RESOURCE_GOLD, GetPlayerState(Player(z_naji - 1), PLAYER_STATE_RESOURCE_GOLD) + i_naji)
    if i_naji > 0 then
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000为|cff00FFFF" + GetPlayerName(Player(z_naji - 1)) + "|cffFF0000增加了|cffFFFF00" + I2S(i_naji) + "|cffFF0000黄金|r")
    elseif i_naji < 0 then
        set i_naji=i_naji * - 1
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000为|cff00FFFF" + GetPlayerName(Player(z_naji - 1)) + "|cffFF0000减少了|cffFFFF00" + I2S(i_naji) + "|cffFF0000黄金|r")
    endif
endfunction
function TestA9_naji takes nothing returns nothing
    local location p_naji= Location(0, 0)
    set Rhandle_naji=Rhandle_naji + .1
    if Rhandle_naji >= 60 then
        set Sdummy_naji[2]=R2S(Rhandle_naji - I2R(R2I(Rhandle_naji / 60)) * 60)
        if S2R(Sdummy_naji[2]) == 60 then
            set Sdummy_naji[2]="0.0"
        else
            set Sdummy_naji[2]=SubString(" " + Sdummy_naji[2], 1, StringLength(Sdummy_naji[2]) - 1)
        endif
        set Sdummy_naji[1]=" " + R2S(Rhandle_naji / 60)
        set Sdummy_naji[1]=SubString(Sdummy_naji[1], 1, StringLength(Sdummy_naji[1]) - 4) + "分" + Sdummy_naji[2] + "秒"
    else
        set Sdummy_naji[1]=" " + R2S(Rhandle_naji)
        set Sdummy_naji[1]=SubString(Sdummy_naji[1], 1, StringLength(Sdummy_naji[1]) - 2) + "秒"
    endif
    call DisplayTextToPlayer(Ptest_naji, 0, 0, "|cffFFFF00基准值：|r" + I2S(Ihandle_naji) + "|cffFFFF00——当前值：|r" + I2S(GetHandleId(p_naji)) + "|cffFFFF00——差值：|r" + I2S(GetHandleId(p_naji) - Ihandle_naji) + "|cffFFFF00——开启时间：|r" + Sdummy_naji[1])
    call RemoveLocation(p_naji)
    set p_naji=null
endfunction
function TestA7_naji takes nothing returns nothing
    local group g_naji= CreateGroup()
    local unit u_naji
    call GroupEnumUnitsSelected(g_naji, GetTriggerPlayer(), null)
    if FirstOfGroup(g_naji) != null then
        loop
            set u_naji=FirstOfGroup(g_naji)
            exitwhen u_naji == null
            call GroupRemoveUnit(g_naji, u_naji)
            call SetUnitState(u_naji, UNIT_STATE_LIFE, GetUnitState(u_naji, UNIT_STATE_MAX_LIFE))
            call SetUnitState(u_naji, UNIT_STATE_MANA, GetUnitState(u_naji, UNIT_STATE_MAX_MANA))
            call UnitResetCooldown(u_naji)
        endloop
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000恢复了所有玩家选择单位的|cffFFFF00生命/魔法/冷却|r")
    else
        call DisplayTextToPlayer(GetTriggerPlayer(), 0, 0, "|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
    endif
    call DestroyGroup(g_naji)
    set g_naji=null
endfunction
function TestA6_naji takes nothing returns nothing
    local timer t_naji= GetExpiredTimer()
    local unit u_naji
    loop
        set u_naji=FirstOfGroup(Gcd_naji[0])
        exitwhen u_naji == null
        call GroupRemoveUnit(Gcd_naji[0], u_naji)
        call SetUnitState(u_naji, UNIT_STATE_MANA, GetUnitState(u_naji, UNIT_STATE_MAX_MANA))
        call UnitResetCooldown(u_naji)
    endloop
    call DestroyTimer(t_naji)
    set t_naji=null
    set u_naji=null
endfunction
function TestA5_naji takes nothing returns nothing
    local timer t_naji
    if IsUnitInGroup(GetTriggerUnit(), Gcd_naji[1]) then
        set t_naji=CreateTimer()
        call GroupAddUnit(Gcd_naji[0], GetTriggerUnit())
        call TimerStart(t_naji, 0, false, function TestA6_naji)
        set t_naji=null
    endif
endfunction
function TestA3_naji takes nothing returns nothing
    local location p_naji
    if Bpn_naji then
        set Sdummy_naji[3]=GetPlayerName(GetTriggerPlayer()) + "（玩家" + I2S(GetPlayerId(GetTriggerPlayer()) + 1) + "）"
    else
        set Sdummy_naji[3]=""
    endif
    if GetSpellTargetUnit() == null then
        if GetSpellTargetDestructable() == null then
            if GetSpellTargetItem() == null then
                set p_naji=GetSpellTargetLoc()
                if p_naji == null then
                    call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF8000施放了|cffFFFF00" + GetObjectName(GetSpellAbilityId()) + "|cffFF0000" + ID2S_naji(GetSpellAbilityId()) + "|r")
                else
                    call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF8000施放了|cffFFFF00" + GetObjectName(GetSpellAbilityId()) + "|cffFF0000" + ID2S_naji(GetSpellAbilityId()) + "|cff00FFFF目标点为|cffFFFF00（" + R2S(GetLocationX(p_naji)) + "," + R2S(GetLocationY(p_naji)) + "）|r")
                endif
                call RemoveLocation(p_naji)
                set p_naji=null
            else
                if Bxy_naji then
                    set Sdummy_naji[1]="（" + R2S(GetUnitX(GetTriggerUnit())) + "," + R2S(GetUnitY(GetTriggerUnit())) + "）"
                    set Sdummy_naji[2]="（" + R2S(GetWidgetX(GetSpellTargetItem())) + "," + R2S(GetWidgetY(GetSpellTargetItem())) + "）"
                else
                    set Sdummy_naji[1]=""
                    set Sdummy_naji[2]=""
                endif
                call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF8000施放了|cffFFFF00" + GetObjectName(GetSpellAbilityId()) + "|cffFF0000" + ID2S_naji(GetSpellAbilityId()) + "|cff00FFFF目标为|cffFFFF00" + GetItemName(GetSpellTargetItem()) + "|cffFF0000" + ID2S_naji(GetItemTypeId(GetSpellTargetItem())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
            endif
        else
            if Bxy_naji then
                set Sdummy_naji[1]="（" + R2S(GetUnitX(GetTriggerUnit())) + "," + R2S(GetUnitY(GetTriggerUnit())) + "）"
                set Sdummy_naji[2]="（" + R2S(GetWidgetX(GetSpellTargetDestructable())) + "," + R2S(GetWidgetY(GetSpellTargetDestructable())) + "）"
            else
                set Sdummy_naji[1]=""
                set Sdummy_naji[2]=""
            endif
            call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF8000施放了|cffFFFF00" + GetObjectName(GetSpellAbilityId()) + "|cffFF0000" + ID2S_naji(GetSpellAbilityId()) + "|cff00FFFF目标为|cffFFFF00" + GetDestructableName(GetSpellTargetDestructable()) + "|cffFF0000" + ID2S_naji(GetDestructableTypeId(GetSpellTargetDestructable())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
        endif
    else
        if Bpn_naji then
            set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetSpellTargetUnit())) + "（玩家" + I2S(GetPlayerId(GetOwningPlayer(GetSpellTargetUnit())) + 1) + "）"
        else
            set Sdummy_naji[4]=""
        endif
        if Bxy_naji then
            set Sdummy_naji[1]="（" + R2S(GetUnitX(GetTriggerUnit())) + "," + R2S(GetUnitY(GetTriggerUnit())) + "）"
            set Sdummy_naji[2]="（" + R2S(GetWidgetX(GetSpellTargetUnit())) + "," + R2S(GetWidgetY(GetSpellTargetUnit())) + "）"
        else
            set Sdummy_naji[1]=""
            set Sdummy_naji[2]=""
        endif
        call DisplayTextToPlayer(Ptest_naji, 0, 0, Sdummy_naji[3] + "|cffFFFF00" + GetUnitName(GetTriggerUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetTriggerUnit())) + "|cffFFFF00" + Sdummy_naji[1] + "|cffFF8000施放了|cffFFFF00" + GetObjectName(GetSpellAbilityId()) + "|cffFF0000" + ID2S_naji(GetSpellAbilityId()) + "|cff00FFFF目标为|r" + Sdummy_naji[4] + "|cffFFFF00" + GetUnitName(GetSpellTargetUnit()) + "|cffFF0000" + ID2S_naji(GetUnitTypeId(GetSpellTargetUnit())) + "|cffFFFF00" + Sdummy_naji[2] + "|r")
    endif
endfunction
function TestA8_naji takes nothing returns nothing
    if GetClickedButton() != Button_naji[0] and GetClickedButton() != Button_naji[100] then
        if GetClickedButton() == Button_naji[1] then
            if Bxy_naji then
                set Bxy_naji=false
            else
                set Bxy_naji=true
            endif
        elseif GetClickedButton() == Button_naji[2] then
            if Bid_naji then
                set Bid_naji=false
            else
                set Bid_naji=true
            endif
        elseif GetClickedButton() == Button_naji[3] then
            if Bpn_naji then
                set Bpn_naji=false
            else
                set Bpn_naji=true
            endif
        elseif GetClickedButton() == Button_naji[4] then
            if Bir_naji then
                set Bir_naji=false
            else
                set Bir_naji=true
            endif
        elseif GetClickedButton() == Button_naji[5] then
            if Bddm_naji then
                set Bddm_naji=false
            else
                set Bddm_naji=true
            endif
        endif
        call DialogResetA2_naji()
        call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[1], true)
    elseif GetClickedButton() == Button_naji[0] then
        call DialogResetA_naji()
        call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[0], true)
    endif
endfunction
function TestA4_naji takes nothing returns nothing
    local location p_naji
    local group g_naji
    local integer i_naji
    local unit u_naji
    if GetClickedButton() != Button_naji[0] and GetClickedButton() != Button_naji[100] then
        if GetClickedButton() == Button_naji[1] then
            if IsTriggerEnabled(Ttest_naji[2]) then
                call DisableTrigger(Ttest_naji[2])
            else
                call EnableTrigger(Ttest_naji[2])
            endif
        elseif GetClickedButton() == Button_naji[2] then
            if IsTriggerEnabled(Ttest_naji[15]) then
                call DisableTrigger(Ttest_naji[15])
            else
                call EnableTrigger(Ttest_naji[15])
            endif
        elseif GetClickedButton() == Button_naji[3] then
            if IsTriggerEnabled(Ttest_naji[17]) then
                call DisableTrigger(Ttest_naji[17])
            else
                call EnableTrigger(Ttest_naji[17])
            endif
        elseif GetClickedButton() == Button_naji[4] then
            if IsTriggerEnabled(Ttest_naji[26]) then
                call DestroyTrigger(Ttest_naji[0])
                call DisableTrigger(Ttest_naji[26])
                set Rdummy_naji=0
            else
                set Ttest_naji[0]=CreateTrigger()
                call TriggerAddCondition(Ttest_naji[0], Condition(function TestA29_naji))
                call EnableTrigger(Ttest_naji[26])
                set g_naji=CreateGroup()
                set i_naji=0
                loop
                    call GroupEnumUnitsOfPlayer(g_naji, Player(i_naji), null)
                    loop
                        set u_naji=FirstOfGroup(g_naji)
                        exitwhen u_naji == null
                        call GroupRemoveUnit(g_naji, u_naji)
                        if GetUnitAbilityLevel(u_naji, 'Aloc') == 0 then
                            call TriggerRegisterUnitEvent(Ttest_naji[0], u_naji, EVENT_UNIT_DAMAGED)
                        endif
                    endloop
                    set i_naji=i_naji + 1
                    exitwhen i_naji >= 16
                endloop
                set Rdummy_naji=0
                call DestroyGroup(g_naji)
                set g_naji=null
            endif
        elseif GetClickedButton() == Button_naji[5] then
            if IsTriggerEnabled(Ttest_naji[4]) then
                call DestroyGroup(Gcd_naji[1])
                call DisableTrigger(Ttest_naji[4])
            else
                set Gcd_naji[1]=CreateGroup()
                call EnableTrigger(Ttest_naji[4])
            endif
        elseif GetClickedButton() == Button_naji[6] then
            if IsTriggerEnabled(Ttest_naji[7]) then
                call DisableTrigger(Ttest_naji[7])
            else
                call EnableTrigger(Ttest_naji[7])
                set Ihandle_naji=0
                set Rhandle_naji=0
                set p_naji=Location(0, 0)
                set Ihandle_naji=GetHandleId(p_naji)
                call EnableTrigger(Ttest_naji[7])
                call RemoveLocation(p_naji)
                set p_naji=null
            endif
        elseif GetClickedButton() == Button_naji[7] then
            if IsTriggerEnabled(Ttest_naji[61]) then
                call DisableTrigger(Ttest_naji[61])
            else
                call EnableTrigger(Ttest_naji[61])
            endif
        elseif GetClickedButton() == Button_naji[8] then
            if IsTriggerEnabled(Ttest_naji[71]) then
                call DestroyGroup(Gms_naji)
                call DisableTrigger(Ttest_naji[71])
            else
                set Gms_naji=CreateGroup()
                call EnableTrigger(Ttest_naji[71])
            endif
        endif
        call DialogResetA_naji()
        call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[0], true)
    elseif GetClickedButton() == Button_naji[0] then
        call DialogResetA2_naji()
        call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[1], true)
    endif
endfunction
function TestA2_naji takes nothing returns nothing
    call DialogResetA_naji()
    call DialogDisplay(GetTriggerPlayer(), Dnaji_naji[0], true)
endfunction
function TestA_naji takes nothing returns nothing
    local integer i_naji
    local integer row_naji= 2769
    if not udg_isTest[GetPlayerId(GetTriggerPlayer()) + 1] then
        return
    endif
    set Sdummy_naji[1]="2013/11/04"
    call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cff00FF00===============*****===============|r")
    call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cffFF8000         开始初始化|cff00FFFFnajitest|cffFF8000测试代码|r")
    call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cffFF80C0                代码版本：|cffFF0000V2.4|r")
    call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cff00FF00              更新日期：|cffFF0000" + Sdummy_naji[1] + "|r")
    call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cffFFFF00       需要查看所有可用代码请按下|cffFF0000F9|r")
    call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cffFFFF00     任意玩家输入|cffFF0000'remove|cffFFFF00可清除该系统|r")
    call DisplayTimedTextToPlayer(GetLocalPlayer(), 0, 0, 30, "|cff00FF00===============*****===============|r")
    set Ptest_naji=GetTriggerPlayer()
    set StringList_naji=".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
    set Rworld_naji=CreateRegion()
    call RegionAddRect(Rworld_naji, GetWorldBounds())
    set Itrigger_naji=0
    loop
        set Itrigger_naji=Itrigger_naji + 1
        set Ttest_naji[Itrigger_naji]=CreateTrigger()
        exitwhen Itrigger_naji >= 77
    endloop
    set Iquest_naji=0
    loop
        set Iquest_naji=Iquest_naji + 1
        set Q_naji[Iquest_naji]=CreateQuest()
        call QuestSetIconPath(Q_naji[Iquest_naji], "Buildings\\Other\\TempArtB\\BTNTempB.blp")
        call QuestSetRequired(Q_naji[Iquest_naji], false)
        call QuestSetDiscovered(Q_naji[Iquest_naji], true)
        call QuestSetCompleted(Q_naji[Iquest_naji], false)
        exitwhen Iquest_naji >= 13
    endloop
    set i_naji=61
    call QuestSetTitle(Q_naji[1], "|cffFF0000najitest帮助信息")
    call QuestSetDescription(Q_naji[1], "|cff00FFFF注意：|r|n|cff00FFFF1、|cffFF0000*|cffFFFF00代表需要输入|cffFF80C0数字/文字，且其数量代表要输入多少个参数，参数之间用英文逗号隔开。多参数命令的第1参数必需输入，其它参数若空缺则系统会自动填补|r|n|cff00FFFF2、|cffFF0000(s)|cffFFFF00代表该代码功能可以同时作用|cffFF80C0玩家选择的所有单位|r|n|cff00FFFF3、|cffFFFF00很多功能都可以通过|cffFF80C0反复输入代码|cffFFFF00来切换|cffFF0000开/关|r|n|cff00FFFF4、|cffFFFF00为保持稳定，判定|cffFF80C0玩家选择单位|cffFFFF00没有同步系统数据，请确保在使用相关代码前|cffFF0000重新框选|cffFFFF00合适的单位|r|n|cff00FFFF5、|cffFFFF00大部分功能支持|cffFF0000负数|cffFFFF00，不支持负数的功能输入负值会|cffFF80C0还原默认设定|r|n|cff00FFFF6、|cffFFFF00使用者可以在任何时候|cffFF0000按下Esc|cffFFFF00重新获得用户控制权及关闭电影模式|r")
    call QuestSetTitle(Q_naji[2], "|cffFF0000独立系统")
    call QuestSetDescription(Q_naji[2], "|cffFFFF00'feini|cffFF0000(|rnajitest system|cffFF0000)|r|cffFFFF00'gms|cffFF0000(|r(Group Multiple Spell)|cffFF0000)|r|cffFFFF00'gcd|cffFF0000(|r(Group Cool Down)|cffFF0000)|r|n|n|cff00FFFF该系统包含众多测试功能，输入后会打开一个对话框")
    call QuestSetTitle(Q_naji[3], "|cffFF0000单位-英雄（必须选择英雄）")
    call QuestSetDescription(Q_naji[3], "|cffFFFF00'hl*|cffFF0000(|rset Hero(s) Level|cffFF0000)|r|cffFFFF00'hp*|cffFF0000(|radd Hero(s) skill Point|cffFF0000)|r|cffFFFF00'hs*|cffFF0000(|rset Hero(s) Str|cffFF0000)|r|cffFFFF00'ha*|cffFF0000(|rset Hero(s) Agi|cffFF0000)|r|cffFFFF00'hi*|cffFF0000(|rset Hero(s) Int|cffFF0000)|r")
    call QuestSetTitle(Q_naji[4], "|cffFF0000单位-数值（必须选择单位）")
    call QuestSetDescription(Q_naji[4], "|cffFFFF00'uts*|cffFF0000(|rUnit(s) Time Scale|cffFF0000)|r|cffFFFF00'uic**|cffFF0000(|rset Unit's Item Charge|cffFF0000)|r|cffFFFF00'um*|cffFF0000(|rset Unit(s) Move speed|cffFF0000)|r|cffFFFF00'uus*|cffFF0000(|rset Unit(s) tUrn Speed|cffFF0000)|r|cffFFFF00'uar*|cffFF0000(|rset Unit(s) Acquire Range|cffFF0000)|r|cffFFFF00'ufh*|cffFF0000(|rset Unit(s) Fly Height|cffFF0000)|r|cffFFFF00'ud*|cffFF0000(|rset Unit(s) user Data|cffFF0000)|r|cffFFFF00'us*|cffFF0000(|rset Unit(s) Scale|cffFF0000)|r|cffFFFF00'uvc****|cffFF0000(|rset Unit(s) Vertax Color|cffFF0000)|r|cffFFFF00'uxy**|cffFF0000(|rset Unit(s) XY|cffFF0000)|r")
    call QuestSetTitle(Q_naji[5], "|cffFF0000单位-状态（必须选择单位）")
    call QuestSetDescription(Q_naji[5], "|cffFFFF00'uh|cffFF0000(|rUnit(s) Healing|cffFF0000)|r|cffFFFF00'up|cffFF0000(|rUnit(s) Pause|cffFF0000)|r|cffFFFF00'ub|cffFF0000(|rUnit(s) Buff clear|cffFF0000)|r|cffFFFF00'uw|cffFF0000(|rUnit(s) Windwalk|cffFF0000)|r")
    call QuestSetTitle(Q_naji[6], "|cffFF0000单位-特殊（必须选择单位）")
    call QuestSetDescription(Q_naji[6], "|cffFFFF00'ua*|cffFF0000(|rplay Unit(s) Animation by index|cffFF0000)|r|cffFFFF00'ui|cffFF0000(|rUnit Information|cffFF0000)|r|cffFFFF00'uo*|cffFF0000(|rset Unit(s) Owner|cffFF0000)|r|cffFFFF00'uk|cffFF0000(|rUnit(s) Killed|cffFF0000)|r|cffFFFF00'co**|cffFF0000(|rCreate Object|cffFF0000)|r|cffFFFF00'ul|cffFF0000(|rUnit camera Lock|cffFF0000)|r|cffFFFF00'ur|cffFF0000(|rUnit(s) Remove|cffFF0000)|r|cffFFFF00'uii*|cffFF0000(|rUnit's Item Information|cffFF0000)|r")
    call QuestSetTitle(Q_naji[7], "|cffFF0000玩家相关")
    call QuestSetDescription(Q_naji[7], "|cffFFFF00'ag**/al**|cffFF0000(|rAdd Gold/Lumber|cffFF0000)|r|cffFFFF00'pc**|cffFF0000(|rPlayer Control|cffFF0000)|r|cffFFFF00'pa**|cffFF0000(|rset Player Alliance|cffFF0000)|r|cffFFFF00'pk*|cffFF0000(|rPlayer Kicked|cffFF0000)|r|cffFFFF00'ph**|cffFF0000(|rset Player Handicap|cffFF0000)|r|cffFFFF00'pn*|cffFF0000(|rPlayer Name|cffFF0000)|r|cffFFFF00'pt***|cffFF0000(|rPlayer Tech|cffFF0000)|r|cffFFFF00'psl|cffFF0000(|rPlayer Statistics List|cffFF0000)|r")
    call QuestSetTitle(Q_naji[8], "|cffFF0000镜头相关")
    call QuestSetDescription(Q_naji[8], "|cffFFFF00'cm|cffFF0000(|rCamera Mode|cffFF0000)|r|cffFFFF00'cd*|cffFF0000(|rCamera Distance|cffFF0000)|r|cffFFFF00'cr|cffFF0000(|rCamera Reset|cffFF0000)|r|cffFFFF00'ci|cffFF0000(|rCamera Information|cffFF0000)|r|cffFFFF00'cz*|cffFF0000(|rset Camera farZ|cffFF0000)|r")
    call QuestSetTitle(Q_naji[9], "|cffFF0000其它")
    call QuestSetDescription(Q_naji[9], "|cffFFFF00'fog|cffFF0000(|rFog|cffFF0000)|r|cffFFFF00'sc|cffFF0000(|rScreen Clear|cffFF0000)|r|cffFFFF00'rd|cffFF0000(|rRoll Dice|cffFF0000)|r|cffFFFF00'bm*|cffFF0000(|rBackup Message|cffFF0000)|r|cffFFFF00'cbm|cffFF0000(|rClear Backup Message|cffFF0000)|r|cffFFFF00'td*|cffFF0000(|rset Time of Day|cffFF0000)|r|cffFFFF00'ts*|cffFF0000(|rset Time of day Scale|cffFF0000)|r|cffFFFF00'we*|cffFF0000(|rWeather Effect|cffFF0000)|r|cffFFFF00'se*|cffFF0000(|rSystem Exchange|cffFF0000)|r|cffFFFF00'ef*|cffFF0000(|rExecute Function|cffFF0000)|r")
    call QuestSetTitle(Q_naji[10], "|cffFF0000游戏设置")
    call QuestSetDescription(Q_naji[10], "|cffFFFF00'mv*|cffFF0000(|rMusic Volume|cffFF0000)|r|cffFFFF00'sv*|cffFF0000(|rSound Volume|cffFF0000)|r|cffFFFF00'pg|cffFF0000(|rPause Game|cffFF0000)|r|cffFFFF00'rs*|cffFF0000(|rset Random Seed|cffFF0000)|r|cffFFFF00'gg|cffFF0000(|rGood Game|cffFF0000)|r|cffFFFF00'gs*|cffFF0000(|rset Game Speed|cffFF0000)|r|cffFFFF00'mf|cffFF0000(|rset Map Flag|cffFF0000)|r|cffFFFF00're|cffFF0000(|rRestart|cffFF0000)|r")
    call QuestSetTitle(Q_naji[11], "|cffFF0000co命令帮助信息")
    call QuestSetDescription(Q_naji[11], "|cffFF0000co命令可以创建单位、物品、可破坏物、添加删除技能、设置技能等级、删除buff。输入格式为'co+id+,+数值，数值对应创建物体的数量或技能等级，当没有输入数值时，默认为1。当单位已经拥有该技能，带有数值的'co命令会改变等级，不带数值的则会删除技能。|n|n|cffFFFF00Amov|cffFF0000(|r移动|cffFF0000)|r|cffFFFF00Abun|cffFF0000(|r货物保持|cffFF0000)|r|cffFFFF00Avul|cffFF0000(|r无敌|cffFF0000)|r|cffFFFF00AInv|cffFF0000(|r英雄物品栏|cffFF0000)|r|cffFFFF00ARal|cffFF0000(|r集结|cffFF0000)|r|cffFFFF00Arng|cffFF0000(|r复仇|cffFF0000)|r|cffFFFF00Awan|cffFF0000(|r游荡者|cffFF0000)|r|cffFFFF00Ane2|cffFF0000(|r选择单位|cffFF0000)|r|cffFFFF00Apiv|cffFF0000(|r永久隐形|cffFF0000)|r|cffFFFF00Adtg|cffFF0000(|r真实视域|cffFF0000)|r|cffFFFF00Aeth|cffFF0000(|r可见幽灵|cffFF0000)|r|cffFFFF00Arsk|cffFF0000(|r抗性皮肤|cffFF0000)|r|cffFFFF00Acmi|cffFF0000(|r魔法免疫|cffFF0000)|r")
    call QuestSetTitle(Q_naji[12], "|cffFF0000we命令帮助信息")
    call QuestSetDescription(Q_naji[12], "|cffFF0000注意乱输4位ID会游戏崩溃！输入的ID未满4位时会清除所有已创建的全图天气。|r|n|n|cffFFFF00RA(h/l)r|cffFF0000(|r白杨谷(大/小)雨|cffFF0000)|r|cffFFFF00MEds|cffFF0000(|r达拉然之盾|cffFF0000)|r|cffFFFF00FD(b/g/r/w)(h/l)|cffFF0000(|r地下城(蓝/绿/红/白)(浓/薄)雾|cffFF0000)|r|cffFFFF00RL(h/l)r|cffFF0000(|r洛丹伦(大/小)雨|cffFF0000)|r|cffFFFF00SN(b/h/l)s|cffFF0000(|r诺森德(暴/大/小)雪|cffFF0000)|r|cffFFFF00WO(c/l)w|cffFF0000(|r边缘之地(大/小)风|cffFF0000)|r|cffFFFF00Lr(a/m)a|cffFF0000(|r(日/月)光|cffFF0000)|r|cffFFFF00WNcw|cffFF0000(|r大风|cffFF0000)|r")
    call QuestSetTitle(Q_naji[13], "|cffFF0000najitest基本信息")
    call QuestSetDescription(Q_naji[13], "|cffFFFF00脚本作者：|cffFF0000najizhimo|r|n|cffFFFF00当前使用者：|cffFF0000" + GetPlayerName(Ptest_naji) + "|r|n|cffFFFF00更新日期：|cffFF0000" + Sdummy_naji[1] + "|n|cffFFFF00可用代码数量：|cffFF0000" + I2S(i_naji) + "|r|n|cffFFFF00注册触发数量：|cffFF0000" + I2S(Itrigger_naji) + "|r|n|cffFFFF00创建任务数量：|cffFF0000" + I2S(Iquest_naji) + "|r|n|cffFFFF00脚本行数：|cffFF0000" + I2S(row_naji) + "|n|cffFFFF00对此系统有任何提议请到|cffFF80C0百度魔兽地图编辑器贴吧|cffFFFF00发贴|r|n|cffFFFF00任意玩家输入|cffFF0000'remove|cffFFFF00可清除该系统|r")
    call FlashQuestDialogButton()
    set Dnaji_naji[0]=DialogCreate()
    call TriggerRegisterPlayerChatEvent(Ttest_naji[1], GetTriggerPlayer(), "'feini", true)
    call TriggerAddCondition(Ttest_naji[1], Condition(function TestA2_naji))
    call TriggerRegisterDialogEvent(Ttest_naji[3], Dnaji_naji[0])
    call TriggerAddCondition(Ttest_naji[3], Condition(function TestA4_naji))
    set i_naji=0
    loop
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[2], Player(i_naji), EVENT_PLAYER_UNIT_SPELL_EFFECT, null)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[2], Condition(function TestA3_naji))
    call DisableTrigger(Ttest_naji[2])
    set i_naji=0
    loop
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[15], Player(i_naji), EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER, null)
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[15], Player(i_naji), EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER, null)
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[15], Player(i_naji), EVENT_PLAYER_UNIT_ISSUED_ORDER, null)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[15], Condition(function TestA17_naji))
    call DisableTrigger(Ttest_naji[15])
    call TriggerRegisterEnterRegion(Ttest_naji[17], Rworld_naji, null)
    set i_naji=0
    loop
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[17], Player(i_naji), EVENT_PLAYER_UNIT_DEATH, null)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[17], Condition(function TestA19_naji))
    call DisableTrigger(Ttest_naji[17])
    call TriggerRegisterEnterRegion(Ttest_naji[26], Rworld_naji, null)
    call TriggerAddCondition(Ttest_naji[26], Condition(function TestA28_naji))
    call DisableTrigger(Ttest_naji[26])
    set i_naji=0
    loop
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[4], Player(i_naji), EVENT_PLAYER_UNIT_SPELL_EFFECT, null)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[4], Condition(function TestA5_naji))
    call DisableTrigger(Ttest_naji[4])
    set Gcd_naji[0]=CreateGroup()
    set Gcd_naji[1]=null
    call TriggerRegisterTimerEvent(Ttest_naji[7], .1, true)
    call TriggerAddCondition(Ttest_naji[7], Condition(function TestA9_naji))
    call DisableTrigger(Ttest_naji[7])
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[61], Player(i_naji), "", false)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call DisableTrigger(Ttest_naji[61])
    call TriggerAddCondition(Ttest_naji[61], Condition(function TestA66_naji))
    set i_naji=0
    loop
        call TriggerRegisterPlayerUnitEvent(Ttest_naji[71], Player(i_naji), EVENT_PLAYER_UNIT_SPELL_EFFECT, null)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[71], Condition(function TestA76_naji))
    call DisableTrigger(Ttest_naji[71])
    set Gms_naji=null
    set Dnaji_naji[1]=DialogCreate()
    call TriggerRegisterDialogEvent(Ttest_naji[6], Dnaji_naji[1])
    call TriggerAddCondition(Ttest_naji[6], Condition(function TestA8_naji))
    set Bxy_naji=true
    set Bid_naji=true
    set Bpn_naji=false
    set Bir_naji=true
    set Bddm_naji=false
    call TriggerRegisterPlayerChatEvent(Ttest_naji[5], GetTriggerPlayer(), "'uh", true)
    call TriggerAddCondition(Ttest_naji[5], Condition(function TestA7_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[8], GetTriggerPlayer(), "'ag", false)
    call TriggerAddCondition(Ttest_naji[8], Condition(function TestA10_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[9], GetTriggerPlayer(), "'al", false)
    call TriggerAddCondition(Ttest_naji[9], Condition(function TestA11_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[10], GetTriggerPlayer(), "'hl", false)
    call TriggerAddCondition(Ttest_naji[10], Condition(function TestA12_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[11], GetTriggerPlayer(), "'fog", true)
    call TriggerAddCondition(Ttest_naji[11], Condition(function TestA13_naji))
    if IsMapFlagSet(MAP_FOG_ALWAYS_VISIBLE) then
        set Bfog_naji=false
    else
        set Bfog_naji=true
    endif
    call TriggerRegisterPlayerChatEvent(Ttest_naji[12], GetTriggerPlayer(), "'ua", false)
    call TriggerAddCondition(Ttest_naji[12], Condition(function TestA14_naji))
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[13], Player(i_naji), "'cd", false)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[13], Condition(function TestA15_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[14], GetTriggerPlayer(), "'ur", true)
    call TriggerAddCondition(Ttest_naji[14], Condition(function TestA16_naji))
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[16], Player(i_naji), "'pn", false)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[16], Condition(function TestA18_naji))
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[18], Player(i_naji), "'sc", true)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[18], Condition(function TestA20_naji))
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[19], Player(i_naji), "'cr", true)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[19], Condition(function TestA21_naji))
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[20], Player(i_naji), "'ui", true)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[20], Condition(function TestA22_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[21], GetTriggerPlayer(), "'pc", false)
    call TriggerAddCondition(Ttest_naji[21], Condition(function TestA23_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[22], GetTriggerPlayer(), "'uvc", false)
    call TriggerAddCondition(Ttest_naji[22], Condition(function TestA24_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[23], GetTriggerPlayer(), "'uts", false)
    call TriggerAddCondition(Ttest_naji[23], Condition(function TestA25_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[24], GetTriggerPlayer(), "'pg", true)
    call TriggerAddCondition(Ttest_naji[24], Condition(function TestA26_naji))
    set Bpause_naji=false
    call TriggerRegisterPlayerChatEvent(Ttest_naji[25], GetTriggerPlayer(), "'psl", true)
    call TriggerAddCondition(Ttest_naji[25], Condition(function TestA27_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[27], GetTriggerPlayer(), "'up", true)
    call TriggerAddCondition(Ttest_naji[27], Condition(function TestA30_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[28], GetTriggerPlayer(), "'mv", false)
    call TriggerAddCondition(Ttest_naji[28], Condition(function TestA31_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[29], GetTriggerPlayer(), "'rd", true)
    call TriggerAddCondition(Ttest_naji[29], Condition(function TestA32_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[30], GetTriggerPlayer(), "'sv", false)
    call TriggerAddCondition(Ttest_naji[30], Condition(function TestA33_naji))
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[31], Player(i_naji), "'bm", false)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[31], Condition(function TestA34_naji))
    set Ibm_naji=0
    call TriggerRegisterPlayerChatEvent(Ttest_naji[32], GetTriggerPlayer(), "'cbm", true)
    call TriggerAddCondition(Ttest_naji[32], Condition(function TestA35_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[33], GetTriggerPlayer(), "'uic", false)
    call TriggerAddCondition(Ttest_naji[33], Condition(function TestA36_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[34], GetTriggerPlayer(), "'rs", false)
    call TriggerAddCondition(Ttest_naji[34], Condition(function TestA37_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[35], GetTriggerPlayer(), "'td", false)
    call TriggerAddCondition(Ttest_naji[35], Condition(function TestA38_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[36], GetTriggerPlayer(), "'um", false)
    call TriggerAddCondition(Ttest_naji[36], Condition(function TestA39_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[37], GetTriggerPlayer(), "'uus", false)
    call TriggerAddCondition(Ttest_naji[37], Condition(function TestA40_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[38], GetTriggerPlayer(), "'uar", false)
    call TriggerAddCondition(Ttest_naji[38], Condition(function TestA41_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[39], GetTriggerPlayer(), "'ufh", false)
    call TriggerAddCondition(Ttest_naji[39], Condition(function TestA42_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[40], GetTriggerPlayer(), "'hp", false)
    call TriggerAddCondition(Ttest_naji[40], Condition(function TestA43_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[41], GetTriggerPlayer(), "'hs", false)
    call TriggerAddCondition(Ttest_naji[41], Condition(function TestA44_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[42], GetTriggerPlayer(), "'ha", false)
    call TriggerAddCondition(Ttest_naji[42], Condition(function TestA45_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[43], GetTriggerPlayer(), "'hi", false)
    call TriggerAddCondition(Ttest_naji[43], Condition(function TestA46_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[44], GetTriggerPlayer(), "'ud", false)
    call TriggerAddCondition(Ttest_naji[44], Condition(function TestA47_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[45], GetTriggerPlayer(), "'ts", false)
    call TriggerAddCondition(Ttest_naji[45], Condition(function TestA48_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[46], GetTriggerPlayer(), "'ph", false)
    call TriggerAddCondition(Ttest_naji[46], Condition(function TestA49_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[47], GetTriggerPlayer(), "'uk", true)
    call TriggerAddCondition(Ttest_naji[47], Condition(function TestA50_naji))
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[48], Player(i_naji), "'remove", true)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[48], Condition(function TestA51_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[49], GetTriggerPlayer(), "'pa", false)
    call TriggerAddCondition(Ttest_naji[49], Condition(function TestA52_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[50], GetTriggerPlayer(), "'uo", false)
    call TriggerAddCondition(Ttest_naji[50], Condition(function TestA53_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[51], GetTriggerPlayer(), "'cz", false)
    call TriggerAddCondition(Ttest_naji[51], Condition(function TestA54_naji))
    set Guw_naji=CreateGroup()
    call TriggerRegisterPlayerChatEvent(Ttest_naji[52], GetTriggerPlayer(), "'uw", true)
    call TriggerAddCondition(Ttest_naji[52], Condition(function TestA55_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[53], GetTriggerPlayer(), "'co", false)
    call TriggerAddCondition(Ttest_naji[53], Condition(function TestA56_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[54], GetTriggerPlayer(), "'pk", false)
    call TriggerAddCondition(Ttest_naji[54], Condition(function TestA57_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[55], GetTriggerPlayer(), "'ub", true)
    call TriggerAddCondition(Ttest_naji[55], Condition(function TestA59_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[56], GetTriggerPlayer(), "'ul", true)
    call TriggerAddCondition(Ttest_naji[56], Condition(function TestA60_naji))
    set Tcamera_naji=null
    set Bcamera_naji[0]=false
    set Bcamera_naji[1]=false
    set Bcamera_naji[2]=false
    set Bcamera_naji[3]=false
    set Bcamera_naji[4]=false
    call TriggerRegisterPlayerChatEvent(Ttest_naji[57], GetTriggerPlayer(), "'cm", true)
    call TriggerAddCondition(Ttest_naji[57], Condition(function TestA61_naji))
    call DisableTrigger(Ttest_naji[58])
    call TriggerRegisterPlayerEvent(Ttest_naji[58], GetTriggerPlayer(), EVENT_PLAYER_ARROW_UP_DOWN)
    call TriggerRegisterPlayerEvent(Ttest_naji[58], GetTriggerPlayer(), EVENT_PLAYER_ARROW_DOWN_DOWN)
    call TriggerRegisterPlayerEvent(Ttest_naji[58], GetTriggerPlayer(), EVENT_PLAYER_ARROW_LEFT_DOWN)
    call TriggerRegisterPlayerEvent(Ttest_naji[58], GetTriggerPlayer(), EVENT_PLAYER_ARROW_RIGHT_DOWN)
    call TriggerAddCondition(Ttest_naji[58], Condition(function TestA62_naji))
    call DisableTrigger(Ttest_naji[59])
    call TriggerRegisterPlayerEvent(Ttest_naji[59], GetTriggerPlayer(), EVENT_PLAYER_ARROW_UP_UP)
    call TriggerRegisterPlayerEvent(Ttest_naji[59], GetTriggerPlayer(), EVENT_PLAYER_ARROW_DOWN_UP)
    call TriggerRegisterPlayerEvent(Ttest_naji[59], GetTriggerPlayer(), EVENT_PLAYER_ARROW_LEFT_UP)
    call TriggerRegisterPlayerEvent(Ttest_naji[59], GetTriggerPlayer(), EVENT_PLAYER_ARROW_RIGHT_UP)
    call TriggerAddCondition(Ttest_naji[59], Condition(function TestA63_naji))
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[60], Player(i_naji), "'ci", true)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[60], Condition(function TestA65_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[62], GetTriggerPlayer(), "'us", false)
    call TriggerAddCondition(Ttest_naji[62], Condition(function TestA67_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[63], GetTriggerPlayer(), "'gg", true)
    call TriggerAddCondition(Ttest_naji[63], Condition(function TestA68_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[64], GetTriggerPlayer(), "'gs", false)
    call TriggerAddCondition(Ttest_naji[64], Condition(function TestA69_naji))
    set Dnaji_naji[2]=DialogCreate()
    call TriggerRegisterPlayerChatEvent(Ttest_naji[65], GetTriggerPlayer(), "'mf", true)
    call TriggerAddCondition(Ttest_naji[65], Condition(function TestA70_naji))
    call TriggerRegisterDialogEvent(Ttest_naji[66], Dnaji_naji[2])
    call TriggerAddCondition(Ttest_naji[66], Condition(function TestA71_naji))
    call TriggerRegisterPlayerEvent(Ttest_naji[67], GetTriggerPlayer(), EVENT_PLAYER_END_CINEMATIC)
    call TriggerAddCondition(Ttest_naji[67], Condition(function TestA72_naji))
    set Iweather_naji=0
    set Weather_naji[0]=null
    call TriggerRegisterPlayerChatEvent(Ttest_naji[68], GetTriggerPlayer(), "'we", false)
    call TriggerAddCondition(Ttest_naji[68], Condition(function TestA73_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[69], GetTriggerPlayer(), "'pt", false)
    call TriggerAddCondition(Ttest_naji[69], Condition(function TestA74_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[70], GetTriggerPlayer(), "'re", true)
    call TriggerAddCondition(Ttest_naji[70], Condition(function TestA75_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[72], GetTriggerPlayer(), "'gms", true)
    call TriggerAddCondition(Ttest_naji[72], Condition(function TestA77_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[73], GetTriggerPlayer(), "'gcd", true)
    call TriggerAddCondition(Ttest_naji[73], Condition(function TestA78_naji))
    set i_naji=0
    loop
        call TriggerRegisterPlayerChatEvent(Ttest_naji[74], Player(i_naji), "'uii", false)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(Ttest_naji[74], Condition(function TestA79_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[75], GetTriggerPlayer(), "'uxy", false)
    call TriggerAddCondition(Ttest_naji[75], Condition(function TestA80_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[76], GetTriggerPlayer(), "'se", false)
    call TriggerAddCondition(Ttest_naji[76], Condition(function TestA81_naji))
    call TriggerRegisterPlayerChatEvent(Ttest_naji[77], GetTriggerPlayer(), "'ef", false)
    call TriggerAddCondition(Ttest_naji[77], Condition(function TestA82_naji))
    call DestroyTrigger(GetTriggeringTrigger())
endfunction
function najitest takes nothing returns nothing
    local trigger t_naji= CreateTrigger()
    local integer i_naji= 0
    loop
        call TriggerRegisterPlayerChatEvent(t_naji, Player(i_naji), "'feini", true)
        set i_naji=i_naji + 1
        exitwhen i_naji >= 16
    endloop
    call TriggerAddCondition(t_naji, Condition(function TestA_naji))
    set t_naji=null
endfunction
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
function isPetMove takes nothing returns boolean
	return ( GetIssuedOrderId() == $D0012 or GetIssuedOrderId() == $D0003 ) and GetUnitAbilityLevel(GetTriggerUnit(), 'A00G') > 0
endfunction
function heroAttack takes nothing returns nothing
 local timer t= GetExpiredTimer()
 local unit u= LoadUnitHandle(YDHT, GetHandleId(t), 0)
	call IssuePointOrderById(u, $D000F, GetUnitX(u), GetUnitY(u))
	call DestroyTimer(t)
	set t=null
	set u=null
endfunction
function petMove takes nothing returns nothing
 local real x= GetUnitX(GetTriggerUnit())
 local real y= GetUnitY(GetTriggerUnit())
 local real dx= 0
 local real dy= 0
 local timer t= null
	if GetOrderTargetItem() != null then
		return
	endif
	if GetOrderTargetUnit() != null or GetOrderTargetDestructable() != null then
		set dx=GetWidgetX(GetOrderTarget()) - x
		set dy=GetWidgetY(GetOrderTarget()) - y
		if SquareRoot(dx * dx + dy * dy) > 200 then
			call IssuePointOrderById(GetOrderedUnit(), $D022D, GetWidgetX(GetOrderTarget()), GetWidgetY(GetOrderTarget()))
		endif
	else
		call IssuePointOrderById(GetTriggerUnit(), $D022D, GetOrderPointX(), GetOrderPointY())
	endif
	if IsUnitType(GetTriggerUnit(), UNIT_TYPE_HERO) then
		set t=CreateTimer()
		call SaveUnitHandle(YDHT, GetHandleId(t), 0, GetTriggerUnit())
		call TimerStart(t, 1, false, function heroAttack)
	endif
	set t=null
endfunction
function GameDetail_Trigger takes nothing returns nothing
    local timer tm= CreateTimer()
 local trigger t= null
    // 为本地玩家注册滚轮事件（滚轮缩放视角）
	call TimerStart(tm, 0.05, false, function registerWheelEvent)
	set t=CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
	call TriggerAddCondition(t, Condition(function isPetMove))
	call TriggerAddAction(t, function petMove)
	set tm=null
	set t=null
endfunction
function MyInitGlobals takes nothing returns nothing
    local integer i= 1
    loop
        exitwhen i > 4
        set hasWisdomBall[i]=false
        set wisbomBall[i]=null
        set wisdomBallSmartMode[i]=false
        set qqTeamAward[i]=false
        set i=i + 1
    endloop
    
    set udg_ShengYuGuaiShu=0
    set udg_shuabingtimer=CreateTimer()
    set udg_select_diff=DialogCreate()
    set udg_boss_hint=CreateTimer()
    set udg_kill_final_num=0
    set udg_difficulty=0
endfunction
function CreateNeutralPassiveBuildingsEffect takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    // 领取福利-天坤
    call AddSpecialEffectTarget("ch_fuli.mdx", gg_unit_o00Q_0022, "overhead")
    // 武器熔炼-干将
    call AddSpecialEffectTarget("ch_ronglian.mdx", gg_unit_o00L_0020, "overhead")
    // 木材兑换-莫邪
    call AddSpecialEffectTarget("mucaiduihuan.mdx", gg_unit_o00M_0010, "overhead")
    call AddSpecialEffectTarget("mucaiduihuan.mdx", gg_unit_o00M_0011, "overhead")
    call AddSpecialEffectTarget("mucaiduihuan.mdx", gg_unit_o00M_0012, "overhead")
    call AddSpecialEffectTarget("mucaiduihuan.mdx", gg_unit_o00M_0013, "overhead")
    call ShowUnitHide(gg_unit_o00M_0010)
    call ShowUnitHide(gg_unit_o00M_0011)
    call ShowUnitHide(gg_unit_o00M_0012)
    call ShowUnitHide(gg_unit_o00M_0013)
    // 兑换商店
    call ShowUnitHide(gg_unit_o013_0027)
    call ShowUnitHide(gg_unit_o013_0028)
    call ShowUnitHide(gg_unit_o013_0029)
    call ShowUnitHide(gg_unit_o013_0030)
    // 绝世内功
    call AddSpecialEffectTarget("ch_wugong.mdx", gg_unit_o00K_0021, "overhead")
    // 选择门派
    call AddSpecialEffectTarget("xuanzemenpai.mdx", gg_unit_o00A_0014, "overhead")
    call ShowUnitHide(gg_unit_o00A_0014)
    call ShowUnitHide(gg_unit_e00H_0023)
    call ShowUnitHide(gg_unit_e00H_0024)
    call ShowUnitHide(gg_unit_e00H_0025)
    call ShowUnitHide(gg_unit_e00H_0026)
    // 精英挑战
    call AddSpecialEffectTarget("ch_tiaozhan.mdx", gg_unit_o00P_0015, "overhead")
    call AddSpecialEffectTarget("ch_tiaozhan.mdx", gg_unit_o00P_0016, "overhead")
    call AddSpecialEffectTarget("ch_tiaozhan.mdx", gg_unit_o00P_0017, "overhead")
    call AddSpecialEffectTarget("ch_tiaozhan.mdx", gg_unit_o00P_0018, "overhead")
    // 购买丹药
    call AddSpecialEffectTarget("ch_danyao.mdx", gg_unit_o00J_0019, "overhead")
    // 幸运抽取
    call AddSpecialEffectTarget("ch_chouqu.mdx", gg_unit_o011_0006, "overhead")
    call AddSpecialEffectTarget("ch_chouqu.mdx", gg_unit_o011_0007, "overhead")
    call AddSpecialEffectTarget("ch_chouqu.mdx", gg_unit_o011_0008, "overhead")
    call AddSpecialEffectTarget("ch_chouqu.mdx", gg_unit_o011_0009, "overhead")
    // 招募侠士
    call AddSpecialEffectTarget("ch_zhaomu.mdx", gg_unit_o014_0031, "overhead")
    call AddSpecialEffectTarget("ch_zhaomu.mdx", gg_unit_o014_0032, "overhead")
    call AddSpecialEffectTarget("ch_zhaomu.mdx", gg_unit_o014_0033, "overhead")
    call AddSpecialEffectTarget("ch_zhaomu.mdx", gg_unit_o014_0034, "overhead")
    
    // 科技房
    call AddSpecialEffectTarget("ch_keji.mdx", gg_unit_o00N_0035, "overhead")
    call AddSpecialEffectTarget("ch_keji.mdx", gg_unit_o00N_0036, "overhead")
    call AddSpecialEffectTarget("ch_keji.mdx", gg_unit_o00N_0037, "overhead")
    call AddSpecialEffectTarget("ch_keji.mdx", gg_unit_o00N_0038, "overhead")
    // 武器店
    call AddSpecialEffectTarget("ch_wuqi.mdx", gg_unit_o00E_0039, "overhead")
    call AddSpecialEffectTarget("ch_wuqi.mdx", gg_unit_o00E_0040, "overhead")
    call AddSpecialEffectTarget("ch_wuqi.mdx", gg_unit_o00E_0041, "overhead")
    call AddSpecialEffectTarget("ch_wuqi.mdx", gg_unit_o00E_0042, "overhead")
    
endfunction
function CreateAllUnits_1 takes nothing returns nothing
    call CreateNeutralPassiveBuildingsEffect()
endfunction
function CreateRegions0 takes nothing returns nothing
    local weathereffect we
    set gg_rct_circle=Rect(- 4512., - 4384., 4448., 4192.)
    set we=AddWeatherEffect(gg_rct_circle, 'RAlr')
    call EnableWeatherEffect(we, true)
    set gg_rct______________001=Rect(- 3904., 3712., - 3744., 3904.)
    set gg_rct______________002=Rect(- 64., 3744., 64., 3904.)
    set gg_rct______________003=Rect(3744., 3712., 3904., 3872.)
    set gg_rct______________004=Rect(3744., - 96., 3904., 96.)
    set gg_rct______________005=Rect(3744., - 3904., 3904., - 3776.)
    set gg_rct______________006=Rect(- 96., - 3936., 64., - 3776.)
    set gg_rct______________007=Rect(- 3936., - 3968., - 3744., - 3808.)
    set gg_rct______________008=Rect(- 3936., - 64., - 3776., 64.)
    set gg_rct______________009=Rect(- 2912., - 96., - 2720., 64.)
    set gg_rct______________010=Rect(- 2912., 2784., - 2752., 2912.)
    set gg_rct______________011=Rect(- 1888., 2784., - 1728., 2944.)
    set gg_rct______________012=Rect(- 64., 2752., 96., 2912.)
    set gg_rct______________013=Rect(2720., 2752., 2848., 2880.)
    set gg_rct______________014=Rect(2720., 1728., 2880., 1888.)
    set gg_rct______________015=Rect(2752., - 64., 2880., 96.)
    set gg_rct______________016=Rect(2688., - 2880., 2848., - 2752.)
    set gg_rct______________017=Rect(1696., - 2880., 1856., - 2752.)
    set gg_rct______________018=Rect(- 96., - 2912., 64., - 2752.)
    set gg_rct______________019=Rect(- 2912., - 2880., - 2752., - 2752.)
    set gg_rct______________020=Rect(- 2880., - 1888., - 2720., - 1728.)
    set gg_rct______________021=Rect(- 1024., - 1984., - 544., - 1792.)
    set gg_rct______________022=Rect(- 2016., 544., - 1792., 1024.)
    set gg_rct______________023=Rect(544., 1760., 1024., 1984.)
    set gg_rct______________024=Rect(1792., - 1024., 2016., - 576.)
    set gg_rct_spawn1=Rect(- 1120., 448., - 448., 1088.)
    set gg_rct_spawn2=Rect(448., 448., 1088., 1056.)
    set gg_rct_spawn3=Rect(448., - 1088., 1088., - 480.)
    set gg_rct_spawn4=Rect(- 1088., - 1088., - 448., - 480.)
endfunction
function GetNumPlayer takes nothing returns integer
    local integer i= 0
    local player p= null
    local integer n= 0
    loop
        exitwhen i > 11
        set p=Player(i)
        if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
            set n=n + 1
        endif
        set i=i + 1
    endloop
    set p=null
    return n
endfunction
function IsUnitAbilityCdOk takes unit u,string abilityid returns boolean
    local boolean ok
    local real mana= GetUnitManaPercent(u)
    call DisableTrigger(GetTriggeringTrigger())
    call SetUnitManaPercentBJ(u, 100)
    set ok=IssueImmediateOrder(u, abilityid)
    call IssueImmediateOrder(u, "stop")
    call SetUnitManaPercentBJ(u, mana)
    call EnableTrigger(GetTriggeringTrigger())
    return ok
endfunction
function getAbilityIdByItemId takes integer itemId returns integer
    return LoadInteger(YDHT, itemId, 65244)
endfunction
function ServerSavePointsWhenEnterGame takes nothing returns nothing
    local integer i= 1
    loop
        exitwhen i > 4
        set udg_tech[i]=udg_tech[i] - 1
        call DzAPI_Map_StoreInteger(Player(i - 1) , "tech" , udg_tech[i])
        set i=i + 1
    endloop
endfunction
function ServerSavePointsWhenWin takes nothing returns nothing
    local integer i= 1
    local integer point= 2 * udg_difficulty
    local string point_times= DzAPI_Map_GetMapConfig("point_time")
    if S2I(point_times) >= 1 then
        set point=point * S2I(point_times)
    endif
    loop
        exitwhen i > 4
        set udg_zdl[i]=udg_zdl[i] + point
        set udg_point[i]=udg_point[i] + point
        set udg_success[i]=udg_success[i] + 1
        set udg_tech[i]=udg_tech[i] + udg_difficulty + 1
        if GetPlayerController(Player(i - 1)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(i - 1)) == PLAYER_SLOT_STATE_PLAYING then
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFF99CC00获得战斗力和积分：" + I2S(point))
            call DzAPI_Map_StoreInteger(Player(i - 1) , "zdl" , udg_zdl[i])
            call DzAPI_Map_StoreInteger(Player(i - 1) , "point" , udg_point[i])
            call DzAPI_Map_StoreInteger(Player(i - 1) , "success" , udg_success[i])
            call DzAPI_Map_StoreInteger(Player(i - 1) , "tech" , udg_tech[i])
            if udg_difficulty > DzAPI_Map_GetStoredInteger(Player(i - 1) , "difficulty") then
                call DzAPI_Map_StoreInteger(Player(i - 1) , "difficulty" , udg_difficulty)
            endif
        endif
        if udg_tech[i] > udg_success[i] * 5 and udg_success[i] >= 10 then
            set udg_tech_evaluate[i]="A+"
        elseif udg_tech[i] > udg_success[i] * 4 and udg_success[i] >= 10 then
            set udg_tech_evaluate[i]="A"
        elseif udg_tech[i] > udg_success[i] * 3 and udg_success[i] >= 10 then
            set udg_tech_evaluate[i]="B"
        elseif udg_tech[i] > udg_success[i] * 2 and udg_success[i] >= 10 then
            set udg_tech_evaluate[i]="C"
        elseif udg_tech[i] > udg_success[i] then
            set udg_tech_evaluate[i]="D"
        else
            set udg_tech_evaluate[i]="D-"
        endif
        if GetPlayerServerValueSuccess(Player(i - 1)) and not saveFlag[i] then
            call DzAPI_Map_Stat_SetStat(Player(i - 1), "zdl", I2S(udg_zdl[i]))
            call DzAPI_Map_Stat_SetStat(Player(i - 1), "point", I2S(udg_point[i]))
            call DzAPI_Map_Stat_SetStat(Player(i - 1), "tech", udg_tech_evaluate[i])
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFFFE890D" + GetPlayerName(Player(i - 1)) + "|CFF99CC00数据保存成功")
            set saveFlag[i]=true
        else
            call DisplayTextToPlayer(Player(i - 1), 0, 0, "|CFFFE890D" + GetPlayerName(Player(i - 1)) + "|CFFFF0303数据保存失败")
        endif
        set i=i + 1
    endloop
endfunction
function InitServerValues takes nothing returns nothing
    local integer i= 1
    loop
        exitwhen i > 4
        set udg_zdl[i]=DzAPI_Map_GetStoredInteger(Player(i - 1) , "zdl")
        set udg_point[i]=DzAPI_Map_GetStoredInteger(Player(i - 1) , "point")
        set udg_success[i]=DzAPI_Map_GetStoredInteger(Player(i - 1) , "success")
        set udg_tech[i]=DzAPI_Map_GetStoredInteger(Player(i - 1) , "tech")
        set qqTeamAward[i]=DzAPI_Map_GetStoredBoolean(Player(i - 1) , "qqTeamAward")
        set mapLevel[i]=DzAPI_Map_GetMapLevel(Player(i - 1))
        set winDifficulty[i]=DzAPI_Map_GetStoredInteger(Player(i - 1) , "difficulty")
        set udg_pointMax[i]=0
        set saveFlag[i]=false
        set i=i + 1
    endloop
endfunction
function GetItemNum takes unit u returns integer
    local integer i= 1
    // if GetUnitPointValue(u) >= 600 then
    //     set i = 1
    // endif
    // if GetUnitPointValue(u) >= 2500 then
    //     set i = 2
    // endif
    // if GetUnitPointValue(u) >= 6000 then
    //     set i = 3
    // endif
    // if GetUnitPointValue(u) >= 10000 then
    //     set i = 4
    // endif
    if IsBuilder(GetUnitTypeId(u)) then
        set i=6
    else
        set i=LoadInteger(YDHT, (LoadInteger(NHT, (GetUnitTypeId(u)), 0)), TOWER_LEVEL_KEY) // INLINED!!
    endif
    return i
endfunction
function OpenAgain takes nothing returns nothing
    call IssueImmediateOrder(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0), LoadStr(YDHT, GetHandleId(GetExpiredTimer()), 1) + "on")
    call IssueImmediateOrder(LoadUnitHandle(YDHT, GetHandleId(GetExpiredTimer()), 0), "stop")
    call FlushChildHashtable(YDHT, GetHandleId(GetExpiredTimer()))
    call PauseTimer(GetExpiredTimer())
    call DestroyTimer(GetExpiredTimer())
endfunction
function AutoSpell takes unit u,unit ut,integer spell_id,string order returns nothing
    local timer tm= null
    if GetUnitAbilityLevel(u, spell_id) >= 1 and IsUnitAbilityCdOk(u , order) then
        if IsUnitAbilityCdOk(u , order + "off") then
            call IssueImmediateOrder(u, order)
            call IssueTargetOrder(u, order, ut)
            set tm=CreateTimer()
            call SaveUnitHandle(YDHT, GetHandleId(tm), 0, u)
            call SaveStr(YDHT, GetHandleId(tm), 1, order)
            call TimerStart(tm, 1., false, function OpenAgain)
        endif
    endif
    set tm=null
endfunction
function bubbleSortForDamage takes nothing returns nothing
    local integer i= 1
    local integer j= 1
    local real damage1= 0
    local real damage2= 0
    local unit u1= null
    local unit u2= null
    loop
        exitwhen i > damageCounter
        set j=i + 1
        loop
            exitwhen j > damageCounter
            set damage1=LoadReal(YDHT, DAMAGE_KEY, i)
            set damage2=LoadReal(YDHT, DAMAGE_KEY, j)
            if damage2 > damage1 then
                set u1=LoadUnitHandle(YDHT, DAMAGE_UNIT_KEY, i)
                set u2=LoadUnitHandle(YDHT, DAMAGE_UNIT_KEY, j)
                call SaveReal(YDHT, DAMAGE_KEY, i, damage2)
                call SaveReal(YDHT, DAMAGE_KEY, j, damage1)
                call SaveInteger(YDHT, GetHandleId(u2), DAMAGE_UNIT_KEY, i)
                call SaveInteger(YDHT, GetHandleId(u1), DAMAGE_UNIT_KEY, j)
                call SaveUnitHandle(YDHT, DAMAGE_UNIT_KEY, i, u2)
                call SaveUnitHandle(YDHT, DAMAGE_UNIT_KEY, j, u1)
            endif
            set j=j + 1
        endloop
        set i=i + 1
    endloop
    set u1=null
    set u2=null
endfunction
function Trig_SystemWindowActions takes nothing returns nothing
    call CreateMultiboardBJ(1, 1, "圈内单位")
    set udg_multi=GetLastCreatedMultiboard()
    call MultiboardDisplayBJ(true, GetLastCreatedMultiboard())
    call YDWEMultiboardSetItemWidthBJNull(GetLastCreatedMultiboard() , 1 , 1 , 10.)
endfunction
function InitTrig_SystemWindow takes nothing returns nothing
    set gg_trg_SystemWindow=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_SystemWindow, 0.)
    call TriggerAddAction(gg_trg_SystemWindow, function Trig_SystemWindowActions)
endfunction
function InitTrig_MapInit takes nothing returns nothing
    call SetTimeOfDay(8.)
    call UseTimeOfDayBJ(false)
    call SetPlayerState(Player(5), PLAYER_STATE_GIVES_BOUNTY, 1)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=5
    loop
        exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
        // call ShowUnitShow(gg_unit_o00A_0014)
        // 设置塔允许建造的个数限制
        call SetPlayerTechMaxAllowedSwap('H004', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('N01O', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('n01N', 2, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('O003', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('n002', 2, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('n010', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('H000', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('n01Z', 2, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('N00G', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('H017', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('H015', 2, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('h00Z', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('N027', 1, ConvertedPlayer(bj_forLoopAIndex))
        call SetPlayerTechMaxAllowedSwap('n01S', 2, ConvertedPlayer(bj_forLoopAIndex))
        
        set bj_forLoopAIndex=bj_forLoopAIndex + 1
    endloop
endfunction
function Trig_OneSecondActions takes nothing returns nothing
    local integer i= 0
    call AddWeatherEffectSaveLast(GetEntireMapRect(), 'LRma')
    call SetCameraTargetController(gg_unit_o00A_0014, 0, 0, false)
    call InitServerValues()
    call ServerSavePointsWhenEnterGame()
    set udg_ShengYuGuaiShu=udg_ShengYuGuaiShu + 25
    loop
        exitwhen i >= 4
        if GetPlayerSlotState(Player(i)) == PLAYER_SLOT_STATE_PLAYING then
            set udg_ShengYuGuaiShu=udg_ShengYuGuaiShu + 25
            call DisplayTimedTextToForce(GetPlayersAll(), 15., "玩家" + YDWEGetPlayerColorString(Player(i) , GetPlayerName(Player(i))) + "正在游戏，增加25点生命值")
        endif
        set i=i + 1
    endloop
    call EnableTrigger(gg_trg_JiFenPaiUpdate)
endfunction
function InitTrig_OneSecond takes nothing returns nothing
    set gg_trg_OneSecond=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_OneSecond, 1.)
    call TriggerAddAction(gg_trg_OneSecond, function Trig_OneSecondActions)
endfunction
function createBuilderForPlayer takes integer i returns nothing
    if GetPlayerController(Player(i - 1)) == MAP_CONTROL_USER and GetPlayerSlotState(Player(i - 1)) == PLAYER_SLOT_STATE_PLAYING then
        call CreateNUnitsAtLoc(1, 'U00X', Player(i - 1), born_loc[i], bj_UNIT_FACING)
        set builder[i]=bj_lastCreatedUnit
        call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03U')
        call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03V')
        call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03W')
        call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A03X')
        call UnitMakeAbilityPermanent(bj_lastCreatedUnit, true, 'A04I')
        call PanCameraToTimedLocForPlayer(Player(i - 1), born_loc[i], 0)
    endif
endfunction
function Trig_ChooseNanDuFunc013T takes nothing returns nothing
    if udg_difficulty == 0 then
        call DialogDisplay(LoadPlayerHandle(YDLOC, GetHandleId(GetExpiredTimer()), $32A9E4C8), udg_select_diff, false)
        call DisplayTimedTextToForce(GetPlayersAll(), 10., "|cff00FFFF自动选择了难度|cFF00CC00初入江湖(N1)")
        call DisplayTimedTextToForce(GetPlayersAll(), 10., "|cFF00CC00初入江湖(N1)|r难度下：")
        call DisplayTimedTextToForce(GetPlayersAll(), 10., "进攻怪防御等级、速度等级、血量和回血等级为|cFF00CC001|r")
        set udg_difficulty=1
        call SetPlayerTechResearchedSwap('R000', 1, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF00CC00初入江湖(N1)")
        set bj_forLoopAIndex=1
        set bj_forLoopAIndexEnd=4
        loop
            exitwhen bj_forLoopAIndex > bj_forLoopAIndexEnd
            call SetPlayerStateBJ(ConvertedPlayer(bj_forLoopAIndex), PLAYER_STATE_RESOURCE_GOLD, 1000)
            call SetPlayerStateBJ(Player(bj_forLoopAIndex - 1), PLAYER_STATE_RESOURCE_LUMBER, 10)
            call SetPlayerStateBJ(ConvertedPlayer(bj_forLoopAIndex), PLAYER_STATE_RESOURCE_FOOD_CAP, 2)
            call createBuilderForPlayer(bj_forLoopAIndex)
            set bj_forLoopAIndex=bj_forLoopAIndex + 1
        endloop
    else
    endif
endfunction
function Trig_ChooseNanDuActions takes nothing returns nothing
    local timer ydl_timer
    local integer ydl_localvar_step= LoadInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), $CFDE6C76)
    set ydl_localvar_step=ydl_localvar_step + 3
    call SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), $CFDE6C76, ydl_localvar_step)
    call SaveInteger(YDLOC, GetHandleId(GetTriggeringTrigger()), $ECE825E7, ydl_localvar_step)
    call SavePlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, $32A9E4C8, Player(0))
    call DisplayTimedTextToForce(GetPlayersAll(), 10., "等待主机" + ( YDWEGetPlayerColorString(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, $32A9E4C8) , GetPlayerName(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, $32A9E4C8))) + "选择难度" ))
    call DialogSetMessage(udg_select_diff, "请选择难度")
    set udg_diff[1]=DialogAddButton(udg_select_diff, "|cFF00CC00初入江湖(N1)", 65)
    set udg_diff[2]=DialogAddButton(udg_select_diff, "|cFFCC0066牛刀小试(N2)", 66)
    set udg_diff[3]=DialogAddButton(udg_select_diff, "|cFFFF6600初出茅庐(N3)", 67)
    set udg_diff[4]=DialogAddButton(udg_select_diff, "|cFF0041FF初窥门径(N4)", 68)
    set udg_diff[5]=DialogAddButton(udg_select_diff, "|cFF1FBF00略有小成(N5)", 69)
    set udg_diff[6]=DialogAddButton(udg_select_diff, "|cFFFF0000已有小成(N6)", 70)
    set udg_diff[7]=DialogAddButton(udg_select_diff, "|cFF00FFFF渐入佳境(N7)", 71)
    set udg_diff[8]=DialogAddButton(udg_select_diff, "|cFFCCCC00驾轻就熟(N8)", 72)
    set udg_diff[9]=DialogAddButton(udg_select_diff, "|cFF0099CC略有大成(N9)", 73)
    set udg_diff[10]=DialogAddButton(udg_select_diff, "|cFF66CC99已有大成(N10)", 74)
    // set udg_diff[7] = DialogAddButton(udg_select_diff, "|cFF00FF00生存模式", 71)
    call DialogDisplay(LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, $32A9E4C8), udg_select_diff, true)
    set ydl_timer=CreateTimer()
    call SavePlayerHandle(YDLOC, GetHandleId(ydl_timer), $32A9E4C8, LoadPlayerHandle(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step, $32A9E4C8))
    call TimerStart(ydl_timer, 20., false, function Trig_ChooseNanDuFunc013T)
    call FlushChildHashtable(YDLOC, GetHandleId(GetTriggeringTrigger()) * ydl_localvar_step)
    set ydl_timer=null
endfunction
function InitTrig_ChooseNanDu takes nothing returns nothing
    set gg_trg_ChooseNanDu=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_ChooseNanDu, 1.)
    call TriggerAddAction(gg_trg_ChooseNanDu, function Trig_ChooseNanDuActions)
endfunction
function Trig_ChooseNanDu_2Actions takes nothing returns nothing
    local integer i= 1
    if GetClickedButtonBJ() == udg_diff[1] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFF00CC00初入江湖(N1)")
        call DisplayTextToForce(GetPlayersAll(), "|cFF00CC00初入江湖(N1)|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFF00CC001|r")
        set udg_difficulty=1
        call SetPlayerTechResearchedSwap('R000', 1, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF00CC00初入江湖(N1)")
    endif
    if GetClickedButtonBJ() == udg_diff[2] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFFCC0066牛刀小试(N2)")
        call DisplayTextToForce(GetPlayersAll(), "|cFFCC0066牛刀小试(N2)|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFFCC00662|r")
        set udg_difficulty=2
        call SetPlayerTechResearchedSwap('R000', 3, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFFCC0066牛刀小试(N2)")
    endif
    if GetClickedButtonBJ() == udg_diff[3] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFFFF6600初出茅庐(N3)")
        call DisplayTextToForce(GetPlayersAll(), "|cFFFF6600初出茅庐(N3)|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFFFF66003|r")
        set udg_difficulty=3
        call SetPlayerTechResearchedSwap('R000', 5, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFFFF6600初出茅庐(N3)")
    endif
    if GetClickedButtonBJ() == udg_diff[4] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFF0041FF初窥门径(N4)")
        call DisplayTextToForce(GetPlayersAll(), "|cFF0041FF初窥门径(N4)|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFF0041FF4|r")
        set udg_difficulty=4
        call SetPlayerTechResearchedSwap('R000', 7, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF0041FF初窥门径(N4)")
    endif
    if GetClickedButtonBJ() == udg_diff[5] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFF1FBF00略有小成(N5)")
        call DisplayTextToForce(GetPlayersAll(), "|cFF1FBF00略有小成(N5)|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFF1FBF005|r")
        set udg_difficulty=5
        call SetPlayerTechResearchedSwap('R000', 9, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF1FBF00略有小成(N5)")
    endif
    if GetClickedButtonBJ() == udg_diff[6] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFFFF0000已有小成(N6)")
        call DisplayTextToForce(GetPlayersAll(), "|cFFFF0000已有小成(N6)|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFF00FFFF6|r")
        set udg_difficulty=6
        call SetPlayerTechResearchedSwap('R000', 11, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFFFF0000已有小成(N6)")
    endif
    if GetClickedButtonBJ() == udg_diff[7] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFF00FFFF渐入佳境(N7)")
        call DisplayTextToForce(GetPlayersAll(), "|cFF00FFFF渐入佳境(N7)|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFF00FFFF7|r")
        set udg_difficulty=7
        call SetPlayerTechResearchedSwap('R000', 13, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF00FFFF渐入佳境(N7)")
    endif
    if GetClickedButtonBJ() == udg_diff[8] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFFCCCC00驾轻就熟(N8)")
        call DisplayTextToForce(GetPlayersAll(), "|cFFCCCC00驾轻就熟(N8)|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFF00FFFF8|r")
        set udg_difficulty=8
        call SetPlayerTechResearchedSwap('R000', 15, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFFCCCC00驾轻就熟(N8)")
    endif
    if GetClickedButtonBJ() == udg_diff[9] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFF0099CC略有大成(N9)")
        call DisplayTextToForce(GetPlayersAll(), "|cFF0099CC略有大成(N9)|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFF00FFFF9|r")
        set udg_difficulty=9
        call SetPlayerTechResearchedSwap('R000', 17, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF0099CC略有大成(N9)")
    endif
    if GetClickedButtonBJ() == udg_diff[10] then
        call DisplayTextToForce(GetPlayersAll(), "|cffff0000" + GetPlayerName(Player(0)) + "|cff00FFFF选择了难度|cFF66CC99已有大成(N10)")
        call DisplayTextToForce(GetPlayersAll(), "|cFF66CC99已有大成(N10)|r难度下：")
        call DisplayTextToForce(GetPlayersAll(), "进攻怪防御等级、速度等级、血量和回血等级为|cFF00FFFF10|r")
        set udg_difficulty=10
        call SetPlayerTechResearchedSwap('R000', 19, Player(5))
        call MultiboardSetTitleText(udg_multi, "|cFF66CC99已有大成(N10)")
    endif
    loop
        exitwhen i > 4
        call SetPlayerStateBJ(Player(i - 1), PLAYER_STATE_RESOURCE_FOOD_CAP, 2)
        call SetPlayerStateBJ(Player(i - 1), PLAYER_STATE_RESOURCE_GOLD, 1000)
        call SetPlayerStateBJ(Player(i - 1), PLAYER_STATE_RESOURCE_LUMBER, 10)
        call createBuilderForPlayer(i)
        set i=i + 1
    endloop
endfunction
function InitTrig_ChooseNanDu_2 takes nothing returns nothing
    set gg_trg_ChooseNanDu_2=CreateTrigger()
    call TriggerRegisterDialogEvent(gg_trg_ChooseNanDu_2, udg_select_diff)
    call TriggerAddAction(gg_trg_ChooseNanDu_2, function Trig_ChooseNanDu_2Actions)
endfunction
function Trig_PlayerLeaveActions takes nothing returns nothing
    set udg_ShengYuGuaiShu=udg_ShengYuGuaiShu - 25
    call DisplayTimedTextToForce(GetPlayersAll(), 10., "|CFFFF0000有玩家逃离了战场，剩余生命值减少25点")
endfunction
function InitTrig_PlayerLeave takes nothing returns nothing
    set gg_trg_PlayerLeave=CreateTrigger()
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(0))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(1))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(2))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(3))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(4))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(5))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(6))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(7))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(8))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(9))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(10))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(11))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(12))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(13))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(14))
    call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave, Player(15))
    call TriggerAddAction(gg_trg_PlayerLeave, function Trig_PlayerLeaveActions)
endfunction
function Trig_KillFinalBossConditions takes nothing returns boolean
    return GetUnitTypeId(GetTriggerUnit()) == 'U00B'
endfunction
function Trig_KillFinalBossActions takes nothing returns nothing
    set udg_kill_final_num=udg_kill_final_num + 1
endfunction
function InitTrig_KillFinalBoss takes nothing returns nothing
    set gg_trg_KillFinalBoss=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_KillFinalBoss, EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_KillFinalBoss, Condition(function Trig_KillFinalBossConditions))
    call TriggerAddAction(gg_trg_KillFinalBoss, function Trig_KillFinalBossActions)
endfunction
function noFinalBoss takes nothing returns boolean
    local unit u= null
    local group g= CreateGroup()
    call GroupAddGroup(attackerGroup, g)
    loop
        set u=FirstOfGroup(g)
        exitwhen u == null
        if GetUnitTypeId(u) == 'U00B' then
            call DestroyGroup(g)
            set u=null
            set g=null
            return false
        endif
        call GroupRemoveUnit(g, u)
    endloop
    call DestroyGroup(g)
    set u=null
    set g=null
    return true
endfunction
function Trig_WinConditions takes nothing returns boolean
    return finalBossAttack and noFinalBoss()
endfunction
function Trig_WinFunc006T takes nothing returns nothing
    call CustomVictoryBJ(Player(0), true, true)
    call CustomVictoryBJ(Player(1), true, true)
    call CustomVictoryBJ(Player(2), true, true)
    call CustomVictoryBJ(Player(3), true, true)
endfunction
function Trig_WinActions takes nothing returns nothing
    local timer ydl_timer
    call DisableTrigger(GetTriggeringTrigger())
    call DisplayTextToForce(GetPlayersAll(), "|cFF00FF00恭喜通关！游戏将在40秒后结束！|r")
    call ServerSavePointsWhenWin()
    set ydl_timer=CreateTimer()
    call TimerStart(ydl_timer, 40., false, function Trig_WinFunc006T)
    set ydl_timer=null
endfunction
function InitTrig_Win takes nothing returns nothing
    set gg_trg_Win=CreateTrigger()
    call DisableTrigger(gg_trg_Win)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Win, .1)
    call TriggerAddCondition(gg_trg_Win, Condition(function Trig_WinConditions))
    call TriggerAddAction(gg_trg_Win, function Trig_WinActions)
endfunction
function Trig____________________001Actions takes nothing returns nothing
endfunction
function InitTrig____________________001 takes nothing returns nothing
    set gg_trg____________________001=CreateTrigger()
    call YDWESyStemAnyUnitDamagedRegistTrigger(gg_trg____________________001)
    call YDWETriggerRegisterEnterRectSimpleNull(gg_trg____________________001 , GetPlayableMapRect())
    call TriggerAddAction(gg_trg____________________001, function Trig____________________001Actions)
endfunction
function Trig_JiFenPaiUpdateActions takes nothing returns nothing
    local integer count= CountUnitsInGroup(attackerGroup)
    call MultiboardSetItemValue(MultiboardGetItem(udg_multi, 0, 0), "圈内单位：" + I2S(count) + " / " + I2S(udg_ShengYuGuaiShu))
    call LeaderboardSetPlayerItemValueBJ(Player(4), udg_jifenpai, udg_ShengYuGuaiShu)
    if count >= udg_ShengYuGuaiShu then
        set isFailing=true
        set failingCounter=failingCounter + 1
        if ModuloInteger(failingCounter, 3) == 0 then
            call DisplayTextToForce(GetPlayersAll(), "|cFFFF0000循环圈内怪物过多，请及时清理，否则下波进攻开始时游戏失败！|r")
        endif
    else
        set failingCounter=0
        set isFailing=false
    endif
endfunction
function InitTrig_JiFenPaiUpdate takes nothing returns nothing
    set gg_trg_JiFenPaiUpdate=CreateTrigger()
    call DisableTrigger(gg_trg_JiFenPaiUpdate)
    call TriggerRegisterTimerEventPeriodic(gg_trg_JiFenPaiUpdate, .5)
    call TriggerAddAction(gg_trg_JiFenPaiUpdate, function Trig_JiFenPaiUpdateActions)
endfunction
function Trig_FirstOccurActions takes nothing returns nothing
    if YDWEUnitHasItemOfTypeBJNull(GetTriggerUnit() , 'I00U') then
        call YDWEPolledWaitNull(5)
    endif
endfunction
function InitTrig_FirstOccur takes nothing returns nothing
    set gg_trg_FirstOccur=CreateTrigger()
    call TriggerAddAction(gg_trg_FirstOccur, function Trig_FirstOccurActions)
endfunction
function InitCustomTriggers0 takes nothing returns nothing
    call InitTrig_SystemWindow()
    call InitTrig_MapInit()
    call InitTrig_OneSecond()
    call InitTrig_ChooseNanDu()
    call InitTrig_ChooseNanDu_2()
    call InitTrig_PlayerLeave()
    call InitTrig_KillFinalBoss()
    call InitTrig_Win()
    call InitTrig____________________001()
    call InitTrig_JiFenPaiUpdate()
    call InitTrig_FirstOccur()
endfunction
function CreateF9 takes nothing returns nothing
    call CreateQuestBJ(0, "|cFFFF0000属性", "人品：|cFFCCFF33影响宝物掉落几率抽取武魂石几率\n", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
    call CreateQuestBJ(0, "|cFF00FF00游戏指令", "输入“+”和”-”：|cFFCCFF33调整视角|r\n输入“ckrp”：|cFFCCFF33查看当前人品值|r\n输入“cx”：|cFFCCFF33查看存档积分|r\n", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
    call CreateQuestBJ(0, "|cFFFF00CC神器系统", "在游戏中共有11种神器，每局随机开放3种，可以在NPC干将处查询本局开放神器和神器合成公式", "ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
endfunction
function InitMenPaiWuPin takes nothing returns nothing
    call AddItemToStockBJ('I000', gg_unit_o00A_0014, 1, 1)
    call AddItemToStockBJ('I001', gg_unit_o00A_0014, 1, 1)
    call AddItemToStockBJ('I002', gg_unit_o00A_0014, 1, 1)
    call AddItemToStockBJ('I003', gg_unit_o00A_0014, 1, 1)
    call AddItemToStockBJ('I02K', gg_unit_o00A_0014, 1, 1)
endfunction
function initStocks takes nothing returns nothing
    
endfunction
function RandomShenQi takes nothing returns nothing
    local integer i= 0
    local integer j= 0
    local integer temp= 0
    set i=1
    loop
        exitwhen i > SHEN_QI_NUM
        set random_shenqi[i]=shenqi[i]
        set i=i + 1
    endloop
    set i=SHEN_QI_NUM
    loop
        exitwhen i <= 0
        set j=GetRandomInt(1, i - 1)
        set temp=random_shenqi[i]
        set random_shenqi[i]=random_shenqi[j]
        set random_shenqi[j]=temp
        set i=i - 1
    endloop
endfunction
function initKungfus takes nothing returns nothing
    call SaveInteger(YDHT, 'I022', 65244, 'A03P')
    call SaveInteger(YDHT, 'I023', 65244, 'A03R')
    call SaveInteger(YDHT, 'I024', 65244, 'A03Q')
    call SaveInteger(YDHT, 'I025', 65244, 'A03N')
    call SaveInteger(YDHT, 'I068', 65244, 'A096')
endfunction
function InitPriv takes nothing returns nothing
    local integer i= 1
    local string name
    loop
        exitwhen i > 5
        set name=LoadStr(YDHT, GetHandleId(Player(i - 1)), StringHash("name"))
        if name == "WorldEdit" or name == "zeikale" or name == "zeikala" or name == "非我莫属xq" or name == "苍穹而降" or name == "晓窗临风" or name == "Talent天坤" then
            call DisplayTimedTextToPlayer(Player(i - 1), 0, 0, 15., "|CFFff9933开启测试人员权限|r")
            set udg_isTest[i]=true
        endif
        set i=i + 1
    endloop
endfunction
function MapInit_Conditions takes nothing returns boolean
    call InitPriv()
    call najitest()
    call initSpawn()
    call initEnemyMove()
    call mallInit()
    return false
endfunction
function MapInit takes nothing returns nothing
    local trigger t= CreateTrigger()
    local integer j= 1
    set shenqi[1]='I00V'
    set shenqi[2]='I013'
    set shenqi[3]='I00F'
    set shenqi[4]='I00M'
    set shenqi[5]='I012'
    set shenqi[6]='I00L'
    set shenqi[7]='I00U'
    set shenqi[8]='I00N'
    set shenqi[9]='I00C'
    set shenqi[10]='I00R'
    set shenqi[11]='I00W'
    set juenei[1]='I022'
    set juenei[2]='I023'
    set juenei[3]='I024'
    set juenei[4]='I025'
    set juenei[5]='I068'
    set luck[1]=20
    set luck[2]=20
    set luck[3]=20
    set luck[4]=20
    set normal_drops[1]='I004'
    set normal_drops[2]='I00E'
    set normal_drops[3]='I00P'
    set normal_drops[4]='I00G'
    set normal_drops[5]='I00X'
    set rare_drops[1]='I00B'
    set rare_drops[2]='I00H'
    set rare_drops[3]='I00O'
    set rare_drops[4]='I005'
    set rare_drops[5]='I00Y'
    set valuable_drops[1]='I00A'
    set valuable_drops[2]='I00I'
    set valuable_drops[3]='I006'
    set valuable_drops[4]='I008'
    set valuable_drops[5]='I00Z'
    set valuable_drops[6]='I016'
    set ancient_drops[1]='I009'
    set ancient_drops[2]='I00J'
    set ancient_drops[3]='I00Q'
    set ancient_drops[4]='I00S'
    set ancient_drops[5]='I010'
    set epic_drops[1]='I00D'
    set epic_drops[2]='I00K'
    set epic_drops[3]='I007'
    set epic_drops[4]='I00T'
    set epic_drops[5]='I011'
    set low_towers[1]='I100'
    set low_towers[2]='I101'
    set low_towers[3]='I102'
    set low_towers[4]='I109'
    set low_towers[5]='I10A'
    set low_towers[6]='I10B'
    set low_towers[7]='I10J'
    set low_towers[8]='I10K'
    set low_towers[9]='I10L'
    set low_towers[10]='I10U'
    set low_towers[11]='I10V'
    set low_towers[12]='I10W'
    set low_towers[13]='I115'
    set low_towers[14]='I116'
    set low_towers[15]='I117'
    set normal_towers[1]='I103'
    set normal_towers[2]='I104'
    set normal_towers[3]='I10C'
    set normal_towers[4]='I10D'
    set normal_towers[5]='I10M'
    set normal_towers[6]='I10N'
    set normal_towers[7]='I10O'
    set normal_towers[8]='I10X'
    set normal_towers[9]='I10Y'
    set normal_towers[10]='I10Z'
    set normal_towers[11]='I118'
    set normal_towers[12]='I119'
    set normal_towers[13]='I11A'
    set normal_towers[14]='I11B'
    set normal_towers[15]='I11J'
    set fine_towers[1]='I105'
    set fine_towers[2]='I106'
    set fine_towers[3]='I10E'
    set fine_towers[4]='I10F'
    set fine_towers[5]='I10G'
    set fine_towers[6]='I10P'
    set fine_towers[7]='I10Q'
    set fine_towers[8]='I10R'
    set fine_towers[9]='I110'
    set fine_towers[10]='I111'
    set fine_towers[11]='I112'
    set fine_towers[12]='I11C'
    set fine_towers[13]='I11D'
    set fine_towers[14]='I11E'
    set fine_towers[15]='I11K'
    
    set perfect_towers[1]='I107'
    set perfect_towers[2]='I108'
    set perfect_towers[3]='I10H'
    set perfect_towers[4]='I10I'
    set perfect_towers[5]='I10S'
    set perfect_towers[6]='I10T'
    set perfect_towers[7]='I113'
    set perfect_towers[8]='I114'
    set perfect_towers[9]='I11F'
    set perfect_towers[10]='I11G'
    set perfect_towers[11]='I11H'
    set perfect_towers[12]='I11I'
    set perfect_towers[13]='I11L'
    
    
    loop
        exitwhen j > MAX_NORMAL_DROP
        call SaveStr(YDHT, normal_drops[j], EQUIP_LEVEL_KEY, "|cffccffff普通|r")
        call SaveInteger(YDHT, normal_drops[j], EQUIP_INT_LEVEL_KEY, 1)
        call SaveInteger(YDHT, normal_drops[j], EQUIP_BASE_STRENGTH_KEY, 1)
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > MAX_RARE_DROP
        call SaveStr(YDHT, rare_drops[j], EQUIP_LEVEL_KEY, "|cff3366ff稀有|r")
        call SaveInteger(YDHT, rare_drops[j], EQUIP_INT_LEVEL_KEY, 2)
        call SaveInteger(YDHT, rare_drops[j], EQUIP_BASE_STRENGTH_KEY, 3)
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > MAX_VALUABLE_DROP
        call SaveStr(YDHT, valuable_drops[j], EQUIP_LEVEL_KEY, "|cffff9900珍稀|r")
        call SaveInteger(YDHT, valuable_drops[j], EQUIP_INT_LEVEL_KEY, 3)
        call SaveInteger(YDHT, valuable_drops[j], EQUIP_BASE_STRENGTH_KEY, 6)
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > MAX_ANCIENT_DROP
        // 远古装备有一项随机属性
        call SaveInteger(YDHT, ancient_drops[j], EQUIP_ATTR_COUNT_KEY, 1)
        call SaveStr(YDHT, ancient_drops[j], EQUIP_LEVEL_KEY, "|cffff0000远古|r")
        call SaveInteger(YDHT, ancient_drops[j], EQUIP_INT_LEVEL_KEY, 4)
        call SaveInteger(YDHT, ancient_drops[j], EQUIP_BASE_STRENGTH_KEY, 10)
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > MAX_EPIC_DROP
        // 史诗装备有两项随机属性
        call SaveInteger(YDHT, epic_drops[j], EQUIP_ATTR_COUNT_KEY, 2)
        call SaveStr(YDHT, epic_drops[j], EQUIP_LEVEL_KEY, "|CFFCC99FF史诗|r")
        call SaveInteger(YDHT, epic_drops[j], EQUIP_INT_LEVEL_KEY, 5)
        call SaveInteger(YDHT, epic_drops[j], EQUIP_BASE_STRENGTH_KEY, 15)
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > SHEN_QI_NUM
        // 神器有三项随机属性
        call SaveInteger(YDHT, shenqi[j], EQUIP_ATTR_COUNT_KEY, 3)
        call SaveStr(YDHT, shenqi[j], EQUIP_LEVEL_KEY, "|cff800080传说|r")
        call SaveInteger(YDHT, shenqi[j], EQUIP_INT_LEVEL_KEY, 6)
        call SaveInteger(YDHT, shenqi[j], EQUIP_BASE_STRENGTH_KEY, 20)
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j >= 4
        call SaveStr(YDHT, GetHandleId(Player(j - 1)), StringHash("name"), GetPlayerName(Player(j - 1)))
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > LOW_SIZE
        call SaveInteger(YDHT, low_towers[j], TOWER_LEVEL_KEY, 1)
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > NORMAL_SIZE
        call SaveInteger(YDHT, normal_towers[j], TOWER_LEVEL_KEY, 2)
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > FINE_SIZE
        call SaveInteger(YDHT, fine_towers[j], TOWER_LEVEL_KEY, 3)
        set j=j + 1
    endloop
    set j=1
    loop
        exitwhen j > PERFECT_SIZE
        call SaveInteger(YDHT, perfect_towers[j], TOWER_LEVEL_KEY, 4)
        set j=j + 1
    endloop
    call SaveStr(YDHT, 'I00C', EQUIP_ABILITY_KEY, "血吼：增加周围单位200%的攻击力")
    call SaveStr(YDHT, 'I00F', EQUIP_ABILITY_KEY, "西毒杖法：攻击附带10000点毒素伤害及30%减速")
    call SaveStr(YDHT, 'I00L', EQUIP_ABILITY_KEY, "被动技能触发几率翻倍")
    call SaveStr(YDHT, 'I00M', EQUIP_ABILITY_KEY, "0.5%几率造成会心一击（秒杀普通单位，BOSS掉当前10%血）")
    call SaveStr(YDHT, 'I00N', EQUIP_ABILITY_KEY, "玄铁剑法：主动使用友军集体增加70%攻速")
    call SaveStr(YDHT, 'I00R', EQUIP_ABILITY_KEY, "几率打出狂暴")
    call SaveStr(YDHT, 'I00U', EQUIP_ABILITY_KEY, "攻击几率刷新武功CD")
    call SaveStr(YDHT, 'I00V', EQUIP_ABILITY_KEY, "打狗棒法：主动使用召唤10条恶犬打击敌人")
    call SaveStr(YDHT, 'I00W', EQUIP_ABILITY_KEY, "碧海潮声曲：每次攻击使敌人护甲降低100点。")
    call SaveStr(YDHT, 'I013', EQUIP_ABILITY_KEY, "主动使用增加周围单位100点内力")
    // YDWEGetObjectPropertyString(YDWE_OBJECT_TYPE_ABILITY, 'AHhb', "Name")
    call InitMenPaiWuPin()
    call initStocks()
    call RandomShenQi()
    call CreateF9()
    call initKungfus()
    call TriggerRegisterTimerEventSingle(t, .5)
    call TriggerAddAction(t, function MapInit_Conditions)
    set t=null
endfunction
function EnterMap_Conditions takes nothing returns boolean
    local unit u= GetEnteringUnit()
    local player p= GetOwningPlayer(u)
    local integer i= 1 + GetPlayerId(p)
    local item it2= null
    if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING and GetUnitTypeId(u) != 'n01P' and GetUnitAbilityLevel(u, 'Aloc') <= 0 then
        set tower[tower_num + 1]=s__Tower_create(u , GetItemNum(u))
        set tower_num=tower_num + 1
        if IsBuilder(GetUnitTypeId(u)) then
            // call UnitAddItemById(u, 'I02L')
            // 通关N8，额外送一把史诗武器
            if winDifficulty[i] >= 8 then
                set it2=UnitAddItemById(u, epic_drops[GetRandomInt(1, MAX_EPIC_DROP)])
                call generateRandomAttr(it2)
                call addExtraAttr(u , it2)
            endif
            // 通关N9，额外送30个珍稀币
            if winDifficulty[i] >= 9 then
                call addLumber(p , 30)
            endif
            // 购买重制版出门多一个欧皇大礼包
            if RequestExtraBooleanData(44, p, null, null, false, 0, 0, 0) then
                call UnitAddItemById(u, 'I061')
            endif
            // 首充礼包
            if europe_flag[i] == 1 then
                call UnitAddItemById(u, 'I061')
                call UnitAddItemById(u, 'I061')
                call UnitAddItemById(u, 'I061')
            endif
        endif
    endif
    set u=null
    set p=null
    set it2=null
    return false
endfunction
function Upgrade_Conditions takes nothing returns boolean
    local unit u= GetTriggerUnit()
    local player p= GetOwningPlayer(u)
    local integer tw= getTowerInstance(u)
    if GetPlayerController(p) == MAP_CONTROL_USER and GetPlayerSlotState(p) == PLAYER_SLOT_STATE_PLAYING then
        call DisplayTextToPlayer(p, 0, 0, "升级为" + GetUnitName(GetTriggerUnit()))
        call s__Tower_setAbility(tw)
        call s__Tower_setItemNum(tw , GetItemNum(u))
        // 内力上限加5 * 功勋
        call YDWEGeneralBounsSystemUnitSetBonus(u , 1 , 0 , CONT_MANA_ADDITION * LoadInteger(CONT_HT, GetHandleId(u), CONT_KEY))
    endif
    return false
endfunction
function EnterMap takes nothing returns nothing
    local trigger t= CreateTrigger()
    call SaveTowerAbility()
    call YDWETriggerRegisterEnterRectSimpleNull(t , GetPlayableMapRect())
    call TriggerAddCondition(t, Condition(function EnterMap_Conditions))
    set t=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_UPGRADE_FINISH)
    call TriggerAddCondition(t, Condition(function Upgrade_Conditions))
    set t=null
endfunction
function InitAllSystems takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_MapInit)
    call CreateNeutralPassiveBuildingsEffect() // INLINED!!
    call CreateRegions0()
    call MyInitGlobals()
    call InitCustomTriggers0()
    
    call KeyInputSystem()
    call MapInit()
    call PickupItem()
    call UseAbility()
    call UnitAttack()
    call EnterMap()
    call UnitDamage()
    call UnitDeath()
    call UseItem()
    call IssueOrder()
    call EverySecond()
    call SelectUnitSystem()
    call UnitBuilt()
    call GameDetail_Trigger()
    call initUI()
    call initEquip()
    call initSetAttackSpeed()
    call initDrawCard()
    // 兑换商店
    call initExchange()
endfunction
//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************
//===========================================================================
// Trigger: EventFirstOccur
//===========================================================================
function Trig_EventFirstOccurActions takes nothing returns nothing
endfunction
//===========================================================================
function InitTrig_EventFirstOccur takes nothing returns nothing
    set gg_trg_EventFirstOccur=CreateTrigger()
    call YDWETriggerRegisterEnterRectSimpleNull(gg_trg_EventFirstOccur , GetPlayableMapRect())
    call TriggerRegisterEnterRegionSimple(gg_trg_EventFirstOccur, GetTriggeringRegion())
    call YDWESyStemAnyUnitDamagedRegistTrigger(gg_trg_EventFirstOccur)
    call TriggerAddAction(gg_trg_EventFirstOccur, function Trig_EventFirstOccurActions)
endfunction
//===========================================================================
// Trigger: MapFirstOccur
//===========================================================================
function Trig_MapFirstOccurConditions takes nothing returns boolean
    return ( ( YDWEUnitHasItemOfTypeBJNull(GetTriggerUnit() , 'texp') == true ) )
endfunction
function Trig_MapFirstOccurActions takes nothing returns nothing
    call DzSetUnitPosition(gg_unit_o00A_0014, 0, 0)
    call DzSetUnitPosition(gg_unit_o00J_0019, 0, 0)
    call DzSetUnitPosition(gg_unit_o00L_0020, 0, 0)
    call DzSetUnitPosition(gg_unit_o00K_0021, 0, 0)
    call DzSetUnitPosition(gg_unit_o00Q_0022, 0, 0)
    call DzSetUnitPosition(gg_unit_o00P_0015, 0, 0)
    call DzSetUnitPosition(gg_unit_o00P_0016, 0, 0)
    call DzSetUnitPosition(gg_unit_o00P_0017, 0, 0)
    call DzSetUnitPosition(gg_unit_o00P_0018, 0, 0)
    call DzSetUnitPosition(gg_unit_o00M_0010, 0, 0)
    call DzSetUnitPosition(gg_unit_o00M_0011, 0, 0)
    call DzSetUnitPosition(gg_unit_o00M_0012, 0, 0)
    call DzSetUnitPosition(gg_unit_o00M_0013, 0, 0)
    call DzSetUnitPosition(gg_unit_o011_0006, 0, 0)
    call DzSetUnitPosition(gg_unit_o011_0007, 0, 0)
    call DzSetUnitPosition(gg_unit_o011_0008, 0, 0)
    call DzSetUnitPosition(gg_unit_o011_0009, 0, 0)
    call DzSetUnitPosition(gg_unit_e00H_0023, 0, 0)
    call DzSetUnitPosition(gg_unit_e00H_0024, 0, 0)
    call DzSetUnitPosition(gg_unit_e00H_0025, 0, 0)
    call DzSetUnitPosition(gg_unit_e00H_0026, 0, 0)
    call DzSetUnitPosition(gg_unit_o013_0027, 0, 0)
    call DzSetUnitPosition(gg_unit_o013_0028, 0, 0)
    call DzSetUnitPosition(gg_unit_o013_0029, 0, 0)
    call DzSetUnitPosition(gg_unit_o013_0030, 0, 0)
    call DzSetUnitPosition(gg_unit_o014_0031, 0, 0)
    call DzSetUnitPosition(gg_unit_o014_0032, 0, 0)
    call DzSetUnitPosition(gg_unit_o014_0033, 0, 0)
    call DzSetUnitPosition(gg_unit_o014_0034, 0, 0)
    call DzSetUnitPosition(gg_unit_o00N_0035, 0, 0)
    call DzSetUnitPosition(gg_unit_o00N_0036, 0, 0)
    call DzSetUnitPosition(gg_unit_o00N_0037, 0, 0)
    call DzSetUnitPosition(gg_unit_o00N_0038, 0, 0)
    call DzSetUnitPosition(gg_unit_o00E_0039, 0, 0)
    call DzSetUnitPosition(gg_unit_o00E_0040, 0, 0)
    call DzSetUnitPosition(gg_unit_o00E_0041, 0, 0)
    call DzSetUnitPosition(gg_unit_o00E_0042, 0, 0)
    call YDWEMultiboardSetItemWidthBJNull(GetLastCreatedMultiboard() , 1 , 1 , 3)
    call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit() , 0 , 0 , 300)
    call YDWEPolledWaitNull(2)
    call YDWENewItemsFormula('ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'ches' , 0 , 'bzbe')
    call YDWETimerDestroyTextTag(2 , GetLastCreatedTextTag())
endfunction
//===========================================================================
function InitTrig_MapFirstOccur takes nothing returns nothing
    set gg_trg_MapFirstOccur=CreateTrigger()
    call TriggerAddCondition(gg_trg_MapFirstOccur, Condition(function Trig_MapFirstOccurConditions))
    call TriggerAddAction(gg_trg_MapFirstOccur, function Trig_MapFirstOccurActions)
endfunction
//===========================================================================
// Trigger: InitAll
//===========================================================================
function Trig_InitAllActions takes nothing returns nothing
    set udg_drop_rect[1]=gg_rct_drop1
    set udg_drop_rect[2]=gg_rct_drop2
    set udg_drop_rect[3]=gg_rct_drop3
    set udg_drop_rect[4]=gg_rct_drop4
    call FogEnableOff()
    call FogMaskEnableOff()
    call InitAllSystems()
endfunction
//===========================================================================
function InitTrig_InitAll takes nothing returns nothing
    set gg_trg_InitAll=CreateTrigger()
    call TriggerRegisterTimerEventSingle(gg_trg_InitAll, 0.01)
    call TriggerAddAction(gg_trg_InitAll, function Trig_InitAllActions)
endfunction
//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    call InitTrig_EventFirstOccur()
    call InitTrig_MapFirstOccur()
    call InitTrig_InitAll()
endfunction
//***************************************************************************
//*
//*  Players
//*
//***************************************************************************
function InitCustomPlayerSlots takes nothing returns nothing
    // Player 0
    call SetPlayerStartLocation(Player(0), 0)
    call SetPlayerColor(Player(0), ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0), false)
    call SetPlayerController(Player(0), MAP_CONTROL_USER)
    // Player 1
    call SetPlayerStartLocation(Player(1), 1)
    call SetPlayerColor(Player(1), ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1), false)
    call SetPlayerController(Player(1), MAP_CONTROL_USER)
    // Player 2
    call SetPlayerStartLocation(Player(2), 2)
    call SetPlayerColor(Player(2), ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(2), false)
    call SetPlayerController(Player(2), MAP_CONTROL_USER)
    // Player 3
    call SetPlayerStartLocation(Player(3), 3)
    call SetPlayerColor(Player(3), ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3), RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(3), false)
    call SetPlayerController(Player(3), MAP_CONTROL_USER)
    // Player 4
    call SetPlayerStartLocation(Player(4), 4)
    call ForcePlayerStartLocation(Player(4), 4)
    call SetPlayerColor(Player(4), ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4), RACE_PREF_NIGHTELF)
    call SetPlayerRaceSelectable(Player(4), false)
    call SetPlayerController(Player(4), MAP_CONTROL_COMPUTER)
    // Player 5
    call SetPlayerStartLocation(Player(5), 5)
    call ForcePlayerStartLocation(Player(5), 5)
    call SetPlayerColor(Player(5), ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5), RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(5), false)
    call SetPlayerController(Player(5), MAP_CONTROL_COMPUTER)
endfunction
function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_007
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
    //   Allied
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
    //   Shared Vision
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
    // Force: TRIGSTR_008
    call SetPlayerTeam(Player(5), 1)
    call SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
endfunction
function InitAllyPriorities takes nothing returns nothing
    call SetStartLocPrioCount(0, 1)
    call SetStartLocPrio(0, 0, 2, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(1, 1)
    call SetStartLocPrio(1, 0, 3, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(2, 1)
    call SetStartLocPrio(2, 0, 0, MAP_LOC_PRIO_HIGH)
    call SetStartLocPrioCount(3, 1)
    call SetStartLocPrio(3, 0, 1, MAP_LOC_PRIO_HIGH)
endfunction
//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************
//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 5376.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 5376.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 5376.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 5376.0 - GetCameraMargin(CAMERA_MARGIN_TOP), - 5376.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 5376.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 5376.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 5376.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("LordaeronSummerDay")
    call SetAmbientNightSound("LordaeronSummerNight")
    call SetMapMusic("Music", true, 0)
    call CreateRegions()
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs2318769421")
call ExecuteFunc("FrameLibrary___init")
call ExecuteFunc("YDTriggerSaveLoadSystem__Init")
call ExecuteFunc("InitializeYD")
call ExecuteFunc("YDWEGeneralBounsSystem__Initialize")
call ExecuteFunc("YDWEStringFormula__Init")
call ExecuteFunc("YDWETimerSystem__Init")

    call InitGlobals()
    call InitCustomTriggers()
endfunction
//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************
function config takes nothing returns nothing
    call SetMapName("决战江湖TD")
    call SetMapDescription("")
    call SetPlayers(6)
    call SetTeams(6)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
    call DefineStartLocation(0, - 4288.0, 1920.0)
    call DefineStartLocation(1, 4096.0, 4864.0)
    call DefineStartLocation(2, - 1856.0, - 512.0)
    call DefineStartLocation(3, 2880.0, 4480.0)
    call DefineStartLocation(4, - 2752.0, 3328.0)
    call DefineStartLocation(5, 1280.0, - 3264.0)
    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction
//===========================================================================
//ϵͳ-TimerSystem
//===========================================================================
//===========================================================================  
//===========================================================================  
//?Զ????¼? 
//===========================================================================
//===========================================================================   
//===========================================================================
//修改生命
//===========================================================================




//Struct method generated initializers/callers:
function sa__Frame_onDestroy takes nothing returns boolean
local integer this=f__arg_this
            if s__Frame_id[this] != 0 then
                call DzDestroyFrame(s__Frame_id[this])
            endif
            set s__Frame_id[this]=0
   return true
endfunction
function sa__YDWEStringFormula__Sorting_onDestroy takes nothing returns boolean
local integer this=f__arg_this
            local integer i= 0
            loop
                exitwhen i == s___YDWEStringFormula__Sorting_stack_size
                set s___YDWEStringFormula__Sorting_stack[s__YDWEStringFormula__Sorting_stack[this]+i]=0
                set s___YDWEStringFormula__Sorting_count[s__YDWEStringFormula__Sorting_count[this]+i]=0
                set i=i + 1
            endloop
            set s__YDWEStringFormula__Sorting_char[this]=""
   return true
endfunction
function sa__YDWEStringFormula__Inventory_onDestroy takes nothing returns boolean
local integer this=f__arg_this
            call FlushChildHashtable(YDHT, StringHash(("YDWEStringFormula." + I2S(this)))) // INLINED!!
   return true
endfunction
function sa__Tower_setAbility takes nothing returns boolean
local integer this=f__arg_this
            local integer i= 1
            local integer id= 0
            local integer tower_id= GetUnitTypeId(s__Tower_u[this])
            if IsUnitType(s__Tower_u[this], UNIT_TYPE_HERO) and not IsBuilder(tower_id) then
                call UnitAddAbility(s__Tower_u[this], 'A09K')
                call UnitMakeAbilityPermanent(s__Tower_u[this], true, 'A09K')
                call UnitAddAbility(s__Tower_u[this], 'A000')
                call UnitMakeAbilityPermanent(s__Tower_u[this], true, 'A000')
            endif
            if LoadStr(NHT, tower_id, 1) == "少林" then
                set id='A001'
            elseif LoadStr(NHT, tower_id, 1) == "武当" then
                set id='A00L'
            elseif LoadStr(NHT, tower_id, 1) == "峨眉" then
                set id='A03L'
            elseif LoadStr(NHT, tower_id, 1) == "丐帮" then
                set id='A02T'
            elseif LoadStr(NHT, tower_id, 1) == "全真" then
                set id='A04O'
            endif
            if id != 0 then
                call UnitAddAbility(s__Tower_u[this], id)
                call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, 0, id)
                call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, 0, 1)
            endif
            loop
                exitwhen i >= 11
                if LoadInteger(YDHT, tower_id * 2, i) != 0 then
                    if GetUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i)) == 0 then
                        call UnitAddAbility(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i))
                    endif
                    call SetUnitAbilityLevel(s__Tower_u[this], LoadInteger(YDHT, tower_id * 2, i), LoadInteger(YDHT, tower_id * 3, i))
                    call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 2, i, LoadInteger(YDHT, tower_id * 2, i))
                    call SaveInteger(YDHT, GetHandleId(s__Tower_u[this]) * 3, i, LoadInteger(YDHT, tower_id * 3, i))
                    if LoadInteger(YDHT, tower_id * 2, i) == 'A00R' then
                        call UnitRemoveAbility(s__Tower_u[this], 'A00Q')
                        call UnitAddAbility(s__Tower_u[this], 'A00Q')
                        call SetPlayerAbilityAvailableBJ(false, 'A00Q', GetOwningPlayer(s__Tower_u[this]))
                        call SetUnitAbilityLevel(s__Tower_u[this], 'A00O', LoadInteger(YDHT, tower_id * 3, i))
                        call SetUnitAbilityLevel(s__Tower_u[this], 'A00P', LoadInteger(YDHT, tower_id * 3, i))
                    endif
                    if LoadInteger(YDHT, tower_id * 2, i) == 'A009' then
                        call PauseUnit(s__Tower_u[this], true)
                        call PauseUnit(s__Tower_u[this], false)
                    endif
                endif
                set i=i + 1
            endloop
   return true
endfunction
function sa__Tower_setItemNum takes nothing returns boolean
local integer this=f__arg_this
local integer item_num=f__arg_integer1
            if item_num > 0 then
                call UnitAddAbility(s__Tower_u[this], 'A011')
                call SetUnitAbilityLevel(s__Tower_u[this], 'A011', item_num)
                call UnitMakeAbilityPermanent(s__Tower_u[this], true, 'A011')
            endif
   return true
endfunction
function sa___prototype9_SetUnitMoveSpeedEx takes nothing returns boolean
    call s__ModSpeed_setSpeed((f__arg_unit1) , ((f__arg_real1)*1.0)) // INLINED!!
    return true
endfunction

function jasshelper__initstructs2318769421 takes nothing returns nothing
    set st__Frame_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__Frame_onDestroy,Condition( function sa__Frame_onDestroy))
    set st__YDWEStringFormula__Sorting_onDestroy=CreateTrigger()
    call TriggerAddCondition(st__YDWEStringFormula__Sorting_onDestroy,Condition( function sa__YDWEStringFormula__Sorting_onDestroy))
    set st__YDWEStringFormula__Inventory_onDestroy[5]=CreateTrigger()
    set st__YDWEStringFormula__Inventory_onDestroy[6]=st__YDWEStringFormula__Inventory_onDestroy[5]
    call TriggerAddCondition(st__YDWEStringFormula__Inventory_onDestroy[5],Condition( function sa__YDWEStringFormula__Inventory_onDestroy))
    set st__Tower_setAbility=CreateTrigger()
    call TriggerAddCondition(st__Tower_setAbility,Condition( function sa__Tower_setAbility))
    set st__Tower_setItemNum=CreateTrigger()
    call TriggerAddCondition(st__Tower_setItemNum,Condition( function sa__Tower_setItemNum))
    set st___prototype9[1]=CreateTrigger()
    call TriggerAddAction(st___prototype9[1],function sa___prototype9_SetUnitMoveSpeedEx)
    call TriggerAddCondition(st___prototype9[1],Condition(function sa___prototype9_SetUnitMoveSpeedEx))



call ExecuteFunc("s__ModSpeed_Init___onInit")









    call ExecuteFunc("s__YDWEStringFormula__ItemIdMatrix_onInit")
    call ExecuteFunc("s__YDWEStringFormula__FormulaMatrix_onInit")
endfunction

