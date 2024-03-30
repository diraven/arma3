
	// [_centerPos, [_minradius, _maxradius], _buildingTypes, _insideOrOutside] call BEW_FNC_findPositionsInNearBuildings;

	private ["_allTargetPositions", "_targetBuilding", "_allBuildings", "_allBuildingsByType", "_buildingTypes", "_returnArray"];

	_centerPos					= 	param [0];				// Object Or Position
	_radius						=	param [1, 100];			
	_buildingTypes 				= 	param [2, []];			// List of classnames or building type
	_insideOrOutside 			= 	param [3, 0]; 			// 0 Can be inside or outside // 1 Must be inside // 2 Must be outside
	_debug 						= 	TRUE;
	
	_returnArray = [];
	_allTargetPositions = [];

	// Find All Buildings
		
		_allBuildings = nearestObjects [_centerPos, ["house"], _radius];
		
		
	// Don't Select Hidden Buildings
	
		_allBuildings = _allBuildings select {!(isObjectHidden _x)};
		
		if (count _allBuildings < 1) exitWith {

			_returnArray
		
		};
		
		
	// Filter By Building Type
	
		if (count _buildingTypes > 0) then { 
		
			_allBuildingsByType = _allBuildings select {typeOf _x in _buildingTypes};
			
			if (count _allBuildingsByType > 0) then {

				_allBuildings = _allBuildingsByType;

			};
		
		};

		
	// Find Buildings With Positions	

		_buildingsWithPositions = _allBuildings select {count ([_x] call BIS_fnc_buildingPositions) > 0};

		if (count _buildingsWithPositions < 1) exitWith {
		
			_returnArray
		
		};
		
		
	// Add All Positions To Array
	
		{
			
			_buildingPositions = [_x] call BIS_fnc_buildingPositions;
			
			_allTargetPositions append _buildingPositions;
		
		} forEach _buildingsWithPositions;
		
	
	// Filter By Positions Inside
		
		switch (_insideOrOutside) do {
	
			case 0 	:	{_allTargetPositions = _allTargetPositions};
			case 1 	:	{_allTargetPositions = _allTargetPositions select {(lineIntersects [AGLToASL _x, (AGLToASL _x) vectorAdd [0,0,10]])}};
			case 2 	:	{_allTargetPositions = _allTargetPositions select {!(lineIntersects [AGLToASL _x, (AGLToASL _x) vectorAdd [0,0,10]])}};
		
		};
	
		
	// Select Random Pos

		_targetPos = _allTargetPositions call BIS_fnc_selectRandom;
		
	
	// Setup Return Array 
		
		_returnArray = [_targetPos, _allTargetPositions];
				
		_returnArray