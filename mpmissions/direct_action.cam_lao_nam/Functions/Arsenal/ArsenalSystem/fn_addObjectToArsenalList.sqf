	
	_newArsenal = param [0];
	_markerAlwaysVisible = param [1, FALSE];
	
	// Add New Arsenal To All Arsenal Array
			
			
		if (isServer) then {
		
			BEW_v_allArsenalCrates pushBackUnique _newArsenal;
			
				publicVariable "BEW_v_allArsenalCrates";
			
			
			// Add Marker
				
				_markers = [_newArsenal, "loc_rifle", "colorGreen", [0.8, 0.8], TRUE, _markerAlwaysVisible] call BEW_FNC_createMarkerWithBackground;
				_icon = _markers select 0;
				_background = _markers select 1;
				
				BEW_v_mapInteractionMarkers = BEW_v_mapInteractionMarkers + [_icon];
				BEW_v_mapInteractionMarkers = BEW_v_mapInteractionMarkers + [_background];
			
		};
		
		if (hasInterface) then {
		
			// Create Default Loadout Action
						
				_newArsenal setVariable ["arsenalFaction", "BLU", TRUE];
			
				[_newArsenal] spawn BEW_FNC_defaultLoadoutAction;
				
		};
	
