
		private [
			
			"_centerPos",
			"_radius",
			"_forceType",
			"_sideMission",
			"_spawnInfantry",
			"_spawnVehicles",
			"_spawnArty",
			"_spawnAir",
			"_allUnits",
			"_allVehs"
	
		];
		
		_centerPos = param [0];
		_radius = param [1, 300];
		_forceType = param [2, "OPF_1"];
		_sideMission = param [3, false];
		
		_spawnInfantry = param [4, true];
		_spawnVehicles = param [5, true];
		_spawnArty = param [6, true];
		_spawnAir = param [7, true];
		
		_allUnits = [];
		_allVehs = [];
		
		
		_infantryArray = call compile format ["
			
			_infantryArray = %1_InfantryArray;
			
			_infantryArray
			
		", _forceType];
		
		_faction = _infantryArray select 1;
		
		
		if ((BEW_v_Zombies) or ((BEW_v_OPTRE) and (_faction == "OPF_F"))) then {
			
			_spawnArty = FALSE;
			_spawnAir = FALSE;
		
		};
		
		
	// Spawn Infantry Groups
		
		if (_spawnInfantry) then {

			_infForceArray = [_centerPos, _radius, _forceType, _sideMission] call BEW_FNC_spawnInfForce;
					
				_infGroups = _infForceArray select 0;
				_infUnits = _infForceArray select 1;
				_infVehicles = _infForceArray select 2;
			
			// Update All Units And Vehicles Arrays
			
				_allUnits append _infUnits;
				_allVehs append _infVehicles;
			
		};
		
		sleep 1;

	// Spawn Vehicles
		
		if (_spawnVehicles) then {
			
			
			_vehArray = [_centerPos, _radius, _forceType, _sideMission] call BEW_FNC_spawnVehGroups;
					
			_vehs = _vehArray select 0;
			_vehUnits = _vehArray select 1;
			_vehGroups = _vehArray select 2;
			
			_allUnits append _vehUnits;
			_allVehs append _vehs;

		};
		
		sleep 1;

	// Spawn Artillery

		if (_spawnArty) then {
		
			_artyArray = [_centerPos, _radius, _forceType, _sideMission] call BEW_FNC_SpawnArtilleryGroups;

			_artyVehs = _artyArray select 0;
			_artyUnits = _artyArray select 1;
			_artyGroups = _artyArray select 2;
			
			_allUnits append _artyUnits;
			_allVehs append _artyVehs;
		
		};
			
		sleep 1;

	// Spawn Air
	
		if (_spawnAir) then {
			
			// Spawn Air
			
				enemyAir = [];
					publicVariable "enemyAir";
				
				_allAircraft = [_centerPos, _radius, BEW_v_WorldCenter, 10000, BEW_v_WorldRadius,_forceType, _sideMission] call BEW_FNC_SpawnEnemyAir;
				
			// Add To Total Units
			
				{
				
					_allVehs = _allVehs + [_x];
					{_allUnits = _allUnits + [_x]} forEach crew _x;
				
				} forEach _allAircraft;	

		};
		
		sleep 1;
	
	// Crew Static Weapons
	
		_staticsArray = [_centerPos, _radius, _forceType, EAST] call BEW_FNC_crewStaticsInArea;
			_staticWeapons = _staticsArray select 0;
			_staticUnits = _staticsArray select 1;
			
		_allvehs append _staticWeapons;
		_allUnits append _staticUnits;
		

		_returnArray = [_allUnits, _allVehs];
		
		_returnArray 

	