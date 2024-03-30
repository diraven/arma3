// Fast Travel
		
			_captureFlagConditions = "
			
				!(isNull cursorObject) and
				((cursorObject distance2D player) < 5) and
				!(visibleMap) and 
				(vehicle player == player) and
				!(cursorObject getVariable ['flagSide', sideUnknown] == sideUnknown) and
				!(cursorObject getVariable ['flagSide', sideUnknown] == side Player) and 
				!(markerAlpha ([BEW_v_all_Objectives, player] call BIS_fnc_nearestPosition) == 0)
			
			";

			[	
				player,																							// Object the action is attached to
				"<t color='#ffff33'>Capture Flag",																// Title of the action
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",								// Idle icon shown on screen
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",								// Progress icon shown on screen
				_captureFlagConditions,																	// Condition for the action to be shown
				_captureFlagConditions,																	// Condition for the action to progress
				{},																								// Code executed when action starts
				{},																								// Code executed on every progress tick
				{		
				
					_flag = cursorObject;
					_nearestMarker = [BEW_v_all_Objectives, player] call BIS_fnc_nearestPosition;
					_playerSide = side player;
					
					_factionType = switch (_playerSide) do {
					
						case WEST :	{"BLU"};
						case EAST :	{"OPF_1"};
						
					};			
					
					[cursorObject, ["flagSide", side player, true]] remoteExec ["setVariable", 2];
					
					[[_nearestMarker, _playerSide, _factionType],{
					
						_nearestMarker = _this select 0;
						_playerSide = _this select 1;
						_factionType = _this select 2;
						
										
						_markerColor = switch (_playerSide) do {
						
							case WEST :	{"colorBlufor"};
							case EAST :	{"colorOpfor"};
							
						};
						
						_nearestMarker setMarkerColor _markerColor;
						
						_factionIconType = call compile format ["
							
							_factionIconType = %1_MarkerIcon;
							
							_factionIconType
						
						", _factionType];
						
						_nearestMarkerIcon = format ["%1_Icon", _nearestMarker];
						_nearestMarkerIcon setMarkerType _factionIconType;
						
						
						if ((_nearestMarker == BEW_v_ConflictWestHQ) or (_nearestMarker == BEW_v_ConflictEastHQ)) then {
							
							
							[side player, {
							
								_sideThatWon = _this;
							
								if (side player == _sideThatWon) then {
									
									["end1", TRUE] call BIS_fnc_endMission
								
								}else{
								
									["end1", FALSE] call BIS_fnc_endMission
									
								};
							
							}] remoteExec ["BIS_FNC_Call", 0];
							
						
						}else{
						
							[] remoteExec ["BEW_FNC_revealConflictObjectives", 0]
						
						};
					
					}] remoteExec ["BIS_FNC_Call", 2];
					
					
					
				},																	// Code executed on completion
				{},																	// Code executed on interrupted
				[],																	// Arguments passed to the scripts as _this select 3
				0.5,																// Action duration [s]
				99,																	// Priority
				FALSE,																// Remove on completion
				false																// Show in unconscious state
			] call BIS_fnc_holdActionAdd;