globals
real MaxSpeed___PERIOD=.03125
real MaxSpeed___MAX_SPEED=1400.
real MaxSpeed___MIN_SPEED=500.
hashtable YDHT
hashtable YDLOC
string bj_AllString=".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
unit bj_lastAbilityCastingUnit=null
unit bj_lastAbilityTargetUnit=null
unit bj_lastPoolAbstractedUnit=null
unitpool bj_lastCreatedUnitPool=null
item bj_lastPoolAbstractedItem=null
itempool bj_lastCreatedItemPool=null
attacktype bj_lastSetAttackType=ATTACK_TYPE_NORMAL
damagetype bj_lastSetDamageType=DAMAGE_TYPE_NORMAL
weapontype bj_lastSetWeaponType=WEAPON_TYPE_WHOKNOWS
real yd_MapMaxX=0
real yd_MapMinX=0
real yd_MapMaxY=0
real yd_MapMinY=0
string array YDWEBase__yd_PlayerColor
trigger array YDWEBase__AbilityCastingOverEventQueue
integer array YDWEBase__AbilityCastingOverEventType
integer YDWEBase__AbilityCastingOverEventNumber=0
integer array YDWEGeneralBounsSystem___ABILITY_COUNT
integer array YDWEGeneralBounsSystem___ABILITY_NUM
integer array YDWEGeneralBounsSystem___BonusAbilitys
integer array YDWEGeneralBounsSystem___PowersOf2
integer YDWEGeneralBounsSystem___PRELOAD_DUMMY_UNIT=$68706561
integer array YDWEGeneralBounsSystem___YDWEBONUS_MyChar
boolean YDWEGeneralBounsSystem___PRELOAD_ABILITYS=true
integer YDWEGeneralBounsSystem___BONUS_TYPES=4
integer array YDWEGeneralBounsSystem___MaxBonus
integer array YDWEGeneralBounsSystem___MinBonus
unit array YDWEGeneralBounsSystem___Units
integer YDWEGeneralBounsSystem___UnitCount=0
trigger yd_DamageEventTrigger=null
trigger array YDWETriggerEvent___DamageEventQueue
integer YDWETriggerEvent___DamageEventNumber=0
item bj_lastMovedItemInItemSlot=null
trigger YDWETriggerEvent___MoveItemEventTrigger=null
trigger array YDWETriggerEvent___MoveItemEventQueue
integer YDWETriggerEvent___MoveItemEventNumber=0
region yd_NullTempRegion
item bj_lastCombinedItem=null
trigger array YDWEStringFormula___ItemCombineEventQueue
integer YDWEStringFormula___ItemCombineEventNumber=0
integer YDWEStringFormula___SEGMENT_LENGTH=4
integer YDWEStringFormula___FormulaData=0
rect array udg_route1
rect array udg_route4
rect array udg_route2
rect array udg_route3
integer udg_ShengYuGuaiShu=0
leaderboard udg_jifenpai=null
timer udg_shuabingtimer=null
dialog udg_select_diff=null
button array udg_diff
timer udg_boss_hint=null
integer udg_kill_final_num=0
integer udg_difficulty=0
multiboard udg_multi=null
rect gg_rct_circle=null
rect gg_rct______________001=null
rect gg_rct______________002=null
rect gg_rct______________003=null
rect gg_rct______________004=null
rect gg_rct______________005=null
rect gg_rct______________006=null
rect gg_rct______________007=null
rect gg_rct______________008=null
rect gg_rct______________009=null
rect gg_rct______________010=null
rect gg_rct______________011=null
rect gg_rct______________012=null
rect gg_rct______________013=null
rect gg_rct______________014=null
rect gg_rct______________015=null
rect gg_rct______________016=null
rect gg_rct______________017=null
rect gg_rct______________018=null
rect gg_rct______________019=null
rect gg_rct______________020=null
rect gg_rct______________021=null
rect gg_rct______________022=null
rect gg_rct______________023=null
rect gg_rct______________024=null
rect gg_rct_spawn1=null
rect gg_rct_spawn2=null
rect gg_rct_spawn3=null
rect gg_rct_spawn4=null
trigger gg_trg_SystemWindow=null
trigger gg_trg_MapInit=null
trigger gg_trg_OneSecond=null
trigger gg_trg_ChooseNanDu=null
trigger gg_trg_ChooseNanDu_2=null
trigger gg_trg_PlayerLeave=null
trigger gg_trg_KillFinalBoss=null
trigger gg_trg_Win=null
trigger gg_trg____________________001=null
trigger gg_trg_JiFenPaiUpdate=null
trigger gg_trg____________________002=null
trigger gg_trg_FirstOccur=null
unit gg_unit_o00A_0019=null
unit gg_unit_e00H_0022=null
unit gg_unit_e00H_0023=null
unit gg_unit_e00H_0024=null
unit gg_unit_e00H_0025=null
integer FRAME_ID=-29734415
integer GUI
integer array udg_zdl
integer array udg_point
integer array udg_pointMax
integer MAX_POINT=50
integer array udg_success
integer array udg_tech
string array udg_tech_evaluate
boolean array saveFlag
integer unitnumber_lh=0
integer createdunitnumber_lh=0
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
integer array remake_present
integer array point2gold
integer array point2lumber
integer array middle_gold
integer array middle_lumber
unit array builder
integer OPEN_DOMINATION_NUM=5
sound Ih=null
integer DUMMY_OWNER_KEY=944027
integer array goldHit
integer array lumberHit
real array kungfuCoeff
integer array tower
integer tower_num=0
integer RANGE_DAMAGE_HASH=$F69219
integer DAMAGE_UNIT_KEY=$DDEFF8
integer DAMAGE_KEY=$DDEFF9
integer damageCounter=0
integer array normal_drops
integer array rare_drops
integer array valuable_drops
integer array ancient_drops
integer array epic_drops
integer MAX_NORMAL_DROP=5
integer MAX_RARE_DROP=5
integer MAX_VALUABLE_DROP=6
integer MAX_ANCIENT_DROP=5
integer MAX_EPIC_DROP=5
integer array luck
integer FIRST_WAVE_TIME=20
integer SPAWN_FREQUENCY=2
integer WAVE_TIME=40
integer WAVE_INTERVAL=5
integer BOSS_WAVE_INTERVAL=9
integer BORN_LOC_X=977855
integer BORN_LOC_Y=977854
integer array mob
integer array survive_mob
integer array survive_boss
integer array boss
timer mobTimer
timerdialog mobTimerDialog
timer bossTimer
timerdialog bossTimerDialog
integer wave=0
trigger spawnTrigger
group attackerGroup
integer gameMode=0
region array nodes
rect array nodeRects
integer NODE=65518
integer array middle_gold_flag
integer array middle_lumber_flag
integer array five_star_flag
integer array wisdom_ball_flag
string PROPERTY_GOLD="BGOLD5DAYS"
string PROPERTY_LUMBER="BLUMB5DAYS"
string PROPERTY_WISDOM_BALL="AWISDOM001"
dialog array wugong_practice
button array practice_wugong
integer array low_towers
integer array normal_towers
integer array fine_towers
integer array perfect_towers
integer low_size=1
integer normal_size=1
integer fine_size=1
integer perfect_size=1
integer passed_time=0
integer array shenqi
integer array random_shenqi
integer array juenei
boolean array udg_isTest
integer SHEN_QI_NUM=11
integer open_shenqi=3
boolean array showHint
hashtable NHT=InitHashtable()
integer si__Frame_F=0
integer si__Frame_I=0
integer array si__Frame_V
hashtable s__Frame_HT=InitHashtable()
integer s__Frame_num=0
integer array s__Frame_id
boolean array s__Frame_isShow
boolean array s__Frame_isEnable
timer s__ModSpeed_tm=CreateTimer()
integer s__ModSpeed_instanceMaxCount=0
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
integer si__YDWEStringFormula___Inventory_F=0
integer si__YDWEStringFormula___Inventory_I=0
integer array si__YDWEStringFormula___Inventory_V
integer s__YDWEStringFormula___ItemIdMatrix_Data
integer s__YDWEStringFormula___ItemIdMatrix_Total=1
integer array s__YDWEStringFormula___ItemIdMatrix_itemId
string array s__YDWEStringFormula___ItemIdMatrix_keyStr
integer array s__YDWEStringFormula___ItemIdMatrix_keyLen
integer s__YDWEStringFormula___FormulaMatrix_Data
integer s__YDWEStringFormula___FormulaMatrix_Total=1
string array s__YDWEStringFormula___FormulaMatrix_formula
integer array s__YDWEStringFormula___FormulaMatrix_segmLen
string array s__YDWEStringFormula___FormulaMatrix_model
string array s__YDWEStringFormula___FormulaMatrix_message
integer array s__YDWEStringFormula___FormulaMatrix_chance
boolean array s__YDWEStringFormula___FormulaMatrix_delete
integer si__YDWEStringFormula___Sorting_F=0
integer si__YDWEStringFormula___Sorting_I=0
integer array si__YDWEStringFormula___Sorting_V
integer array s___YDWEStringFormula___Sorting_stack
integer s___YDWEStringFormula___Sorting_stack_size=8
integer array s__YDWEStringFormula___Sorting_stack
integer array s___YDWEStringFormula___Sorting_count
integer array s__YDWEStringFormula___Sorting_count
integer array s__YDWEStringFormula___Sorting_total
string array s__YDWEStringFormula___Sorting_char
integer si__Tower_F=0
integer si__Tower_I=0
integer array si__Tower_V
unit array s__Tower_u
integer array si__YDWEStringFormula___Inventory_type
trigger array st__YDWEStringFormula___Inventory_onDestroy
trigger st__Frame_onDestroy
trigger st__YDWEStringFormula___Sorting_onDestroy
trigger st__Tower_setAbility
trigger st__Tower_setItemNum
trigger array st___prototype25
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
native DzSetMousePos takes integer x,integer y returns nothing
native DzTriggerRegisterMouseEvent takes trigger trig,integer btn,integer status,boolean sync,string func returns nothing
native DzTriggerRegisterMouseEventByCode takes trigger trig,integer btn,integer status,boolean sync,code funcHandle returns nothing
native DzTriggerRegisterKeyEvent takes trigger trig,integer key,integer status,boolean sync,string func returns nothing
native DzTriggerRegisterKeyEventByCode takes trigger trig,integer key,integer status,boolean sync,code funcHandle returns nothing
native DzTriggerRegisterMouseWheelEvent takes trigger trig,boolean sync,string func returns nothing
native DzTriggerRegisterMouseWheelEventByCode takes trigger trig,boolean sync,code funcHandle returns nothing
native DzTriggerRegisterMouseMoveEvent takes trigger trig,boolean sync,string func returns nothing
native DzTriggerRegisterMouseMoveEventByCode takes trigger trig,boolean sync,code funcHandle returns nothing
native DzGetTriggerKey takes nothing returns integer
native DzGetWheelDelta takes nothing returns integer
native DzIsKeyDown takes integer iKey returns boolean
native DzGetTriggerKeyPlayer takes nothing returns player
native DzGetWindowWidth takes nothing returns integer
native DzGetWindowHeight takes nothing returns integer
native DzGetWindowX takes nothing returns integer
native DzGetWindowY takes nothing returns integer
native DzTriggerRegisterWindowResizeEvent takes trigger trig,boolean sync,string func returns nothing
native DzTriggerRegisterWindowResizeEventByCode takes trigger trig,boolean sync,code funcHandle returns nothing
native DzIsWindowActive takes nothing returns boolean
native DzDestructablePosition takes destructable d,real x,real y returns nothing
native DzSetUnitPosition takes unit whichUnit,real x,real y returns nothing
native DzExecuteFunc takes string funcName returns nothing
native DzGetUnitUnderMouse takes nothing returns unit
native DzSetUnitTexture takes unit whichUnit,string path,integer texId returns nothing
native DzSetMemory takes integer address,real value returns nothing
native DzSetUnitID takes unit whichUnit,integer id returns nothing
native DzSetUnitModel takes unit whichUnit,string path returns nothing
native DzSetWar3MapMap takes string map returns nothing
native DzGetLocale takes nothing returns string
native DzGetUnitNeededXP takes unit whichUnit,integer level returns integer
native DzTriggerRegisterSyncData takes trigger trig,string prefix,boolean server returns nothing
native DzSyncData takes string prefix,string data returns nothing
native DzGetTriggerSyncData takes nothing returns string
native DzGetTriggerSyncPlayer takes nothing returns player
native DzFrameHideInterface takes nothing returns nothing
native DzFrameEditBlackBorders takes real upperHeight,real bottomHeight returns nothing
native DzFrameGetPortrait takes nothing returns integer
native DzFrameGetMinimap takes nothing returns integer
native DzFrameGetCommandBarButton takes integer row,integer column returns integer
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
native DzGetColor takes integer r,integer g,integer b,integer a returns integer
native DzFrameSetUpdateCallback takes string func returns nothing
native DzFrameSetUpdateCallbackByCode takes code funcHandle returns nothing
native DzFrameShow takes integer frame,boolean enable returns nothing
native DzCreateFrame takes string frame,integer parent,integer id returns integer
native DzCreateSimpleFrame takes string frame,integer parent,integer id returns integer
native DzDestroyFrame takes integer frame returns nothing
native DzLoadToc takes string fileName returns nothing
native DzFrameSetPoint takes integer frame,integer point,integer relativeFrame,integer relativePoint,real x,real y returns nothing
native DzFrameSetAbsolutePoint takes integer frame,integer point,real x,real y returns nothing
native DzFrameClearAllPoints takes integer frame returns nothing
native DzFrameSetEnable takes integer name,boolean enable returns nothing
native DzFrameSetScript takes integer frame,integer eventId,string func,boolean sync returns nothing
native DzFrameSetScriptByCode takes integer frame,integer eventId,code funcHandle,boolean sync returns nothing
native DzGetTriggerUIEventPlayer takes nothing returns player
native DzGetTriggerUIEventFrame takes nothing returns integer
native DzFrameFindByName takes string name,integer id returns integer
native DzSimpleFrameFindByName takes string name,integer id returns integer
native DzSimpleFontStringFindByName takes string name,integer id returns integer
native DzSimpleTextureFindByName takes string name,integer id returns integer
native DzGetGameUI takes nothing returns integer
native DzClickFrame takes integer frame returns nothing
native DzSetCustomFovFix takes real value returns nothing
native DzEnableWideScreen takes boolean enable returns nothing
native DzFrameSetText takes integer frame,string text returns nothing
native DzFrameGetText takes integer frame returns string
native DzFrameSetTextSizeLimit takes integer frame,integer size returns nothing
native DzFrameGetTextSizeLimit takes integer frame returns integer
native DzFrameSetTextColor takes integer frame,integer color returns nothing
native DzGetMouseFocus takes nothing returns integer
native DzFrameSetAllPoints takes integer frame,integer relativeFrame returns boolean
native DzFrameSetFocus takes integer frame,boolean enable returns boolean
native DzFrameSetModel takes integer frame,string modelFile,integer modelType,integer flag returns nothing
native DzFrameGetEnable takes integer frame returns boolean
native DzFrameSetAlpha takes integer frame,integer alpha returns nothing
native DzFrameGetAlpha takes integer frame returns integer
native DzFrameSetAnimate takes integer frame,integer animId,boolean autocast returns nothing
native DzFrameSetAnimateOffset takes integer frame,real offset returns nothing
native DzFrameSetTexture takes integer frame,string texture,integer flag returns nothing
native DzFrameSetScale takes integer frame,real scale returns nothing
native DzFrameSetTooltip takes integer frame,integer tooltip returns nothing
native DzFrameCageMouse takes integer frame,boolean enable returns nothing
native DzFrameGetValue takes integer frame returns real
native DzFrameSetMinMaxValue takes integer frame,real minValue,real maxValue returns nothing
native DzFrameSetStepValue takes integer frame,real step returns nothing
native DzFrameSetValue takes integer frame,real value returns nothing
native DzFrameSetSize takes integer frame,real w,real h returns nothing
native DzCreateFrameByTagName takes string frameType,string name,integer parent,string template,integer id returns integer
native DzFrameSetVertexColor takes integer frame,integer color returns nothing
native DzOriginalUIAutoResetPoint takes boolean enable returns nothing
native DzFrameSetPriority takes integer frame,integer priority returns nothing
native DzFrameSetParent takes integer frame,integer parent returns nothing
native DzFrameGetHeight takes integer frame returns real
native DzFrameSetFont takes integer frame,string fileName,real height,integer flag returns nothing
native DzFrameGetParent takes integer frame returns integer
native DzFrameSetTextAlignment takes integer frame,integer align returns nothing
native DzFrameGetName takes integer frame returns string
native DzAPI_Map_SaveServerValue takes player whichPlayer,string key,string value returns boolean
native DzAPI_Map_GetServerValue takes player whichPlayer,string key returns string
native DzAPI_Map_Ladder_SetStat takes player whichPlayer,string key,string value returns nothing
native DzAPI_Map_IsRPGLadder takes nothing returns boolean
native DzAPI_Map_GetGameStartTime takes nothing returns integer
native DzAPI_Map_Stat_SetStat takes player whichPlayer,string key,string value returns nothing
native DzAPI_Map_GetMatchType takes nothing returns integer
native DzAPI_Map_Ladder_SetPlayerStat takes player whichPlayer,string key,string value returns nothing
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
native DzAPI_Map_MissionComplete takes player whichPlayer,string key,string value returns nothing
native DzAPI_Map_GetActivityData takes nothing returns string
native DzAPI_Map_GetMapConfig takes string key returns string
native DzAPI_Map_HasMallItem takes player whichPlayer,string key returns boolean
native DzAPI_Map_SavePublicArchive takes player whichPlayer,string key,string value returns boolean
native DzAPI_Map_GetPublicArchive takes player whichPlayer,string key returns string
native DzAPI_Map_UseConsumablesItem takes player whichPlayer,string key returns nothing
native DzAPI_Map_OrpgTrigger takes player whichPlayer,string key returns nothing
native DzAPI_Map_GetServerArchiveDrop takes player whichPlayer,string key returns string
native DzAPI_Map_GetServerArchiveEquip takes player whichPlayer,string key returns integer
native RequestExtraIntegerData takes integer dataType,player whichPlayer,string param1,string param2,boolean param3,integer param4,integer param5,integer param6 returns integer
native RequestExtraBooleanData takes integer dataType,player whichPlayer,string param1,string param2,boolean param3,integer param4,integer param5,integer param6 returns boolean
native RequestExtraStringData takes integer dataType,player whichPlayer,string param1,string param2,boolean param3,integer param4,integer param5,integer param6 returns string
native RequestExtraRealData takes integer dataType,player whichPlayer,string param1,string param2,boolean param3,integer param4,integer param5,integer param6 returns real
native DzAPI_Map_GetPlatformVIP takes player whichPlayer returns integer
function sc__Frame_onDestroy takes integer this returns nothing
if s__Frame_id[this]!=0 then
call DzDestroyFrame(s__Frame_id[this])
endif
set s__Frame_id[this]=0
endfunction
function s__Frame__allocate takes nothing returns integer
local integer this=si__Frame_F
if this!=0 then
set si__Frame_F=si__Frame_V[this]
else
set si__Frame_I=si__Frame_I+1
set this=si__Frame_I
endif
if this>8190 then
return 0
endif
set s__Frame_id[this]=0
set s__Frame_isShow[this]=true
set s__Frame_isEnable[this]=true
set si__Frame_V[this]=-1
return this
endfunction
function sc__Frame_deallocate takes integer this returns nothing
if this==null then
return
elseif si__Frame_V[this]!=-1 then
return
endif
set f__arg_this=this
call TriggerEvaluate(st__Frame_onDestroy)
set si__Frame_V[this]=si__Frame_F
set si__Frame_F=this
endfunction
function sc__Tower_setAbility takes integer this returns nothing
local integer i=0
local integer tower_id=GetUnitTypeId(s__Tower_u[this])
loop
exitwhen i>=11
if LoadInteger(YDHT,tower_id*2,i)!=0 then
if GetUnitAbilityLevel(s__Tower_u[this],LoadInteger(YDHT,tower_id*2,i))==0 then
call UnitAddAbility(s__Tower_u[this],LoadInteger(YDHT,tower_id*2,i))
endif
call SetUnitAbilityLevel(s__Tower_u[this],LoadInteger(YDHT,tower_id*2,i),LoadInteger(YDHT,tower_id*3,i))
call SaveInteger(YDHT,GetHandleId(s__Tower_u[this])*2,i,LoadInteger(YDHT,tower_id*2,i))
call SaveInteger(YDHT,GetHandleId(s__Tower_u[this])*3,i,LoadInteger(YDHT,tower_id*3,i))
if LoadInteger(YDHT,tower_id*2,i)==$41303052 then
call UnitRemoveAbility(s__Tower_u[this],$41303051)
call UnitAddAbility(s__Tower_u[this],$41303051)
call SetPlayerAbilityAvailableBJ(false,$41303051,GetOwningPlayer(s__Tower_u[this]))
call SetUnitAbilityLevel(s__Tower_u[this],$4130304F,LoadInteger(YDHT,tower_id*3,i))
call SetUnitAbilityLevel(s__Tower_u[this],$41303050,LoadInteger(YDHT,tower_id*3,i))
endif
if LoadInteger(YDHT,tower_id*2,i)==$41303039 then
call PauseUnit(s__Tower_u[this],true)
call PauseUnit(s__Tower_u[this],false)
endif
endif
set i=i+1
endloop
endfunction
function sc__Tower_setItemNum takes integer this,integer item_num returns nothing
if item_num>0 then
call UnitAddAbility(s__Tower_u[this],$41303131)
call SetUnitAbilityLevel(s__Tower_u[this],$41303131,item_num)
call UnitMakeAbilityPermanent(s__Tower_u[this],true,$41303131)
endif
endfunction
function s__Tower__allocate takes nothing returns integer
local integer this=si__Tower_F
if this!=0 then
set si__Tower_F=si__Tower_V[this]
else
set si__Tower_I=si__Tower_I+1
set this=si__Tower_I
endif
if this>8190 then
return 0
endif
set s__Tower_u[this]=null
set si__Tower_V[this]=-1
return this
endfunction
function s__Tower_deallocate takes integer this returns nothing
if this==null then
return
elseif si__Tower_V[this]!=-1 then
return
endif
set si__Tower_V[this]=si__Tower_F
set si__Tower_F=this
endfunction
function sc__YDWEStringFormula___Sorting_onDestroy takes integer this returns nothing
local integer i=0
loop
exitwhen i==s___YDWEStringFormula___Sorting_stack_size
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+i]=0
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+i]=0
set i=i+1
endloop
set s__YDWEStringFormula___Sorting_char[this]=""
endfunction
function s__YDWEStringFormula___Sorting__allocate takes nothing returns integer
local integer this=si__YDWEStringFormula___Sorting_F
if this!=0 then
set si__YDWEStringFormula___Sorting_F=si__YDWEStringFormula___Sorting_V[this]
else
set si__YDWEStringFormula___Sorting_I=si__YDWEStringFormula___Sorting_I+1
set this=si__YDWEStringFormula___Sorting_I
endif
if this>1022 then
return 0
endif
set s__YDWEStringFormula___Sorting_stack[this]=(this-1)*8
set s__YDWEStringFormula___Sorting_count[this]=(this-1)*8
set s__YDWEStringFormula___Sorting_total[this]=7
set si__YDWEStringFormula___Sorting_V[this]=-1
return this
endfunction
function sc__YDWEStringFormula___Sorting_deallocate takes integer this returns nothing
if this==null then
return
elseif si__YDWEStringFormula___Sorting_V[this]!=-1 then
return
endif
set f__arg_this=this
call TriggerEvaluate(st__YDWEStringFormula___Sorting_onDestroy)
set si__YDWEStringFormula___Sorting_V[this]=si__YDWEStringFormula___Sorting_F
set si__YDWEStringFormula___Sorting_F=this
endfunction
function sc__YDWEStringFormula___Inventory_onDestroy takes integer this returns nothing
set f__arg_this=this
call TriggerEvaluate(st__YDWEStringFormula___Inventory_onDestroy[3])
endfunction
function s__YDWEStringFormula___Inventory__allocate takes nothing returns integer
local integer this=si__YDWEStringFormula___Inventory_F
if this!=0 then
set si__YDWEStringFormula___Inventory_F=si__YDWEStringFormula___Inventory_V[this]
else
set si__YDWEStringFormula___Inventory_I=si__YDWEStringFormula___Inventory_I+1
set this=si__YDWEStringFormula___Inventory_I
endif
if this>8190 then
return 0
endif
set si__YDWEStringFormula___Inventory_type[this]=3
set si__YDWEStringFormula___Inventory_V[this]=-1
return this
endfunction
function sc__YDWEStringFormula___Inventory_deallocate takes integer this returns nothing
if this==null then
return
elseif si__YDWEStringFormula___Inventory_V[this]!=-1 then
return
endif
set f__arg_this=this
call TriggerEvaluate(st__YDWEStringFormula___Inventory_onDestroy[si__YDWEStringFormula___Inventory_type[this]])
set si__YDWEStringFormula___Inventory_V[this]=si__YDWEStringFormula___Inventory_F
set si__YDWEStringFormula___Inventory_F=this
endfunction
function s__YDWEStringFormula___StringTable__allocate takes nothing returns integer
local integer this=s__YDWEStringFormula___Inventory__allocate()
local integer kthis
if this==0 then
return 0
endif
set si__YDWEStringFormula___Inventory_type[this]=4
set kthis=this
return this
endfunction
function sc___prototype25_execute takes integer i,unit a1,real a2 returns nothing
set f__arg_unit1=a1
set f__arg_real1=a2
call TriggerExecute(st___prototype25[i])
endfunction
function sc___prototype25_evaluate takes integer i,unit a1,real a2 returns nothing
set f__arg_unit1=a1
set f__arg_real1=a2
call TriggerEvaluate(st___prototype25[i])
endfunction
function h__SetUnitMoveSpeed takes unit a0,real a1 returns nothing
call sc___prototype25_evaluate(1,a0,a1)
call SetUnitMoveSpeed(a0,a1)
endfunction
function DzTriggerRegisterMouseEventTrg takes trigger trg,integer status,integer btn returns nothing
if trg==null then
return
endif
call DzTriggerRegisterMouseEvent(trg,btn,status,true,null)
endfunction
function DzTriggerRegisterKeyEventTrg takes trigger trg,integer status,integer btn returns nothing
if trg==null then
return
endif
call DzTriggerRegisterKeyEvent(trg,btn,status,true,null)
endfunction
function DzTriggerRegisterMouseMoveEventTrg takes trigger trg returns nothing
if trg==null then
return
endif
call DzTriggerRegisterMouseMoveEvent(trg,true,null)
endfunction
function DzTriggerRegisterMouseWheelEventTrg takes trigger trg returns nothing
if trg==null then
return
endif
call DzTriggerRegisterMouseWheelEvent(trg,true,null)
endfunction
function DzTriggerRegisterWindowResizeEventTrg takes trigger trg returns nothing
if trg==null then
return
endif
call DzTriggerRegisterWindowResizeEvent(trg,true,null)
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
function DzAPI_Map_IsPlatformVIP takes player whichPlayer returns boolean
return DzAPI_Map_GetPlatformVIP(whichPlayer)>0
endfunction
function DzAPI_Map_Global_GetStoreString takes string key returns string
return RequestExtraStringData(36,GetLocalPlayer(),key,null,false,0,0,0)
endfunction
function DzAPI_Map_Global_StoreString takes string key,string value returns nothing
call RequestExtraStringData(37,GetLocalPlayer(),key,value,false,0,0,0)
endfunction
function DzAPI_Map_Global_ChangeMsg takes trigger trig returns nothing
call DzTriggerRegisterSyncData(trig,"DZGAU",true)
endfunction
function DzAPI_Map_ServerArchive takes player whichPlayer,string key returns string
return RequestExtraStringData(38,whichPlayer,key,null,false,0,0,0)
endfunction
function DzAPI_Map_SaveServerArchive takes player whichPlayer,string key,string value returns nothing
call RequestExtraBooleanData(39,whichPlayer,key,value,false,0,0,0)
endfunction
function DzAPI_Map_IsRPGQuickMatch takes nothing returns boolean
return RequestExtraBooleanData(40,null,null,null,false,0,0,0)
endfunction
function DzAPI_Map_GetMallItemCount takes player whichPlayer,string key returns integer
return RequestExtraIntegerData(41,whichPlayer,key,null,false,0,0,0)
endfunction
function DzAPI_Map_ConsumeMallItem takes player whichPlayer,string key,integer count returns boolean
return RequestExtraBooleanData(42,whichPlayer,key,null,false,count,0,0)
endfunction
function DzAPI_Map_EnablePlatformSettings takes player whichPlayer,integer option,boolean enable returns boolean
return RequestExtraBooleanData(43,whichPlayer,null,null,enable,option,0,0)
endfunction
function DzAPI_Map_IsBuyReforged takes player whichPlayer returns boolean
return RequestExtraBooleanData(44,whichPlayer,null,null,false,0,0,0)
endfunction
function GetPlayerServerValueSuccess takes player whichPlayer returns boolean
if DzAPI_Map_GetServerValueErrorCode(whichPlayer)==0 then
return true
else
return false
endif
endfunction
function DzAPI_Map_StoreIntegerEX takes player whichPlayer,string key,integer value returns nothing
set key="I"+key
call RequestExtraBooleanData(39,whichPlayer,key,I2S(value),false,0,0,0)
set key=null
set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredIntegerEX takes player whichPlayer,string key returns integer
local integer value
set key="I"+key
set value=S2I(RequestExtraStringData(39,whichPlayer,key,null,false,0,0,0))
set key=null
set whichPlayer=null
return value
endfunction
function DzAPI_Map_StoreInteger takes player whichPlayer,string key,integer value returns nothing
set key="I"+key
call DzAPI_Map_SaveServerValue(whichPlayer,key,I2S(value))
set key=null
set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredInteger takes player whichPlayer,string key returns integer
local integer value
set key="I"+key
set value=S2I(DzAPI_Map_GetServerValue(whichPlayer,key))
set key=null
set whichPlayer=null
return value
endfunction
function DzAPI_Map_StoreReal takes player whichPlayer,string key,real value returns nothing
set key="R"+key
call DzAPI_Map_SaveServerValue(whichPlayer,key,R2S(value))
set key=null
set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredReal takes player whichPlayer,string key returns real
local real value
set key="R"+key
set value=S2R(DzAPI_Map_GetServerValue(whichPlayer,key))
set key=null
set whichPlayer=null
return value
endfunction
function DzAPI_Map_StoreBoolean takes player whichPlayer,string key,boolean value returns nothing
set key="B"+key
if value then
call DzAPI_Map_SaveServerValue(whichPlayer,key,"1")
else
call DzAPI_Map_SaveServerValue(whichPlayer,key,"0")
endif
set key=null
set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredBoolean takes player whichPlayer,string key returns boolean
local boolean value
set key="B"+key
set key=DzAPI_Map_GetServerValue(whichPlayer,key)
if key=="1" then
set value=true
else
set value=false
endif
set key=null
set whichPlayer=null
return value
endfunction
function DzAPI_Map_StoreString takes player whichPlayer,string key,string value returns nothing
set key="S"+key
call DzAPI_Map_SaveServerValue(whichPlayer,key,value)
set key=null
set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredString takes player whichPlayer,string key returns string
return DzAPI_Map_GetServerValue(whichPlayer,"S"+key)
endfunction
function DzAPI_Map_StoreStringEX takes player whichPlayer,string key,string value returns nothing
set key="S"+key
call RequestExtraBooleanData(39,whichPlayer,key,value,false,0,0,0)
set key=null
set whichPlayer=null
endfunction
function DzAPI_Map_GetStoredStringEX takes player whichPlayer,string key returns string
return RequestExtraStringData(39,whichPlayer,"S"+key,null,false,0,0,0)
endfunction
function DzAPI_Map_GetStoredUnitType takes player whichPlayer,string key returns integer
local integer value
set key="I"+key
set value=S2I(DzAPI_Map_GetServerValue(whichPlayer,key))
set key=null
set whichPlayer=null
return value
endfunction
function DzAPI_Map_GetStoredAbilityId takes player whichPlayer,string key returns integer
local integer value
set key="I"+key
set value=S2I(DzAPI_Map_GetServerValue(whichPlayer,key))
set key=null
set whichPlayer=null
return value
endfunction
function DzAPI_Map_FlushStoredMission takes player whichPlayer,string key returns nothing
call DzAPI_Map_SaveServerValue(whichPlayer,key,null)
set key=null
set whichPlayer=null
endfunction
function DzAPI_Map_Ladder_SubmitIntegerData takes player whichPlayer,string key,integer value returns nothing
call DzAPI_Map_Ladder_SetStat(whichPlayer,key,I2S(value))
endfunction
function DzAPI_Map_Stat_SubmitUnitIdData takes player whichPlayer,string key,integer value returns nothing
if value==0 then
else
call DzAPI_Map_Ladder_SetStat(whichPlayer,key,I2S(value))
endif
endfunction
function DzAPI_Map_Stat_SubmitUnitData takes player whichPlayer,string key,unit value returns nothing
call DzAPI_Map_Stat_SubmitUnitIdData(whichPlayer,key,GetUnitTypeId(value))
endfunction
function DzAPI_Map_Ladder_SubmitAblityIdData takes player whichPlayer,string key,integer value returns nothing
if value==0 then
else
call DzAPI_Map_Ladder_SetStat(whichPlayer,key,I2S(value))
endif
endfunction
function DzAPI_Map_Ladder_SubmitItemIdData takes player whichPlayer,string key,integer value returns nothing
local string S
if value==0 then
set S="0"
else
set S=I2S(value)
call DzAPI_Map_Ladder_SetStat(whichPlayer,key,S)
endif
set S=null
set whichPlayer=null
endfunction
function DzAPI_Map_Ladder_SubmitItemData takes player whichPlayer,string key,item value returns nothing
call DzAPI_Map_Ladder_SubmitItemIdData(whichPlayer,key,GetItemTypeId(value))
endfunction
function DzAPI_Map_Ladder_SubmitBooleanData takes player whichPlayer,string key,boolean value returns nothing
if value then
call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"1")
else
call DzAPI_Map_Ladder_SetStat(whichPlayer,key,"0")
endif
endfunction
function DzAPI_Map_Ladder_SubmitTitle takes player whichPlayer,string value returns nothing
call DzAPI_Map_Ladder_SetStat(whichPlayer,value,"1")
endfunction
function DzAPI_Map_Ladder_SubmitPlayerRank takes player whichPlayer,integer value returns nothing
call DzAPI_Map_Ladder_SetPlayerStat(whichPlayer,"RankIndex",I2S(value))
endfunction
function DzAPI_Map_Ladder_SubmitPlayerExtraExp takes player whichPlayer,integer value returns nothing
call DzAPI_Map_Ladder_SetStat(whichPlayer,"ExtraExp",I2S(value))
endfunction
function s__Frame_numadd takes integer this returns nothing
set s__Frame_num=s__Frame_num+1
endfunction
function s__Frame_getFrame takes integer id returns integer
local integer f=LoadInteger(s__Frame_HT,FRAME_ID,id)
if f==0 then
set f=s__Frame__allocate()
set s__Frame_id[f]=id
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
endif
return f
endfunction
function s__Frame_new takes string name,integer parent returns integer
local integer f=s__Frame__allocate()
set s__Frame_id[f]=DzCreateFrame(name,s__Frame_id[parent],0)
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
return f
endfunction
function s__Frame_newImage0 takes integer parent returns integer
local integer f=s__Frame__allocate()
call s__Frame_numadd(f)
set s__Frame_id[f]=DzCreateFrameByTagName("BACKDROP","Frame_Image"+I2S(s__Frame_num),s__Frame_id[parent],"ImageTemplate",0)
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
return f
endfunction
function s__Frame_newImage1 takes integer parent,string path,real w,real h returns integer
local integer f=s__Frame__allocate()
call s__Frame_numadd(f)
set s__Frame_id[f]=DzCreateFrameByTagName("BACKDROP","Frame_Image"+I2S(s__Frame_num),s__Frame_id[parent],"ImageTemplate",0)
if path!=null then
call DzFrameSetTexture(s__Frame_id[f],path,0)
endif
call DzFrameSetSize(s__Frame_id[f],w,h)
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
return f
endfunction
function s__Frame_newSprite takes integer parent,string path returns integer
local integer f=s__Frame__allocate()
call s__Frame_numadd(f)
set s__Frame_id[f]=DzCreateFrameByTagName("SPRITE","Frame_Sprite"+I2S(s__Frame_num),s__Frame_id[parent],"sprite",0)
call DzFrameSetModel(s__Frame_id[f],path,0,0)
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
return f
endfunction
function s__Frame_newTips takes integer parent,string path,real w,real h returns integer
local integer f=s__Frame__allocate()
call s__Frame_numadd(f)
set s__Frame_id[f]=DzCreateFrameByTagName("BACKDROP","Frame_Image"+I2S(s__Frame_num),s__Frame_id[parent],path,0)
call DzFrameSetSize(s__Frame_id[f],w,h)
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
return f
endfunction
function s__Frame_newText0 takes integer parent,string ff returns integer
local integer f=s__Frame__allocate()
call s__Frame_numadd(f)
set s__Frame_id[f]=DzCreateFrameByTagName("TEXT","Frame_Text"+I2S(s__Frame_num),s__Frame_id[parent],ff,0)
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
return f
endfunction
function s__Frame_newText1 takes integer parent,string str,string ff returns integer
local integer f=s__Frame__allocate()
call s__Frame_numadd(f)
set s__Frame_id[f]=DzCreateFrameByTagName("TEXT","Frame_Text"+I2S(s__Frame_num),s__Frame_id[parent],ff,0)
call DzFrameSetText(s__Frame_id[f],str)
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
return f
endfunction
function s__Frame_newButton0 takes integer parent returns integer
local integer f=s__Frame__allocate()
call s__Frame_numadd(f)
set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON","Frame_Button"+I2S(s__Frame_num),s__Frame_id[parent],"ButtonTemplate",0)
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
return f
endfunction
function s__Frame_newButton1 takes integer parent,real w,real h returns integer
local integer f=s__Frame__allocate()
call s__Frame_numadd(f)
set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON","Frame_Button"+I2S(s__Frame_num),s__Frame_id[parent],"ButtonTemplate",0)
call DzFrameSetSize(s__Frame_id[f],w,h)
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
return f
endfunction
function s__Frame_newButtonEmpty0 takes integer parent returns integer
local integer f=s__Frame__allocate()
call s__Frame_numadd(f)
set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON","Frame_ButtonEmpty"+I2S(s__Frame_num),s__Frame_id[parent],"ButtonTemplateEmpty",0)
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
return f
endfunction
function s__Frame_newButtonEmpty1 takes integer parent,real w,real h returns integer
local integer f=s__Frame__allocate()
call s__Frame_numadd(f)
set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON","Frame_ButtonEmpty"+I2S(s__Frame_num),s__Frame_id[parent],"ButtonTemplateEmpty",0)
call DzFrameSetSize(s__Frame_id[f],w,h)
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
return f
endfunction
function s__Frame_newCloseButton takes integer parent returns integer
local integer f=s__Frame__allocate()
call s__Frame_numadd(f)
set s__Frame_id[f]=DzCreateFrameByTagName("BUTTON","Frame_ButtonEmpty"+I2S(s__Frame_num),s__Frame_id[parent],"icon1",0)
call SaveInteger(s__Frame_HT,FRAME_ID,s__Frame_id[f],f)
return f
endfunction
function s__Frame_setScale takes integer this,real r returns nothing
call DzFrameSetScale(s__Frame_id[this],r)
endfunction
function s__Frame_setColor takes integer this,integer c returns nothing
call DzFrameSetTextColor(s__Frame_id[this],c)
endfunction
function s__Frame_setSize takes integer this,real w,real h returns nothing
call DzFrameSetSize(s__Frame_id[this],w,h)
endfunction
function s__Frame_setTexture takes integer this,string path returns nothing
call DzFrameSetTexture(s__Frame_id[this],path,0)
endfunction
function s__Frame_setText takes integer this,string str returns nothing
call DzFrameSetText(s__Frame_id[this],str)
endfunction
function s__Frame_setPoint takes integer this,integer a1,integer tar,integer a2,real x,real y returns nothing
call DzFrameSetPoint(s__Frame_id[this],a1,s__Frame_id[tar],a2,x,y)
endfunction
function s__Frame_setColor255 takes integer this,integer r,integer g,integer b returns nothing
call DzFrameSetTextColor(s__Frame_id[this],DzGetColor(255,r,g,b))
endfunction
function s__Frame_setAllPoints takes integer this,integer tar returns nothing
call DzFrameSetAllPoints(s__Frame_id[this],s__Frame_id[tar])
endfunction
function s__Frame_clearAllPoints takes integer this returns nothing
call DzFrameClearAllPoints(s__Frame_id[this])
endfunction
function s__Frame_regEvent takes integer this,integer i,code func returns nothing
call DzFrameSetScriptByCode(s__Frame_id[this],i,func,false)
endfunction
function s__Frame_regWheelEvent takes integer this,code func returns nothing
call DzFrameSetScriptByCode(s__Frame_id[this],6,func,false)
endfunction
function s__Frame_regClickEvent takes integer this,code func returns nothing
call DzFrameSetScriptByCode(s__Frame_id[this],1,func,false)
endfunction
function s__Frame_hide takes integer this returns nothing
call DzFrameShow(s__Frame_id[this],false)
set s__Frame_isShow[this]=false
endfunction
function s__Frame_show takes integer this returns nothing
call DzFrameShow(s__Frame_id[this],true)
set s__Frame_isShow[this]=true
endfunction
function s__Frame_enable takes integer this returns nothing
call DzFrameSetEnable(s__Frame_id[this],true)
set s__Frame_isEnable[this]=true
endfunction
function s__Frame_disable takes integer this returns nothing
call DzFrameSetEnable(s__Frame_id[this],false)
set s__Frame_isEnable[this]=false
endfunction
function s__Frame_setAlpha takes integer this,integer a returns nothing
call DzFrameSetAlpha(s__Frame_id[this],a)
endfunction
function s__Frame_onDestroy takes integer this returns nothing
if s__Frame_id[this]!=0 then
call DzDestroyFrame(s__Frame_id[this])
endif
set s__Frame_id[this]=0
endfunction
function s__Frame_deallocate takes integer this returns nothing
if this==null then
return
elseif si__Frame_V[this]!=-1 then
return
endif
call s__Frame_onDestroy(this)
set si__Frame_V[this]=si__Frame_F
set si__Frame_F=this
endfunction
function FrameLibrary___init takes nothing returns nothing
local integer f=DzFrameGetTooltip()
set GUI=s__Frame_getFrame(DzGetGameUI())
call DzFrameClearAllPoints(f)
call DzFrameSetPoint(f,7,DzGetGameUI(),7,0,.14)
endfunction
function s__ModSpeed_destroy takes integer this returns nothing
set s__ModSpeed_speed[this]=0.
if s__ModSpeed_next[this]!=0 then
set s__ModSpeed_prev[s__ModSpeed_next[this]]=s__ModSpeed_prev[this]
endif
set s__ModSpeed_next[s__ModSpeed_prev[this]]=s__ModSpeed_next[this]
set s__ModSpeed_prev[this]=s__ModSpeed_prev[0]
set s__ModSpeed_prev[0]=this
if s__ModSpeed_next[0]==0 then
call PauseTimer(s__ModSpeed_tm)
endif
endfunction
function s__ModSpeed__get_moveFilter takes integer this returns boolean
return GetUnitAbilityLevel(s__ModSpeed_u[this],$4253544E)<1 and GetUnitAbilityLevel(s__ModSpeed_u[this],$42505345)<1 and GetUnitMoveSpeed(s__ModSpeed_u[this])>521. and not IsUnitPaused(s__ModSpeed_u[this]) and not s__ModSpeed_lead[this]
endfunction
function s__ModSpeed_move takes integer this returns nothing
if not s__ModSpeed__get_moveFilter(this) then
return
endif
set s__ModSpeed_x=GetUnitX(s__ModSpeed_u[this])
set s__ModSpeed_y=GetUnitY(s__ModSpeed_u[this])
set s__ModSpeed_dx=s__ModSpeed_x-s__ModSpeed_lastX[this]
set s__ModSpeed_dy=s__ModSpeed_y-s__ModSpeed_lastY[this]
set s__ModSpeed_lastX[this]=s__ModSpeed_x
set s__ModSpeed_lastY[this]=s__ModSpeed_y
set s__ModSpeed_dist=SquareRoot(s__ModSpeed_dx*s__ModSpeed_dx+s__ModSpeed_dy*s__ModSpeed_dy)/MaxSpeed___PERIOD
if s__ModSpeed_dist>=MaxSpeed___MIN_SPEED and s__ModSpeed_dist<=MaxSpeed___MAX_SPEED then
set s__ModSpeed_rate=(s__ModSpeed_speed[this]-522.)/s__ModSpeed_dist
set s__ModSpeed_lastX[this]=s__ModSpeed_x+s__ModSpeed_dx*s__ModSpeed_rate
set s__ModSpeed_lastY[this]=s__ModSpeed_y+s__ModSpeed_dy*s__ModSpeed_rate
call SetUnitX(s__ModSpeed_u[this],s__ModSpeed_lastX[this])
call SetUnitY(s__ModSpeed_u[this],s__ModSpeed_lastY[this])
endif
endfunction
function s__ModSpeed_iterate takes nothing returns nothing
local integer this=0
loop
set this=s__ModSpeed_next[this]
exitwhen this==0
if GetWidgetLife(s__ModSpeed_u[this])<.405 then
call s__ModSpeed_destroy(this)
else
call s__ModSpeed_move(this)
endif
endloop
endfunction
function s__ModSpeed_getInstance takes unit u returns integer
local integer this=0
loop
set this=s__ModSpeed_next[this]
exitwhen this==0
if s__ModSpeed_u[this]==u then
return this
endif
endloop
return 0
endfunction
function s__ModSpeed_setUnitLed takes unit u,boolean b returns nothing
local integer this=s__ModSpeed_getInstance(u)
if this>0 then
set s__ModSpeed_lead[this]=b
endif
endfunction
function s__ModSpeed_getSpeed takes unit u returns real
local integer this=s__ModSpeed_getInstance(u)
if this>0 and GetUnitMoveSpeed(u)>521. then
return s__ModSpeed_speed[this]
endif
return GetUnitMoveSpeed(u)
endfunction
function s__ModSpeed_setSpeed takes unit u,real amount returns nothing
local integer this
if u==null or GetWidgetLife(u)<.405 then
return
endif
set this=s__ModSpeed_getInstance(u)
if amount<523. then
if this>0 then
call s__ModSpeed_destroy(this)
endif
return
elseif this==0 then
if s__ModSpeed_prev[0]==0 then
set s__ModSpeed_instanceMaxCount=s__ModSpeed_instanceMaxCount+1
set this=s__ModSpeed_instanceMaxCount
else
set this=s__ModSpeed_prev[0]
set s__ModSpeed_prev[0]=s__ModSpeed_prev[s__ModSpeed_prev[0]]
endif
if s__ModSpeed_next[0]==0 then
call TimerStart(s__ModSpeed_tm,MaxSpeed___PERIOD,true,function s__ModSpeed_iterate)
else
set s__ModSpeed_prev[s__ModSpeed_next[0]]=this
endif
set s__ModSpeed_next[this]=s__ModSpeed_next[0]
set s__ModSpeed_next[0]=this
set s__ModSpeed_prev[this]=0
set s__ModSpeed_u[this]=u
endif
set amount=RMinBJ(amount,MaxSpeed___MAX_SPEED)
set s__ModSpeed_lastX[this]=GetUnitX(u)
set s__ModSpeed_lastY[this]=GetUnitY(u)
set s__ModSpeed_speed[this]=amount
endfunction
function SetUnitLed takes unit u,boolean b returns nothing
call s__ModSpeed_setUnitLed(u,b)
endfunction
function GetUnitMoveSpeedEx takes unit u returns real
return s__ModSpeed_getSpeed(u)
endfunction
function SetUnitMoveSpeedEx takes unit u,real speed returns nothing
call s__ModSpeed_setSpeed(u,speed)
endfunction
function YDTriggerSaveLoadSystem___Init takes nothing returns nothing
set YDHT=InitHashtable()
set YDLOC=InitHashtable()
endfunction
function YDWEH2I takes handle h returns integer
return GetHandleId(h)
endfunction
function YDWEFlushAllData takes nothing returns nothing
call FlushParentHashtable(YDHT)
endfunction
function YDWEFlushMissionByInteger takes integer i returns nothing
call FlushChildHashtable(YDHT,i)
endfunction
function YDWEFlushMissionByString takes string s returns nothing
call FlushChildHashtable(YDHT,StringHash(s))
endfunction
function YDWEFlushStoredIntegerByInteger takes integer i,integer j returns nothing
call RemoveSavedInteger(YDHT,i,j)
endfunction
function YDWEFlushStoredIntegerByString takes string s1,string s2 returns nothing
call RemoveSavedInteger(YDHT,StringHash(s1),StringHash(s2))
endfunction
function YDWEHaveSavedIntegerByInteger takes integer i,integer j returns boolean
return HaveSavedInteger(YDHT,i,j)
endfunction
function YDWEHaveSavedIntegerByString takes string s1,string s2 returns boolean
return HaveSavedInteger(YDHT,StringHash(s1),StringHash(s2))
endfunction
function YDWESaveIntegerByInteger takes integer pTable,integer pKey,integer i returns nothing
call SaveInteger(YDHT,pTable,pKey,i)
endfunction
function YDWESaveIntegerByString takes string pTable,string pKey,integer i returns nothing
call SaveInteger(YDHT,StringHash(pTable),StringHash(pKey),i)
endfunction
function YDWEGetIntegerByInteger takes integer pTable,integer pKey returns integer
return LoadInteger(YDHT,pTable,pKey)
endfunction
function YDWEGetIntegerByString takes string pTable,string pKey returns integer
return LoadInteger(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveRealByInteger takes integer pTable,integer pKey,real r returns nothing
call SaveReal(YDHT,pTable,pKey,r)
endfunction
function YDWESaveRealByString takes string pTable,string pKey,real r returns nothing
call SaveReal(YDHT,StringHash(pTable),StringHash(pKey),r)
endfunction
function YDWEGetRealByInteger takes integer pTable,integer pKey returns real
return LoadReal(YDHT,pTable,pKey)
endfunction
function YDWEGetRealByString takes string pTable,string pKey returns real
return LoadReal(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveStringByInteger takes integer pTable,integer pKey,string s returns nothing
call SaveStr(YDHT,pTable,pKey,s)
endfunction
function YDWESaveStringByString takes string pTable,string pKey,string s returns nothing
call SaveStr(YDHT,StringHash(pTable),StringHash(pKey),s)
endfunction
function YDWEGetStringByInteger takes integer pTable,integer pKey returns string
return LoadStr(YDHT,pTable,pKey)
endfunction
function YDWEGetStringByString takes string pTable,string pKey returns string
return LoadStr(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveBooleanByInteger takes integer pTable,integer pKey,boolean b returns nothing
call SaveBoolean(YDHT,pTable,pKey,b)
endfunction
function YDWESaveBooleanByString takes string pTable,string pKey,boolean b returns nothing
call SaveBoolean(YDHT,StringHash(pTable),StringHash(pKey),b)
endfunction
function YDWEGetBooleanByInteger takes integer pTable,integer pKey returns boolean
return LoadBoolean(YDHT,pTable,pKey)
endfunction
function YDWEGetBooleanByString takes string pTable,string pKey returns boolean
return LoadBoolean(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveUnitByInteger takes integer pTable,integer pKey,unit u returns nothing
call SaveUnitHandle(YDHT,pTable,pKey,u)
endfunction
function YDWESaveUnitByString takes string pTable,string pKey,unit u returns nothing
call SaveUnitHandle(YDHT,StringHash(pTable),StringHash(pKey),u)
endfunction
function YDWEGetUnitByInteger takes integer pTable,integer pKey returns unit
return LoadUnitHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetUnitByString takes string pTable,string pKey returns unit
return LoadUnitHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveUnitIDByInteger takes integer pTable,integer pKey,integer uid returns nothing
call SaveInteger(YDHT,pTable,pKey,uid)
endfunction
function YDWESaveUnitIDByString takes string pTable,string pKey,integer uid returns nothing
call SaveInteger(YDHT,StringHash(pTable),StringHash(pKey),uid)
endfunction
function YDWEGetUnitIDByInteger takes integer pTable,integer pKey returns integer
return LoadInteger(YDHT,pTable,pKey)
endfunction
function YDWEGetUnitIDByString takes string pTable,string pKey returns integer
return LoadInteger(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveAbilityIDByInteger takes integer pTable,integer pKey,integer abid returns nothing
call SaveInteger(YDHT,pTable,pKey,abid)
endfunction
function YDWESaveAbilityIDByString takes string pTable,string pKey,integer abid returns nothing
call SaveInteger(YDHT,StringHash(pTable),StringHash(pKey),abid)
endfunction
function YDWEGetAbilityIDByInteger takes integer pTable,integer pKey returns integer
return LoadInteger(YDHT,pTable,pKey)
endfunction
function YDWEGetAbilityIDByString takes string pTable,string pKey returns integer
return LoadInteger(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESavePlayerByInteger takes integer pTable,integer pKey,player p returns nothing
call SavePlayerHandle(YDHT,pTable,pKey,p)
endfunction
function YDWESavePlayerByString takes string pTable,string pKey,player p returns nothing
call SavePlayerHandle(YDHT,StringHash(pTable),StringHash(pKey),p)
endfunction
function YDWEGetPlayerByInteger takes integer pTable,integer pKey returns player
return LoadPlayerHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetPlayerByString takes string pTable,string pKey returns player
return LoadPlayerHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveItemByInteger takes integer pTable,integer pKey,item it returns nothing
call SaveItemHandle(YDHT,pTable,pKey,it)
endfunction
function YDWESaveItemByString takes string pTable,string pKey,item it returns nothing
call SaveItemHandle(YDHT,StringHash(pTable),StringHash(pKey),it)
endfunction
function YDWEGetItemByInteger takes integer pTable,integer pKey returns item
return LoadItemHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetItemByString takes string pTable,string pKey returns item
return LoadItemHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveItemIDByInteger takes integer pTable,integer pKey,integer itid returns nothing
call SaveInteger(YDHT,pTable,pKey,itid)
endfunction
function YDWESaveItemIDByString takes string pTable,string pKey,integer itid returns nothing
call SaveInteger(YDHT,StringHash(pTable),StringHash(pKey),itid)
endfunction
function YDWEGetItemIDByInteger takes integer pTable,integer pKey returns integer
return LoadInteger(YDHT,pTable,pKey)
endfunction
function YDWEGetItemIDByString takes string pTable,string pKey returns integer
return LoadInteger(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveTimerByInteger takes integer pTable,integer pKey,timer t returns nothing
call SaveTimerHandle(YDHT,pTable,pKey,t)
endfunction
function YDWESaveTimerByString takes string pTable,string pKey,timer t returns nothing
call SaveTimerHandle(YDHT,StringHash(pTable),StringHash(pKey),t)
endfunction
function YDWEGetTimerByInteger takes integer pTable,integer pKey returns timer
return LoadTimerHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetTimerByString takes string pTable,string pKey returns timer
return LoadTimerHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveTriggerByInteger takes integer pTable,integer pKey,trigger trg returns nothing
call SaveTriggerHandle(YDHT,pTable,pKey,trg)
endfunction
function YDWESaveTriggerByString takes string pTable,string pKey,trigger trg returns nothing
call SaveTriggerHandle(YDHT,StringHash(pTable),StringHash(pKey),trg)
endfunction
function YDWEGetTriggerByInteger takes integer pTable,integer pKey returns trigger
return LoadTriggerHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetTriggerByString takes string pTable,string pKey returns trigger
return LoadTriggerHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveLocationByInteger takes integer pTable,integer pKey,location pt returns nothing
call SaveLocationHandle(YDHT,pTable,pKey,pt)
endfunction
function YDWESaveLocationByString takes string pTable,string pKey,location pt returns nothing
call SaveLocationHandle(YDHT,StringHash(pTable),StringHash(pKey),pt)
endfunction
function YDWEGetLocationByInteger takes integer pTable,integer pKey returns location
return LoadLocationHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetLocationByString takes string pTable,string pKey returns location
return LoadLocationHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveGroupByInteger takes integer pTable,integer pKey,group g returns nothing
call SaveGroupHandle(YDHT,pTable,pKey,g)
endfunction
function YDWESaveGroupByString takes string pTable,string pKey,group g returns nothing
call SaveGroupHandle(YDHT,StringHash(pTable),StringHash(pKey),g)
endfunction
function YDWEGetGroupByInteger takes integer pTable,integer pKey returns group
return LoadGroupHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetGroupByString takes string pTable,string pKey returns group
return LoadGroupHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveMultiboardByInteger takes integer pTable,integer pKey,multiboard m returns nothing
call SaveMultiboardHandle(YDHT,pTable,pKey,m)
endfunction
function YDWESaveMultiboardByString takes string pTable,string pKey,multiboard m returns nothing
call SaveMultiboardHandle(YDHT,StringHash(pTable),StringHash(pKey),m)
endfunction
function YDWEGetMultiboardByInteger takes integer pTable,integer pKey returns multiboard
return LoadMultiboardHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetMultiboardByString takes string pTable,string pKey returns multiboard
return LoadMultiboardHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveMultiboardItemByInteger takes integer pTable,integer pKey,multiboarditem mt returns nothing
call SaveMultiboardItemHandle(YDHT,pTable,pKey,mt)
endfunction
function YDWESaveMultiboardItemByString takes string pTable,string pKey,multiboarditem mt returns nothing
call SaveMultiboardItemHandle(YDHT,StringHash(pTable),StringHash(pKey),mt)
endfunction
function YDWEGetMultiboardItemByInteger takes integer pTable,integer pKey returns multiboarditem
return LoadMultiboardItemHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetMultiboardItemByString takes string pTable,string pKey returns multiboarditem
return LoadMultiboardItemHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveTextTagByInteger takes integer pTable,integer pKey,texttag tt returns nothing
call SaveTextTagHandle(YDHT,pTable,pKey,tt)
endfunction
function YDWESaveTextTagByString takes string pTable,string pKey,texttag tt returns nothing
call SaveTextTagHandle(YDHT,StringHash(pTable),StringHash(pKey),tt)
endfunction
function YDWEGetTextTagByInteger takes integer pTable,integer pKey returns texttag
return LoadTextTagHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetTextTagByString takes string pTable,string pKey returns texttag
return LoadTextTagHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveLightningByInteger takes integer pTable,integer pKey,lightning ln returns nothing
call SaveLightningHandle(YDHT,pTable,pKey,ln)
endfunction
function YDWESaveLightningByString takes string pTable,string pKey,lightning ln returns nothing
call SaveLightningHandle(YDHT,StringHash(pTable),StringHash(pKey),ln)
endfunction
function YDWEGetLightningByInteger takes integer pTable,integer pKey returns lightning
return LoadLightningHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetLightningByString takes string pTable,string pKey returns lightning
return LoadLightningHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveRegionByInteger takes integer pTable,integer pKey,region rn returns nothing
call SaveRegionHandle(YDHT,pTable,pKey,rn)
endfunction
function YDWESaveRegionByString takes string pTable,string pKey,region rt returns nothing
call SaveRegionHandle(YDHT,StringHash(pTable),StringHash(pKey),rt)
endfunction
function YDWEGetRegionByInteger takes integer pTable,integer pKey returns region
return LoadRegionHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetRegionByString takes string pTable,string pKey returns region
return LoadRegionHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveRectByInteger takes integer pTable,integer pKey,rect rn returns nothing
call SaveRectHandle(YDHT,pTable,pKey,rn)
endfunction
function YDWESaveRectByString takes string pTable,string pKey,rect rt returns nothing
call SaveRectHandle(YDHT,StringHash(pTable),StringHash(pKey),rt)
endfunction
function YDWEGetRectByInteger takes integer pTable,integer pKey returns rect
return LoadRectHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetRectByString takes string pTable,string pKey returns rect
return LoadRectHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveLeaderboardByInteger takes integer pTable,integer pKey,leaderboard lb returns nothing
call SaveLeaderboardHandle(YDHT,pTable,pKey,lb)
endfunction
function YDWESaveLeaderboardByString takes string pTable,string pKey,leaderboard lb returns nothing
call SaveLeaderboardHandle(YDHT,StringHash(pTable),StringHash(pKey),lb)
endfunction
function YDWEGetLeaderboardByInteger takes integer pTable,integer pKey returns leaderboard
return LoadLeaderboardHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetLeaderboardByString takes string pTable,string pKey returns leaderboard
return LoadLeaderboardHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveEffectByInteger takes integer pTable,integer pKey,effect e returns nothing
call SaveEffectHandle(YDHT,pTable,pKey,e)
endfunction
function YDWESaveEffectByString takes string pTable,string pKey,effect e returns nothing
call SaveEffectHandle(YDHT,StringHash(pTable),StringHash(pKey),e)
endfunction
function YDWEGetEffectByInteger takes integer pTable,integer pKey returns effect
return LoadEffectHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetEffectByString takes string pTable,string pKey returns effect
return LoadEffectHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveDestructableByInteger takes integer pTable,integer pKey,destructable da returns nothing
call SaveDestructableHandle(YDHT,pTable,pKey,da)
endfunction
function YDWESaveDestructableByString takes string pTable,string pKey,destructable da returns nothing
call SaveDestructableHandle(YDHT,StringHash(pTable),StringHash(pKey),da)
endfunction
function YDWEGetDestructableByInteger takes integer pTable,integer pKey returns destructable
return LoadDestructableHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetDestructableByString takes string pTable,string pKey returns destructable
return LoadDestructableHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveTriggerConditionByInteger takes integer pTable,integer pKey,triggercondition tc returns nothing
call SaveTriggerConditionHandle(YDHT,pTable,pKey,tc)
endfunction
function YDWESaveTriggerConditionByString takes string pTable,string pKey,triggercondition tc returns nothing
call SaveTriggerConditionHandle(YDHT,StringHash(pTable),StringHash(pKey),tc)
endfunction
function YDWEGetTriggerConditionByInteger takes integer pTable,integer pKey returns triggercondition
return LoadTriggerConditionHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetTriggerConditionByString takes string pTable,string pKey returns triggercondition
return LoadTriggerConditionHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveTriggerActionByInteger takes integer pTable,integer pKey,triggeraction ta returns nothing
call SaveTriggerActionHandle(YDHT,pTable,pKey,ta)
endfunction
function YDWESaveTriggerActionByString takes string pTable,string pKey,triggeraction ta returns nothing
call SaveTriggerActionHandle(YDHT,StringHash(pTable),StringHash(pKey),ta)
endfunction
function YDWEGetTriggerActionByInteger takes integer pTable,integer pKey returns triggeraction
return LoadTriggerActionHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetTriggerActionByString takes string pTable,string pKey returns triggeraction
return LoadTriggerActionHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveTriggerEventByInteger takes integer pTable,integer pKey,event et returns nothing
call SaveTriggerEventHandle(YDHT,pTable,pKey,et)
endfunction
function YDWESaveTriggerEventByString takes string pTable,string pKey,event et returns nothing
call SaveTriggerEventHandle(YDHT,StringHash(pTable),StringHash(pKey),et)
endfunction
function YDWEGetTriggerEventByInteger takes integer pTable,integer pKey returns event
return LoadTriggerEventHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetTriggerEventByString takes string pTable,string pKey returns event
return LoadTriggerEventHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveForceByInteger takes integer pTable,integer pKey,force fc returns nothing
call SaveForceHandle(YDHT,pTable,pKey,fc)
endfunction
function YDWESaveForceByString takes string pTable,string pKey,force fc returns nothing
call SaveForceHandle(YDHT,StringHash(pTable),StringHash(pKey),fc)
endfunction
function YDWEGetForceByInteger takes integer pTable,integer pKey returns force
return LoadForceHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetForceByString takes string pTable,string pKey returns force
return LoadForceHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveBoolexprByInteger takes integer pTable,integer pKey,boolexpr be returns nothing
call SaveBooleanExprHandle(YDHT,pTable,pKey,be)
endfunction
function YDWESaveBoolexprByString takes string pTable,string pKey,boolexpr be returns nothing
call SaveBooleanExprHandle(YDHT,StringHash(pTable),StringHash(pKey),be)
endfunction
function YDWEGetBoolexprByInteger takes integer pTable,integer pKey returns boolexpr
return LoadBooleanExprHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetBoolexprByString takes string pTable,string pKey returns boolexpr
return LoadBooleanExprHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveSoundByInteger takes integer pTable,integer pKey,sound sd returns nothing
call SaveSoundHandle(YDHT,pTable,pKey,sd)
endfunction
function YDWESaveSoundByString takes string pTable,string pKey,sound sd returns nothing
call SaveSoundHandle(YDHT,StringHash(pTable),StringHash(pKey),sd)
endfunction
function YDWEGetSoundByInteger takes integer pTable,integer pKey returns sound
return LoadSoundHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetSoundByString takes string pTable,string pKey returns sound
return LoadSoundHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveTimerDialogByInteger takes integer pTable,integer pKey,timerdialog td returns nothing
call SaveTimerDialogHandle(YDHT,pTable,pKey,td)
endfunction
function YDWESaveTimerDialogByString takes string pTable,string pKey,timerdialog td returns nothing
call SaveTimerDialogHandle(YDHT,StringHash(pTable),StringHash(pKey),td)
endfunction
function YDWEGetTimerDialogByInteger takes integer pTable,integer pKey returns timerdialog
return LoadTimerDialogHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetTimerDialogByString takes string pTable,string pKey returns timerdialog
return LoadTimerDialogHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveTrackableByInteger takes integer pTable,integer pKey,trackable ta returns nothing
call SaveTrackableHandle(YDHT,pTable,pKey,ta)
endfunction
function YDWESaveTrackableByString takes string pTable,string pKey,trackable ta returns nothing
call SaveTrackableHandle(YDHT,StringHash(pTable),StringHash(pKey),ta)
endfunction
function YDWEGetTrackableByInteger takes integer pTable,integer pKey returns trackable
return LoadTrackableHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetTrackableByString takes string pTable,string pKey returns trackable
return LoadTrackableHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveDialogByInteger takes integer pTable,integer pKey,dialog d returns nothing
call SaveDialogHandle(YDHT,pTable,pKey,d)
endfunction
function YDWESaveDialogByString takes string pTable,string pKey,dialog d returns nothing
call SaveDialogHandle(YDHT,StringHash(pTable),StringHash(pKey),d)
endfunction
function YDWEGetDialogByInteger takes integer pTable,integer pKey returns dialog
return LoadDialogHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetDialogByString takes string pTable,string pKey returns dialog
return LoadDialogHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveButtonByInteger takes integer pTable,integer pKey,button bt returns nothing
call SaveButtonHandle(YDHT,pTable,pKey,bt)
endfunction
function YDWESaveButtonByString takes string pTable,string pKey,button bt returns nothing
call SaveButtonHandle(YDHT,StringHash(pTable),StringHash(pKey),bt)
endfunction
function YDWEGetButtonByInteger takes integer pTable,integer pKey returns button
return LoadButtonHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetButtonByString takes string pTable,string pKey returns button
return LoadButtonHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveQuestByInteger takes integer pTable,integer pKey,quest qt returns nothing
call SaveQuestHandle(YDHT,pTable,pKey,qt)
endfunction
function YDWESaveQuestByString takes string pTable,string pKey,quest qt returns nothing
call SaveQuestHandle(YDHT,StringHash(pTable),StringHash(pKey),qt)
endfunction
function YDWEGetQuestByInteger takes integer pTable,integer pKey returns quest
return LoadQuestHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetQuestByString takes string pTable,string pKey returns quest
return LoadQuestHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWESaveQuestItemByInteger takes integer pTable,integer pKey,questitem qi returns nothing
call SaveQuestItemHandle(YDHT,pTable,pKey,qi)
endfunction
function YDWESaveQuestItemByString takes string pTable,string pKey,questitem qi returns nothing
call SaveQuestItemHandle(YDHT,StringHash(pTable),StringHash(pKey),qi)
endfunction
function YDWEGetQuestItemByInteger takes integer pTable,integer pKey returns questitem
return LoadQuestItemHandle(YDHT,pTable,pKey)
endfunction
function YDWEGetQuestItemByString takes string pTable,string pKey returns questitem
return LoadQuestItemHandle(YDHT,StringHash(pTable),StringHash(pKey))
endfunction
function YDWES2I takes string s returns integer
return StringHash(s)
endfunction
function YDWESaveAbilityHandleBJ takes integer AbilityID,integer key,integer missionKey,hashtable table returns nothing
call SaveInteger(table,missionKey,key,AbilityID)
endfunction
function YDWESaveAbilityHandle takes hashtable table,integer parentKey,integer childKey,integer AbilityID returns nothing
call SaveInteger(table,parentKey,childKey,AbilityID)
endfunction
function YDWELoadAbilityHandleBJ takes integer key,integer missionKey,hashtable table returns integer
return LoadInteger(table,missionKey,key)
endfunction
function YDWELoadAbilityHandle takes hashtable table,integer parentKey,integer childKey returns integer
return LoadInteger(table,parentKey,childKey)
endfunction
function YDWECoordinateX takes real x returns real
return RMinBJ(RMaxBJ(x,yd_MapMinX),yd_MapMaxX)
endfunction
function YDWECoordinateY takes real y returns real
return RMinBJ(RMaxBJ(y,yd_MapMinY),yd_MapMaxY)
endfunction
function YDWEDistanceBetweenUnits takes unit a,unit b returns real
return SquareRoot((GetUnitX(a)-GetUnitX(b))*(GetUnitX(a)-GetUnitX(b))+(GetUnitY(a)-GetUnitY(b))*(GetUnitY(a)-GetUnitY(b)))
endfunction
function YDWEAngleBetweenUnits takes unit fromUnit,unit toUnit returns real
return bj_RADTODEG*Atan2(GetUnitY(toUnit)-GetUnitY(fromUnit),GetUnitX(toUnit)-GetUnitX(fromUnit))
endfunction
function YDWEGetRect takes real x,real y,real width,real height returns rect
return Rect(x-width*.5,y-height*.5,x+width*.5,y+height*.5)
endfunction
function YDWEFlyEnable takes unit u returns nothing
call UnitAddAbility(u,$416D7266)
call UnitRemoveAbility(u,$416D7266)
endfunction
function YDWEId2S takes integer value returns string
local string charMap=bj_AllString
local string result=""
local integer remainingValue=value
local integer charValue
local integer byteno
set byteno=0
loop
set charValue=ModuloInteger(remainingValue,256)
set remainingValue=remainingValue/256
set result=SubString(charMap,charValue,charValue+1)+result
set byteno=byteno+1
exitwhen byteno==4
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
exitwhen b>strlength-1
set numx=R2I(Pow(256,strlength-1-b))
set a=1
loop
exitwhen a>255
if SubString(targetstr,b,b+1)==SubString(originstr,a,a+1) then
set result=result+a*numx
set a=256
endif
set a=a+1
endloop
set b=b+1
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
function YDWESyStemAbilityCastingOverTriggerAction takes unit hero,integer index returns nothing
local integer i=0
loop
exitwhen i>=YDWEBase__AbilityCastingOverEventNumber
if YDWEBase__AbilityCastingOverEventType[i]==index then
set bj_lastAbilityCastingUnit=hero
if YDWEBase__AbilityCastingOverEventQueue[i]!=null and TriggerEvaluate(YDWEBase__AbilityCastingOverEventQueue[i]) and IsTriggerEnabled(YDWEBase__AbilityCastingOverEventQueue[i]) then
call TriggerExecute(YDWEBase__AbilityCastingOverEventQueue[i])
endif
endif
set i=i+1
endloop
endfunction
function YDWESyStemAbilityCastingOverRegistTrigger takes trigger trg,integer index returns nothing
set YDWEBase__AbilityCastingOverEventQueue[YDWEBase__AbilityCastingOverEventNumber]=trg
set YDWEBase__AbilityCastingOverEventType[YDWEBase__AbilityCastingOverEventNumber]=index
set YDWEBase__AbilityCastingOverEventNumber=YDWEBase__AbilityCastingOverEventNumber+1
endfunction
function YDWECreateUnitPool takes nothing returns nothing
set bj_lastCreatedUnitPool=CreateUnitPool()
endfunction
function YDWEPlaceRandomUnit takes unitpool up,player p,real x,real y,real face returns nothing
set bj_lastPoolAbstractedUnit=PlaceRandomUnit(up,p,x,y,face)
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
set bj_lastPoolAbstractedItem=PlaceRandomItem(ip,x,y)
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
function YDWEGetPlayerColorString takes player p,string s returns string
return YDWEBase__yd_PlayerColor[GetHandleId(GetPlayerColor(p))]+s+"|r"
endfunction
function YDWEGetUnitItemSoftId takes unit hero,item it returns integer
local integer i=0
loop
exitwhen i>5
if UnitItemInSlot(hero,i)==it then
return i+1
endif
set i=i+1
endloop
return 0
endfunction
function YDWEVersion_Display takes nothing returns boolean
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,30,"|cFF1E90FF当前编辑器版本为： |r|cFF00FF00YDWE 1.31.8.1850")
return false
endfunction
function YDWEVersion_Init takes nothing returns nothing
local trigger t=CreateTrigger()
local integer i=0
loop
exitwhen i==12
call TriggerRegisterPlayerChatEvent(t,Player(i),"YDWE Version",true)
set i=i+1
endloop
call TriggerAddCondition(t,Condition(function YDWEVersion_Display))
set t=null
endfunction
function InitializeYD takes nothing returns nothing
set YDHT=InitHashtable()
set yd_MapMinX=GetCameraBoundMinX()-GetCameraMargin(CAMERA_MARGIN_LEFT)
set yd_MapMinY=GetCameraBoundMinY()-GetCameraMargin(CAMERA_MARGIN_BOTTOM)
set yd_MapMaxX=GetCameraBoundMaxX()+GetCameraMargin(CAMERA_MARGIN_RIGHT)
set yd_MapMaxY=GetCameraBoundMaxY()+GetCameraMargin(CAMERA_MARGIN_TOP)
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
call YDWEVersion_Init()
endfunction
function YDWEGeneralBounsSystem___DisplayAllAbilityId takes nothing returns nothing
local integer aid=0
set aid=$59446C30
set aid=$59446C31
set aid=$59446C32
set aid=$59446C33
set aid=$59446C34
set aid=$59446C35
set aid=$59446C36
set aid=$59446C37
set aid=$59446C38
set aid=$59446C39
set aid=$59446C61
set aid=$59446C62
set aid=$59446C63
set aid=$59446C64
set aid=$59446C65
set aid=$59446C66
set aid=$59446D30
set aid=$59446D31
set aid=$59446D32
set aid=$59446D33
set aid=$59446D34
set aid=$59446D35
set aid=$59446D36
set aid=$59446D37
set aid=$59446D38
set aid=$59446D39
set aid=$59446D61
set aid=$59446D62
set aid=$59446D63
set aid=$59446D64
set aid=$59446D65
set aid=$59446D66
set aid=$59446330
set aid=$59446331
set aid=$59446332
set aid=$59446333
set aid=$59446334
set aid=$59446335
set aid=$59446336
set aid=$59446337
set aid=$59446338
set aid=$59446339
set aid=$59446361
set aid=$59446362
set aid=$59446363
set aid=$59446230
set aid=$59446231
set aid=$59446232
set aid=$59446233
set aid=$59446234
set aid=$59446235
set aid=$59446236
set aid=$59446237
set aid=$59446238
set aid=$59446239
set aid=$59446261
set aid=$59446262
set aid=$59446263
set aid=$59446264
set aid=$59446265
set aid=$59446266
set aid=$59446267
set aid=$59446268
set aid=$59446269
set aid=$5944626A
set aid=$5944626B
set aid=$5944626C
set aid=$5944626D
set aid=$5944626E
endfunction
function YDWEGeneralBounsSystem___UnitClearBonus takes unit u,integer bonusType returns nothing
local integer i=YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType+1]-1
loop
exitwhen i<YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType]
call UnitRemoveAbility(u,YDWEGeneralBounsSystem___BonusAbilitys[i])
set i=i-1
endloop
call SaveInteger(YDHT,StringHash(I2S(GetHandleId(u))),StringHash("bonusType"+I2S(bonusType)),0)
endfunction
function YDWEGeneralBounsSystem___SetUnitMaxState takes unit u,integer bonusType,real value returns boolean
local integer v=R2I(value)
local integer o=0
local unitstate state
local integer i=YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType+1]-2
if value>65535 or value<=0 then
return false
endif
if bonusType==0 then
set state=UNIT_STATE_MAX_LIFE
elseif bonusType==1 then
set state=UNIT_STATE_MAX_MANA
else
return false
endif
set v=v-R2I(GetUnitState(u,state))
call SaveInteger(YDHT,StringHash(I2S(GetHandleId(u))),StringHash("bonusType"+I2S(bonusType)),v)
if v>0 then
set o=3
elseif v<0 then
set o=2
set v=-v
else
return false
endif
loop
exitwhen i<YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType]
if v>=YDWEGeneralBounsSystem___PowersOf2[i] then
call UnitAddAbility(u,YDWEGeneralBounsSystem___BonusAbilitys[i])
call SetUnitAbilityLevel(u,YDWEGeneralBounsSystem___BonusAbilitys[i],o)
call UnitRemoveAbility(u,YDWEGeneralBounsSystem___BonusAbilitys[i])
set v=v-YDWEGeneralBounsSystem___PowersOf2[i]
endif
set i=i-1
endloop
return true
endfunction
function YDWEGeneralBounsSystem___UnitSetBonus takes unit u,integer bonusType,integer ammount returns boolean
local integer i
if ammount==0 then
call YDWEGeneralBounsSystem___UnitClearBonus(u,bonusType)
return false
endif
if ammount<YDWEGeneralBounsSystem___MinBonus[bonusType] or ammount>YDWEGeneralBounsSystem___MaxBonus[bonusType] then
return false
elseif bonusType<0 or bonusType>=YDWEGeneralBounsSystem___BONUS_TYPES then
return false
endif
call SaveInteger(YDHT,StringHash(I2S(GetHandleId(u))),StringHash("bonusType"+I2S(bonusType)),ammount)
if ammount<0 then
set ammount=YDWEGeneralBounsSystem___MaxBonus[bonusType]+ammount+1
call UnitAddAbility(u,YDWEGeneralBounsSystem___BonusAbilitys[YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType+1]-1])
call UnitMakeAbilityPermanent(u,true,YDWEGeneralBounsSystem___BonusAbilitys[YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType+1]-1])
else
call UnitRemoveAbility(u,YDWEGeneralBounsSystem___BonusAbilitys[YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType+1]-1])
endif
set i=YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType+1]-2
loop
exitwhen i<YDWEGeneralBounsSystem___ABILITY_COUNT[bonusType]
if ammount>=YDWEGeneralBounsSystem___PowersOf2[i] then
call UnitAddAbility(u,YDWEGeneralBounsSystem___BonusAbilitys[i])
call UnitMakeAbilityPermanent(u,true,YDWEGeneralBounsSystem___BonusAbilitys[i])
set ammount=ammount-YDWEGeneralBounsSystem___PowersOf2[i]
else
call UnitRemoveAbility(u,YDWEGeneralBounsSystem___BonusAbilitys[i])
endif
set i=i-1
endloop
if not LoadBoolean(YDHT,StringHash(I2S(GetHandleId(u))),StringHash("bonusMark")) then
call SaveBoolean(YDHT,StringHash(I2S(GetHandleId(u))),StringHash("bonusMark"),true)
set YDWEGeneralBounsSystem___UnitCount=YDWEGeneralBounsSystem___UnitCount+1
set YDWEGeneralBounsSystem___Units[YDWEGeneralBounsSystem___UnitCount]=u
endif
return true
endfunction
function YDWEGeneralBounsSystem___UnitGetBonus takes unit u,integer bonusType returns integer
return LoadInteger(YDHT,StringHash(I2S(GetHandleId(u))),StringHash("bonusType"+I2S(bonusType)))
endfunction
function YDWEGeneralBounsSystem___AddUnitMaxState takes unit u,integer bonusType,real value returns boolean
local unitstate state
if bonusType==0 then
set state=UNIT_STATE_MAX_LIFE
elseif bonusType==1 then
set state=UNIT_STATE_MAX_MANA
else
return false
endif
return YDWEGeneralBounsSystem___SetUnitMaxState(u,bonusType,value+GetUnitState(u,state))
endfunction
function YDWEGeneralBounsSystem___UnitAddBonus takes unit u,integer bonusType,integer ammount returns boolean
return YDWEGeneralBounsSystem___UnitSetBonus(u,bonusType,LoadInteger(YDHT,StringHash(I2S(GetHandleId(u))),StringHash("bonusType"+I2S(bonusType)))+ammount)
endfunction
function YDWEGeneralBounsSystem___FlushUnits takes nothing returns nothing
local integer i=YDWEGeneralBounsSystem___UnitCount
local string h
loop
exitwhen i<1
if GetUnitTypeId(YDWEGeneralBounsSystem___Units[i])==0 then
set h=I2S(GetHandleId(YDWEGeneralBounsSystem___Units[i]))
call SaveInteger(YDHT,StringHash(h),StringHash("bonusType0"),0)
call SaveInteger(YDHT,StringHash(h),StringHash("bonusType1"),0)
call SaveInteger(YDHT,StringHash(h),StringHash("bonusType2"),0)
call SaveInteger(YDHT,StringHash(h),StringHash("bonusType3"),0)
call SaveBoolean(YDHT,StringHash(h),StringHash("bonusMark"),false)
set YDWEGeneralBounsSystem___Units[i]=YDWEGeneralBounsSystem___Units[YDWEGeneralBounsSystem___UnitCount]
set YDWEGeneralBounsSystem___Units[YDWEGeneralBounsSystem___UnitCount]=null
set YDWEGeneralBounsSystem___UnitCount=YDWEGeneralBounsSystem___UnitCount-1
endif
set i=i-1
endloop
endfunction
function YDWEUnitSetBonus takes unit u,integer bonusType,integer ammount returns nothing
if bonusType==0 or bonusType==1 then
call YDWEGeneralBounsSystem___SetUnitMaxState(u,bonusType,ammount)
else
call YDWEGeneralBounsSystem___UnitSetBonus(u,bonusType,ammount)
endif
endfunction
function YDWEUnitAddBonus takes unit u,integer bonusType,integer ammount returns nothing
if bonusType==0 or bonusType==1 then
call YDWEGeneralBounsSystem___AddUnitMaxState(u,bonusType,ammount)
else
call YDWEGeneralBounsSystem___UnitAddBonus(u,bonusType,ammount)
endif
endfunction
function YDWEGeneralBounsSystemUnitSetBonus takes unit u,integer bonusType,integer mod,integer ammount returns nothing
if mod==0 then
call YDWEUnitAddBonus(u,bonusType,ammount)
elseif mod==1 then
call YDWEUnitAddBonus(u,bonusType,0-ammount)
else
call YDWEUnitSetBonus(u,bonusType,ammount)
endif
endfunction
function YDWEGeneralBounsSystemUnitGetBonus takes unit u,integer bonusType returns integer
return LoadInteger(YDHT,StringHash(I2S(GetHandleId(u))),StringHash("bonusType"+I2S(bonusType)))
endfunction
function YDWEGeneralBounsSystem___InitializeAbilitys takes nothing returns nothing
local integer i=0
local integer m=0
set YDWEGeneralBounsSystem___ABILITY_COUNT[0]=0
set YDWEGeneralBounsSystem___ABILITY_COUNT[1]=15
set YDWEGeneralBounsSystem___ABILITY_COUNT[2]=30
set YDWEGeneralBounsSystem___ABILITY_COUNT[3]=43
set YDWEGeneralBounsSystem___ABILITY_COUNT[4]=67
set YDWEGeneralBounsSystem___ABILITY_NUM[0]=15
set YDWEGeneralBounsSystem___ABILITY_NUM[1]=15
set YDWEGeneralBounsSystem___ABILITY_NUM[2]=13
set YDWEGeneralBounsSystem___ABILITY_NUM[3]=24
loop
exitwhen i>9
set YDWEGeneralBounsSystem___YDWEBONUS_MyChar[i]=48+m
set m=m+1
set i=i+1
endloop
set m=0
loop
exitwhen i>26
set YDWEGeneralBounsSystem___YDWEBONUS_MyChar[i]=97+m
set m=m+1
set i=i+1
endloop
set i=0
set m=0
loop
exitwhen m>YDWEGeneralBounsSystem___ABILITY_NUM[0]-1
set YDWEGeneralBounsSystem___BonusAbilitys[i]=$59446C30-48+YDWEGeneralBounsSystem___YDWEBONUS_MyChar[m]
set i=i+1
set m=m+1
endloop
set m=0
loop
exitwhen m>YDWEGeneralBounsSystem___ABILITY_NUM[1]-1
set YDWEGeneralBounsSystem___BonusAbilitys[i]=$59446D30-48+YDWEGeneralBounsSystem___YDWEBONUS_MyChar[m]
set i=i+1
set m=m+1
endloop
set m=0
loop
exitwhen m>YDWEGeneralBounsSystem___ABILITY_NUM[2]-1
set YDWEGeneralBounsSystem___BonusAbilitys[i]=$59446330-48+YDWEGeneralBounsSystem___YDWEBONUS_MyChar[m]
set i=i+1
set m=m+1
endloop
set m=0
loop
exitwhen m>YDWEGeneralBounsSystem___ABILITY_NUM[3]-1
set YDWEGeneralBounsSystem___BonusAbilitys[i]=$59446230-48+YDWEGeneralBounsSystem___YDWEBONUS_MyChar[m]
set i=i+1
set m=m+1
endloop
endfunction
function YDWEGeneralBounsSystem___Initialize takes nothing returns nothing
local integer i=1
local unit u
local integer n=0
local integer add=0
call YDWEGeneralBounsSystem___InitializeAbilitys()
loop
set i=1
set YDWEGeneralBounsSystem___PowersOf2[add]=1
loop
set YDWEGeneralBounsSystem___PowersOf2[add+1]=YDWEGeneralBounsSystem___PowersOf2[add]*2
set add=add+1
set i=i+1
exitwhen i==YDWEGeneralBounsSystem___ABILITY_NUM[n]
endloop
set YDWEGeneralBounsSystem___MaxBonus[n]=YDWEGeneralBounsSystem___PowersOf2[add]-1
set YDWEGeneralBounsSystem___MinBonus[n]=-YDWEGeneralBounsSystem___PowersOf2[add]
set add=add+1
set n=n+1
exitwhen n>=4
endloop
if YDWEGeneralBounsSystem___PRELOAD_ABILITYS then
set u=CreateUnit(Player(15),YDWEGeneralBounsSystem___PRELOAD_DUMMY_UNIT,0,0,0)
set i=0
loop
exitwhen i==YDWEGeneralBounsSystem___ABILITY_COUNT[5]
call UnitAddAbility(u,YDWEGeneralBounsSystem___BonusAbilitys[i])
set i=i+1
endloop
call RemoveUnit(u)
set u=null
endif
call TimerStart(CreateTimer(),10,true,function YDWEGeneralBounsSystem___FlushUnits)
endfunction
function YDWELifeChange takes unit u,integer mod,integer ch,integer id returns nothing
local integer a
local integer b
local integer c
local integer d
local integer aid=id
if mod==1 then
set ch=-ch
elseif mod==2 then
set ch=ch-R2I(GetUnitState(u,UNIT_STATE_MAX_LIFE))
endif
if ch>99999 then
set ch=99999
endif
if ch<-99999 then
set ch=-99999
endif
if ch<0 then
set a=2
set ch=-ch
else
set a=7
endif
set b=0
loop
exitwhen b==5
set c=ch-ch/10*10
set d=0
loop
exitwhen d==c
call UnitAddAbility(u,aid)
call SetUnitAbilityLevel(u,aid,a)
call UnitRemoveAbility(u,aid)
set d=d+1
endloop
set ch=ch/10
set a=a+1
set b=b+1
endloop
endfunction
function YDWEManaChange takes unit u,integer mod,integer ch,integer id returns nothing
local integer a
local integer b
local integer c
local integer d
local integer aid=id
if mod==1 then
set ch=-ch
elseif mod==2 then
set ch=ch-R2I(GetUnitState(u,UNIT_STATE_MAX_MANA))
endif
if ch>99999 then
set ch=99999
endif
if ch<-99999 then
set ch=-99999
endif
if ch<0 then
set a=2
set ch=-ch
else
set a=7
endif
set b=0
loop
exitwhen b==5
set c=ch-ch/10*10
set d=0
loop
exitwhen d==c
call UnitAddAbility(u,aid)
call SetUnitAbilityLevel(u,aid,a)
call UnitRemoveAbility(u,aid)
set d=d+1
endloop
set ch=ch/10
set a=a+1
set b=b+1
endloop
endfunction
function YDWEMultiboardSetItemWidthBJNull takes multiboard mb,integer col,integer row,real width returns nothing
local integer curRow=0
local integer curCol=0
local integer numRows=MultiboardGetRowCount(mb)
local integer numCols=MultiboardGetColumnCount(mb)
local multiboarditem mbitem=null
loop
set curRow=curRow+1
exitwhen curRow>numRows
if row==0 or row==curRow then
set curCol=0
loop
set curCol=curCol+1
exitwhen curCol>numCols
if col==0 or col==curCol then
set mbitem=MultiboardGetItem(mb,curRow-1,curCol-1)
call MultiboardSetItemWidth(mbitem,width/100.)
call MultiboardReleaseItem(mbitem)
endif
endloop
endif
endloop
set mbitem=null
endfunction
function YDWEPolledWaitNull takes real duration returns nothing
local timer t
local real timeRemaining
if duration>0 then
set t=CreateTimer()
call TimerStart(t,duration,false,null)
loop
set timeRemaining=TimerGetRemaining(t)
exitwhen timeRemaining<=0
if timeRemaining>bj_POLLED_WAIT_SKIP_THRESHOLD then
call TriggerSleepAction(.1*timeRemaining)
else
call TriggerSleepAction(bj_POLLED_WAIT_INTERVAL)
endif
endloop
call DestroyTimer(t)
endif
set t=null
endfunction
function YDWEAnyUnitDamagedTriggerAction takes nothing returns nothing
local integer i=0
loop
exitwhen i>=YDWETriggerEvent___DamageEventNumber
if YDWETriggerEvent___DamageEventQueue[i]!=null and IsTriggerEnabled(YDWETriggerEvent___DamageEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent___DamageEventQueue[i]) then
call TriggerExecute(YDWETriggerEvent___DamageEventQueue[i])
endif
set i=i+1
endloop
endfunction
function YDWEAnyUnitDamagedFilter takes nothing returns boolean
if GetUnitAbilityLevel(GetFilterUnit(),$416C6F63)<=0 then
call TriggerRegisterUnitEvent(yd_DamageEventTrigger,GetFilterUnit(),EVENT_UNIT_DAMAGED)
endif
return false
endfunction
function YDWEAnyUnitDamagedEnumUnit takes nothing returns nothing
local trigger t=CreateTrigger()
local region r=CreateRegion()
local group g=CreateGroup()
call RegionAddRect(r,GetWorldBounds())
call TriggerRegisterEnterRegion(t,r,Condition(function YDWEAnyUnitDamagedFilter))
call GroupEnumUnitsInRect(g,GetWorldBounds(),Condition(function YDWEAnyUnitDamagedFilter))
call DestroyGroup(g)
set r=null
set t=null
set g=null
endfunction
function YDWESyStemAnyUnitDamagedRegistTrigger takes trigger trg returns nothing
if trg==null then
return
endif
if YDWETriggerEvent___DamageEventNumber==0 then
set yd_DamageEventTrigger=CreateTrigger()
call TriggerAddAction(yd_DamageEventTrigger,function YDWEAnyUnitDamagedTriggerAction)
call YDWEAnyUnitDamagedEnumUnit()
endif
set YDWETriggerEvent___DamageEventQueue[YDWETriggerEvent___DamageEventNumber]=trg
set YDWETriggerEvent___DamageEventNumber=YDWETriggerEvent___DamageEventNumber+1
endfunction
function YDWESyStemItemUnmovableTriggerAction takes nothing returns nothing
local integer i=0
if GetIssuedOrderId()>=852002 and GetIssuedOrderId()<=852007 then
set bj_lastMovedItemInItemSlot=GetOrderTargetItem()
loop
exitwhen i>=YDWETriggerEvent___MoveItemEventNumber
if YDWETriggerEvent___MoveItemEventQueue[i]!=null and IsTriggerEnabled(YDWETriggerEvent___MoveItemEventQueue[i]) and TriggerEvaluate(YDWETriggerEvent___MoveItemEventQueue[i]) then
call TriggerExecute(YDWETriggerEvent___MoveItemEventQueue[i])
endif
set i=i+1
endloop
endif
endfunction
function YDWESyStemItemUnmovableRegistTrigger takes trigger trg returns nothing
if trg==null then
return
endif
if YDWETriggerEvent___MoveItemEventNumber==0 then
set YDWETriggerEvent___MoveItemEventTrigger=CreateTrigger()
call TriggerAddAction(YDWETriggerEvent___MoveItemEventTrigger,function YDWESyStemItemUnmovableTriggerAction)
call TriggerRegisterAnyUnitEventBJ(YDWETriggerEvent___MoveItemEventTrigger,EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
endif
set YDWETriggerEvent___MoveItemEventQueue[YDWETriggerEvent___MoveItemEventNumber]=trg
set YDWETriggerEvent___MoveItemEventNumber=YDWETriggerEvent___MoveItemEventNumber+1
endfunction
function GetLastMovedItemInItemSlot takes nothing returns item
return bj_lastMovedItemInItemSlot
endfunction
function YDWETriggerRegisterEnterRectSimpleNull takes trigger trig,rect r returns event
local region rectRegion=CreateRegion()
call RegionAddRect(rectRegion,r)
set yd_NullTempRegion=rectRegion
set rectRegion=null
return TriggerRegisterEnterRegion(trig,yd_NullTempRegion,null)
endfunction
function YDWEUnitHasItemOfTypeBJNull takes unit whichUnit,integer itemId returns boolean
local integer index=0
if itemId!=0 then
loop
if GetItemTypeId(UnitItemInSlot(whichUnit,index))==itemId then
return true
endif
set index=index+1
exitwhen index>=bj_MAX_INVENTORY
endloop
endif
return false
endfunction
function GetLastCombinedItem takes nothing returns item
return bj_lastCombinedItem
endfunction
function YDWESyStemItemCombineTriggerAction takes nothing returns nothing
local integer i=0
loop
exitwhen i>=YDWEStringFormula___ItemCombineEventNumber
if YDWEStringFormula___ItemCombineEventQueue[i]!=null and TriggerEvaluate(YDWEStringFormula___ItemCombineEventQueue[i]) and IsTriggerEnabled(YDWEStringFormula___ItemCombineEventQueue[i]) then
call TriggerExecute(YDWEStringFormula___ItemCombineEventQueue[i])
endif
set i=i+1
endloop
endfunction
function YDWESyStemItemCombineRegistTrigger takes trigger trg returns nothing
set YDWEStringFormula___ItemCombineEventQueue[YDWEStringFormula___ItemCombineEventNumber]=trg
set YDWEStringFormula___ItemCombineEventNumber=YDWEStringFormula___ItemCombineEventNumber+1
endfunction
function s__YDWEStringFormula___Inventory_reset takes integer this returns nothing
call FlushChildHashtable(YDHT,StringHash("YDWEStringFormula."+I2S(this)))
endfunction
function s__YDWEStringFormula___Inventory_onDestroy takes integer this returns nothing
call FlushChildHashtable(YDHT,StringHash("YDWEStringFormula."+I2S(this)))
endfunction
function s__YDWEStringFormula___StringTable__getindex takes integer this,string key returns integer
return LoadInteger(YDHT,StringHash("YDWEStringFormula."+I2S(this)),StringHash(key))
endfunction
function s__YDWEStringFormula___StringTable__setindex takes integer this,string key,integer value returns nothing
call SaveInteger(YDHT,StringHash("YDWEStringFormula."+I2S(this)),StringHash(key),value)
endfunction
function s__YDWEStringFormula___StringTable_flush takes integer this,string key returns nothing
call RemoveSavedInteger(YDHT,StringHash("YDWEStringFormula."+I2S(this)),StringHash(key))
endfunction
function s__YDWEStringFormula___StringTable_exists takes integer this,string key returns boolean
return HaveSavedInteger(YDHT,StringHash("YDWEStringFormula."+I2S(this)),StringHash(key))
endfunction
function YDWEStringFormula___Convert takes integer value,integer length returns string
local string Char=I2S(value)
local integer slen=StringLength(Char)
loop
exitwhen slen>=length
set Char="0"+Char
set slen=slen+1
endloop
return Char
endfunction
function s__YDWEStringFormula___ItemIdMatrix_get takes integer id returns integer
return LoadInteger(YDHT,StringHash("YDWEStringFormula."+I2S(s__YDWEStringFormula___ItemIdMatrix_Data)),StringHash(I2S(id)))
endfunction
function s__YDWEStringFormula___ItemIdMatrix_exists takes integer id returns boolean
return HaveSavedInteger(YDHT,StringHash("YDWEStringFormula."+I2S(s__YDWEStringFormula___ItemIdMatrix_Data)),StringHash(I2S(id)))
endfunction
function s__YDWEStringFormula___ItemIdMatrix_sub takes integer this,integer segment returns integer
local integer start=s__YDWEStringFormula___ItemIdMatrix_keyLen[this]*segment+1
return S2I(SubString(s__YDWEStringFormula___ItemIdMatrix_keyStr[this],start,start+s__YDWEStringFormula___ItemIdMatrix_keyLen[this]))
endfunction
function s__YDWEStringFormula___ItemIdMatrix_assigns takes integer id returns integer
local integer this=0
if id==null or id==0 then
return 0
endif
set this=LoadInteger(YDHT,StringHash("YDWEStringFormula."+I2S(s__YDWEStringFormula___ItemIdMatrix_Data)),StringHash(I2S(id)))
if this>0 then
return this
endif
set this=s__YDWEStringFormula___ItemIdMatrix_Total
set s__YDWEStringFormula___ItemIdMatrix_itemId[this]=id
set s__YDWEStringFormula___ItemIdMatrix_keyStr[this]=I2S(YDWEStringFormula___SEGMENT_LENGTH)
set s__YDWEStringFormula___ItemIdMatrix_keyLen[this]=YDWEStringFormula___SEGMENT_LENGTH
call SaveInteger(YDHT,StringHash("YDWEStringFormula."+I2S(s__YDWEStringFormula___ItemIdMatrix_Data)),StringHash(I2S(id)),this)
set s__YDWEStringFormula___ItemIdMatrix_Total=s__YDWEStringFormula___ItemIdMatrix_Total+1
return this
endfunction
function s__YDWEStringFormula___ItemIdMatrix_memory takes integer this,string key returns nothing
set s__YDWEStringFormula___ItemIdMatrix_keyStr[this]=s__YDWEStringFormula___ItemIdMatrix_keyStr[this]+key
endfunction
function s__YDWEStringFormula___ItemIdMatrix_onInit takes nothing returns nothing
set s__YDWEStringFormula___ItemIdMatrix_Data=s__YDWEStringFormula___StringTable__allocate()
endfunction
function s__YDWEStringFormula___FormulaMatrix_exists takes string s returns boolean
return HaveSavedInteger(YDHT,StringHash("YDWEStringFormula."+I2S(s__YDWEStringFormula___FormulaMatrix_Data)),StringHash(s))
endfunction
function s__YDWEStringFormula___FormulaMatrix_sub takes integer this,integer segment returns integer
local integer start=s__YDWEStringFormula___FormulaMatrix_segmLen[this]*segment+1
return S2I(SubString(s__YDWEStringFormula___FormulaMatrix_formula[this],start,start+s__YDWEStringFormula___FormulaMatrix_segmLen[this]))
endfunction
function s__YDWEStringFormula___FormulaMatrix_memory takes integer lingth,string formStr,integer eventually returns integer
local integer this=0
if HaveSavedInteger(YDHT,StringHash("YDWEStringFormula."+I2S(s__YDWEStringFormula___FormulaMatrix_Data)),StringHash(formStr)) then
return 0
endif
set this=s__YDWEStringFormula___FormulaMatrix_Total
set s__YDWEStringFormula___FormulaMatrix_formula[this]=formStr+YDWEStringFormula___Convert(eventually,YDWEStringFormula___SEGMENT_LENGTH)
set s__YDWEStringFormula___FormulaMatrix_segmLen[this]=lingth
set s__YDWEStringFormula___FormulaMatrix_model[this]=null
set s__YDWEStringFormula___FormulaMatrix_message[this]=null
set s__YDWEStringFormula___FormulaMatrix_chance[this]=100
set s__YDWEStringFormula___FormulaMatrix_delete[this]=false
call SaveInteger(YDHT,StringHash("YDWEStringFormula."+I2S(s__YDWEStringFormula___FormulaMatrix_Data)),StringHash(formStr),this)
set s__YDWEStringFormula___FormulaMatrix_Total=s__YDWEStringFormula___FormulaMatrix_Total+1
return this
endfunction
function s__YDWEStringFormula___FormulaMatrix_onInit takes nothing returns nothing
set s__YDWEStringFormula___FormulaMatrix_Data=s__YDWEStringFormula___StringTable__allocate()
endfunction
function s__YDWEStringFormula___Sorting_onDestroy takes integer this returns nothing
local integer i=0
loop
exitwhen i==s___YDWEStringFormula___Sorting_stack_size
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+i]=0
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+i]=0
set i=i+1
endloop
set s__YDWEStringFormula___Sorting_char[this]=""
endfunction
function s__YDWEStringFormula___Sorting_deallocate takes integer this returns nothing
if this==null then
return
elseif si__YDWEStringFormula___Sorting_V[this]!=-1 then
return
endif
call s__YDWEStringFormula___Sorting_onDestroy(this)
set si__YDWEStringFormula___Sorting_V[this]=si__YDWEStringFormula___Sorting_F
set si__YDWEStringFormula___Sorting_F=this
endfunction
function s__YDWEStringFormula___Sorting_create takes integer type1,integer n1,integer type2,integer n2,integer type3,integer n3,integer type4,integer n4,integer type5,integer n5,integer type6,integer n6,integer type7,integer n7 returns integer
local integer this=s__YDWEStringFormula___Sorting__allocate()
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+1]=s__YDWEStringFormula___ItemIdMatrix_assigns(type1)
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+2]=s__YDWEStringFormula___ItemIdMatrix_assigns(type2)
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+3]=s__YDWEStringFormula___ItemIdMatrix_assigns(type3)
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+4]=s__YDWEStringFormula___ItemIdMatrix_assigns(type4)
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+5]=s__YDWEStringFormula___ItemIdMatrix_assigns(type5)
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+6]=s__YDWEStringFormula___ItemIdMatrix_assigns(type6)
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+7]=s__YDWEStringFormula___ItemIdMatrix_assigns(type7)
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+1]=n1
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+2]=n2
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+3]=n3
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+4]=n4
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+5]=n5
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+6]=n6
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+7]=n7
return this
endfunction
function s__YDWEStringFormula___Sorting_convert takes integer this returns string
local integer i=1
local integer j
local integer k
set s__YDWEStringFormula___Sorting_char[this]=""
loop
exitwhen i>s__YDWEStringFormula___Sorting_total[this]
if s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+i]==0 or s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+i]==0 then
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+i]=s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+s__YDWEStringFormula___Sorting_total[this]]
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+i]=s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+s__YDWEStringFormula___Sorting_total[this]]
set s__YDWEStringFormula___Sorting_total[this]=s__YDWEStringFormula___Sorting_total[this]-1
set i=i-1
else
set j=i+1
loop
exitwhen j>s__YDWEStringFormula___Sorting_total[this]
if s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+j]==0 or s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+j]==0 then
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+j]=s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+s__YDWEStringFormula___Sorting_total[this]]
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+j]=s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+s__YDWEStringFormula___Sorting_total[this]]
set s__YDWEStringFormula___Sorting_total[this]=s__YDWEStringFormula___Sorting_total[this]-1
set j=j-1
elseif s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+i]>s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+j] then
set k=s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+i]
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+i]=s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+j]
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+j]=k
set k=s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+i]
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+i]=s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+j]
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+j]=k
elseif s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+i]==s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+j] then
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+i]=s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+i]+s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+j]
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+j]=0
set j=j-1
endif
set j=j+1
endloop
set j=s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+i]
loop
exitwhen j==0
set s__YDWEStringFormula___Sorting_char[this]=s__YDWEStringFormula___Sorting_char[this]+YDWEStringFormula___Convert(s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+i],YDWEStringFormula___SEGMENT_LENGTH)
set j=j-1
endloop
endif
set i=i+1
endloop
return s__YDWEStringFormula___Sorting_char[this]
endfunction
function YDWEStringFormula___Adaptation takes nothing returns boolean
return true
endfunction
function YDWEStringFormula___verify takes nothing returns boolean
return HaveSavedInteger(YDHT,StringHash("YDWEStringFormula."+I2S(s__YDWEStringFormula___ItemIdMatrix_Data)),StringHash(I2S(GetItemTypeId(GetManipulatedItem()))))
endfunction
function YDWEStringFormula___GetCharges takes item it returns integer
local integer charges=GetItemCharges(it)
if charges==0 then
set charges=1
endif
return charges
endfunction
function YDWEStringFormula___CraftItem takes nothing returns nothing
local integer forx=0
local integer itmx=LoadInteger(YDHT,StringHash("YDWEStringFormula."+I2S(s__YDWEStringFormula___ItemIdMatrix_Data)),StringHash(I2S(GetItemTypeId(GetManipulatedItem()))))
local integer size=StringLength(s__YDWEStringFormula___ItemIdMatrix_keyStr[itmx])/s__YDWEStringFormula___ItemIdMatrix_keyLen[itmx]
local integer inst=0
local integer numb=0
local integer sum=0
local integer tmpid=0
local integer i=0
local integer j=0
local boolean b=false
local item it=null
local item article=GetManipulatedItem()
local unit caster=GetTriggerUnit()
local item array items
local integer array typeid
local integer array amount
local integer array surplus
set i=0
loop
exitwhen i==6
set it=UnitItemInSlot(caster,i)
if it!=null then
set items[sum]=it
set typeid[sum]=GetItemTypeId(it)
set amount[sum]=YDWEStringFormula___GetCharges(it)
if it==article then
set b=true
endif
set sum=sum+1
endif
set i=i+1
set it=null
endloop
if b==false then
set items[sum]=article
set typeid[sum]=GetItemTypeId(article)
set amount[sum]=1
set sum=sum+1
endif
loop
exitwhen inst==size
set forx=s__YDWEStringFormula___ItemIdMatrix_sub(itmx,inst)
set numb=StringLength(s__YDWEStringFormula___FormulaMatrix_formula[forx])/s__YDWEStringFormula___FormulaMatrix_segmLen[forx]-1
set i=0
loop
exitwhen i==sum
set surplus[i]=amount[i]
set i=i+1
endloop
set i=0
loop
set tmpid=s__YDWEStringFormula___ItemIdMatrix_itemId[s__YDWEStringFormula___FormulaMatrix_sub(forx,i)]
exitwhen i==numb
set j=0
loop
exitwhen j==sum
if typeid[j]==tmpid and surplus[j]>0 then
set surplus[j]=surplus[j]-1
exitwhen true
endif
set j=j+1
endloop
exitwhen j==sum
set i=i+1
endloop
if i==numb then
if GetRandomInt(0,99)<s__YDWEStringFormula___FormulaMatrix_chance[forx] then
if s__YDWEStringFormula___FormulaMatrix_model[forx]!=null then
call DestroyEffect(AddSpecialEffectTarget(s__YDWEStringFormula___FormulaMatrix_model[forx],caster,"origin"))
endif
if s__YDWEStringFormula___FormulaMatrix_message[forx]!=null then
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,30,s__YDWEStringFormula___FormulaMatrix_message[forx])
endif
set i=0
loop
exitwhen i==sum
if surplus[i]>0 and GetItemCharges(items[i])>0 then
call SetItemCharges(items[i],surplus[i])
elseif surplus[i]==0 then
call RemoveItem(items[i])
endif
set i=i+1
endloop
set it=CreateItem(tmpid,GetUnitX(caster),GetUnitY(caster))
if GetItemCharges(it)>0 then
call SetItemCharges(it,1)
set i=0
loop
exitwhen i==sum
if typeid[i]==tmpid then
call RemoveItem(items[i])
call SetItemCharges(it,surplus[i]+1)
endif
set i=i+1
endloop
endif
call UnitAddItem(caster,it)
set bj_lastCombinedItem=it
call YDWESyStemItemCombineTriggerAction()
elseif s__YDWEStringFormula___FormulaMatrix_delete[forx] then
set i=0
loop
exitwhen i==sum
if surplus[i]>0 and GetItemCharges(items[i])>0 then
call SetItemCharges(items[i],surplus[i])
elseif surplus[i]==0 then
call RemoveItem(items[i])
endif
set i=i+1
endloop
endif
set it=null
exitwhen true
endif
set inst=inst+1
endloop
if b==false then
call RemoveItem(article)
endif
set i=0
loop
exitwhen i==sum
set items[i]=null
set i=i+1
endloop
set article=null
set caster=null
set it=null
endfunction
function YDWEStringFormula___Init takes nothing returns nothing
local filterfunc f=Filter(function YDWEStringFormula___Adaptation)
local trigger t=CreateTrigger()
local integer i=0
loop
exitwhen i>15
call TriggerRegisterPlayerUnitEvent(t,Player(i),EVENT_PLAYER_UNIT_PICKUP_ITEM,f)
set i=i+1
endloop
call TriggerAddCondition(t,Condition(function YDWEStringFormula___verify))
call TriggerAddAction(t,function YDWEStringFormula___CraftItem)
call DestroyFilter(f)
set f=null
set t=null
endfunction
function YDWENewItemsFormula takes integer type1,integer n1,integer type2,integer n2,integer type3,integer n3,integer type4,integer n4,integer type5,integer n5,integer type6,integer n6,integer eventually returns nothing
local integer sort=s__YDWEStringFormula___Sorting_create(type1,n1,type2,n2,type3,n3,type4,n4,type5,n5,type6,n6,0,0)
local integer itmx=s__YDWEStringFormula___ItemIdMatrix_assigns(eventually)
local string f=I2S(YDWEStringFormula___SEGMENT_LENGTH)+s__YDWEStringFormula___Sorting_convert(sort)
local string s=""
local integer i=0
set YDWEStringFormula___FormulaData=s__YDWEStringFormula___FormulaMatrix_memory(YDWEStringFormula___SEGMENT_LENGTH,f,itmx)
if YDWEStringFormula___FormulaData>0 then
set s=YDWEStringFormula___Convert(YDWEStringFormula___FormulaData,YDWEStringFormula___SEGMENT_LENGTH)
set i=0
loop
exitwhen i>s__YDWEStringFormula___Sorting_total[sort]
call s__YDWEStringFormula___ItemIdMatrix_memory(s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[sort]+i],s)
set i=i+1
endloop
call s__YDWEStringFormula___ItemIdMatrix_memory(itmx,s)
endif
call s__YDWEStringFormula___Sorting_deallocate(sort)
set f=""
set s=""
endfunction
function InitGlobals takes nothing returns nothing
local integer i=0
set i=0
loop
exitwhen i>16
set udg_route1[i]=null
set i=i+1
endloop
set i=0
loop
exitwhen i>16
set udg_route4[i]=null
set i=i+1
endloop
set i=0
loop
exitwhen i>16
set udg_route2[i]=null
set i=i+1
endloop
set i=0
loop
exitwhen i>16
set udg_route3[i]=null
set i=i+1
endloop
set udg_ShengYuGuaiShu=0
set udg_shuabingtimer=CreateTimer()
set udg_select_diff=DialogCreate()
set udg_boss_hint=CreateTimer()
set udg_kill_final_num=0
set udg_difficulty=0
endfunction
function CreateBuildingsForPlayer0 takes nothing returns nothing
local player p=Player(0)
local unit u
set u=CreateUnit(p,$6F30304E,-1280.,1152.,270.)
endfunction
function CreateUnitsForPlayer0 takes nothing returns nothing
local player p=Player(0)
set gg_unit_e00H_0022=CreateUnit(p,$65303048,-257.1,-103.8,99.12)
endfunction
function CreateBuildingsForPlayer1 takes nothing returns nothing
local player p=Player(1)
local unit u
set u=CreateUnit(p,$6F30304E,1216.,1152.,270.)
endfunction
function CreateUnitsForPlayer1 takes nothing returns nothing
local player p=Player(1)
set gg_unit_e00H_0023=CreateUnit(p,$65303048,-130.,-21.6,234.84)
endfunction
function CreateBuildingsForPlayer2 takes nothing returns nothing
local player p=Player(2)
local unit u
set u=CreateUnit(p,$6F30304E,1216.,-1152.,270.)
endfunction
function CreateUnitsForPlayer2 takes nothing returns nothing
local player p=Player(2)
set gg_unit_e00H_0024=CreateUnit(p,$65303048,-234.3,79.3,122.183)
endfunction
function CreateBuildingsForPlayer3 takes nothing returns nothing
local player p=Player(3)
local unit u
set u=CreateUnit(p,$6F30304E,-1152.,-1152.,270.)
endfunction
function CreateUnitsForPlayer3 takes nothing returns nothing
local player p=Player(3)
set gg_unit_e00H_0025=CreateUnit(p,$65303048,-351.1,-46.2,28.994)
endfunction
function CreateNeutralPassiveBuildings takes nothing returns nothing
local player p=Player(PLAYER_NEUTRAL_PASSIVE)
local unit u
set u=CreateUnit(p,$6F303045,-640.,256.,270.)
set u=CreateUnit(p,$6F303051,128.,0.,270.)
set u=CreateUnit(p,$6F30304C,-576.,-320.,270.)
set u=CreateUnit(p,$6F303046,-320.,256.,270.)
set u=CreateUnit(p,$6F303048,256.,256.,270.)
set u=CreateUnit(p,$6F30304D,-320.,-320.,270.)
set u=CreateUnit(p,$6F303047,576.,256.,270.)
set u=CreateUnit(p,$6F303049,0.,256.,270.)
set u=CreateUnit(p,$6F30304B,-64.,-320.,270.)
set gg_unit_o00A_0019=CreateUnit(p,$6F303041,-256.,0.,270.)
set u=CreateUnit(p,$6F303050,512.,-320.,270.)
set u=CreateUnit(p,$6F30304A,192.,-320.,270.)
set u=CreateUnit(p,$6F303131,512.,0.,270.)
endfunction
function CreatePlayerBuildings takes nothing returns nothing
call CreateBuildingsForPlayer0()
call CreateBuildingsForPlayer1()
call CreateBuildingsForPlayer2()
call CreateBuildingsForPlayer3()
endfunction
function CreatePlayerUnits takes nothing returns nothing
call CreateUnitsForPlayer0()
call CreateUnitsForPlayer1()
call CreateUnitsForPlayer2()
call CreateUnitsForPlayer3()
endfunction
function CreateAllUnits takes nothing returns nothing
call CreateNeutralPassiveBuildings()
call CreatePlayerBuildings()
call CreatePlayerUnits()
endfunction
function CreateRegions takes nothing returns nothing
local weathereffect we
set gg_rct_circle=Rect(-4512.,-4384.,4448.,4192.)
set we=AddWeatherEffect(gg_rct_circle,$52416C72)
call EnableWeatherEffect(we,true)
set gg_rct______________001=Rect(-3904.,3712.,-3744.,3904.)
set gg_rct______________002=Rect(-64.,3744.,64.,3904.)
set gg_rct______________003=Rect(3744.,3712.,3904.,3872.)
set gg_rct______________004=Rect(3744.,-96.,3904.,96.)
set gg_rct______________005=Rect(3744.,-3904.,3904.,-3776.)
set gg_rct______________006=Rect(-96.,-3936.,64.,-3776.)
set gg_rct______________007=Rect(-3936.,-3968.,-3744.,-3808.)
set gg_rct______________008=Rect(-3936.,-64.,-3776.,64.)
set gg_rct______________009=Rect(-2912.,-96.,-2720.,64.)
set gg_rct______________010=Rect(-2912.,2784.,-2752.,2912.)
set gg_rct______________011=Rect(-1888.,2784.,-1728.,2944.)
set gg_rct______________012=Rect(-64.,2752.,96.,2912.)
set gg_rct______________013=Rect(2720.,2752.,2848.,2880.)
set gg_rct______________014=Rect(2720.,1728.,2880.,1888.)
set gg_rct______________015=Rect(2752.,-64.,2880.,96.)
set gg_rct______________016=Rect(2688.,-2880.,2848.,-2752.)
set gg_rct______________017=Rect(1696.,-2880.,1856.,-2752.)
set gg_rct______________018=Rect(-96.,-2912.,64.,-2752.)
set gg_rct______________019=Rect(-2912.,-2880.,-2752.,-2752.)
set gg_rct______________020=Rect(-2880.,-1888.,-2720.,-1728.)
set gg_rct______________021=Rect(-1024.,-1984.,-544.,-1792.)
set gg_rct______________022=Rect(-2016.,544.,-1792.,1024.)
set gg_rct______________023=Rect(544.,1760.,1024.,1984.)
set gg_rct______________024=Rect(1792.,-1024.,2016.,-576.)
set gg_rct_spawn1=Rect(-1120.,448.,-448.,1088.)
set gg_rct_spawn2=Rect(448.,448.,1088.,1056.)
set gg_rct_spawn3=Rect(448.,-1088.,1088.,-480.)
set gg_rct_spawn4=Rect(-1088.,-1088.,-448.,-480.)
endfunction
function YDWETimerDestroyTextTag takes real pw,texttag tt returns nothing
if pw<=0 then
set pw=.01
endif
call SetTextTagPermanent(tt,false)
call SetTextTagLifespan(tt,pw)
call SetTextTagFadepoint(tt,pw)
endfunction
function GetNumPlayer takes nothing returns integer
local integer i=0
local player p=null
local integer n=0
loop
exitwhen i>11
set p=Player(i)
if GetPlayerController(p)==MAP_CONTROL_USER and GetPlayerSlotState(p)==PLAYER_SLOT_STATE_PLAYING then
set n=n+1
endif
set i=i+1
endloop
set p=null
return n
endfunction
function IsUnitAbilityCdOk takes unit u,string abilityid returns boolean
local boolean ok
local real mana=GetUnitManaPercent(u)
call DisableTrigger(GetTriggeringTrigger())
call SetUnitManaPercentBJ(u,100)
set ok=IssueImmediateOrder(u,abilityid)
call IssueImmediateOrder(u,"stop")
call SetUnitManaPercentBJ(u,mana)
call EnableTrigger(GetTriggeringTrigger())
return ok
endfunction
function Nw takes real pw,texttag tt returns nothing
if pw<=0 then
set pw=.01
endif
call SetTextTagPermanent(tt,false)
call SetTextTagLifespan(tt,pw)
call SetTextTagFadepoint(tt,pw)
endfunction
function WanBuff_1 takes integer buffnum,integer num,unit uc,integer id,integer orderid,unit ut,string s returns nothing
local unit u
local player p
local location loc
if buffnum==num then
set p=GetOwningPlayer(uc)
set loc=GetUnitLoc(ut)
call CreateNUnitsAtLoc(1,$65303030,p,loc,bj_UNIT_FACING)
set u=bj_lastCreatedUnit
call ShowUnitHide(u)
call UnitAddAbility(u,id)
if num==12 or num==14 then
call IncUnitAbilityLevel(u,id)
endif
call IssueTargetOrderById(u,orderid,ut)
call UnitApplyTimedLife(u,$42487765,2.)
call CreateTextTagLocBJ(s,loc,60.,12.,65.,55.,42.,0)
call Nw(3.,bj_lastCreatedTextTag)
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,100.,90)
call RemoveLocation(loc)
endif
set loc=null
set p=null
set u=null
endfunction
function WanBuff takes unit u,unit ut,integer buffnum returns nothing
call WanBuff_1(buffnum,1,u,$41303737,852111,ut,"内伤")
call WanBuff_1(buffnum,2,u,$41303739,852668,ut,"走火入魔")
call WanBuff_1(buffnum,3,u,$41303735,852527,ut,"流血")
call WanBuff_1(buffnum,4,u,$41303649,852189,ut,"混乱")
call WanBuff_1(buffnum,5,u,$4130415A,852075,ut,"昏迷")
call WanBuff_1(buffnum,6,u,$41303736,852075,ut,"重伤")
call WanBuff_1(buffnum,7,u,$41303738,852527,ut,"血流不止")
call WanBuff_1(buffnum,8,u,$41304159,852190,ut,"麻痹")
call WanBuff_1(buffnum,9,u,$4130334F,852149,ut,"破防")
call WanBuff_1(buffnum,10,u,$4130354E,852190,ut,"神经错乱")
call WanBuff_1(buffnum,11,u,$4130354C,852095,ut,"封穴")
call WanBuff_1(buffnum,12,u,$4130354C,852095,ut,"穴位全封")
call WanBuff_1(buffnum,13,u,$41303734,852527,ut,"中毒")
call WanBuff_1(buffnum,14,u,$41303734,852527,ut,"深度中毒")
call WanBuff_1(buffnum,15,u,$41303937,852190,ut,"致盲")
call WanBuff_1(buffnum,16,u,$41303937,852190,ut,"伤害加深")
endfunction
function getAbilityIdByItemId takes integer itemId returns integer
return LoadInteger(YDHT,itemId,65244)
endfunction
function LearnKungfu takes unit u,item it returns nothing
local integer abilityId=0
if not IsUnitType(u,UNIT_TYPE_HERO) then
call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|CFFFF0000只有掌门可以学习绝世武功")
call UnitAddItemById(u,GetItemTypeId(it))
return
endif
if GetUnitLevel(u)<20 then
call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|CFFFF0000只有20级以上才可以学习")
call UnitAddItemById(u,GetItemTypeId(it))
return
endif
set abilityId=LoadInteger(YDHT,GetItemTypeId(it),65244)
if GetUnitAbilityLevel(u,abilityId)>0 then
call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|CFFFF0000您已经拥有此武功了")
call UnitAddItemById(u,GetItemTypeId(it))
return
endif
call UnitAddAbility(u,abilityId)
if abilityId==$41303350 then
call UnitAddAbility(u,$41303353)
endif
call DisplayTextToPlayer(GetOwningPlayer(u),0,0,"|CFF99CC00恭喜"+GetUnitName(u)+"学会"+GetObjectName(abilityId))
endfunction
function dealDamage takes unit u,unit ut,real damage returns nothing
local location loc=GetUnitLoc(ut)
local real coeff=1
local integer i=1+GetPlayerId(GetOwningPlayer(u))
set coeff=coeff+kungfuCoeff[i]
if GetUnitAbilityLevel(u,$4130334E)>=1 then
set coeff=coeff+.4
endif
if GetUnitAbilityLevel(u,$41303350)>=1 then
set coeff=coeff+.5
endif
if GetUnitAbilityLevel(u,$41303351)>=1 then
set coeff=coeff+.4
endif
if GetUnitAbilityLevel(u,$41303352)>=1 then
set coeff=coeff+.5
endif
set damage=damage*coeff
if UnitHasBuffBJ(ut,$42303035) then
set damage=damage*2
endif
if damage==0 then
call CreateTextTagUnitBJ("MISS",ut,0.,11.,255.,0.,0.,30.)
else
if GetRandomReal(0.,100.)<=20 and GetUnitAbilityLevel(u,$4130334E)>=1 then
set damage=damage*3
call UnitDamageTarget(u,ut,damage,true,false,ATTACK_TYPE_MAGIC,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
call CreateTextTagUnitBJ(I2S(R2I(damage)),ut,0.,14.,100.,100.,0.,30.)
else
call UnitDamageTarget(u,ut,damage,true,false,ATTACK_TYPE_MAGIC,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
call CreateTextTagUnitBJ(I2S(R2I(damage)),ut,0.,11.,100.,100.,100.,30.)
endif
endif
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,400.,GetRandomReal(80.,100.))
call Nw(.65,bj_lastCreatedTextTag)
call RemoveLocation(loc)
set loc=null
endfunction
function LifeChange takes unit u,integer mod,integer ch,integer id returns nothing
local integer a
local integer b
local integer c
local integer d
local integer aid=id
if mod==1 then
set ch=-ch
elseif mod==2 then
set ch=ch-R2I(GetUnitState(u,UNIT_STATE_MAX_LIFE))
endif
if ch>$3B9AC9FF then
set ch=$3B9AC9FF
endif
if ch<-999999999 then
set ch=-999999999
endif
if ch<0 then
set a=2
set ch=-ch
else
set a=12
endif
set b=0
loop
exitwhen b==10
set c=ch-ch/10*10
set d=0
loop
exitwhen d==c
call UnitAddAbility(u,aid)
call SetUnitAbilityLevel(u,aid,a)
call UnitRemoveAbility(u,aid)
set d=d+1
endloop
set ch=ch/10
set a=a+1
set b=b+1
endloop
endfunction
function ServerSavePointsWhenEnterGame takes nothing returns nothing
local integer i=1
loop
exitwhen i>4
set udg_tech[i]=udg_tech[i]-1
call DzAPI_Map_StoreInteger(Player(i-1),"tech",udg_tech[i])
set i=i+1
endloop
endfunction
function ServerSavePointsEveryTenWave takes nothing returns nothing
local integer i=1
local integer point=5
local string point_times=DzAPI_Map_GetMapConfig("point_time")
if S2I(point_times)>=1 then
set point=point*S2I(point_times)
endif
loop
exitwhen i>4
set udg_zdl[i]=udg_zdl[i]+point
set udg_point[i]=udg_point[i]+point
if not saveFlag[i] then
set udg_success[i]=udg_success[i]+1
set saveFlag[i]=true
endif
set udg_tech[i]=udg_tech[i]+1
if GetPlayerController(Player(i-1))==MAP_CONTROL_USER and GetPlayerSlotState(Player(i-1))==PLAYER_SLOT_STATE_PLAYING then
call DisplayTextToPlayer(Player(i-1),0,0,"|CFF99CC00获得战斗力和积分："+I2S(point))
call DzAPI_Map_StoreInteger(Player(i-1),"zdl",udg_zdl[i])
call DzAPI_Map_StoreInteger(Player(i-1),"point",udg_point[i])
call DzAPI_Map_StoreInteger(Player(i-1),"success",udg_success[i])
call DzAPI_Map_StoreInteger(Player(i-1),"tech",udg_tech[i])
endif
if udg_tech[i]>udg_success[i]*5 and udg_success[i]>=10 then
set udg_tech_evaluate[i]="A+"
elseif udg_tech[i]>udg_success[i]*4 and udg_success[i]>=10 then
set udg_tech_evaluate[i]="A"
elseif udg_tech[i]>udg_success[i]*3 and udg_success[i]>=10 then
set udg_tech_evaluate[i]="B"
elseif udg_tech[i]>udg_success[i]*2 and udg_success[i]>=10 then
set udg_tech_evaluate[i]="C"
elseif udg_tech[i]>udg_success[i] then
set udg_tech_evaluate[i]="D"
else
set udg_tech_evaluate[i]="D-"
endif
if GetPlayerServerValueSuccess(Player(i-1)) then
call DzAPI_Map_Stat_SetStat(Player(i-1),"zdl",I2S(udg_zdl[i]))
call DzAPI_Map_Stat_SetStat(Player(i-1),"point",I2S(udg_point[i]))
call DzAPI_Map_Stat_SetStat(Player(i-1),"tech",udg_tech_evaluate[i])
call DisplayTextToPlayer(Player(i-1),0,0,"|CFFFE890D"+GetPlayerName(Player(i-1))+"|CFF99CC00数据保存成功")
else
call DisplayTextToPlayer(Player(i-1),0,0,"|CFFFE890D"+GetPlayerName(Player(i-1))+"|CFFFF0303数据保存失败")
endif
set i=i+1
endloop
endfunction
function ServerSavePointsWhenWin takes nothing returns nothing
local integer i=1
local integer point=2*udg_difficulty
local string point_times=DzAPI_Map_GetMapConfig("point_time")
if S2I(point_times)>=1 then
set point=point*S2I(point_times)
endif
loop
exitwhen i>4
set udg_zdl[i]=udg_zdl[i]+point
set udg_point[i]=udg_point[i]+point
set udg_success[i]=udg_success[i]+1
set udg_tech[i]=udg_tech[i]+udg_difficulty+1
if GetPlayerController(Player(i-1))==MAP_CONTROL_USER and GetPlayerSlotState(Player(i-1))==PLAYER_SLOT_STATE_PLAYING then
call DisplayTextToPlayer(Player(i-1),0,0,"|CFF99CC00获得战斗力和积分："+I2S(point))
call DzAPI_Map_StoreInteger(Player(i-1),"zdl",udg_zdl[i])
call DzAPI_Map_StoreInteger(Player(i-1),"point",udg_point[i])
call DzAPI_Map_StoreInteger(Player(i-1),"success",udg_success[i])
call DzAPI_Map_StoreInteger(Player(i-1),"tech",udg_tech[i])
endif
if udg_tech[i]>udg_success[i]*5 and udg_success[i]>=10 then
set udg_tech_evaluate[i]="A+"
elseif udg_tech[i]>udg_success[i]*4 and udg_success[i]>=10 then
set udg_tech_evaluate[i]="A"
elseif udg_tech[i]>udg_success[i]*3 and udg_success[i]>=10 then
set udg_tech_evaluate[i]="B"
elseif udg_tech[i]>udg_success[i]*2 and udg_success[i]>=10 then
set udg_tech_evaluate[i]="C"
elseif udg_tech[i]>udg_success[i] then
set udg_tech_evaluate[i]="D"
else
set udg_tech_evaluate[i]="D-"
endif
if GetPlayerServerValueSuccess(Player(i-1)) and not saveFlag[i] then
call DzAPI_Map_Stat_SetStat(Player(i-1),"zdl",I2S(udg_zdl[i]))
call DzAPI_Map_Stat_SetStat(Player(i-1),"point",I2S(udg_point[i]))
call DzAPI_Map_Stat_SetStat(Player(i-1),"tech",udg_tech_evaluate[i])
call DisplayTextToPlayer(Player(i-1),0,0,"|CFFFE890D"+GetPlayerName(Player(i-1))+"|CFF99CC00数据保存成功")
set saveFlag[i]=true
else
call DisplayTextToPlayer(Player(i-1),0,0,"|CFFFE890D"+GetPlayerName(Player(i-1))+"|CFFFF0303数据保存失败")
endif
set i=i+1
endloop
endfunction
function pointChange takes integer i,integer jf returns nothing
set udg_pointMax[i]=udg_pointMax[i]+jf
set udg_point[i]=udg_point[i]-jf
call DzAPI_Map_StoreInteger(Player(i-1),"point",udg_point[i])
endfunction
function InitServerValues takes nothing returns nothing
local integer i=1
loop
exitwhen i>4
set udg_zdl[i]=DzAPI_Map_GetStoredInteger(Player(i-1),"zdl")
set udg_point[i]=DzAPI_Map_GetStoredInteger(Player(i-1),"point")
set udg_success[i]=DzAPI_Map_GetStoredInteger(Player(i-1),"success")
set udg_tech[i]=DzAPI_Map_GetStoredInteger(Player(i-1),"tech")
set udg_pointMax[i]=0
set saveFlag[i]=false
set i=i+1
endloop
endfunction
function ID2S_naji takes integer i_naji returns string
local integer z_naji
local integer n_naji=0
set Sdummy_naji[100]=""
if Bid_naji==false then
return Sdummy_naji[100]
endif
if i_naji!=0 then
loop
set z_naji=i_naji-i_naji/256*256
set i_naji=i_naji/256
set Sdummy_naji[100]=SubString(StringList_naji,z_naji,z_naji+1)+Sdummy_naji[100]
set n_naji=n_naji+1
exitwhen n_naji==4
endloop
set Sdummy_naji[100]="'"+Sdummy_naji[100]+"'"
else
set Sdummy_naji[100]="null"
endif
return Sdummy_naji[100]
endfunction
function S2ID_naji takes string s_naji returns integer
local integer l_naji=StringLength(s_naji)
local integer i_naji=0
local integer z_naji=0
local integer n_naji=1
local integer result_naji=0
loop
exitwhen z_naji>l_naji-1
set n_naji=R2I(Pow(256,l_naji-1-z_naji))
set i_naji=1
loop
exitwhen i_naji>255
if SubString(s_naji,z_naji,z_naji+1)==SubString(StringList_naji,i_naji,i_naji+1) then
set result_naji=result_naji+i_naji*n_naji
set i_naji=256
endif
set i_naji=i_naji+1
endloop
set z_naji=z_naji+1
endloop
return result_naji
endfunction
function IDidentify_naji takes integer i_naji returns string
local integer l_naji
local integer a_naji=0
local integer z_naji
local integer n_naji=0
local integer result=0
set Sdummy_naji[100]=""
if i_naji!=0 then
loop
set z_naji=i_naji-i_naji/256*256
set i_naji=i_naji/256
set Sdummy_naji[100]=SubString(StringList_naji,z_naji,z_naji+1)+Sdummy_naji[100]
set n_naji=n_naji+1
exitwhen n_naji==4
endloop
else
set Sdummy_naji[100]="null"
return Sdummy_naji[100]
endif
set l_naji=StringLength(Sdummy_naji[100])
set n_naji=1
set z_naji=0
loop
exitwhen z_naji>l_naji-1
set n_naji=R2I(Pow(256,l_naji-1-z_naji))
set a_naji=1
loop
exitwhen a_naji>255
if SubString(Sdummy_naji[100],z_naji,z_naji+1)==SubString(StringList_naji,a_naji,a_naji+1) then
set result=result+a_naji*n_naji
set a_naji=256
endif
set a_naji=a_naji+1
endloop
set z_naji=z_naji+1
endloop
return GetObjectName(result)
endfunction
function Distance_naji takes real x1_naji,real y1_naji,real x2_naji,real y2_naji returns real
return SquareRoot((y2_naji-y1_naji)*(y2_naji-y1_naji)+(x2_naji-x1_naji)*(x2_naji-x1_naji))
endfunction
function Angle_naji takes real x1_naji,real y1_naji,real x2_naji,real y2_naji returns real
local real r_naji
set r_naji=57.29582*Atan2(y2_naji-y1_naji,x2_naji-x1_naji)
if r_naji<0 then
return 360+r_naji
endif
return r_naji
endfunction
function DialogResetA3_naji takes nothing returns nothing
call DialogClear(Dnaji_naji[2])
if IsMapFlagSet(MAP_OBSERVERS_ON_DEATH) then
set Button_naji[1]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF失败时作为观看者|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F1）|r",768)
else
set Button_naji[1]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF失败时作为观看者|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F1）|r",768)
endif
if IsMapFlagSet(MAP_LOCK_RESOURCE_TRADING) then
set Button_naji[2]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF锁定资源交易|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F2）|r",769)
else
set Button_naji[2]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF锁定资源交易|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F2）|r",769)
endif
if IsMapFlagSet(MAP_RESOURCE_TRADING_ALLIES_ONLY) then
set Button_naji[3]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF限定盟友资源交易|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F3）|r",770)
else
set Button_naji[3]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF限定盟友资源交易|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F3）|r",770)
endif
if IsMapFlagSet(MAP_LOCK_ALLIANCE_CHANGES) then
set Button_naji[4]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF锁定联盟设置|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F4）|r",771)
else
set Button_naji[4]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF锁定联盟设置|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F4）|r",771)
endif
if IsMapFlagSet(MAP_ALLIANCE_CHANGES_HIDDEN) then
set Button_naji[5]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF隐藏联盟设置|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F5）|r",772)
else
set Button_naji[5]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF隐藏联盟设置|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F5）|r",772)
endif
set Button_naji[100]=DialogAddButton(Dnaji_naji[2],"|cff00FFFF取消|cff00FF00（Esc）|r",512)
endfunction
function DialogResetA2_naji takes nothing returns nothing
call DialogClear(Dnaji_naji[1])
if Bxy_naji then
set Button_naji[1]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF坐标参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F1）|r",768)
else
set Button_naji[1]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF坐标参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F1）|r",768)
endif
if Bid_naji then
set Button_naji[2]=DialogAddButton(Dnaji_naji[1],"|cff00FFFFID参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F2）|r",769)
else
set Button_naji[2]=DialogAddButton(Dnaji_naji[1],"|cff00FFFFID参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F2）|r",769)
endif
if Bpn_naji then
set Button_naji[3]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF玩家名参数|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F3）|r",770)
else
set Button_naji[3]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF玩家名参数|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F3）|r",770)
endif
if Bir_naji then
set Button_naji[4]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF数值显示|cffFFFF00（当前状态：|cffFF0000整数|cffFFFF00）|cff00FF00（F4）|r",771)
else
set Button_naji[4]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF数值显示|cffFFFF00（当前状态：|cffFF0000实数|cffFFFF00）|cff00FF00（F4）|r",771)
endif
if Bddm_naji then
set Button_naji[5]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF伤害显示类型|cffFFFF00（当前状态：|cffFF0000游戏文本|cffFFFF00）|cff00FF00（F5）|r",772)
else
set Button_naji[5]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF伤害显示类型|cffFFFF00（当前状态：|cffFF0000飘浮文字|cffFFFF00）|cff00FF00（F5）|r",772)
endif
set Button_naji[0]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF返回上一层|cff00FF00（space）|r",32)
set Button_naji[100]=DialogAddButton(Dnaji_naji[1],"|cff00FFFF取消|cff00FF00（Esc）|r",512)
endfunction
function DialogResetA_naji takes nothing returns nothing
call DialogClear(Dnaji_naji[0])
if IsTriggerEnabled(Ttest_naji[2]) then
set Button_naji[1]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF技能信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F1）|r",768)
else
set Button_naji[1]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF技能信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F1）|r",768)
endif
if IsTriggerEnabled(Ttest_naji[15]) then
set Button_naji[2]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF命令信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F2）|r",769)
else
set Button_naji[2]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF命令信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F2）|r",769)
endif
if IsTriggerEnabled(Ttest_naji[17]) then
set Button_naji[3]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF寿命信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F3）|r",770)
else
set Button_naji[3]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF寿命信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F3）|r",770)
endif
if IsTriggerEnabled(Ttest_naji[26]) then
set Button_naji[4]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF伤害信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F4）|r",771)
else
set Button_naji[4]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF伤害信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F4）|r",771)
endif
if IsTriggerEnabled(Ttest_naji[4]) then
set Button_naji[5]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF技能无冷却不耗魔|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F5）|r",772)
else
set Button_naji[5]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF技能无冷却不耗魔|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F5）|r",772)
endif
if IsTriggerEnabled(Ttest_naji[71]) then
set Button_naji[8]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF群体施法|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F6）|r",773)
else
set Button_naji[8]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF群体施法|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F6）|r",773)
endif
if IsTriggerEnabled(Ttest_naji[7]) then
set Button_naji[6]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF句柄信息|cffFFFF00（当前状态：|cffFF0000显示|cffFFFF00）|cff00FF00（F7）|r",774)
else
set Button_naji[6]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF句柄信息|cffFFFF00（当前状态：|cffFF0000隐藏|cffFFFF00）|cff00FF00（F7）|r",774)
endif
if IsTriggerEnabled(Ttest_naji[61]) then
set Button_naji[7]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF公共聊天系统|cffFFFF00（当前状态：|cffFF0000开启|cffFFFF00）|cff00FF00（F8）|r",775)
else
set Button_naji[7]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF公共聊天系统|cffFFFF00（当前状态：|cffFF0000关闭|cffFFFF00）|cff00FF00（F8）|r",775)
endif
set Button_naji[0]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF系统信息调整|cff00FF00（space）|r",32)
set Button_naji[100]=DialogAddButton(Dnaji_naji[0],"|cff00FFFF取消|cff00FF00（Esc）|r",512)
endfunction
function TestA82_naji takes nothing returns nothing
call ExecuteFunc(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
endfunction
function TestA81_naji takes nothing returns nothing
local integer i_naji
if StringLength(GetEventPlayerChatString())<=6 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000参数输入错误！位数不足无法判断进制类型|r")
elseif StringLength(GetEventPlayerChatString())==7 then
set i_naji=S2ID_naji(SubString(GetEventPlayerChatString(),3,7))
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0"+SubString(GetEventPlayerChatString(),3,7)+"|r→|cffFFFF00"+I2S(i_naji)+"|r")
else
set i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0"+SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString()))+"|r→|cffFFFF00"+ID2S_naji(i_naji)+"|r")
endif
endfunction
function TestA80_naji takes nothing returns nothing
local group g_naji
local unit u_naji
local real x_naji
local real y_naji
local integer z_naji=StringLength(GetEventPlayerChatString())-1
set g_naji=CreateGroup()
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
loop
set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),z_naji,z_naji+1)
if Sdummy_naji[1]=="," then
if z_naji==4 then
set x_naji=GetUnitX(u_naji)
else
set x_naji=S2R(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
endif
if z_naji==StringLength(GetEventPlayerChatString())-1 then
set y_naji=GetUnitY(u_naji)
else
set y_naji=S2R(SubString(GetEventPlayerChatString(),z_naji+1,StringLength(GetEventPlayerChatString())))
endif
exitwhen true
endif
set z_naji=z_naji-1
if z_naji<=0 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000参数不足！请输入|cffFFFF002|cffFF0000位参数|r")
call DestroyGroup(g_naji)
set g_naji=null
set u_naji=null
return
endif
endloop
call SetUnitX(u_naji,x_naji)
call SetUnitY(u_naji,y_naji)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00玩家选择单位的所有单位的坐标更改为|cffFF0000("+R2S(x_naji)+","+R2S(y_naji)+")|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA79_naji takes nothing returns nothing
local group g_naji
local unit u_naji
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
local item it_naji
if i_naji<0 or i_naji>=7 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000参数输入错误！请输入|cffFFFF001~6|cffFF0000间的整数|r")
return
elseif i_naji==0 then
set i_naji=1
endif
set g_naji=CreateGroup()
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
set u_naji=FirstOfGroup(g_naji)
if u_naji!=null then
if UnitItemInSlot(u_naji,i_naji-1)!=null then
set it_naji=UnitItemInSlot(u_naji,i_naji-1)
if GetItemType(it_naji)==ITEM_TYPE_PERMANENT then
set Sdummy_naji[0]="永久"
endif
if GetItemType(it_naji)==ITEM_TYPE_CHARGED then
set Sdummy_naji[0]="可允"
endif
if GetItemType(it_naji)==ITEM_TYPE_POWERUP then
set Sdummy_naji[0]="能量提升"
endif
if GetItemType(it_naji)==ITEM_TYPE_ARTIFACT then
set Sdummy_naji[0]="人造"
endif
if GetItemType(it_naji)==ITEM_TYPE_PURCHASABLE then
set Sdummy_naji[0]="可购买"
endif
if GetItemType(it_naji)==ITEM_TYPE_CAMPAIGN then
set Sdummy_naji[0]="战役"
endif
if GetItemType(it_naji)==ITEM_TYPE_MISCELLANEOUS then
set Sdummy_naji[0]="混杂"
endif
if GetItemType(it_naji)==ITEM_TYPE_UNKNOWN then
set Sdummy_naji[0]="未知"
endif
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"===============*****===============")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0物品名称：|cffFFFF00"+GetItemName(it_naji)+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0ID256进制/10进制：|cffFFFF00"+ID2S_naji(GetItemTypeId(it_naji))+"/"+I2S(GetItemTypeId(it_naji))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0存储地址：|cffFFFF00"+I2S(GetHandleId(it_naji))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0所属玩家/cj索引：|cffFFFF00"+GetPlayerName(GetItemPlayer(it_naji))+"/"+I2S(GetPlayerId(GetItemPlayer(it_naji)))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0坐标：|cffFFFF00("+R2S(GetItemX(it_naji))+","+R2S(GetItemY(it_naji))+")|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0物品分类：|cffFFFF00"+Sdummy_naji[0]+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0物品等级：|cffFFFF00"+I2S(GetItemLevel(it_naji))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0自定义值：|cffFFFF00"+I2S(GetItemUserData(it_naji))+"|r")
set Sdummy_naji[0]=" "
if IsItemPowerup(it_naji) then
set Sdummy_naji[0]=Sdummy_naji[0]+"拾取自动使用，"
endif
if IsItemSellable(it_naji) then
set Sdummy_naji[0]=Sdummy_naji[0]+"可出售，"
endif
if IsItemPawnable(it_naji) then
set Sdummy_naji[0]=Sdummy_naji[0]+"可抵押，"
endif
if IsItemVisible(it_naji) then
set Sdummy_naji[0]=Sdummy_naji[0]+"可见，"
endif
if IsItemInvulnerable(it_naji) then
set Sdummy_naji[0]=Sdummy_naji[0]+"无敌的，"
endif
set Sdummy_naji[0]=SubString(Sdummy_naji[0],1,StringLength(Sdummy_naji[0])-2)
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0可识别状态：|cffFFFF00"+Sdummy_naji[0]+"||r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000该单位|cffFFFF00第"+I2S(i_naji)+"格物品栏|cffFF0000不存在物品|r")
endif
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
set u_naji=null
endfunction
function TestA78_naji takes nothing returns nothing
local group g_naji=CreateGroup()
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
if IsUnitInGroup(FirstOfGroup(g_naji),Gcd_naji[1]) then
call GroupRemoveUnit(Gcd_naji[1],FirstOfGroup(g_naji))
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已取消玩家选择单位的|cffFF0000技能无冷却不耗蓝判定|r")
else
call SetUnitState(FirstOfGroup(g_naji),UNIT_STATE_MANA,GetUnitState(FirstOfGroup(g_naji),UNIT_STATE_MAX_MANA))
call UnitResetCooldown(FirstOfGroup(g_naji))
call GroupAddUnit(Gcd_naji[1],FirstOfGroup(g_naji))
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已启动玩家选择单位的|cffFF0000技能无冷却不耗蓝判定|r")
endif
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA77_naji takes nothing returns nothing
local group g_naji=CreateGroup()
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
if IsUnitInGroup(FirstOfGroup(g_naji),Gms_naji) then
call GroupRemoveUnit(Gms_naji,FirstOfGroup(g_naji))
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已取消玩家选择单位的|cffFF0000群体施法判定|r")
else
call GroupAddUnit(Gms_naji,FirstOfGroup(g_naji))
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已启动玩家选择单位的|cffFF0000群体施法判定|r")
endif
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
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
local location p_naji=GetSpellTargetLoc()
if IsUnitInGroup(GetTriggerUnit(),Gms_naji) and GetSpellTargetUnit()!=null or p_naji!=null then
set i_naji=GetUnitCurrentOrder(GetTriggerUnit())
set z_naji=GetSpellAbilityId()
set n_naji=GetUnitAbilityLevel(GetTriggerUnit(),z_naji)
if GetSpellTargetUnit()!=null then
set g_naji=CreateGroup()
set b_naji=IsUnitEnemy(GetSpellTargetUnit(),GetTriggerPlayer())
call GroupEnumUnitsInRange(g_naji,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),Distance_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit())),null)
loop
exitwhen FirstOfGroup(g_naji)==null
if IsUnitType(FirstOfGroup(g_naji),UNIT_TYPE_DEAD)==false and FirstOfGroup(g_naji)!=GetSpellTargetUnit() and b_naji==IsUnitEnemy(FirstOfGroup(g_naji),GetTriggerPlayer()) then
set u_naji=CreateUnit(GetTriggerPlayer(),$6E76756C,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),Angle_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetUnitX(FirstOfGroup(g_naji)),GetUnitY(FirstOfGroup(g_naji))))
call UnitAddAbility(u_naji,$416C6F63)
call UnitAddAbility(u_naji,$4162756E)
call UnitAddAbility(u_naji,$4149626D)
call UnitAddAbility(u_naji,$4149326D)
call UnitAddAbility(u_naji,$41496D62)
call UnitAddAbility(u_naji,$41496D7A)
call UnitAddAbility(u_naji,$41496D76)
call UnitRemoveAbility(u_naji,$4177616E)
if UnitAddAbility(u_naji,$41726176) then
call UnitRemoveAbility(u_naji,$41726176)
endif
call SetUnitState(u_naji,UNIT_STATE_MANA,GetUnitState(u_naji,UNIT_STATE_MAX_MANA))
call ShowUnit(u_naji,false)
call UnitApplyTimedLife(u_naji,$42544C46,10)
call SetUnitUseFood(u_naji,false)
call SetUnitPathing(u_naji,false)
call h__SetUnitMoveSpeed(u_naji,522)
call SetUnitTurnSpeed(u_naji,1)
call SetUnitFlyHeight(u_naji,GetUnitFlyHeight(GetTriggerUnit()),0)
call UnitAddType(u_naji,UNIT_TYPE_ANCIENT)
call UnitAddType(u_naji,UNIT_TYPE_PEON)
call UnitAddAbility(u_naji,z_naji)
call SetUnitAbilityLevel(u_naji,z_naji,n_naji)
call IssueTargetOrderById(u_naji,i_naji,FirstOfGroup(g_naji))
endif
call GroupRemoveUnit(g_naji,FirstOfGroup(g_naji))
endloop
call DestroyGroup(g_naji)
set g_naji=null
else
set r_naji=0
loop
exitwhen r_naji>=2
set u_naji=CreateUnit(GetTriggerPlayer(),$6E76756C,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),Angle_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetLocationX(p_naji),GetLocationY(p_naji))-30+60*r_naji)
call UnitAddAbility(u_naji,$416C6F63)
call UnitAddAbility(u_naji,$4162756E)
call UnitAddAbility(u_naji,$4149626D)
call UnitAddAbility(u_naji,$4149326D)
call UnitAddAbility(u_naji,$41496D62)
call UnitAddAbility(u_naji,$41496D7A)
call UnitAddAbility(u_naji,$41496D76)
call UnitRemoveAbility(u_naji,$4177616E)
if UnitAddAbility(u_naji,$41726176) then
call UnitRemoveAbility(u_naji,$41726176)
endif
call SetUnitState(u_naji,UNIT_STATE_MANA,GetUnitState(u_naji,UNIT_STATE_MAX_MANA))
call ShowUnit(u_naji,false)
call UnitApplyTimedLife(u_naji,$42544C46,10)
call SetUnitUseFood(u_naji,false)
call SetUnitPathing(u_naji,false)
call h__SetUnitMoveSpeed(u_naji,522)
call SetUnitTurnSpeed(u_naji,1)
call SetUnitFlyHeight(u_naji,GetUnitFlyHeight(GetTriggerUnit()),0)
call UnitAddType(u_naji,UNIT_TYPE_ANCIENT)
call UnitAddType(u_naji,UNIT_TYPE_PEON)
call UnitAddAbility(u_naji,z_naji)
call SetUnitAbilityLevel(u_naji,z_naji,n_naji)
call IssuePointOrderById(u_naji,i_naji,GetUnitX(GetTriggerUnit())+Cos(.01745*(Angle_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetLocationX(p_naji),GetLocationY(p_naji))-30+60*r_naji))*Distance_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetLocationX(p_naji),GetLocationY(p_naji)),GetUnitY(GetTriggerUnit())+Sin(.01745*(Angle_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetLocationX(p_naji),GetLocationY(p_naji))-30+60*r_naji))*Distance_naji(GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),GetLocationX(p_naji),GetLocationY(p_naji)))
set r_naji=r_naji+1
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
local integer a_naji=2
local integer b_naji=8
local integer c_naji=8
set i_naji[1]=S2ID_naji(SubString(GetEventPlayerChatString(),3,7))
set i_naji[2]=0
set i_naji[3]=GetPlayerId(GetTriggerPlayer())+1
loop
set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),b_naji,b_naji+1)
if Sdummy_naji[1]=="," then
set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(),c_naji,b_naji))
set a_naji=a_naji+1
set c_naji=b_naji+1
if a_naji>=3 then
set i_naji[3]=S2I(SubString(GetEventPlayerChatString(),c_naji,StringLength(GetEventPlayerChatString())))
exitwhen true
endif
endif
set b_naji=b_naji+1
if b_naji>=StringLength(GetEventPlayerChatString()) then
set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(),c_naji,StringLength(GetEventPlayerChatString())))
exitwhen true
endif
endloop
if i_naji[3]>=1 and i_naji[3]<=16 then
call SetPlayerTechResearched(Player(i_naji[3]-1),i_naji[1],i_naji[2])
call SetPlayerTechMaxAllowed(Player(i_naji[3]-1),i_naji[1],i_naji[2])
call SetPlayerTechMaxAllowed(Player(i_naji[3]-1),i_naji[1],i_naji[2])
if i_naji[2]==0 then
call SetPlayerAbilityAvailable(Player(i_naji[3]-1),i_naji[1],false)
else
call SetPlayerAbilityAvailable(Player(i_naji[3]-1),i_naji[1],true)
endif
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000已对|cff00FFFF"+GetPlayerName(Player(i_naji[3]-1))+"|cffFF0000执行对应行为，若没有效果，请确认你是否输入了|cffFFFF00正确的物编ID|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000玩家参数输入数值错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
endif
endfunction
function TestA73_naji takes nothing returns nothing
local integer i_naji=S2ID_naji(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
if StringLength(GetEventPlayerChatString())<=6 then
if Iweather_naji>=1 then
loop
call RemoveWeatherEffect(Weather_naji[Iweather_naji])
set Iweather_naji=Iweather_naji-1
exitwhen Iweather_naji<=0
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000删除|cffFFFF00所有已创建的全图天气|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00请输入|cffFF0000合法的天气ID|cffFFFF00，可点击|cffFF0000F9|cffFFFF00查看所有天气ID|r")
endif
else
set Iweather_naji=Iweather_naji+1
set Weather_naji[Iweather_naji]=AddWeatherEffect(GetWorldBounds(),i_naji)
call EnableWeatherEffect(Weather_naji[Iweather_naji],true)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已创建对应的天气。目前已有|cffFF0000"+I2S(Iweather_naji)+"|cffFFFF00个全图天气|r")
endif
endfunction
function TestA72_naji takes nothing returns nothing
call EnableUserControl(true)
call ShowInterface(true,.01)
call EnableOcclusion(true)
endfunction
function TestA71_naji takes nothing returns nothing
if GetClickedButton()!=Button_naji[100] then
if GetClickedButton()==Button_naji[1] then
if IsMapFlagSet(MAP_OBSERVERS_ON_DEATH) then
call SetMapFlag(MAP_OBSERVERS_ON_DEATH,false)
else
call SetMapFlag(MAP_OBSERVERS_ON_DEATH,true)
endif
elseif GetClickedButton()==Button_naji[2] then
if IsMapFlagSet(MAP_LOCK_RESOURCE_TRADING) then
call SetMapFlag(MAP_LOCK_RESOURCE_TRADING,false)
else
call SetMapFlag(MAP_LOCK_RESOURCE_TRADING,true)
endif
elseif GetClickedButton()==Button_naji[3] then
if IsMapFlagSet(MAP_RESOURCE_TRADING_ALLIES_ONLY) then
call SetMapFlag(MAP_RESOURCE_TRADING_ALLIES_ONLY,false)
else
call SetMapFlag(MAP_RESOURCE_TRADING_ALLIES_ONLY,true)
endif
elseif GetClickedButton()==Button_naji[4] then
if IsMapFlagSet(MAP_LOCK_ALLIANCE_CHANGES) then
call SetMapFlag(MAP_LOCK_ALLIANCE_CHANGES,false)
else
call SetMapFlag(MAP_LOCK_ALLIANCE_CHANGES,true)
endif
elseif GetClickedButton()==Button_naji[5] then
if IsMapFlagSet(MAP_ALLIANCE_CHANGES_HIDDEN) then
call SetMapFlag(MAP_ALLIANCE_CHANGES_HIDDEN,false)
else
call SetMapFlag(MAP_ALLIANCE_CHANGES_HIDDEN,true)
endif
endif
call DialogResetA3_naji()
call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[2],true)
endif
endfunction
function TestA70_naji takes nothing returns nothing
call DialogResetA3_naji()
call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[2],true)
endfunction
function TestA69_naji takes nothing returns nothing
local real i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
if i_naji>=1 and i_naji<=5 then
call SetMapFlag(MAP_LOCK_SPEED,false)
if i_naji==1 then
call SetGameSpeed(MAP_SPEED_SLOWEST)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00当前的游戏速度为|cffFF0000极慢|r")
elseif i_naji==2 then
call SetGameSpeed(MAP_SPEED_SLOW)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00当前的游戏速度为|cffFF0000慢|r")
elseif i_naji==3 then
call SetGameSpeed(MAP_SPEED_NORMAL)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00当前的游戏速度为|cffFF0000普通|r")
elseif i_naji==4 then
call SetGameSpeed(MAP_SPEED_FAST)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00当前的游戏速度为|cffFF0000快|r")
elseif i_naji==5 then
call SetGameSpeed(MAP_SPEED_FASTEST)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00当前的游戏速度为|cffFF0000极快|r")
endif
else
call DisplayTextToPlayer(Ptest_naji,0,0,"|cffFF0000输入错误！请输入|cffFFFF001~5|cffFF0000之间的整数|r")
endif
endfunction
function TestA68_naji takes nothing returns nothing
call EndGame(true)
endfunction
function TestA67_naji takes nothing returns nothing
local group g_naji=CreateGroup()
local unit u_naji
local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call SetUnitScale(u_naji,r_naji,r_naji,r_naji)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00玩家选择的所有单位的缩放更改为原模型默认的|cffFF0000"+R2S(r_naji)+"|cffFFFF00倍|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA66_naji takes nothing returns nothing
local integer i_naji
set i_naji=0
loop
call DisplayTimedTextToPlayer(Player(i_naji),0,0,15,"                              |cff00FFFF"+GetPlayerName(GetTriggerPlayer())+"：|r"+GetEventPlayerChatString())
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
endfunction
function TestA65_naji takes nothing returns nothing
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"===============*****===============")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0目标坐标：|cffFFFF00("+R2S(GetCameraTargetPositionX())+","+R2S(GetCameraTargetPositionY())+","+R2S(GetCameraTargetPositionZ())+")|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0源坐标：|cffFFFF00("+R2S(GetCameraEyePositionX())+","+R2S(GetCameraEyePositionY())+","+R2S(GetCameraEyePositionZ())+")|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0X轴旋转角度/弧度：|cffFFFF00"+R2S(57.295*GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK))+"/"+R2S(GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0Y轴旋转角度/弧度：|cffFFFF00"+R2S(57.295*GetCameraField(CAMERA_FIELD_ROLL))+"/"+R2S(GetCameraField(CAMERA_FIELD_ROLL))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0Z轴旋转角度/弧度：|cffFFFF00"+R2S(57.295*GetCameraField(CAMERA_FIELD_ROTATION))+"/"+R2S(GetCameraField(CAMERA_FIELD_ROTATION))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0Z轴偏移：|cffFFFF00"+R2S(GetCameraField(CAMERA_FIELD_ZOFFSET))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0镜头距离：|cffFFFF00"+R2S(GetCameraField(CAMERA_FIELD_TARGET_DISTANCE))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0远景截断距离：|cffFFFF00"+R2S(GetCameraField(CAMERA_FIELD_FARZ))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0镜头区域：|cffFFFF00"+R2S(GetCameraField(CAMERA_FIELD_FIELD_OF_VIEW))+"|r")
endfunction
function TestA64_naji takes nothing returns nothing
if GetLocalPlayer()==Ptest_naji then
set Rcamera_naji[2]=57.29582*GetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK)
set Rcamera_naji[3]=57.29582*GetCameraField(CAMERA_FIELD_ROTATION)
if Bcamera_naji[1] then
set Rcamera_naji[2]=Rcamera_naji[2]-1
endif
if Bcamera_naji[2] then
set Rcamera_naji[2]=Rcamera_naji[2]+1
endif
if Bcamera_naji[3] then
set Rcamera_naji[3]=Rcamera_naji[3]-1
endif
if Bcamera_naji[4] then
set Rcamera_naji[3]=Rcamera_naji[3]+1
endif
call SetCameraField(CAMERA_FIELD_ANGLE_OF_ATTACK,Rcamera_naji[2],.01)
call SetCameraField(CAMERA_FIELD_ROTATION,Rcamera_naji[3],.01)
call PanCameraToTimed(Rcamera_naji[0],Rcamera_naji[1],0)
endif
endfunction
function TestA63_naji takes nothing returns nothing
local integer i_naji=0
if GetTriggerEventId()==EVENT_PLAYER_ARROW_UP_UP then
set Bcamera_naji[1]=false
elseif GetTriggerEventId()==EVENT_PLAYER_ARROW_DOWN_UP then
set Bcamera_naji[2]=false
elseif GetTriggerEventId()==EVENT_PLAYER_ARROW_LEFT_UP then
set Bcamera_naji[3]=false
elseif GetTriggerEventId()==EVENT_PLAYER_ARROW_RIGHT_UP then
set Bcamera_naji[4]=false
endif
loop
set i_naji=i_naji+1
if i_naji>=5 then
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
if Tcamera_naji==null then
set Tcamera_naji=CreateTimer()
call TimerStart(Tcamera_naji,.01,true,function TestA64_naji)
endif
set Rcamera_naji[0]=GetCameraTargetPositionX()
set Rcamera_naji[1]=GetCameraTargetPositionY()
if GetTriggerEventId()==EVENT_PLAYER_ARROW_UP_DOWN then
set Bcamera_naji[1]=true
elseif GetTriggerEventId()==EVENT_PLAYER_ARROW_DOWN_DOWN then
set Bcamera_naji[2]=true
elseif GetTriggerEventId()==EVENT_PLAYER_ARROW_LEFT_DOWN then
set Bcamera_naji[3]=true
elseif GetTriggerEventId()==EVENT_PLAYER_ARROW_RIGHT_DOWN then
set Bcamera_naji[4]=true
endif
endfunction
function TestA61_naji takes nothing returns nothing
if Bcamera_naji[0] then
set Bcamera_naji[0]=false
call DestroyTimer(Tcamera_naji)
call DisableTrigger(Ttest_naji[58])
call DisableTrigger(Ttest_naji[59])
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000关闭|cffFFFF00镜头模式|r")
else
set Bcamera_naji[0]=true
call EnableTrigger(Ttest_naji[58])
call EnableTrigger(Ttest_naji[59])
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,"|cffFF0000开启|cffFFFF00镜头模式|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,10,"|cffFF0000用上下左右对镜头进行调整，镜头距离请用|cffFFFF00'cd|cffFF0000代码，重置镜头请用|cffFFFF00'cr|cffFF0000代码|r")
endif
endfunction
function TestA60_naji takes nothing returns nothing
local group g_naji=CreateGroup()
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
if GetLocalPlayer()==GetTriggerPlayer() then
call SetCameraTargetController(FirstOfGroup(g_naji),0,0,false)
endif
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已锁定|cffFF0000玩家选择的第一个单位|cffFFFF00的镜头，按下|cffFF0000Ctrl+C|cffFFFF00可解锁|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA59_naji takes nothing returns nothing
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call UnitRemoveBuffs(u_naji,true,true)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已清除玩家选择的所有单位的|cffFF0000魔法效果|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA58_naji takes nothing returns nothing
local integer i_naji=0
call ClearTextMessages()
loop
call DisplayTextToPlayer(Player(i_naji),0,0,"|cffFFFF00你已经被|cffFF0000踢出游戏|r")
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
endfunction
function TestA57_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))-1
if i_naji>=0 and i_naji<=15 then
if GetPlayerSlotState(Player(i_naji))==PLAYER_SLOT_STATE_PLAYING then
if GetLocalPlayer()==Player(i_naji) then
call TimerStart(CreateTimer(),0,true,function TestA58_naji)
endif
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已将|cffFF0000"+GetPlayerName(Player(i_naji))+"|cffFFFF00踢出游戏！|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00这个玩家位|cffFF0000并不存在玩家|r")
endif
else
call DisplayTextToPlayer(Ptest_naji,0,0,"|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
endif
endfunction
function TestA56_naji takes nothing returns nothing
local integer i_naji=S2ID_naji(SubString(GetEventPlayerChatString(),3,7))
local group g_naji
local item tt
local integer z_naji=1
if StringLength(GetEventPlayerChatString())>=8 then
set z_naji=S2I(SubString(GetEventPlayerChatString(),8,StringLength(GetEventPlayerChatString())))
if z_naji<=0 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000数值部分请输入|cffFFFF00大于0|cffFF0000的整数|r")
return
endif
endif
set g_naji=CreateGroup()
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00已执行对应行为，若没有效果，请确定你输入了正确的|cffFF0000物体编辑器ID|r")
if UnitAddAbility(FirstOfGroup(g_naji),i_naji)==false then
if StringLength(GetEventPlayerChatString())>=8 then
call SetUnitAbilityLevel(FirstOfGroup(g_naji),i_naji,z_naji)
else
call UnitRemoveAbility(FirstOfGroup(g_naji),i_naji)
call UnitMakeAbilityPermanent(FirstOfGroup(g_naji),false,i_naji)
endif
else
call UnitMakeAbilityPermanent(FirstOfGroup(g_naji),true,i_naji)
call SetUnitAbilityLevel(FirstOfGroup(g_naji),i_naji,z_naji)
endif
loop
call CreateUnit(GetTriggerPlayer(),i_naji,GetUnitX(FirstOfGroup(g_naji)),GetUnitY(FirstOfGroup(g_naji)),0)
set tt=CreateItem(i_naji,GetUnitX(FirstOfGroup(g_naji)),GetUnitY(FirstOfGroup(g_naji)))
if tt!=null then
call SetItemPlayer(tt,GetTriggerPlayer(),false)
set tt=null
endif
call CreateDestructable(i_naji,GetUnitX(FirstOfGroup(g_naji)),GetUnitY(FirstOfGroup(g_naji)),0,1,0)
set z_naji=z_naji-1
exitwhen z_naji<=0
endloop
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA55_naji takes nothing returns nothing
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
if IsUnitInGroup(u_naji,Guw_naji) then
call SetUnitPathing(u_naji,true)
call GroupRemoveUnit(Guw_naji,u_naji)
else
call SetUnitPathing(u_naji,false)
call GroupAddUnit(Guw_naji,u_naji)
endif
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000已切换玩家选择的所有单位的|cffFFFF00触碰|cffFF0000状态|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA54_naji takes nothing returns nothing
local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
if GetLocalPlayer()==GetTriggerPlayer() then
if r_naji>0 then
call SetCameraField(CAMERA_FIELD_FARZ,r_naji,0)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000玩家当前镜头的远景截断距离为|cffFFFF00"+R2S(r_naji)+"|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000数值错误！|cffFFFF00请输入|cffFF0000大于0|cffFFFF00的实数|r")
endif
endif
endfunction
function TestA53_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))-1
local group g_naji=CreateGroup()
local unit u_naji
if i_naji>=0 and i_naji<=15 then
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call SetUnitOwner(u_naji,Player(i_naji),true)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000玩家选择的所有单位|cffFFFF00的所有者已改变为|cffFF0000"+GetPlayerName(Player(i_naji))+"|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
else
call DisplayTextToPlayer(Ptest_naji,0,0,"|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA52_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))-1
local integer z_naji=StringLength(GetEventPlayerChatString())-1
loop
set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),z_naji,z_naji+1)
if Sdummy_naji[1]=="," then
set z_naji=S2I(SubString(GetEventPlayerChatString(),z_naji+1,StringLength(GetEventPlayerChatString())))
exitwhen true
endif
set z_naji=z_naji-1
if z_naji<=0 then
set z_naji=GetPlayerId(GetTriggerPlayer())+1
exitwhen true
endif
endloop
if z_naji<=0 or z_naji>=17 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
return
endif
if i_naji>=0 and i_naji<=15 then
if IsPlayerAlly(Player(i_naji),GetTriggerPlayer()) then
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_PASSIVE,false)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_XP,false)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_VISION,false)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_SPELLS,false)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_HELP_REQUEST,false)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_HELP_RESPONSE,false)
call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_PASSIVE,false)
call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_SHARED_XP,false)
call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_SHARED_VISION,false)
call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_SHARED_SPELLS,false)
call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_HELP_REQUEST,false)
call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_HELP_RESPONSE,false)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000"+GetPlayerName(Player(z_naji-1))+"|cffFFFF00和|cffFF0000"+GetPlayerName(Player(i_naji))+"|cffFFFF00成为|cffFF0000敌人|r")
else
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_PASSIVE,true)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_XP,true)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_VISION,true)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_SPELLS,true)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_HELP_REQUEST,true)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_HELP_RESPONSE,true)
call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_PASSIVE,true)
call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_SHARED_XP,true)
call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_SHARED_VISION,true)
call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_SHARED_SPELLS,true)
call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_HELP_REQUEST,true)
call SetPlayerAlliance(Player(z_naji-1),Player(i_naji),ALLIANCE_HELP_RESPONSE,true)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000"+GetPlayerName(Player(z_naji-1))+"|cffFFFF00和|cffFF0000"+GetPlayerName(Player(i_naji))+"|cffFFFF00成为|cffFF0000同盟|r")
endif
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
endif
endfunction
function TestA51_naji takes nothing returns nothing
if GetLocalPlayer()==Ptest_naji then
call ClearTextMessages()
call ResetToGameCamera(0)
loop
call DestroyQuest(Q_naji[Iquest_naji])
set Iquest_naji=Iquest_naji-1
exitwhen Iquest_naji==0
endloop
endif
loop
call DestroyTrigger(Ttest_naji[Itrigger_naji])
set Itrigger_naji=Itrigger_naji-1
exitwhen Itrigger_naji==0
endloop
if Ttest_naji[0]!=null then
call DestroyTrigger(Ttest_naji[0])
endif
if Ibm_naji>=1 then
loop
set Ibm_naji=Ibm_naji-1
call DestroyTextTag(Tbm_naji[Ibm_naji])
set Tbm_naji[Ibm_naji]=null
exitwhen Ibm_naji<=0
endloop
endif
loop
call RemoveWeatherEffect(Weather_naji[Iweather_naji])
set Iweather_naji=Iweather_naji-1
exitwhen Iweather_naji<=0
endloop
call DialogDestroy(Dnaji_naji[0])
call DialogDestroy(Dnaji_naji[1])
call DialogDestroy(Dnaji_naji[2])
call DestroyGroup(Gcd_naji[0])
call DestroyGroup(Gcd_naji[1])
call DestroyGroup(Gms_naji)
call DestroyGroup(Guw_naji)
call RemoveRegion(Rworld_naji)
call DisplayTextToPlayer(GetLocalPlayer(),0,0,"|cffFF0000已移除|cffFFFF00najitest|cffFF0000测试系统")
endfunction
function TestA50_naji takes nothing returns nothing
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call KillUnit(u_naji)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00杀死|cffFF0000玩家选择的所有单位|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA49_naji takes nothing returns nothing
local real array r_naji
local integer a_naji=1
local integer b_naji=3
local integer c_naji=3
set r_naji[1]=1
set r_naji[2]=GetPlayerId(GetTriggerPlayer())+1
loop
set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),b_naji,b_naji+1)
if Sdummy_naji[1]=="," then
set r_naji[a_naji]=S2R(SubString(GetEventPlayerChatString(),c_naji,b_naji))
set a_naji=a_naji+1
set c_naji=b_naji+1
if a_naji>=2 and c_naji<StringLength(GetEventPlayerChatString()) then
set r_naji[2]=S2R(SubString(GetEventPlayerChatString(),c_naji,StringLength(GetEventPlayerChatString())))
exitwhen true
endif
endif
set b_naji=b_naji+1
if b_naji>=StringLength(GetEventPlayerChatString()) then
set r_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(),c_naji,StringLength(GetEventPlayerChatString())))
exitwhen true
endif
endloop
if R2I(r_naji[2])>=1 and R2I(r_naji[2])<=16 then
call SetMapFlag(MAP_USE_HANDICAPS,true)
call SetPlayerHandicap(Player(R2I(r_naji[2])-1),r_naji[1])
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000已设置|cff00FFFF"+GetPlayerName(Player(R2I(r_naji[2])-1))+"|cffFF0000的生命障碍为|cffFFFF00"+R2S(r_naji[1])+"|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000玩家参数输入数值错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
endif
endfunction
function TestA48_naji takes nothing returns nothing
local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
call SetTimeOfDayScale(r_naji/100)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置时间流逝速度为|cffFFFF00"+R2S(r_naji)+"%|r")
endfunction
function TestA47_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call SetUnitUserData(u_naji,i_naji)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的自定义值为|cffFFFF00"+I2S(i_naji)+"|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA46_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
if i_naji>=1 then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
if IsUnitType(u_naji,UNIT_TYPE_HERO) then
call SetHeroInt(u_naji,i_naji,true)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有英雄的智力为|cffFFFF00"+I2S(i_naji)+"|r")
endif
endloop
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
endif
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA45_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
if i_naji>=1 then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
if IsUnitType(u_naji,UNIT_TYPE_HERO) then
call SetHeroAgi(u_naji,i_naji,true)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有英雄的敏捷为|cffFFFF00"+I2S(i_naji)+"|r")
endif
endloop
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
endif
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA44_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
if i_naji>=1 then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
if IsUnitType(u_naji,UNIT_TYPE_HERO) then
call SetHeroStr(u_naji,i_naji,true)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有英雄的力量为|cffFFFF00"+I2S(i_naji)+"|r")
endif
endloop
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入错误！请输入|cffFFFF00大于等于1|cffFF0000的整数|r")
endif
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA43_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
if IsUnitType(u_naji,UNIT_TYPE_HERO) then
if GetHeroSkillPoints(u_naji)+i_naji>=0 then
call UnitModifySkillPoints(u_naji,i_naji)
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF80C0"+GetUnitName(u_naji)+"|cffFF0000的剩余技能点不能|cffFFFF00低于0|cffFF0000！|r")
endif
endif
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000增加玩家选择的所有英雄的技能点数：|cffFFFF00"+I2S(i_naji)+"|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA42_naji takes nothing returns nothing
local real r_naji=S2R(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
if UnitAddAbility(u_naji,$41726176) then
call UnitRemoveAbility(u_naji,$41726176)
endif
call SetUnitFlyHeight(u_naji,r_naji,0)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的飞行高度为|cffFFFF00"+R2S(r_naji)+"|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA41_naji takes nothing returns nothing
local real r_naji=S2R(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
if r_naji>0 then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call SetUnitAcquireRange(u_naji,r_naji)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的主动攻击范围为|cffFFFF00"+R2S(r_naji)+"|r")
else
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call SetUnitAcquireRange(u_naji,GetUnitDefaultAcquireRange(u_naji))
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认主动攻击范围|cffFF0000。请输入|cffFFFF00大于0|cffFF0000的实数|r")
endif
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA40_naji takes nothing returns nothing
local real r_naji=S2R(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
if r_naji>=0 and r_naji<=1 then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call SetUnitTurnSpeed(u_naji,r_naji)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的转身速率为|cffFFFF00"+R2S(r_naji)+"|r")
else
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call SetUnitTurnSpeed(u_naji,GetUnitDefaultTurnSpeed(u_naji))
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认转身速率|cffFF0000。请输入|cffFFFF000~1|cffFF0000之间的实数|r")
endif
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA39_naji takes nothing returns nothing
local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
if r_naji>=0 and r_naji<=522 then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call h__SetUnitMoveSpeed(u_naji,r_naji)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的移动速度为|cffFFFF00"+R2S(r_naji)+"|r")
else
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call h__SetUnitMoveSpeed(u_naji,GetUnitDefaultMoveSpeed(u_naji))
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入数值错误！已还原玩家选择的所有单位的|cffFFFF00默认移动速度|cffFF0000。请输入|cffFFFF000~522|cffFF0000之间的实数|r")
endif
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA38_naji takes nothing returns nothing
local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
if r_naji>=0 and r_naji<=24 then
call SetFloatGameState(GAME_STATE_TIME_OF_DAY,r_naji)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000当前时间设置为|cffFFFF00"+R2S(r_naji)+"|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000请输入|cffFFFF000~24|cffFF0000之间的实数|r")
endif
endfunction
function TestA37_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
call SetRandomSeed(i_naji)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000随机种子设置为|cffFFFF00"+I2S(i_naji)+"|r")
endfunction
function TestA36_naji takes nothing returns nothing
local group g_naji
local unit u_naji
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
local integer z_naji=StringLength(GetEventPlayerChatString())-1
loop
set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),z_naji,z_naji+1)
if Sdummy_naji[1]=="," then
set z_naji=S2I(SubString(GetEventPlayerChatString(),z_naji+1,StringLength(GetEventPlayerChatString())))
exitwhen true
endif
set z_naji=z_naji-1
if z_naji<=0 then
set z_naji=1
exitwhen true
endif
endloop
if z_naji<=0 or z_naji>=7 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000第二参数输入错误！请输入|cffFFFF001~6|cffFF0000间的整数|r")
return
endif
set g_naji=CreateGroup()
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
set u_naji=FirstOfGroup(g_naji)
if u_naji!=null then
if UnitItemInSlot(u_naji,z_naji-1)!=null then
if i_naji<=0 then
set i_naji=0
endif
call SetItemCharges(UnitItemInSlot(u_naji,z_naji-1),i_naji)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000该单位|cffFFFF00第"+I2S(z_naji)+"格物品栏|cffFF0000的可允次数设置为|cffFFFF00"+I2S(i_naji)+"|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000该单位|cffFFFF00第"+I2S(z_naji)+"格物品栏|cffFF0000不存在物品|r")
endif
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA35_naji takes nothing returns nothing
loop
set Ibm_naji=Ibm_naji-1
call DestroyTextTag(Tbm_naji[Ibm_naji])
set Tbm_naji[Ibm_naji]=null
exitwhen Ibm_naji<=0
endloop
call DisplayTextToPlayer(GetLocalPlayer(),0,0,"|cffFF0000已清除所有|cffFFFF00备忘文字|r")
endfunction
function TestA34_naji takes nothing returns nothing
set Tbm_naji[Ibm_naji]=CreateTextTag()
call SetTextTagText(Tbm_naji[Ibm_naji],SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())),20*.023/10)
call SetTextTagPos(Tbm_naji[Ibm_naji],GetCameraTargetPositionX(),GetCameraTargetPositionY(),0)
call SetTextTagColor(Tbm_naji[Ibm_naji],0,255,0,255)
set Ibm_naji=Ibm_naji+1
endfunction
function TestA33_naji takes nothing returns nothing
local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
if r_naji>100 then
set r_naji=1
endif
if r_naji<0 then
set r_naji=0
endif
set r_naji=r_naji/100
if GetLocalPlayer()==GetTriggerPlayer() then
call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_AMBIENTSOUNDS,r_naji)
call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_SPELLS,r_naji)
call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_COMBAT,r_naji)
call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_FIRE,r_naji)
call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITMOVEMENT,r_naji)
call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITSOUNDS,r_naji)
call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UI,r_naji)
endif
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000你当前的音效音量为：|cffFFFF00"+I2S(R2I(r_naji*100))+"%|r")
endfunction
function TestA32_naji takes nothing returns nothing
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000骰得点数：|cffFFFF00"+I2S(GetRandomInt(1,100))+"|r")
endfunction
function TestA31_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
if i_naji>100 then
set i_naji=100
endif
if i_naji<0 then
set i_naji=0
endif
if GetLocalPlayer()==GetTriggerPlayer() then
call SetMusicVolume(R2I(I2R(i_naji)*1.27))
endif
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000你当前的音乐音量为：|cffFFFF00"+I2S(i_naji)+"%|r")
endfunction
function TestA30_naji takes nothing returns nothing
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
if IsUnitPaused(u_naji) then
call PauseUnit(u_naji,false)
else
call PauseUnit(u_naji,true)
endif
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000已切换玩家选择的所有单位的|cffFFFF00暂停状态|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
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
set Sdummy_naji[3]=GetPlayerName(GetTriggerPlayer())+"（玩家"+I2S(GetPlayerId(GetTriggerPlayer())+1)+"）"
set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetEventDamageSource()))+"（玩家"+I2S(GetPlayerId(GetOwningPlayer(GetEventDamageSource()))+1)+"）"
else
set Sdummy_naji[3]=""
set Sdummy_naji[4]=""
endif
if Bxy_naji then
set Sdummy_naji[1]="（"+R2S(GetUnitX(GetTriggerUnit()))+","+R2S(GetUnitY(GetTriggerUnit()))+"）"
set Sdummy_naji[2]="（"+R2S(GetWidgetX(GetEventDamageSource()))+","+R2S(GetWidgetY(GetEventDamageSource()))+"）"
else
set Sdummy_naji[1]=""
set Sdummy_naji[2]=""
endif
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF8000受到了|cffFFFF00"+Sdummy_naji[0]+"|cffFF8000点伤害！|cff00FFFF伤害来源为|r"+Sdummy_naji[4]+"|cffFFFF00"+GetUnitName(GetEventDamageSource())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetEventDamageSource()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
else
if GetLocalPlayer()==Ptest_naji then
set tt=CreateTextTag()
call SetTextTagText(tt,Sdummy_naji[0],13*.023/10)
call SetTextTagPosUnit(tt,GetTriggerUnit(),0)
call SetTextTagColor(tt,255,0,0,255)
call SetTextTagVelocity(tt,150*.071/128*Cos(Rdummy_naji*.01745),150*.071/128*Sin(Rdummy_naji*.01745))
call SetTextTagPermanent(tt,false)
call SetTextTagLifespan(tt,1)
call SetTextTagFadepoint(tt,.8)
set tt=null
set Rdummy_naji=Rdummy_naji+30
if Rdummy_naji>=360 then
set Rdummy_naji=Rdummy_naji-360
endif
endif
endif
endfunction
function TestA28_naji takes nothing returns nothing
if GetUnitAbilityLevel(GetTriggerUnit(),$416C6F63)==0 then
call TriggerRegisterUnitEvent(Ttest_naji[0],GetTriggerUnit(),EVENT_UNIT_DAMAGED)
endif
endfunction
function TestA27_naji takes nothing returns nothing
local group g_naji=CreateGroup()
local integer i_naji=0
local integer z_naji
loop
call GroupEnumUnitsOfPlayer(g_naji,Player(i_naji),null)
set z_naji=0
loop
exitwhen FirstOfGroup(g_naji)==null
call GroupRemoveUnit(g_naji,FirstOfGroup(g_naji))
set z_naji=z_naji+1
endloop
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,15,"|cff00FFFF("+I2S(i_naji+1)+")|cffFF0000"+GetPlayerName(Player(i_naji))+"|r：|cffFF80C0总单位数|cffFFFF00"+I2S(z_naji)+"|r：|cffFF80C0金钱|cffFFFF00"+I2S(GetPlayerState(Player(i_naji),PLAYER_STATE_RESOURCE_GOLD))+"|r：|cffFF80C0木头|cffFFFF00"+I2S(GetPlayerState(Player(i_naji),PLAYER_STATE_RESOURCE_LUMBER))+"|r：|cffFF80C0已用/可用人口|cffFFFF00"+I2S(GetPlayerState(Player(i_naji),PLAYER_STATE_RESOURCE_FOOD_USED))+"|r/|cffFFFF00"+I2S(GetPlayerState(Player(i_naji),PLAYER_STATE_RESOURCE_FOOD_CAP)))
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA26_naji takes nothing returns nothing
if Bpause_naji then
call PauseGame(false)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000继续游戏|r")
set Bpause_naji=false
else
call PauseGame(true)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000暂停游戏|r")
set Bpause_naji=true
endif
endfunction
function TestA25_naji takes nothing returns nothing
local real r_naji=S2R(SubString(GetEventPlayerChatString(),4,StringLength(GetEventPlayerChatString())))
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call SetUnitTimeScale(u_naji,r_naji)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的动画播放速率为|cffFFFF00"+R2S(r_naji)+"|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA24_naji takes nothing returns nothing
local integer array i_naji
local integer a_naji=1
local integer b_naji=4
local integer c_naji=4
local group g_naji
local unit u_naji
set i_naji[1]=0
set i_naji[2]=0
set i_naji[3]=0
set i_naji[4]=0
loop
set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),b_naji,b_naji+1)
if Sdummy_naji[1]=="," then
set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(),c_naji,b_naji))
set a_naji=a_naji+1
set c_naji=b_naji+1
if a_naji>=4 then
set i_naji[4]=S2I(SubString(GetEventPlayerChatString(),c_naji,StringLength(GetEventPlayerChatString())))
exitwhen true
endif
endif
set b_naji=b_naji+1
if b_naji>=StringLength(GetEventPlayerChatString()) then
set i_naji[a_naji]=S2I(SubString(GetEventPlayerChatString(),c_naji,StringLength(GetEventPlayerChatString())))
exitwhen true
endif
endloop
if i_naji[1]>=0 and i_naji[1]<=255 and i_naji[2]>=0 and i_naji[2]<=255 and i_naji[3]>=0 and i_naji[3]<=255 and i_naji[4]>=0 and i_naji[4]<=255 then
set g_naji=CreateGroup()
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call SetUnitVertexColor(u_naji,i_naji[1],i_naji[2],i_naji[3],i_naji[4])
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000设置玩家选择的所有单位的染色为|cffFFFF00"+I2S(i_naji[1])+"|cffFF0000,|cffFFFF00"+I2S(i_naji[2])+"|cffFF0000,|cffFFFF00"+I2S(i_naji[3])+"|cffFF0000,|cffFFFF00"+I2S(i_naji[4])+"|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入数值错误！请输入|cffFFFF000~255|cffFF0000之间的整数|r")
endif
endfunction
function TestA23_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))-1
local integer z_naji=StringLength(GetEventPlayerChatString())-1
loop
set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),z_naji,z_naji+1)
if Sdummy_naji[1]=="," then
set z_naji=S2I(SubString(GetEventPlayerChatString(),z_naji+1,StringLength(GetEventPlayerChatString())))
exitwhen true
endif
set z_naji=z_naji-1
if z_naji<=0 then
set z_naji=GetPlayerId(GetTriggerPlayer())+1
exitwhen true
endif
endloop
if z_naji<=0 or z_naji>=17 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
return
endif
if i_naji>=0 and i_naji<=15 then
if GetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_ADVANCED_CONTROL) then
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_VISION,false)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_CONTROL,false)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_ADVANCED_CONTROL,false)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000"+GetPlayerName(Player(z_naji-1))+"|cffFFFF00失去了|cffFF0000"+GetPlayerName(Player(i_naji))+"|cffFFFF00的|cffFF0000控制权|r")
else
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_VISION,true)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_CONTROL,true)
call SetPlayerAlliance(Player(i_naji),Player(z_naji-1),ALLIANCE_SHARED_ADVANCED_CONTROL,true)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000"+GetPlayerName(Player(z_naji-1))+"|cffFFFF00获得了|cffFF0000"+GetPlayerName(Player(i_naji))+"|cffFFFF00的|cffFF0000控制权|r")
endif
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入序号错误！请输入|cffFFFF001~16|cffFF0000之间的整数|r")
endif
endfunction
function TestA22_naji takes nothing returns nothing
local group g_naji=CreateGroup()
local unit u_naji
local integer i_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
set u_naji=FirstOfGroup(g_naji)
if u_naji!=null then
set i_naji=GetUnitTypeId(u_naji)
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"===============*****===============")
if IsUnitType(u_naji,UNIT_TYPE_HERO) then
set Sdummy_naji[0]=GetHeroProperName(u_naji)
else
set Sdummy_naji[0]="无"
endif
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0单位名称/称谓：|cffFFFF00"+GetUnitName(u_naji)+"/"+Sdummy_naji[0]+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0ID256进制/10进制：|cffFFFF00"+ID2S_naji(GetUnitTypeId(u_naji))+"/"+I2S(GetUnitTypeId(u_naji))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0存储地址：|cffFFFF00"+I2S(GetHandleId(u_naji))+"|r")
if IsUnitRace(u_naji,RACE_HUMAN) then
set Sdummy_naji[0]="人族"
endif
if IsUnitRace(u_naji,RACE_ORC) then
set Sdummy_naji[0]="兽族"
endif
if IsUnitRace(u_naji,RACE_UNDEAD) then
set Sdummy_naji[0]="不死族"
endif
if IsUnitRace(u_naji,RACE_NIGHTELF) then
set Sdummy_naji[0]="暗夜精灵族"
endif
if IsUnitRace(u_naji,RACE_DEMON) then
set Sdummy_naji[0]="恶魔"
endif
if IsUnitRace(u_naji,ConvertRace(0)) then
set Sdummy_naji[0]="没有"
endif
if IsUnitRace(u_naji,ConvertRace(7)) then
set Sdummy_naji[0]="其它"
endif
if IsUnitRace(u_naji,ConvertRace(8)) then
set Sdummy_naji[0]="野外生物"
endif
if IsUnitRace(u_naji,ConvertRace(9)) then
set Sdummy_naji[0]="平民"
endif
if IsUnitRace(u_naji,RACE_HUMAN) then
set Sdummy_naji[0]="人族"
endif
if IsUnitRace(u_naji,ConvertRace(10)) then
set Sdummy_naji[0]="动物"
endif
if IsUnitRace(u_naji,ConvertRace(11)) then
set Sdummy_naji[0]="娜迦族"
endif
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0种族/等级：|cffFFFF00"+Sdummy_naji[0]+"/"+I2S(GetUnitLevel(u_naji))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0所属玩家/cj索引：|cffFFFF00"+GetPlayerName(GetOwningPlayer(u_naji))+"/"+I2S(GetPlayerId(GetOwningPlayer(u_naji)))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0坐标：|cffFFFF00("+R2S(GetUnitX(u_naji))+","+R2S(GetUnitY(u_naji))+")|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0面向角度/弧度：|cffFFFF00"+R2S(GetUnitFacing(u_naji))+"/"+R2S(.017*GetUnitFacing(u_naji))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0自定义值：|cffFFFF00"+I2S(GetUnitUserData(u_naji))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0附加值：|cffFFFF00"+I2S(GetUnitPointValue(u_naji))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0主动攻击范围当前/默认：|cffFFFF00"+R2S(GetUnitAcquireRange(u_naji))+"/"+R2S(GetUnitDefaultAcquireRange(u_naji))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0移动速度当前/默认：|cffFFFF00"+R2S(GetUnitMoveSpeed(u_naji))+"/"+R2S(GetUnitDefaultMoveSpeed(u_naji))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0转身速率当前/默认：|cffFFFF00"+R2S(GetUnitTurnSpeed(u_naji))+"/"+R2S(GetUnitDefaultTurnSpeed(u_naji))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0飞行高度当前/默认：|cffFFFF00"+R2S(GetUnitFlyHeight(u_naji))+"/"+R2S(GetUnitDefaultFlyHeight(u_naji))+"|r")
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0拥有buff数量全部/正面/负面：|cffFFFF00"+I2S(UnitCountBuffsEx(u_naji,true,true,false,false,true,true,false))+"/"+I2S(UnitCountBuffsEx(u_naji,true,false,false,false,true,true,false))+"/"+I2S(UnitCountBuffsEx(u_naji,false,true,false,false,true,true,false))+"|r")
set Sdummy_naji[0]=" "
if IsUnitIdType(i_naji,UNIT_TYPE_MELEE_ATTACKER) then
set Sdummy_naji[0]=Sdummy_naji[0]+"近战，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_RANGED_ATTACKER) then
set Sdummy_naji[0]=Sdummy_naji[0]+"远程，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_STRUCTURE) then
set Sdummy_naji[0]=Sdummy_naji[0]+"建筑，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_HERO) then
set Sdummy_naji[0]=Sdummy_naji[0]+"英雄，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_GROUND) then
set Sdummy_naji[0]=Sdummy_naji[0]+"地面，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_FLYING) then
set Sdummy_naji[0]=Sdummy_naji[0]+"飞行，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_SUMMONED) then
set Sdummy_naji[0]=Sdummy_naji[0]+"召唤单位，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_PLAGUED) then
set Sdummy_naji[0]=Sdummy_naji[0]+"附带瘟疫，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_SNARED) then
set Sdummy_naji[0]=Sdummy_naji[0]+"被束缚的，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_STUNNED) then
set Sdummy_naji[0]=Sdummy_naji[0]+"被眩晕的，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_GIANT) then
set Sdummy_naji[0]=Sdummy_naji[0]+"泰坦，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_TAUREN) then
set Sdummy_naji[0]=Sdummy_naji[0]+"牛头人，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_UNDEAD) then
set Sdummy_naji[0]=Sdummy_naji[0]+"不死族，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_MECHANICAL) then
set Sdummy_naji[0]=Sdummy_naji[0]+"机械，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_ANCIENT) then
set Sdummy_naji[0]=Sdummy_naji[0]+"古树，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_PEON) then
set Sdummy_naji[0]=Sdummy_naji[0]+"工人，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_TOWNHALL) then
set Sdummy_naji[0]=Sdummy_naji[0]+"城镇大厅，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_SAPPER) then
set Sdummy_naji[0]=Sdummy_naji[0]+"地精工兵，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_POISONED) then
set Sdummy_naji[0]=Sdummy_naji[0]+"中毒的，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_POLYMORPHED) then
set Sdummy_naji[0]=Sdummy_naji[0]+"被变形的，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_SLEEPING) then
set Sdummy_naji[0]=Sdummy_naji[0]+"被催眠的，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_RESISTANT) then
set Sdummy_naji[0]=Sdummy_naji[0]+"有抗性皮肤的，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_ETHEREAL) then
set Sdummy_naji[0]=Sdummy_naji[0]+"处于虚无状态，"
endif
if IsUnitIdType(i_naji,UNIT_TYPE_MAGIC_IMMUNE) then
set Sdummy_naji[0]=Sdummy_naji[0]+"魔法免疫，"
endif
set Sdummy_naji[0]=SubString(Sdummy_naji[0],1,StringLength(Sdummy_naji[0])-2)
call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,0,60,"|cffFF80C0可识别类型：|cffFFFF00"+Sdummy_naji[0]+"||r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
set u_naji=null
endfunction
function TestA21_naji takes nothing returns nothing
if GetLocalPlayer()==GetTriggerPlayer() then
call ResetToGameCamera(0)
endif
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000重置镜头|r")
endfunction
function TestA20_naji takes nothing returns nothing
if GetLocalPlayer()==GetTriggerPlayer() then
call ClearTextMessages()
endif
endfunction
function TestA19_naji takes nothing returns nothing
if Bpn_naji then
set Sdummy_naji[3]=GetPlayerName(GetOwningPlayer(GetTriggerUnit()))+"（玩家"+I2S(GetPlayerId(GetOwningPlayer(GetTriggerUnit()))+1)+"）"
else
set Sdummy_naji[3]=""
endif
if Bxy_naji then
set Sdummy_naji[1]="（"+R2S(GetUnitX(GetTriggerUnit()))+","+R2S(GetUnitY(GetTriggerUnit()))+"）"
set Sdummy_naji[2]="（"+R2S(GetWidgetX(GetKillingUnit()))+","+R2S(GetWidgetY(GetKillingUnit()))+"）"
else
set Sdummy_naji[1]=""
set Sdummy_naji[2]=""
endif
if GetTriggerPlayer()==null then
set unitnumber_lh=unitnumber_lh+1
set createdunitnumber_lh=createdunitnumber_lh+1
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0第一次进入地图,当前单位数："+I2S(unitnumber_lh)+",创建单位总数："+I2S(createdunitnumber_lh)+"|r")
else
if Bpn_naji then
set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetKillingUnit()))+"（玩家"+I2S(GetPlayerId(GetOwningPlayer(GetKillingUnit()))+1)+"）"
else
set Sdummy_naji[4]=""
endif
set unitnumber_lh=unitnumber_lh-1
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0死亡！凶手是：|r"+Sdummy_naji[4]+"|cffFFFF00"+GetUnitName(GetKillingUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetKillingUnit()))+"|cffFFFF00"+Sdummy_naji[2]+",当前单位数："+I2S(unitnumber_lh)+",创建单位总数："+I2S(createdunitnumber_lh)+"|r")
endif
endfunction
function TestA18_naji takes nothing returns nothing
call SetPlayerName(GetTriggerPlayer(),SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000你当前的名称为：|cffFFFF00"+GetPlayerName(GetTriggerPlayer())+"|r")
endfunction
function TestA17_naji takes nothing returns nothing
local location p_naji
if Bpn_naji then
set Sdummy_naji[3]=GetPlayerName(GetTriggerPlayer())+"（玩家"+I2S(GetPlayerId(GetTriggerPlayer())+1)+"）"
else
set Sdummy_naji[3]=""
endif
if Bxy_naji then
set Sdummy_naji[1]="（"+R2S(GetUnitX(GetTriggerUnit()))+","+R2S(GetUnitY(GetTriggerUnit()))+"）"
set Sdummy_naji[2]="（"+R2S(GetWidgetX(GetOrderTarget()))+","+R2S(GetWidgetY(GetOrderTarget()))+"）"
else
set Sdummy_naji[1]=""
set Sdummy_naji[2]=""
endif
set Sdummy_naji[0]=OrderId2String(GetIssuedOrderId())
if Sdummy_naji[0]==null then
set Sdummy_naji[0]=UnitId2String(GetIssuedOrderId())
if Sdummy_naji[0]==null then
set Sdummy_naji[0]=IDidentify_naji(GetIssuedOrderId())
if Sdummy_naji[0]==null or Sdummy_naji[0]=="Default string" then
set Sdummy_naji[0]="null"
else
set Sdummy_naji[0]=Sdummy_naji[0]+"|cff00FF00"+ID2S_naji(GetIssuedOrderId())
endif
endif
endif
if GetOrderTargetUnit()==null then
if GetOrderTargetDestructable()==null then
if GetOrderTargetItem()==null then
set p_naji=GetOrderPointLoc()
if p_naji==null then
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0发布了|cffFFFF00"+Sdummy_naji[0]+"|cffFF0000（"+I2S(GetIssuedOrderId())+"）|r")
else
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0发布了|cffFFFF00"+Sdummy_naji[0]+"|cffFF0000（"+I2S(GetIssuedOrderId())+"）|cff00FFFF目标点为|cffFFFF00（"+R2S(GetOrderPointX())+","+R2S(GetOrderPointY())+"）|r")
endif
call RemoveLocation(p_naji)
set p_naji=null
else
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0发布了|cffFFFF00"+Sdummy_naji[0]+"|cffFF0000（"+I2S(GetIssuedOrderId())+"）|cff00FFFF目标为|cffFFFF00"+GetItemName(GetOrderTargetItem())+"|cffFF0000"+ID2S_naji(GetItemTypeId(GetOrderTargetItem()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
endif
else
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0发布了|cffFFFF00"+Sdummy_naji[0]+"|cffFF0000（"+I2S(GetIssuedOrderId())+"）|cff00FFFF目标为|cffFFFF00"+GetDestructableName(GetOrderTargetDestructable())+"|cffFF0000"+ID2S_naji(GetDestructableTypeId(GetOrderTargetDestructable()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
endif
else
if Bpn_naji then
set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetOrderTargetUnit()))+"（玩家"+I2S(GetPlayerId(GetOwningPlayer(GetOrderTargetUnit()))+1)+"）"
else
set Sdummy_naji[4]=""
endif
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF80C0发布了|cffFFFF00"+Sdummy_naji[0]+"|cffFF0000（"+I2S(GetIssuedOrderId())+"）|cff00FFFF目标为|r"+Sdummy_naji[4]+"|cffFFFF00"+GetUnitName(GetOrderTargetUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetOrderTargetUnit()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
endif
endfunction
function TestA16_naji takes nothing returns nothing
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call RemoveUnit(u_naji)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFFFF00删除|cffFF0000玩家选择的所有单位|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA15_naji takes nothing returns nothing
local real r_naji=S2R(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
if GetLocalPlayer()==GetTriggerPlayer() then
if r_naji>0 then
call SetCameraField(CAMERA_FIELD_TARGET_DISTANCE,r_naji,0)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000玩家当前镜头的镜头距离为|cffFFFF00"+R2S(r_naji)+"|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000数值错误！|cffFFFF00请输入|cffFF0000大于0|cffFFFF00的实数|r")
endif
endif
endfunction
function TestA14_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
local group g_naji
local unit u_naji
if i_naji>=0 then
set g_naji=CreateGroup()
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call SetUnitAnimationByIndex(u_naji,i_naji)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000播放玩家选择的所有单位的第|cffFFFF00"+I2S(i_naji)+"|cffFF0000号动作|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入数值错误！请输入|cffFFFF00大于0|cffFF0000的数值|r")
endif
endfunction
function TestA13_naji takes nothing returns nothing
if Bfog_naji then
call FogEnable(false)
call FogMaskEnable(false)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000关闭|cffFFFF00阴影及战争迷雾|r")
set Bfog_naji=false
else
call FogEnable(true)
call FogMaskEnable(true)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000开启|cffFFFF00阴影及战争迷雾|r")
set Bfog_naji=true
endif
endfunction
function TestA12_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
local group g_naji
local unit u_naji
if i_naji>=1 then
set g_naji=CreateGroup()
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
if IsUnitType(u_naji,UNIT_TYPE_HERO) then
if GetUnitLevel(u_naji)<=i_naji then
call SetHeroLevel(u_naji,i_naji,true)
else
call UnitStripHeroLevel(u_naji,GetUnitLevel(u_naji)-i_naji)
endif
endif
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000将玩家选择的所有英雄等级设置为|cffFFFF00"+I2S(i_naji)+"|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000输入数值错误！请输入|cffFFFF00大于1|cffFF0000的数值|r")
endif
endfunction
function TestA11_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
local integer z_naji=StringLength(GetEventPlayerChatString())-1
loop
set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),z_naji,z_naji+1)
if Sdummy_naji[1]=="," then
set z_naji=S2I(SubString(GetEventPlayerChatString(),z_naji+1,StringLength(GetEventPlayerChatString())))
exitwhen true
endif
set z_naji=z_naji-1
if z_naji<=0 then
set z_naji=GetPlayerId(GetTriggerPlayer())+1
exitwhen true
endif
endloop
if z_naji<=0 or z_naji>=17 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000第二参数输入错误！请输入|cffFFFF001~16|cffFF0000间的整数|r")
return
endif
call SetPlayerState(Player(z_naji-1),PLAYER_STATE_RESOURCE_LUMBER,GetPlayerState(Player(z_naji-1),PLAYER_STATE_RESOURCE_LUMBER)+i_naji)
if i_naji>0 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000为|cff00FFFF"+GetPlayerName(Player(z_naji-1))+"|cffFF0000增加了|cffFFFF00"+I2S(i_naji)+"|cffFF0000木头|r")
elseif i_naji<0 then
set i_naji=i_naji*-1
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000为|cff00FFFF"+GetPlayerName(Player(z_naji-1))+"|cffFF0000减少了|cffFFFF00"+I2S(i_naji)+"|cffFF0000木头|r")
endif
endfunction
function TestA10_naji takes nothing returns nothing
local integer i_naji=S2I(SubString(GetEventPlayerChatString(),3,StringLength(GetEventPlayerChatString())))
local integer z_naji=StringLength(GetEventPlayerChatString())-1
loop
set Sdummy_naji[1]=SubString(GetEventPlayerChatString(),z_naji,z_naji+1)
if Sdummy_naji[1]=="," then
set z_naji=S2I(SubString(GetEventPlayerChatString(),z_naji+1,StringLength(GetEventPlayerChatString())))
exitwhen true
endif
set z_naji=z_naji-1
if z_naji<=0 then
set z_naji=GetPlayerId(GetTriggerPlayer())+1
exitwhen true
endif
endloop
if z_naji<=0 or z_naji>=17 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000第二参数输入错误！请输入|cffFFFF001~16|cffFF0000间的整数|r")
return
endif
call SetPlayerState(Player(z_naji-1),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(Player(z_naji-1),PLAYER_STATE_RESOURCE_GOLD)+i_naji)
if i_naji>0 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000为|cff00FFFF"+GetPlayerName(Player(z_naji-1))+"|cffFF0000增加了|cffFFFF00"+I2S(i_naji)+"|cffFF0000黄金|r")
elseif i_naji<0 then
set i_naji=i_naji*-1
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000为|cff00FFFF"+GetPlayerName(Player(z_naji-1))+"|cffFF0000减少了|cffFFFF00"+I2S(i_naji)+"|cffFF0000黄金|r")
endif
endfunction
function TestA9_naji takes nothing returns nothing
local location p_naji=Location(0,0)
set Rhandle_naji=Rhandle_naji+.1
if Rhandle_naji>=60 then
set Sdummy_naji[2]=R2S(Rhandle_naji-I2R(R2I(Rhandle_naji/60))*60)
if S2R(Sdummy_naji[2])==60 then
set Sdummy_naji[2]="0.0"
else
set Sdummy_naji[2]=SubString(" "+Sdummy_naji[2],1,StringLength(Sdummy_naji[2])-1)
endif
set Sdummy_naji[1]=" "+R2S(Rhandle_naji/60)
set Sdummy_naji[1]=SubString(Sdummy_naji[1],1,StringLength(Sdummy_naji[1])-4)+"分"+Sdummy_naji[2]+"秒"
else
set Sdummy_naji[1]=" "+R2S(Rhandle_naji)
set Sdummy_naji[1]=SubString(Sdummy_naji[1],1,StringLength(Sdummy_naji[1])-2)+"秒"
endif
call DisplayTextToPlayer(Ptest_naji,0,0,"|cffFFFF00基准值：|r"+I2S(Ihandle_naji)+"|cffFFFF00——当前值：|r"+I2S(GetHandleId(p_naji))+"|cffFFFF00——差值：|r"+I2S(GetHandleId(p_naji)-Ihandle_naji)+"|cffFFFF00——开启时间：|r"+Sdummy_naji[1])
call RemoveLocation(p_naji)
set p_naji=null
endfunction
function TestA7_naji takes nothing returns nothing
local group g_naji=CreateGroup()
local unit u_naji
call GroupEnumUnitsSelected(g_naji,GetTriggerPlayer(),null)
if FirstOfGroup(g_naji)!=null then
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
call SetUnitState(u_naji,UNIT_STATE_LIFE,GetUnitState(u_naji,UNIT_STATE_MAX_LIFE))
call SetUnitState(u_naji,UNIT_STATE_MANA,GetUnitState(u_naji,UNIT_STATE_MAX_MANA))
call UnitResetCooldown(u_naji)
endloop
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000恢复了所有玩家选择单位的|cffFFFF00生命/魔法/冷却|r")
else
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffFF0000没有|cffFFFF00选中|cffFF0000任何单位|r")
endif
call DestroyGroup(g_naji)
set g_naji=null
endfunction
function TestA6_naji takes nothing returns nothing
local timer t_naji=GetExpiredTimer()
local unit u_naji
loop
set u_naji=FirstOfGroup(Gcd_naji[0])
exitwhen u_naji==null
call GroupRemoveUnit(Gcd_naji[0],u_naji)
call SetUnitState(u_naji,UNIT_STATE_MANA,GetUnitState(u_naji,UNIT_STATE_MAX_MANA))
call UnitResetCooldown(u_naji)
endloop
call DestroyTimer(t_naji)
set t_naji=null
set u_naji=null
endfunction
function TestA5_naji takes nothing returns nothing
local timer t_naji
if IsUnitInGroup(GetTriggerUnit(),Gcd_naji[1]) then
set t_naji=CreateTimer()
call GroupAddUnit(Gcd_naji[0],GetTriggerUnit())
call TimerStart(t_naji,0,false,function TestA6_naji)
set t_naji=null
endif
endfunction
function TestA3_naji takes nothing returns nothing
local location p_naji
if Bpn_naji then
set Sdummy_naji[3]=GetPlayerName(GetTriggerPlayer())+"（玩家"+I2S(GetPlayerId(GetTriggerPlayer())+1)+"）"
else
set Sdummy_naji[3]=""
endif
if GetSpellTargetUnit()==null then
if GetSpellTargetDestructable()==null then
if GetSpellTargetItem()==null then
set p_naji=GetSpellTargetLoc()
if p_naji==null then
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF8000施放了|cffFFFF00"+GetObjectName(GetSpellAbilityId())+"|cffFF0000"+ID2S_naji(GetSpellAbilityId())+"|r")
else
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF8000施放了|cffFFFF00"+GetObjectName(GetSpellAbilityId())+"|cffFF0000"+ID2S_naji(GetSpellAbilityId())+"|cff00FFFF目标点为|cffFFFF00（"+R2S(GetLocationX(p_naji))+","+R2S(GetLocationY(p_naji))+"）|r")
endif
call RemoveLocation(p_naji)
set p_naji=null
else
if Bxy_naji then
set Sdummy_naji[1]="（"+R2S(GetUnitX(GetTriggerUnit()))+","+R2S(GetUnitY(GetTriggerUnit()))+"）"
set Sdummy_naji[2]="（"+R2S(GetWidgetX(GetSpellTargetItem()))+","+R2S(GetWidgetY(GetSpellTargetItem()))+"）"
else
set Sdummy_naji[1]=""
set Sdummy_naji[2]=""
endif
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF8000施放了|cffFFFF00"+GetObjectName(GetSpellAbilityId())+"|cffFF0000"+ID2S_naji(GetSpellAbilityId())+"|cff00FFFF目标为|cffFFFF00"+GetItemName(GetSpellTargetItem())+"|cffFF0000"+ID2S_naji(GetItemTypeId(GetSpellTargetItem()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
endif
else
if Bxy_naji then
set Sdummy_naji[1]="（"+R2S(GetUnitX(GetTriggerUnit()))+","+R2S(GetUnitY(GetTriggerUnit()))+"）"
set Sdummy_naji[2]="（"+R2S(GetWidgetX(GetSpellTargetDestructable()))+","+R2S(GetWidgetY(GetSpellTargetDestructable()))+"）"
else
set Sdummy_naji[1]=""
set Sdummy_naji[2]=""
endif
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF8000施放了|cffFFFF00"+GetObjectName(GetSpellAbilityId())+"|cffFF0000"+ID2S_naji(GetSpellAbilityId())+"|cff00FFFF目标为|cffFFFF00"+GetDestructableName(GetSpellTargetDestructable())+"|cffFF0000"+ID2S_naji(GetDestructableTypeId(GetSpellTargetDestructable()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
endif
else
if Bpn_naji then
set Sdummy_naji[4]=GetPlayerName(GetOwningPlayer(GetSpellTargetUnit()))+"（玩家"+I2S(GetPlayerId(GetOwningPlayer(GetSpellTargetUnit()))+1)+"）"
else
set Sdummy_naji[4]=""
endif
if Bxy_naji then
set Sdummy_naji[1]="（"+R2S(GetUnitX(GetTriggerUnit()))+","+R2S(GetUnitY(GetTriggerUnit()))+"）"
set Sdummy_naji[2]="（"+R2S(GetWidgetX(GetSpellTargetUnit()))+","+R2S(GetWidgetY(GetSpellTargetUnit()))+"）"
else
set Sdummy_naji[1]=""
set Sdummy_naji[2]=""
endif
call DisplayTextToPlayer(Ptest_naji,0,0,Sdummy_naji[3]+"|cffFFFF00"+GetUnitName(GetTriggerUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetTriggerUnit()))+"|cffFFFF00"+Sdummy_naji[1]+"|cffFF8000施放了|cffFFFF00"+GetObjectName(GetSpellAbilityId())+"|cffFF0000"+ID2S_naji(GetSpellAbilityId())+"|cff00FFFF目标为|r"+Sdummy_naji[4]+"|cffFFFF00"+GetUnitName(GetSpellTargetUnit())+"|cffFF0000"+ID2S_naji(GetUnitTypeId(GetSpellTargetUnit()))+"|cffFFFF00"+Sdummy_naji[2]+"|r")
endif
endfunction
function TestA8_naji takes nothing returns nothing
if GetClickedButton()!=Button_naji[0] and GetClickedButton()!=Button_naji[100] then
if GetClickedButton()==Button_naji[1] then
if Bxy_naji then
set Bxy_naji=false
else
set Bxy_naji=true
endif
elseif GetClickedButton()==Button_naji[2] then
if Bid_naji then
set Bid_naji=false
else
set Bid_naji=true
endif
elseif GetClickedButton()==Button_naji[3] then
if Bpn_naji then
set Bpn_naji=false
else
set Bpn_naji=true
endif
elseif GetClickedButton()==Button_naji[4] then
if Bir_naji then
set Bir_naji=false
else
set Bir_naji=true
endif
elseif GetClickedButton()==Button_naji[5] then
if Bddm_naji then
set Bddm_naji=false
else
set Bddm_naji=true
endif
endif
call DialogResetA2_naji()
call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[1],true)
elseif GetClickedButton()==Button_naji[0] then
call DialogResetA_naji()
call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[0],true)
endif
endfunction
function TestA4_naji takes nothing returns nothing
local location p_naji
local group g_naji
local integer i_naji
local unit u_naji
if GetClickedButton()!=Button_naji[0] and GetClickedButton()!=Button_naji[100] then
if GetClickedButton()==Button_naji[1] then
if IsTriggerEnabled(Ttest_naji[2]) then
call DisableTrigger(Ttest_naji[2])
else
call EnableTrigger(Ttest_naji[2])
endif
elseif GetClickedButton()==Button_naji[2] then
if IsTriggerEnabled(Ttest_naji[15]) then
call DisableTrigger(Ttest_naji[15])
else
call EnableTrigger(Ttest_naji[15])
endif
elseif GetClickedButton()==Button_naji[3] then
if IsTriggerEnabled(Ttest_naji[17]) then
call DisableTrigger(Ttest_naji[17])
else
call EnableTrigger(Ttest_naji[17])
endif
elseif GetClickedButton()==Button_naji[4] then
if IsTriggerEnabled(Ttest_naji[26]) then
call DestroyTrigger(Ttest_naji[0])
call DisableTrigger(Ttest_naji[26])
set Rdummy_naji=0
else
set Ttest_naji[0]=CreateTrigger()
call TriggerAddCondition(Ttest_naji[0],Condition(function TestA29_naji))
call EnableTrigger(Ttest_naji[26])
set g_naji=CreateGroup()
set i_naji=0
loop
call GroupEnumUnitsOfPlayer(g_naji,Player(i_naji),null)
loop
set u_naji=FirstOfGroup(g_naji)
exitwhen u_naji==null
call GroupRemoveUnit(g_naji,u_naji)
if GetUnitAbilityLevel(u_naji,$416C6F63)==0 then
call TriggerRegisterUnitEvent(Ttest_naji[0],u_naji,EVENT_UNIT_DAMAGED)
endif
endloop
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
set Rdummy_naji=0
call DestroyGroup(g_naji)
set g_naji=null
endif
elseif GetClickedButton()==Button_naji[5] then
if IsTriggerEnabled(Ttest_naji[4]) then
call DestroyGroup(Gcd_naji[1])
call DisableTrigger(Ttest_naji[4])
else
set Gcd_naji[1]=CreateGroup()
call EnableTrigger(Ttest_naji[4])
endif
elseif GetClickedButton()==Button_naji[6] then
if IsTriggerEnabled(Ttest_naji[7]) then
call DisableTrigger(Ttest_naji[7])
else
call EnableTrigger(Ttest_naji[7])
set Ihandle_naji=0
set Rhandle_naji=0
set p_naji=Location(0,0)
set Ihandle_naji=GetHandleId(p_naji)
call EnableTrigger(Ttest_naji[7])
call RemoveLocation(p_naji)
set p_naji=null
endif
elseif GetClickedButton()==Button_naji[7] then
if IsTriggerEnabled(Ttest_naji[61]) then
call DisableTrigger(Ttest_naji[61])
else
call EnableTrigger(Ttest_naji[61])
endif
elseif GetClickedButton()==Button_naji[8] then
if IsTriggerEnabled(Ttest_naji[71]) then
call DestroyGroup(Gms_naji)
call DisableTrigger(Ttest_naji[71])
else
set Gms_naji=CreateGroup()
call EnableTrigger(Ttest_naji[71])
endif
endif
call DialogResetA_naji()
call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[0],true)
elseif GetClickedButton()==Button_naji[0] then
call DialogResetA2_naji()
call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[1],true)
endif
endfunction
function TestA2_naji takes nothing returns nothing
call DialogResetA_naji()
call DialogDisplay(GetTriggerPlayer(),Dnaji_naji[0],true)
endfunction
function TestA_naji takes nothing returns nothing
local integer i_naji
local integer row_naji=2769
set Sdummy_naji[1]="2013/11/04"
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cff00FF00===============*****===============|r")
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cffFF8000         开始初始化|cff00FFFFnajitest|cffFF8000测试代码|r")
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cffFF80C0                代码版本：|cffFF0000V2.4|r")
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cff00FF00              更新日期：|cffFF0000"+Sdummy_naji[1]+"|r")
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cffFFFF00       需要查看所有可用代码请按下|cffFF0000F9|r")
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cffFFFF00     任意玩家输入|cffFF0000'remove|cffFFFF00可清除该系统|r")
call DisplayTimedTextToPlayer(GetLocalPlayer(),0,0,30,"|cff00FF00===============*****===============|r")
set Ptest_naji=GetTriggerPlayer()
set StringList_naji=".................................!.#$%&'()*+,-./0123456789:;<=>.@ABCDEFGHIJKLMNOPQRSTUVWXYZ[.]^_`abcdefghijklmnopqrstuvwxyz{|}~................................................................................................................................"
set Rworld_naji=CreateRegion()
call RegionAddRect(Rworld_naji,GetWorldBounds())
set Itrigger_naji=0
loop
set Itrigger_naji=Itrigger_naji+1
set Ttest_naji[Itrigger_naji]=CreateTrigger()
exitwhen Itrigger_naji>=77
endloop
set Iquest_naji=0
loop
set Iquest_naji=Iquest_naji+1
set Q_naji[Iquest_naji]=CreateQuest()
call QuestSetIconPath(Q_naji[Iquest_naji],"Buildings\\Other\\TempArtB\\BTNTempB.blp")
call QuestSetRequired(Q_naji[Iquest_naji],false)
call QuestSetDiscovered(Q_naji[Iquest_naji],true)
call QuestSetCompleted(Q_naji[Iquest_naji],false)
exitwhen Iquest_naji>=13
endloop
set i_naji=61
call QuestSetTitle(Q_naji[1],"|cffFF0000najitest帮助信息")
call QuestSetDescription(Q_naji[1],"|cff00FFFF注意：|r|n|cff00FFFF1、|cffFF0000*|cffFFFF00代表需要输入|cffFF80C0数字/文字，且其数量代表要输入多少个参数，参数之间用英文逗号隔开。多参数命令的第1参数必需输入，其它参数若空缺则系统会自动填补|r|n|cff00FFFF2、|cffFF0000(s)|cffFFFF00代表该代码功能可以同时作用|cffFF80C0玩家选择的所有单位|r|n|cff00FFFF3、|cffFFFF00很多功能都可以通过|cffFF80C0反复输入代码|cffFFFF00来切换|cffFF0000开/关|r|n|cff00FFFF4、|cffFFFF00为保持稳定，判定|cffFF80C0玩家选择单位|cffFFFF00没有同步系统数据，请确保在使用相关代码前|cffFF0000重新框选|cffFFFF00合适的单位|r|n|cff00FFFF5、|cffFFFF00大部分功能支持|cffFF0000负数|cffFFFF00，不支持负数的功能输入负值会|cffFF80C0还原默认设定|r|n|cff00FFFF6、|cffFFFF00使用者可以在任何时候|cffFF0000按下Esc|cffFFFF00重新获得用户控制权及关闭电影模式|r")
call QuestSetTitle(Q_naji[2],"|cffFF0000独立系统")
call QuestSetDescription(Q_naji[2],"|cffFFFF00'feini|cffFF0000(|rnajitest system|cffFF0000)|r|cffFFFF00'gms|cffFF0000(|r(Group Multiple Spell)|cffFF0000)|r|cffFFFF00'gcd|cffFF0000(|r(Group Cool Down)|cffFF0000)|r|n|n|cff00FFFF该系统包含众多测试功能，输入后会打开一个对话框")
call QuestSetTitle(Q_naji[3],"|cffFF0000单位-英雄（必须选择英雄）")
call QuestSetDescription(Q_naji[3],"|cffFFFF00'hl*|cffFF0000(|rset Hero(s) Level|cffFF0000)|r|cffFFFF00'hp*|cffFF0000(|radd Hero(s) skill Point|cffFF0000)|r|cffFFFF00'hs*|cffFF0000(|rset Hero(s) Str|cffFF0000)|r|cffFFFF00'ha*|cffFF0000(|rset Hero(s) Agi|cffFF0000)|r|cffFFFF00'hi*|cffFF0000(|rset Hero(s) Int|cffFF0000)|r")
call QuestSetTitle(Q_naji[4],"|cffFF0000单位-数值（必须选择单位）")
call QuestSetDescription(Q_naji[4],"|cffFFFF00'uts*|cffFF0000(|rUnit(s) Time Scale|cffFF0000)|r|cffFFFF00'uic**|cffFF0000(|rset Unit's Item Charge|cffFF0000)|r|cffFFFF00'um*|cffFF0000(|rset Unit(s) Move speed|cffFF0000)|r|cffFFFF00'uus*|cffFF0000(|rset Unit(s) tUrn Speed|cffFF0000)|r|cffFFFF00'uar*|cffFF0000(|rset Unit(s) Acquire Range|cffFF0000)|r|cffFFFF00'ufh*|cffFF0000(|rset Unit(s) Fly Height|cffFF0000)|r|cffFFFF00'ud*|cffFF0000(|rset Unit(s) user Data|cffFF0000)|r|cffFFFF00'us*|cffFF0000(|rset Unit(s) Scale|cffFF0000)|r|cffFFFF00'uvc****|cffFF0000(|rset Unit(s) Vertax Color|cffFF0000)|r|cffFFFF00'uxy**|cffFF0000(|rset Unit(s) XY|cffFF0000)|r")
call QuestSetTitle(Q_naji[5],"|cffFF0000单位-状态（必须选择单位）")
call QuestSetDescription(Q_naji[5],"|cffFFFF00'uh|cffFF0000(|rUnit(s) Healing|cffFF0000)|r|cffFFFF00'up|cffFF0000(|rUnit(s) Pause|cffFF0000)|r|cffFFFF00'ub|cffFF0000(|rUnit(s) Buff clear|cffFF0000)|r|cffFFFF00'uw|cffFF0000(|rUnit(s) Windwalk|cffFF0000)|r")
call QuestSetTitle(Q_naji[6],"|cffFF0000单位-特殊（必须选择单位）")
call QuestSetDescription(Q_naji[6],"|cffFFFF00'ua*|cffFF0000(|rplay Unit(s) Animation by index|cffFF0000)|r|cffFFFF00'ui|cffFF0000(|rUnit Information|cffFF0000)|r|cffFFFF00'uo*|cffFF0000(|rset Unit(s) Owner|cffFF0000)|r|cffFFFF00'uk|cffFF0000(|rUnit(s) Killed|cffFF0000)|r|cffFFFF00'co**|cffFF0000(|rCreate Object|cffFF0000)|r|cffFFFF00'ul|cffFF0000(|rUnit camera Lock|cffFF0000)|r|cffFFFF00'ur|cffFF0000(|rUnit(s) Remove|cffFF0000)|r|cffFFFF00'uii*|cffFF0000(|rUnit's Item Information|cffFF0000)|r")
call QuestSetTitle(Q_naji[7],"|cffFF0000玩家相关")
call QuestSetDescription(Q_naji[7],"|cffFFFF00'ag**/al**|cffFF0000(|rAdd Gold/Lumber|cffFF0000)|r|cffFFFF00'pc**|cffFF0000(|rPlayer Control|cffFF0000)|r|cffFFFF00'pa**|cffFF0000(|rset Player Alliance|cffFF0000)|r|cffFFFF00'pk*|cffFF0000(|rPlayer Kicked|cffFF0000)|r|cffFFFF00'ph**|cffFF0000(|rset Player Handicap|cffFF0000)|r|cffFFFF00'pn*|cffFF0000(|rPlayer Name|cffFF0000)|r|cffFFFF00'pt***|cffFF0000(|rPlayer Tech|cffFF0000)|r|cffFFFF00'psl|cffFF0000(|rPlayer Statistics List|cffFF0000)|r")
call QuestSetTitle(Q_naji[8],"|cffFF0000镜头相关")
call QuestSetDescription(Q_naji[8],"|cffFFFF00'cm|cffFF0000(|rCamera Mode|cffFF0000)|r|cffFFFF00'cd*|cffFF0000(|rCamera Distance|cffFF0000)|r|cffFFFF00'cr|cffFF0000(|rCamera Reset|cffFF0000)|r|cffFFFF00'ci|cffFF0000(|rCamera Information|cffFF0000)|r|cffFFFF00'cz*|cffFF0000(|rset Camera farZ|cffFF0000)|r")
call QuestSetTitle(Q_naji[9],"|cffFF0000其它")
call QuestSetDescription(Q_naji[9],"|cffFFFF00'fog|cffFF0000(|rFog|cffFF0000)|r|cffFFFF00'sc|cffFF0000(|rScreen Clear|cffFF0000)|r|cffFFFF00'rd|cffFF0000(|rRoll Dice|cffFF0000)|r|cffFFFF00'bm*|cffFF0000(|rBackup Message|cffFF0000)|r|cffFFFF00'cbm|cffFF0000(|rClear Backup Message|cffFF0000)|r|cffFFFF00'td*|cffFF0000(|rset Time of Day|cffFF0000)|r|cffFFFF00'ts*|cffFF0000(|rset Time of day Scale|cffFF0000)|r|cffFFFF00'we*|cffFF0000(|rWeather Effect|cffFF0000)|r|cffFFFF00'se*|cffFF0000(|rSystem Exchange|cffFF0000)|r|cffFFFF00'ef*|cffFF0000(|rExecute Function|cffFF0000)|r")
call QuestSetTitle(Q_naji[10],"|cffFF0000游戏设置")
call QuestSetDescription(Q_naji[10],"|cffFFFF00'mv*|cffFF0000(|rMusic Volume|cffFF0000)|r|cffFFFF00'sv*|cffFF0000(|rSound Volume|cffFF0000)|r|cffFFFF00'pg|cffFF0000(|rPause Game|cffFF0000)|r|cffFFFF00'rs*|cffFF0000(|rset Random Seed|cffFF0000)|r|cffFFFF00'gg|cffFF0000(|rGood Game|cffFF0000)|r|cffFFFF00'gs*|cffFF0000(|rset Game Speed|cffFF0000)|r|cffFFFF00'mf|cffFF0000(|rset Map Flag|cffFF0000)|r|cffFFFF00're|cffFF0000(|rRestart|cffFF0000)|r")
call QuestSetTitle(Q_naji[11],"|cffFF0000co命令帮助信息")
call QuestSetDescription(Q_naji[11],"|cffFF0000co命令可以创建单位、物品、可破坏物、添加删除技能、设置技能等级、删除buff。输入格式为'co+id+,+数值，数值对应创建物体的数量或技能等级，当没有输入数值时，默认为1。当单位已经拥有该技能，带有数值的'co命令会改变等级，不带数值的则会删除技能。|n|n|cffFFFF00Amov|cffFF0000(|r移动|cffFF0000)|r|cffFFFF00Abun|cffFF0000(|r货物保持|cffFF0000)|r|cffFFFF00Avul|cffFF0000(|r无敌|cffFF0000)|r|cffFFFF00AInv|cffFF0000(|r英雄物品栏|cffFF0000)|r|cffFFFF00ARal|cffFF0000(|r集结|cffFF0000)|r|cffFFFF00Arng|cffFF0000(|r复仇|cffFF0000)|r|cffFFFF00Awan|cffFF0000(|r游荡者|cffFF0000)|r|cffFFFF00Ane2|cffFF0000(|r选择单位|cffFF0000)|r|cffFFFF00Apiv|cffFF0000(|r永久隐形|cffFF0000)|r|cffFFFF00Adtg|cffFF0000(|r真实视域|cffFF0000)|r|cffFFFF00Aeth|cffFF0000(|r可见幽灵|cffFF0000)|r|cffFFFF00Arsk|cffFF0000(|r抗性皮肤|cffFF0000)|r|cffFFFF00Acmi|cffFF0000(|r魔法免疫|cffFF0000)|r")
call QuestSetTitle(Q_naji[12],"|cffFF0000we命令帮助信息")
call QuestSetDescription(Q_naji[12],"|cffFF0000注意乱输4位ID会游戏崩溃！输入的ID未满4位时会清除所有已创建的全图天气。|r|n|n|cffFFFF00RA(h/l)r|cffFF0000(|r白杨谷(大/小)雨|cffFF0000)|r|cffFFFF00MEds|cffFF0000(|r达拉然之盾|cffFF0000)|r|cffFFFF00FD(b/g/r/w)(h/l)|cffFF0000(|r地下城(蓝/绿/红/白)(浓/薄)雾|cffFF0000)|r|cffFFFF00RL(h/l)r|cffFF0000(|r洛丹伦(大/小)雨|cffFF0000)|r|cffFFFF00SN(b/h/l)s|cffFF0000(|r诺森德(暴/大/小)雪|cffFF0000)|r|cffFFFF00WO(c/l)w|cffFF0000(|r边缘之地(大/小)风|cffFF0000)|r|cffFFFF00Lr(a/m)a|cffFF0000(|r(日/月)光|cffFF0000)|r|cffFFFF00WNcw|cffFF0000(|r大风|cffFF0000)|r")
call QuestSetTitle(Q_naji[13],"|cffFF0000najitest基本信息")
call QuestSetDescription(Q_naji[13],"|cffFFFF00脚本作者：|cffFF0000najizhimo|r|n|cffFFFF00当前使用者：|cffFF0000"+GetPlayerName(Ptest_naji)+"|r|n|cffFFFF00更新日期：|cffFF0000"+Sdummy_naji[1]+"|n|cffFFFF00可用代码数量：|cffFF0000"+I2S(i_naji)+"|r|n|cffFFFF00注册触发数量：|cffFF0000"+I2S(Itrigger_naji)+"|r|n|cffFFFF00创建任务数量：|cffFF0000"+I2S(Iquest_naji)+"|r|n|cffFFFF00脚本行数：|cffFF0000"+I2S(row_naji)+"|n|cffFFFF00对此系统有任何提议请到|cffFF80C0百度魔兽地图编辑器贴吧|cffFFFF00发贴|r|n|cffFFFF00任意玩家输入|cffFF0000'remove|cffFFFF00可清除该系统|r")
call FlashQuestDialogButton()
set Dnaji_naji[0]=DialogCreate()
call TriggerRegisterPlayerChatEvent(Ttest_naji[1],GetTriggerPlayer(),"'feini",true)
call TriggerAddCondition(Ttest_naji[1],Condition(function TestA2_naji))
call TriggerRegisterDialogEvent(Ttest_naji[3],Dnaji_naji[0])
call TriggerAddCondition(Ttest_naji[3],Condition(function TestA4_naji))
set i_naji=0
loop
call TriggerRegisterPlayerUnitEvent(Ttest_naji[2],Player(i_naji),EVENT_PLAYER_UNIT_SPELL_EFFECT,null)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[2],Condition(function TestA3_naji))
call DisableTrigger(Ttest_naji[2])
set i_naji=0
loop
call TriggerRegisterPlayerUnitEvent(Ttest_naji[15],Player(i_naji),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER,null)
call TriggerRegisterPlayerUnitEvent(Ttest_naji[15],Player(i_naji),EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER,null)
call TriggerRegisterPlayerUnitEvent(Ttest_naji[15],Player(i_naji),EVENT_PLAYER_UNIT_ISSUED_ORDER,null)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[15],Condition(function TestA17_naji))
call DisableTrigger(Ttest_naji[15])
call TriggerRegisterEnterRegion(Ttest_naji[17],Rworld_naji,null)
set i_naji=0
loop
call TriggerRegisterPlayerUnitEvent(Ttest_naji[17],Player(i_naji),EVENT_PLAYER_UNIT_DEATH,null)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[17],Condition(function TestA19_naji))
call DisableTrigger(Ttest_naji[17])
call TriggerRegisterEnterRegion(Ttest_naji[26],Rworld_naji,null)
call TriggerAddCondition(Ttest_naji[26],Condition(function TestA28_naji))
call DisableTrigger(Ttest_naji[26])
set i_naji=0
loop
call TriggerRegisterPlayerUnitEvent(Ttest_naji[4],Player(i_naji),EVENT_PLAYER_UNIT_SPELL_EFFECT,null)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[4],Condition(function TestA5_naji))
call DisableTrigger(Ttest_naji[4])
set Gcd_naji[0]=CreateGroup()
set Gcd_naji[1]=null
call TriggerRegisterTimerEvent(Ttest_naji[7],.1,true)
call TriggerAddCondition(Ttest_naji[7],Condition(function TestA9_naji))
call DisableTrigger(Ttest_naji[7])
set i_naji=0
loop
call TriggerRegisterPlayerChatEvent(Ttest_naji[61],Player(i_naji),"",false)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call DisableTrigger(Ttest_naji[61])
call TriggerAddCondition(Ttest_naji[61],Condition(function TestA66_naji))
set i_naji=0
loop
call TriggerRegisterPlayerUnitEvent(Ttest_naji[71],Player(i_naji),EVENT_PLAYER_UNIT_SPELL_EFFECT,null)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[71],Condition(function TestA76_naji))
call DisableTrigger(Ttest_naji[71])
set Gms_naji=null
set Dnaji_naji[1]=DialogCreate()
call TriggerRegisterDialogEvent(Ttest_naji[6],Dnaji_naji[1])
call TriggerAddCondition(Ttest_naji[6],Condition(function TestA8_naji))
set Bxy_naji=true
set Bid_naji=true
set Bpn_naji=false
set Bir_naji=true
set Bddm_naji=false
call TriggerRegisterPlayerChatEvent(Ttest_naji[5],GetTriggerPlayer(),"'uh",true)
call TriggerAddCondition(Ttest_naji[5],Condition(function TestA7_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[8],GetTriggerPlayer(),"'ag",false)
call TriggerAddCondition(Ttest_naji[8],Condition(function TestA10_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[9],GetTriggerPlayer(),"'al",false)
call TriggerAddCondition(Ttest_naji[9],Condition(function TestA11_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[10],GetTriggerPlayer(),"'hl",false)
call TriggerAddCondition(Ttest_naji[10],Condition(function TestA12_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[11],GetTriggerPlayer(),"'fog",true)
call TriggerAddCondition(Ttest_naji[11],Condition(function TestA13_naji))
if IsMapFlagSet(MAP_FOG_ALWAYS_VISIBLE) then
set Bfog_naji=false
else
set Bfog_naji=true
endif
call TriggerRegisterPlayerChatEvent(Ttest_naji[12],GetTriggerPlayer(),"'ua",false)
call TriggerAddCondition(Ttest_naji[12],Condition(function TestA14_naji))
set i_naji=0
loop
call TriggerRegisterPlayerChatEvent(Ttest_naji[13],Player(i_naji),"'cd",false)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[13],Condition(function TestA15_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[14],GetTriggerPlayer(),"'ur",true)
call TriggerAddCondition(Ttest_naji[14],Condition(function TestA16_naji))
set i_naji=0
loop
call TriggerRegisterPlayerChatEvent(Ttest_naji[16],Player(i_naji),"'pn",false)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[16],Condition(function TestA18_naji))
set i_naji=0
loop
call TriggerRegisterPlayerChatEvent(Ttest_naji[18],Player(i_naji),"'sc",true)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[18],Condition(function TestA20_naji))
set i_naji=0
loop
call TriggerRegisterPlayerChatEvent(Ttest_naji[19],Player(i_naji),"'cr",true)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[19],Condition(function TestA21_naji))
set i_naji=0
loop
call TriggerRegisterPlayerChatEvent(Ttest_naji[20],Player(i_naji),"'ui",true)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[20],Condition(function TestA22_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[21],GetTriggerPlayer(),"'pc",false)
call TriggerAddCondition(Ttest_naji[21],Condition(function TestA23_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[22],GetTriggerPlayer(),"'uvc",false)
call TriggerAddCondition(Ttest_naji[22],Condition(function TestA24_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[23],GetTriggerPlayer(),"'uts",false)
call TriggerAddCondition(Ttest_naji[23],Condition(function TestA25_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[24],GetTriggerPlayer(),"'pg",true)
call TriggerAddCondition(Ttest_naji[24],Condition(function TestA26_naji))
set Bpause_naji=false
call TriggerRegisterPlayerChatEvent(Ttest_naji[25],GetTriggerPlayer(),"'psl",true)
call TriggerAddCondition(Ttest_naji[25],Condition(function TestA27_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[27],GetTriggerPlayer(),"'up",true)
call TriggerAddCondition(Ttest_naji[27],Condition(function TestA30_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[28],GetTriggerPlayer(),"'mv",false)
call TriggerAddCondition(Ttest_naji[28],Condition(function TestA31_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[29],GetTriggerPlayer(),"'rd",true)
call TriggerAddCondition(Ttest_naji[29],Condition(function TestA32_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[30],GetTriggerPlayer(),"'sv",false)
call TriggerAddCondition(Ttest_naji[30],Condition(function TestA33_naji))
set i_naji=0
loop
call TriggerRegisterPlayerChatEvent(Ttest_naji[31],Player(i_naji),"'bm",false)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[31],Condition(function TestA34_naji))
set Ibm_naji=0
call TriggerRegisterPlayerChatEvent(Ttest_naji[32],GetTriggerPlayer(),"'cbm",true)
call TriggerAddCondition(Ttest_naji[32],Condition(function TestA35_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[33],GetTriggerPlayer(),"'uic",false)
call TriggerAddCondition(Ttest_naji[33],Condition(function TestA36_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[34],GetTriggerPlayer(),"'rs",false)
call TriggerAddCondition(Ttest_naji[34],Condition(function TestA37_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[35],GetTriggerPlayer(),"'td",false)
call TriggerAddCondition(Ttest_naji[35],Condition(function TestA38_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[36],GetTriggerPlayer(),"'um",false)
call TriggerAddCondition(Ttest_naji[36],Condition(function TestA39_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[37],GetTriggerPlayer(),"'uus",false)
call TriggerAddCondition(Ttest_naji[37],Condition(function TestA40_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[38],GetTriggerPlayer(),"'uar",false)
call TriggerAddCondition(Ttest_naji[38],Condition(function TestA41_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[39],GetTriggerPlayer(),"'ufh",false)
call TriggerAddCondition(Ttest_naji[39],Condition(function TestA42_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[40],GetTriggerPlayer(),"'hp",false)
call TriggerAddCondition(Ttest_naji[40],Condition(function TestA43_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[41],GetTriggerPlayer(),"'hs",false)
call TriggerAddCondition(Ttest_naji[41],Condition(function TestA44_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[42],GetTriggerPlayer(),"'ha",false)
call TriggerAddCondition(Ttest_naji[42],Condition(function TestA45_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[43],GetTriggerPlayer(),"'hi",false)
call TriggerAddCondition(Ttest_naji[43],Condition(function TestA46_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[44],GetTriggerPlayer(),"'ud",false)
call TriggerAddCondition(Ttest_naji[44],Condition(function TestA47_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[45],GetTriggerPlayer(),"'ts",false)
call TriggerAddCondition(Ttest_naji[45],Condition(function TestA48_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[46],GetTriggerPlayer(),"'ph",false)
call TriggerAddCondition(Ttest_naji[46],Condition(function TestA49_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[47],GetTriggerPlayer(),"'uk",true)
call TriggerAddCondition(Ttest_naji[47],Condition(function TestA50_naji))
set i_naji=0
loop
call TriggerRegisterPlayerChatEvent(Ttest_naji[48],Player(i_naji),"'remove",true)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[48],Condition(function TestA51_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[49],GetTriggerPlayer(),"'pa",false)
call TriggerAddCondition(Ttest_naji[49],Condition(function TestA52_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[50],GetTriggerPlayer(),"'uo",false)
call TriggerAddCondition(Ttest_naji[50],Condition(function TestA53_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[51],GetTriggerPlayer(),"'cz",false)
call TriggerAddCondition(Ttest_naji[51],Condition(function TestA54_naji))
set Guw_naji=CreateGroup()
call TriggerRegisterPlayerChatEvent(Ttest_naji[52],GetTriggerPlayer(),"'uw",true)
call TriggerAddCondition(Ttest_naji[52],Condition(function TestA55_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[53],GetTriggerPlayer(),"'co",false)
call TriggerAddCondition(Ttest_naji[53],Condition(function TestA56_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[54],GetTriggerPlayer(),"'pk",false)
call TriggerAddCondition(Ttest_naji[54],Condition(function TestA57_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[55],GetTriggerPlayer(),"'ub",true)
call TriggerAddCondition(Ttest_naji[55],Condition(function TestA59_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[56],GetTriggerPlayer(),"'ul",true)
call TriggerAddCondition(Ttest_naji[56],Condition(function TestA60_naji))
set Tcamera_naji=null
set Bcamera_naji[0]=false
set Bcamera_naji[1]=false
set Bcamera_naji[2]=false
set Bcamera_naji[3]=false
set Bcamera_naji[4]=false
call TriggerRegisterPlayerChatEvent(Ttest_naji[57],GetTriggerPlayer(),"'cm",true)
call TriggerAddCondition(Ttest_naji[57],Condition(function TestA61_naji))
call DisableTrigger(Ttest_naji[58])
call TriggerRegisterPlayerEvent(Ttest_naji[58],GetTriggerPlayer(),EVENT_PLAYER_ARROW_UP_DOWN)
call TriggerRegisterPlayerEvent(Ttest_naji[58],GetTriggerPlayer(),EVENT_PLAYER_ARROW_DOWN_DOWN)
call TriggerRegisterPlayerEvent(Ttest_naji[58],GetTriggerPlayer(),EVENT_PLAYER_ARROW_LEFT_DOWN)
call TriggerRegisterPlayerEvent(Ttest_naji[58],GetTriggerPlayer(),EVENT_PLAYER_ARROW_RIGHT_DOWN)
call TriggerAddCondition(Ttest_naji[58],Condition(function TestA62_naji))
call DisableTrigger(Ttest_naji[59])
call TriggerRegisterPlayerEvent(Ttest_naji[59],GetTriggerPlayer(),EVENT_PLAYER_ARROW_UP_UP)
call TriggerRegisterPlayerEvent(Ttest_naji[59],GetTriggerPlayer(),EVENT_PLAYER_ARROW_DOWN_UP)
call TriggerRegisterPlayerEvent(Ttest_naji[59],GetTriggerPlayer(),EVENT_PLAYER_ARROW_LEFT_UP)
call TriggerRegisterPlayerEvent(Ttest_naji[59],GetTriggerPlayer(),EVENT_PLAYER_ARROW_RIGHT_UP)
call TriggerAddCondition(Ttest_naji[59],Condition(function TestA63_naji))
set i_naji=0
loop
call TriggerRegisterPlayerChatEvent(Ttest_naji[60],Player(i_naji),"'ci",true)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[60],Condition(function TestA65_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[62],GetTriggerPlayer(),"'us",false)
call TriggerAddCondition(Ttest_naji[62],Condition(function TestA67_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[63],GetTriggerPlayer(),"'gg",true)
call TriggerAddCondition(Ttest_naji[63],Condition(function TestA68_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[64],GetTriggerPlayer(),"'gs",false)
call TriggerAddCondition(Ttest_naji[64],Condition(function TestA69_naji))
set Dnaji_naji[2]=DialogCreate()
call TriggerRegisterPlayerChatEvent(Ttest_naji[65],GetTriggerPlayer(),"'mf",true)
call TriggerAddCondition(Ttest_naji[65],Condition(function TestA70_naji))
call TriggerRegisterDialogEvent(Ttest_naji[66],Dnaji_naji[2])
call TriggerAddCondition(Ttest_naji[66],Condition(function TestA71_naji))
call TriggerRegisterPlayerEvent(Ttest_naji[67],GetTriggerPlayer(),EVENT_PLAYER_END_CINEMATIC)
call TriggerAddCondition(Ttest_naji[67],Condition(function TestA72_naji))
set Iweather_naji=0
set Weather_naji[0]=null
call TriggerRegisterPlayerChatEvent(Ttest_naji[68],GetTriggerPlayer(),"'we",false)
call TriggerAddCondition(Ttest_naji[68],Condition(function TestA73_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[69],GetTriggerPlayer(),"'pt",false)
call TriggerAddCondition(Ttest_naji[69],Condition(function TestA74_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[70],GetTriggerPlayer(),"'re",true)
call TriggerAddCondition(Ttest_naji[70],Condition(function TestA75_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[72],GetTriggerPlayer(),"'gms",true)
call TriggerAddCondition(Ttest_naji[72],Condition(function TestA77_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[73],GetTriggerPlayer(),"'gcd",true)
call TriggerAddCondition(Ttest_naji[73],Condition(function TestA78_naji))
set i_naji=0
loop
call TriggerRegisterPlayerChatEvent(Ttest_naji[74],Player(i_naji),"'uii",false)
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(Ttest_naji[74],Condition(function TestA79_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[75],GetTriggerPlayer(),"'uxy",false)
call TriggerAddCondition(Ttest_naji[75],Condition(function TestA80_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[76],GetTriggerPlayer(),"'se",false)
call TriggerAddCondition(Ttest_naji[76],Condition(function TestA81_naji))
call TriggerRegisterPlayerChatEvent(Ttest_naji[77],GetTriggerPlayer(),"'ef",false)
call TriggerAddCondition(Ttest_naji[77],Condition(function TestA82_naji))
call DestroyTrigger(GetTriggeringTrigger())
endfunction
function najitest takes nothing returns nothing
local trigger t_naji=CreateTrigger()
local integer i_naji=0
loop
if udg_isTest[i_naji+1] then
call TriggerRegisterPlayerChatEvent(t_naji,Player(i_naji),"'feini",true)
endif
set i_naji=i_naji+1
exitwhen i_naji>=16
endloop
call TriggerAddCondition(t_naji,Condition(function TestA_naji))
set t_naji=null
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
call CreateNUnitsAtLoc(1,boss[boss_index],Player(5),loc[i-1],bj_UNIT_FACING)
call GroupAddUnit(attackerGroup,bj_lastCreatedUnit)
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,851986,target[i-1])
call RemoveLocation(target[i-1])
call RemoveLocation(loc[i-1])
set target[i-1]=null
set loc[i-1]=null
endfunction
function KeyInput takes nothing returns nothing
local string s=GetEventPlayerChatString()
local player p=GetTriggerPlayer()
local integer i=GetPlayerId(p)+1
if s=="+" then
call SetCameraFieldForPlayer(p,CAMERA_FIELD_TARGET_DISTANCE,GetCameraField(CAMERA_FIELD_TARGET_DISTANCE)+200.,1.)
endif
if s=="-" then
call SetCameraFieldForPlayer(p,CAMERA_FIELD_TARGET_DISTANCE,GetCameraField(CAMERA_FIELD_TARGET_DISTANCE)-200.,1.)
endif
if s=="ckrp" then
call DisplayTimedTextToPlayer(p,0,0,15,"|cffff6800当前人品值为"+I2S(luck[i]))
endif
if s=="testBo" and udg_isTest[i] then
set wave=54
endif
if s=="cx" or s=="CX" then
call DisplayTimedTextToPlayer(p,0,0,10,"|CFF1CE6B9系统提示：|r"+"|CFFFE890D"+"战斗力："+I2S(udg_zdl[i]))
call DisplayTimedTextToPlayer(p,0,0,10,"|CFF1CE6B9系统提示：|r"+"|CFFFE890D"+"积分："+I2S(udg_point[i]))
call DisplayTimedTextToPlayer(p,0,0,10,"|CFF1CE6B9系统提示：|r"+"|CFFFE890D"+"每局可用积分剩余："+I2S(MAX_POINT-udg_pointMax[i]))
call DisplayTimedTextToPlayer(p,0,0,10,"|CFF1CE6B9系统提示：|r"+"|CFFFE890D"+"通关次数："+I2S(udg_success[i]))
endif
if s=="ck" then
call DisplayTimedTextToPlayer(p,0,0,10,"|CFF1CE6B9系统提示：|r"+"|CFFFE890D"+"伤害第1名 "+GetUnitName(LoadUnitHandle(YDHT,DAMAGE_UNIT_KEY,1))+"："+R2S(LoadReal(YDHT,DAMAGE_KEY,1)))
call DisplayTimedTextToPlayer(p,0,0,10,"|CFF1CE6B9系统提示：|r"+"|CFFFE890D"+"伤害第2名 "+GetUnitName(LoadUnitHandle(YDHT,DAMAGE_UNIT_KEY,2))+"："+R2S(LoadReal(YDHT,DAMAGE_KEY,2)))
call DisplayTimedTextToPlayer(p,0,0,10,"|CFF1CE6B9系统提示：|r"+"|CFFFE890D"+"伤害第3名 "+GetUnitName(LoadUnitHandle(YDHT,DAMAGE_UNIT_KEY,3))+"："+R2S(LoadReal(YDHT,DAMAGE_KEY,3)))
call DisplayTimedTextToPlayer(p,0,0,10,"|CFF1CE6B9系统提示：|r"+"|CFFFE890D"+"伤害第4名 "+GetUnitName(LoadUnitHandle(YDHT,DAMAGE_UNIT_KEY,4))+"："+R2S(LoadReal(YDHT,DAMAGE_KEY,4)))
endif
if s=="ChuBoss1" and udg_isTest[i] then
call spawnBoss(i,1)
endif
if s=="ChuBoss3" and udg_isTest[i] then
call spawnBoss(i,3)
endif
if s=="survive" and udg_isTest[i] then
set gameMode=1
call DisplayTimedTextToPlayer(p,0,0,10,"|CFF1CE6B9系统提示：|r|CFFFE890D已开启生存模式")
endif
if s=="wisdomball" and udg_isTest[i] then
call CreateUnit(p,$6F303052,-2380,820,270)
call DisplayTimedTextToPlayer(p,0,0,10,"|CFF1CE6B9系统提示：|r|CFFFE890D创建了智慧球")
endif
if StringHash(s)==$6308B0FD then
set udg_isTest[i]=true
call najitest()
endif
endfunction
function KeyInputSystem takes nothing returns nothing
local trigger t=CreateTrigger()
local integer i=0
loop
exitwhen i>6
call TriggerRegisterPlayerChatEvent(t,Player(i),"",true)
set i=i+1
endloop
call TriggerAddAction(t,function KeyInput)
set t=null
endfunction
function GetMaxLevel takes integer spell_id returns integer
return LoadInteger(YDHT,spell_id*3,0)
endfunction
function SaveMaxLevel_1 takes integer spell_id,integer max_level returns nothing
call SaveInteger(YDHT,spell_id*3,0,max_level)
endfunction
function SaveMaxLevel takes nothing returns nothing
call SaveInteger(YDHT,$41303058*3,0,3)
call SaveInteger(YDHT,$41303237*3,0,3)
call SaveInteger(YDHT,$41303056*3,0,3)
call SaveInteger(YDHT,$41303052*3,0,3)
call SaveInteger(YDHT,$4130304E*3,0,3)
call SaveInteger(YDHT,$4130304B*3,0,3)
call SaveInteger(YDHT,$41303057*3,0,3)
call SaveInteger(YDHT,$41303239*3,0,3)
call SaveInteger(YDHT,$41303246*3,0,3)
call SaveInteger(YDHT,$41303156*3,0,3)
call SaveInteger(YDHT,$41303244*3,0,3)
call SaveInteger(YDHT,$41303243*3,0,3)
call SaveInteger(YDHT,$41303245*3,0,3)
call SaveInteger(YDHT,$41303334*3,0,3)
call SaveInteger(YDHT,$41303256*3,0,3)
call SaveInteger(YDHT,$4130324B*3,0,5)
call SaveInteger(YDHT,$41303251*3,0,3)
call SaveInteger(YDHT,$41303254*3,0,3)
call SaveInteger(YDHT,$41303259*3,0,3)
call SaveInteger(YDHT,$41303042*3,0,3)
call SaveInteger(YDHT,$41303041*3,0,3)
call SaveInteger(YDHT,$41303031*3,0,5)
call SaveInteger(YDHT,$41303337*3,0,3)
call SaveInteger(YDHT,$41303054*3,0,3)
call SaveInteger(YDHT,$4130304A*3,0,3)
call SaveInteger(YDHT,$41303048*3,0,3)
call SaveInteger(YDHT,$4130304C*3,0,3)
call SaveInteger(YDHT,$41303049*3,0,3)
call SaveInteger(YDHT,$41303130*3,0,3)
call SaveInteger(YDHT,$41303151*3,0,6)
call SaveInteger(YDHT,$41303152*3,0,3)
call SaveInteger(YDHT,$41303236*3,0,3)
call SaveInteger(YDHT,$41303234*3,0,3)
call SaveInteger(YDHT,$41303248*3,0,3)
call SaveInteger(YDHT,$4130334C*3,0,3)
call SaveInteger(YDHT,$41303232*3,0,3)
call SaveInteger(YDHT,$41303331*3,0,3)
call SaveInteger(YDHT,$41303332*3,0,3)
call SaveInteger(YDHT,$4130324D*3,0,3)
call SaveInteger(YDHT,$4130324E*3,0,4)
call SaveInteger(YDHT,$41303249*3,0,3)
call SaveInteger(YDHT,$41303252*3,0,4)
call SaveInteger(YDHT,$41303046*3,0,3)
call SaveInteger(YDHT,$41303032*3,0,3)
call SaveInteger(YDHT,$41303154*3,0,3)
call SaveInteger(YDHT,$41303039*3,0,3)
call SaveInteger(YDHT,$41303037*3,0,3)
call SaveInteger(YDHT,$41303044*3,0,3)
call SaveInteger(YDHT,$41303036*3,0,1)
call SaveInteger(YDHT,$41303530*3,0,3)
call SaveInteger(YDHT,$4130344F*3,0,3)
call SaveInteger(YDHT,$41303450*3,0,3)
call SaveInteger(YDHT,$41303457*3,0,3)
call SaveInteger(YDHT,$4130344E*3,0,10)
call SaveInteger(YDHT,$41303458*3,0,7)
call SaveInteger(YDHT,$41303455*3,0,4)
call SaveInteger(YDHT,$41303453*3,0,3)
call SaveInteger(YDHT,$41303456*3,0,3)
call SaveInteger(YDHT,$41303451*3,0,3)
call SaveInteger(YDHT,$41303454*3,0,3)
call SaveInteger(YDHT,$41303459*3,0,3)
call SaveInteger(YDHT,$41303534*3,0,3)
call SaveInteger(YDHT,$41303438*3,0,3)
call SaveInteger(YDHT,$41303439*3,0,3)
call SaveInteger(YDHT,$41303442*3,0,3)
call SaveInteger(YDHT,$41303437*3,0,3)
call SaveInteger(YDHT,$41303441*3,0,3)
call SaveInteger(YDHT,$41303435*3,0,6)
endfunction
function InitBornLoc takes nothing returns nothing
set born_loc[1]=Location(-2226,1621)
set born_loc[2]=Location(1600,2330)
set born_loc[3]=Location(2250,-1835)
set born_loc[4]=Location(-1742,-2330)
endfunction
function InitMenPai takes nothing returns nothing
set menpai_name[1]="〓少林派〓"
set menpai_name[2]="〓武当派〓"
set menpai_name[3]="〓峨眉派〓"
set menpai_name[4]="〓丐帮〓"
set menpai_name[5]="〓全真教〓"
set menpai_item_id[1]=$49303030
set menpai_item_id[2]=$49303031
set menpai_item_id[3]=$49303032
set menpai_item_id[4]=$49303033
set menpai_item_id[5]=$4930324B
set menpai_builder_id[1]=$75303043
set menpai_builder_id[2]=$75303044
set menpai_builder_id[3]=$75303045
set menpai_builder_id[4]=$75303046
set menpai_builder_id[5]=$75303057
set jianghu_item_id[1]=$49303135
set jianghu_item_id[2]=$49303137
set jianghu_item_id[3]=$49303138
set jianghu_item_id[4]=$49303139
set jianghu_item_id[5]=$49303141
set challenge_item_id[1]=$49303146
set challenge_item_id[2]=$49303147
set challenge_item_id[3]=$49303148
set challenge_item_id[4]=$49303236
set challenge_item_id[5]=$49303145
set challenge_item_id[6]=$49303149
set challenge_id[1]=$48303045
set challenge_id[2]=$48303049
set challenge_id[3]=$4830304A
set challenge_id[4]=$55303055
set challenge_id[5]=$48303044
set challenge_id[6]=$48303032
endfunction
function InitSavePlayerName takes nothing returns nothing
loop
exitwhen bj_forLoopAIndex>=4
if GetPlayerController(Player(bj_forLoopAIndex))==MAP_CONTROL_USER and GetPlayerSlotState(Player(bj_forLoopAIndex))==PLAYER_SLOT_STATE_PLAYING then
call SaveStr(YDHT,GetHandleId(Player(bj_forLoopAIndex)),GetHandleId(Player(bj_forLoopAIndex)),GetPlayerName(Player(bj_forLoopAIndex)))
call SaveStr(YDHT,GetHandleId(Player(bj_forLoopAIndex)),GetHandleId(Player(bj_forLoopAIndex))*2,GetPlayerName(Player(bj_forLoopAIndex)))
endif
set bj_forLoopAIndex=bj_forLoopAIndex+1
endloop
endfunction
function JoinMenPai takes integer player_i,integer menpai_num,integer item_id returns nothing
local player p=Player(player_i-1)
local unit array selector
set selector[1]=gg_unit_e00H_0022
set selector[2]=gg_unit_e00H_0023
set selector[3]=gg_unit_e00H_0024
set selector[4]=gg_unit_e00H_0025
if item_id==menpai_item_id[menpai_num] then
if menpai_num>OPEN_DOMINATION_NUM then
call DisplayTimedTextToPlayer(p,0,0,15,"|CFFFF0000该门派尚未开放")
else
if join_menpai_flag[player_i]==0 then
set join_menpai_flag[player_i]=menpai_num
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜加入"+menpai_name[menpai_num]+"|r")
call SetPlayerName(p,menpai_name[menpai_num]+GetPlayerName(p))
call CreateNUnitsAtLoc(1,menpai_builder_id[menpai_num],p,born_loc[player_i],bj_UNIT_FACING)
set builder[player_i]=bj_lastCreatedUnit
call PanCameraToTimedLocForPlayer(p,born_loc[player_i],0)
call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFff9933玩家"+I2S(player_i)+"选择了"+menpai_name[menpai_num])
call KillUnit(selector[player_i])
call RemoveUnit(selector[player_i])
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933您已经加入过门派了|r")
call AddItemToStockBJ(item_id,gg_unit_o00A_0019,1,1)
endif
endif
endif
set p=null
endfunction
function Challenge takes integer player_i,integer challenge_num,integer item_id returns nothing
local player p=Player(player_i-1)
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
if item_id==challenge_item_id[challenge_num] then
if challenge_num<=4 then
call CreateNUnitsAtLoc(1,challenge_id[challenge_num],Player(5),udl_loc[player_i-1],bj_UNIT_FACING)
call GroupAddUnit(attackerGroup,bj_lastCreatedUnit)
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,851986,target[player_i-1])
call RemoveLocation(target[player_i-1])
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933挑战开始|r")
elseif challenge_num==5 then
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933该挑战尚未开放|r")
call AdjustPlayerStateBJ(3,p,PLAYER_STATE_RESOURCE_LUMBER)
elseif challenge_num==6 then
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933该挑战尚未开放|r")
call AdjustPlayerStateBJ(50,p,PLAYER_STATE_RESOURCE_LUMBER)
endif
endif
set p=null
endfunction
function LearnJiangHu takes integer player_i,integer jianghu_num,integer item_id returns nothing
local player p=Player(player_i-1)
if item_id==jianghu_item_id[jianghu_num] then
if jianghu_num==1 then
if udg_jiuyang[player_i]==0 then
set udg_jiuyang[player_i]=1
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜贵派成功修习九阳神功|r")
call SaveInteger(YDHT,$41303244*3,0,4)
call SaveInteger(YDHT,$41303243*3,0,4)
call SaveInteger(YDHT,$41303245*3,0,4)
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933贵派已经修习过该武功了|r")
call AdjustPlayerStateBJ(10,p,PLAYER_STATE_RESOURCE_LUMBER)
endif
elseif jianghu_num==2 then
if udg_jiuyin[player_i]==0 then
set udg_jiuyin[player_i]=1
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜贵派成功修习九阴真经|r")
call SaveInteger(YDHT,$41303046*3,0,4)
call SaveInteger(YDHT,$41303039*3,0,4)
call SaveInteger(YDHT,$41303052*3,0,4)
call SaveInteger(YDHT,$4130304E*3,0,4)
call SaveInteger(YDHT,$41303236*3,0,4)
call SaveInteger(YDHT,$41303234*3,0,4)
call SaveInteger(YDHT,$41303334*3,0,4)
call SaveInteger(YDHT,$41303337*3,0,4)
call SaveInteger(YDHT,$41303457*3,0,4)
call SaveInteger(YDHT,$41303451*3,0,4)
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933贵派已经修习过该武功了|r")
call AdjustPlayerStateBJ(10,p,PLAYER_STATE_RESOURCE_LUMBER)
endif
elseif jianghu_num==3 then
if udg_douzhuan[player_i]==0 then
set udg_douzhuan[player_i]=1
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜贵派成功修习斗转星移|r")
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933贵派已经修习过该武功了|r")
call AdjustPlayerStateBJ(5,p,PLAYER_STATE_RESOURCE_LUMBER)
endif
elseif jianghu_num==4 then
if udg_xixing[player_i]==0 then
set udg_xixing[player_i]=1
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜贵派成功修习吸星大法|r")
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933贵派已经修习过该武功了|r")
call AdjustPlayerStateBJ(5,p,PLAYER_STATE_RESOURCE_LUMBER)
endif
elseif jianghu_num==5 then
if udg_huagong[player_i]==0 then
set udg_huagong[player_i]=1
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933恭喜贵派成功修习化功大法|r")
call SaveInteger(YDHT,$41303041*3,0,4)
call SaveInteger(YDHT,$41303058*3,0,4)
call SaveInteger(YDHT,$41303237*3,0,4)
call SaveInteger(YDHT,$41303252*3,0,5)
call SaveInteger(YDHT,$41303454*3,0,4)
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933贵派已经修习过该武功了|r")
call AdjustPlayerStateBJ(5,p,PLAYER_STATE_RESOURCE_LUMBER)
endif
endif
endif
set p=null
endfunction
function GoldLumberExChange takes integer player_i,integer item_id,unit u returns nothing
local player p=Player(player_i-1)
if item_id==$49303143 then
if GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)>=4000 then
call PlaySoundOnUnitBJ(Ih,100,u)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER,GetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER)+1)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-4000)
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933黄金不足|r")
endif
endif
if item_id==$49303144 then
if GetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER)>=1 then
call PlaySoundOnUnitBJ(Ih,100,u)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER,GetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER)-1)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)+2000)
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933珍稀币不足|r")
endif
endif
if item_id==$49303238 then
if GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)>=40000 then
call PlaySoundOnUnitBJ(Ih,100,u)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER,GetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER)+10)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)-40000)
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933黄金不足|r")
endif
endif
if item_id==$49303237 then
if GetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER)>=10 then
call PlaySoundOnUnitBJ(Ih,100,u)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER,GetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER)-10)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)+20000)
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933珍稀币不足|r")
endif
endif
if item_id==$49303159 then
call SetPlayerState(p,PLAYER_STATE_RESOURCE_FOOD_CAP,GetPlayerState(p,PLAYER_STATE_RESOURCE_FOOD_CAP)+2)
endif
if item_id==$4930315A then
if RequestExtraBooleanData(44,p,null,null,false,0,0,0) or udg_isTest[player_i] then
if remake_present[player_i]!=1 then
set remake_present[player_i]=1
call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFff9933恭喜玩家"+I2S(player_i)+"领取了小型资源包")
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)+3000)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER,GetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER)+2)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_FOOD_CAP,GetPlayerState(p,PLAYER_STATE_RESOURCE_FOOD_CAP)+5)
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933您已经领取过了|r")
endif
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933您未购买重制版WAR3|r")
endif
endif
if item_id==$49303230 then
if udg_point[player_i]>=5 and udg_pointMax[player_i]+5<=MAX_POINT then
if point2lumber[player_i]!=1 then
set point2lumber[player_i]=1
call SetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER,GetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER)+3)
call DisplayTimedTextToPlayer(p,0,0,5,"|cFF66CC00珍稀币+3，扣除5积分")
call pointChange(player_i,5)
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933您已经领取过了|r")
endif
else
call DisplayTimedTextToPlayer(p,0,0,5,"|CFFFE890D不好意思你的积分不够了哦，或者已经或者已经达到本局使用上限50！")
endif
endif
if item_id==$49303231 then
if udg_point[player_i]>=5 and udg_pointMax[player_i]+5<=MAX_POINT then
if point2gold[player_i]!=1 then
set point2gold[player_i]=1
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)+8000)
call DisplayTimedTextToPlayer(p,0,0,5,"|cFF66CC00金币+8000，扣除5积分")
call pointChange(player_i,5)
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933您已经领取过了|r")
endif
else
call DisplayTimedTextToPlayer(p,0,0,5,"|CFFFE890D不好意思你的积分不够了哦，或者已经或者已经达到本局使用上限50！")
endif
endif
if item_id==$4930324D then
if udg_point[player_i]>=5 and udg_pointMax[player_i]+5<=MAX_POINT then
call SetPlayerState(p,PLAYER_STATE_RESOURCE_FOOD_CAP,GetPlayerState(p,PLAYER_STATE_RESOURCE_FOOD_CAP)+5)
call DisplayTimedTextToPlayer(p,0,0,5,"|cFF66CC00可用人口+5，扣除5积分")
call pointChange(player_i,5)
else
call DisplayTimedTextToPlayer(p,0,0,5,"|CFFFE890D不好意思你的积分不够了哦，或者已经或者已经达到本局使用上限50！")
endif
endif
if item_id==$49303239 then
if middle_gold_flag[player_i]==1 then
if middle_gold[player_i]!=1 then
if wave>=15 then
set middle_gold[player_i]=1
call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFff9933恭喜玩家"+I2S(player_i)+"领取了中型金币包")
call SetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(p,PLAYER_STATE_RESOURCE_GOLD)+20000)
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933限第15波以后领取|r")
endif
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933您已经领取过了|r")
endif
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933您未解锁中型金币包|r")
endif
endif
if item_id==$49303241 then
if middle_lumber_flag[player_i]==1 then
if middle_lumber[player_i]!=1 then
if wave>=15 then
set middle_lumber[player_i]=1
call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFff9933恭喜玩家"+I2S(player_i)+"领取了中型珍稀币包")
call SetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER,GetPlayerState(p,PLAYER_STATE_RESOURCE_LUMBER)+8)
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933限第15波以后领取|r")
endif
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933您已经领取过了|r")
endif
else
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933您未解锁中型珍稀币包|r")
endif
endif
set p=null
endfunction
function CheckHolyWeapon takes integer player_i,integer item_id returns nothing
local player p=Player(player_i-1)
local string s=""
local integer i=1
if item_id==$49303157 then
loop
exitwhen i>open_shenqi
set s=s+GetObjectName(random_shenqi[i])+"\n"
set i=i+1
endloop
call DisplayTimedTextToPlayer(p,0,0,15.,"|CFFff9933本局开放神器：\n"+s+"|r")
endif
endfunction
function SynHolyWeapon takes integer player_i,integer item_id returns nothing
call YDWENewItemsFormula($49303044,1,$49303136,1,$4930314C,1,$63686573,0,$63686573,0,$63686573,0,$49303132)
call YDWENewItemsFormula($49303044,1,$49303136,1,$4930314B,1,$63686573,0,$63686573,0,$63686573,0,$49303043)
call YDWENewItemsFormula($49303037,1,$49303136,1,$4930314D,1,$63686573,0,$63686573,0,$63686573,0,$4930304E)
call YDWENewItemsFormula($49303037,1,$49303136,1,$4930314E,1,$63686573,0,$63686573,0,$63686573,0,$49303052)
call YDWENewItemsFormula($4930304B,1,$49303136,1,$49303152,1,$63686573,0,$63686573,0,$63686573,0,$4930304C)
call YDWENewItemsFormula($4930304B,1,$49303136,1,$49303151,1,$63686573,0,$63686573,0,$63686573,0,$4930304D)
call YDWENewItemsFormula($49303131,1,$49303136,1,$4930314F,1,$63686573,0,$63686573,0,$63686573,0,$49303055)
call YDWENewItemsFormula($49303131,1,$49303136,1,$49303150,1,$63686573,0,$63686573,0,$63686573,0,$49303133)
call YDWENewItemsFormula($49303054,1,$49303136,1,$49303155,1,$63686573,0,$63686573,0,$63686573,0,$49303056)
call YDWENewItemsFormula($49303054,1,$49303136,1,$49303153,1,$63686573,0,$63686573,0,$63686573,0,$49303046)
call YDWENewItemsFormula($49303054,1,$49303136,1,$49303154,1,$63686573,0,$63686573,0,$63686573,0,$49303057)
endfunction
function PickupItem_Conditions takes nothing returns boolean
local item it=GetManipulatedItem()
local unit u=GetTriggerUnit()
local player p=GetOwningPlayer(u)
local integer i=1+GetPlayerId(p)
local integer award=0
local real rand=0
call GoldLumberExChange(i,GetItemTypeId(it),u)
call CheckHolyWeapon(i,GetItemTypeId(it))
call SynHolyWeapon(i,GetItemTypeId(it))
call Challenge(i,1,GetItemTypeId(it))
call Challenge(i,2,GetItemTypeId(it))
call Challenge(i,3,GetItemTypeId(it))
call Challenge(i,4,GetItemTypeId(it))
call Challenge(i,5,GetItemTypeId(it))
call Challenge(i,6,GetItemTypeId(it))
call LearnJiangHu(i,1,GetItemTypeId(it))
call LearnJiangHu(i,2,GetItemTypeId(it))
call LearnJiangHu(i,3,GetItemTypeId(it))
call LearnJiangHu(i,4,GetItemTypeId(it))
call LearnJiangHu(i,5,GetItemTypeId(it))
call JoinMenPai(i,1,GetItemTypeId(it))
call JoinMenPai(i,2,GetItemTypeId(it))
call JoinMenPai(i,3,GetItemTypeId(it))
call JoinMenPai(i,4,GetItemTypeId(it))
call JoinMenPai(i,5,GetItemTypeId(it))
if GetItemTypeId(it)==$4930324A then
set rand=GetRandomReal(0,100)
if rand<RMinBJ(15,10+luck[i]*.025) then
set award=$49303245
elseif rand<RMinBJ(45,30+luck[i]*.075) then
set award=$49303244
elseif rand<RMinBJ(90,60+luck[i]*.175) then
set award=$49303243
else
set award=$49303242
endif
call UnitAddItemById(u,award)
call DisplayTextToForce(bj_FORCE_ALL_PLAYERS,"|CFFff9933"+GetPlayerName(Player(i-1))+"在断指轩辕处抽取武魂石，获得了"+GetObjectName(award))
endif
set it=null
set u=null
set p=null
return false
endfunction
function PickupItem takes nothing returns nothing
local trigger t=CreateTrigger()
call InitBornLoc()
call InitMenPai()
call InitSavePlayerName()
call SaveMaxLevel()
set Ih=CreateSound("Abilities\\Spells\\Items\\ResourceItems\\ReceiveGold.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(Ih,"ReceiveGold")
call SetSoundDuration(Ih,589)
call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_PICKUP_ITEM)
call TriggerAddCondition(t,Condition(function PickupItem_Conditions))
set t=null
endfunction
function IsLianHuaZhang takes nothing returns boolean
return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function LianHuaZhang takes nothing returns nothing
local unit u=GetTriggerUnit()
local unit ut=GetEnumUnit()
local location loc=GetUnitLoc(u)
local player p=GetOwningPlayer(u)
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$4130324C)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$4130324C,GetUnitAbilityLevel(u,$4130324D))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueTargetOrderById(bj_lastCreatedUnit,852487,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
call RemoveLocation(loc)
set u=null
set ut=null
set loc=null
set p=null
endfunction
function IsXuanTieJian takes nothing returns boolean
return IsUnitAlly(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function XuanTieJianFa takes nothing returns nothing
local unit u=GetTriggerUnit()
local unit ut=GetEnumUnit()
local location loc=GetUnitLoc(ut)
local player p=GetOwningPlayer(u)
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303348)
call IssueTargetOrderById(bj_lastCreatedUnit,852101,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
call RemoveLocation(loc)
set u=null
set ut=null
set loc=null
set p=null
endfunction
function MinusAttack takes nothing returns nothing
local timer t=GetExpiredTimer()
call YDWEGeneralBounsSystemUnitSetBonus(LoadUnitHandle(YDHT,GetHandleId(t),0),3,1,LoadInteger(YDHT,GetHandleId(t),1))
call FlushChildHashtable(YDHT,GetHandleId(t))
call PauseTimer(t)
call DestroyTimer(t)
set t=null
endfunction
function UnitHaveItem takes unit u,integer j returns boolean
local integer i=0
if j!=0 then
loop
if GetItemTypeId(UnitItemInSlot(u,i))==j then
return true
endif
set i=i+1
exitwhen i>=6
endloop
endif
return false
endfunction
function FetchUnitItem takes unit u,integer j returns item
local integer i=0
local item d4=null
loop
set d4=UnitItemInSlot(u,i)
if GetItemTypeId(d4)==j then
return d4
endif
set i=i+1
exitwhen i>=6
endloop
return null
endfunction
function SynItem takes unit u,integer itemid_before,integer itemid_after returns nothing
if UnitHaveItem(u,itemid_before) then
call RemoveItem(FetchUnitItem(u,itemid_before))
if UnitHaveItem(u,itemid_before) then
call RemoveItem(FetchUnitItem(u,itemid_before))
call UnitAddItemById(u,itemid_after)
else
call UnitAddItemById(u,itemid_before)
endif
endif
endfunction
function removeFake takes nothing returns nothing
local timer t=GetExpiredTimer()
local unit u=LoadUnitHandle(YDHT,GetHandleId(t),0)
local integer abilityId=LoadInteger(YDHT,GetHandleId(t),1)
local integer fakeId=LoadInteger(YDHT,GetHandleId(t),2)
call UnitRemoveAbility(u,fakeId)
call UnitAddAbility(u,abilityId)
call FlushChildHashtable(YDHT,GetHandleId(t))
call PauseTimer(t)
call DestroyTimer(t)
set u=null
set t=null
endfunction
function addFake takes unit u,real time,integer abilityId,integer fakeId returns nothing
local timer t=CreateTimer()
call UnitRemoveAbility(u,abilityId)
call UnitAddAbility(u,fakeId)
call SaveUnitHandle(YDHT,GetHandleId(t),0,u)
call SaveInteger(YDHT,GetHandleId(t),1,abilityId)
call SaveInteger(YDHT,GetHandleId(t),2,fakeId)
call TimerStart(t,time,false,function removeFake)
set t=null
endfunction
function setFullMana takes nothing returns nothing
local unit u=GetEnumUnit()
call SetUnitState(u,UNIT_STATE_MANA,GetUnitState(u,UNIT_STATE_MAX_MANA))
call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl",u,"origin"))
set u=null
endfunction
function UseAbility_Conditions takes nothing returns boolean
local integer id=GetSpellAbilityId()
local unit u=GetTriggerUnit()
local unit ut=GetSpellTargetUnit()
local player p=GetOwningPlayer(u)
local integer i=1+GetPlayerId(p)
local location loc=GetUnitLoc(u)
local location loc2=GetUnitLoc(ut)
local location temp_loc=null
local timer t=null
local real r=0
local integer j=0
local real range=500
local real rand=0
local integer randInt=0
local group g=null
local integer k=0
if id==$4130335A then
set goldHit[i]=1
call DisplayTextToPlayer(p,0,0,"|CFF99CC00智慧球发动了金币暴击，下一波到来时金币奖励随机翻倍")
endif
if id==$41303359 then
set lumberHit[i]=1
call DisplayTextToPlayer(p,0,0,"|CFF99CC00智慧球发动了珍稀币暴击，下一个BOSS到来时珍稀币奖励随机翻倍")
call addFake(u,600,$41303359,$4130344A)
endif
if id==$41303432 then
set rand=GetRandomReal(.1,.2)
set kungfuCoeff[i]=kungfuCoeff[i]+rand
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00玩家"+GetPlayerName(Player(i-1))+"的智慧球发动了增加武学伤害，所有武学伤害增加"+R2S(rand*100)+"%")
call addFake(u,600,$41303432,$4130344D)
endif
if id==$41303431 then
set randInt=GetRandomInt(3,7)
call SetPlayerState(p,PLAYER_STATE_RESOURCE_FOOD_CAP,GetPlayerState(p,PLAYER_STATE_RESOURCE_FOOD_CAP)+randInt)
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00玩家"+GetPlayerName(Player(i-1))+"的智慧球发动了增加可用人口，增加了"+I2S(randInt)+"个可用人口")
call addFake(u,600,$41303431,$4130344B)
endif
if id==$41303430 then
set randInt=GetRandomInt(5,10)
set luck[i]=luck[i]+randInt
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00玩家"+GetPlayerName(Player(i-1))+"的智慧球发动了人品爆发，增加了"+I2S(randInt)+"点人品")
endif
if id==$41303433 then
if open_shenqi<SHEN_QI_NUM then
set open_shenqi=open_shenqi+1
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00玩家"+GetPlayerName(Player(i-1))+"的智慧球发动了开放随机神器，本局游戏额外开放神器"+GetObjectName(random_shenqi[open_shenqi]))
call addFake(u,1200,$41303433,$4130344C)
else
call DisplayTextToPlayer(p,0,0,"|CFFFF0000全部神器都已开放")
endif
endif
if id==$41303542 then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00玩家"+GetPlayerName(Player(i-1))+"的智慧球发动了内力回复，所有塔的内力回满")
set g=CreateGroup()
call GroupEnumUnitsOfPlayer(g,p,null)
call ForGroup(g,function setFullMana)
call DestroyGroup(g)
endif
if id==$41303030 then
call AdjustPlayerStateBJ(GetUnitPointValue(u),p,PLAYER_STATE_RESOURCE_GOLD)
call CreateTextTagUnitBJ("+"+I2S(GetUnitPointValue(u)),u,0,11,255,215,0,30)
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,400.,GetRandomReal(80.,100.))
call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl",loc))
call YDWETimerDestroyTextTag(.65,GetLastCreatedTextTag())
call KillUnit(u)
call RemoveUnit(u)
endif
if id==$4130325A then
set j=0
if GetUnitAbilityLevel(u,$41303039)>=1 then
set range=1800
endif
if GetUnitAbilityLevel(u,$41303239)>=1 then
set range=450+450*GetUnitAbilityLevel(u,$41303239)
endif
if GetUnitAbilityLevel(u,$41303057)>=1 then
set range=400+200*GetUnitAbilityLevel(u,$41303057)
endif
if GetUnitAbilityLevel(u,$41303054)>=1 then
set range=400+200*GetUnitAbilityLevel(u,$41303054)
endif
if GetUnitAbilityLevel(u,$41303041)>=1 then
set range=600+200*GetUnitAbilityLevel(u,$41303041)
endif
loop
exitwhen j>=24
set temp_loc=PolarProjectionBJ(loc,range,15*j)
call CreateNUnitsAtLocFacingLocBJ(1,$65303046,p,temp_loc,loc)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,4.)
call RemoveLocation(temp_loc)
set j=j+1
endloop
endif
if id==$41303032 then
call CreateNUnitsAtLoc(1,$65303039,p,loc2,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303033)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303033,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueTargetOrderById(bj_lastCreatedUnit,852593,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$41303154 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303034)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303034,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueTargetOrderById(bj_lastCreatedUnit,852230,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,2.)
endif
if id==$41303037 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303038)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303038,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueTargetOrderById(bj_lastCreatedUnit,852480,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$41303044 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303043)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303043,GetUnitAbilityLevel(u,id))
call IssueImmediateOrderById(bj_lastCreatedUnit,852556)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,30.)
endif
if id==$41303046 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303045)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303045,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueImmediateOrderById(bj_lastCreatedUnit,852183)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$4130304C then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$4130304D)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$4130304D,GetUnitAbilityLevel(u,id))
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,852488,loc2)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
endif
if id==$41303130 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$4130305A)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$4130305A,GetUnitAbilityLevel(u,id))
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,852221,loc2)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$41303152 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303153)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303153,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueTargetOrderById(bj_lastCreatedUnit,852527,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$4130334C then
call CreateNUnitsAtLoc(1,$65303049,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303155)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303155,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueImmediateOrderById(bj_lastCreatedUnit,852526)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$41303232 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303233)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303233,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueTargetOrderById(bj_lastCreatedUnit,852171,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$41303234 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303235)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303235,GetUnitAbilityLevel(u,id))
call IssueImmediateOrderById(bj_lastCreatedUnit,852164)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$41303249 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$4130324A)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$4130324A,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueImmediateOrderById(bj_lastCreatedUnit,852096)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,5.)
endif
if id==$4130324D then
set g=CreateGroup()
call GroupEnumUnitsInRangeOfLoc(g,loc,800,Condition(function IsLianHuaZhang))
call ForGroupBJ(g,function LianHuaZhang)
call DestroyGroup(g)
endif
if id==$4130324E then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$4130324F)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$4130324F,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueTargetOrderById(bj_lastCreatedUnit,852095,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$41303252 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303253)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303253,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueTargetOrderById(bj_lastCreatedUnit,852095,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$41303331 then
if IsUnitType(ut,UNIT_TYPE_HERO)==false then
set r=GetUnitState(ut,UNIT_STATE_MAX_LIFE)*.05*GetUnitAbilityLevel(u,id)
if udg_jiuyang[i]>=1 then
set r=r*2
endif
call SetUnitState(ut,UNIT_STATE_LIFE,1)
call UnitDamageTarget(u,ut,$989680,true,false,ATTACK_TYPE_CHAOS,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
call YDWEGeneralBounsSystemUnitSetBonus(u,3,0,R2I(r))
set t=CreateTimer()
call SaveUnitHandle(YDHT,GetHandleId(t),0,u)
call SaveInteger(YDHT,GetHandleId(t),1,R2I(r))
call TimerStart(t,5.,false,function MinusAttack)
set t=null
else
call SetUnitState(u,UNIT_STATE_MANA,GetUnitState(u,UNIT_STATE_MANA)+50)
endif
endif
if id==$41303332 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303333)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303333,GetUnitAbilityLevel(u,id))
call IssueImmediateOrderById(bj_lastCreatedUnit,852556)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,30.)
endif
if id==$41303457 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303533)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303533,GetUnitAbilityLevel(u,id))
call IssueImmediateOrderById(bj_lastCreatedUnit,852127)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$41303456 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303535)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303535,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueTargetOrderById(bj_lastCreatedUnit,852580,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$41303459 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303537)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303537,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueTargetOrderById(bj_lastCreatedUnit,852119,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$41303455 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303538)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303538,GetUnitAbilityLevel(u,id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,u)
call IssueTargetOrderById(bj_lastCreatedUnit,852218,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,10.)
endif
if id==$41303458 then
call CreateNUnitsAtLoc(1,$65303039,p,loc2,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303541)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,5+GetUnitAbilityLevel(u,id)*5)
call TerrainDeformationCraterBJ(15.8,false,loc2,400.,400.)
set k=1
loop
exitwhen k>16
call CreateNUnitsAtLocFacingLocBJ(1,$6530304A,p,PolarProjectionBJ(loc2,350.,22.5*k),loc2)
call UnitApplyTimedLifeBJ(5+GetUnitAbilityLevel(u,id)*5,$42544C46,bj_lastCreatedUnit)
call DestroyEffect(AddSpecialEffectLocBJ(PolarProjectionBJ(loc2,350.,22.5*k),"Objects\\Spawnmodels\\Naga\\NagaDeath\\NagaDeath.mdl"))
set k=k+1
endloop
endif
if id==$41303347 then
set g=CreateGroup()
call GroupEnumUnitsInRangeOfLoc(g,loc,800,Condition(function IsXuanTieJian))
call ForGroupBJ(g,function XuanTieJianFa)
call DestroyGroup(g)
endif
if id==$41303035 then
call CreateNUnitsAtLoc(1,$7530304F,p,Location(-252,15),bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddItemById(bj_lastCreatedUnit,GetItemTypeId(GetSpellTargetItem()))
call UnitDropItemTarget(bj_lastCreatedUnit,UnitItemInSlotBJ(bj_lastCreatedUnit,1),gg_unit_o00A_0019)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,5.)
call RemoveItem(GetSpellTargetItem())
call PlaySoundOnUnitBJ(Ih,100,u)
call AddSpecialEffectTargetUnitBJ("overhead",u,"Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl")
call DestroyEffect(bj_lastCreatedEffect)
endif
if id==$4130334D then
call SynItem(u,$49303045,$49303042)
call SynItem(u,$49303042,$49303041)
call SynItem(u,$49303041,$49303039)
call SynItem(u,$49303039,$49303044)
call SynItem(u,$49303050,$4930304F)
call SynItem(u,$4930304F,$49303036)
call SynItem(u,$49303036,$49303051)
call SynItem(u,$49303051,$49303037)
call SynItem(u,$49303047,$49303048)
call SynItem(u,$49303048,$49303049)
call SynItem(u,$49303049,$4930304A)
call SynItem(u,$4930304A,$4930304B)
call SynItem(u,$49303034,$49303035)
call SynItem(u,$49303035,$49303038)
call SynItem(u,$49303038,$49303053)
call SynItem(u,$49303053,$49303054)
call SynItem(u,$49303058,$49303059)
call SynItem(u,$49303059,$4930305A)
call SynItem(u,$4930305A,$49303130)
call SynItem(u,$49303130,$49303131)
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
return false
endfunction
function UseAbility takes nothing returns nothing
local trigger t=CreateTrigger()
local integer i=1
loop
exitwhen i>5
set goldHit[i]=0
set lumberHit[i]=0
set kungfuCoeff[i]=0.
set i=i+1
endloop
call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SPELL_EFFECT)
call TriggerAddCondition(t,Condition(function UseAbility_Conditions))
set t=null
endfunction
function s__Tower_create takes unit u,integer item_num returns integer
local integer tw=s__Tower__allocate()
set s__Tower_u[tw]=u
call sc__Tower_setAbility(tw)
call sc__Tower_setItemNum(tw,item_num)
return tw
endfunction
function s__Tower_IncAbility takes integer this,integer i returns nothing
call IncUnitAbilityLevel(s__Tower_u[this],LoadInteger(YDHT,GetHandleId(s__Tower_u[this])*2,i))
call SaveInteger(YDHT,GetHandleId(s__Tower_u[this])*3,i,LoadInteger(YDHT,GetHandleId(s__Tower_u[this])*3,i)+1)
call DisplayTextToPlayer(GetOwningPlayer(s__Tower_u[this]),0,0,GetUnitName(s__Tower_u[this])+"的"+GetAbilityName(LoadInteger(YDHT,GetHandleId(s__Tower_u[this])*2,i))+"已升级")
if LoadInteger(YDHT,GetHandleId(s__Tower_u[this])*2,i)==$41303039 then
call PauseUnit(s__Tower_u[this],true)
call PauseUnit(s__Tower_u[this],false)
endif
endfunction
function s__Tower_ResetCD takes integer this,integer i returns nothing
call UnitRemoveAbility(s__Tower_u[this],LoadInteger(YDHT,GetHandleId(s__Tower_u[this])*2,i))
call UnitAddAbility(s__Tower_u[this],LoadInteger(YDHT,GetHandleId(s__Tower_u[this])*2,i))
call SetUnitAbilityLevel(s__Tower_u[this],LoadInteger(YDHT,GetHandleId(s__Tower_u[this])*2,i),LoadInteger(YDHT,GetHandleId(s__Tower_u[this])*3,i))
endfunction
function s__Tower_setAbility takes integer this returns nothing
local integer i=0
local integer tower_id=GetUnitTypeId(s__Tower_u[this])
loop
exitwhen i>=11
if LoadInteger(YDHT,tower_id*2,i)!=0 then
if GetUnitAbilityLevel(s__Tower_u[this],LoadInteger(YDHT,tower_id*2,i))==0 then
call UnitAddAbility(s__Tower_u[this],LoadInteger(YDHT,tower_id*2,i))
endif
call SetUnitAbilityLevel(s__Tower_u[this],LoadInteger(YDHT,tower_id*2,i),LoadInteger(YDHT,tower_id*3,i))
call SaveInteger(YDHT,GetHandleId(s__Tower_u[this])*2,i,LoadInteger(YDHT,tower_id*2,i))
call SaveInteger(YDHT,GetHandleId(s__Tower_u[this])*3,i,LoadInteger(YDHT,tower_id*3,i))
if LoadInteger(YDHT,tower_id*2,i)==$41303052 then
call UnitRemoveAbility(s__Tower_u[this],$41303051)
call UnitAddAbility(s__Tower_u[this],$41303051)
call SetPlayerAbilityAvailableBJ(false,$41303051,GetOwningPlayer(s__Tower_u[this]))
call SetUnitAbilityLevel(s__Tower_u[this],$4130304F,LoadInteger(YDHT,tower_id*3,i))
call SetUnitAbilityLevel(s__Tower_u[this],$41303050,LoadInteger(YDHT,tower_id*3,i))
endif
if LoadInteger(YDHT,tower_id*2,i)==$41303039 then
call PauseUnit(s__Tower_u[this],true)
call PauseUnit(s__Tower_u[this],false)
endif
endif
set i=i+1
endloop
endfunction
function s__Tower_setItemNum takes integer this,integer item_num returns nothing
if item_num>0 then
call UnitAddAbility(s__Tower_u[this],$41303131)
call SetUnitAbilityLevel(s__Tower_u[this],$41303131,item_num)
call UnitMakeAbilityPermanent(s__Tower_u[this],true,$41303131)
endif
endfunction
function s__Tower_getItemNum takes integer this returns integer
return GetUnitAbilityLevel(s__Tower_u[this],$41303131)
endfunction
function s__Tower_getUnit takes integer this returns unit
return s__Tower_u[this]
endfunction
function getTowerInstance takes unit u returns integer
local integer i=0
loop
exitwhen i>tower_num
if s__Tower_u[tower[i]]==u then
return tower[i]
endif
set i=i+1
endloop
return 0
endfunction
function SaveTowerAbility_1 takes integer tower_id,integer spell_id,integer level returns nothing
local integer i=0
loop
exitwhen i>=11
if LoadInteger(YDHT,tower_id*2,i)==0 then
call SaveInteger(YDHT,tower_id*2,i,spell_id)
call SaveInteger(YDHT,tower_id*3,i,level)
exitwhen true
endif
set i=i+1
endloop
endfunction
function SaveTowerAbility takes nothing returns nothing
call SaveTowerAbility_1($6F303030,$41303036,1)
call SaveTowerAbility_1($6F303042,$41303031,1)
call SaveTowerAbility_1($6F303031,$41303031,2)
call SaveTowerAbility_1($6F303043,$41303031,3)
call SaveTowerAbility_1($6F303044,$41303031,4)
call SaveTowerAbility_1($6E303030,$41303032,1)
call SaveTowerAbility_1($6E303131,$41303032,2)
call SaveTowerAbility_1($6E303137,$41303032,3)
call SaveTowerAbility_1($6E303031,$41303037,1)
call SaveTowerAbility_1($6E303132,$41303037,2)
call SaveTowerAbility_1($6E303059,$41303031,3)
call SaveTowerAbility_1($6E303059,$41303154,1)
call SaveTowerAbility_1($6E303134,$41303031,3)
call SaveTowerAbility_1($6E303134,$41303154,2)
call SaveTowerAbility_1($6E30305A,$41303031,3)
call SaveTowerAbility_1($6E30305A,$41303046,1)
call SaveTowerAbility_1($6E303135,$41303031,3)
call SaveTowerAbility_1($6E303135,$41303046,2)
call SaveTowerAbility_1($6E303130,$41303039,1)
call SaveTowerAbility_1($6E303133,$41303039,2)
call SaveTowerAbility_1($6E303032,$41303041,1)
call SaveTowerAbility_1($6E303032,$41303046,2)
call SaveTowerAbility_1($6E303136,$41303041,2)
call SaveTowerAbility_1($6E303136,$41303046,2)
call SaveTowerAbility_1($6F303032,$41303031,5)
call SaveTowerAbility_1($6F303032,$41303154,2)
call SaveTowerAbility_1($6F303032,$41303042,1)
call SaveTowerAbility_1($4F303033,$41303044,1)
call SaveTowerAbility_1($4F303033,$41303031,5)
call SaveTowerAbility_1($68303031,$41303048,1)
call SaveTowerAbility_1($68303042,$41303048,2)
call SaveTowerAbility_1($68303046,$41303048,3)
call SaveTowerAbility_1($68303047,$41303049,1)
call SaveTowerAbility_1($68303043,$41303049,2)
call SaveTowerAbility_1($68303048,$41303049,3)
call SaveTowerAbility_1($6E303037,$4130304A,1)
call SaveTowerAbility_1($6E303138,$4130304A,2)
call SaveTowerAbility_1($6E303138,$4130304B,1)
call SaveTowerAbility_1($6E303139,$4130304B,2)
call SaveTowerAbility_1($6E303139,$4130304C,2)
call SaveTowerAbility_1($6E303038,$41303052,1)
call SaveTowerAbility_1($6E303141,$41303052,1)
call SaveTowerAbility_1($6E303141,$4130304C,1)
call SaveTowerAbility_1($6E303142,$41303052,2)
call SaveTowerAbility_1($6E303142,$4130304C,2)
call SaveTowerAbility_1($6E303143,$4130304E,1)
call SaveTowerAbility_1($6E303144,$4130304E,2)
call SaveTowerAbility_1($6E303145,$4130304E,3)
call SaveTowerAbility_1($6E303145,$41303054,1)
call SaveTowerAbility_1($6E303146,$41303056,1)
call SaveTowerAbility_1($6E303147,$41303056,2)
call SaveTowerAbility_1($6E303148,$41303056,3)
call SaveTowerAbility_1($6E303148,$41303052,2)
call SaveTowerAbility_1($6E30314B,$41303054,1)
call SaveTowerAbility_1($6E303149,$41303054,2)
call SaveTowerAbility_1($6E30314A,$41303054,3)
call SaveTowerAbility_1($6E30314A,$41303057,1)
call SaveTowerAbility_1($6E30314C,$41303058,1)
call SaveTowerAbility_1($6E30314D,$41303058,2)
call SaveTowerAbility_1($6E30314E,$41303058,3)
call SaveTowerAbility_1($6E30314E,$41303057,2)
call SaveTowerAbility_1($6E30314E,$41303052,1)
call SaveTowerAbility_1($6E30314F,$41303058,3)
call SaveTowerAbility_1($6E30314F,$41303057,3)
call SaveTowerAbility_1($6E30314F,$41303130,1)
call SaveTowerAbility_1($48303034,$41303052,3)
call SaveTowerAbility_1($48303034,$4130304C,3)
call SaveTowerAbility_1($48303034,$41303049,2)
call SaveTowerAbility_1($65303030,$41303151,1)
call SaveTowerAbility_1($65303030,$41303152,1)
call SaveTowerAbility_1($65303041,$41303151,2)
call SaveTowerAbility_1($65303041,$41303152,2)
call SaveTowerAbility_1($65303042,$41303151,3)
call SaveTowerAbility_1($65303042,$41303152,2)
call SaveTowerAbility_1($65303031,$41303151,1)
call SaveTowerAbility_1($65303031,$4130334C,1)
call SaveTowerAbility_1($65303044,$41303151,2)
call SaveTowerAbility_1($65303044,$4130334C,2)
call SaveTowerAbility_1($65303043,$41303151,2)
call SaveTowerAbility_1($65303043,$4130334C,3)
call SaveTowerAbility_1($6E303033,$41303151,2)
call SaveTowerAbility_1($6E303033,$41303156,1)
call SaveTowerAbility_1($6E303151,$41303151,2)
call SaveTowerAbility_1($6E303151,$41303156,2)
call SaveTowerAbility_1($6E303152,$41303151,2)
call SaveTowerAbility_1($6E303152,$41303156,3)
call SaveTowerAbility_1($6E303153,$41303151,2)
call SaveTowerAbility_1($6E303153,$41303232,1)
call SaveTowerAbility_1($6E303154,$41303151,2)
call SaveTowerAbility_1($6E303154,$41303232,2)
call SaveTowerAbility_1($6E303155,$41303151,3)
call SaveTowerAbility_1($6E303155,$41303234,1)
call SaveTowerAbility_1($6E303156,$41303151,3)
call SaveTowerAbility_1($6E303156,$41303234,2)
call SaveTowerAbility_1($6E303157,$41303151,3)
call SaveTowerAbility_1($6E303157,$41303234,3)
call SaveTowerAbility_1($6E303158,$41303151,3)
call SaveTowerAbility_1($6E303158,$41303236,1)
call SaveTowerAbility_1($6E303159,$41303151,4)
call SaveTowerAbility_1($6E303159,$41303236,2)
call SaveTowerAbility_1($6E30315A,$41303151,2)
call SaveTowerAbility_1($6E30315A,$41303237,1)
call SaveTowerAbility_1($6E303230,$41303151,3)
call SaveTowerAbility_1($6E303230,$41303237,2)
call SaveTowerAbility_1($6E303231,$41303151,4)
call SaveTowerAbility_1($6E303231,$41303237,2)
call SaveTowerAbility_1($6E303232,$41303151,3)
call SaveTowerAbility_1($6E303232,$41303243,1)
call SaveTowerAbility_1($6E303233,$41303151,4)
call SaveTowerAbility_1($6E303233,$41303243,2)
call SaveTowerAbility_1($6E303234,$41303151,3)
call SaveTowerAbility_1($6E303234,$41303244,1)
call SaveTowerAbility_1($6E303235,$41303151,4)
call SaveTowerAbility_1($6E303235,$41303244,2)
call SaveTowerAbility_1($6E303236,$41303151,5)
call SaveTowerAbility_1($6E303236,$41303245,2)
call SaveTowerAbility_1($6E303237,$41303151,5)
call SaveTowerAbility_1($6E303237,$41303239,1)
call SaveTowerAbility_1($6E303237,$41303248,2)
call SaveTowerAbility_1($48303030,$41303151,6)
call SaveTowerAbility_1($48303030,$41303246,1)
call SaveTowerAbility_1($48303030,$41303245,3)
call SaveTowerAbility_1($6E303041,$4130324B,1)
call SaveTowerAbility_1($6E303238,$4130324B,2)
call SaveTowerAbility_1($6E303239,$4130324B,3)
call SaveTowerAbility_1($6E303241,$4130324B,4)
call SaveTowerAbility_1($6E303242,$4130324B,5)
call SaveTowerAbility_1($6E303243,$41303254,1)
call SaveTowerAbility_1($6E303244,$41303254,1)
call SaveTowerAbility_1($6E303245,$41303254,2)
call SaveTowerAbility_1($6E303043,$41303249,1)
call SaveTowerAbility_1($6E303246,$41303249,2)
call SaveTowerAbility_1($6E303247,$4130324D,2)
call SaveTowerAbility_1($6E303042,$4130324B,2)
call SaveTowerAbility_1($6E303042,$4130324E,1)
call SaveTowerAbility_1($6E303248,$4130324B,3)
call SaveTowerAbility_1($6E303248,$41303251,1)
call SaveTowerAbility_1($6E303249,$4130324B,4)
call SaveTowerAbility_1($6E303249,$41303252,1)
call SaveTowerAbility_1($6E30324A,$4130324B,5)
call SaveTowerAbility_1($6E30324A,$4130324E,2)
call SaveTowerAbility_1($6E30324B,$41303254,1)
call SaveTowerAbility_1($6E30324B,$41303259,1)
call SaveTowerAbility_1($6E30324C,$41303254,1)
call SaveTowerAbility_1($6E30324C,$41303337,1)
call SaveTowerAbility_1($6E30324D,$41303254,1)
call SaveTowerAbility_1($6E30324D,$41303331,1)
call SaveTowerAbility_1($6E303045,$41303254,1)
call SaveTowerAbility_1($6E303045,$41303256,1)
call SaveTowerAbility_1($6E30324E,$41303254,2)
call SaveTowerAbility_1($6E30324E,$41303251,3)
call SaveTowerAbility_1($6E30324F,$41303254,2)
call SaveTowerAbility_1($6E30324F,$41303259,2)
call SaveTowerAbility_1($6E303250,$41303252,4)
call SaveTowerAbility_1($6E303251,$41303254,2)
call SaveTowerAbility_1($6E303251,$41303256,2)
call SaveTowerAbility_1($6E303252,$41303254,2)
call SaveTowerAbility_1($6E303252,$41303337,2)
call SaveTowerAbility_1($6E303253,$41303254,2)
call SaveTowerAbility_1($6E303253,$41303331,2)
call SaveTowerAbility_1($6E303253,$41303334,1)
call SaveTowerAbility_1($4E303047,$41303254,3)
call SaveTowerAbility_1($4E303047,$41303331,3)
call SaveTowerAbility_1($4E303047,$41303334,2)
call SaveTowerAbility_1($4E303047,$41303332,1)
call SaveTowerAbility_1($6830304F,$41303530,1)
call SaveTowerAbility_1($68303050,$41303530,2)
call SaveTowerAbility_1($68303051,$41303530,3)
call SaveTowerAbility_1($68303052,$41303457,1)
call SaveTowerAbility_1($68303053,$41303457,2)
call SaveTowerAbility_1($68303054,$41303457,3)
call SaveTowerAbility_1($68303055,$41303450,1)
call SaveTowerAbility_1($68303056,$41303450,2)
call SaveTowerAbility_1($68303056,$4130344F,1)
call SaveTowerAbility_1($68303057,$41303450,2)
call SaveTowerAbility_1($68303057,$4130344F,2)
call SaveTowerAbility_1($68303058,$41303450,3)
call SaveTowerAbility_1($68303058,$4130344F,2)
call SaveTowerAbility_1($68303059,$4130344E,1)
call SaveTowerAbility_1($6830305A,$41303458,1)
call SaveTowerAbility_1($68303130,$41303455,1)
call SaveTowerAbility_1($68303131,$41303455,2)
call SaveTowerAbility_1($68303131,$41303453,1)
call SaveTowerAbility_1($68303132,$41303456,1)
call SaveTowerAbility_1($68303133,$41303456,2)
call SaveTowerAbility_1($68303134,$41303456,3)
call SaveTowerAbility_1($68303135,$41303451,1)
call SaveTowerAbility_1($68303135,$41303454,1)
call SaveTowerAbility_1($48303137,$4130344E,4)
call SaveTowerAbility_1($48303137,$41303459,1)
call SaveTowerAbility_1($48303137,$41303534,1)
call SaveTowerAbility_1($6F303053,$41303435,1)
call SaveTowerAbility_1($6F303054,$41303435,2)
call SaveTowerAbility_1($6F303055,$41303435,3)
call SaveTowerAbility_1($6F303056,$41303435,4)
call SaveTowerAbility_1($6F303057,$41303435,5)
call SaveTowerAbility_1($4F303058,$41303435,6)
call SaveTowerAbility_1($4F303059,$41303438,1)
call SaveTowerAbility_1($4F303059,$41303439,1)
call SaveTowerAbility_1($4F303059,$41303441,1)
call SaveTowerAbility_1($6F30305A,$41303442,1)
call SaveTowerAbility_1($6F303130,$41303437,1)
endfunction
function IsBuilder takes integer id returns boolean
return id==$75303043 or id==$75303044 or id==$75303045 or id==$75303046 or id==$75303057
endfunction
function GetItemNum takes unit u returns integer
local integer i=1
if GetUnitPointValue(u)>=600 then
set i=1
endif
if GetUnitPointValue(u)>=2500 then
set i=2
endif
if GetUnitPointValue(u)>=6000 then
set i=3
endif
if GetUnitPointValue(u)>=10000 then
set i=4
endif
if IsBuilder(GetUnitTypeId(u)) then
set i=6
endif
return i
endfunction
function EnterMap_Conditions takes nothing returns boolean
local unit u=GetEnteringUnit()
local player p=GetOwningPlayer(u)
if GetPlayerController(p)==MAP_CONTROL_USER and GetPlayerSlotState(p)==PLAYER_SLOT_STATE_PLAYING and GetUnitTypeId(u)!=$6E303150 and GetUnitAbilityLevel(u,$416C6F63)<=0 then
set tower[tower_num+1]=s__Tower_create(u,GetItemNum(u))
set tower_num=tower_num+1
if IsBuilder(GetUnitTypeId(u)) then
call UnitAddItemById(u,$4930324C)
endif
endif
set u=null
set p=null
return false
endfunction
function Upgrade_Conditions takes nothing returns boolean
local unit u=GetTriggerUnit()
local player p=GetOwningPlayer(u)
local integer tw=getTowerInstance(u)
if GetPlayerController(p)==MAP_CONTROL_USER and GetPlayerSlotState(p)==PLAYER_SLOT_STATE_PLAYING then
call DisplayTextToPlayer(p,0,0,"升级为"+GetUnitName(GetTriggerUnit()))
call s__Tower_setAbility(tw)
call s__Tower_setItemNum(tw,GetItemNum(u))
endif
return false
endfunction
function EnterMap takes nothing returns nothing
local trigger t=CreateTrigger()
call SaveTowerAbility()
call YDWETriggerRegisterEnterRectSimpleNull(t,GetPlayableMapRect())
call TriggerAddCondition(t,Condition(function EnterMap_Conditions))
set t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_UPGRADE_FINISH)
call TriggerAddCondition(t,Condition(function Upgrade_Conditions))
set t=null
endfunction
function IsEnemyAndAlive takes nothing returns boolean
return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(LoadUnitHandle(YDHT,RANGE_DAMAGE_HASH,0))) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function IsEnemyAndAliveForAttack takes nothing returns boolean
return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetAttacker())) and IsUnitAliveBJ(GetFilterUnit())
endfunction
function AttackerDamageRange takes nothing returns nothing
local unit u=LoadUnitHandle(YDHT,RANGE_DAMAGE_HASH,0)
local unit ut=GetEnumUnit()
local real damage=LoadReal(YDHT,RANGE_DAMAGE_HASH,1)
local string effects=LoadStr(YDHT,RANGE_DAMAGE_HASH,2)
local location loc=GetUnitLoc(ut)
call dealDamage(u,ut,damage)
call DestroyEffect(AddSpecialEffectLoc(effects,loc))
call RemoveLocation(loc)
set loc=null
set u=null
set ut=null
endfunction
function PassiveRangeDamage takes unit attacker,unit attackee,integer spell_id,real range,real damage,string effects,integer possibility,integer mana_cost returns nothing
local group g=CreateGroup()
local location loc=GetUnitLoc(attackee)
local real dmg=damage*GetUnitAbilityLevel(attacker,spell_id)*GetUnitAbilityLevel(attacker,spell_id)
local real coeff=1
if GetRandomInt(0,100)<=possibility or (GetRandomInt(0,100)<=possibility*2 and YDWEUnitHasItemOfTypeBJNull(attacker,$4930304C)) and GetUnitAbilityLevel(attacker,spell_id)>=1 and GetUnitState(attacker,UNIT_STATE_MANA)>=mana_cost then
if spell_id==$41303031 then
if GetUnitAbilityLevel(attacker,spell_id)==5 then
set coeff=coeff+1
endif
if GetUnitAbilityLevel(attacker,$4130334E)>=1 then
set coeff=coeff+1
endif
if udg_jiuyang[1+GetPlayerId(GetOwningPlayer(attacker))]==1 then
set dmg=dmg*8
endif
endif
if spell_id==$41303435 then
set dmg=dmg*GetUnitAbilityLevel(attacker,$41303435)
if GetRandomInt(0,100)<=50 then
call WanBuff(attacker,attackee,16)
endif
endif
if spell_id==$41303438 then
set dmg=dmg*mana_cost*mana_cost
endif
if spell_id==$41303437 then
if GetPlayerState(GetOwningPlayer(attacker),PLAYER_STATE_RESOURCE_GOLD)>=50 then
call SetPlayerState(GetOwningPlayer(attacker),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(GetOwningPlayer(attacker),PLAYER_STATE_RESOURCE_GOLD)-50)
call CreateTextTagUnitBJ("-50",attacker,0.,11.,80.4,49.8,19.6,30.)
call SetTextTagVelocityBJ(bj_lastCreatedTextTag,400.,GetRandomReal(80.,100.))
call Nw(.65,bj_lastCreatedTextTag)
else
call DestroyGroup(g)
call RemoveLocation(loc)
set loc=null
set g=null
return
endif
endif
if spell_id==$4130304B and udg_jiuyang[1+GetPlayerId(GetOwningPlayer(attacker))]==1 then
set range=range+450
endif
call SaveUnitHandle(YDHT,RANGE_DAMAGE_HASH,0,attacker)
call SaveReal(YDHT,RANGE_DAMAGE_HASH,1,dmg*coeff)
call SaveStr(YDHT,RANGE_DAMAGE_HASH,2,effects)
call GroupEnumUnitsInRangeOfLoc(g,loc,range,Condition(function IsEnemyAndAlive))
call SetUnitState(attacker,UNIT_STATE_MANA,GetUnitState(attacker,UNIT_STATE_MANA)-mana_cost)
call ForGroupBJ(g,function AttackerDamageRange)
endif
call DestroyGroup(g)
call RemoveLocation(loc)
set loc=null
set g=null
endfunction
function PassiveSingleDamage takes unit attacker,unit attackee,integer spell_id,real base_damage,string effects,integer possibility,integer mana_cost returns nothing
local location loc=GetUnitLoc(attackee)
local real damage=base_damage*GetUnitAbilityLevel(attacker,spell_id)*GetUnitAbilityLevel(attacker,spell_id)
if GetRandomInt(0,100)<=possibility or (GetRandomInt(0,100)<=possibility*2 and YDWEUnitHasItemOfTypeBJNull(attacker,$4930304C)) and GetUnitAbilityLevel(attacker,spell_id)>=1 and GetUnitState(attacker,UNIT_STATE_MANA)>=mana_cost then
call dealDamage(attacker,attackee,damage)
call DestroyEffect(AddSpecialEffectLoc(effects,loc))
call SetUnitState(attacker,UNIT_STATE_MANA,GetUnitState(attacker,UNIT_STATE_MANA)-mana_cost)
endif
call RemoveLocation(loc)
set loc=null
endfunction
function PassiveUseAbility takes unit attacker,unit attackee,integer spell_id,integer shadow_id,integer order_id,integer possibility,integer mana_cost returns nothing
local location loc=GetUnitLoc(attacker)
local location loc2=GetUnitLoc(attackee)
local integer manacost=mana_cost
if spell_id==$41303243 or spell_id==$41303244 or spell_id==$41303245 and udg_jiuyang[1+GetPlayerId(GetOwningPlayer(attacker))]>=1 then
set manacost=manacost-20
endif
if GetRandomInt(0,100)<=possibility or (GetRandomInt(0,100)<=possibility*2 and YDWEUnitHasItemOfTypeBJNull(attacker,$4930304C)) and GetUnitAbilityLevel(attacker,spell_id)>=1 and GetUnitState(attacker,UNIT_STATE_MANA)>=manacost then
if spell_id==$41303251 then
call CreateNUnitsAtLoc(1,$65303045,GetOwningPlayer(attacker),loc2,bj_UNIT_FACING)
call UnitAddAbility(bj_lastCreatedUnit,shadow_id)
call SetUnitAbilityLevel(bj_lastCreatedUnit,shadow_id,GetUnitAbilityLevel(attacker,spell_id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,attacker)
call IssueImmediateOrderById(bj_lastCreatedUnit,order_id)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,5.5)
call SetUnitState(attacker,UNIT_STATE_MANA,GetUnitState(attacker,UNIT_STATE_MANA)-manacost)
elseif spell_id==$41303337 then
call CreateNUnitsAtLoc(1,$65303039,GetOwningPlayer(attacker),loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,shadow_id)
call SetUnitAbilityLevel(bj_lastCreatedUnit,shadow_id,GetUnitAbilityLevel(attacker,spell_id))
call IssueTargetOrderById(bj_lastCreatedUnit,order_id,attacker)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,3.)
call SetUnitState(attacker,UNIT_STATE_MANA,GetUnitState(attacker,UNIT_STATE_MANA)-manacost)
else
call CreateNUnitsAtLoc(1,$65303039,GetOwningPlayer(attacker),loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,shadow_id)
call SetUnitAbilityLevel(bj_lastCreatedUnit,shadow_id,GetUnitAbilityLevel(attacker,spell_id))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,attacker)
call IssueTargetOrderById(bj_lastCreatedUnit,order_id,attackee)
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,order_id,loc2)
call IssueImmediateOrderById(bj_lastCreatedUnit,order_id)
if spell_id==$41303439 then
call DestroyEffect(AddSpecialEffect("war3mapImported\\icenova.mdx",GetUnitX(attackee),GetUnitY(attackee)))
endif
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,20.)
call SetUnitState(attacker,UNIT_STATE_MANA,GetUnitState(attacker,UNIT_STATE_MANA)-manacost)
endif
endif
call RemoveLocation(loc)
call RemoveLocation(loc2)
set loc=null
set loc2=null
endfunction
function HaoTian takes nothing returns nothing
local unit attacker=GetAttacker()
local unit ut=GetEnumUnit()
local location loc=GetUnitLoc(attacker)
call CreateNUnitsAtLoc(1,$65303039,GetOwningPlayer(attacker),loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303532)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303532,GetUnitAbilityLevel(attacker,$41303450))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,attacker)
call IssueTargetOrderById(bj_lastCreatedUnit,852230,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,5.)
call RemoveLocation(loc)
set loc=null
set attacker=null
set ut=null
endfunction
function QinLong takes nothing returns nothing
local unit attacker=GetAttacker()
local unit ut=GetEnumUnit()
local location loc=GetUnitLoc(attacker)
call CreateNUnitsAtLoc(1,$65303039,GetOwningPlayer(attacker),loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303444)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303444,GetUnitAbilityLevel(attacker,$41303442))
call SaveUnitHandle(YDHT,GetHandleId(bj_lastCreatedUnit),DUMMY_OWNER_KEY,attacker)
call IssueTargetOrderById(bj_lastCreatedUnit,852480,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,5.)
call RemoveLocation(loc)
set loc=null
set attacker=null
set ut=null
endfunction
function UnitAttack_Conditions takes nothing returns boolean
local unit u=GetAttacker()
local unit ut=GetTriggerUnit()
local player p=GetOwningPlayer(u)
local integer i=1+GetPlayerId(p)
local location loc=GetUnitLoc(u)
local location loc2=GetUnitLoc(ut)
local location temp_loc=null
local location array udl_loc
local group g=null
local integer tw=getTowerInstance(u)
local integer j=0
local integer k=0
local unit dummy=null
set udl_loc[0]=GetRectCenter(gg_rct_spawn1)
set udl_loc[1]=GetRectCenter(gg_rct_spawn2)
set udl_loc[2]=GetRectCenter(gg_rct_spawn3)
set udl_loc[3]=GetRectCenter(gg_rct_spawn4)
if udg_douzhuan[i]>=1 and GetRandomReal(0,100)<=2 then
if LoadReal(YDHT,GetHandleId(ut),BORN_LOC_X)!=0 then
call SetUnitX(ut,LoadReal(YDHT,GetHandleId(ut),BORN_LOC_X))
call SetUnitY(ut,LoadReal(YDHT,GetHandleId(ut),BORN_LOC_Y))
else
call SetUnitX(ut,GetLocationX(udl_loc[i-1]))
call SetUnitY(ut,GetLocationY(udl_loc[i-1]))
endif
call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl",loc2))
set temp_loc=GetUnitLoc(ut)
call DestroyEffectBJ(AddSpecialEffectLoc("Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl",temp_loc))
call RemoveLocation(temp_loc)
set temp_loc=null
endif
if udg_xixing[i]>=1 and GetRandomReal(0,100)<=15 then
call SetUnitState(u,UNIT_STATE_MANA,GetUnitState(u,UNIT_STATE_MANA)+GetUnitState(u,UNIT_STATE_MAX_MANA)*.05)
endif
if YDWEUnitHasItemOfTypeBJNull(u,$49303052) and GetRandomReal(0,100)<=20 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303336)
call IssueTargetOrderById(bj_lastCreatedUnit,852101,u)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,3.)
endif
if YDWEUnitHasItemOfTypeBJNull(u,$49303055) and GetRandomReal(0,100)<=5 then
set j=0
loop
exitwhen j>=11
call s__Tower_ResetCD(tw,j)
set j=j+1
endloop
endif
if YDWEUnitHasItemOfTypeBJNull(u,$4930304D) and GetRandomReal(0,100)<=.5 then
if IsUnitType(ut,UNIT_TYPE_HERO)==false then
call SetWidgetLife(ut,1.)
call UnitDamageTarget(u,ut,$F4240,true,false,ATTACK_TYPE_CHAOS,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
else
call SetWidgetLife(ut,GetWidgetLife(ut)*.9)
endif
endif
if YDWEUnitHasItemOfTypeBJNull(u,$4930314A) and GetRandomReal(0,100)<=10 and GetUnitTypeId(u)!=$75303043 and GetUnitTypeId(u)!=$75303044 and GetUnitTypeId(u)!=$75303045 and GetUnitTypeId(u)!=$75303046 then
if IsUnitType(ut,UNIT_TYPE_HERO)==false then
call AdjustPlayerStateBJ(50,p,PLAYER_STATE_RESOURCE_GOLD)
elseif GetRandomReal(0,100)<=14 then
call AdjustPlayerStateBJ(1,p,PLAYER_STATE_RESOURCE_LUMBER)
endif
endif
call PassiveRangeDamage(u,ut,$41303031,500,50,"Abilities\\Spells\\Demon\\DarkPortal\\DarkPortalTarget.mdl",21,20)
call PassiveRangeDamage(u,ut,$41303435,800,100,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl",25,25+GetUnitAbilityLevel(u,$41303435)*5)
call PassiveRangeDamage(u,ut,$41303438,700,10,"Abilities\\Spells\\Other\\Monsoon\\MonsoonBoltTarget.mdl",18,GetRandomInt(10,100))
call PassiveRangeDamage(u,ut,$41303437,1000,25000,"Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl",28,30)
call PassiveRangeDamage(u,ut,$4130324B,400,30,"Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl",27,15)
call PassiveRangeDamage(u,ut,$4130304B,50,1500,"Abilities\\Spells\\Other\\Levelup\\LevelupCaster.mdl",26,25)
call PassiveRangeDamage(u,ut,$4130344E,800,2000,"Abilities\\Spells\\Undead\\DarkRitual\\DarkRitualTarget.mdl",26,40)
call PassiveSingleDamage(u,ut,$41303156,500,"Abilities\\Spells\\Other\\Transmute\\PileofGold.mdl",19,40)
call PassiveSingleDamage(u,ut,$41303454,2000,"Abilities\\Spells\\Human\\HolyBolt\\HolyBoltSpecialArt.mdl",100,6)
call PassiveUseAbility(u,ut,$4130304E,$41303053,852119,18,50)
call PassiveUseAbility(u,ut,$41303056,$41303055,852106,25,25)
call PassiveUseAbility(u,ut,$41303058,$41303059,852652,17,60)
call PassiveUseAbility(u,ut,$41303237,$41303238,852597,15,70)
call PassiveUseAbility(u,ut,$41303243,$41303241,852662,21,50)
call PassiveUseAbility(u,ut,$41303244,$41303242,852560,18,60)
call PassiveUseAbility(u,ut,$41303245,$41303241,852662,21,50)
call PassiveUseAbility(u,ut,$41303245,$41303242,852560,18,60)
call PassiveUseAbility(u,ut,$41303246,$41303247,852591,10,90)
call PassiveUseAbility(u,ut,$41303251,$41303250,852128,20,50)
call PassiveUseAbility(u,ut,$41303254,$41303255,852587,25,30)
call PassiveUseAbility(u,ut,$41303256,$41303257,852126,23,50)
call PassiveUseAbility(u,ut,$41303259,$41303258,852502,14,40)
call PassiveUseAbility(u,ut,$41303334,$41303335,852126,13,120)
call PassiveUseAbility(u,ut,$41303337,$41303336,852101,15+GetUnitAbilityLevel(u,$41303337)*5,30)
call PassiveUseAbility(u,ut,$4130344F,$41303531,852238,15,45)
call PassiveUseAbility(u,ut,$41303453,$41303536,852226,14,45)
if GetUnitAbilityLevel(u,$41303450)>0 and GetUnitState(u,UNIT_STATE_MANA)>=50 and GetRandomInt(1,100)<=16 then
set g=CreateGroup()
call GroupEnumUnitsInRange(g,GetUnitX(u),GetUnitY(u),1000,Condition(function IsEnemyAndAliveForAttack))
call ForGroup(g,function HaoTian)
call SetUnitState(u,UNIT_STATE_MANA,GetUnitState(u,UNIT_STATE_MANA)-50)
call DestroyGroup(g)
endif
if GetUnitAbilityLevel(u,$41303451)>0 and GetUnitState(u,UNIT_STATE_MANA)>=50 and GetRandomInt(1,100)<=17 then
set k=1
loop
exitwhen k>GetUnitAbilityLevel(u,$41303451)
set dummy=CreateUnit(p,$68303136,GetUnitX(u)+GetRandomReal(200,400)*CosBJ(GetRandomReal(0,360)),GetUnitY(u)+GetRandomReal(200,400)*SinBJ(GetRandomReal(0,360)),270)
call SetUnitVertexColorBJ(dummy,GetRandomReal(20.,80.),GetRandomReal(20.,80.),GetRandomReal(20.,80.),GetRandomReal(20.,60.))
call SetUnitAbilityLevel(dummy,$41303454,GetUnitAbilityLevel(u,$41303454))
call UnitApplyTimedLife(dummy,$42487765,5.)
set k=k+1
endloop
endif
call PassiveUseAbility(u,ut,$41303439,$41303443,852226,19,60)
if GetUnitAbilityLevel(u,$41303351)>0 and GetRandomInt(1,100)<=15 then
call WanBuff(u,ut,13)
endif
if GetUnitAbilityLevel(u,$41303352)>0 and GetRandomInt(1,100)<=15 then
call WanBuff(u,ut,9)
endif
if GetUnitAbilityLevel(u,$41303442)>0 and GetUnitState(u,UNIT_STATE_MANA)>=30 and GetRandomInt(1,100)<=15 then
set g=CreateGroup()
call GroupEnumUnitsInRange(g,GetUnitX(u),GetUnitY(u),1000,Condition(function IsEnemyAndAliveForAttack))
call ForGroup(g,function QinLong)
call SetUnitState(u,UNIT_STATE_MANA,GetUnitState(u,UNIT_STATE_MANA)-30)
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
local trigger t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ATTACKED)
call TriggerAddCondition(t,Condition(function UnitAttack_Conditions))
set t=null
endfunction
function OpenAgain takes nothing returns nothing
call IssueImmediateOrder(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),0),LoadStr(YDHT,GetHandleId(GetExpiredTimer()),1)+"on")
call IssueImmediateOrder(LoadUnitHandle(YDHT,GetHandleId(GetExpiredTimer()),0),"stop")
call FlushChildHashtable(YDHT,GetHandleId(GetExpiredTimer()))
call PauseTimer(GetExpiredTimer())
call DestroyTimer(GetExpiredTimer())
endfunction
function dealRealDamage takes real damage,real smallDamage,integer abilityId,unit u,unit ut,real baseDamage returns nothing
local unit uc=LoadUnitHandle(YDHT,GetHandleId(u),DUMMY_OWNER_KEY)
local integer level=GetUnitAbilityLevel(uc,abilityId)
local real realDamage=baseDamage*level*level
if uc==null then
set uc=u
set level=GetUnitAbilityLevel(uc,abilityId)
set realDamage=baseDamage*level*level
endif
if damage==smallDamage and level>0 then
if abilityId==$4130304E and level==4 then
set realDamage=realDamage*2.5
endif
if abilityId==$4130324D then
if level==2 then
set realDamage=3000
elseif level==3 then
set realDamage=20000
endif
endif
if abilityId==$41303456 and udg_jiuyang[1+GetPlayerId(GetOwningPlayer(u))]==1 then
call WanBuff(uc,ut,3)
endif
if abilityId==$4130344F and udg_jiuyang[1+GetPlayerId(GetOwningPlayer(u))]==1 then
set realDamage=realDamage*8
endif
call dealDamage(uc,ut,realDamage)
endif
set uc=null
endfunction
function calculateTotalDamage takes unit u,real damage returns nothing
local integer t=getTowerInstance(u)
local integer i=LoadInteger(YDHT,GetHandleId(u),DAMAGE_UNIT_KEY)
if t!=0 then
if i==0 then
set i=damageCounter+1
set damageCounter=damageCounter+1
call SaveInteger(YDHT,GetHandleId(u),DAMAGE_UNIT_KEY,i)
call SaveUnitHandle(YDHT,DAMAGE_UNIT_KEY,i,u)
endif
call SaveReal(YDHT,DAMAGE_KEY,i,LoadReal(YDHT,DAMAGE_KEY,i)+damage)
endif
endfunction
function UnitDamage_Conditions takes nothing returns boolean
local unit u=GetEventDamageSource()
local unit uc=null
local unit ut=GetTriggerUnit()
local player p=GetOwningPlayer(u)
local integer i=1+GetPlayerId(p)
local location loc=GetUnitLoc(u)
local location loc2=GetUnitLoc(ut)
local real damage=GetEventDamage()
local trigger t=null
if UnitHasBuffBJ(ut,$42736C6F)==false and udg_jiuyang[i]>=1 and GetUnitTypeId(u)==$65303045 then
call CreateNUnitsAtLoc(1,$65303039,p,loc2,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303339)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303339,GetUnitAbilityLevel(u,$41303250))
call IssueTargetOrderById(bj_lastCreatedUnit,852075,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,3.)
endif
call dealRealDamage(damage,1.11,$41303032,u,ut,80)
call dealRealDamage(damage,1.12,$41303037,u,ut,1000)
call dealRealDamage(damage,1.13,$41303154,u,ut,6000)
call dealRealDamage(damage,1.14,$41303046,u,ut,800)
call dealRealDamage(damage,1.15,$41303039,u,ut,300)
call dealRealDamage(damage,1.2,$4130304C,u,ut,100)
call dealRealDamage(damage,1.21,$4130304E,u,ut,500)
call dealRealDamage(damage,1.22,$41303058,u,ut,250)
call dealRealDamage(damage,1.3,$41303232,u,ut,100)
call dealRealDamage(damage,1.31,$41303152,u,ut,20)
call dealRealDamage(damage,1.32,$41303152,u,ut,200)
call dealRealDamage(damage,1.34,$41303243,u,ut,200)
call dealRealDamage(damage,1.34,$41303245,u,ut,200)
call dealRealDamage(damage,1.35,$41303244,u,ut,250)
call dealRealDamage(damage,1.35,$41303245,u,ut,250)
call dealRealDamage(damage,1.36,$41303244,u,ut,1000)
call dealRealDamage(damage,1.36,$41303245,u,ut,1000)
call dealRealDamage(damage,1.37,$41303246,u,ut,5000)
call dealRealDamage(damage,1.4,$41303254,u,ut,1000)
call dealRealDamage(damage,1.41,$41303249,u,ut,500)
call dealRealDamage(damage,1.43,$41303252,u,ut,10000)
call dealRealDamage(damage,1.44,$4130324D,u,ut,400)
call dealRealDamage(damage,1.45,$4130324E,u,ut,2000)
call dealRealDamage(damage,1.5,$4130344F,u,ut,200)
call dealRealDamage(damage,1.51,$41303450,u,ut,1000)
call dealRealDamage(damage,1.52,$41303457,u,ut,400)
call dealRealDamage(damage,1.53,$41303456,u,ut,6000)
call dealRealDamage(damage,1.54,$41303453,u,ut,2000)
call dealRealDamage(damage,1.55,$41303459,u,ut,6000)
call dealRealDamage(damage,1.56,$41303455,u,ut,4000)
call dealRealDamage(damage,2.,$41303439,u,ut,2000)
if GetUnitTypeId(u)==$65303045 then
set uc=LoadUnitHandle(YDHT,GetHandleId(u),DUMMY_OWNER_KEY)
call dealDamage(uc,ut,2000*GetUnitAbilityLevel(uc,$41303251)*GetUnitAbilityLevel(uc,$41303251))
endif
if GetUnitTypeId(u)==$65303049 then
set uc=LoadUnitHandle(YDHT,GetHandleId(u),DUMMY_OWNER_KEY)
call dealDamage(uc,ut,50*GetUnitAbilityLevel(uc,$4130334C)*GetUnitAbilityLevel(uc,$4130334C))
endif
call calculateTotalDamage(u,damage)
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
local trigger t=CreateTrigger()
call YDWESyStemAnyUnitDamagedRegistTrigger(t)
call TriggerAddCondition(t,Condition(function UnitDamage_Conditions))
set t=null
endfunction
function GetTuPu takes integer id returns integer
if id==$49303056 then
return $49303155
endif
if id==$49303133 then
return $49303150
endif
if id==$49303046 then
return $49303153
endif
if id==$4930304D then
return $49303151
endif
if id==$49303132 then
return $4930314C
endif
if id==$4930304C then
return $49303152
endif
if id==$49303055 then
return $4930314F
endif
if id==$4930304E then
return $4930314D
endif
if id==$49303043 then
return $4930314B
endif
if id==$49303052 then
return $4930314E
endif
if id==$49303057 then
return $49303154
endif
return 0
endfunction
function npcRevive takes nothing returns nothing
local timer t=GetExpiredTimer()
local real x=LoadReal(YDHT,GetHandleId(t),0)
local real y=LoadReal(YDHT,GetHandleId(t),1)
local integer id=LoadInteger(YDHT,GetHandleId(t),2)
call CreateUnit(Player(5),id,x,y,270)
call PauseTimer(t)
call DestroyTimer(t)
set t=null
endfunction
function UnitDeath_Conditions takes nothing returns boolean
local unit u=GetKillingUnit()
local unit ut=GetTriggerUnit()
local player p=GetOwningPlayer(u)
local integer i=1+GetPlayerId(p)
local location loc=null
local timer t=null
if GetOwningPlayer(ut)==Player(5) then
call AdjustPlayerStateBJ(R2I(GetRandomReal(wave*1.8,wave*2.1)),p,PLAYER_STATE_RESOURCE_GOLD)
call GroupRemoveUnit(attackerGroup,ut)
endif
if GetOwningPlayer(ut)==Player(5) then
if GetRandomInt(1,5000)<=luck[i] then
set loc=GetUnitLoc(ut)
set luck[i]=luck[i]-1
if GetRandomInt(1,100)<=100-wave*3 then
call CreateItemLoc(normal_drops[GetRandomInt(1,MAX_NORMAL_DROP)],loc)
else
if GetRandomInt(1,100)<=100-wave*3/2 then
call CreateItemLoc(rare_drops[GetRandomInt(1,MAX_RARE_DROP)],loc)
else
if GetRandomInt(1,100)<=100-wave*6/5 then
call CreateItemLoc(valuable_drops[GetRandomInt(1,MAX_VALUABLE_DROP)],loc)
else
if GetRandomInt(1,100)<=100-wave*9/8 then
call CreateItemLoc(ancient_drops[GetRandomInt(1,MAX_ANCIENT_DROP)],loc)
else
call CreateItemLoc(epic_drops[GetRandomInt(1,MAX_EPIC_DROP)],loc)
endif
endif
endif
endif
call RemoveLocation(loc)
endif
endif
if GetUnitTypeId(ut)==boss[1] then
call AdjustPlayerStateBJ(1,p,PLAYER_STATE_RESOURCE_LUMBER)
call DisplayTextToPlayer(p,0,0,"击杀BOSS,奖励珍稀币1个")
endif
if GetUnitTypeId(ut)==boss[2] then
call AdjustPlayerStateBJ(2,p,PLAYER_STATE_RESOURCE_LUMBER)
call DisplayTextToPlayer(p,0,0,"击杀BOSS,奖励珍稀币2个")
endif
if GetUnitTypeId(ut)==boss[3] then
call AdjustPlayerStateBJ(3,p,PLAYER_STATE_RESOURCE_LUMBER)
call DisplayTextToPlayer(p,0,0,"击杀BOSS,奖励珍稀币3个")
endif
if GetUnitTypeId(ut)==boss[4] then
call AdjustPlayerStateBJ(4,p,PLAYER_STATE_RESOURCE_LUMBER)
call DisplayTextToPlayer(p,0,0,"击杀BOSS,奖励珍稀币4个")
endif
if GetUnitTypeId(ut)==boss[5] then
call AdjustPlayerStateBJ(5,p,PLAYER_STATE_RESOURCE_LUMBER)
call DisplayTextToPlayer(p,0,0,"击杀BOSS,奖励珍稀币5个")
endif
if GetUnitTypeId(ut)==survive_boss[1] then
call AdjustPlayerStateBJ(wave/9,p,PLAYER_STATE_RESOURCE_LUMBER)
call DisplayTextToPlayer(p,0,0,"击杀BOSS,奖励珍稀币"+I2S(wave/9)+"个")
endif
if GetUnitTypeId(ut)==$48303045 then
call SetPlayerTechResearched(p,$52303034,1)
call DisplayTextToPlayer(p,0,0,"恭喜击杀达摩祖师,学会匹夫有责")
endif
if GetUnitTypeId(ut)==$48303049 then
set loc=GetUnitLoc(ut)
call CreateItemLoc(GetTuPu(random_shenqi[GetRandomInt(1,open_shenqi)]),loc)
call RemoveLocation(loc)
endif
if GetUnitTypeId(ut)==$55303055 then
call CreateItem(juenei[GetRandomInt(1,4)],GetUnitX(ut),GetUnitY(ut))
endif
if GetUnitTypeId(ut)==$4830304A then
set loc=GetUnitLoc(ut)
call CreateItemLoc($4930314A,loc)
call RemoveLocation(loc)
endif
if GetUnitTypeId(ut)==$55303051 or GetUnitTypeId(ut)==$55303052 or GetUnitTypeId(ut)==$55303053 or GetUnitTypeId(ut)==$55303054 then
set t=CreateTimer()
call SaveReal(YDHT,GetHandleId(t),0,GetUnitX(ut))
call SaveReal(YDHT,GetHandleId(t),1,GetUnitY(ut))
call SaveInteger(YDHT,GetHandleId(t),2,GetUnitTypeId(ut))
call TimerStart(t,30,false,function npcRevive)
endif
call FlushChildHashtable(YDHT,GetHandleId(u))
set u=null
set ut=null
set p=null
set loc=null
set t=null
return false
endfunction
function UnitDeath takes nothing returns nothing
local trigger t=CreateTrigger()
set luck[1]=20
set luck[2]=20
set luck[3]=20
set luck[4]=20
set normal_drops[1]=$49303034
set normal_drops[2]=$49303045
set normal_drops[3]=$49303050
set normal_drops[4]=$49303047
set normal_drops[5]=$49303058
set rare_drops[1]=$49303042
set rare_drops[2]=$49303048
set rare_drops[3]=$4930304F
set rare_drops[4]=$49303035
set rare_drops[5]=$49303059
set valuable_drops[1]=$49303041
set valuable_drops[2]=$49303049
set valuable_drops[3]=$49303036
set valuable_drops[4]=$49303038
set valuable_drops[5]=$4930305A
set valuable_drops[6]=$49303136
set ancient_drops[1]=$49303039
set ancient_drops[2]=$4930304A
set ancient_drops[3]=$49303051
set ancient_drops[4]=$49303053
set ancient_drops[5]=$49303130
set epic_drops[1]=$49303044
set epic_drops[2]=$4930304B
set epic_drops[3]=$49303037
set epic_drops[4]=$49303054
set epic_drops[5]=$49303131
call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(t,Condition(function UnitDeath_Conditions))
set t=null
endfunction
function initMobsAndBosses takes nothing returns nothing
set mob[1]=$68303035
set mob[2]=$75303030
set mob[3]=$68303036
set mob[4]=$65303032
set mob[5]=$6F303034
set mob[6]=$75303031
set mob[7]=$6E303048
set mob[8]=$68303037
set mob[9]=$7A303030
set mob[10]=$7A303031
set mob[11]=$75303032
set mob[12]=$6F303035
set mob[13]=$6E303254
set mob[14]=$65303033
set mob[15]=$6E30304A
set mob[16]=$75303033
set mob[17]=$65303034
set mob[18]=$65303035
set mob[19]=$75303034
set mob[20]=$6E30304B
set mob[21]=$65303036
set mob[22]=$75303035
set mob[23]=$68303038
set mob[24]=$68303039
set mob[25]=$6E30304C
set mob[26]=$6E30304D
set mob[27]=$6E30304E
set mob[28]=$6E30304F
set mob[29]=$6E303050
set mob[30]=$6E303051
set mob[31]=$75303036
set mob[32]=$6F303038
set mob[33]=$68303041
set mob[34]=$65303037
set mob[35]=$6E303053
set mob[36]=$75303037
set mob[37]=$6F303039
set mob[38]=$6E303054
set mob[39]=$6E303055
set mob[40]=$6E303056
set mob[41]=$6E303057
set mob[42]=$75303039
set mob[43]=$65303038
set mob[44]=$75303041
set mob[45]=$6E303058
set mob[46]=$6E303255
set mob[47]=$6E303256
set mob[48]=$6E303257
set mob[49]=$6E303258
set mob[50]=$6E303259
set mob[51]=$6E30325A
set mob[52]=$6E303330
set mob[53]=$6E303331
set mob[54]=$6E303332
set mob[55]=$6E303333
set boss[1]=$4E303049
set boss[2]=$4F303037
set boss[3]=$4E303052
set boss[4]=$55303038
set boss[5]=$55303050
set boss[6]=$55303042
set survive_mob[1]=$6830304D
set survive_mob[2]=$6830304C
set survive_mob[3]=$6830304B
set survive_mob[4]=$6830304E
set survive_boss[1]=$4E303334
endfunction
function doSpawnFinalBoss takes nothing returns nothing
local location array loc
local location array target
local integer i=0
set loc[0]=GetRectCenter(gg_rct_spawn1)
set loc[1]=GetRectCenter(gg_rct_spawn2)
set loc[2]=GetRectCenter(gg_rct_spawn3)
set loc[3]=GetRectCenter(gg_rct_spawn4)
set target[0]=GetRectCenter(nodeRects[22])
set target[1]=GetRectCenter(nodeRects[23])
set target[2]=GetRectCenter(nodeRects[24])
set target[3]=GetRectCenter(nodeRects[21])
loop
exitwhen i>3
if GetPlayerController(Player(i))==MAP_CONTROL_USER and GetPlayerSlotState(Player(i))==PLAYER_SLOT_STATE_PLAYING and gameMode==0 then
call CreateNUnitsAtLoc(1,$55303042,Player(5),loc[i],bj_UNIT_FACING)
call GroupAddUnit(attackerGroup,bj_lastCreatedUnit)
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,851986,target[i])
call RemoveLocation(target[i])
call RemoveLocation(loc[i])
set target[i]=null
set loc[i]=null
endif
set i=i+1
endloop
endfunction
function spawn takes nothing returns nothing
local integer i=0
local integer j=0
local integer rand=1
local location array loc
local location array target
local timer t=CreateTimer()
local integer life=0
local integer jmax=7
set wave=wave+1
set loc[0]=GetRectCenter(gg_rct_spawn1)
set loc[1]=GetRectCenter(gg_rct_spawn2)
set loc[2]=GetRectCenter(gg_rct_spawn3)
set loc[3]=GetRectCenter(gg_rct_spawn4)
set target[0]=GetRectCenter(nodeRects[22])
set target[1]=GetRectCenter(nodeRects[23])
set target[2]=GetRectCenter(nodeRects[24])
set target[3]=GetRectCenter(nodeRects[21])
if gameMode==1 then
set jmax=100
endif
if gameMode==1 and wave>30 and ModuloInteger(wave,10)==1 then
call ServerSavePointsEveryTenWave()
endif
loop
exitwhen i>=4
set rand=1
if wave<=60 then
set luck[i+1]=luck[i+1]+1
call DisplayTextToPlayer(Player(i),0,0,"第"+I2S(wave)+"波开始，每位玩家奖励黄金"+I2S(70*wave)+"，人品+1")
if goldHit[i+1]==1 then
set rand=GetRandomInt(2,4)
set goldHit[i+1]=0
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00玩家"+GetPlayerName(Player(i))+"的智慧球发动了金币暴击，获得"+I2S(rand)+"倍的金币奖励|R")
endif
call AdjustPlayerStateBJ(70*wave*rand,Player(i),PLAYER_STATE_RESOURCE_GOLD)
endif
set j=1
loop
exitwhen j>jmax
if wave==9*j+1 and GetPlayerController(Player(i))==MAP_CONTROL_USER and GetPlayerSlotState(Player(i))==PLAYER_SLOT_STATE_PLAYING then
if gameMode==0 then
call CreateNUnitsAtLoc(1,boss[j],Player(5),loc[i],bj_UNIT_FACING)
elseif gameMode==1 then
call CreateNUnitsAtLoc(1,survive_boss[1],Player(5),loc[i],bj_UNIT_FACING)
set life=30*R2I(7.6591*wave*wave*wave-108.55*wave*wave+798.28*wave-518.31)
call LifeChange(bj_lastCreatedUnit,2,life,$41303434)
call h__SetUnitMoveSpeed(bj_lastCreatedUnit,RMinBJ(300+5*wave,522))
call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit,2,2,10+wave)
endif
call GroupAddUnit(attackerGroup,bj_lastCreatedUnit)
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,851986,target[i])
call RemoveLocation(target[i])
call RemoveLocation(loc[i])
if j!=6 or gameMode==1 then
call TimerStart(bossTimer,(WAVE_TIME+WAVE_INTERVAL)*BOSS_WAVE_INTERVAL,false,null)
call TimerDialogSetTitle(bossTimerDialog,"第"+I2S(wave/9+1)+"个BOSS剩余：")
call TimerDialogDisplay(bossTimerDialog,true)
else
call EnableTrigger(gg_trg_Win)
endif
if wave<=60 then
set rand=1
if lumberHit[i+1]==1 then
set rand=GetRandomInt(2,4)
set lumberHit[i+1]=0
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00玩家"+GetPlayerName(Player(i))+"的智慧球发动了珍稀币暴击，获得"+I2S(rand)+"倍的珍稀币奖励|R")
endif
call DisplayTextToPlayer(Player(i),0,0,"魔教第"+I2S(j)+"个BOSS前来进攻,每位玩家奖励珍稀币"+I2S((2*j-1)*rand)+"个")
call AdjustPlayerStateBJ((2*j-1)*rand,Player(i),PLAYER_STATE_RESOURCE_LUMBER)
endif
set target[i]=null
set loc[i]=null
endif
set j=j+1
endloop
set i=i+1
endloop
if wave<55 or gameMode==1 then
call EnableTrigger(spawnTrigger)
call TimerStart(mobTimer,WAVE_TIME+WAVE_INTERVAL,false,null)
call TimerDialogSetTitle(mobTimerDialog,"第"+I2S(wave+1)+"波进攻：")
endif
call YDWEPolledWaitNull(WAVE_TIME)
call DisableTrigger(spawnTrigger)
endfunction
function doSpawn takes nothing returns nothing
local location array loc
local location array target
local integer i=0
local integer life=0
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
exitwhen i>3
if GetPlayerController(Player(i))==MAP_CONTROL_USER and GetPlayerSlotState(Player(i))==PLAYER_SLOT_STATE_PLAYING then
if gameMode==0 then
call CreateNUnitsAtLoc(1,mob[wave],Player(5),loc[i],bj_UNIT_FACING)
elseif gameMode==1 then
call CreateNUnitsAtLoc(1,survive_mob[ModuloInteger(wave-1,4)+1],Player(5),loc[i],bj_UNIT_FACING)
set life=R2I(7.6591*wave*wave*wave-108.55*wave*wave+798.28*wave-518.31)
call LifeChange(bj_lastCreatedUnit,2,life,$41303434)
call h__SetUnitMoveSpeed(bj_lastCreatedUnit,RMinBJ(300+5*wave,522))
call YDWEGeneralBounsSystemUnitSetBonus(bj_lastCreatedUnit,2,2,10+wave)
endif
call GroupAddUnit(attackerGroup,bj_lastCreatedUnit)
call SaveReal(YDHT,GetHandleId(bj_lastCreatedUnit),BORN_LOC_X,GetUnitX(bj_lastCreatedUnit))
call SaveReal(YDHT,GetHandleId(bj_lastCreatedUnit),BORN_LOC_Y,GetUnitY(bj_lastCreatedUnit))
call IssuePointOrderByIdLoc(bj_lastCreatedUnit,851986,target[i])
call RemoveLocation(target[i])
call RemoveLocation(loc[i])
set target[i]=null
set loc[i]=null
endif
set i=i+1
endloop
endfunction
function initSpawn takes nothing returns nothing
local trigger t=CreateTrigger()
call initMobsAndBosses()
set attackerGroup=CreateGroup()
set mobTimer=CreateTimer()
set mobTimerDialog=CreateTimerDialogBJ(mobTimer,"第1波进攻：")
call TimerStart(mobTimer,FIRST_WAVE_TIME,false,null)
call TimerDialogDisplay(mobTimerDialog,true)
set bossTimer=CreateTimer()
set bossTimerDialog=CreateTimerDialogBJ(bossTimer,"第1个BOSS剩余：")
call TimerStart(bossTimer,FIRST_WAVE_TIME+(WAVE_TIME+WAVE_INTERVAL)*BOSS_WAVE_INTERVAL,false,null)
call TimerDialogDisplay(bossTimerDialog,true)
call TriggerRegisterTimerExpireEvent(t,mobTimer)
call TriggerAddAction(t,function spawn)
set spawnTrigger=CreateTrigger()
call DisableTrigger(spawnTrigger)
call TriggerRegisterTimerEventPeriodic(spawnTrigger,SPAWN_FREQUENCY)
call TriggerAddAction(spawnTrigger,function doSpawn)
set t=null
endfunction
function registerNextNodeChoice takes region whichNode,region choice0,region choice1,region choice2 returns nothing
call SaveRegionHandle(YDHT,GetHandleId(whichNode),1,choice0)
if choice1!=null then
call SaveRegionHandle(YDHT,GetHandleId(whichNode),2,choice1)
endif
if choice2!=null then
call SaveRegionHandle(YDHT,GetHandleId(whichNode),3,choice2)
endif
endfunction
function getRandomRegion takes region choice0,region choice1 returns region
if choice1==null or GetRandomInt(0,100)<=50 then
return choice0
endif
return choice1
endfunction
function chooseNextNodeForRegion takes region currentNode,region previousNode returns region
local region choice0=LoadRegionHandle(YDHT,GetHandleId(currentNode),1)
local region choice1=LoadRegionHandle(YDHT,GetHandleId(currentNode),2)
local region choice2=LoadRegionHandle(YDHT,GetHandleId(currentNode),3)
if previousNode==null then
return getRandomRegion(choice0,choice1)
endif
if GetHandleId(choice0)==GetHandleId(previousNode) then
return getRandomRegion(choice1,choice2)
endif
if GetHandleId(choice1)==GetHandleId(previousNode) then
return getRandomRegion(choice0,choice2)
endif
if choice2!=null and GetHandleId(choice2)==GetHandleId(previousNode) then
return getRandomRegion(choice0,choice1)
endif
return getRandomRegion(choice0,choice1)
endfunction
function moveToNextNode takes unit whichUnit,region whichNode returns nothing
local rect r=LoadRectHandle(YDHT,GetHandleId(whichNode),0)
local real x=GetRectCenterX(r)
local real y=GetRectCenterY(r)
call SaveReal(YDHT,GetHandleId(whichUnit),61440,x)
call SaveReal(YDHT,GetHandleId(whichUnit),61441,y)
call IssuePointOrderById(whichUnit,851986,x,y)
set r=null
endfunction
function isEnemy takes nothing returns boolean
return IsUnitEnemy(GetTriggerUnit(),Player(0))
endfunction
function chooseNextNode takes nothing returns nothing
local region currentNode=GetTriggeringRegion()
local unit u=GetEnteringUnit()
local region previousNode=LoadRegionHandle(YDHT,GetHandleId(u),NODE)
local region nextNode=chooseNextNodeForRegion(currentNode,previousNode)
call moveToNextNode(u,nextNode)
call SaveRegionHandle(YDHT,GetHandleId(u),NODE,currentNode)
set currentNode=null
set u=null
set previousNode=null
set nextNode=null
endfunction
function registerNextChoices takes nothing returns nothing
call registerNextNodeChoice(nodes[1],nodes[2],nodes[8],null)
call registerNextNodeChoice(nodes[2],nodes[1],nodes[3],nodes[12])
call registerNextNodeChoice(nodes[3],nodes[2],nodes[4],null)
call registerNextNodeChoice(nodes[4],nodes[3],nodes[5],nodes[15])
call registerNextNodeChoice(nodes[5],nodes[4],nodes[6],null)
call registerNextNodeChoice(nodes[6],nodes[5],nodes[7],nodes[18])
call registerNextNodeChoice(nodes[7],nodes[6],nodes[8],null)
call registerNextNodeChoice(nodes[8],nodes[1],nodes[7],nodes[9])
call registerNextNodeChoice(nodes[9],nodes[8],nodes[10],nodes[20])
call registerNextNodeChoice(nodes[10],nodes[9],nodes[11],null)
call registerNextNodeChoice(nodes[11],nodes[10],nodes[12],null)
call registerNextNodeChoice(nodes[12],nodes[2],nodes[11],nodes[13])
call registerNextNodeChoice(nodes[13],nodes[12],nodes[14],null)
call registerNextNodeChoice(nodes[14],nodes[13],nodes[15],null)
call registerNextNodeChoice(nodes[15],nodes[4],nodes[14],nodes[16])
call registerNextNodeChoice(nodes[16],nodes[15],nodes[17],null)
call registerNextNodeChoice(nodes[17],nodes[16],nodes[18],null)
call registerNextNodeChoice(nodes[18],nodes[6],nodes[17],nodes[19])
call registerNextNodeChoice(nodes[19],nodes[18],nodes[20],null)
call registerNextNodeChoice(nodes[20],nodes[9],nodes[19],null)
call registerNextNodeChoice(nodes[21],nodes[20],null,null)
call registerNextNodeChoice(nodes[22],nodes[11],null,null)
call registerNextNodeChoice(nodes[23],nodes[14],null,null)
call registerNextNodeChoice(nodes[24],nodes[17],null,null)
endfunction
function initEnemyMove takes nothing returns nothing
local trigger t=CreateTrigger()
local integer i=1
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
exitwhen i>24
set nodes[i]=CreateRegion()
call RegionAddRect(nodes[i],nodeRects[i])
call SaveRectHandle(YDHT,GetHandleId(nodes[i]),0,nodeRects[i])
set i=i+1
endloop
call registerNextChoices()
set i=1
loop
exitwhen i>24
call TriggerRegisterEnterRegionSimple(t,nodes[i])
set i=i+1
endloop
call TriggerAddCondition(t,Condition(function isEnemy))
call TriggerAddAction(t,function chooseNextNode)
endfunction
function checkPurchase takes nothing returns nothing
local integer i=1
loop
exitwhen i>5
if DzAPI_Map_HasMallItem(Player(i-1),PROPERTY_GOLD) or udg_isTest[i] then
set middle_gold_flag[i]=1
call SetPlayerTechResearched(Player(i-1),$52303037,1)
endif
if DzAPI_Map_HasMallItem(Player(i-1),PROPERTY_WISDOM_BALL) or udg_isTest[i] then
set wisdom_ball_flag[i]=1
call SetPlayerTechResearched(Player(i-1),$52303038,1)
endif
if DzAPI_Map_HasMallItem(Player(i-1),PROPERTY_LUMBER) or udg_isTest[i] then
set middle_lumber_flag[i]=1
call SetPlayerTechResearched(Player(i-1),$52303039,1)
endif
if DzAPI_Map_GetMapLevel(Player(i-1))>=3 or udg_isTest[i] then
set five_star_flag[i]=1
call SetPlayerTechResearched(Player(i-1),$52303035,1)
endif
if RequestExtraBooleanData(44,Player(i-1),null,null,false,0,0,0) or udg_isTest[i] then
call SetPlayerTechResearched(Player(i-1),$52303036,1)
endif
set i=i+1
endloop
endfunction
function mallInit takes nothing returns nothing
local timer t=CreateTimer()
local integer i=1
loop
exitwhen i>5
set middle_gold_flag[i]=0
set middle_lumber_flag[i]=0
set five_star_flag[i]=0
set wisdom_ball_flag[i]=0
set i=i+1
endloop
call TimerStart(t,1,false,function checkPurchase)
set t=null
endfunction
function UseItem_Conditions takes nothing returns boolean
local unit u=GetTriggerUnit()
local item it=GetManipulatedItem()
local integer i=0
local integer j=1+GetPlayerId(GetOwningPlayer(u))
local integer tw=getTowerInstance(u)
local integer id=0
if GetItemTypeId(it)==$49303142 then
if GetUnitAbilityLevel(s__Tower_u[tw],$41303131)>=6 then
call UnitAddItemById(u,$49303142)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"物品栏已满")
else
call s__Tower_setItemNum(tw,GetUnitAbilityLevel(s__Tower_u[tw],$41303131)+1)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"增加一个物品栏")
endif
endif
if GetItemTypeId(it)==$49303242 then
call UnitAddItemById(u,low_towers[GetRandomInt(1,low_size)])
endif
if GetItemTypeId(it)==$49303243 then
call UnitAddItemById(u,normal_towers[GetRandomInt(1,normal_size)])
endif
if GetItemTypeId(it)==$49303244 then
call UnitAddItemById(u,fine_towers[GetRandomInt(1,fine_size)])
endif
if GetItemTypeId(it)==$49303245 then
call UnitAddItemById(u,perfect_towers[GetRandomInt(1,perfect_size)])
endif
if GetItemTypeId(it)==$4930324C then
if GetRandomInt(1,100)<=10 then
set id=$49303245
elseif GetRandomInt(1,90)<=20 then
set id=$49303244
elseif GetRandomInt(1,70)<=30 then
set id=$49303243
else
set id=$49303242
endif
call UnitAddItemById(u,id)
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"|cffff9933恭喜鉴定成功，获得|r"+GetObjectName(id))
endif
if GetItemTypeId(it)==$49303134 then
call SaveUnitHandle(YDHT,GetHandleId(wugong_practice[j]),j,u)
set i=0
loop
exitwhen i>=11
set practice_wugong[i+20*j]=null
if LoadInteger(YDHT,GetHandleId(u)*3,i)<LoadInteger(YDHT,LoadInteger(YDHT,GetHandleId(u)*2,i)*3,0) then
set practice_wugong[i+20*j]=DialogAddButtonBJ(wugong_practice[j],GetAbilityName(LoadInteger(YDHT,GetHandleId(u)*2,i)))
endif
set i=i+1
endloop
set practice_wugong[11+20*j]=DialogAddButtonBJ(wugong_practice[j],"取消")
call DialogDisplay(GetOwningPlayer(u),wugong_practice[j],true)
endif
if GetItemTypeId(it)==$49303232 or GetItemTypeId(it)==$49303233 or GetItemTypeId(it)==$49303234 or GetItemTypeId(it)==$49303235 then
call LearnKungfu(u,it)
endif
set u=null
set it=null
return false
endfunction
function Dialog_Actions takes nothing returns nothing
local button bt=GetClickedButton()
local integer j=1+GetPlayerId(GetTriggerPlayer())
local unit u=LoadUnitHandle(YDHT,GetHandleId(wugong_practice[j]),j)
local integer i=20*j
local integer tw=getTowerInstance(u)
set i=20*j
loop
exitwhen i>=11+20*j
if bt==practice_wugong[i] then
call s__Tower_IncAbility(tw,i-20*j)
call DialogClear(wugong_practice[j])
return
endif
set i=i+1
endloop
if bt==practice_wugong[11+20*j] then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"已取消")
call UnitAddItemById(u,$49303134)
endif
call DialogClear(wugong_practice[j])
set u=null
set bt=null
endfunction
function UseItem takes nothing returns nothing
local trigger t=CreateTrigger()
local integer i=0
set low_towers[1]=$49303246
set normal_towers[1]=$49303247
set fine_towers[1]=$49303248
set perfect_towers[1]=$49303249
call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_USE_ITEM)
call TriggerAddCondition(t,Condition(function UseItem_Conditions))
set t=CreateTrigger()
set i=1
loop
exitwhen i>=5
set wugong_practice[i]=DialogCreate()
call TriggerRegisterDialogEvent(t,wugong_practice[i])
set i=i+1
endloop
call TriggerAddAction(t,function Dialog_Actions)
set t=null
endfunction
function IssueUnitOrder_Conditions takes nothing returns boolean
local integer id=GetIssuedOrderId()
local unit u=GetTriggerUnit()
local unit ut=GetOrderTargetUnit()
local player p=GetOwningPlayer(u)
local integer i=1+GetPlayerId(p)
local location loc=GetUnitLoc(u)
local location loc2=GetUnitLoc(ut)
local location temp_loc=null
local group g=null
if id==852066 and GetUnitAbilityLevel(u,$41303036)>=1 and udg_jiuyang[i]>=1 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303330)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303330,GetUnitAbilityLevel(u,$41303036))
call IssueTargetOrderById(bj_lastCreatedUnit,852101,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,2.)
endif
if id==852149 and GetUnitAbilityLevel(u,$4130304A)>=1 and udg_jiuyang[i]>=1 then
call CreateNUnitsAtLoc(1,$65303039,p,loc,bj_UNIT_FACING)
call ShowUnitHide(bj_lastCreatedUnit)
call UnitAddAbility(bj_lastCreatedUnit,$41303338)
call SetUnitAbilityLevel(bj_lastCreatedUnit,$41303338,GetUnitAbilityLevel(u,$4130304A))
call IssueTargetOrderById(bj_lastCreatedUnit,852095,ut)
call UnitApplyTimedLife(bj_lastCreatedUnit,$42487765,2.)
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
local integer id=GetIssuedOrderId()
local unit u=GetTriggerUnit()
local player p=GetOwningPlayer(u)
local integer i=1+GetPlayerId(p)
set u=null
set p=null
return false
endfunction
function IssueOrder takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_UNIT_ORDER)
call TriggerAddCondition(t,Condition(function IssueUnitOrder_Conditions))
set t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_ORDER)
call TriggerAddCondition(t,Condition(function IssueOrder_Conditions))
set t=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
call TriggerAddCondition(t,Condition(function IssuePointOrder_Conditions))
set t=null
endfunction
function AutoSpell takes unit u,unit ut,integer spell_id,string order returns nothing
local timer tm=null
if GetUnitAbilityLevel(u,spell_id)>=1 and IsUnitAbilityCdOk(u,order) then
if IsUnitAbilityCdOk(u,order+"off") then
call IssueImmediateOrder(u,order)
call IssueTargetOrder(u,order,ut)
set tm=CreateTimer()
call SaveUnitHandle(YDHT,GetHandleId(tm),0,u)
call SaveStr(YDHT,GetHandleId(tm),1,order)
call TimerStart(tm,1.,false,function OpenAgain)
endif
endif
set tm=null
endfunction
function EMeiXinFa takes nothing returns nothing
local unit u=GetEnumUnit()
local location loc=GetUnitLoc(u)
local location loc2=PolarProjectionBJ(loc,500,GetUnitFacing(u))
if GetUnitCurrentOrder(u)==0 then
if LoadReal(YDHT,GetHandleId(u),61440)==0 and LoadReal(YDHT,GetHandleId(u),61441)==0 then
call IssuePointOrder(u,"attack",-1800,810)
else
call IssuePointOrder(u,"attack",LoadReal(YDHT,GetHandleId(u),61440),LoadReal(YDHT,GetHandleId(u),61441))
endif
endif
if UnitHasBuffBJ(u,$42303034) then
if GetWidgetLife(u)-GetUnitState(u,UNIT_STATE_MAX_LIFE)*.02>=1 then
call SetWidgetLife(u,GetWidgetLife(u)-GetUnitState(u,UNIT_STATE_MAX_LIFE)*.02)
else
call SetWidgetLife(u,1.)
endif
endif
if UnitHasBuffBJ(u,$42457368) then
if GetWidgetLife(u)-GetUnitState(u,UNIT_STATE_MAX_LIFE)*.001>=1 then
call SetWidgetLife(u,GetWidgetLife(u)-GetUnitState(u,UNIT_STATE_MAX_LIFE)*.001)
else
call SetWidgetLife(u,1.)
endif
endif
if UnitHasBuffBJ(u,$42303133) then
if GetWidgetLife(u)-GetUnitState(u,UNIT_STATE_MAX_LIFE)*.01>=1 then
call SetWidgetLife(u,GetWidgetLife(u)-GetUnitState(u,UNIT_STATE_MAX_LIFE)*.01)
else
call SetWidgetLife(u,1.)
endif
endif
call RemoveLocation(loc)
call RemoveLocation(loc2)
set u=null
set loc=null
set loc2=null
endfunction
function bubbleSortForDamage takes nothing returns nothing
local integer i=1
local integer j=1
local real damage1=0
local real damage2=0
local unit u1=null
local unit u2=null
loop
exitwhen i>damageCounter
set j=i+1
loop
exitwhen j>damageCounter
set damage1=LoadReal(YDHT,DAMAGE_KEY,i)
set damage2=LoadReal(YDHT,DAMAGE_KEY,j)
if damage2>damage1 then
set u1=LoadUnitHandle(YDHT,DAMAGE_UNIT_KEY,i)
set u2=LoadUnitHandle(YDHT,DAMAGE_UNIT_KEY,j)
call SaveReal(YDHT,DAMAGE_KEY,i,damage2)
call SaveReal(YDHT,DAMAGE_KEY,j,damage1)
call SaveInteger(YDHT,GetHandleId(u2),DAMAGE_UNIT_KEY,i)
call SaveInteger(YDHT,GetHandleId(u1),DAMAGE_UNIT_KEY,j)
call SaveUnitHandle(YDHT,DAMAGE_UNIT_KEY,i,u2)
call SaveUnitHandle(YDHT,DAMAGE_UNIT_KEY,j,u1)
endif
set j=j+1
endloop
set i=i+1
endloop
set u1=null
set u2=null
endfunction
function EverySecond_Conditions takes nothing returns boolean
local string info=DzAPI_Map_GetMapConfig("info")
local integer i=1
local integer array x
local integer array y
local integer level=1
set x[1]=-2380
set x[2]=820
set x[3]=2380
set x[4]=-820
set y[1]=820
set y[2]=2380
set y[3]=-820
set y[4]=-2380
set passed_time=passed_time+1
if passed_time==5 then
loop
exitwhen i>5
if wisdom_ball_flag[i]==1 then
call CreateUnit(Player(i-1),$6F303052,x[i],y[i],270)
call DisplayTimedTextToPlayer(Player(i-1),0,0,10,"|CFF1CE6B9系统提示：|r|CFFFE890D您已开启智慧球")
endif
set i=i+1
endloop
if info!="无" then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cff00ff00来自zeikale的提示：|r|cffff00de"+info+"|r")
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cff00ff00来自zeikale的提示：|r|cffff00de"+info+"|r")
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,30,"|cff00ff00来自zeikale的提示：|r|cffff00de"+info+"|r")
endif
endif
if passed_time==10 then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,10,"|cfffff000欢迎来到|cffff00de决战江湖TD1.1|r")
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,10,"|cff00ff00来自zeikale的提示：|r|cfffff000请在NPC天下门派处选择门派开始游戏，购买重制版WAR3的玩家可以在地图中间的商店中领取福利礼包！|r")
endif
if passed_time==20 then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00来自zeikale的提示：|r|cfffff000游戏前期金钱较匮乏，可以合理使用木材兑换金钱，关于游戏的各个系统，请查看F9任务面板，欢迎在地图留言区提出您的宝贵意见|R")
endif
if passed_time==40 then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00来自zeikale的提示：|r|cfffff000前期防御塔建立在合理的位置，可以提高输出效率。高级防御塔性价比通常高于低级防御塔，因此建议将资源优先用于升级防御塔|R")
endif
if passed_time==60 then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00来自zeikale的提示：|r|cfffff000游戏里的相关指令请按F9打开任务面板进行查询|r")
endif
if passed_time==80 then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00来自zeikale的提示：|r|cfffff000由于制作和测试时间紧张，如遇游戏里有BUG或不舒适的体验给你带来不愉快，尽情谅解。|R")
endif
if passed_time==100 then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00来自zeikale的提示：|r|cfffff000塔升级到顶级后，如果有技能还没修炼到满级，可以使用武学修炼丹继续修炼。|R")
endif
if passed_time==120 then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00来自zeikale的提示：|r|cfffff000生存模式前期强度较高，尽量在普通模式下积累一些积分后再进行尝试。|R")
endif
if passed_time==140 then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00来自zeikale的提示：|r|cfffff000生存模式下从第31波（第一次获得）起每10波获得5点存档积分。|R")
endif
if passed_time==160 then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00来自zeikale的提示：|r|cfffff000生存模式第60波后将不再给予每波金钱和珍稀币奖励。|R")
endif
call ForGroupBJ(attackerGroup,function EMeiXinFa)
if udg_ShengYuGuaiShu+10<=CountUnitsInGroup(attackerGroup) and GetRandomInt(1,5)<=2 then
call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,15,"|cff00ff00来自zeikale的提示：|r|cffff0000圈内的进攻怪太多了，请注意防守！！|R")
endif
loop
exitwhen i>5
if five_star_flag[i]==1 then
call SetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD,GetPlayerState(Player(i-1),PLAYER_STATE_RESOURCE_GOLD)+2)
endif
set i=i+1
endloop
set i=0
loop
exitwhen i>tower_num
if GetUnitAbilityLevel(s__Tower_u[tower[i]],$41303049)>=1 then
call IssueImmediateOrder(s__Tower_u[tower[i]],"frenzy")
endif
if ModuloInteger(passed_time,5)==0 and GetUnitAbilityLevel(s__Tower_u[tower[i]],$41303441)>=1 then
set level=GetUnitAbilityLevel(s__Tower_u[tower[i]],$41303441)
call SetUnitState(s__Tower_u[tower[i]],UNIT_STATE_MANA,GetUnitState(s__Tower_u[tower[i]],UNIT_STATE_MANA)+GetRandomInt(level*10,level*100))
endif
set i=i+1
endloop
return false
endfunction
function EverySecond takes nothing returns nothing
local trigger t=CreateTrigger()
call TriggerRegisterTimerEventPeriodic(t,1.)
call TriggerAddCondition(t,Condition(function EverySecond_Conditions))
set t=null
endfunction
function RandomShenQi takes nothing returns nothing
local integer i=0
local integer j=0
local integer temp=0
set i=1
loop
exitwhen i>SHEN_QI_NUM
set random_shenqi[i]=shenqi[i]
set i=i+1
endloop
set i=SHEN_QI_NUM
loop
exitwhen i<=0
set j=GetRandomInt(1,i-1)
set temp=random_shenqi[i]
set random_shenqi[i]=random_shenqi[j]
set random_shenqi[j]=temp
set i=i-1
endloop
endfunction
function InitPriv takes nothing returns nothing
local integer i=1
local string name
loop
exitwhen i>5
set name=GetPlayerName(Player(i-1))
if name=="WorldEdit" or name=="zeikale" or name=="zeikala" or name=="非我莫属xq" or name=="苍穹而降" or name=="晓窗临风" or name=="沫Mu" then
call DisplayTimedTextToPlayer(Player(i-1),0,0,15.,"|CFFff9933开启测试人员权限|r")
set udg_isTest[i]=true
endif
set i=i+1
endloop
endfunction
function CreateF9 takes nothing returns nothing
call CreateQuestBJ(0,"|cFFFF0000属性","人品：|cFFCCFF33影响宝物掉落几率抽取武魂石几率\n","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
call CreateQuestBJ(0,"|cFF00FF00游戏指令","输入“+”和”-”：|cFFCCFF33调整视角|r\n输入“ckrp”：|cFFCCFF33查看当前人品值|r\n输入“cx”：|cFFCCFF33查看存档积分|r\n","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
call CreateQuestBJ(0,"|cFFFF00CC神器系统","在游戏中共有11种神器，每局随机开放3种，可以在NPC干将处查询本局开放神器和神器合成公式","ReplaceableTextures\\CommandButtons\\BTNAmbush.blp")
endfunction
function InitMenPaiWuPin takes nothing returns nothing
call AddItemToStockBJ($49303030,gg_unit_o00A_0019,1,1)
call AddItemToStockBJ($49303031,gg_unit_o00A_0019,1,1)
call AddItemToStockBJ($49303032,gg_unit_o00A_0019,1,1)
call AddItemToStockBJ($49303033,gg_unit_o00A_0019,1,1)
call AddItemToStockBJ($4930324B,gg_unit_o00A_0019,1,1)
endfunction
function initKungfus takes nothing returns nothing
call SaveInteger(YDHT,$49303232,65244,$41303350)
call SaveInteger(YDHT,$49303233,65244,$41303352)
call SaveInteger(YDHT,$49303234,65244,$41303351)
call SaveInteger(YDHT,$49303235,65244,$4130334E)
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
local trigger t=CreateTrigger()
set shenqi[1]=$49303056
set shenqi[2]=$49303133
set shenqi[3]=$49303046
set shenqi[4]=$4930304D
set shenqi[5]=$49303132
set shenqi[6]=$4930304C
set shenqi[7]=$49303055
set shenqi[8]=$4930304E
set shenqi[9]=$49303043
set shenqi[10]=$49303052
set shenqi[11]=$49303057
set juenei[1]=$49303232
set juenei[2]=$49303233
set juenei[3]=$49303234
set juenei[4]=$49303235
call InitMenPaiWuPin()
call RandomShenQi()
call CreateF9()
call initKungfus()
call TriggerRegisterTimerEventSingle(t,.5)
call TriggerAddAction(t,function MapInit_Conditions)
set t=null
endfunction
function showHealthPointAction takes nothing returns nothing
local integer i=1+GetPlayerId(GetTriggerPlayer())
if showHint[i] and GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)>=999999 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"单位"+GetUnitName(GetTriggerUnit())+"|r的血量为"+R2S(GetWidgetLife(GetTriggerUnit()))+" / "+R2S(GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)))
endif
if showHint[i] and LoadReal(YDHT,GetHandleId(GetTriggerUnit()),4077)>0 then
call DisplayTextToPlayer(GetTriggerPlayer(),0,0,"单位"+GetUnitName(GetTriggerUnit())+"|r的护盾百分比为"+R2S(LoadReal(YDHT,GetHandleId(GetTriggerUnit()),4077))+" %")
endif
endfunction
function toggleHint takes nothing returns nothing
local player p=GetTriggerPlayer()
local string s=GetEventPlayerChatString()
if s=="qxts" then
call DisplayTextToPlayer(p,0,0,"|cffffff00取消血量提示")
set showHint[1+GetPlayerId(p)]=false
endif
if s=="kqts" then
call DisplayTextToPlayer(p,0,0,"|cffffff00开启血量提示")
set showHint[1+GetPlayerId(p)]=true
endif
set p=null
endfunction
function SelectUnitSystem takes nothing returns nothing
local trigger t=CreateTrigger()
local integer i=1
call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_SELECTED)
call TriggerAddAction(t,function showHealthPointAction)
loop
exitwhen i>5
set showHint[i]=true
set i=i+1
endloop
set i=0
loop
exitwhen i>6
call TriggerRegisterPlayerChatEvent(t,Player(i),"",true)
set i=i+1
endloop
call TriggerAddAction(t,function toggleHint)
endfunction
function initNeutralStructures takes nothing returns nothing
call SaveInteger(NHT,$6F303053,0,$49303246)
call SaveInteger(NHT,$6F30305A,0,$49303247)
call SaveInteger(NHT,$6F303130,0,$49303248)
call SaveInteger(NHT,$4F303059,0,$49303249)
endfunction
function getStructItem takes integer unitId returns integer
return LoadInteger(NHT,unitId,0)
endfunction
function UnitBuilt_Conditions takes nothing returns boolean
local unit u=GetTriggerUnit()
local player p=GetOwningPlayer(u)
if GetPlayerState(p,PLAYER_STATE_RESOURCE_FOOD_USED)>GetPlayerState(p,PLAYER_STATE_RESOURCE_FOOD_CAP) then
call RemoveUnit(u)
call DisplayTextToPlayer(p,0,0,"|CFFFF0000人口达到上限，无法继续建造，物品归还至门派建造者")
call UnitAddItemById(builder[1+GetPlayerId(p)],LoadInteger(NHT,GetUnitTypeId(u),0))
endif
set p=null
set u=null
return false
endfunction
function UnitBuilt takes nothing returns nothing
local trigger t=CreateTrigger()
call initNeutralStructures()
call TriggerRegisterAnyUnitEventBJ(t,EVENT_PLAYER_UNIT_CONSTRUCT_START)
call TriggerAddCondition(t,Condition(function UnitBuilt_Conditions))
set t=null
endfunction
function Walk_Conditions takes nothing returns boolean
return GetOwningPlayer(GetTriggerUnit())==Player(5)
endfunction
function Walk_Actions takes nothing returns nothing
local real x=GetRectCenterX(LoadRectHandle(YDHT,GetHandleId(GetTriggeringTrigger()),0))
local real y=GetRectCenterY(LoadRectHandle(YDHT,GetHandleId(GetTriggeringTrigger()),0))
call SaveReal(YDHT,GetHandleId(GetTriggerUnit()),61440,x)
call SaveReal(YDHT,GetHandleId(GetTriggerUnit()),61441,y)
call IssuePointOrder(GetTriggerUnit(),"attack",x,y)
endfunction
function WalkToNextRegion takes rect rt1,rect rt2 returns nothing
local trigger t=CreateTrigger()
call SaveRectHandle(YDHT,GetHandleId(t),0,rt2)
call YDWETriggerRegisterEnterRectSimpleNull(t,rt1)
call TriggerAddCondition(t,Condition(function Walk_Conditions))
call TriggerAddAction(t,function Walk_Actions)
set t=null
endfunction
function WalkInRoute takes nothing returns nothing
local integer i=1
loop
exitwhen i>=16
call WalkToNextRegion(udg_route1[i],udg_route1[i+1])
call WalkToNextRegion(udg_route2[i],udg_route2[i+1])
call WalkToNextRegion(udg_route3[i],udg_route3[i+1])
call WalkToNextRegion(udg_route4[i],udg_route4[i+1])
set i=i+1
endloop
endfunction
function InitAllSystems takes nothing returns nothing
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
endfunction
function Trig_SystemWindowActions takes nothing returns nothing
call CreateMultiboardBJ(1,1,"圈内单位")
set udg_multi=GetLastCreatedMultiboard()
call MultiboardDisplayBJ(true,GetLastCreatedMultiboard())
call YDWEMultiboardSetItemWidthBJNull(GetLastCreatedMultiboard(),1,1,5.)
endfunction
function InitTrig_SystemWindow takes nothing returns nothing
set gg_trg_SystemWindow=CreateTrigger()
call TriggerRegisterTimerEventSingle(gg_trg_SystemWindow,0.)
call TriggerAddAction(gg_trg_SystemWindow,function Trig_SystemWindowActions)
endfunction
function Trig_MapInitActions takes nothing returns nothing
call SetTimeOfDay(8.)
call UseTimeOfDayBJ(false)
call FogEnableOff()
call FogMaskEnableOff()
call SetPlayerState(Player(5),PLAYER_STATE_GIVES_BOUNTY,1)
set bj_forLoopAIndex=1
set bj_forLoopAIndexEnd=5
loop
exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
call ShowUnitShow(gg_unit_o00A_0019)
call SetPlayerTechMaxAllowedSwap($48303034,1,ConvertedPlayer(bj_forLoopAIndex))
call SetPlayerTechMaxAllowedSwap($6E30314F,1,ConvertedPlayer(bj_forLoopAIndex))
call SetPlayerTechMaxAllowedSwap($6E30314E,2,ConvertedPlayer(bj_forLoopAIndex))
call SetPlayerTechMaxAllowedSwap($4F303033,1,ConvertedPlayer(bj_forLoopAIndex))
call SetPlayerTechMaxAllowedSwap($6E303032,2,ConvertedPlayer(bj_forLoopAIndex))
call SetPlayerTechMaxAllowedSwap($6E303130,1,ConvertedPlayer(bj_forLoopAIndex))
call SetPlayerTechMaxAllowedSwap($48303030,1,ConvertedPlayer(bj_forLoopAIndex))
call SetPlayerTechMaxAllowedSwap($6E30315A,2,ConvertedPlayer(bj_forLoopAIndex))
call SetPlayerTechMaxAllowedSwap($4E303047,1,ConvertedPlayer(bj_forLoopAIndex))
call SetPlayerTechMaxAllowedSwap($48303137,1,ConvertedPlayer(bj_forLoopAIndex))
call SetPlayerTechMaxAllowedSwap($68303135,2,ConvertedPlayer(bj_forLoopAIndex))
call SetPlayerTechMaxAllowedSwap($6830305A,1,ConvertedPlayer(bj_forLoopAIndex))
set bj_forLoopAIndex=bj_forLoopAIndex+1
endloop
call InitAllSystems()
call YDWEGeneralBounsSystemUnitSetBonus(GetTriggerUnit(),3,0,300)
endfunction
function InitTrig_MapInit takes nothing returns nothing
set gg_trg_MapInit=CreateTrigger()
call TriggerAddAction(gg_trg_MapInit,function Trig_MapInitActions)
endfunction
function Trig_OneSecondActions takes nothing returns nothing
local integer i=0
call AddWeatherEffectSaveLast(GetEntireMapRect(),$4C526D61)
call SetCameraTargetController(gg_unit_o00A_0019,0,0,false)
call InitServerValues()
call ServerSavePointsWhenEnterGame()
call YDWENewItemsFormula($63686573,0,$63686573,0,$63686573,0,$63686573,0,$63686573,0,$63686573,0,$627A6265)
set udg_ShengYuGuaiShu=udg_ShengYuGuaiShu+25
loop
exitwhen i>=4
if GetPlayerSlotState(Player(i))==PLAYER_SLOT_STATE_PLAYING then
set udg_ShengYuGuaiShu=udg_ShengYuGuaiShu+25
call DisplayTimedTextToForce(GetPlayersAll(),15.,"玩家"+YDWEGetPlayerColorString(Player(i),GetPlayerName(Player(i)))+"正在游戏，增加25点生命值")
endif
set i=i+1
endloop
call EnableTrigger(gg_trg_JiFenPaiUpdate)
endfunction
function InitTrig_OneSecond takes nothing returns nothing
set gg_trg_OneSecond=CreateTrigger()
call TriggerRegisterTimerEventSingle(gg_trg_OneSecond,1.)
call TriggerAddAction(gg_trg_OneSecond,function Trig_OneSecondActions)
endfunction
function Trig_ChooseNanDuFunc013T takes nothing returns nothing
if udg_difficulty==0 then
call DialogDisplay(LoadPlayerHandle(YDLOC,GetHandleId(GetExpiredTimer()),$32A9E4C8),udg_select_diff,false)
call DisplayTimedTextToForce(GetPlayersAll(),10.,"|cff00FFFF自动选择了难度|cFF00CC00初入江湖")
call DisplayTimedTextToForce(GetPlayersAll(),10.,"|cFF00CC00初入江湖|r难度下：")
call DisplayTimedTextToForce(GetPlayersAll(),10.,"起始资金为|cFF00CC00300|r")
call DisplayTimedTextToForce(GetPlayersAll(),10.,"起始可用人口为|cFF00CC0075|r")
call DisplayTimedTextToForce(GetPlayersAll(),10.,"进攻怪防御等级、速度等级、血量和回血等级为|cFF00CC001|r")
set udg_difficulty=1
call SetPlayerTechResearchedSwap($52303030,1,Player(5))
set bj_forLoopAIndex=1
set bj_forLoopAIndexEnd=4
loop
exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
call SetPlayerStateBJ(ConvertedPlayer(bj_forLoopAIndex),PLAYER_STATE_RESOURCE_GOLD,300)
call SetPlayerStateBJ(ConvertedPlayer(bj_forLoopAIndex),PLAYER_STATE_RESOURCE_FOOD_CAP,75)
set bj_forLoopAIndex=bj_forLoopAIndex+1
endloop
else
endif
endfunction
function Trig_ChooseNanDuActions takes nothing returns nothing
local timer ydl_timer
local integer ydl_localvar_step=LoadInteger(YDLOC,GetHandleId(GetTriggeringTrigger()),$CFDE6C76)
set ydl_localvar_step=ydl_localvar_step+3
call SaveInteger(YDLOC,GetHandleId(GetTriggeringTrigger()),$CFDE6C76,ydl_localvar_step)
call SaveInteger(YDLOC,GetHandleId(GetTriggeringTrigger()),$ECE825E7,ydl_localvar_step)
call SavePlayerHandle(YDLOC,GetHandleId(GetTriggeringTrigger())*ydl_localvar_step,$32A9E4C8,Player(0))
call DisplayTimedTextToForce(GetPlayersAll(),10.,"等待主机"+(YDWEGetPlayerColorString(LoadPlayerHandle(YDLOC,GetHandleId(GetTriggeringTrigger())*ydl_localvar_step,$32A9E4C8),GetPlayerName(LoadPlayerHandle(YDLOC,GetHandleId(GetTriggeringTrigger())*ydl_localvar_step,$32A9E4C8)))+"选择难度"))
call DialogSetMessage(udg_select_diff,"请选择难度")
set udg_diff[1]=DialogAddButton(udg_select_diff,"|cFF00CC00初入江湖",65)
set udg_diff[2]=DialogAddButton(udg_select_diff,"|cFFCC0066牛刀小试",66)
set udg_diff[3]=DialogAddButton(udg_select_diff,"|cFFFF6600登堂入室",67)
set udg_diff[4]=DialogAddButton(udg_select_diff,"|cFF0041FF炉火纯青",68)
set udg_diff[5]=DialogAddButton(udg_select_diff,"|cFF1FBF00华山论剑",69)
set udg_diff[6]=DialogAddButton(udg_select_diff,"|cFFFF0000决战江湖",70)
set udg_diff[7]=DialogAddButton(udg_select_diff,"|cFF00FF00生存模式",71)
call DialogDisplay(LoadPlayerHandle(YDLOC,GetHandleId(GetTriggeringTrigger())*ydl_localvar_step,$32A9E4C8),udg_select_diff,true)
set ydl_timer=CreateTimer()
call SavePlayerHandle(YDLOC,GetHandleId(ydl_timer),$32A9E4C8,LoadPlayerHandle(YDLOC,GetHandleId(GetTriggeringTrigger())*ydl_localvar_step,$32A9E4C8))
call TimerStart(ydl_timer,20.,false,function Trig_ChooseNanDuFunc013T)
call FlushChildHashtable(YDLOC,GetHandleId(GetTriggeringTrigger())*ydl_localvar_step)
set ydl_timer=null
endfunction
function InitTrig_ChooseNanDu takes nothing returns nothing
set gg_trg_ChooseNanDu=CreateTrigger()
call TriggerRegisterTimerEventSingle(gg_trg_ChooseNanDu,1.)
call TriggerAddAction(gg_trg_ChooseNanDu,function Trig_ChooseNanDuActions)
endfunction
function Trig_ChooseNanDu_2Actions takes nothing returns nothing
local integer i=1
if GetClickedButtonBJ()==udg_diff[1] then
call DisplayTextToForce(GetPlayersAll(),"|cffff0000"+GetPlayerName(Player(0))+"|cff00FFFF选择了难度|cFF00CC00初入江湖")
call DisplayTextToForce(GetPlayersAll(),"|cFF00CC00初入江湖|r难度下：")
call DisplayTextToForce(GetPlayersAll(),"起始资金为|cFF00CC00300|r")
call DisplayTextToForce(GetPlayersAll(),"起始可用人口为|cFF00CC0075|r")
call DisplayTextToForce(GetPlayersAll(),"进攻怪防御等级、速度等级、血量和回血等级为|cFF00CC001|r")
set udg_difficulty=1
call SetPlayerTechResearchedSwap($52303030,1,Player(5))
endif
if GetClickedButtonBJ()==udg_diff[2] then
call DisplayTextToForce(GetPlayersAll(),"|cffff0000"+GetPlayerName(Player(0))+"|cff00FFFF选择了难度|cFFCC0066牛刀小试")
call DisplayTextToForce(GetPlayersAll(),"|cFFCC0066牛刀小试|r难度下：")
call DisplayTextToForce(GetPlayersAll(),"起始资金为|cFFCC0066300|r")
call DisplayTextToForce(GetPlayersAll(),"起始可用人口为|cFFCC006670|r")
call DisplayTextToForce(GetPlayersAll(),"进攻怪防御等级、速度等级、血量和回血等级为|cFFCC00662|r")
set udg_difficulty=2
call SetPlayerTechResearchedSwap($52303030,3,Player(5))
endif
if GetClickedButtonBJ()==udg_diff[3] then
call DisplayTextToForce(GetPlayersAll(),"|cffff0000"+GetPlayerName(Player(0))+"|cff00FFFF选择了难度|cFFFF6600登堂入室")
call DisplayTextToForce(GetPlayersAll(),"|cFFFF6600登堂入室|r难度下：")
call DisplayTextToForce(GetPlayersAll(),"起始资金为|cFFFF6600300|r")
call DisplayTextToForce(GetPlayersAll(),"起始可用人口为|cFFFF660065|r")
call DisplayTextToForce(GetPlayersAll(),"进攻怪防御等级、速度等级、血量和回血等级为|cFFFF66003|r")
set udg_difficulty=3
call SetPlayerTechResearchedSwap($52303030,5,Player(5))
endif
if GetClickedButtonBJ()==udg_diff[4] then
call DisplayTextToForce(GetPlayersAll(),"|cffff0000"+GetPlayerName(Player(0))+"|cff00FFFF选择了难度|cFF0041FF炉火纯青")
call DisplayTextToForce(GetPlayersAll(),"|cFF0041FF炉火纯青|r难度下：")
call DisplayTextToForce(GetPlayersAll(),"起始资金为|cFF0041FF300|r")
call DisplayTextToForce(GetPlayersAll(),"起始可用人口为|cFF0041FF760|r")
call DisplayTextToForce(GetPlayersAll(),"进攻怪防御等级、速度等级、血量和回血等级为|cFF0041FF4|r")
set udg_difficulty=4
call SetPlayerTechResearchedSwap($52303030,7,Player(5))
endif
if GetClickedButtonBJ()==udg_diff[5] then
call DisplayTextToForce(GetPlayersAll(),"|cffff0000"+GetPlayerName(Player(0))+"|cff00FFFF选择了难度|cFF1FBF00华山论剑")
call DisplayTextToForce(GetPlayersAll(),"|cFF1FBF00华山论剑|r难度下：")
call DisplayTextToForce(GetPlayersAll(),"起始资金为|cFF1FBF00300|r")
call DisplayTextToForce(GetPlayersAll(),"起始可用人口为|cFF1FBF0055|r")
call DisplayTextToForce(GetPlayersAll(),"进攻怪防御等级、速度等级、血量和回血等级为|cFF1FBF005|r")
set udg_difficulty=5
call SetPlayerTechResearchedSwap($52303030,9,Player(5))
endif
if GetClickedButtonBJ()==udg_diff[6] then
call DisplayTextToForce(GetPlayersAll(),"|cffff0000"+GetPlayerName(Player(0))+"|cff00FFFF选择了难度|cFFFF0000决战江湖")
call DisplayTextToForce(GetPlayersAll(),"|cFFFF0000决战江湖|r难度下：")
call DisplayTextToForce(GetPlayersAll(),"起始资金为|cFFFF0000300|r")
call DisplayTextToForce(GetPlayersAll(),"起始可用人口为|cFFFF000050|r")
call DisplayTextToForce(GetPlayersAll(),"进攻怪防御等级、速度等级、血量和回血等级为|cFFFF00006|r")
set udg_difficulty=6
call SetPlayerTechResearchedSwap($52303030,11,Player(5))
endif
if GetClickedButtonBJ()==udg_diff[7] then
call DisplayTextToForce(GetPlayersAll(),"|cffff0000"+GetPlayerName(Player(0))+"|cff00FFFF选择了度|cFF00FF00生存模式")
call DisplayTextToForce(GetPlayersAll(),"|cFFFF0000生存模式|r下：")
call DisplayTextToForce(GetPlayersAll(),"起始资金为|cFFFF0000300|r")
call DisplayTextToForce(GetPlayersAll(),"起始可用人口为|cFFFF000050|r")
call DisplayTextToForce(GetPlayersAll(),"进攻怪防御等级、速度等级、血量和回血等级为|cFFFF00007|r")
call DisplayTextToForce(GetPlayersAll(),"生存模式强度较高，建议先积累一些积分再尝试|r")
set udg_difficulty=7
set gameMode=1
call SetPlayerTechResearchedSwap($52303030,13,Player(5))
endif
loop
exitwhen i>4
call SetPlayerStateBJ(Player(i-1),PLAYER_STATE_RESOURCE_FOOD_CAP,80-5*udg_difficulty)
call SetPlayerStateBJ(Player(i-1),PLAYER_STATE_RESOURCE_GOLD,300)
set i=i+1
endloop
endfunction
function InitTrig_ChooseNanDu_2 takes nothing returns nothing
set gg_trg_ChooseNanDu_2=CreateTrigger()
call TriggerRegisterDialogEvent(gg_trg_ChooseNanDu_2,udg_select_diff)
call TriggerAddAction(gg_trg_ChooseNanDu_2,function Trig_ChooseNanDu_2Actions)
endfunction
function Trig_PlayerLeaveActions takes nothing returns nothing
set udg_ShengYuGuaiShu=udg_ShengYuGuaiShu-25
call DisplayTimedTextToForce(GetPlayersAll(),10.,"|CFFFF0000有玩家逃离了战场，剩余生命值减少25点")
endfunction
function InitTrig_PlayerLeave takes nothing returns nothing
set gg_trg_PlayerLeave=CreateTrigger()
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(0))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(1))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(2))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(3))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(4))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(5))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(6))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(7))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(8))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(9))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(10))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(11))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(12))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(13))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(14))
call TriggerRegisterPlayerEventLeave(gg_trg_PlayerLeave,Player(15))
call TriggerAddAction(gg_trg_PlayerLeave,function Trig_PlayerLeaveActions)
endfunction
function Trig_KillFinalBossConditions takes nothing returns boolean
return GetUnitTypeId(GetTriggerUnit())==$55303042
endfunction
function Trig_KillFinalBossActions takes nothing returns nothing
set udg_kill_final_num=udg_kill_final_num+1
endfunction
function InitTrig_KillFinalBoss takes nothing returns nothing
set gg_trg_KillFinalBoss=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(gg_trg_KillFinalBoss,EVENT_PLAYER_UNIT_DEATH)
call TriggerAddCondition(gg_trg_KillFinalBoss,Condition(function Trig_KillFinalBossConditions))
call TriggerAddAction(gg_trg_KillFinalBoss,function Trig_KillFinalBossActions)
endfunction
function Trig_WinConditions takes nothing returns boolean
return CountUnitsInGroup(attackerGroup)<=0
endfunction
function Trig_WinFunc006T takes nothing returns nothing
call CustomVictoryBJ(Player(0),true,true)
call CustomVictoryBJ(Player(1),true,true)
call CustomVictoryBJ(Player(2),true,true)
call CustomVictoryBJ(Player(3),true,true)
endfunction
function Trig_WinActions takes nothing returns nothing
local timer ydl_timer
call DisableTrigger(GetTriggeringTrigger())
call DisplayTextToForce(GetPlayersAll(),"|cFF00FF00恭喜通关！游戏将在40秒后结束！|r")
call ServerSavePointsWhenWin()
set ydl_timer=CreateTimer()
call TimerStart(ydl_timer,40.,false,function Trig_WinFunc006T)
set ydl_timer=null
endfunction
function InitTrig_Win takes nothing returns nothing
set gg_trg_Win=CreateTrigger()
call DisableTrigger(gg_trg_Win)
call TriggerRegisterTimerEventPeriodic(gg_trg_Win,.1)
call TriggerAddCondition(gg_trg_Win,Condition(function Trig_WinConditions))
call TriggerAddAction(gg_trg_Win,function Trig_WinActions)
endfunction
function Trig____________________001Actions takes nothing returns nothing
endfunction
function InitTrig____________________001 takes nothing returns nothing
set gg_trg____________________001=CreateTrigger()
call YDWESyStemAnyUnitDamagedRegistTrigger(gg_trg____________________001)
call YDWETriggerRegisterEnterRectSimpleNull(gg_trg____________________001,GetPlayableMapRect())
call TriggerAddAction(gg_trg____________________001,function Trig____________________001Actions)
endfunction
function Trig_JiFenPaiUpdateActions takes nothing returns nothing
call MultiboardSetItemValue(MultiboardGetItem(udg_multi,0,0),I2S(CountUnitsInGroup(attackerGroup))+" / "+I2S(udg_ShengYuGuaiShu))
call LeaderboardSetPlayerItemValueBJ(Player(4),udg_jifenpai,udg_ShengYuGuaiShu)
if udg_ShengYuGuaiShu<=CountUnitsInGroup(attackerGroup) then
call CustomDefeatBJ(Player(0),"胜败乃兵家常事，大侠请重新来过！")
call CustomDefeatBJ(Player(1),"胜败乃兵家常事，大侠请重新来过！")
call CustomDefeatBJ(Player(2),"胜败乃兵家常事，大侠请重新来过！")
call CustomDefeatBJ(Player(3),"胜败乃兵家常事，大侠请重新来过！")
call DisableTrigger(GetTriggeringTrigger())
else
endif
endfunction
function InitTrig_JiFenPaiUpdate takes nothing returns nothing
set gg_trg_JiFenPaiUpdate=CreateTrigger()
call DisableTrigger(gg_trg_JiFenPaiUpdate)
call TriggerRegisterTimerEventPeriodic(gg_trg_JiFenPaiUpdate,.5)
call TriggerAddAction(gg_trg_JiFenPaiUpdate,function Trig_JiFenPaiUpdateActions)
endfunction
function Trig____________________002Actions takes nothing returns nothing
call ShowUnit(gg_unit_e00H_0022,true)
call ShowUnit(gg_unit_e00H_0023,true)
call ShowUnit(gg_unit_e00H_0024,true)
call ShowUnit(gg_unit_e00H_0025,true)
endfunction
function InitTrig____________________002 takes nothing returns nothing
set gg_trg____________________002=CreateTrigger()
call TriggerAddAction(gg_trg____________________002,function Trig____________________002Actions)
endfunction
function Trig_FirstOccurActions takes nothing returns nothing
if YDWEUnitHasItemOfTypeBJNull(GetTriggerUnit(),$49303055) then
call YDWEPolledWaitNull(5)
endif
endfunction
function InitTrig_FirstOccur takes nothing returns nothing
set gg_trg_FirstOccur=CreateTrigger()
call TriggerAddAction(gg_trg_FirstOccur,function Trig_FirstOccurActions)
endfunction
function InitCustomTriggers takes nothing returns nothing
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
call InitTrig____________________002()
call InitTrig_FirstOccur()
endfunction
function RunInitializationTriggers takes nothing returns nothing
call ConditionalTriggerExecute(gg_trg_MapInit)
endfunction
function InitCustomPlayerSlots takes nothing returns nothing
call SetPlayerStartLocation(Player(0),0)
call SetPlayerColor(Player(0),ConvertPlayerColor(0))
call SetPlayerRacePreference(Player(0),RACE_PREF_HUMAN)
call SetPlayerRaceSelectable(Player(0),false)
call SetPlayerController(Player(0),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(1),1)
call SetPlayerColor(Player(1),ConvertPlayerColor(1))
call SetPlayerRacePreference(Player(1),RACE_PREF_HUMAN)
call SetPlayerRaceSelectable(Player(1),false)
call SetPlayerController(Player(1),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(2),2)
call SetPlayerColor(Player(2),ConvertPlayerColor(2))
call SetPlayerRacePreference(Player(2),RACE_PREF_HUMAN)
call SetPlayerRaceSelectable(Player(2),false)
call SetPlayerController(Player(2),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(3),3)
call SetPlayerColor(Player(3),ConvertPlayerColor(3))
call SetPlayerRacePreference(Player(3),RACE_PREF_HUMAN)
call SetPlayerRaceSelectable(Player(3),false)
call SetPlayerController(Player(3),MAP_CONTROL_USER)
call SetPlayerStartLocation(Player(4),4)
call ForcePlayerStartLocation(Player(4),4)
call SetPlayerColor(Player(4),ConvertPlayerColor(4))
call SetPlayerRacePreference(Player(4),RACE_PREF_NIGHTELF)
call SetPlayerRaceSelectable(Player(4),false)
call SetPlayerController(Player(4),MAP_CONTROL_COMPUTER)
call SetPlayerStartLocation(Player(5),5)
call ForcePlayerStartLocation(Player(5),5)
call SetPlayerColor(Player(5),ConvertPlayerColor(5))
call SetPlayerRacePreference(Player(5),RACE_PREF_UNDEAD)
call SetPlayerRaceSelectable(Player(5),false)
call SetPlayerController(Player(5),MAP_CONTROL_COMPUTER)
endfunction
function InitCustomTeams takes nothing returns nothing
call SetPlayerTeam(Player(0),0)
call SetPlayerState(Player(0),PLAYER_STATE_ALLIED_VICTORY,1)
call SetPlayerTeam(Player(1),0)
call SetPlayerState(Player(1),PLAYER_STATE_ALLIED_VICTORY,1)
call SetPlayerTeam(Player(2),0)
call SetPlayerState(Player(2),PLAYER_STATE_ALLIED_VICTORY,1)
call SetPlayerTeam(Player(3),0)
call SetPlayerState(Player(3),PLAYER_STATE_ALLIED_VICTORY,1)
call SetPlayerTeam(Player(4),0)
call SetPlayerState(Player(4),PLAYER_STATE_ALLIED_VICTORY,1)
call SetPlayerAllianceStateAllyBJ(Player(0),Player(1),true)
call SetPlayerAllianceStateAllyBJ(Player(0),Player(2),true)
call SetPlayerAllianceStateAllyBJ(Player(0),Player(3),true)
call SetPlayerAllianceStateAllyBJ(Player(0),Player(4),true)
call SetPlayerAllianceStateAllyBJ(Player(1),Player(0),true)
call SetPlayerAllianceStateAllyBJ(Player(1),Player(2),true)
call SetPlayerAllianceStateAllyBJ(Player(1),Player(3),true)
call SetPlayerAllianceStateAllyBJ(Player(1),Player(4),true)
call SetPlayerAllianceStateAllyBJ(Player(2),Player(0),true)
call SetPlayerAllianceStateAllyBJ(Player(2),Player(1),true)
call SetPlayerAllianceStateAllyBJ(Player(2),Player(3),true)
call SetPlayerAllianceStateAllyBJ(Player(2),Player(4),true)
call SetPlayerAllianceStateAllyBJ(Player(3),Player(0),true)
call SetPlayerAllianceStateAllyBJ(Player(3),Player(1),true)
call SetPlayerAllianceStateAllyBJ(Player(3),Player(2),true)
call SetPlayerAllianceStateAllyBJ(Player(3),Player(4),true)
call SetPlayerAllianceStateAllyBJ(Player(4),Player(0),true)
call SetPlayerAllianceStateAllyBJ(Player(4),Player(1),true)
call SetPlayerAllianceStateAllyBJ(Player(4),Player(2),true)
call SetPlayerAllianceStateAllyBJ(Player(4),Player(3),true)
call SetPlayerAllianceStateVisionBJ(Player(0),Player(1),true)
call SetPlayerAllianceStateVisionBJ(Player(0),Player(2),true)
call SetPlayerAllianceStateVisionBJ(Player(0),Player(3),true)
call SetPlayerAllianceStateVisionBJ(Player(0),Player(4),true)
call SetPlayerAllianceStateVisionBJ(Player(1),Player(0),true)
call SetPlayerAllianceStateVisionBJ(Player(1),Player(2),true)
call SetPlayerAllianceStateVisionBJ(Player(1),Player(3),true)
call SetPlayerAllianceStateVisionBJ(Player(1),Player(4),true)
call SetPlayerAllianceStateVisionBJ(Player(2),Player(0),true)
call SetPlayerAllianceStateVisionBJ(Player(2),Player(1),true)
call SetPlayerAllianceStateVisionBJ(Player(2),Player(3),true)
call SetPlayerAllianceStateVisionBJ(Player(2),Player(4),true)
call SetPlayerAllianceStateVisionBJ(Player(3),Player(0),true)
call SetPlayerAllianceStateVisionBJ(Player(3),Player(1),true)
call SetPlayerAllianceStateVisionBJ(Player(3),Player(2),true)
call SetPlayerAllianceStateVisionBJ(Player(3),Player(4),true)
call SetPlayerAllianceStateVisionBJ(Player(4),Player(0),true)
call SetPlayerAllianceStateVisionBJ(Player(4),Player(1),true)
call SetPlayerAllianceStateVisionBJ(Player(4),Player(2),true)
call SetPlayerAllianceStateVisionBJ(Player(4),Player(3),true)
call SetPlayerTeam(Player(5),1)
call SetPlayerState(Player(5),PLAYER_STATE_ALLIED_VICTORY,1)
endfunction
function InitAllyPriorities takes nothing returns nothing
call SetStartLocPrioCount(0,3)
call SetStartLocPrio(0,0,1,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0,1,2,MAP_LOC_PRIO_HIGH)
call SetStartLocPrio(0,2,3,MAP_LOC_PRIO_LOW)
call SetStartLocPrioCount(1,1)
call SetStartLocPrio(1,0,2,MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(2,2)
call SetStartLocPrio(2,0,1,MAP_LOC_PRIO_LOW)
call SetStartLocPrio(2,1,3,MAP_LOC_PRIO_HIGH)
call SetStartLocPrioCount(3,1)
call SetStartLocPrio(3,0,2,MAP_LOC_PRIO_HIGH)
endfunction
function main takes nothing returns nothing
call SetCameraBounds(-5376.+GetCameraMargin(CAMERA_MARGIN_LEFT),-5376.+GetCameraMargin(CAMERA_MARGIN_BOTTOM),5376.-GetCameraMargin(CAMERA_MARGIN_RIGHT),5376.-GetCameraMargin(CAMERA_MARGIN_TOP),-5376.+GetCameraMargin(CAMERA_MARGIN_LEFT),5376.-GetCameraMargin(CAMERA_MARGIN_TOP),5376.-GetCameraMargin(CAMERA_MARGIN_RIGHT),-5376.+GetCameraMargin(CAMERA_MARGIN_BOTTOM))
call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl","Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
call NewSoundEnvironment("Default")
call SetAmbientDaySound("LordaeronSummerDay")
call SetAmbientNightSound("LordaeronSummerNight")
call SetMapMusic("Music",true,0)
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
|CFF00ff00=原汁原味的武侠游戏=
|CFFffff00=丰富多样的玩法=
|CFFff0000=紧张刺激的游戏节奏=")
call SetPlayers(6)
call SetTeams(6)
call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
call DefineStartLocation(0,-832.,512.)
call DefineStartLocation(1,-1152.,-4224.)
call DefineStartLocation(2,-2944.,-3264.)
call DefineStartLocation(3,-4352.,-3712.)
call DefineStartLocation(4,2176.,0.)
call DefineStartLocation(5,1728.,-1600.)
call InitCustomPlayerSlots()
call InitCustomTeams()
call InitAllyPriorities()
endfunction
function sa__Frame_onDestroy takes nothing returns boolean
local integer this=f__arg_this
if s__Frame_id[this]!=0 then
call DzDestroyFrame(s__Frame_id[this])
endif
set s__Frame_id[this]=0
return true
endfunction
function sa__Tower_setAbility takes nothing returns boolean
local integer this=f__arg_this
local integer i=0
local integer tower_id=GetUnitTypeId(s__Tower_u[this])
loop
exitwhen i>=11
if LoadInteger(YDHT,tower_id*2,i)!=0 then
if GetUnitAbilityLevel(s__Tower_u[this],LoadInteger(YDHT,tower_id*2,i))==0 then
call UnitAddAbility(s__Tower_u[this],LoadInteger(YDHT,tower_id*2,i))
endif
call SetUnitAbilityLevel(s__Tower_u[this],LoadInteger(YDHT,tower_id*2,i),LoadInteger(YDHT,tower_id*3,i))
call SaveInteger(YDHT,GetHandleId(s__Tower_u[this])*2,i,LoadInteger(YDHT,tower_id*2,i))
call SaveInteger(YDHT,GetHandleId(s__Tower_u[this])*3,i,LoadInteger(YDHT,tower_id*3,i))
if LoadInteger(YDHT,tower_id*2,i)==$41303052 then
call UnitRemoveAbility(s__Tower_u[this],$41303051)
call UnitAddAbility(s__Tower_u[this],$41303051)
call SetPlayerAbilityAvailableBJ(false,$41303051,GetOwningPlayer(s__Tower_u[this]))
call SetUnitAbilityLevel(s__Tower_u[this],$4130304F,LoadInteger(YDHT,tower_id*3,i))
call SetUnitAbilityLevel(s__Tower_u[this],$41303050,LoadInteger(YDHT,tower_id*3,i))
endif
if LoadInteger(YDHT,tower_id*2,i)==$41303039 then
call PauseUnit(s__Tower_u[this],true)
call PauseUnit(s__Tower_u[this],false)
endif
endif
set i=i+1
endloop
return true
endfunction
function sa__Tower_setItemNum takes nothing returns boolean
local integer this=f__arg_this
local integer item_num=f__arg_integer1
if item_num>0 then
call UnitAddAbility(s__Tower_u[this],$41303131)
call SetUnitAbilityLevel(s__Tower_u[this],$41303131,item_num)
call UnitMakeAbilityPermanent(s__Tower_u[this],true,$41303131)
endif
return true
endfunction
function sa__YDWEStringFormula___Sorting_onDestroy takes nothing returns boolean
local integer this=f__arg_this
local integer i=0
loop
exitwhen i==s___YDWEStringFormula___Sorting_stack_size
set s___YDWEStringFormula___Sorting_stack[s__YDWEStringFormula___Sorting_stack[this]+i]=0
set s___YDWEStringFormula___Sorting_count[s__YDWEStringFormula___Sorting_count[this]+i]=0
set i=i+1
endloop
set s__YDWEStringFormula___Sorting_char[this]=""
return true
endfunction
function sa__YDWEStringFormula___Inventory_onDestroy takes nothing returns boolean
local integer this=f__arg_this
call FlushChildHashtable(YDHT,StringHash("YDWEStringFormula."+I2S(this)))
return true
endfunction
function sa___prototype25_SetUnitMoveSpeedEx takes nothing returns boolean
call s__ModSpeed_setSpeed(f__arg_unit1,f__arg_real1*1.)
return true
endfunction
function jasshelper__initstructs1472141390 takes nothing returns nothing
set st__Frame_onDestroy=CreateTrigger()
call TriggerAddCondition(st__Frame_onDestroy,Condition(function sa__Frame_onDestroy))
set st__Tower_setAbility=CreateTrigger()
call TriggerAddCondition(st__Tower_setAbility,Condition(function sa__Tower_setAbility))
set st__Tower_setItemNum=CreateTrigger()
call TriggerAddCondition(st__Tower_setItemNum,Condition(function sa__Tower_setItemNum))
set st__YDWEStringFormula___Sorting_onDestroy=CreateTrigger()
call TriggerAddCondition(st__YDWEStringFormula___Sorting_onDestroy,Condition(function sa__YDWEStringFormula___Sorting_onDestroy))
set st__YDWEStringFormula___Inventory_onDestroy[3]=CreateTrigger()
set st__YDWEStringFormula___Inventory_onDestroy[4]=st__YDWEStringFormula___Inventory_onDestroy[3]
call TriggerAddCondition(st__YDWEStringFormula___Inventory_onDestroy[3],Condition(function sa__YDWEStringFormula___Inventory_onDestroy))
set st___prototype25[1]=CreateTrigger()
call TriggerAddAction(st___prototype25[1],function sa___prototype25_SetUnitMoveSpeedEx)
call TriggerAddCondition(st___prototype25[1],Condition(function sa___prototype25_SetUnitMoveSpeedEx))
call ExecuteFunc("s__ModSpeed_Init___onInit")
call ExecuteFunc("s__YDWEStringFormula___ItemIdMatrix_onInit")
call ExecuteFunc("s__YDWEStringFormula___FormulaMatrix_onInit")
endfunction
