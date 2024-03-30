	private ["_veh", "_delay"];

	_veh = _this select 0;
	_delay = param [1, 30];

	while {alive _veh} do {
	
		_veh setVehicleAmmo 1;
		
		sleep _delay;
	
	};