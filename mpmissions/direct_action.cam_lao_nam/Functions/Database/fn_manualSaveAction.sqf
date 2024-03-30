// Create Actions
	
	_actionColor = "<t color='#FFFF00'>";
	_conditions = "(serverCommandAvailable '#kick') and (player getVariable 'saveMenu') and (player getVariable 'AdminMenu') and !(isnil 'BEW_v_dataBase') and !(BEW_v_objectiveMissionActive)";
	
	[
		   player,																// Object the action is attached to
			_actionColor + "      - Save Game",						// Title of the action
			"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_sleep_ca.paa",			// Idle icon shown on screen
			"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_sleep_ca.paa",			// Progress icon shown on screen
			_conditions,							// Condition for the action to be shown
			_conditions,							// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{
							
				_confirmButton = [
				
					"Game data will be manually saved for next restart.<br/><br/>Do you want to continue?", "SAVE GAME", "Okay", "Cancel"
				
				] call BIS_fnc_guiMessage; 
				
				if !(_confirmButton) exitWith {
				
					hint "SAVE CANCELLED";
					
				};
				
				// Save Player Data
				
					[] remoteExec ["BEW_FNC_savePlayerData", 2];
					
				// Save Time And Weather
				
					["write", ["Mission Settings", "Time", [dayTime, overcast, rain, fog]]] remoteExec ["BEW_v_dataBase", 2];  
					
					
				// Save Position Of Vehicles
				
					[{
					
						["write", ["Player Data", "Spawned Vehicles", ((BEW_v_SpawnedPlayerVehicles select {(alive _x) and (canMove _x) and (isTouchingGround _x)}) apply {[typeOf _x, getPos _x, getDir _x]})]] call BEW_v_dataBase

					}] remoteExec ["BIS_FNC_Call", 2];
					
											
				// Message
				
					hint "GAME DATA SAVED";
			
			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			1,																	// Action duration [s]
			-96.1,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
			
	] call BIS_fnc_holdActionAdd;
	
	
// Inidbi2 Not Available
	
	_conditions = "(serverCommandAvailable '#kick') and (player getVariable 'saveMenu') and (player getVariable 'AdminMenu') and (isnil 'BEW_v_dataBase')";
	
	[
		   player,																// Object the action is attached to
			"<t color='#ff0000'>" + "      - Saving Unavailable - Must Be Running INIDBI2",						// Title of the action
			"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_sleep_ca.paa",			// Idle icon shown on screen
			"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_sleep_ca.paa",			// Progress icon shown on screen
			_conditions,							// Condition for the action to be shown
			_conditions,							// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{
			
				"Saving Unavailable" hintC [

					"You must be running the INIDBI2 - Official Extension database mod to save the game. Download it from the Steam Workshop."

				];
			
			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			1,																	// Action duration [s]
			-96.1,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
			
	] call BIS_fnc_holdActionAdd;
	
	
	
// Saving Unavailable During Mission

	_conditions = "(serverCommandAvailable '#kick') and (player getVariable 'saveMenu') and (player getVariable 'AdminMenu') and !(isnil 'BEW_v_dataBase') and BEW_v_objectiveMissionActive";
	
	[
		   player,																// Object the action is attached to
			"<t color='#ff0000'>" + "      - Saving Unavailable - Complete Or Cancel Current Mission",						// Title of the action
			"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_sleep_ca.paa",			// Idle icon shown on screen
			"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_sleep_ca.paa",			// Progress icon shown on screen
			_conditions,							// Condition for the action to be shown
			_conditions,							// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{
			
				"Saving Unavailable" hintC [

					"You can't save the game during if a mission is currently active. Complete or cancel the current mission to save."

				];
			
			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			1,																	// Action duration [s]
			-96.1,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
			
	] call BIS_fnc_holdActionAdd;