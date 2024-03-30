

	private [

		"_marker",
		"_mapCenter",
		"_minPos",
		"_maxPos",
		"_respawn",
		"_respawnDelay",
		"_spawnPos",
		"_vehArray",
		"_veh",
		"_crew",
		"_group",
		"_displayName",
		"_forceType",
		"_kinds",
		"_kind",
		"_allAircraft"

	];

	_centerPos = param [0];
	_radius = param [1];
	_mapCenter = param [2];
	_minPos  = param [3];
	_maxPos  = param [4];
	_forceType = param [5];
	_sideMission = param [6, TRUE];
	
	_side = EAST;
	
	_allAircraft = [];
	
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

	
	for "_i" from 1 to (_numCAP) do {

		// Find Pos
		
			_spawnPos = [_mapCenter, [_minPos, _maxPos], random 360, 1, [0], 10] call SHK_pos;
				
		// Select Vehicle Kind
		
			_kind = ["CAP"] call BIS_fnc_selectRandom;
			
		// Create Air Vehicle

			_vehArray = [_spawnPos, _forceType, _kind] call BEW_FNC_SpawnCrewedVehicle;	

			_veh = _vehArray select 0;
			_crew = _vehArray select 1;
			_group = _vehArray select 2;
			_displayName = [configFile >> "CfgVehicles" >> typeOf _veh] call BIS_fnc_displayName;
			
			_group setVariable ["Vcm_Disable",true];
			
			enemyAir = enemyAir + [_veh];
			publicVariable "enemyAir";
			
		// Vehicle Setup
		
			[_veh] spawn BEW_FNC_customPylonLoadouts;
			
			
			// Textures

				// Get Textures

					_textureListArray = [typeOf _veh, _forceType] call BEW_FNC_getTextureList;
						_textureList = _textureListArray select 0;
						_customFactionTextures = _textureListArray select 1;
				
				
				// Set Textures

					[_veh, _textureList] call BEW_FNC_setVehicleTextures;
			
			
			if (_veh isKindOf "Helicopter") then {
			
				_veh flyInHeight 200;
			
			}else{
			
				_veh flyInHeight 400;
			
			};
				
		// Patrol
				
			[driver _veh, _centerPos, (_radius) * 3, 10] spawn BEW_FNC_taskPatrol;
			
		_allAircraft = _allAircraft + [_veh];
		
	};
	
	
	for "_i" from 1 to (_numCAS) do {

		// Find Pos
		
			_spawnPos = [_mapCenter, [_minPos, _maxPos], random 360, 1, [0], 10] call SHK_pos;
				
		// Select Vehicle Kind
		
			_kind = ["CAS","A_HELI"] call BIS_fnc_selectRandom;
			
		// Create Air Vehicle

			_vehArray = [_spawnPos, _forceType, _kind] call BEW_FNC_SpawnCrewedVehicle;	

			_veh = _vehArray select 0;
			_crew = _vehArray select 1;
			_group = _vehArray select 2;
			_displayName = [configFile >> "CfgVehicles" >> typeOf _veh] call BIS_fnc_displayName;
			
			_group setVariable ["Vcm_Disable",true];
			
			enemyAir = enemyAir + [_veh];
				publicVariable "enemyAir";
			
		// Vehicle Setup
		
			//[_veh] spawn BEW_FNC_customPylonLoadouts;
			
			if (_veh isKindOf "Helicopter") then {
			
				_veh flyInHeight 200;
			
			}else{
			
				_veh flyInHeight 400;
			
			};
				
		// Patrol
				
			[driver _veh, _centerPos, (_radius) * 3, 10] spawn BEW_FNC_taskPatrol;
			
		_allAircraft = _allAircraft + [_veh];
		
	};
		
		
	_allAircraft
				
