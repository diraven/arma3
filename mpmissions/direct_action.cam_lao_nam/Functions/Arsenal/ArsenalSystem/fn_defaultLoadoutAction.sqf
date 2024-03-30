	
	waitUntil {time > 0};
	
	private ["_obj", "_roleDisplayName", "_factionName"];

	_obj = param [0];
	_plyr = player;
	
		// Set Role Display Name
	
			if (typeOf _plyr == "OPTRE_Spartan3_Soldier_Rifleman_AR") then {
			
				_roleDisplayName = "Spartan";
			
			}else{
			
				_roleDisplayName = [configFile >> "CfgVehicles" >> typeOf _plyr] call BIS_fnc_displayName;
			
			};


		// Set Faction Display Name
		
			_arsenalFaction = _obj getvariable["arsenalFaction", "BLU"];

			call compile format ["
			
				_factionName = %1_factionName;

			", _arsenalFaction];
			
			if (typeName _factionName == "ARRAY") then {
			
				_factionName = _factionName select 0;
			
			};

		_actionText = format ["<t color='#ffff33'>Equip Default %1 %2 Loadout", _factionName, _roleDisplayName];
		
		_actionID = [
                _obj,																		// Object the action is attached to
                _actionText,																// Title of the action
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",			// Idle icon shown on screen
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",			// Progress icon shown on screen
                "(_target distance2d _this < 6) and (cursorObject == _target) and (vehicle player == player)",												// Condition for the action to be shown
                "(_target distance2d _this < 6) and (cursorObject == _target) and (vehicle player == player)",												// Condition for the action to progress
                {},																			// Code executed when action starts
                {},																			// Code executed on every progress tick
                {
				
					player playActionNow 'PutDown';
					playSound 'click';
					
					_arsenalFaction = _target getVariable "arsenalFaction";
					
					_translationList = switch (_arsenalFaction) do {
		
						case "BLU"			: {[[BLU_Map_TransList, BLU_New_TransList]]};			
						case "BLU_ALT"		: {[[BLU_Map_TransList, BLU_ALT_New_TransList]]};								
						case "BLU_SOF"		: {[[BLU_Map_TransList, BLU_SOF_New_TransList]]};
						case "OPF_1"		: {[[BLU_Map_TransList, OPF_1_New_TransList]]};			
						case "OPF_2"		: {[[BLU_Map_TransList, OPF_2_New_TransList]]};
						case "OPF_SOF"		: {[[BLU_Map_TransList, IND_1_New_TransList]]};	
						case "IND_1"		: {[[BLU_Map_TransList, IND_1_New_TransList]]};			
						case "IND_2"		: {[[BLU_Map_TransList, IND_2_New_TransList]]};
						case "REBEL_1"		: {[[BLU_Map_TransList, REBEL_1_New_TransList]]};			
						case "REBEL_2"		: {[[BLU_Map_TransList, REBEL_2_New_TransList]]};
			
						default {[[BLU_Map_TransList, BLU_New_TransList]]};
		
					};
					
					if (BEW_v_Zombies) then {
					
						[player] spawn BEW_FNC_RandomGearGenerator;
					
					}else{
					
						[player, nil, true, _translationList] call BEW_FNC_switchLoadout;			
						
					};
				   
                },																			// Code executed on completion
                {},																			// Code executed on interrupted
                [],																			// Arguments passed to the scripts as _this select 3
                3,																			// Action duration [s]
                5.9,																			// Priority
                false,																		// Remove on completion
                false																		// Show in unconscious state
        ] call BIS_fnc_holdActionAdd;
		
		
	waitUntil {!alive _plyr};
	
	[_obj, _actionID] call BIS_fnc_holdActionRemove;