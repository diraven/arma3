
	_targetVehicle = param [0, cursorObject];
	_type = typeOf _targetVehicle;
	
	_displayName = [configFile >> "CfgVehicles" >> _type] call BIS_fnc_displayName;
	
	_actionText = format ["- Request %1 Paradrop Mission", _displayName];
	_actionColor = "<t color='#ff9900'>";
	_actionText = _actionColor + _actionText; 
	
	sleep 5;
	
	_conditions = " 
				
		(	
		
			(
			
				(leader group player == player) and
				(player getVariable ['SquadLeaderMenu', FALSE])	
			
			) or
		
			(
				
				(cursorObject == %1) and
				(cursorObject in BEW_v_allParadropVehs) and
				((player distance2d cursorObject) < 12) and
				(
				
					(vehicle player == %1) or 						
					(attachedTo vehicle player == %1) or 				
					(isVehicleCargo vehicle player == %1)
				
				)
			
			) or
			
			(vehicle player in BEW_v_allParadropVehs)
		
		) and 
		
		(%1 getVariable ['availableForTransport', FALSE]) and
		
		!(triggerActivated runwayTrigger) and 
		
		!(side player == EAST)
		
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
					
					_passThru = (_this select 3);
					_veh = _passThru select 0;
	
					// Create Text Marker
					
						_textMarkerName = format ['paradropTransportCancelText_%1', _veh];

						_textMarker = createMarkerLocal [_textMarkerName, getPos _veh];	
						_textMarker setMarkerTypeLocal 'EmptyIcon';	
						_textMarker setMarkerTextLocal 'CANCEL TRANSPORT MISSION';
						_textMarker setMarkerSizeLocal [1, 1];
						_textMarker setMarkerColorLocal 'colorWhite';
									

					// Create Icon
					
						_iconMarkerName = format ['paradropTransportCancelIcon_%1', _veh];

						_iconMarker = [_veh, _iconMarkerName] call BEW_FNC_spinningMapMarker;
					
					
					// Set Available For Transport Variable
					
						_veh setVariable ['availableForTransport', FALSE, TRUE];
					
					
					// On Map Click
					
						openmap [true, true];
						
						hint "MARK DZ ON MAP FOR PARADROP";

						[_veh, _textMarker, _iconMarker] onMapSingleClick {

							_veh = _this select 0;
							_textMarker = _this select 1;
							_iconMarker = _this select 2;

																		
							if (_veh distance2D _pos < 20) then {

								onMapSingleClick {};
								
								_veh setVariable ['availableForTransport', TRUE, TRUE];
								hint "PARADROP MISSION CANCELLED";
								
								openmap [false,false]; 
									
									deleteMarker _textMarker;
									deleteMarker _iconMarker;

							}else{

								if (triggerActivated runwayTrigger) then {
									
									hint "RUNWAY IS NOT CLEAR";

								}else{

									if ([_pos, BEW_v_AllObjectiveAreaMarkers] call BEW_FNC_inArrayOfAreas) then {
										
										hint "DZ IN ENEMY TERRITORY";
									
									}else{
									
										if (_veh distance2D _pos < 2000) then {
										
											hint "LZ TOO CLOSE"
										
										}else{
									
											onMapSingleClick {}; 							
										
										
											[[_this select 0, _pos], {

												_veh = _this select 0;
												_pos = _this select 1;

												[_veh, _pos] spawn BEW_FNC_ParadropVehWaypoint;

											}] remoteexec ["bis_fnc_call", 2];
										
										
										
											openmap [false,false];   

											hint "DZ SET";
											
											deleteMarker _textMarker;
											deleteMarker _iconMarker;
											
										};
									
									};
									
								};

							};
													
						};
		
				},																	// Code executed on completion
				{},																	// Code executed on interrupted
				[_targetVehicle],																	// Arguments passed to the scripts as _this select 3
				1,																	// Action duration [s]
				-94,																	// Priority
				false,																// Remove on completion
				false																// Show in unconscious state
				
		] call BIS_fnc_holdActionAdd;
		
	
		waitUntil {sleep 3; !(alive _targetVehicle)};
	
	
	// Remove Action
	
		[player, _actionID] call BIS_fnc_holdActionRemove;