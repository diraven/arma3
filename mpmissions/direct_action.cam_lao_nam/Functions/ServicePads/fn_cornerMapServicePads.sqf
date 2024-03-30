
	if !(worldName in BEW_v_noAirfieldMaps) exitWith {};

	{

		[_x, 100, 100, 1000, "WEST", TRUE, 'AIR'] remoteExec ["BEW_FNC_servicePadTrigger", 0, true];
		
	} forEach BEW_v_AllWorldCorners;

