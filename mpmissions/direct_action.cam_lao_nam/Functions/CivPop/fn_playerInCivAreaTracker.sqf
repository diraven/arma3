if !(isServer) exitWith {};

if (("enable_civPop" call BIS_fnc_getParamValue) == 2) exitWith {}; 

	BEW_v_CivPopSpawned = [];

	_civilianAreas = [];

	_towns = getMissionLayerEntities "town" select 1;
	_factories = getMissionLayerEntities "factory" select 1;
	_farms = getMissionLayerEntities "farm" select 1;
	_cities = getMissionLayerEntities "city" select 1;
	_seasideTowns = getMissionLayerEntities "seaside" select 1;

	_civilianAreas append _towns;
	_civilianAreas append _factories;
	_civilianAreas append _farms;
	_civilianAreas append _cities;
	_civilianAreas append _seasideTowns;

	while {true} do {
			
			{
				
				_marker = _x;
				_markerX = markerSize _marker select 0;
				_markerY = markerSize _marker select 1; 
			
				if (!(_marker in BEW_v_CivPopSpawned)) then {
				
					if ((count ((allPlayers select {(alive _x) and !(vehicle _x isKindOf "air")}) inAreaArray _marker) > 0) and !(_marker in BEW_v_currentActiveObjective)) then {
					
						BEW_v_CivPopSpawned pushBackUnique _marker;
							
						[_marker, _markerX, _markerY, _towns, _factories, _farms, _cities, _seasideTowns] spawn {
						
							_marker 		= _this select 0;
							_markerX 		= _this select 1;
							_markerY 		= _this select 2;
							
							_markerDiameter = _markerX - 250;
							
							_towns			= _this select 3;
							_factories		= _this select 4;
							_farms			= _this select 5;
							_cities			= _this select 6;
							_seasideTowns	= _this select 7;
							
								_civilianTypes = [_marker] call BEW_FNC_CivPopLists;
																
								_allCivilians = [markerpos _marker, [_markerDiameter, _markerDiameter / 2], round (_markerDiameter / 20), _civilianTypes] call BEW_FNC_spawnAgents;
								
								
								{
								
									private ["_dialogOptions"];
								
									// Add Dialog Options
								
										_intro = _x setVariable ['introDialog', "Of course. How can I help?", TRUE];

										
										_p = ceil random 100;

										_dialogOptions = switch (true) do { 
										
											case (_p <= 25): {
												
												[
										 
													[
														
															"Have you seen anything suspicious in the area?", // Question
															"I'm sorry I haven't seen anything.", 		// Response
															{}											// Code
														
													]
												
												]
												
											}; 
										
											case ((_p > 25) and (_p <= 50)): {
										 
												[
										 
													[
														
															"Have you seen anything suspicious in the area?", 	// Question
															"Even if I did know anything. What makes you think I'd tell you?.", 		// Response
															{}											// Code
														
													]
												
												]
										 
											}; 
											
											case ((_p > 50) and (_p <= 75)): {
										 
												[
										 
													[
														
															"Have you seen anything suspicious in the area?", 	// Question
															"I can't help you. I have to go.", 			// Response
															{_this select 0 setVariable ["dialogStarted", FALSE, true]}		// Code
														
													]
												
												]
										 
											}; 
											
											case ((_p > 75)): {
												
												[
													[
													
														"Have you seen anything suspicious in the area?", 	// Question
														"Actually yes... I'll mark it on your map.", 		// Response
														{
															
															[_this select 0] call BEW_FNC_RevealObjective;
															
															_dialogOptions = _this select 0 setVariable ['dialogOptions', [
											
																	[
																	
																		"Have you seen anything suspicious in the area?", // Question
																		"I'm sorry I haven't seen anything.", 			// Response
																		{}												// Code
																	
																	]
																
																], 
																
																TRUE
															
															];
															
														}		// Code
													
													]
													
												]
										 
											};  
											
										};
										
										
										
										// Set Dialog Options Variable
										
											_x setVariable ['dialogOptions', _dialogOptions, TRUE];
										
										
										// Set Goodbye Dialog Variable
										
											_x setVariable ['goodbyeDialog', [
											
													"That's all we need for now.", 									// Question
													"Goodbye.", 													// Response
													{_this select 0 setVariable ["dialogStarted", FALSE, true]}		// Code
												
												], 
											
											TRUE];
										
										
										// Dialog Actions
										
											[_x] remoteExec ["BEW_FNC_startNpcDialogAction", 0, true];
								
								
								}forEach _allCivilians;
								
						
							waitUntil {(count ((allPlayers select {(alive _x) and !(vehicle _x isKindOf "air")}) inAreaArray _marker) < 1) or (_marker in BEW_v_currentActiveObjective)};
								
								{
								
									deleteVehicle _x;
								
								}forEach _allCivilians;
								
								
							BEW_v_CivPopSpawned = BEW_v_CivPopSpawned - [_marker];
						
						};
						
					};
					
				};
			
			} forEach _civilianAreas;
	
		sleep 1;
	
	};