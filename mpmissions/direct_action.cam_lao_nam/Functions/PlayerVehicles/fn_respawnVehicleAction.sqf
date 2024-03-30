		
		[
               player,																// Object the action is attached to
                "<t color='#ff0000'>RESPAWN VEHICLE / OBJECT",						// Title of the action
				"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\repair_ca.paa",			// Idle icon shown on screen
				"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\repair_ca.paa",			// Progress icon shown on screen
                "(alive cursorObject) and (vehicle player == player) and (player distance2D getPos cursorObject < 10) and (cursorObject getVariable 'canRespawn') && ((count getVehicleCargo cursorObject) < 1) and (count ropes cursorObject < 1) and ({(alive _x) and !(typeOf _x == 'B_UAV_AI')} count (crew cursorObject) < 1)",							// Condition for the action to be shown
                "(alive cursorObject) and (vehicle player == player) and (player distance2D getPos cursorObject < 10) and (cursorObject getVariable 'canRespawn') && ((count getVehicleCargo cursorObject) < 1) and (count ropes cursorObject < 1) and ({(alive _x) and !(typeOf _x == 'B_UAV_AI')} count (crew cursorObject) < 1)",							// Condition for the action to progress
                {},																	// Code executed when action starts
                {},																	// Code executed on every progress tick
                {
				
					_veh = cursorObject;
                    
					// Animation
					
						player playActionNow 'PutDown';
						playSound 'click';
					
					
					// Define Display Name
					
						_displayName = [_veh] call BEW_FNC_GetDisplayName;
					
					
					// Move Out Cargo
					
						_veh setVehicleCargo objNull;
						
						
					// Delete Attached Objects
					
						{[_x] remoteexec ["deleteVehicle", _veh]} forEach attachedObjects _veh;
						
						
					// Delete Vehicle
					
						[_veh] remoteexec ["deleteVehicle", _veh];
					
					
					// Broadcast Message
					
						_message = format ["%1 has respawned a %2", profileName, _displayName];
						[_message] remoteExec ["systemChat", 0];
		
                },																	// Code executed on completion
                {},																	// Code executed on interrupted
                [],																	// Arguments passed to the scripts as _this select 3
                3,																	// Action duration [s]
                5,																	// Priority
				false,																// Remove on completion
                false																// Show in unconscious state
				
        ] call BIS_fnc_holdActionAdd;
		