
	private [
		
		"_blacklistedModelNames",
		"_findTerrainObjects",
		"_center",
		"_radius",
		"_blacklistedObjects",
		"_allObjects",
		"_findNearRoads"
	
	];

	_blacklistedModelNames = [] call BEW_FNC_blackListedObjectTypes;
	_blacklistedModelNames = param [0, _blacklistedModelNames];
	_findTerrainObjects = param [1, true];
	_findNearRoads = param [2, false];
	
	_center = param [3, markerPos "wholeMapMarker"];
	_radius = param [4, markerSize "wholeMapMarker" select 0];
	
	_blacklistedObjects = [];
	
	
	if (_findTerrainObjects) then {
	
		_allObjects = nearestTerrainObjects [_center, [], _radius];
		
	}else{
		
		_allObjects = _center nearObjects _radius;
	
	};
	
	
	{
		
		_countAllObjects = (count _allObjects);
		
		_modelNames = [_x];
		
		// Nearest Objects
		
			private _foundBlacklistedObjects = _allObjects select {
		
				private _returnBool = false; 
					
				_object = _x;
				_objectStr = str _x;
				
				{
				
					_modelName = _x;

					if ( toLower(_objectStr) find toLower _modelName > -1) exitWith {  
												
						_returnBool = true; 
						
					};
					
				} forEach _modelNames;	

					_countAllObjects = _countAllObjects - 1;
						systemchat format ["%2 Remaining - Checking %1", _modelNames select 0, _countAllObjects];
					
				_returnBool
		
			};
			
			
			private _countBlackListedObjects = count _foundBlacklistedObjects;	
			
			/*
			// Near Roads
			
			{
			
				_object = _x;

					if (count (getPosATL _object nearRoads 10) < 1) then {
						
						_foundBlacklistedObjects = _foundBlacklistedObjects - [_object];
						
						systemchat format ["%2 Remaining - Adding %1 To Array", _object, _countBlackListedObjects];
				
						_countBlackListedObjects = _countBlackListedObjects - 1;
						
					};				
			
			} forEach _foundBlacklistedObjects;
			
			*/
			
			private _countBlackListedObjects = count _foundBlacklistedObjects;		
			
			{
			
				_object = _x;
			
				_blacklistedObjects pushBack str _x;
				
				systemchat format ["%2 Remaining - Adding %1 To Array", _object, _countBlackListedObjects];
				
				_countBlackListedObjects = _countBlackListedObjects - 1;
			
			}forEach _foundBlacklistedObjects;
		
	} forEach _blacklistedModelNames;
	
	systemchat format ["Operation Finished - %1 Blacklisted Objects Found", count _blacklistedObjects];
	
	
	[_blacklistedObjects] call BEW_FNC_CopyToClipboard;

	