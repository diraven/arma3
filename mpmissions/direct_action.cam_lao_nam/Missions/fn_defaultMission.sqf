private ["_selectedObjective", "_playAreaIcon", "_objectivePos", "_objectiveSize", "_objectiveText", "_objectiveType", "_iconType", "_spawnPos", "_enemyGroup", "_side", "_faction", "_safePos"];

_selectedObjective = param [0];
_playAreaIcon = param [1];
_forceType = param [2];

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
		_playAreaIcon setMarkerText "Mission Phase 1";
		_playAreaIcon setMarkerSize [0.75, 0.75];
		_playAreaIcon setMarkerColor "ColorYellow";
		
	// Mission Flag
	
		objectiveMissionActive = TRUE;
			publicVariable "objectiveMissionActive";


	// Create Play Area
	
		_markerName = format ["%1_playArea", _selectedObjective];
	
		_playAreaMarker = createMarker [_markerName, _objectivePos];
		_playAreaMarker setMarkerShape "ELLIPSE";
		_playAreaMarker setMarkerSize [_objectiveSize select 0, _objectiveSize select 0];
		_playAreaMarker setMarkerColor "colorOPFOR";
		_playAreaMarker setMarkerAlpha 0.3;
		_playAreaSize = markerSize _playAreaMarker;
		
		
	// Create Mission Objects
	
	
	// In Area Trigger
	
		_inArea = createTrigger ["EmptyDetector", _objectivePos];
		_inArea setTriggerArea [500, 500, 0, false];
		_inArea setTriggerActivation ["WEST", "PRESENT", true];
		_inArea setTriggerStatements ["(this) && (({alive _x && _x inArea thisTrigger} count allPlayers) > 0)", "", ""];

		
	// Spawn Force

		_forceToSpawnType = switch (_forceType) do {
		
			case "OPF_1"	: 	{[OPF_1_InfantryArray, [EAST, _forceType]]};
			
			case "OPF_2"	:	{[OPF_2_InfantryArray, [EAST, _forceType]]};
				
			case "OPF_SOF"	:	{[OPF_SOF_InfantryArray, [EAST, _forceType]]};
			
			default {[OPF_1_InfantryArray, OPF_1_VehicleArray]};
			
		};
			
		_force = [_objectivePos, [_playAreaSize select 0], _forceToSpawnType select 0, _forceToSpawnType select 1, true, true, true, true, true] call BEW_FNC_SpawnForce;
		_allUnits = _force select 0;
		_allvehs  = _force select 1;
	
	
	// Intel Objects
		
		[_objectivePos, _objectiveSize select 0] call BEW_FNC_spawnCabinetIntelObjects;
	
		
	// Send Message
	
		[HQ , "Default mission phase 1."] remoteExec ["sideChat", 0];
		
		
waitUntil {!(objectiveMissionActive)};
	
	
	// Change Play Area Icon
	
		_playAreaIcon setMarkerText "Mission Phase 2";
		_playAreaIcon setMarkerType "mil_destroy";
		
		
	// Send Message
	
		[HQ , "Default mission phase 2."] remoteExec ["sideChat", 0];


waitUntil {!(objectiveMissionActive)};


	// Clean Up Mission Objects
		
	
	// Mission Level
		
		missionLevel = missionLevel + 0.5;
		publicVariable "missionLevel";
			
			
	sleep 3;
	
	
	// Send Message
	
		[HQ , "Mission completed."] remoteExec ["sideChat", 0];


	// Mission Complete Message
	
		[missionLevel, "SIDE MISSION COMPLETE"] call BEW_FNC_missionCompleteMessage;
		
	
	// Change Icon Color
	
		_playAreaIcon setMarkerColor "ColorBLUFOR";
		_playAreaIcon setMarkerText "";
		_playAreaIcon setMarkerSize [0.5, 0.5];
		
		
	// Delete Area Marker 
	
		deleteMarker _playAreaMarker;
		
	
	// Mission Flag
	
		objectiveMissionActive = FALSE;
			publicVariable "objectiveMissionActive";
		

	waitUntil {!(triggerActivated _inArea) or (objectiveMissionActive)};

		
	// Delete Triggers
	
		deleteVehicle _inArea;
		
		
	// Clean Up Force
	
		{deleteVehicle _x} forEach _allUnits;
		
		{
		
			if (count crew _x < 1) then {
			
				deleteVehicle _x;
				
			};
	
		} forEach _allvehs;
