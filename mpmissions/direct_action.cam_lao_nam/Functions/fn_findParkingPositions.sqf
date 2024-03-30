	private ["_connectedRoads", "_nearRoad", "_connectedRoad", "_dir", "_nearRoadPos", "_tries", "_maxTries", "_return"];

	_centerPos = param [0, getpos player];
	_searchRadius = param [1, 300];
	_emptyRadius = param [2, 3];
	
	
	_nearRoadPos = [];
	_tries = 1;
	_maxTries = 1000;
	
	while {(count _nearRoadPos < 1) and (_tries < _maxTries)} do {
		
		// Find Near Roads
		
			_nearRoads = _centerPos nearRoads _searchRadius;
			
		// Exit If No Roads Found

			if (count _nearRoads < 1) exitWith {
			
				//systemchat "no roads"
			
			};


		// Select Road
		
			_nearRoad = selectRandom _nearRoads;
		
		
		// Find Connected Roads
			_connectedRoads = roadsConnectedTo _nearRoad; 
		
		
		// Check If Connected Roads Exist
		
			if (count _connectedRoads > 0) then {
				
				// Calculate Spawn Direction Based On Connected Roads
				
				_connectedRoad = _connectedRoads select 0; 
				_nearRoadPos = getPos _nearRoad; 
				_connectedRoadPos = getPos _connectedRoad; 
				_dir = _nearRoad getRelDir _connectedRoad; 

			}else{
			
				_dir = random 360;
			
			};
			
		// Get Offset Position
			
			_nearRoadPos = [_nearRoadPos, 10, 90] call BIS_fnc_relPos;
			
			// Check If Position Empty 
			
				if !(!(_nearRoadPos isFlatEmpty  [_emptyRadius, -1, -1, -1, -1, false, objNull] isEqualTo [])) then {
					
					_nearRoadPos = [];
					
				};
				
			_tries = _tries + 1;
			
			//systemchat str _tries;
			
	};
		
		if (count _nearRoadPos < 1) then {
		
			_nearRoadPos = [_centerPos, [1, _searchRadius], random 360, 1, [0], 10] call SHK_pos;
			_dir = random 360;
						
		};
		
		_return = [_nearRoadPos, _dir];
		
		_return