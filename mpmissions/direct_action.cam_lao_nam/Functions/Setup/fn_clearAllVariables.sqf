	
	_allVariables = [];
	
	// Variables
	
		_bew_variables = allVariables missionNamespace select {["BEW_v_", str _x] call BIS_fnc_inString};
		
			_allVariables append _bew_variables;
		
	
	// Functions
	
		_bew_functions = allVariables missionNamespace select {["BEW_FNC_", str _x] call BIS_fnc_inString};
			
			_allVariables append _bew_variables;
	
	
	// Clear All Variables
	
		{ 
		 
			call compile format ["

				%1 = nil;

			", _x]; 
		 
		} forEach _allVariables; 