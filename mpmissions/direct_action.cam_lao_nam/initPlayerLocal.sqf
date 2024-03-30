	if (!isDedicated) then {
	
		waitUntil {player == player};
		waitUntil {alive player};
	
	};	

	_plyr = _this select 0;	

	// Define Placed Player Object Position
	
		BEW_v_playerObjectDefaultPosition = getPosASL _plyr;


	// Fade Out

		if !(is3DENPreview) then {
		
			titleText ["DIRECT ACTION IS LOADING...", "BLACK FADED", 999];

			if !(is3DENPreview) then {
			
				disableUserInput true;
				
			};

		};
		

	// Functions

		[] call BEW_FNC_Functions;
		
		
	// SHK Pos

		call compile preprocessfile "SHK_pos\shk_pos_init.sqf";
	
	
	// Mission Parameter Setup
		
		[] call BEW_FNC_missionParameterSetup;
	
	
	// Autobalancer
		
		[] call BEW_FNC_AutoBalancer;
	
	
	// Unlocked Factions
		
		if (isNil "BEW_v_UnlockedFactions") then {
		
			BEW_v_UnlockedFactions = switch (side player) do {
			
				case WEST	:	{["BLU"]};
				case EAST	:	{["OPF_1"]};
				default {["BLU"]};
			
			};
			
		};
	
	
	// Wait Until Mission Starts And Player Is Player

		waitUntil {(time > 0)};

		if ((!isDedicated) && (player != player)) then {waitUntil {player == player}};


	// Clear Starting Loadout
	
		[player] call BEW_FNC_ClearLoadout;
		

	// Hide and Move Player To Start Position
		
		// Hide Player
		
			[_plyr, true] remoteExec ["hideObjectGlobal", 2];
		
		
		// Wait Till Initial Spawn Point Defined
		
			waitUntil {!(isNil "initialSpawnPoint")};
			waitUntil {!(isNull initialSpawnPoint)};
						
		
		// Move To Initial Spawn Point
						
			_plyr setPosASL getPosASL initialSpawnPoint;
			_plyr setdir getDir initialSpawnPoint;
						
		
	// Define Map Camo
			
		[worldName] call BEW_FNC_defineMapCamo;
		
		
	// Diary Setup
	
		[] call BEW_FNC_DiarySetup;
		
		
	// Invunerable Base Buildings

		[] spawn BEW_FNC_invunerableBasebuildings;
				

	// GF Earplugs

		[] execVM "GF_Earplugs\Credits.sqf";	

		addMissionEventHandler ["Loaded", {
			params ["_saveType"];
			
			If(_saveType isEqualto "continue") then{
				[] execVM "GF_Earplugs\GF_Earplugs.sqf";
			};
		}];

		[] execVM "GF_Earplugs\GF_Earplugs.sqf";
		

	// Set View Distance

		setViewDistance 1200;
		setObjectViewDistance 800;	

	
	// Disable Arsenal Loadout Recall Button
	
		[] call BEW_FNC_disableArsenalRecallButtons;
		
		
	// On Arsenal Open
	
		[] call BEW_FNC_onArsenalOpen;
	
	
	// On Arsenal Close
	
		[] call BEW_FNC_onArsenalClose;
		
		
	// Disable Firewill AMS
		
		[] spawn BEW_FNC_DisableAMS;
		
		
	// Disable Damage On Map Towers
	
		[] spawn BEW_FNC_disableTowersDamage;
		
		
	// No Firing At Base
	
		[_plyr] call BEW_FNC_stopFiringAtBase;
		
		
	// On Player Disconnect Script
	
		onPlayerDisconnected { [_id, _name, _uid] call compile preprocessfilelinenumbers "playerDisconnected.sqf" };
		
	
	// CH View Distance
	
		CHVD_allowNoGrass = false;
		//CHVD_maxView = 7500;
		//CHVD_maxObj = 5000;
	
	
	// Single Player Stuff
	
		if ((isServer) and !(isDedicated)) then {
		
			if !(isMultiplayer) then {
				
				// Change Squad Leader On Respawn
								
					addMissionEventHandler ["TeamSwitch", {
					
						params ["_previousUnit", "_newUnit"];
										
						group _newUnit selectLeader _newUnit;
					
					}];
			
			};
			
		};

		
	// Combat Realism Scripts
	
		null=[]execVM"CRS\init.sqf";	
		
		
	
	// Respawn Event Handler
	
		BEW_v_RespawnEventHandler = _plyr addEventHandler ["Respawn", {
			
				params ["_unit", "_corpse"];
				
				[_unit] call BEW_FNC_Respawn;
				
			}];
	
	
	// Respawn 
	
		[_plyr] call BEW_FNC_Respawn;
