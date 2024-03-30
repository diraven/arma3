	
	waitUntil {!(isNil "BEW_v_allParadropVehs")};
	waitUntil {!(isNil "BEW_v_FirstSpawn")};
		
		
	_availableParadropVehicles = (BEW_v_allParadropVehs select {(_x getVariable ['availableForTransport', FALSE])});
	
	{
	
		[_x] spawn BEW_FNC_ParadropPlayerActions;
	
	} forEach _availableParadropVehicles;
		
	