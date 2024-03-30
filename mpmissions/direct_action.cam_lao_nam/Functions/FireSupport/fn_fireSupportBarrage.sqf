	private [
	
		"_obj",
		"_fireSupportData",
		"_typeText",
		"_allowedClasses",
		"_assistantTypes",
		"_minRadius",
		"_maxRadius",
		"_spread",
		"_barrageCooldown",
		"_roundTypes",
		"_roundCount",
		"_roundInterval",
		"_unlockLevel",
		"_spawnHeight",
		"_dropVelocity"
	
	];
			
			_obj 				= _this select 0;
			_fireSupportData 	= _this select 1;
		
			_typeText			=	_fireSupportData select 0;
			_allowedClasses		=	_fireSupportData select 1;
			_assistantTypes		=	_fireSupportData select 2;
			_minRadius 			=	_fireSupportData select 3;
			_maxRadius			=	_fireSupportData select 4;
			_spread				=	_fireSupportData select 5;
			_barrageCooldown	=	_fireSupportData select 6;
			_roundTypes 		=	_fireSupportData select 7;
			_roundCount			=	_fireSupportData select 8;
			_roundInterval		=	_fireSupportData select 9;
			_unlockLevel		=	_fireSupportData select 10;
			_spawnHeight		=	_fireSupportData select 11;
			_dropVelocity		=	_fireSupportData select 12;
			_munitionsCost		=	_fireSupportData select 13;
				
				
				
				if (BEW_v_fireMissionCooldown) then {
				
					'Fire Support Offline' hintC [ 
					
						'Fire support is not available at this time.'
					
					];
				
				}else{			
			
					private ["_pos"];
					
					/*
					if (visibleMap) then {
					
						_pos =  screenToWorld getMousePosition;
						
					}else{
					
						_pos = screenToWorld [0.5,0.5];
					
					};
					*/
					
					_pos = getPosASL BEW_v_FireSupportArrow;
					
					
					// Delete Arrow
					
						deleteVehicle BEW_v_FireSupportArrow;
					
					// Flip Flag
					
						BEW_v_fireMissionCooldown = true;
						
						
					// Cooldown Timer
					
						[_barrageCooldown] spawn {
						
							_barrageCooldown = _this select 0;
					
							_cooldownTimer = _barrageCooldown;
								
							while {(_cooldownTimer > 0) and (BEW_v_fireMissionCooldown)} do {
								
									_cooldownTimer = _cooldownTimer - 1;
									
									sleep 1;
								
							};
							
							// Back Online Message
							
								[HQ_WEST , "Fire support is back online. Ready for fire mission."] remoteExec ['sideChat', 0];
													
							// Flip Flag
							
								BEW_v_fireMissionCooldown = false;
						
						};
						
					
					// Create Danger Area Marker
						
						if !(getMarkerColor "fireSupportArea" == "") then {
						
							deleteMarker "fireSupportArea";
						
						};
						
						_dangerAreaMarker = createMarker ['fireSupportArea', _pos];
						_dangerAreaMarker setMarkerShape 'ELLIPSE';
						_dangerAreaMarker setMarkerSize [(_spread) * 2, (_spread) * 2];
						_dangerAreaMarker setMarkerColor 'colorRED';
						_dangerAreaMarker setMarkerAlpha 1;
					
					
					// Switch If Cruise Missile
					
					if ("ammo_Missile_Cruise_01" in _roundTypes) then {
					
						[[_pos, _barrageCooldown, _munitionsCost], {
									
							_pos = _this select 0;
							_barrageCooldown = _this select 1;
							_munitionsCost = _this select 2;
						
							_positionArrow = createVehicle ['Sign_Arrow_Large_F', _pos, [], 0, "CAN_COLLIDE"];
							_positionArrow setDir getDir player;
							_positionArrow allowDamage false;
							_positionArrow hideObjectGlobal true;
							
							_smoker = "SmokeShellRed" createVehicle _pos;
							_smoker setDamage 1;
					
							if (isNil "cruiseMissileActive") then {
							
								cruiseMissileActive = false;
									publicVariable "cruiseMissileActive";
							
							};
						
								[_positionArrow] spawn BEW_FNC_fireCruiseMissile;
						
							waitUntil {(cruiseMissileActive)};
						
								[HQ_WEST , "Fire mission received. Cruise missile inbound."] remoteExec ['sideChat', 0];
								
								// Adjust Munitions
							
									[[_munitionsCost, side player], {
									
										_munitionsCost = _this select 0;
										_side = _this select 1;
																		
										if (_side == EAST) then {
										
											BEW_v_munitions_EAST = BEW_v_munitions_EAST - _munitionsCost;
												publicVariable "BEW_v_munitions";
												
											// Change Munitions In Database
			
												if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
													 
													["write", ["Progression", "Munitions EAST", BEW_v_munitions_EAST]] call BEW_v_dataBase; 
												
												};
												
												sleep 3;
												
												_message = format ["Current Munitions %1", BEW_v_munitions_EAST];
				
												[[_message, _side], {
												
													_message = _this select 0;
													_side = _this select 1;
													
													if (side player == _side) then {
													
														systemchat _message;
													
													};
												
												}] remoteExec ["BIS_FNC_Call", 0];
										
										}else{
										
											BEW_v_munitions = BEW_v_munitions - _munitionsCost;
												publicVariable "BEW_v_munitions";
												
											// Change Munitions In Database
				
												if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
													 
													["write", ["Progression", "Munitions", BEW_v_munitions]] call BEW_v_dataBase; 
												
												};
												
												sleep 3;
												
												_message = format ["Current Munitions %1", BEW_v_munitions];
				
												[[_message, _side], {
												
													_message = _this select 0;
													_side = _this select 1;
													
													if (side player == _side) then {
													
														systemchat _message;
													
													};
												
												}] remoteExec ["BIS_FNC_Call", 0];
											
										};								
											
									}] remoteExec ["BIS_FNC_call", 2];

							waitUntil {!(cruiseMissileActive)};
							
								_message = "Splash.";
						
								[HQ_WEST , _message] remoteExec ['sideChat', 0];
							
							deleteVehicle _positionArrow;
							deleteVehicle _smoker;
									
						}] remoteExec ['BIS_FNC_Call', 2];
						
					}else{
					
						// Create Arrow
						
							_positionArrow = createVehicle ['Sign_positionArrow_Large_F', _pos, [], 0, "CAN_COLLIDE"];
							_positionArrow setDir getDir player;
							_positionArrow allowDamage false;
							_positionArrow hideObjectGlobal true;
						
						
						// Create Red Smoke
						
							_smoker = "SmokeShellRed" createVehicle _pos;
							_smoker setDamage 1;
					
					
						// Send Message
					
							_message = format ["%2 mission received. %1 rounds, %3m spread. Impact in 30 seconds.", _roundCount, _typeText, _spread];
						
							[HQ_WEST , _message] remoteExec ['sideChat', 0];
							
						
						// Adjust Munitions
							
							[[_munitionsCost, side player], {
							
								_munitionsCost = _this select 0;
								_side = _this select 1;
								
								if (_side == EAST) then {
								
									BEW_v_munitions_EAST = BEW_v_munitions_EAST - _munitionsCost;
										publicVariable "BEW_v_munitions_EAST";
										
									// Change Munitions In Database
			
										if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
											 
											["write", ["Progression", "Munitions EAST", BEW_v_munitions_EAST]] call BEW_v_dataBase; 
										
										};
										
										sleep 3;
										
										_message = format ["Current Munitions %1", BEW_v_munitions_EAST];
				
										[[_message, _side], {
										
											_message = _this select 0;
											_side = _this select 1;
											
											if (side player == _side) then {
											
												systemchat _message;
											
											};
										
										}] remoteExec ["BIS_FNC_Call", 0];
								
								}else{
									
									BEW_v_munitions = BEW_v_munitions - _munitionsCost;
										publicVariable "BEW_v_munitions";
										
									// Change Munitions In Database
			
										if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
											 
											["write", ["Progression", "Munitions", BEW_v_munitions]] call BEW_v_dataBase; 
										
										};
										
										sleep 3;
										
										_message = format ["Current Munitions %1", BEW_v_munitions];
				
										[[_message, _side], {
										
											_message = _this select 0;
											_side = _this select 1;
											
											if (side player == _side) then {
											
												systemchat _message;
											
											};
										
										}] remoteExec ["BIS_FNC_Call", 0];
								
								};
									
							}] remoteExec ["BIS_FNC_call", 2];
		
						
						// Wait For Delay
						
							sleep 25;

							[HQ_WEST , 'Impact in 5 seconds.'] remoteExec ['sideChat', 0];
							
							sleep 5;
					
							_message = "Splash.";
						
							[HQ_WEST , _message] remoteExec ['sideChat', 0];
					
					
						// Call Fire Support
							
							switch (_typeText) do {
							
								case "Carpet Bombing" : {
								
									[_pos, _spawnHeight, getDir player, _roundCount, _roundTypes, _spread, _roundInterval] spawn BEW_FNC_ordnanceDrop;
									
								};
								
								default {
									
									_roundType = _roundTypes call BIS_FNC_SelectRandom;
									[_pos, _roundType, _spread, _roundCount, _roundInterval, {false}, 0, _spawnHeight, _dropVelocity] spawn BIS_fnc_fireSupportVirtual;
								
								};
							
							};
			
						
						// Clean Up Arrow and Red Smoke
							
							deleteVehicle _positionArrow;
							deleteVehicle _smoker;
					
					
						// Delete Warning Area Marker
											
							deleteMarker  _dangerAreaMarker;
					
					};
						
				};	
				