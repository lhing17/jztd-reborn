globals
//globals from INITVJEXECLUAAPP:
constant boolean LIBRARY_INITVJEXECLUAAPP=true
//endglobals from INITVJEXECLUAAPP
//globals from YDTriggerSaveLoadSystem:
constant boolean LIBRARY_YDTriggerSaveLoadSystem=true
hashtable YDHT
hashtable YDLOC
//endglobals from YDTriggerSaveLoadSystem
trigger gg_trg_solareditr= null

trigger l__library_init

//JASSHelper struct globals:

endglobals


//library INITVJEXECLUAAPP:
    function INITVJEXECLUAAPP__init_function takes nothing returns nothing
        call Cheat("exec-lua: solar_boot")
    endfunction 

//library INITVJEXECLUAAPP ends
//library YDTriggerSaveLoadSystem:
//#  define YDTRIGGER_handle(SG)                          YDTRIGGER_HT##SG##(HashtableHandle)
    function YDTriggerSaveLoadSystem__Init takes nothing returns nothing
            set YDHT=InitHashtable()
        set YDLOC=InitHashtable()
    endfunction

//library YDTriggerSaveLoadSystem ends
//===========================================================================
//*
//*  Global variables
//*
//===========================================================================
function InitGlobals takes nothing returns nothing
 local integer i= 0
endfunction
function InitRandomGroups takes nothing returns nothing
 local integer curset
endfunction
function InitSounds takes nothing returns nothing
endfunction
function CreateDestructables takes nothing returns nothing
 local destructable d
 local trigger t
 local real life
endfunction
function CreateItems takes nothing returns nothing
 local integer itemID
endfunction
function CreateUnits takes nothing returns nothing
 local unit u
 local integer unitID
 local trigger t
 local real life
	set u=CreateUnit(Player(12), 'Nklj', 1.6, - 255.9, 119.6)
endfunction
function CreateRegions takes nothing returns nothing
 local weathereffect we
endfunction
function CreateCameras takes nothing returns nothing
endfunction
//--------call Cheat("exec-lua: solar_boot")-------------
//------------------------------------------------
//===========================================================================
// Trigger: solareditr
//===========================================================================
function Trig_solareditrActions takes nothing returns nothing
endfunction
//===========================================================================
function InitTrig_solareditr takes nothing returns nothing
	set gg_trg_solareditr=CreateTrigger()
	call TriggerAddAction(gg_trg_solareditr, function Trig_solareditrActions)
endfunction
//===========================================================================
function InitCustomTriggers takes nothing returns nothing
	call InitTrig_solareditr()
endfunction
//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
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
	call SetPlayerRacePreference(Player(5), RACE_PREF_ORC)
	call SetPlayerRaceSelectable(Player(5), false)
	call SetPlayerController(Player(5), MAP_CONTROL_COMPUTER)
	call SetPlayerStartLocation(Player(6), 6)
	call ForcePlayerStartLocation(Player(6), 6)
	call SetPlayerColor(Player(6), ConvertPlayerColor(6))
	call SetPlayerRacePreference(Player(6), RACE_PREF_ORC)
	call SetPlayerRaceSelectable(Player(6), false)
	call SetPlayerController(Player(6), MAP_CONTROL_COMPUTER)
