private ["_selectedObjective", "_playAreaIcon", "_objectivePos", "_objectiveSize", "_objectiveText", "_objectiveType", "_iconType", "_spawnPos", "_enemyGroup", "_side", "_faction", "_targetParking", "_returnMarker", "_targetVehicleType", "_targetDisplayName", "_message"];

_selectedObjective = param [0];
_playAreaIcon = param [1];
_forceType = param [2];
_originalMarkerType = markerType _playAreaIcon;

	// Objective Attributes

		_objectivePos = markerPos _selectedObjective;
		_objectiveSize = markerSize _selectedObjective;
		_objectiveText = markerText _selectedObjective;
		_objectiveType = markerColor _selectedObjective;
		

	// Change Marker Icon
	
		deleteMarker _playAreaIcon;
	
		_markerName = format ["%1_activeObjectiveIcon", _selectedObjective];
		_playAreaIcon = createMarker [_markerName, _objectivePos];
		_playAreaIcon setMarkerType "hd_unknown";
		_playAreaIcon setMarkerText "Find Enemy Vehicle";
		_playAreaIcon setMarkerSize [0.75, 0.75];
		_playAreaIcon setMarkerColor "colorYELLOW";
		
		
	// Mission Started Flag
	
		objectiveMissionActive = TRUE;
		publicVariable "objectiveMissionActive";


	// Define Hangars
	
		_allObjects = [_objectivePos, _objectiveSize select 0, TRUE, TRUE, TRUE] call BEW_FNC_FindParking;
		_helipads = _allObjects select 0;
		_hangars = _allObjects select 1;
		_sheds = _allObjects select 2;
		
	
	// Define Vehicle Types

		_forceTypeVehList = switch (_forceType) do {
		
			case "OPF_1"	: 	{OPF_1_VehList};
			
			case "OPF_2"	:	{OPF_2_VehList};
				
			case "OPF_SOF"	:	{OPF_SOF_VehList};
			
			default {OPF_1_VehList};
			
		};
	
		
		_allTypes = [];
			
		_heliTypes = []; 
			_heliTypes = _heliTypes + (["T_HELI"] call _forceTypeVehList); 
			_heliTypes = _heliTypes + (["A_HELI"] call _forceTypeVehList);
			
		_planeTypes = []; 
			_planeTypes = _planeTypes + (["CAP"] call _forceTypeVehList); 
			_planeTypes = _planeTypes + (["CAS"] call _forceTypeVehList);
		
		_tankTypes = []; 
			_tankTypes = _tankTypes + (["TANK"] call _forceTypeVehList); 
			_tankTypes = _tankTypes + (["APC"] call _forceTypeVehList);
		
		
	// Check Parking Position Exists In AO
	
		if (count _helipads > 0) then {
		
			_allTypes = _allTypes + _heliTypes;
			
		};	
		
		
		if (count _hangars > 0) then {
		
			_allTypes = _allTypes + _planeTypes;
			
		};	
		
		/*
		if (count _sheds > 0) then {
		
			_allTypes = _allTypes + _tankTypes;
			
		};	
		*/
	
	// Pick Target Vehicle Type
	
		_targetVehicleType = _allTypes call BIS_fnc_selectRandom;
		_targetDisplayName = [configFile >> "CfgVehicles" >> _targetVehicleType] call BIS_fnc_displayName;


	// Determine Type Of Parking Position

		if (_targetVehicleType isKindOf "helicopter") then {
		
			_targetParking = _helipads call BIS_fnc_selectRandom;
			
		};
		
		if (_targetVehicleType isKindOf "plane") then {
		
			_targetParking = _hangars call BIS_fnc_selectRandom;
			
		};
		
		if (_targetVehicleType isKindOf "LandVehicle") then {
		
			_targetParking = _sheds call BIS_fnc_selectRandom;
			
		};
		

	// Create Vehicle

		_spawnPos = getPos _targetParking;
		_maxDistance = 300;

		_targetVeh = createVehicle [_targetVehicleType, _spawnPos, [], 0, "CAN_COLLIDE"];		
		
		// Vehicle Setup
		
			_targetVeh allowDamage false;
			_targetVeh setFuel 0.03;
			
		// Vehicle Restrictions
		
		//	[_targetVeh, [["air", "B_Helipilot_F"], ["tank", "B_crew_F"], ["Wheeled_APC_F", "B_crew_F"]]] spawn BEW_FNC_VehicleRestrictions;
		
		
		// Adjust Offset And Direction
		
			if (_targetVehicleType isKindOf "plane") then {
			
				_targetVeh setDir getDir _targetParking - 180;
				
			}else{
			
				_targetVeh setDir getDir _targetParking;
			
			};
			
			
			if (_targetVehicleType isKindOf "LandVehicle") then {
			
				_offsetPos = _targetVeh modeltoworld [0,12.5,0];
				_targetVeh setPos _offsetPos;
				
			};
			
	
	
	// Create Fuel Truck
	
		_oldType = [

			"C_Van_01_fuel_F"

		] call BIS_fnc_selectRandom;
		
		private ["_fuelVehicleType"];
		
		call compile format ["
		
			_fuelVehicleType = [_oldType, [[BLU_Map_TransList, %1_New_TransList]]] call BEW_FNC_TranslateClassNames;
		
		", _forceType];


		// Find Safe Pos

		_safePosFuel = [_objectivePos, [1, 200], 4, 0, 0] call BEW_FNC_findRandomEmptyPosition;


		// Create Fuel Truck
		
		_fuelTruck = createVehicle [_fuelVehicleType, _safePosFuel, [], 0, "NONE"];
		_fuelTruck setVehicleLock "LOCKED";

			
	// Define Max Distance
		
		if (_maxDistance < 300) then {
		
			_maxDistance = 300;
		
		}else{
			
			_maxDistance = _maxDistance + random 150;
			
		};
		
	
	// Create Play Area
	
		_markerName = format ["%1_playArea", _selectedObjective];
	
		_playAreaMarker = createMarker [_markerName, _objectivePos];
		_playAreaMarker setMarkerShape "ELLIPSE";
		_playAreaMarker setMarkerSize [_maxDistance, _maxDistance];
		_playAreaMarker setMarkerColor "colorOPFOR";
		_playAreaMarker setMarkerAlpha 0.3;
		_playAreaSize = markerSize _playAreaMarker;
	
	
	// In Area Trigger
	
		_inArea = createTrigger ["EmptyDetector", _objectivePos];
		_inArea setTriggerArea [500, 500, 0, false];
		_inArea setTriggerActivation ["WEST", "PRESENT", true];
		_inArea setTriggerStatements ["(this) && (({alive _x && _x inArea thisTrigger} count allPlayers) > 0)", "", ""];
		
		
	// Spawn Force
	
		_force = [_objectivePos, _objectiveSize select 0, _forceType, false, true, true, true, true] call BEW_FNC_spawnForce;
		_allUnits = _force select 0;
		_allvehs  = _force select 1;
	
	
	// Add Fuel Truck To All Vehs
	
		_allvehs = _allvehs + [_fuelTruck];
	
	
	// Intel Objects
		
		[_objectivePos, _objectiveSize select 0] call BEW_FNC_spawnCabinetIntelObjects;
	
		
	// Send Message
	
		_message = format ["We have reports there is an enemy %1 in the area. We need you to enter the AO and steal it.", _targetDisplayName];
	
		[HQ_WEST , _message] remoteExec ["sideChat", 0];
		
		
waitUntil {(west knowsAbout _targetVeh > 0) or !(objectiveMissionActive)};
		
	// Move Marker
	
		_playAreaIcon setMarkerType "hd_pickup";		
		_playAreaIcon setMarkerPos getPos _targetVeh;
		_markerText = format ["Steal Enemy %1", _targetDisplayName];
		_playAreaIcon setMarkerText _markerText;
		
		
	// Send Message
	
		_message = format ["Good work! You have located the enemy %1. Now take control of it.", _targetDisplayName];
		
		if !(objectiveMissionCancelled) then {
		
			[HQ_WEST , _message] remoteExec ["sideChat", 0];
			
		};
		
waitUntil {!(objectiveMissionActive) or (({alive _x && _x in _targetVeh} count allPlayers) > 0) or !(alive _targetVeh)};


	// Hide Marker 
	
		_playAreaIcon setMarkerAlpha 0;


	// Moving Marker
	
		[_targetVeh, "Target Vehicle", "ColorYellow", "mil_objective"] execVM "scripts\movingMarker.sqf";


	// Enable Vehicle Damage 
	
		_targetVeh allowDamage true;
	
	
	// Return Pad

		_returnMarker = "returnMarker_1";

			
	// Create Return Marker

		_markerName = format ["%1_returnIcon", _selectedObjective];
		_returnIcon = createMarker [_markerName, markerPos _returnMarker];
		_returnIcon setMarkerType "mil_pickup";
		_markerText = format ["Return %1 To Base", _targetDisplayName];
		_returnIcon setMarkerText _markerText;
		_returnIcon setMarkerSize [0.75, 0.75];
		_returnIcon setMarkerColor "colorYELLOW";

	
	// Send Message
	
		if (alive _fuelTruck) then {
		
			_message = format ["Looks like the target vehicle is low on fuel. There may be a fuel truck in the area. Get the %1 fueled and bring it back to base.", _targetDisplayName];
			_fuelTruck setVehicleLock "UNLOCKED";
			[_fuelTruck, "Fuel Truck", "ColorYellow", "mil_objective"] execVM "scripts\movingMarker.sqf";
			 
		}else{
	
			_message = format ["Looks like the target vehicle is low on fuel. You'll need to bring a fuel truck from base. Get the %1 fueled and get it back to base.", _targetDisplayName];
		
		};
		
		if !(objectiveMissionCancelled) then {
		
			[HQ_WEST , _message] remoteExec ["sideChat", 0];
			
		};


waitUntil {!(objectiveMissionActive) or ((_targetVeh distance2D markerPos _returnMarker < 30) and (isTouchingGround _targetVeh)) or !(alive _targetVeh)};
	
	
	// Change Icon Color
	
		_playAreaIcon setMarkerColor "Default";
		_playAreaIcon setMarkerPos _objectivePos;
		_playAreaIcon setMarkerType BLU_MarkerIcon;
		_playAreaIcon setMarkerAlpha 1;
		_playAreaIcon setMarkerText _objectiveText;
		_playAreaIcon call BEW_FNC_fixMarkerSize;
		
		
	// Delete Area Marker 

		deleteMarker _playAreaMarker;
			
		
	// Clean Up Markers

		deleteMarker _returnIcon;
		

	// Mission Flag
	
		objectiveMissionActive = FALSE;
		publicVariable "objectiveMissionActive";
	
	
		sleep 3;
		

	if (alive _targetVeh) then {
	
		// Eject Crew 
		
			_targetVeh setFuel 0;	
			_targetVeh setVehicleLock "LOCKED";
			
			
		// Change Objective Marker To BLUFOR
	
			_selectedObjective setMarkerColor "colorBLUFOR";

			
			{_x action ["EJECT", _targetVeh];} forEach crew _targetVeh;	
			
			sleep 1;
		
		if (objectiveMissionCancelled) then {
	
			// Mission Level
			
				missionLevel = missionLevel - 1;
				if (missionLevel < 1) then {missionLevel = 1};
				publicVariable "missionLevel";
				sleep 2;
			
			objectiveMissionCancelled = FALSE;
				publicVariable "objectiveMissionCancelled";
				
			// Mission Complete Message
		
				[missionLevel, "MISSION FAILED", "EventTrack02_F_Curator"] call BEW_FNC_missionCompleteMessage;
				
		}else{
		
			// Auto Save Game
		
				if !(isMultiplayer) then {saveGame};
		
			// Mission Level
			
				missionLevel = missionLevel + 1;
				publicVariable "missionLevel";
				sleep 2;

			// Send Message
			
				[HQ_WEST , "Outstanding work! This will give us invaluable information on enemy vehicle technology."] remoteExec ["sideChat", 0];


			// Mission Complete Message
			
				[missionLevel, "MISSION COMPLETE"] call BEW_FNC_missionCompleteMessage;
				
			// Add Objective State To Database
		
				if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
		
					BEW_v_completedObjectives pushBackUnique toUpper toUpper _selectedObjective;
					 
					["write", ["Locations", "Completed Objectives", BEW_v_completedObjectives]] call BEW_v_dataBase; 
					
				}else{
				
					BEW_v_completedObjectives pushBackUnique toUpper toUpper _selectedObjective;
				
				};
				
		};
		
		
	}else{
	
		
		// Mission Complete Message
	
			[missionLevel, "MISSION FAILED", "EventTrack02_F_Curator"] call BEW_FNC_missionCompleteMessage;
			
	
		// Send Message
	
			[HQ_WEST , "Fuck DELTA! The vehicle has been destroyed."] remoteExec ["sideChat", 0];
			
	
	};
	
	
	// Add Mission Level To Database
		
		if !(isNil "OO_INIDBI") then {
			 
			["write", ["Progression", "Mission Level", missionLevel]] call BEW_v_dataBase; 
		
		};
	
	
	// Clean Up Target Vehicle

		deleteVehicle _targetVeh;
		
	
	// Create Spawn Point

		if !(objectiveMissionCancelled) then {
		
			[_objectivePos] call BEW_FNC_createNearestCampRespawnPoint;
			
		};
		

	waitUntil {!(triggerActivated _inArea) or (objectiveMissionActive)};	

	// Clean Up Fuel Truck
	
		deleteVehicle _fuelTruck;

	// Delete Triggers
	
		deleteVehicle _inArea;


	// Clean Up Force
	
		{deleteVehicle _x} forEach _allUnits;
		
		{
		
			if (count crew _x < 1) then {
			
				deleteVehicle _x;
				
			};
	
		} forEach _allvehs;


	