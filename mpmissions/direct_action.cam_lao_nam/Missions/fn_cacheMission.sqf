
private ["_objectivePos"];

_selectedObjective = param [0];
_playAreaIcon = param [1];
_forceType = param [2];

	// Objective Attributes

		_objectivePos = markerPos _selectedObjective;
		_objectiveSize = markerSize _selectedObjective;
		_objectiveText = markerText _selectedObjective;
		_objectiveType = markerColor _selectedObjective;

			switch (_objectiveType) do {
			
				case "ColorRed": {_iconType = "o_hq";};
				case "ColorYellow": {_iconType = "loc_Stack";};
				case "ColorOrange": {_iconType = "c_plane";};
				case "ColorBlue": {_iconType = "c_ship";};
				case "ColorGreen": {_iconType = "loc_Tourism";};
				case "ColorPink": {_iconType = "loc_Power";};
				case "ColorBrown": {_iconType = "loc_Transmitter";};
			};
		

	// Change Marker Icon
	
		deleteMarker _playAreaIcon;
	
		_markerName = format ["%1_activeObjectiveIcon", _selectedObjective];
		_playAreaIcon = createMarker [_markerName, _objectivePos];
		_playAreaIcon setMarkerType "hd_unknown";
		_playAreaIcon setMarkerText "Find The Enemy Cache";
		_playAreaIcon setMarkerSize [0.75, 0.75];
		_playAreaIcon setMarkerColor "colorYELLOW";
	
	
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
		
		
	// In Area Trigger
	
		_inArea = createTrigger ["EmptyDetector", _objectivePos];
		_inArea setTriggerArea [500, 500, 0, false];
		_inArea setTriggerActivation ["WEST", "PRESENT", true];
		_inArea setTriggerStatements ["(this) && (({alive _x && _x inArea thisTrigger} count allPlayers) > 0)", "", ""];
		
		
	// Spawn Force
	
		_force = [_objectivePos, _objectiveSize select 0, _forceType, true, true, true, true, true] call BEW_FNC_spawnForce;
		_allUnits = _force select 0;
		_allvehs  = _force select 1;


	_totalObjectives = 3;

	_allBuildings = nearestObjects [_objectivePos, ["House"], _playAreaSize select 0];
	_buildingsWithPositions = _allBuildings select {count ([_x] call BIS_fnc_buildingPositions) > 1};


	cacheFound = FALSE;
	cacheNotFound = FALSE;


