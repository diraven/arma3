	
	private [
	
		"_centerPos",
		"_radius",
		"_forceType",
		"_sideMission",
		"_patrol",
		"_spawnPatrol",
		"_patrolPercentage",
		"_garrison",
		"_spawnGarrison",
		"_garrisonPercentage",
		"_paradrop",
		"_spawnParadrop",
		"_paradropPercentage",
		"_sof",
		"_spawnSof",
		"_SofPercentage",
		"_infantryArray",
		"_infantrySide",
		"_infantryFaction",
		"_infantryArchetype",
		"_infForceCap",
		"_infGroups",
		"_totalInfCount",
		"_patrolGroups",
		"_garrisonGroups",
		"_paradropGroups",
		"_sofGroups",
		"_allVehs",
		"_infUnits"
	
	];
	
	
	// Params
	
		_centerPos = param [0];
		_radius = param [1];
		_forceType = param [2];
		_sideMission = param [3];
		
		_patrol = param [4, [TRUE, 0.4]];
			_spawnPatrol = _patrol select 0;
			_patrolPercentage = _patrol select 1;
		
		_garrison = param [5, [TRUE, 0.2]];
			_spawnGarrison = _garrison select 0;
			_garrisonPercentage = _garrison select 1;
		
		_paradrop = param [6, [TRUE, 0.2]]; 
			_spawnParadrop = _paradrop select 0;
			_paradropPercentage = _paradrop select 1;
			
		_sof = param [7, [TRUE, 0.2]]; 
			_spawnSof = _sof select 0;
			_SofPercentage = _sof select 1;
			
		_debug = FALSE;


	// Define Infantry Array 
	
	
		_infantryArray = call compile format ["
			
			_infantryArray = %1_infantryArray;
		
			_infantryArray
		
		", _forceType];
		
		_infantrySide  = _infantryArray select 0;
		_infantryFaction = _infantryArray select 1;
		_infantryArchetype = _infantryArray select 2;
		
		
	// Only Patrol Groups If Zombies

		if ((BEW_v_Zombies) or ((BEW_v_OPTRE) and (_infantryFaction == "OPF_F"))) then {
			
			_patrolPercentage = 0.8;
			_patrolPercentage = 0.2;
			_spawnParadrop = FALSE;
			_spawnSof = FALSE;
		
			if ((_infantryFaction == "WBK_AI_ZHAMBIES") or (_infantryFaction == "OPF_F")) then {
			
				_patrolPercentage = 1;
				_spawnGarrison = FALSE;
				
			};
		
		};
		
	
	// Infantry Force Cap
	
		_infForceCap = 15 + (5 * missionLevel);
		
		if (_infForceCap > 40) then {_infForceCap = 40};
		
		if (_sideMission) then {_infForceCap = round (_infForceCap * 0.5)};
		
		_patrolForceCap = round (_infForceCap * _patrolPercentage); 
		_garrisonForceCap = round (_infForceCap * _garrisonPercentage);		
		_paradropForceCap = round (_infForceCap * _paradropPercentage);
		_sofForceCap = round (_infForceCap * _sofPercentage);
	
	
	// Define Enemy Force
	
		_infGroups = [];
		_infUnits = [];
		_allVehs = [];
		_totalInfCount = 0;
	
	
	// Spawn Patrol Groups
	
		if (_spawnPatrol) then {
		
			_patrolArray = [_centerPos, _radius, _infantryArray, _forceType, _totalInfCount, _infForceCap, _patrolForceCap] call BEW_FNC_spawnPatrolGroups;
			
				_patrolGroups = _patrolArray select 0;
				_patrolCount = _patrolArray select 1; 
			
			// Update Inf Groups + Total Count
			
				_infGroups append _patrolGroups;
				_totalInfCount = _totalInfCount + _patrolCount;
				
		};
	
	
	// Spawn Garrison Groups
	
		if (_spawnGarrison) then {
			
			_garrisonArray = [_centerPos, _radius, _infantryArray, _forceType, _totalInfCount, _infForceCap, _garrisonForceCap] call BEW_FNC_spawnGarrisonGroups;
			
				_garrisonGroups = _garrisonArray select 0;
				_garrisonCount = _garrisonArray select 1; 
			
			// Update Inf Groups + Total Count
			
				_infGroups append _garrisonGroups;
				_totalInfCount = _totalInfCount + _garrisonCount;
		
		};
	
	
	// Spawn Paradrop Groups
	
		if (_spawnParadrop) then {
			
			_paradropArray = [_centerPos, _radius, _infantryArray, _forceType, _totalInfCount, _infForceCap, _paradropForceCap] call BEW_FNC_spawnParadropGroups;
			
				_paradropGroups = _paradropArray select 0;
				_paradropCount = _paradropArray select 1; 
				_paradropVehs = _paradropArray select 2; 
			
			// Update Inf Groups + Total Count
			
				_infGroups append _paradropGroups;
				_allVehs append _paradropVehs;
				_totalInfCount = _totalInfCount + _paradropCount;
		
		};	

	
	// Spawn SOF Groups
	
		if (_spawnSof) then {
			
			if !(BEW_v_OPTRE) then {
			
				_infantryArray = OPF_SOF_InfantryArray;
			
			};
			
			_sofArray = [_centerPos, _radius, _infantryArray, _forceType, _totalInfCount, _infForceCap, _sofForceCap] call BEW_FNC_spawnPatrolGroups;
			
				_sofGroups = _sofArray select 0;
				_sofCount = _sofArray select 1; 
			
			// Update Inf Groups + Total Count
			
				_infGroups append _sofGroups;
				_totalInfCount = _totalInfCount + _sofCount;

		};
	
	
	// Debug Group Counts
	
		if (_debug) then {
		
			systemchat format ["%1 Patrol Groups", count _patrolGroups];
			systemchat format ["%1 Garrison Groups", count _garrisonGroups];
			systemchat format ["%1 Paradrop", count _paradropGroups];
			systemchat format ["%1 SOF Groups", count _sofGroups];
		
		};
	
	
	// Add Units From Groups To Inf Units Array
	
		{
		
			_group = _x;
		
			{
			
				_infUnits pushBack _x;
			
			} forEach units _group;
		
		} forEach _infGroups;
	
	_returnArray = [_infGroups, _infUnits, _allVehs];
	
	_returnArray