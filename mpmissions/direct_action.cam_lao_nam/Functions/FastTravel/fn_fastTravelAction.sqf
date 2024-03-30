
	waitUntil {!(isnil "BEW_V_AllFastTravelFlags") and !(isnil "BEW_V_ActivatedFastTravelFlags")};

		// Fast Travel

			_fastTravelActionConditions = "
			
				((cursorObject in BEW_V_AllFastTravelFlags) and !(isNull cursorObject)) and
				([BEW_V_AllFastTravelFlags, player] call BIS_fnc_nearestPosition distance2D player) < 5 and
				!(visibleMap) and 
				(count (BEW_V_ActivatedFastTravelFlags select {([side player, (_x getVariable ['factionSide', WEST])] call BIS_fnc_sideIsFriendly)}) > 1) and
				(vehicle player == player) and
				([side player, (cursorObject getVariable ['factionSide', WEST])] call BIS_fnc_sideIsFriendly)
			
			";

			[	
				player,																							// Object the action is attached to
				"<t color='#ffff33'>Fast Travel",																// Title of the action
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",								// Idle icon shown on screen
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",								// Progress icon shown on screen
				_fastTravelActionConditions,																	// Condition for the action to be shown
				_fastTravelActionConditions,																	// Condition for the action to progress
				{},																								// Code executed when action starts
				{},																								// Code executed on every progress tick
				{		
				
					_flag = cursorObject;
					
					// Put Down Action

						player playActionNow 'PutDown';
						playSound 'click';
						
						sleep 0.5;
					
					// Spawn Teleport Function
					
						[cursorObject] spawn BEW_FNC_fastTravelTeleport;
					
				},																	// Code executed on completion
				{},																	// Code executed on interrupted
				[],																	// Arguments passed to the scripts as _this select 3
				0.5,																// Action duration [s]
				99,																	// Priority
				false,																// Remove on completion
				false																// Show in unconscious state
			] call BIS_fnc_holdActionAdd;
	
	
	
		// Move In Landing Craft
			
			_landingCraftActionConditions = "(cursorObject in BEW_V_AllFastTravelFlags) and ([BEW_V_AllFastTravelFlags, player] call BIS_fnc_nearestPosition distance2D player) < 5 and !(visibleMap) and !(isNil 'LandingCraft') and (cursorObject getVariable ['moveInLandingCraft', false])";
			
			[	
				player,																							// Object the action is attached to
				"<t color='#ffff33'>MOVE INTO LANDING CRAFT",													// Title of the action
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",								// Idle icon shown on screen
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",								// Progress icon shown on screen
				_landingCraftActionConditions,																	// Condition for the action to be shown
				_landingCraftActionConditions,																	// Condition for the action to progress
				{},																								// Code executed when action starts
				{},																								// Code executed on every progress tick
				{		
										
					// Put Down Action

						_caller playActionNow 'PutDown';
						playSound 'click';
						
						sleep 0.5;
					
					// Move In Player
						
						_veh = landingCraft;
						_caller moveInAny _veh;
					
						switch (assignedVehicleRole _caller select 0) do {
										
							case "driver" : {_caller assignAsDriver _veh};
							case "cargo" : {_caller assignAsCargo _veh};
							case "turret" : {_caller assignAsTurret [_veh, assignedVehicleRole _caller select 1]};
							default {_caller assignAsCargo _veh};
						
						};
					
						sleep 0.1;
						
					// Move In All Of Callers Group Units
												
						if (leader group _caller == _caller) then {
						
							_playerGroupMinusPlayers = (units group _caller) select {!(_x in allPlayers)};
							
							{	
							
								_unit = _x;
			
								if (vehicle _unit == _unit) then {
									
									[[_unit, _veh], {
									
										_unit = _this select 0;
										_veh = _this select 1;
						
										_unit moveInCargo _veh;
										
										_unit assignAsCargo _veh;
																			
										[_unit] orderGetIn true;
									
									}] remoteExec ["BIS_FNC_Call", _unit];
								
								};
								
								sleep 0.1;
							
							} forEach _playerGroupMinusPlayers;
								
						};
					
				},																	// Code executed on completion
				{},																	// Code executed on interrupted
				[],																	// Arguments passed to the scripts as _this select 3
				0.5,																// Action duration [s]
				98.9,																	// Priority
				false,																// Remove on completion
				false																// Show in unconscious state
			] call BIS_fnc_holdActionAdd;
		
		