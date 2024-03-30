	
	BEW_FNC_campSpawnArrows = getMissionLayerEntities "CampRespawnArrows" select 0;
	_allCampMarkers = getMissionLayerEntities "Camps" select 1;

	BEW_v_CampSpawnMarkers = [];
		publicVariable "BEW_v_CampSpawnMarkers";

	{
		
		_arrow = _x;
		
		_centerPos = getPos _arrow;
		_centerDir = getDir _arrow;
		
		_nearestObjectiveMarker = [_allCampMarkers, _centerPos] call BIS_fnc_nearestPosition;
		_markerText = markerText _nearestObjectiveMarker;
		
	/*	
		_markerName = format ["%1_Marker", _arrow];
		_marker = createMarker [_markerName, _centerPos];
		_marker setMarkerType "empty";
		_marker setMarkerText _markerText;
		_marker setMarkerDir _centerDir;
		
		BEW_v_CampSpawnMarkers = BEW_v_CampSpawnMarkers + [_marker];
			publicVariable "BEW_v_CampSpawnMarkers";
	*/	
		
		// Give Arrow Spawn Point Name Variable
		
			_arrow setVariable ["spawnPointName", _markerText, true];
		
		
		// Hide Arrow On All Clients
		
			[_arrow, true] remoteExec ["hideObject", 0, true];

	} forEach BEW_FNC_campSpawnArrows;
