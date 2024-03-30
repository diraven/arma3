
	if (isDedicated) exitWith {};
	
	waitUntil {!(isNil "BEW_v_allArsenalCrates")};


	// Add Default Loadout Action
	
		{
		
			[_x] spawn BEW_FNC_defaultLoadoutAction;
		
		} forEach BEW_v_allArsenalCrates;