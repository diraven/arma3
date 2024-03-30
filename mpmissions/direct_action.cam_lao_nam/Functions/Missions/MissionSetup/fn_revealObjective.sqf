	
	_caller = param [0, player];
	_debug = FALSE;
	

	// Define All Side Missions
		_allSideMissions = BEW_v_all_SideObjectives;

	// Away From Player

		_possibleSideMissions = _allSideMissions select {(_caller distance2D (markerPos _x)) > 1000};
		
		_possibleSideMissions = _possibleSideMissions select {!(markerColor _x == "colorBLUFOR")};
		
		// Debug
		
			if (count _possibleSideMissions < 1) exitWith {
				
				_possibleSideMissions = _allSideMissions;
				
				if (_debug) then {systemchat "No Side Missions Outside Radius"};
			
			};
		
	
	// Not Already Revealed
		
		_possibleSideMissions = _possibleSideMissions select {(markerAlpha _x == 0)};
		
		// Debug
		
			if (count _possibleSideMissions < 1) exitWith {
				
				if (_debug) then {systemchat "No Unrevealed Side Missions"};
			
			};
	
	
	// Not Completed
	
		_possibleSideMissions = _possibleSideMissions select {!(markerColor _x == "colorBLUFOR")};
		
		// Debug
		
			if (count _possibleSideMissions < 1) exitWith {
				
				if (_debug) then {systemchat "No Unfinished Side Missions"};
			
			};


	// Select Side Mission
	
		_selectedSideMission = _possibleSideMissions call BIS_FNC_SelectRandom;
		
	
	// Reveal Selected Side Mission
	
		_selectedSideMission setMarkerAlpha 1;
	
		_selectedSideMission
	
	