	
	_centerPos = param [0, getPos player];
	_radius = param [1, 300];
	_onlyPosInHouse = param [2, TRUE];

	_buildingPositionsArray = [_centerPos, _radius] call BEW_fnc_findPositionsInNearBuildings;


	// Exit If No Building Positions
	
		if (count _buildingPositionsArray == 0) exitWith {
		
			_centerPos
		
		};
	
	// Exit If No Suitable Building Positions
	
		if (count (_buildingPositionsArray select {count _x == 3}) < 1) exitWith {
		
			_centerPos
		
		};

	private _selectedPos = [];

	while {((count _selectedPos) == 0)} do { 

		_selectedPos = _buildingPositionsArray call BIS_FNC_SelectRandom;
			
		if (count _selectedPos > 3) then {
		
			_selectedPos = [];
			
		}else{
			
			_posInHouse = [AGLToASL _selectedPos] call BEW_FNC_InHouse;
			
			if !((_posInHouse) and (_onlyPosInHouse)) then {
			
				_selectedPos = [];
			
			};
		
		};
		
	};

	if (count _selectedPos == 0)  exitWith {
	
		_centerPos
	
	};
		
	_selectedPos