endfunction
function InitCustomTeams takes nothing returns nothing
	// Force: TRIGSTR_002
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
	call SetPlayerAllianceStateVisionBJ(Player(0), Player(1), true)
	call SetPlayerAllianceStateAllyBJ(Player(0), Player(2), true)
	call SetPlayerAllianceStateVisionBJ(Player(0), Player(2), true)
	call SetPlayerAllianceStateAllyBJ(Player(0), Player(3), true)
	call SetPlayerAllianceStateVisionBJ(Player(0), Player(3), true)
	call SetPlayerAllianceStateAllyBJ(Player(0), Player(4), true)
	call SetPlayerAllianceStateVisionBJ(Player(0), Player(4), true)
	call SetPlayerAllianceStateAllyBJ(Player(1), Player(0), true)
	call SetPlayerAllianceStateVisionBJ(Player(1), Player(0), true)
	call SetPlayerAllianceStateAllyBJ(Player(1), Player(2), true)
	call SetPlayerAllianceStateVisionBJ(Player(1), Player(2), true)
	call SetPlayerAllianceStateAllyBJ(Player(1), Player(3), true)
	call SetPlayerAllianceStateVisionBJ(Player(1), Player(3), true)
	call SetPlayerAllianceStateAllyBJ(Player(1), Player(4), true)
	call SetPlayerAllianceStateVisionBJ(Player(1), Player(4), true)
	call SetPlayerAllianceStateAllyBJ(Player(2), Player(0), true)
	call SetPlayerAllianceStateVisionBJ(Player(2), Player(0), true)
	call SetPlayerAllianceStateAllyBJ(Player(2), Player(1), true)
	call SetPlayerAllianceStateVisionBJ(Player(2), Player(1), true)
	call SetPlayerAllianceStateAllyBJ(Player(2), Player(3), true)
	call SetPlayerAllianceStateVisionBJ(Player(2), Player(3), true)
	call SetPlayerAllianceStateAllyBJ(Player(2), Player(4), true)
	call SetPlayerAllianceStateVisionBJ(Player(2), Player(4), true)
	call SetPlayerAllianceStateAllyBJ(Player(3), Player(0), true)
	call SetPlayerAllianceStateVisionBJ(Player(3), Player(0), true)
	call SetPlayerAllianceStateAllyBJ(Player(3), Player(1), true)
	call SetPlayerAllianceStateVisionBJ(Player(3), Player(1), true)
	call SetPlayerAllianceStateAllyBJ(Player(3), Player(2), true)
	call SetPlayerAllianceStateVisionBJ(Player(3), Player(2), true)
	call SetPlayerAllianceStateAllyBJ(Player(3), Player(4), true)
	call SetPlayerAllianceStateVisionBJ(Player(3), Player(4), true)
	call SetPlayerAllianceStateAllyBJ(Player(4), Player(0), true)
	call SetPlayerAllianceStateVisionBJ(Player(4), Player(0), true)
	call SetPlayerAllianceStateAllyBJ(Player(4), Player(1), true)
	call SetPlayerAllianceStateVisionBJ(Player(4), Player(1), true)
	call SetPlayerAllianceStateAllyBJ(Player(4), Player(2), true)
	call SetPlayerAllianceStateVisionBJ(Player(4), Player(2), true)
	call SetPlayerAllianceStateAllyBJ(Player(4), Player(3), true)
	call SetPlayerAllianceStateVisionBJ(Player(4), Player(3), true)
	// Force: TRIGSTR_009
	call SetPlayerTeam(Player(5), 1)
	call SetPlayerState(Player(5), PLAYER_STATE_ALLIED_VICTORY, 1)
	call SetPlayerTeam(Player(6), 1)
	call SetPlayerState(Player(6), PLAYER_STATE_ALLIED_VICTORY, 1)
	call SetPlayerAllianceStateAllyBJ(Player(5), Player(6), true)
	call SetPlayerAllianceStateVisionBJ(Player(5), Player(6), true)
	call SetPlayerAllianceStateAllyBJ(Player(6), Player(5), true)
	call SetPlayerAllianceStateVisionBJ(Player(6), Player(5), true)
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
//===========================================================================
//*
//*  Main Initialization
//*
//===========================================================================
function main takes nothing returns nothing
	call SetCameraBounds(- 3328.000000 + GetCameraMargin(CAMERA_MARGIN_LEFT), - 3584.000000 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.000000 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.000000 - GetCameraMargin(CAMERA_MARGIN_TOP), - 3328.000000 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.000000 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.000000 - GetCameraMargin(CAMERA_MARGIN_RIGHT), - 3584.000000 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
	call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
	call NewSoundEnvironment("Default")
	call SetAmbientDaySound("LordaeronSummerDay")
	call SetAmbientNightSound("LordaeronSummerNight")
	call SetMapMusic("Music", true, 0)
	call InitSounds()
	call InitRandomGroups()
	call CreateRegions()
	call CreateCameras()
	call CreateDestructables()
	call CreateItems()
	call CreateUnits()
	call InitBlizzard()

call ExecuteFunc("INITVJEXECLUAAPP__init_function")
call ExecuteFunc("YDTriggerSaveLoadSystem__Init")

	call InitGlobals()
	call InitCustomTriggers()
	call RunInitializationTriggers()
endfunction
//===========================================================================
//*
//*  Map Configuration
//*
//===========================================================================
function config takes nothing returns nothing
	call SetMapName("TRIGSTR_010")
	call SetMapDescription("TRIGSTR_012")
	call SetPlayers(7)
	call SetTeams(7)
	call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)
	call DefineStartLocation(0, - 320.000000, - 192.000000)
	call DefineStartLocation(1, 1024.000000, - 256.000000)
	call DefineStartLocation(2, - 896.000000, - 128.000000)
	call DefineStartLocation(3, 512.000000, - 576.000000)
	call DefineStartLocation(4, - 832.000000, 576.000000)
	call DefineStartLocation(5, 384.000000, 320.000000)
	call DefineStartLocation(6, - 512.000000, - 896.000000)
	call InitCustomPlayerSlots()
	call InitCustomTeams()
	call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:

