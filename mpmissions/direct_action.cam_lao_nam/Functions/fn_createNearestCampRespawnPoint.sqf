
	_objectiveMarker = param [0];
		_objectivePos = markerPos _objectiveMarker;
		_markerText = markerText _objectiveMarker;

	
	// Wait Until Variables
	
		waitUntil {!(isNil "BEW_v_militarySpawnFlags")};
		waitUntil {!(isNil "BEW_V_AllFastTravelFlags")};
		waitUntil {!(isNil "BEW_V_ActivatedFastTravelFlags")};
		waitUntil {!(isNil "BEW_v_alliedRespawnArrows")};


	// Find Nearest Flag
	
		_nearestFlags = BEW_v_militarySpawnFlags select {getPos _x inArea _objectiveMarker};
		
	
	if (count _nearestFlags > 0) then {
				
		_flag = [_nearestFlags, _objectivePos] call BIS_fnc_nearestPosition;
		
		// Switch Flag Texture
		
			[_flag, "BLU"] call BEW_FNC_SetFlagTexture; 
			
			
		// Add Flag To Fast Travel

			[_flag, _markerText] spawn {
								
				_flag = _this select 0;
				_markerText = _this select 1;
				
				_flag setVariable ["flagName", _markerText, TRUE];
				
				_flag setVariable ["factionSide", WEST, TRUE];
				
				// Add To Array
				
					BEW_V_AllFastTravelFlags = BEW_V_AllFastTravelFlags + [_flag];
						publicVariable "BEW_V_AllFastTravelFlags";
					
					BEW_V_ActivatedFastTravelFlags = BEW_V_ActivatedFastTravelFlags + [_flag];
						publicVariable "BEW_V_ActivatedFastTravelFlags";
						
						
				// Add Marker
				
					_markers = [_flag, "mil_flag", "colorBlue", [0.4, 0.4]] call BEW_FNC_createMarkerWithBackground;
					_icon = _markers select 0;
					_background = _markers select 1;
					
					BEW_v_mapInteractionMarkers = BEW_v_mapInteractionMarkers + [_icon];
					BEW_v_mapInteractionMarkers = BEW_v_mapInteractionMarkers + [_background];
					
				
				// Remove When Destroyed
				
					waitUntil {sleep 3; !(alive _flag)};
					
					BEW_V_AllFastTravelFlags = BEW_V_AllFastTravelFlags - [_flag];
						publicVariable "BEW_V_AllFastTravelFlags";
					
					BEW_V_ActivatedFastTravelFlags = BEW_V_ActivatedFastTravelFlags - [_flag];
						publicVariable "BEW_V_ActivatedFastTravelFlags";

			};	
			
			
			// Create Flag Respawn Position
			
				_respawnID = [WEST, getPos _flag, _markerText] call BIS_fnc_addRespawnPosition;
				
				// Set Respawn ID Data
				
					_flag setVariable ["RespawnID", _respawnID];
				
				
		
	};
	
	
	// Create Respawn Position
		
		_respawnPositions = BEW_v_alliedRespawnArrows select {getPos _x inArea _objectiveMarker};
		
		if (count _respawnPositions > 0) then {
		
			{
			
				[WEST, getPos _x, _markerText] call BIS_fnc_addRespawnPosition;
			
			} forEach _respawnPositions;

		};
	