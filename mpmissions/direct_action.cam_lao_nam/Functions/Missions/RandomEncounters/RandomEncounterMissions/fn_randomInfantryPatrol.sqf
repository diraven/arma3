	
	_centerPos = param [0];
	_radius = param [1, 100];
	_forceType = param [2, "OPF_1"];
	
	
	// Find Safe Pos In Radius
	
		_spawnPos = [_centerPos, 1, _radius, 1, 0, 0, 0] call BIS_fnc_findSafePos;
	
	// Define Infantry Array 	
	
		_infantryArray = call compile format ["
			
			_infantryArray = %1_infantryArray;
		
			_infantryArray
		
		", _forceType];
	
	// Spawn Group
	
		_group = [_spawnPos, _infantryArray, _forceType] call BEW_FNC_SpawnGroup;	
		
	// Set Skill
	
		[_group] spawn BEW_FNC_setAISkill;

	// Patrol
	
		[leader _group, _centerPos, _radius, 10] spawn BEW_FNC_taskPatrol;
		
	_group