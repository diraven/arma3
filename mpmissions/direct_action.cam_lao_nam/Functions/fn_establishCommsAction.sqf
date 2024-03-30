
	_actionText = "<t color='#FFFF00'>ESTABLISH COMMS";

	// Create Action
	
		[
                player,																// Object the action is attached to
               _actionText,							// Title of the action
               "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",			// Idle icon shown on screen
              "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",			// Progress icon shown on screen
                "(alive cursorObject) and (player distance2D getPos cursorObject < 5) and (cursorObject getVariable ['canEstablishComms', FALSE]) and !(cursorObject getVariable ['commsEstablished', FALSE])",							// Condition for the action to be shown
                "(alive cursorObject) and (player distance2D getPos cursorObject < 5) and (cursorObject getVariable ['canEstablishComms', FALSE]) and !(cursorObject getVariable ['commsEstablished', FALSE])",							// Condition for the action to progress
                {},																	// Code executed when action starts
                {},																	// Code executed on every progress tick
                {
                    
					_targetObject = cursorObject;
					
					params ["_target", "_caller", "_actionId", "_arguments"];
					
					player playActionNow 'PutDown';
					playSound 'click';
					
					_targetObject setVariable  ['commsEstablished', TRUE, TRUE];

                },																	// Code executed on completion
                {},																	// Code executed on interrupted
                [],								// Arguments passed to the scripts as _this select 3
                3,																	// Action duration [s]
                99,																	// Priority
                false,																// Remove on completion
                false																// Show in unconscious state
				
        ] call BIS_fnc_holdActionAdd;
		
		