for "_i" from 1 to _totalObjectives do {

	_targetBuilding = _buildingsWithPositions call BIS_fnc_selectRandom;
	_buildingsWithPositions = _buildingsWithPositions - [_targetBuilding];

	_targetPositions = [_targetBuilding] call BIS_fnc_buildingPositions;

	_targetPos = _targetPositions call BIS_fnc_selectRandom;

	_markerName = format ["%1_target", _i];
	_marker = createMarker [_markerName, _targetPos ];
	_marker setMarkerType "mil_objective";
	_marker setMarkerSize [0.5, 0.5];
	_marker setMarkerColor "colorYELLOW";
	
		
	if (_i == 1) then {
	
		cacheObject = createVehicle ["Land_WoodenCrate_01_F", _targetPos, [], 0, "NONE"];
		cacheObject setDir random 360;
		cacheObject allowDamage false;
		cacheObject setVariable ["canPlaceExplosives", TRUE, TRUE];

		
		call compile format ["
			
			_inCacheArea = createTrigger [""EmptyDetector"", _targetPos];
			_inCacheArea setTriggerArea [10, 10, 0, false];
			_inCacheArea setTriggerActivation [""WEST"", ""PRESENT"", false];
			_inCacheArea setTriggerStatements [""((this) && (({alive _x && _x inArea thisTrigger} count allPlayers) > 0)) or !(objectiveMissionActive)"", ""deleteMarker '%1'; cacheFound = TRUE; deleteVehicle thisTrigger;"", """"];
			
		", _markerName];
	
	}else{
	
		call compile format ["
			
			_inCacheArea = createTrigger [""EmptyDetector"", _targetPos];
			_inCacheArea setTriggerArea [10, 10, 0, false];
			_inCacheArea setTriggerActivation [""WEST"", ""PRESENT"", false];
			_inCacheArea setTriggerStatements [""((this) && (({alive _x && _x inArea thisTrigger} count allPlayers) > 0)) or (cacheFound) or !(objectiveMissionActive)"", ""deleteMarker '%1'; cacheNotFound = TRUE; deleteVehicle thisTrigger;"", """"];
			
		", _markerName];
		
	};

};


// Intel Objects
		
		[_objectivePos, _playAreaSize select 0] call BEW_FNC_spawnCabinetIntelObjects;



	// Send Message
		
		[HQ , "We have reports that an enemy weapons cache is being hidden somewhere in the area. We need to take it out. Check your map for possible locations."] remoteExec ["sideChat", 0];


while {!(cacheFound) and (objectiveMissionActive)} do {

	waitUntil {(cacheNotFound) or (cacheFound) or !(objectiveMissionActive)};

	if ((cacheNotFound) && !(cacheFound)) then {
	
		[HQ , "The cache isn't here DELTA. Try the next map location."] remoteExec ["sideChat", 0];
		cacheNotFound = FALSE;
	
	};

};


		_playAreaIcon setMarkerType "mil_destroy";
		_playAreaIcon setMarkerText "Destroy The Enemy Cache";

	// Send Message
	
		if !(objectiveMissionCancelled) then {

			[HQ , "Okay, you've found the cache. Now take it out."] remoteExec ["sideChat", 0];
		
		};
	
	
	// Create Marker
	
		_markerName = format ["%1_target", cacheObject];
		_marker = createMarker [_markerName, getPos cacheObject];
		_marker setMarkerType "mil_objective";
		_marker setMarkerText "Destroy Cache";
		_marker setMarkerSize [0.5, 0.5];
		_marker setMarkerColor "colorYELLOW";
	
	
waitUntil {(!alive cacheObject) or !(objectiveMissionActive)};

	// Clean Up Markers

		deleteMarker _marker;
		
	
	// Clean Up Cache
		
		deleteVehicle cacheObject;
		

	// Change Objective Marker To BLUFOR
	
			_selectedObjective setMarkerColor "colorBLUFOR";


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
			
			missionLevel = missionLevel + 0.5;
			publicVariable "missionLevel";
			sleep 2;			
		

		// Send Message
			
			[HQ , "Well done DELTA! That should slow down the enemy forces in the area."] remoteExec ["sideChat", 0];


		// Mission Complete Message
		
			[missionLevel, "SIDE MISSION COMPLETE"] call BEW_FNC_missionCompleteMessage;
			
	};
	
	
	// Add Mission Level To Database
		
		if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
			 
			["write", ["Progression", "Mission Level", missionLevel]] call BEW_v_dataBase; 
		
		};


	// Clean Up Markers

		deleteMarker _playAreaMarker;
		
	
	// Change Icon To Captures
	
		_playAreaIcon setMarkerColor "colorBLUFOR";
		_playAreaIcon setMarkerText "";
		_playAreaIcon setMarkerSize [0.5, 0.5];
		
	
	// Mission Flag
	
		objectiveMissionActive = FALSE;
			publicVariable "objectiveMissionActive";
	
	

	waitUntil {!(triggerActivated _inArea) or (objectiveMissionActive)};
	
			
	// Clean Up Force

		{deleteVehicle _x} forEach _allUnits;

		{

			if (count crew _x < 1) then {
			
				deleteVehicle _x;
				
			};

		} forEach _allvehs;
		
		
	// Delete Triggers
	
		deleteVehicle _inArea;
	