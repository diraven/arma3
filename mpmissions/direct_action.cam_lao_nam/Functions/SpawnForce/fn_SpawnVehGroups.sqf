
	
	private [
	
		"_numCar",
		"_numTank",
		"_numAPC",
		"_allVehs",
		"_spawnPos",
		"_vehGroup",
		"_centerPos",
		"_radius",
		"_side",
		"_forceType"
		
	];
	
	_centerPos = _this select 0;
	_radius = _this select 1;
	_forceType = _this select 2;
	_sideMission = _this select 3;
	
	_forceValues = [_sideMission] call BEW_FNC_spawnForceValues;
	_numPatrol = _forceValues select 0; 
	_numGarrison = _forceValues select 1; 
	_numParadrop = _forceValues select 2; 
	_numCar = _forceValues select 3; 
	_numAPC = _forceValues select 4; 
	_numTank = _forceValues select 5; 
	_numCAP = _forceValues select 6; 
	_numCAS = _forceValues select 7; 
	_numGun = _forceValues select 8; 
	_numAA = _forceValues select 9; 
	_numAT = _forceValues select 10; 
	_numMortar = _forceValues select 11; 	
	
	// Define Enemy Force
	
		_allVehs = [];
		_vehUnits = [];
		_vehGroups = [];
		
	
	// No Heavy Vehicles If Zombies
	
		if (BEW_v_Zombies) then {
		
			_numTank = 0;
			
		};
	
	
	// Spawn Cars
	
		if (_numCar > 0) then {
		
			for "_i" from 1 to _numCar do {
			

				_spawnPos = [_centerPos, [1, _radius], 4, 0, 0] call BEW_FNC_findRandomEmptyPosition;
			
				_vehArray = [_spawnPos, _forceType, "A_CAR", random 360, [TRUE, _radius]] call BEW_FNC_SpawnCrewedVehicle;
				
				_veh = _vehArray select 0;
				_vehCrew = _vehArray select 1;
				_vehGroup = _vehArray select 2;
				
				
				
				_allVehs = _allVehs + [_veh];
				_vehGroups = _vehGroups + [_vehGroup];
				
			};
		
		};
		
		
	// Spawn APCs
	
		if (_numAPC > 0) then {
		
			for "_i" from 1 to _numAPC do {
						
				_spawnPos = [_centerPos, [1, _radius], 4, 0, 0] call BEW_FNC_findRandomEmptyPosition;
				
				_vehArray = [_spawnPos, _forceType, "APC", random 360, [TRUE, _radius]] call BEW_FNC_SpawnCrewedVehicle;
				
				_veh = _vehArray select 0;
				_vehCrew = _vehArray select 1;
				_vehGroup = _vehArray select 2;
				
				_allVehs = _allVehs + [_veh];
				_vehGroups = _vehGroups + [_vehGroup];
				
			};
		
		};
	
	
	// Spawn Tanks
	
		if (_numTank > 0) then {
	
			for "_i" from 1 to _numTank do {
					
				_spawnPos = [_centerPos, [1, _radius], 4, 0, 0] call BEW_FNC_findRandomEmptyPosition;
				
				_vehArray = [_spawnPos, _forceType, "TANK", random 360, [TRUE, _radius]] call BEW_FNC_SpawnCrewedVehicle;
				
				_veh = _vehArray select 0;
				_vehCrew = _vehArray select 1;
				_vehGroup = _vehArray select 2;
				
				_allVehs = _allVehs + [_veh];
				_vehGroups = _vehGroups + [_vehGroup];
				
			};
		
		};
		
		
	// Add Units From Groups To Veh Units Array
	
		{
		
			_group = _x;
		
			{
			
				_vehUnits pushBack _x;
			
			} forEach units _group;
		
		} forEach _vehGroups;
		
	
	_array = [_allVehs, _vehUnits, _vehGroups]; 
	
	_array;
