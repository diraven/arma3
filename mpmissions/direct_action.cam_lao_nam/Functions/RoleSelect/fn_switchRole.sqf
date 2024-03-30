	
	private ['_newPlayerUnit', '_originalPlayerUnit', '_playerGroup', '_originalPos', '_originalDir', '_roledisplayName', '_message', '_titleText', '_oppositeSide', '_oppositeFactionName'];


	_role = param [0, "B_soldier_F"];
	_runRespawn = param [1, TRUE];
	_blackout = param [2, TRUE];
	_originalSide = side player;
	_side = param [3, _originalSide];
	
	_oppositeSide = switch (side player) do {
				
		case WEST : {EAST};
		case EAST : {WEST};
		default {WEST};
	
	};
	
	_oppositeFactionName = switch (_oppositeSide) do {

		case WEST : {BLU_FactionName};
		case EAST : {OPF_1_FactionName};
		default {BLU_FactionName}; 

	};
	
		// Set Display Name
		
			_roledisplayName = [configFile >> "CfgVehicles" >> _role] call BIS_fnc_displayName;

			if (_role == 'OPTRE_Spartan3_Soldier_Rifleman_AR') then {

				_roledisplayName = 'Spartan';

			}else{

				_roledisplayName = [configFile >> "CfgVehicles" >> _role] call BIS_fnc_displayName;

			};
			
			// Change Display Name If BF4 Mode
			
				if (BEW_v_BF4Mode) then {
						
					_roledisplayName = switch (_role) do {
					
						case "B_soldier_M_F" 	: {"Recon"};				
						case "B_soldier_AR_F" 	: {"Support"};				
						case "B_engineer_F"	 	: {"Engineer"};
						case "B_medic_F"		: {"Assault"};
					
					};
			
				};

		
		// Show Switching Role Text - Black Out
			
			if !(_originalSide == _side) then {
			
				_titleText = format ["Switching Side To %1...", _oppositeFactionName];
				
			}else{
				
				_titleText = format ["Switching Role To %1...", _roledisplayName];
				
			};
			
			if (_blackout) then {
				
				titleText [_titleText, "BLACK", 3];

				sleep 3;
				
			};
		
		
		// Initalized Flag
		
			BEW_v_playerInitialized = nil;
			
		
		// Params
		
			_originalPlayerUnit 	= 	player;
			_originalPos			= 	getPosASL _originalPlayerUnit;
			_offsetPosition 		= 	_originalPlayerUnit modelToWorldWorld [0,-3,0];
			_originalDir			= 	getDir _originalPlayerUnit;
			_playerGroup 			= 	group player;
			_tempGroup				= 	createGroup [_side, true];


		// Setup New Unit
		
			_newPlayerUnit = _tempGroup createUnit [_role, MarkerPos "missionStartSpawn", [], 0, 'NONE'];
			_newPlayerUnit allowDamage false; 
			_newPlayerUnit disableAI 'MOVE'; 
			_newPlayerUnit disableAI 'TARGET'; 
			_newPlayerUnit disableAI 'AUTOTARGET'; 
			
			
		// Hide New Unit
		
			[_newPlayerUnit, true] remoteExec ["hideObjectGlobal", 2];

			sleep 3;
		
		
		// Get Tasks
		
			[_originalPlayerUnit] call BEW_FNC_getAllCurrentTasks;
		
		
		// Switch Into New Unit - Delete Old Unit
		
			selectPlayer _newPlayerUnit;							
			deleteVehicle _originalPlayerUnit;
		
		
		// Set Tasks
		
			[] call BEW_FNC_resyncTasks;
		

		// Set Position Of New Unit
		
			_newPlayerUnit setPosWorld _offsetPosition;
			_newPlayerUnit setdir _originalDir;
			_newPlayerUnit allowDamage true; 
			
			
		// Join Original Group
			
			if !(_originalSide == _side) then {
			
				[_newPlayerUnit] joinSilent createGroup [_side, true];
			
			}else{;
			
				[_newPlayerUnit] joinSilent _playerGroup;
				
			};


		// Setup Loadout
			
			if (_runRespawn) then {
				
				_translationList = switch (_side) do {
					
					case WEST : {[[BLU_Map_TransList, BLU_New_TransList]]};
					case EAST : {[[BLU_Map_TransList, OPF_1_New_TransList]]};
					default {[[BLU_Map_TransList, BLU_New_TransList]]};
				
				};
				
				[_newPlayerUnit, nil, true, _translationList] call BEW_FNC_switchLoadout;		
			
			};
				
		
		// Set Up Credits

			[] call BEW_FNC_Credits;
		
		
		// Set Up Tutorials

			[] call BEW_FNC_Tutorials;
			
			
		// Vehicle Unlock Diary
		
			[] spawn BEW_FNC_vehicleUnlockDiary;
			
		
		// Exec On Player Respawn
		
			if (_runRespawn) then {
			
				[_newPlayerUnit] call BEW_FNC_Respawn;
				
			};
		
		
		// Stop Firing At Base
		
			[_newPlayerUnit] call BEW_FNC_stopFiringAtBase;
			
			
		// Spawn Point
	
			
			/*
			
			if (BEW_v_BF4Mode) then {
			
				[west, _newPlayerUnit, profileName] call BIS_fnc_addRespawnPosition;
				
			};
			
			*/
			
			
		// Init Wounding System
		
			[_newPlayerUnit] call AIS_System_fnc_loadAIS;
		
		
		// Disposable NLAW
		
			if(CRS_DisposableAT)then{

				player addEventHandler["Fired",{
				
					if (_this select 1 in["launch_NLAW_F","CUP_launch_NLAW","CUP_launch_M136","CUP_launch_RPG18"]) then {
					
						[_this select 0] spawn CRS_AT;
					
					};
				
				}];

			};
		

		// Backblast
				
			if (CRS_BackBlast) then {
		
				player addEventHandler ["Fired",{
			
					if (_this select 1 isKindOf ["Launcher",configFile>>"CfgWeapons"]) then {
					
						[player] call CRS_BB;
					
					};
			
				}];
		
			};
	
			
		// Respawn Event Handler
	
			BEW_v_RespawnEventHandler = _newPlayerUnit addEventHandler ["Respawn", {
			
				params ["_unit", "_corpse"];
				
				[_unit] call BEW_FNC_Respawn;
				
			}];
				
		if (_blackout) then {
		
				sleep 5;


			// Show Text - Black In
			
				titleText ["New Role Selected", "BLACK IN", 5];

				sleep 5;
				
				
			// Unhide Player

				[_newPlayerUnit, false] remoteExec ["hideObjectGlobal", 2];
			
			
			// Show Switched Roles Message
				
				if !(_originalSide == _side) then {
				
					_message = format ["%1 has switched sides to %2", profileName, _oppositeFactionName];
				
				}else{
				
					_message = format ["%1 has switched roles to %2", profileName, _roledisplayName];
				
				};

				[_message] remoteExec ["systemChat", 0];
			
		};