
	waitUntil {(!isNil "BEW_v_factionTypes")};

	_friendlyFactionTypes = ["BLU", "BLU_ALT", "BLU_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2"];
	_enemyFactionTypes = ["OPF_1", "OPF_2", "OPF_3", "OPF_SOF"];

	private _allFactionNames = [];

	private ["_conditions"];
	
	_conditions = "(serverCommandAvailable '#kick') and (player getVariable 'factionsMenu') and (player getVariable 'AdminMenu') and !(isnil 'BEW_v_dataBase')";
		
	for "_i" from 0 to (count BEW_v_factionTypes - 1) do { 
	
		if (isNil "BEW_v_dataBase") exitWith {};

		_factionID = _i + 1;
		_factionType = BEW_v_factionTypes select _i;
		
		_factionName = call compile format ["
						
			waitUntil {(!isNil '%1_OriginalFactionName')};
			
			
			private _factionName = %1_OriginalFactionName;
						
			if (typeName _factionName == 'ARRAY') then {
			
				_factionName = _factionName select 0;
				
			};
			
			_factionName
		
		", _factionType];
		
		
		// Check Faction Is Playable 
		
			_isPlayable = call compile format ["
				
				_isPlayable = %1_IsPlayable;
			
				_isPlayable
			
			", _factionType];
			

		_actionColor = "<t color='#FFFF00'>";
		_actionName = _factionName;

		if (!(_factionType in _enemyFactionTypes) and !(_factionName in _allFactionNames) and !(_factionType == "BLU") and (_isPlayable)) then {
		
			// Create Actions

				[
					   player,																// Object the action is attached to
						_actionColor + "      - Switch Faction To " + _actionName,						// Title of the action
						"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_sleep_ca.paa",			// Idle icon shown on screen
						"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_sleep_ca.paa",			// Progress icon shown on screen
						_conditions,							// Condition for the action to be shown
						_conditions,							// Condition for the action to progress
						{},																	// Code executed when action starts
						{},																	// Code executed on every progress tick
						{
						
							_factionID = _this select 3 select 0;
							_factionName = _this select 3 select 1;
							
							_confirmButton = [
							
								"Switching factions will <t size = '1' color = '#FF0000'>DELETE YOUR CURRENT SAVE<t size = '1' color = '#FFFFFF'> and start a new campaign. 
								<br/><br/>
								Do you want to continue?", "WARNING", "Okay", "Cancel"
							
							] call BIS_fnc_guiMessage; 
							
							if !(_confirmButton) exitWith {
							
								hint "Faction switching cancelled.";
								
							};
							
							// Write To Database
								
								[_factionID, {
								
									_factionID = _this;
									
									[] call BEW_FNC_ResetDatabase;
								
									waitUntil {count ("getSections" call BEW_v_Database) < 1};
								
									["write", ["Factions", "BLU", _factionID]] call BEW_v_dataBase; 
									BEW_v_SelectedMainFaction = ["read", ["Factions", "BLU"]] call BEW_v_dataBase;
								
								}] remoteExec ["BIS_FNC_Call", 2];
								
														
							// Message
							
								hint format ["Main faction will spawn as %1 after next mission restart.", _factionName];
						
						},																	// Code executed on completion
						{},																	// Code executed on interrupted
						[_factionID, _factionName],																	// Arguments passed to the scripts as _this select 3
						1,																	// Action duration [s]
						-96.4,																	// Priority
						false,																// Remove on completion
						false																// Show in unconscious state
						
				] call BIS_fnc_holdActionAdd;
			
		};
			
		
		_allFactionNames pushBackUnique _factionName;
			
	};
	
	
	// Inidbi2 Not Available
	
	_conditions = "(serverCommandAvailable '#kick') and (player getVariable 'factionsMenu') and (player getVariable 'AdminMenu') and (isnil 'BEW_v_dataBase')";
	
	[
		   player,																// Object the action is attached to
			"<t color='#ff0000'>" + "      - Faction Switch Unavailable - Must Be Running INIDBI2",						// Title of the action
			"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_sleep_ca.paa",			// Idle icon shown on screen
			"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\holdAction_sleep_ca.paa",			// Progress icon shown on screen
			_conditions,							// Condition for the action to be shown
			_conditions,							// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{
			
				"Faction Switch Unavailable" hintC [

					"You must be running the INIDBI2 - Official Extension database mod to switch factions. Download it from the Steam Workshop."

				];
			
			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			1,																	// Action duration [s]
			-96.4,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
			
	] call BIS_fnc_holdActionAdd;
	
	