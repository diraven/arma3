	
	private ["_result"];
	
	_object = param [0];

	// Define Blacklisted Objects

		_blacklistedCargoLoading = [
		
			"vn_b_item_mx991_01",
			"Reflector_Cone_01_white_F"
		
		];
		
		_blacklistedCargoLoading = _blacklistedCargoLoading apply {toUpper _x};
	
	
	if (toUpper _object in _blacklistedCargoLoading) then {
	
		_result = true;
	
	}else{
	
		_result = false;
	
	};
	
	_result