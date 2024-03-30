
	_obj = _this select 0;
	
		[
		   _obj,																// Object the action is attached to
			"<t color='#ff0000'>Reinitialize Player (Use If Bugged)",							// Title of the action
			"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\repair_ca.paa",			// Idle icon shown on screen
			"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\repair_ca.paa",			// Progress icon shown on screen
			"(isNil 'BEW_v_playerInitialized') and (player distance2D _target < 5)",																// Condition for the action to be shown
			"(isNil 'BEW_v_playerInitialized') and (player distance2D _target < 5)",																// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{
			
				[typeOf player] execVM "functions\roleSelect\fn_switchRole.sqf";
	
			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			3,																	// Action duration [s]
			99,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
				
        ] call BIS_fnc_holdActionAdd;