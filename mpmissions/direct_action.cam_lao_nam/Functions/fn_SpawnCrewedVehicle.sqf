

	private ["_veh", "_centerPos", "_side", "_forceType", "_kind", "_dir", "_patrol", "_radius", "_center", "_allTypes", "_type", "_patrolArray", "_patrol", "_patrolRadius", "_crew", "_vehGroup"];

	_centerPos = param [0];
	_forceType = param [1];
		_forceType = toUpper _forceType;
		
	_kind = param [2];
	_dir = param [3, random 360];
	_patrolArray = param [4, [false, 100]];
		_patrol = _patrolArray select 0;
		_patrolRadius = _patrolArray select 1;; 
		
		
	private _infantryArray = call compile format ["
	
		_infantryArray = %1_InfantryArray;
		_infantryArray
	
	", _forceType];
	
	_faction = _infantryArray select 1;


	// Select Type

		_types = switch (_forceType) do {
		
			case "BLU": {[_kind] call BLU_VehList};
			case "BLU_SOF": {[_kind] call BLU_SOF_VehList};
			case "IND_1": {[_kind] call IND_1_VehList};
			case "IND_2": {[_kind] call IND_2_VehList};
			case "REBEL_1": {[_kind] call REBEL_1_VehList};
			case "REBEL_2": {[_kind] call REBEL_2_VehList};
			case "OPF_1": {[_kind] call OPF_1_VehList};
			case "OPF_2": {[_kind] call OPF_2_VehList};
			case "OPF_3": {[_kind] call OPF_3_VehList};
			case "OPF_SOF": {[_kind] call OPF_SOF_VehList};
		
		};
		
		_types = _types select {(isClass(configfile >> "CfgVehicles" >> _x))};
		
		_type = _types call BIS_fnc_selectRandom;



	// Set SIDE

		_side = switch (_forceType) do {
		
			case "BLU": {WEST};
			case "BLU_SOF": {WEST};
			case "IND_1": {WEST};
			case "IND_2": {WEST};
			case "REBEL_1": {WEST};
			case "REBEL_2": {WEST};
			case "OPF_1": {EAST};
			case "OPF_2": {EAST};
			case "OPF_3": {EAST};
			case "OPF_SOF": {EAST};
		
		};
		
	if (((BEW_v_Zombies) and (_faction == "WBK_AI_ZHAMBIES")) or ((BEW_v_OPTRE) and (_faction == "OPF_F"))) then {
	
		_side = resistance;
	
	};

 if (_type isKindOf "Man") then {
	
	_vehGroup = createGroup [_side, true];
	_veh = _vehGroup createUnit [_type, _centerPos, [], 0, "FORM"];
	_crew = [objNull];
	
	if (_patrol) then {
	
		// Patrol
		
			[_veh, _centerPos, _patrolRadius, 10] spawn BEW_FNC_taskPatrol;
	
	};
	
 }else{

	// Spawn Vehicle
	
		if (_type isKindOf "AIR") then {
		
			_veh = createVehicle [_type, _centerPos, [], 0, "FLY"];
			_veh setVelocityModelSpace [0, 100, 0];
		
		}else{
	
			_veh = createVehicle [_type, _centerPos, [], 0, "NONE"];
			_veh setVehiclePosition [_centerPos, [], 0, "NONE"];
		
		};
		
		_origGroup = [_veh, _side, _forceType] call BEW_FNC_createTranslatedVehicleCrew;

		_crew = crew _veh;	
		_vehGroup = createGroup [_side, TRUE];
		
		{
		
			[_x] joinSilent _vehGroup;
		
		} forEach units _origGroup;
		
		if (BEW_v_Zombies) then {
			
			{
				
				[_x, _forceType] spawn BEW_FNC_randomGearGenerator;
			
			} forEach _crew;
		
		};
		
	if (_patrol) then {
	
		// Patrol
		
			[driver _veh, _centerPos, _patrolRadius, 10] spawn BEW_FNC_taskPatrol;
	
	};
		
		// Textures

			// Get Textures

				_textureListArray = [typeOf _veh, _forceType] call BEW_FNC_getTextureList;
					_textureList = _textureListArray select 0;
					_customFactionTextures = _textureListArray select 1;
			
			
			// Set Textures

				[_veh, _textureList] call BEW_FNC_setVehicleTextures;
				
	};
	
	
		_vehArray = [_veh, _crew, _vehGroup];

	_vehArray;

