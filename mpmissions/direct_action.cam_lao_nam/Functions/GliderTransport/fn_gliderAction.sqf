private ["_createGliderAction", "_actionID"];

	_veh = _this select 0;
	
		// Glider Action		

			_actionText = format ["<t color='#ff9900'>- Call %1 Glider", [configFile >> "CfgVehicles" >> typeOf _veh] call BIS_fnc_displayName];
			

			call compile format ["

							
					_plyr = player;
									
					_actionID = player addaction

						[_actionText,{	

							_veh = (_this select 3);

								_textMarkerName = format ['GliderTransportCancelText_%1', _veh];
								
								_textMarker = createMarkerLocal [_textMarkerName, getPos _veh];	
								_textMarker setMarkerTypeLocal 'EmptyIcon';	
								_textMarker setMarkerTextLocal 'CANCEL TRANSPORT MISSION';
								_textMarker setMarkerSizeLocal [1, 1];
								_textMarker setMarkerColorLocal 'colorWhite';
																													
								_iconMarkerName = format ['GliderTransportCancelIcon_%1', _veh];
								
								_iconMarker = [_veh, _iconMarkerName] call BEW_FNC_spinningMapMarker;
							
							openmap true;
							_veh setVariable ['availableForTransport', FALSE, TRUE];
							
							hint ""MARK DZ ON MAP FOR GLIDER"";

							[_veh, _textMarker, _iconMarker] onMapSingleClick {
							
								_veh = _this select 0;
								_textMarker = _this select 1;
								_iconMarker = _this select 2;
								
																				
								if (_veh distance2D _pos < 20) then {
								
									onMapSingleClick {};
									
									_veh setVariable ['availableForTransport', TRUE, TRUE];
									hint ""GLIDER MISSION CANCELLED"";
									
									call compile format [""
								
										%1_GliderMissionActive = false;
										publicVariable '%1_GliderMissionActive';
									
									"", _veh];
									
									openmap [false,false]; 
										
										deleteMarker _textMarker;
										deleteMarker _iconMarker;
								
								}else{
								
									if (triggerActivated runwayTrigger) then {
										
										hint ""RUNWAY IS NOT CLEAR"";
							
									}else{
							
										if ([_pos, BEW_v_AllObjectiveAreaMarkers] call BEW_FNC_inArrayOfAreas) then {
											
											hint ""DZ IN ENEMY TERRITORY"";
										
										}else{
										
											if (_veh distance2D _pos < 2000) then {
											
												hint ""LZ TOO CLOSE""
											
											}else{
										
												onMapSingleClick {}; 							

												[[_this select 0, _pos], {

													_veh = _this select 0;
													_pos = _this select 1;
													
													[_veh, _pos] spawn BEW_FNC_GliderWaypoint;
													
												}] remoteexec [""bis_fnc_call"", 2];

												openmap [false,false];   

												hint ""DZ SET"";
												
												deleteMarker _textMarker;
												deleteMarker _iconMarker;
												
											};
										
										};
										
									};
								
								};
															
							};

						
						
					}, _veh, -94, false, true, """", ""(%1 getVariable 'availableForTransport') and (driver %1 == player) and !(triggerActivated runwayTrigger)""];
					
					waitUntil {(!alive _veh) or (!alive _plyr)};
			
						_plyr removeAction _actionID;	
				
		", _veh];


//[_veh, _pos] spawn BEW_FNC_ParadropVehWaypoint;