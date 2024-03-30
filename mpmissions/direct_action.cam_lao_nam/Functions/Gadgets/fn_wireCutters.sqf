	
	private ["_obj"];
	
	// Action Conditions
	
		BEW_v_wireCutterConditions = {
			
			private _return = false;
			
			if (vehicle player == player) then {
			
				if ('ToolKit' in items player) then {
					
					if (typeOf cursorObject in ([] call BEW_FNC_FenceTypes)) then {
					
						if (player distance2D cursorObject < 5) then {
							
							_return = true;
						
						};
						
					};
				
				};
			
			};
			
			_return
		
		};
	
	
	// Action
	
		_obj = param [0, player];

				[
						_obj,																							// Object the action is attached to
						 "<t color='#FFC0CB'>Cut Wire Fence",													// Title of the action
						"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\repair_ca.paa",									// Idle icon shown on screen
						"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\repair_ca.paa",									// Progress icon shown on screen
						"call BEW_v_wireCutterConditions",	// Condition for the action to be shown
						"call BEW_v_wireCutterConditions",																							// Condition for the action to progress
						{},															// Code executed when action starts
						{},																								// Code executed on every progress tick
						{
							
							_obj = cursorObject;
							
							if (typeOf _obj in ([] call BEW_FNC_FenceTypes)) then {
								
								player playActionNow 'MedicOther';
							
								sleep 5;
							
								[_obj, true] remoteExec ["hideObjectGlobal", 2];
							
							}else{
							
								hint "Target Object Is Not A Fence";
							
							};
				   
						},																			// Code executed on completion
						{},										// Code executed on interrupted
						[],																			// Arguments passed to the scripts as _this select 3
						1,																			// Action duration [s]
						99,																			// Priority
						false,																		// Remove on completion
						false																		// Show in unconscious state
				] call BIS_fnc_holdActionAdd;