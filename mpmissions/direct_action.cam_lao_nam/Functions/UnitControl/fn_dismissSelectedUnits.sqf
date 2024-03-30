		
		
		_conditions = "
		
			(player == leader group player) and
			(player getVariable 'SquadLeaderMenu') and
			(count (groupSelectedUnits player) > 0)
		
		";


			[	
				player,																							// Object the action is attached to
				"<t color='#ff0000'>- Dismiss Selected Unit(s)",													// Title of the action
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",								// Idle icon shown on screen
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",								// Progress icon shown on screen
				_conditions,																	// Condition for the action to be shown
				_conditions,																	// Condition for the action to progress
				{},																								// Code executed when action starts
				{},																								// Code executed on every progress tick
				{		
										
						playSound 'click';
						
						sleep 0.5;
		
				},																	// Code executed on completion
				{},																	// Code executed on interrupted
				[],																	// Arguments passed to the scripts as _this select 3
				0.5,																// Action duration [s]
				-95,																	// Priority
				true,																// Remove on completion
				false																// Show in unconscious state
			] call BIS_fnc_holdActionAdd;