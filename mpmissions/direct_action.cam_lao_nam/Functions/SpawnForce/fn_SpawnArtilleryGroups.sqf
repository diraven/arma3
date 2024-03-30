
	private [
	
		"_numGun",
		"_numAA",
		"_numAT",
		"_numMortar",
		"_allVehs",
		"_spawnPos",
		"_vehGroup",
		"_centerPos",
		"_radius",
		"_side",
		"_forceType",
		"_vehUnits"
		
	];
	
	_centerPos = param [0];
	_radius = param [1];
	_forceType = param [2];
	_sideMission = param [3, TRUE];
	_debug = param [4, false];

	_side = EAST;
	
	if (_debug) then {
				
		_marker = createMarker ["centerPos", _centerPos];
		_marker setMarkerType "hd_dot";
		_marker setMarkerColor "ColorGreen";
					
	};
	
	
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
		_allStaticGroups = [];
		
		
	// Group Static Weapons Together
	
		_staticGroup = createGroup [_side, true];
		_allStaticGroups = _allStaticGroups + [_staticGroup];
		
		
	// Spawn Static Guns
	
		if (_numGun > 0) then {
		
			for "_i" from 1 to _numGun do {
			
				_spawnPos = [];
				
				while {count _spawnPos < 1} do {
			
					_spawnPos = [_centerPos, [50, 150], random 360, 0, [0], 10] call SHK_pos;
					if ((count _spawnPos > 1) and (surfaceIsWater _spawnPos)) then {_spawnPos = []};
					
				};
				
					if (_debug) then {
				
						_markerName = format ["staticGun_%1", _i];
						_marker = createMarker [_markername, _spawnPos];
						_marker setMarkerType "hd_dot";
						_marker setMarkerColor "ColorRed";
					
					};
				
					_relDir = [_spawnPos, _centerPos] call BIS_fnc_dirTo;
				
				_vehArray = [_spawnPos, _forceType, "STATIC_GUN", _relDir - 180, [false]] call BEW_FNC_SpawnCrewedVehicle;
				
				_veh = _vehArray select 0;
				_vehCrew = _vehArray select 1;
				_vehGroup = _vehArray select 2;
								
				_allVehs = _allVehs + [_veh];
				_allStaticGroups = _allStaticGroups + [_vehGroup];
				
			};
		
		};


	// Spawn Static AA
	
		if (_numAA > 0) then {
		
			for "_i" from 1 to _numAA do {
			
				_spawnPos = [];
				
				while {count _spawnPos < 1} do {
			
					_spawnPos = [_centerPos, [50, 150], random 360, 0, [0], 10] call SHK_pos;
					if ((count _spawnPos > 1) and (surfaceIsWater _spawnPos)) then {_spawnPos = []};
					
				};
				
					if (_debug) then {
				
						_markerName = format ["staticAA_%1", _i];
						_marker = createMarker [_markername, _spawnPos];
						_marker setMarkerType "hd_dot";
						_marker setMarkerColor "ColorRed";
					
					};
				
					_relDir = [_spawnPos, _centerPos] call BIS_fnc_dirTo;
				
				_vehArray = [_spawnPos, _forceType, "STATIC_AA", _relDir - 180, [false]] call BEW_FNC_SpawnCrewedVehicle;
				
				_veh = _vehArray select 0;
				_vehCrew = _vehArray select 1;
				_vehGroup = _vehArray select 2;
				
				_allVehs = _allVehs + [_veh];
				_allStaticGroups = _allStaticGroups + [_vehGroup];
				
			};
		
		};


	// Spawn Static AT
	
		if (_numAT > 0) then {
		
			for "_i" from 1 to _numAT  do {
			
				_spawnPos = [];
				
				while {count _spawnPos < 1} do {
			
					_spawnPos = [_centerPos, [50, 150], random 360, 0, [0], 10] call SHK_pos;
					if ((count _spawnPos > 1) and (surfaceIsWater _spawnPos)) then {_spawnPos = []};
					
				};
				
					if (_debug) then {
				
						_markerName = format ["staticAT_%1", _i];
						_marker = createMarker [_markername, _spawnPos];
						_marker setMarkerType "hd_dot";
						_marker setMarkerColor "ColorRed";
					
					};
				
					_relDir = [_spawnPos, _centerPos] call BIS_fnc_dirTo;
				
				_vehArray = [_spawnPos, _forceType, "STATIC_AT", _relDir - 180, [false]] call BEW_FNC_SpawnCrewedVehicle;
				
				_veh = _vehArray select 0;
				_vehCrew = _vehArray select 1;
				_vehGroup = _vehArray select 2;

				_allVehs = _allVehs + [_veh];
				_allStaticGroups = _allStaticGroups + [_vehGroup];
				
			};
		
		};		


	// Spawn Mortar
	
		if (_numMortar > 0) then {
		
			for "_i" from 1 to _numMortar  do {
			
				_spawnPos = [];
				
				while {count _spawnPos < 1} do {
			
					_spawnPos = [_centerPos, [50, 150], random 360, 0, [0], 10] call SHK_pos;					
					if ((count _spawnPos > 1) and (surfaceIsWater _spawnPos)) then {_spawnPos = []};
					
				};
				
					if (_debug) then {
				
						_markerName = format ["staticMortar_%1", _i];
						_marker = createMarker [_markername, _spawnPos];
						_marker setMarkerType "hd_dot";
						_marker setMarkerColor "ColorRed";
					
					};
				
					_relDir = [_spawnPos, _centerPos] call BIS_fnc_dirTo;
				
				_vehArray = [_spawnPos, _forceType, "STATIC_MORTAR", _relDir - 180, [false]] call BEW_FNC_SpawnCrewedVehicle;
				
				_veh = _vehArray select 0;
				_vehCrew = _vehArray select 1;
				_vehGroup = _vehArray select 2;

				_allVehs = _allVehs + [_veh];
				_allStaticGroups = _allStaticGroups + [_vehGroup];
				
			};
		
		};	
		
		
	// Add Units From Groups To Veh Units Array
	
		{
			
			_staticGroup = _x;
			_leadStaticGroup = _allStaticGroups select 0;
		
		
			{
			
				_vehUnits pushBack _x;
			
			} forEach units _staticGroup;
			
			
			{
			
				[_x] joinSilent _leadStaticGroup;
			
			} forEach units _staticGroup;
		
		} forEach _allStaticGroups;
		
	
	_returnArray = [_allVehs, _vehUnits, _allStaticGroups]; 
	
	_returnArray;
