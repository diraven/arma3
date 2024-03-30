
	if !(isServer) exitWith {};
	
	if (isNil "BEW_v_FindingRandomEncounters") then {BEW_v_FindingRandomEncounters = FALSE};

	if (BEW_v_FindingRandomEncounters) exitWith {BEW_v_FindingRandomEncounters = FALSE};

	
	private [
	
		"_objectivePos", 	
		"_objectivePosFound", 
		"_allObjectives", 
		"_allMarkers", 
		"_randomEncounterPositions", 
		"_inArea"
	
	];
	
	_multiplier = param [0, 1];
	_centerMarker = param [1, "wholeMapMarker"];
	_radius = param [2, markerSize "wholeMapMarker" select 0];
	
	
	// Flip Flag
	
		BEW_v_FindingRandomEncounters = TRUE;
	
	
	// Define All Objectives
	
		_allObjectives = BEW_v_all_MainObjectives;
		{_x setMarkerAlpha 1} forEach BEW_v_all_MainObjectives;


	// Setup Empty Arrays

		_allMarkers = [];
		_allPositions = [];
		_randomEncounterPositions = [];
		
			
			// Total Random Encounter Positions
			
				hint format ["Started - Searching For %1 Encounter Positions", (count _allObjectives * _multiplier)];
		
		
		while {(count _randomEncounterPositions < count _allObjectives * _multiplier) and BEW_v_FindingRandomEncounters} do {
					
			// Define Pos
				
				_objectivePos = [markerPos _centerMarker, [0, _radius], random 360, 0, [2, 1000], 10] call SHK_pos;
	
			// If Pos Found add To Rabdom Encounter Positions
				
				if (count _objectivePos > 0) then {
				
					_randomEncounterPositions pushbackunique _objectivePos;
				
				};			
			
						
			// Check Pos Isnt In Objective Area	
			
				{
			
					if (count _objectivePos > 0) then {
					
						_inArea = _objectivePos inArea [markerPos _x, 500, 500, 0, false];
						if (_inArea) then {
						
							_randomEncounterPositions = _randomEncounterPositions - [_objectivePos];

						};
					
					};
			
				} forEach _allObjectives;
			
			
				
			// Check Pos Isnt In Camp Area	
			
				_allCamps = getMissionLayerEntities "Camps" select 1; 
				
				{
			
					if (count _objectivePos > 0) then {
					
						_inArea = _objectivePos inArea [markerPos _x, (markerSize _x select 0) + 300, (markerSize _x select 1) + 300, 0, false];
						
						if (_inArea) then {
						
							_randomEncounterPositions = _randomEncounterPositions - [_objectivePos];

						};
					
					};
			
				} forEach _allCamps;
					
			
			// Check Pos Isnt Near Other Random Encounter Positions
			
				{
			
					if (count _objectivePos > 0) then {
					
						_inArea = _objectivePos inArea [_x, 500, 500, 0, false];
						if (!(_objectivePos distance _x == 0) and (_inArea)) then {
						
							_randomEncounterPositions = _randomEncounterPositions - [_objectivePos];

						};
					
					};
			
				} forEach _randomEncounterPositions;
				
				systemchat format ["%1", (count _allObjectives * _multiplier) - (count _randomEncounterPositions)];
				
				copyToClipboard str _randomEncounterPositions;		
		};


		// Create Marker
			
			{
	
				_markerName = format ["%1_Marker", _x];
				_objectiveMarker = createMarker [_markerName, _x];
				_objectiveMarker setMarkerShape "ELLIPSE";
				_objectiveMarker setMarkerSize [100, 100];
				_objectiveMarker setMarkerColor "colorPink";
				_objectiveMarker setMarkerAlpha 1;
				_allMarkers = _allMarkers + [_objectiveMarker];
			
			} forEach _randomEncounterPositions;	
				
		
		[_allMarkers] spawn {
		
			_allMarkers = _this select 0;
			
			sleep 5;
			
			{
			
				deleteMarker _x;
			
			} forEach _allMarkers;
		
		};		
		
		hint format ["Complete - %1 Total Encounter Positions Found", (count _allMarkers)];
		
		BEW_v_FindingRandomEncounters = false;
	
	_allMarkers