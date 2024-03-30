	
	private ["_actionID"];
	
	_veh = _this select 0;
	_startPad = _this select 1;
	_plyr = player;
	
	// Heli Transport Action	

		_actionText = format ["<t color='#ff9900'>- Call %1 Heli Transport", [configFile >> "CfgVehicles" >> typeOf _veh] call BIS_fnc_displayName];
	
	
	// Array To Pass Through Action
	
		_array = [_veh, _startPad];
	

	// Create Action
		
		call compile format ["
		
			_heliTransportPlayerActionCondition = ""

				((player getVariable ['SquadLeaderMenu', FALSE]) or (vehicle player == %1)) and 
				
				(%1 getVariable ['availableForTransport', FALSE]) and 
				
				!(side player == EAST) and 

				(

					(
					
						(vehicle player == %1) or 
						
						(attachedTo vehicle player == %1) or 
						
						(isVehicleCargo vehicle player == %1)
					
					)

					or 
					
					(
						(vehicle player == player) and 
					
						(player == leader group player) and 

						(%1 getVariable ['remoteCall', TRUE])
					
					)

				)

			"";
						
			_actionID = player addaction

				[_actionText, 	

				{
								
					_array = (_this select 3);
					_veh = _array select 0;


					[_veh, ""Transport request recieved. Mark an LZ on the map for transport.""] remoteExec [""vehicleChat"", 0];

					_textMarkerName = format ['heliTransportCancelText_%1', _veh];
					
					_textMarker = createMarkerLocal [_textMarkerName, getPos _veh];	
					_textMarker setMarkerTypeLocal 'EmptyIcon';	
					_textMarker setMarkerTextLocal 'CANCEL TRANSPORT MISSION';
					_textMarker setMarkerSizeLocal [1, 1];
					_textMarker setMarkerColorLocal 'colorWhite';
																										
					_iconMarkerName = format ['heliTransportCancelIcon_%1', _veh];
					
					_iconMarker = [_veh, _iconMarkerName] call BEW_FNC_spinningMapMarker;

					openmap [true, true];
					
					_veh setVariable ['availableForTransport', FALSE, TRUE];

					hint ""MARK LZ ON MAP FOR TRANSPORT"";

					[_array, _textMarker, _iconMarker] onMapSingleClick {
					
						_array = _this select 0;
						_veh = (_array select 0);
						_textMarker = _this select 1;
						_iconMarker = _this select 2;
					
						if (_veh distance2D _pos < 20) then {
						
							onMapSingleClick {};
						
							_veh setVariable ['availableForTransport', TRUE, TRUE];
						
							hint ""TRANSPORT MISSION CANCELLED"";	

							call compile format [""
					
								%1_heliTransportMissionActive = false;
								publicVariable '%1_heliTransportMissionActive';
								
							"", _veh];
							
							openmap [false,false]; 
							
							deleteMarker _textMarker;
							deleteMarker _iconMarker;
						
						}else{
						
							if ([_pos, BEW_v_AllObjectiveAreaMarkers] call BEW_FNC_inArrayOfAreas) then {
							
								hint ""LZ IN ENEMY TERRITORY"";
							
							}else{
															
								if (_veh distance2D _pos < 200) then {
								
									hint ""LZ TOO CLOSE""
								
								}else{
								
									if ((_pos isFlatEmpty [-1, -1, 0.3, 1, 0, false] isEqualTo [])) then {
																		
										hint ""LZ NOT SAFE""

									}else{
										
										_emptyRadius = 8;
										
										if (count ((nearestTerrainObjects [_pos, [], _emptyRadius] select {!(getModelInfo _x #0 in call BEW_FNC_heliTransportObjectsToIgnore) and !(getModelInfo _x #0 == '')}) apply {getModelInfo _x #0}) > 0) then {
										
										}else{
		
											onMapSingleClick {}; 							
											
											[_pos, _array] remoteExec [""BEW_FNC_heliTransportWaypoint"", _veh];

											openmap [false,false];   

											hint ""LZ SET"";
											
											deleteMarker _textMarker;
											deleteMarker _iconMarker;
										
										};
										
									};
								
								};
								
							};

						};
					
					};
																														
				}

			, _array, -94, false, true, """", _heliTransportPlayerActionCondition];
			
		", _veh];
		
		waitUntil {(!alive _veh) or (!alive _plyr)};
		
			_plyr removeAction _actionID;

