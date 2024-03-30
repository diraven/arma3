
	if !(isServer) exitWith {};

	BEW_v_allArsenalCrates = getMissionLayerEntities "arsenalCrate" select 0;
		publicVariable 'BEW_v_allArsenalCrates';
		
	BEW_v_All_InactiveArsenalCrates = getMissionLayerEntities "InactiveArsenal" select 0;
		publicVariable "BEW_v_All_InactiveArsenalCrates";
	
	
	_factionTypes = ["BLU", "BLU_ALT", "BLU_SOF", "OPF_1", "OPF_2", "OPF_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2"];
	
	{
		
		_factionType = _x;
	
		_arsenalCrates = call compile format ["
		
			_arsenalCrates = getMissionLayerEntities '%1_arsenalCrates' select 0;
			
			%1_v_arsenalCrates = _arsenalCrates;
				publicVariable '%1_v_arsenalCrates';
			
			_arsenalCrates
			
		", _factionType];
		
		
		// Create Default Loadout Action
			
			{
			
				_obj = _x;
			
				_obj setVariable ["arsenalFaction", _factionType, TRUE];
			
			} forEach _arsenalCrates;
		
	} forEach _factionTypes;
	
	/*
	
	// Hide In Objective Area
			
		{
		
			_obj = _x;
		
			[_obj, _obj getVariable ["arsenalFaction", "BLU"]] spawn BEW_FNC_HideVehicleInObjectiveArea;
		
		} forEach BEW_v_allArsenalCrates;
	