	
	private ["_actionID"];
	
	_targetVehicle = _this select 0;
	_startPad = _this select 1;
	_plyr = player;
	
	sleep 5;
	
	// Heli Transport Action	

		_actionText = format ["<t color='#ff9900'>- Call %1 Heli Transport", [configFile >> "CfgVehicles" >> typeOf _targetVehicle] call BIS_fnc_displayName];
	
	
	// Array To Pass Through Action
	
		_array = [_targetVehicle, _startPad];
	

	// Create Action
		
		
			_conditions = "

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

			";
			
			
			// Add Action
		
				_actionID = [
					   player,																// Object the action is attached to
						_actionText,														// Title of the action
						"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\repair_ca.paa",			// Idle icon shown on screen
						"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\repair_ca.paa",			// Progress icon shown on screen
						format [_conditions, _targetVehicle],								// Condition for the action to be shown
						format [_conditions, _targetVehicle],								// Condition for the action to progress
						{},																	// Code executed when action starts
						{},																	// Code executed on every progress tick
						{
							
							_array = (_this select 3);
							_veh = _array select 0;

							// Send Message
							
								[_veh, "Transport request recieved. Mark an LZ on the map for transport."] remoteExec ["vehicleChat", 0];


							// Text Marker
							
								_textMarkerName = format ['heliTransportCancelText_%1', _veh];
								
								_textMarker = createMarkerLocal [_textMarkerName, getPos _veh];	
								_textMarker setMarkerTypeLocal 'EmptyIcon';	
								_textMarker setMarkerTextLocal 'CANCEL TRANSPORT MISSION';
								_textMarker setMarkerSizeLocal [1, 1];
								_textMarker setMarkerColorLocal 'colorWhite';
							
							
							// Icon Marker
							
								_iconMarkerName = format ['heliTransportCancelIcon_%1', _veh];
								_iconMarker = [_veh, _iconMarkerName] call BEW_FNC_spinningMapMarker;
							
							
							// Set Available For Transport Variable
							
								_veh setVariable ['availableForTransport', FALSE, TRUE];
							
							
							// On Map Click
										
								openmap [true, true];

								hint "MARK LZ ON MAP FOR TRANSPORT";

								[_array, _textMarker, _iconMarker] onMapSingleClick {
								
									_array = _this select 0;
									_veh = (_array select 0);
									_textMarker = _this select 1;
									_iconMarker = _this select 2;
								
									if (_veh distance2D _pos < 20) then {
									
										onMapSingleClick {};
									
										_veh setVariable ['availableForTransport', TRUE, TRUE];
									
										hint "TRANSPORT MISSION CANCELLED";	
										
										openmap [false,false]; 
										
										deleteMarker _textMarker;
										deleteMarker _iconMarker;
									
									}else{
									
										if ([_pos, BEW_v_AllObjectiveAreaMarkers] call BEW_FNC_inArrayOfAreas) then {
										
											hint "LZ IN ENEMY TERRITORY";
										
										}else{
																		
											if (_veh distance2D _pos < 200) then {
											
												hint "LZ TOO CLOSE"
											
											}else{
											
												if ((_pos isFlatEmpty [-1, -1, 0.3, 1, 0, false] isEqualTo [])) then {
																					
													hint "LZ NOT SAFE"

												}else{
													
													_emptyRadius = 8;
													
													if (count ((nearestTerrainObjects [_pos, [], _emptyRadius] select {!(getModelInfo _x #0 in call BEW_FNC_heliTransportObjectsToIgnore) and !(getModelInfo _x #0 == '')}) apply {getModelInfo _x #0}) > 0) then {
													
													}else{

														onMapSingleClick {}; 							
														
														[_pos, _array] remoteExec ["BEW_FNC_heliTransportWaypoint", _veh];

														openmap [false,false];   

														hint "LZ SET";
														
														deleteMarker _textMarker;
														deleteMarker _iconMarker;
													
													};
													
												};
											
											};
											
										};

									};
								
								};

						},																	// Code executed on completion
						{},																	// Code executed on interrupted
						_array,																	// Arguments passed to the scripts as _this select 3
						1,																	// Action duration [s]
						-94,																	// Priority
						false,																// Remove on completion
						false																// Show in unconscious state
						
				] call BIS_fnc_holdActionAdd;
			
	
		waitUntil {sleep 3; !(alive _targetVehicle)};
	
			
			// Remove Action
			
				[player, _actionID] call BIS_fnc_holdActionRemove;

