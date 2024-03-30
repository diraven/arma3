	
	private ["_flag", "_factionType", "_factionSide"];
	
	_flag = param [0];
	_factionType = param [1, "BLU"];
	_factionSide = param [2];
	
	
	// Set Default Side
	
		if (isNil "_factionSide") then {
		
			_factionSide = switch (toUpper _factionType) do {
			
				case "BLU"		:	{WEST};
				case "BLU_ALT"	:	{WEST};
				case "BLU_SOF"	:	{WEST};
				case "OPF_1"	:	{EAST};
				case "OPF_2"	:	{EAST};
				case "OPF_3"	:	{EAST};
				case "OPF_SOF"	:	{EAST};
				case "IND_1"	:	{WEST};
				case "IND_2"	:	{WEST};
				case "REBEL_1"	:	{WEST};
				case "REBEL_2"	:	{WEST};
				default	{};
			
			};
		
		
		};
	
	
	// Add To Activated Flags
	
		BEW_V_ActivatedFastTravelFlags pushBackUnique _flag;
			publicVariable "BEW_V_ActivatedFastTravelFlags";
			
	// Set Variables
	
		_flag setVariable ["arsenalFaction", _factionType, TRUE];
		_flag setVariable ["factionSide", _factionSide, TRUE];