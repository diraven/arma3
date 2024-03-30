
	[
		player,																// Object the action is attached to
		"<t color='#00ff00'>ACTIVATE GLIDER OUTPOST",						// Title of the action
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Idle icon shown on screen
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Progress icon shown on screen
		"(cursorObject in BEW_v_GliderVehicles) and (player distance2D cursorObject < 10) and (vehicle player == player) and (cursorObject getVariable 'gliderCanBeActivated') and !(player inArea hqSafeZoneMarker) and (count (crew cursorObject select {alive _x}) < 1)",		// Condition for the action to be shown
		"(cursorObject in BEW_v_GliderVehicles) and (player distance2D cursorObject < 10) and (vehicle player == player)and (cursorObject getVariable 'gliderCanBeActivated') and !(player inArea hqSafeZoneMarker) and (count (crew cursorObject select {alive _x}) < 1)",		// Condition for the action to progress
		{},																	// Code executed when action starts
		{},																	// Code executed on every progress tick
		{
			
			_glider = cursorObject;
			_glider setVariable ["gliderCanBeActivated", FALSE, TRUE];
			
			// Put Down Action

				player playActionNow 'PutDown';
				playSound 'click';

					
			// Setup Spawn and Arsenal
				
				[[_glider],{
				
					_glider = _this select 0;	
					
						// Create Marker
				
							_markerName = format ["%1_gliderArea", _glider];
							_gliderAreaMarker = createMarker [_markerName, getPos _glider];
							_gliderAreaMarker setMarkerShape "ELLIPSE";
							_gliderAreaMarker setMarkerSize [20, 20];
							_gliderAreaMarker setMarkerColor "colorGreen";
							_gliderAreaMarker setMarkerAlpha 0.3;
							_gliderAreaMarker setMarkerText "the Outpost";	
							
							BEW_v_respawnMarkerList = BEW_v_respawnMarkerList + [_gliderAreaMarker];
								publicVariable "BEW_v_respawnMarkerList";
							
					
					
					// Create Spawn Pos
					
						_offsetPos = _glider modelToWorld [10,10,0];

						_respawnPos = [west, [_offsetPos select 0, _offsetPos select 1, 0], "Glider Outpost"] call BIS_fnc_addRespawnPosition;
					
					
					// Lock Glider
					
						_glider setVehicleLock "locked";
						
						
					// Open Doors
					
						_glider animateSource ["Canopy", 1];
						
						
					// Create Fast Travel Flag
						
						_dir = getDir _glider + 270;
						_fastTravelOffsetPos = _glider modelToWorld [-2,5,0];
						
						// Spawn Fast Travel Flag
					
							_flag = createVehicle ["Flag_NATO_F", [_fastTravelOffsetPos select 0, _fastTravelOffsetPos select 1, 0], [], 0, "CAN_COLLIDE"];
							_flag setDir _dir;
							_flag allowDamage false;
							
							
							// Set Flag Textures
							
								[_flag, "BLU"] call BEW_FNC_SetFlagTexture; 
						
						
							// Add Flag To Fast Travel
							
								[_flag] spawn {
							
									_flag = _this select 0;
									
									_flag setVariable ["flagName", "Glider Outpost", TRUE];
									
									
									// Add To Fast Travel Flags Array
									
										BEW_V_AllFastTravelFlags = BEW_V_AllFastTravelFlags + [_flag];
											publicVariable "BEW_V_AllFastTravelFlags";
										
										BEW_V_ActivatedFastTravelFlags = BEW_V_ActivatedFastTravelFlags + [_flag];
											publicVariable "BEW_V_ActivatedFastTravelFlags";
										
									
									// Remove When Destroyed
									
										waitUntil {sleep 3; !(alive _flag)};
										
										BEW_V_AllFastTravelFlags = BEW_V_AllFastTravelFlags - [_flag];
											publicVariable "BEW_V_AllFastTravelFlags";
										
										BEW_V_ActivatedFastTravelFlags = BEW_V_ActivatedFastTravelFlags - [_flag];
											publicVariable "BEW_V_ActivatedFastTravelFlags";

								
								};
					
					// Create Officer
						
						_dir = getDir _glider;
						_officerOffsetPos = _glider modelToWorld [-2,6,0];
						
						
					// Clean Up
					
						[_glider, _gliderAreaMarker, _flag, _respawnPos] spawn {
											
									_glider = _this select 0;
									_gliderAreaMarker = _this select 1;
									_flag = _this select 2; 
									_respawnPos = _this select 3;
									
									waitUntil {sleep 3; !(alive _glider)};

																
									// Remove Marker From List
									
										BEW_v_respawnMarkerList = BEW_v_respawnMarkerList - [_gliderAreaMarker];
											publicVariable "BEW_v_respawnMarkerList";
										
										
									// Delete Marker
									
										deleteMarker _gliderAreaMarker;
										
										
									// Remove Glider From Arsenals List
									
										BEW_v_allArsenalCrates = BEW_v_allArsenalCrates - [_glider];
											publicVariable "BEW_v_allArsenalCrates";
															
															
									// Delete Flag
														
										deleteVehicle _flag;
										
										
									// Delete Respawn Position
									
										_respawnPos call BIS_fnc_removeRespawnPosition;
								
								};
						
						
						[[_glider],{
					
						_glider = _this select 0;	


							// Make Invincible
							
								_glider allowDamage false;
							
							
							// Add Object To Arsenal List
		
								[_glider] call BEW_FNC_addObjectToArsenalList;
				
				
						}] remoteexec ["bis_fnc_call", 0, true];
				
				}] remoteexec ["bis_fnc_call", 2];
				
				
			// Message
				
				_message = format ["%1 Has Activated A Glider Outpost At %2", name _caller, mapGridPosition getPos _glider];
				[_message] remoteExec ["systemchat", 0];

		},																	// Code executed on completion
		{},																	// Code executed on interrupted
		[],																	// Arguments passed to the scripts as _this select 3
		0.5,																	// Action duration [s]
		99,																	// Priority
		false,																// Remove on completion
		false																// Show in unconscious state
	] call BIS_fnc_holdActionAdd;