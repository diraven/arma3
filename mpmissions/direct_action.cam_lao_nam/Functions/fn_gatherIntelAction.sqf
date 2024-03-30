if (BEW_V_airSuperiority) exitWith {};

private ["_obj"];

_obj = param [0];
			
	[
			_obj,																		// Object the action is attached to
			"<t color='#FFFF00'>GATHER INTEL",																// Title of the action
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",				// Idle icon shown on screen
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_search_ca.paa",				// Progress icon shown on screen
			"
				
				(vehicle player == player) and 
				(side player == WEST) and
				(_target distance _this < 5) and 
				!(_target getVariable 'IntelRecovered')
			
			",	// Condition for the action to be shown
			"
				
				(vehicle player == player) and 
				(side player == WEST) and
				(_target distance _this < 5) and 
				!(_target getVariable 'IntelRecovered')
			
			",	// Condition for the action to progress
			{},																			// Code executed when action starts
			{},																			// Code executed on every progress tick
			{
			
				_arguments = _this select 3;
				_obj = _arguments select 0;
			
				player playActionNow 'PutDown';
				playSound 'click';
				
				
				// Set Target To Activated
				
					_target setVariable ["IntelRecovered", true, true];
				
				
				// Add Munitions
				
					[100] remoteExec ["BEW_FNC_addMunitions", 2];
					
				
				if (random 100 < 75) then {
				
					// Reveal Objective
					
						[_obj] remoteExec ["BEW_FNC_RevealObjective", 2];
						
				}else{
				
					// Reveal Allied Camp
						
						[_obj, {
						
							_obj = _this;
						
							if ((count BEW_v_allAlliedCamps) - (count (BEW_v_allAlliedCamps select {(initialSpawnPoint inArea _x)})) - ({[(format ["meetAlliesTask_%1", _x])] call BIS_fnc_taskExists} count BEW_v_allAlliedCamps) > 0) then { 
			 
							  [_obj] spawn BEW_FNC_MEET_ALLIES_mission; 
							 
							}else{
							
								[_obj] remoteExec ["BEW_FNC_RevealObjective", 2];
								
							};
							
						}] remoteExec ["BIS_FNC_Call", 2];
				
				};
				
			},																			// Code executed on completion
			{},																			// Code executed on interrupted
			[_obj],																			// Arguments passed to the scripts as _this select 3
			3,																			// Action duration [s]
			99,																			// Priority
			true,																		// Remove on completion
			false																		// Show in unconscious state
	] remoteExec ["BIS_fnc_holdActionAdd", 0, true];