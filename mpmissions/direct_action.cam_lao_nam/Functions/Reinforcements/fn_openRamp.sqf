	
	_veh = param [0];
	_openClose = param [1, 1];
	
	// Animate
	
		_veh animatedoor ["door_1_source", _openClose];
		_veh animatesource ["ramp", _openClose];
		_veh animatesource ["ramp_top", _openClose];
		_veh animatesource ["ramp_bottom", _openClose];