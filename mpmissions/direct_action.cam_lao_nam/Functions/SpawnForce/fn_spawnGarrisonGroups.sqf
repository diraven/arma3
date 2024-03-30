		private [
	
		"_centerPos",
		"_radius",
		"_infantryArray",
		"_totalInfCount",
		"_infForceCap",
		"_garrisonForceCap",
		"_garrisonCount",
		"_garrisonGroupCount"
	
	];
	
	_centerPos			= param [0];
	_radius				= param [1];
	_infantryArray		= param [2];
	_forceType			= param [3];
	_totalInfCount		= param [4];
	_infForceCap		= param [5];
	_garrisonForceCap 	= param [6];
	
	_garrisonCount = 0;
	_garrisonGroups = [];
		
	while {(_garrisonCount < _garrisonForceCap) and (_totalInfCount < _infForceCap)} do {
		
		_spawnPos = [];
		
		while {count _spawnPos < 1} do {
		
			_spawnPos = [_centerPos, 1, _radius / 2, 1, 0, 0, 0] call BIS_fnc_findSafePos;

			if ((count _spawnPos > 1) and (surfaceIsWater _spawnPos)) then {_spawnPos = []};
	
		};
		
		_garrisonGroup = [_spawnPos, _infantryArray, _forceType] call BEW_FNC_SpawnGroup;
			[_garrisonGroup] spawn BEW_FNC_setAISkill;
		_garrisonGroup setVariable ["Vcm_Disable",true];
			
		_garrisonGroups = _garrisonGroups + [_garrisonGroup];
		_garrisonCount = _garrisonCount + count units _garrisonGroup;
		
		
		[_centerPos, units _garrisonGroup, _radius, true, false, false, false] execVM "scripts\Zen_OccupyHouse.sqf";
		
	};
	
	// Pack Return Array
	
		_returnArray = [_garrisonGroups, _garrisonCount];
	
	_returnArray

	