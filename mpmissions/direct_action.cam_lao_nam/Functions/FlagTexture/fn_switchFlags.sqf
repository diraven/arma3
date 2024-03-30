	
	private ["_flags", "_flagTexture", "_allFactions", "_faction"];
	
	_allFactions = ["BLU", "BLU_ALT", "OPF_1", "OPF_2", "BLU_SOF", "OPF_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2"];
	
	{
		
		_faction = _x;
			
		call compile format ["
		
			_flags = getMissionLayerEntities ""FLAG_%1"" select 0; 

		", _faction];
		
		{
		
			_flag = _x;
	
			[_flag, _faction] call BEW_FNC_SetFlagTexture; 
	
		} forEach _flags;
		
	} forEach _allFactions;
	
