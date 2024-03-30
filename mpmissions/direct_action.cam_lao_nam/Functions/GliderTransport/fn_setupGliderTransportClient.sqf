	
	waitUntil {!(isNil "BEW_v_GliderVehicles")};
	
	sleep 5;
	
	{
	
		// Find Nearest Empty Helipad
		
			_startPad = nearestObject [_x, "Land_HelipadEmpty_F"];

		[_x, _startPad] spawn BEW_FNC_gliderAction;
	
	} forEach BEW_v_GliderVehicles;