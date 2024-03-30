	private ["_centerPos", "_radius", "_carsToSpawn", "_spawnDamaged", "_carTypes", "_emptyCarsCap"];

	_centerPos = param [0, getpos player];
	_radius = param [1, 300];
	_carsToSpawn = param [2, 5];
	_spawnDamaged = param [3, FALSE];
	_carTypes = param [4, [
	
		"C_Hatchback_01_F",
		"C_Hatchback_01_sport_F",
		"C_Offroad_02_unarmed_F",
		"C_Offroad_01_F",
		"C_Offroad_01_covered_F",
		"C_Quadbike_01_F",
		"C_SUV_01_F",
		"C_Tractor_01_F",
		"C_Van_01_transport_F",
		"C_Van_02_transport_F",
		"C_Truck_02_transport_F",
		"C_Truck_02_covered_F"
	
	]];
	
	_emptyCarsCap = param [5, 10];

	for "_i" from 0 to _carsToSpawn  do {
		
		_type = selectRandom _carTypes;
		
		_spawnArray = [_centerPos, _radius, 1] call BEW_FNC_findParkingPositions;
			_spawnPos = _spawnArray select 0;
			_spawnDir = _spawnArray select 1;
		
		_veh = createVehicle [_type, _spawnPos, [], 0, "NONE"];
		_veh setDir _spawnDir;
		
		if (_spawnDamaged) then {
		
			_veh setDamage 0.8;	
			_veh setHit ["motor", 1];
			_veh setHit ["wheel_1_1_steering", floor random 2];
			_veh setHit ["wheel_1_2_steering", floor random 2];
			_veh setHit ["wheel_1_3_steering", floor random 2];
			_veh setHit ["wheel_1_4_steering", floor random 2];
			_veh setHit ["wheel_2_1_steering", floor random 2];
			_veh setHit ["wheel_2_2_steering", floor random 2];
			_veh setHit ["wheel_2_3_steering", floor random 2];
			_veh setHit ["wheel_2_4_steering", floor random 2];
			_veh allowDamage false;
		
		};
		
		
		
		if (isNil "BEW_v_EmptyCars") then {BEW_v_EmptyCars = []};
		
		BEW_v_EmptyCars pushBack _veh;
		
		[_veh] spawn {	
		
			_veh = _this select 0;
		
			waitUntil {sleep 3; (count (crew _veh select {_x in allPlayers}) > 0)};
			
			BEW_v_EmptyCars = BEW_v_EmptyCars - [_veh];
			
			//systemchat format ["%1 removed from list", _veh];
		
		};
		
		while {count BEW_v_EmptyCars > _emptyCarsCap} do {
			
			_oldestVeh = BEW_v_EmptyCars select 0;
			BEW_v_EmptyCars = BEW_v_EmptyCars - [_oldestVeh];
			deleteVehicle _oldestVeh;
			
		};

	};
	
	//systemchat str count BEW_v_EmptyCars;