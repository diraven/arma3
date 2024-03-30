			
	// Create Actions
	
		_actionColor = "<t color='#FFFF00'>";
		_conditions = "(serverCommandAvailable '#kick') and (player getVariable 'saveMenu') and (player getVariable 'AdminMenu') and !(isnil 'BEW_v_dataBase')";
		
		[
			   player,																// Object the action is attached to
				_actionColor + "      - Start New Save (WARNING: WILL DELETE CURRENT SAVE)",						// Title of the action
				"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_sleep_ca.paa",			// Idle icon shown on screen
				"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_sleep_ca.paa",			// Progress icon shown on screen
				_conditions,							// Condition for the action to be shown
				_conditions,							// Condition for the action to progress
				{},																	// Code executed when action starts
				{},																	// Code executed on every progress tick
				{
								
					_confirmButton = [
					
						"You are about to wipe the server database and start a new save. All previous save data will be lost.<br/><br/>Do you want to continue?", "START NEW SAVE", "Okay", "Cancel"
					
					] call BIS_fnc_guiMessage; 
					
					if !(_confirmButton) exitWith {
					
						hint "RESET DATABASE CANCELLED";
						
					};
					
					// Reset Database Game
					
						[] call BEW_FNC_ResetDatabase;
												
					// Message
					
						hint "DATABASE HAS BEEN RESET";
				
				},																	// Code executed on completion
				{},																	// Code executed on interrupted
				[],																	// Arguments passed to the scripts as _this select 3
				1,																	// Action duration [s]
				-96.1,																	// Priority
				false,																// Remove on completion
				false																// Show in unconscious state
				
		] call BIS_fnc_holdActionAdd;