private ["_obj"];

_obj = param [0];
			
		[
                _obj,																		// Object the action is attached to
                 "<t color='#FFFF00'>TREAT PATIENT",										// Title of the action
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa",				// Idle icon shown on screen
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_revive_ca.paa",				// Progress icon shown on screen
                "(_target distance cursorObject < 3) and (cursorObject getVariable 'BEW_v_CanHeal')",		// Condition for the action to be shown
                "TRUE",		// Condition for the action to progress
                {player playActionNow 'medicStart';},										// Code executed when action starts
                {},																			// Code executed on every progress tick
                {
				
					_patient = cursorObject;
				
					player playActionNow 'medicStop';
					playSound 'click';
					
					_patient setDamage 0;
				   
                },																			// Code executed on completion
                {player playActionNow 'medicStop';},										// Code executed on interrupted
                [],																			// Arguments passed to the scripts as _this select 3
                3,																			// Action duration [s]
                99,																			// Priority
                false,																		// Remove on completion
                false																		// Show in unconscious state
        ] call BIS_fnc_holdActionAdd;