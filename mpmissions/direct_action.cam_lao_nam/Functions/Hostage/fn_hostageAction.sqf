
	_hostage = _this select 0;
	_parentTask = _this select 1;

	// Hostage Action
	
		[
			_hostage,																						// Object the action is attached to
			"<t color='#FFFF00'>FREE HOSTAGE",																						// Title of the action
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa",									// Idle icon shown on screen
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_secure_ca.paa",									// Progress icon shown on screen
			"
			
				(vehicle _this == _this) and 
				(side _this == WEST) and
				(_target distance2d _this < 3) and 
				!(_target getVariable ['HostageRescued', FALSE]) and 
				(alive _Target)
			
			",	// Condition for the action to be shown
			"
				(vehicle _this == _this) and 
				(side _this == WEST) and
				(_target distance2d _this < 3) and 
				!(_target getVariable ['HostageRescued', FALSE]) and 
				(alive _Target)
			
			",						// Condition for the action to progress
			{},																								// Code executed when action starts
			{},																								// Code executed on every progress tick
			{
				
				_hostage = _target;
				
				// Animation
				
					_caller playActionNow 'PutDown';
					playSound 'click';		

				
				// Set Hostage To Rescued
				
					_hostage setVariable ["HostageRescued", true, true];	
					
					
				// Allow Movement
					
					_hostage setCaptive false; 
					_hostage enableAI "MOVE"; 
					_hostage enableAI "TARGET"; 
					_hostage enableAI "AUTOTARGET"; 
		
				// Join Group
					
					[_hostage] joinSilent group _caller;
				
				
				// Stand Up
				
					[_hostage] spawn {
					
						_hostage = _this select 0;
					
						_hostage setUnitPos "DOWN"; 
					
						sleep 3;
					
						_hostage setUnitPos "UP"; 
						
					};	
					
				// Start Return Script
				
					[_hostage] spawn BEW_FNC_HostageReturn;
						
			},																			// Code executed on completion
			{},																			// Code executed on interrupted
			[],																			// Arguments passed to the scripts as _this select 3
			3,																			// Action duration [s]
			99,																			// Priority
			true,																		// Remove on completion
			false																		// Show in unconscious state			
        ] remoteExec ["BIS_fnc_holdActionAdd", 0, true];