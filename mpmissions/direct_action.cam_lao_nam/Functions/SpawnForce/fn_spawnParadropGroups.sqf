	private [
	
		"_centerPos",
		"_radius",
		"_infantryArray",
		"_totalInfCount",
		"_infForceCap",
		"_paradropForceCap",
		"_paradropCount",
		"_paradropGroupCount",
		"_paradropArray",
		"_paradropGroups",
		"_paradropVehs",
		"_forceType"
	
	];
	
	_centerPos			= param [0];
	_radius				= param [1];
	_infantryArray		= param [2];
	_forceType			= param [3];
		if !(BEW_v_OPTRE) then {_forceType = "OPF_SOF"};
		if (BEW_v_OPTRE) then {_forceType = _forceType};
		
	_totalInfCount		= param [4];
	_infForceCap		= param [5];
	_paradropForceCap 	= param [6];
	
	_paradropCount = 0;
	_paradropGroups = [];
	_paradropVehs = [];	
	
	_minPos = 15000;
	_maxPos = 16000;

	while {(_paradropCount < _paradropForceCap) and (_totalInfCount < _infForceCap)} do {
	
		_dropPos = [];
		
		while {(count _dropPos < 1)} do {
		
			_dropPos = [_centerPos, 1, _radius, 1, 0, 0, 0] call BIS_fnc_findSafePos;
			if (surfaceIsWater _dropPos) then {_dropPos = []};
				
		};

		_spawnPos = [_centerPos, [_minPos, _maxPos], random 360, 1, [0], 10] call SHK_pos;
		
		_paradropArray = [_centerPos, _spawnPos, _dropPos, EAST, _forceType] call BEW_FNC_paradropReinforcements;
		
		_veh = _paradropArray select 0;
		_veh setCaptive true;
		_vehGroup = _paradropArray select 1;
		_paradropGroup = _paradropArray select 2;
			[_paradropGroup] spawn BEW_FNC_setAISkill;
		_marker = _paradropArray select 3;
		_endPos = _spawnPos;
		
		_paradropGroups = _paradropGroups + [_vehGroup] + [_paradropGroup];
		_paradropVehs = _paradropVehs + [_veh];
		_paradropCount = _paradropCount + count units _paradropGroup;
		
		// Waypoint 
		
			[_veh, _vehGroup, _paradropGroup, _centerPos, _marker, _endPos, _radius] spawn BEW_FNC_ParadropReinforcementsWaypoint; 
		
		_minPos = _minPos + 10000;
		_maxPos = _maxPos + 10000;
				
	};
	
	
	// Pack Return Array
	
		_returnArray = [_paradropGroups, _paradropCount, _paradropVehs];
		
	_returnArray

