	
	_veh = _this select 0;
	
	// Hide Door If C47
	
		_c47s = [
					
			"LIB_C47_Skytrain",
			"LIB_C47_RAF",
			"LIB_C47_RAF_bob",
			"LIB_C47_RAF_snafu",
			"LIB_Li2",
			"UNI_C47_CAP_Grey",
			"UNI_C47_CAP_Camo"
		
		];
		
		if (typeOf _veh in _c47s) then {

			_veh animate ["hide_Door", 1];
		
		};