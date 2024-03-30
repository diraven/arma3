	
	waitUntil {!(isNil "BEW_v_HeliTransportVehicles")};
	waitUntil {!(isNil "BEW_v_FirstSpawn")};
		
	{
	
		// Find Nearest Empty Helipad
		
			_startPad = nearestObject [_x, "Land_HelipadEmpty_F"];

			[_x, _startPad] spawn BEW_FNC_heliTransportAction;
	
	} forEach BEW_v_HeliTransportVehicles;