	private ["_centerPos", "_radius", "_mapCenter", "_side", "_forceType", "_numCAP", "_numCAS", "_numParadrop", "_allAircraft", "_infGroups"];

	
		_centerPos = _this select 0;
		_radius = _this select 1;
		_mapCenter = _this select 2;
		_side = param [3, EAST];
		_forceType = param [4];		
		
		
		// Force Numbers
		
			_numCAP = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{1};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{1};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {1};
				
			};
			
			_numCAS = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{0};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{0};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{0};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{0};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{1};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{1};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{1};
				default {1};
				
			};
		
		_numParadrop = switch (true) do {
			
				case ((missionLevel == 1) or (missionLevel == 1.5))		:	{3};
				case ((missionLevel == 2) or (missionLevel == 2.5))		:	{3};
				case ((missionLevel == 3) or (missionLevel == 3.5))		:	{4};
				case ((missionLevel == 4) or (missionLevel == 4.5))		:	{4};
				case ((missionLevel == 5) or (missionLevel == 5.5))		:	{5};
				case ((missionLevel == 6) or (missionLevel == 6.5))		:	{5};
				case ((missionLevel == 7) or (missionLevel == 7.5))		:	{6};
				default {6};
				
		};
		
		_allAircraft = [];
		_infGroups = [];
		
// Spawn Enemy Air

	_minPos = 20000;
	_maxPos = 21000;
		
	for "_i" from 1 to (_numCAP) do {

		// Find Spawn Pos
		
			_spawnPos = [_mapCenter, [_minPos, _maxPos], random 360, 1, [0], 10] call SHK_pos;
				
		// Select Vehicle Kind
		
			_kind = ["CAP"] call BIS_fnc_selectRandom;
			
		// Create Air Vehicle

			_vehArray = [_spawnPos, _side, _forceType, _kind] call BEW_FNC_SpawnCrewedVehicle;	

			_veh = _vehArray select 0;
			_crew = _vehArray select 1;
			_group = _vehArray select 2;
			_displayName = [configFile >> "CfgVehicles" >> typeOf _veh] call BIS_fnc_displayName;
			
			_group setVariable ["Vcm_Disable",true];

		// Vehicle Setup
		
			[_veh] spawn BEW_FNC_customPylonLoadouts;
			[_veh] call BEW_FNC_ApplyCustomTexture;
			
			if (_veh isKindOf "Helicopter") then {
			
				_veh flyInHeight 200;
			
			}else{
			
				_veh flyInHeight 400;
			
			};
				
		// Patrol
				
			[driver _veh, _centerPos, [(_radius select 0) * 3], 10] execVM "scripts\taskPatrol.sqf";
			
		_allAircraft = _allAircraft + [_veh];
		
		_minPos = _minPos + 5000;
		_maxPos = _maxPos + 5000;
		
	};
	
	
	_minPos = 20000;
	_maxPos = 21000;
	
	for "_i" from 1 to (_numCAS) do {

		// Find Pos
		
			_spawnPos = [_mapCenter, [_minPos, _maxPos], random 360, 1, [0], 10] call SHK_pos;
				
		// Select Vehicle Kind
		
			_kind = ["CAS","A_HELI"] call BIS_fnc_selectRandom;
			
		// Create Air Vehicle

			_vehArray = [_spawnPos, _side, _forceType, _kind] call BEW_FNC_SpawnCrewedVehicle;	

			_veh = _vehArray select 0;
			_crew = _vehArray select 1;
			_group = _vehArray select 2;
			_displayName = [configFile >> "CfgVehicles" >> typeOf _veh] call BIS_fnc_displayName;
			
			_group setVariable ["Vcm_Disable",true];
			
		// Vehicle Setup
		
			[_veh] spawn BEW_FNC_customPylonLoadouts;
			[_veh] call BEW_FNC_ApplyCustomTexture;
			
			if (_veh isKindOf "Helicopter") then {
			
				_veh flyInHeight 200;
			
			}else{
			
				_veh flyInHeight 400;
			
			};
				
		// Patrol
				
			[driver _veh, _centerPos, [(_radius select 0) * 3], 10] execVM "scripts\taskPatrol.sqf";
			
		_allAircraft = _allAircraft + [_veh];
		
		_minPos = _minPos + 5000;
		_maxPos = _maxPos + 5000;
		
	};
			
		
// Spawn Paradrop Groups

		_minPos = 20000;
		_maxPos = 21000;
	
		for "_i" from 1 to _numParadrop do {
		
			_dropPos = [];
			
			while {(count _dropPos < 1)} do {
			
				_dropPos = [_centerPos, [400, 500], random 360, 1, [0], 10] call SHK_pos;
				if (surfaceIsWater _dropPos) then {_dropPos = []};
					
			};

			_spawnPos = [_centerPos, [_minPos, _maxPos], random 360, 1, [0], 10] call SHK_pos;
			
			
			_paradropArray = [_centerPos, _spawnPos, _dropPos, EAST, _forceType] call BEW_FNC_paradropReinforcements;
			
			
			_veh = _paradropArray select 0;
			_veh setCaptive true;
			_vehGroup = _paradropArray select 1;
			_InfGroup = _paradropArray select 2;
				[_infGroup] spawn BEW_FNC_setAISkill;
			_marker = _paradropArray select 3;
			_endPos = _spawnPos;		
			
			/*
			_markerName = format ["dropPosMarker_%1", _veh];
			_dropPosMarker = createMarker [_markerName, _dropPos];
			_dropPosMarker setMarkerType "hd_dot";
			*/
					
			_infGroups = _infGroups + [_vehGroup] + [_infGroup];
			
			
			// Waypoint 
			
				[_veh, _vehGroup, _infGroup, _centerPos, _marker, _endPos, _radius select 0] spawn BEW_FNC_ParadropReinforcementsWaypoint; 
			
				_veh flyInHeight 150;
			
			_minPos = _minPos + 5000;
			_maxPos = _maxPos + 5000;
					
		};
	

	_allDefendForces = [_allAircraft, _infGroups];
	
	_allDefendForces