	
	private ["_originalObject", "_pos", "_flagObj", "_textMarker", "_iconMarker", "_messageText"];
	
	_originalObject = _this select 0;
				
				_activatedFlags = (BEW_V_ActivatedFastTravelFlags select {([side player, (_x getVariable ['factionSide', WEST])] call BIS_fnc_sideIsFriendly)});
				
					openmap [true, true];
					
					[2.0, 0.4, getPos player] call BIS_fnc_mapAnimAdd;
					
					_pos = [];
					BEW_V_IconMarkers = [];
					BEW_V_TextMarkers = [];
					
							{
							
								_flagObj = _x;
								
								
								_markerName = format ["fastTravelMarkerText_%1", _flagObj];
								
								_textMarker = createMarkerLocal [_markerName, getPos _flagObj];	
								_textMarker setMarkerTypeLocal "EmptyIcon";	
								_textMarker setMarkerTextLocal (_flagObj getVariable "flagName");
								if (_flagObj == _originalObject) then {_textMarker setMarkerTextLocal "CANCEL FAST TRAVEL"};
								_textMarker setMarkerSizeLocal [1, 1];
								_textMarker setMarkerColorLocal "colorWhite";
								
								BEW_V_TextMarkers = BEW_V_TextMarkers + [_textMarker];
								
								
								_markerName = format ["fastTravelMarkerIcon_%1", _flagObj];
								
								_iconMarker = [_flagObj, _markerName] call BEW_FNC_spinningMapMarker;
								
								BEW_V_IconMarkers = BEW_V_IconMarkers + [_iconMarker];	


							} forEach _activatedFlags;
					
					hint "SELECT LOCATION FOR FAST TRAVEL";
					
					_array = [_originalObject];
					
					_array onMapSingleClick {
					
						_originalObject = _this select 0;
											
						if (count (BEW_V_IconMarkers select {markerPos _x distance2D _pos < 30}) > 0) then {
												
								onMapSingleClick {};
								
								_nearestMarker 	= [BEW_V_textMarkers, _pos] call BIS_fnc_nearestPosition;
								_markerPos		= markerPos _nearestMarker;
								
								[_markerPos, _originalObject, _nearestMarker] spawn {
								
									_markerPos = _this select 0;
									_originalObject = _this select 1;
									_nearestMarker = _this select 2;
															
									openmap [false,false]; 
									
									if (_originalObject distance2D _markerPos > 30) then {
									
										titleText ["Some time later...", "BLACK", 2];

											sleep 2;

										player setVehiclePosition [_markerPos, [], 0, "NONE"]; 
										
											sleep 2;

										titleText ["", "BLACK IN", 2];
											
										
											_messageText = format ["%1 Has Teleported To %2", name player, markerText _nearestMarker];
											[_messageText] remoteExec ["systemchat", 0];
										
									}else{
									
										player setVehiclePosition [_markerPos, [], 0, "NONE"]; 
									
										hint "FAST TRAVEL CANCELLED";								
									
									};
									
										{deleteMarkerlocal _x} forEach BEW_V_IconMarkers;
										{deleteMarkerlocal _x} forEach BEW_V_TextMarkers;
								
								};

						}else{
						
							systemchat "NOT A VALID FAST TRAVEL POSITION";
						
						};
							
					};