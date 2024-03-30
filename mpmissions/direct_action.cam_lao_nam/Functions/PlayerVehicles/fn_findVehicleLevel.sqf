
	_veh = param [0, cursorObject];
	
	_baseVehicleLevelList = [] call BEW_FNC_BaseVehicleLevels;
	
	private _return = 1;
	
	for "_i" from 0 to (count _baseVehicleLevelList - 1) do {

		_vehicleLevel = _i + 1;
		_levelList = _baseVehicleLevelList select _i;

		if (typeOf _veh in _levelList) exitWith {_return = _vehicleLevel};
	  
	};
	
	_return