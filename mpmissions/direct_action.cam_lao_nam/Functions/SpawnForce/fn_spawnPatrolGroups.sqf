	
	private [
	
		"_centerPos",
		"_radius",
		"_infantryArray",
		"_totalInfCount",
		"_infForceCap",
		"_patrolForceCap",
		"_patrolCount",
		"_patrolGroupCount",
		"_patrolGroup",
		"_patrolRadius"
	
	];
	
	_centerPos			= param [0];
	_radius				= param [1];
	_infantryArray		= param [2];
	_forceType			= param [3];
	_totalInfCount		= param [4];
	_infForceCap		= param [5];
	_patrolForceCap 	= param [6];
	
	_patrolCount = 0;
	_patrolGroupCount = 0;
	_patrolGroups = [];

	
	// Create Grops Until Cap reached

		while {(_patrolCount < _patrolForceCap) and (_totalInfCount < _infForceCap)} do {
			
			_patrolGroupCount = _patrolGroupCount + 1;
			
			_patrolRadius = 100 * _patrolGroupCount;
			if (_patrolRadius > _radius) then {_patrolRadius = _radius};
		
			
			// Find Spawn Pos
		
				_spawnPos = [];
				
				while {count _spawnPos < 1} do {
			
					while {(count _spawnPos < 1)} do {
			
						_spawnPos = [_centerPos, 1, _patrolRadius, 1, 0, 0, 0] call BIS_fnc_findSafePos;
						if (surfaceIsWater _spawnPos) then {_spawnPos = []};
					
					};
				
				};
			
				
				// Create Group
				
					_patrolGroup = [_spawnPos, _infantryArray, _forceType] call BEW_FNC_SpawnGroup;	
				
				// Set Skill
				
					[_patrolGroup] spawn BEW_FNC_setAISkill;
							
				// Patrol
				
					[leader _patrolGroup, _centerPos, _patrolRadius, 10] spawn BEW_FNC_taskPatrol;
				
				
				// Zombies Fix
				
					[_patrolGroup, _centerPos, _patrolRadius] spawn BEW_FNC_RyansZombiesFix;
				
		
			_patrolGroups = _patrolGroups + [_patrolGroup];
			_patrolCount = _patrolCount + count units _patrolGroup;
			
		};
	
		
		// Pack Return Array
		
			_returnArray = [_patrolGroups, _patrolCount];
		
		_returnArray
