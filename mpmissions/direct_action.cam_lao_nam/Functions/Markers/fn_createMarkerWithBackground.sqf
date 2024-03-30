	
	_obj = param [0]; 
	_markerType	= param [1]; 
	_markerColor = param [2];
	_iconMarkerSize = param [3, [0.8, 0.8]];
	_deleteIfDestroyed = param [4, TRUE];
	_markerAlwaysVisible = param [5, FALSE];
	
		
	// Create Arsenal Markers

		if (isNil "BEW_v_ArsenalMarkerList") then {BEW_v_ArsenalMarkerList = []};
			
			
		// Create Background Marker
			
			_markerName = format ["%1_backgroundMarker", _obj];
		
			_backgroundMarker = createMarker [_markerName, getPos _obj];
			_backgroundMarker setMarkerType "n_unknown";
			_backgroundMarker setMarkerSize [1, 1];
			_backgroundMarker setMarkerColor _markerColor;	
	
		
		// Create Icon Marker
		
			_markerName = format ["%1_iconMarker", _obj];
	
			_iconMarker = createMarker [_markerName, getPos _obj];
			_iconMarker setMarkerType _markerType;
			_iconMarker setMarkerSize _iconMarkerSize;
			_iconMarker setMarkerColor 'colorWhite';
		
		
		// Reveal Marker
		
			[_obj, _iconMarker, _backgroundMarker, _markerAlwaysVisible] spawn {
				
				_obj = _this select 0;
				_marker = _this select 1;
				_background = _this select 2;
				_markerAlwaysVisible = _this select 3;
				_markerPos = markerPos _marker;
										
				// Hide Markers
				
					_background setMarkerAlpha 0;
					_background setMarkerDir 0;
					
					_marker setMarkerAlpha 0;
					_marker setMarkerDir 0;
					
				// Wait Until Marker Not Within Objective Zone
				
					[_obj, (_obj getVariable ["arsenalFaction", "BLU"])] call BEW_FNC_HideVehicleInObjectiveArea;
				
				
				// Wait Until Player Within Range				
								
					waitUntil {sleep 3; 
					
					(
					
						(_markerAlwaysVisible) or
						!(alive _obj) or  
						(
						
							({(alive _x) and 
							(_x distance2D _markerPos < 100) and 
							!(vehicle _x isKindOf 'air') and 
							(isNull (isVehicleCargo vehicle _x))} count allPlayers) > 0
						
						) or 
						(
							(count ((getMissionLayerEntities "BLU_Camps" select 1) select {_markerPos inArea _x}) > 0) and 
							!(BEW_v_RandomSpawn)
						)
					
					)};
							
				// Reveal Marker
			
					_background setMarkerAlpha 1;
					_marker setMarkerAlpha 1;				
				
			};		
			
			
		if (_deleteIfDestroyed) then {
		
			// Delete If Object Destroyed
			
				[_obj, _iconMarker, _backgroundMarker] spawn {
				
					_obj = _this select 0;
					_marker = _this select 1;
					_background = _this select 2;
				
					waitUntil {sleep 3; !(alive _obj)};
					
					deleteMarker _marker;
					deleteMarker _background;
				
				};
			
		};
			
	
	_returnArray = [_iconMarker, _backgroundMarker];
	
	_returnArray