HINT "HERE";
	if ((!isServer) or (BEW_V_airSuperiority)) exitWith {};

	private [
	
		"_objectivePos", 	
		"_objectivePosFound", 
		"_allObjectives", 
		"_allMarkers", 
		"_randomEncounterPositions", 
		"_inArea"
	
	];
	
	_centerMarker = param [0, BEW_v_HqSafeZoneMarker];
	_multiplier = param [1, 1];
	
	// Define All Objectives
	
		_allObjectives = [["Military", "Airfield", "Resistance"]] call BEW_FNC_DefineObjectives; 


	// Setup Empty Arrays

		_allMarkers = [];
		_allPositions = [];
		_randomEncounterPositions = [];
				
		
		while {count _randomEncounterPositions < count _allObjectives * _multiplier} do {
					
			// Define Pos
				
				_objectivePos = [markerPos _centerMarker, [markerSize _centerMarker select 0, markerSize "wholeMapMarker" select 0], random 360, 0, [2, 1000], 10] call SHK_pos;
	
			// If Pos Found add To Rabdom Encounter Positions
				
				if (count _objectivePos > 0) then {
				
					_randomEncounterPositions pushbackunique _objectivePos;
				
				};			
				
			// Check Pos Isnt In Objective Area	
			
				{
			
					if (count _objectivePos > 0) then {
					
						_inArea = _objectivePos inArea [markerPos _x, 700, 700, 0, false];
						if (_inArea) then {
						
							_randomEncounterPositions = _randomEncounterPositions - [_objectivePos];

						};
					
					};
			
				} forEach _allObjectives;
				
				
			// Check Pos Isnt In Camp Area	
			
				_allCamps = getMissionLayerEntities "Camps" select 1; 
				
				{
			
					if (count _objectivePos > 0) then {
					
						_inArea = _objectivePos inArea [markerPos _x, markerSize _x select 0, markerSize _x select 1, 0, false];
						if (_inArea) then {
						
							_randomEncounterPositions = _randomEncounterPositions - [_objectivePos];

						};
					
					};
			
				} forEach _allCamps;
				
				
			// Check Pos Isnt Near Other Rabdom Encounter Positions
			
				{
			
					if (count _objectivePos > 0) then {
					
						_inArea = _objectivePos inArea [_x, 100, 100, 0, false];
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
				_objectiveMarker setMarkerAlpha 1;
				_allMarkers = _allMarkers + [_objectiveMarker];
			
			} forEach _randomEncounterPositions;	
				
		
		[_allMarkers] spawn {
		
			_allMarkers = _this select 0;
			
			sleep 10;
			
			{
			
				deleteMarker _x;
			
			} forEach _allMarkers;
		
		};
		
		

	_allMarkers