private ["_obj", "_markerColor", "_markerType", "_markerAlpha", "_markerText", "_markerSize"];

	_obj = _this select 0;
	_markerText = param [1, nil];
	_markerColor = param [2, nil];
	_markerType = param [3, nil];
	_markerAlpha = param [4, nil];
	_markerSize = param [5, [0.5, 0.5]]; 


while {(alive _obj) and !(_obj getVariable ["stopMovingMarker", FALSE])} do {
	
	if (isNil "_markerAlpha") then {
	
		_markerAlpha = switch (side _obj) do {
		
			case east: {1};
			case west: {1};
			case resistance: {1};
			case Independent: {1};
			case sideUnknown: {1};
			case Civilian: {1};
		
		};
	
	};


	if (isNil "_markerText") then {
	
		if ((isPlayer _obj) && (vehicle _obj == _obj)) then {
		
			_markerText = format ["%1", name _obj];
		
		}else{
		
			_markerText = "";
		
		};
	
	};
	

	if (isNil "_markerColor") then {

		_markerColor = switch (side _obj) do {
		
			case east: {"colorOPFOR"};
			case west: {"colorBLUFOR"};
			case resistance: {"ColorGUER"};
			case Independent: {"colorIndependent"};
			case sideUnknown: {"colorUNKNOWN"};
			case Civilian: {"colorCivilian"};
		
		};
		
	};
		
	
	if (isNil "_markerType") then {
	
		switch (side _obj) do {
		
			case east: {
			
				_markerType = switch (true) do {
				
					case (typeOf _obj isKindOf "Man"): {"o_inf"};
					case (typeOf _obj isKindOf "Helicoper"): {"loc_heli"};
					case (typeOf _obj isKindOf "Car"): {"o_motor_inf"};
					case (typeOf _obj isKindOf "Tank"): {"o_armor"};
					case (typeOf _obj isKindOf "Ship"): {"o_naval"};
					case (typeOf _obj isKindOf "Plane"): {"loc_plane"};
					case (typeOf _obj isKindOf "StaticWeapon"): {"o_unknown"};
					default {"o_unknown"};
				
				};
			
			};
			
			case west: {
			
				_markerType = switch (true) do {
				
					case (typeOf _obj isKindOf "Man"): {"b_inf"};
					case (typeOf _obj isKindOf "Helicoper"): {"loc_heli"};
					case (typeOf _obj isKindOf "Car"): {"b_motor_inf"};
					case (typeOf _obj isKindOf "Tank"): {"b_armor"};
					case (typeOf _obj isKindOf "Ship"): {"b_naval"};
					case (typeOf _obj isKindOf "Plane"): {"loc_plane"};
					case (typeOf _obj isKindOf "StaticWeapon"): {"b_unknown"};
					default {"b_unknown"};
				
				};
			
			};
			
			case resistance: {
			
				_markerType = switch (true) do {
				
					case (typeOf _obj isKindOf "Man"): {"n_inf"};
					case (typeOf _obj isKindOf "Helicoper"): {"loc_heli"};
					case (typeOf _obj isKindOf "Car"): {"n_motor_inf"};
					case (typeOf _obj isKindOf "Tank"): {"n_armor"};
					case (typeOf _obj isKindOf "Ship"): {"n_naval"};
					case (typeOf _obj isKindOf "Plane"): {"loc_plane"};
					case (typeOf _obj isKindOf "StaticWeapon"): {"n_unknown"};
					default {"n_unknown"};
				
				};
			
			};
			
			case civilian: {
			
				_markerType = switch (true) do {
				
					case (typeOf _obj isKindOf "Man"): {"b_inf"};
					case (typeOf _obj isKindOf "Helicoper"): {"loc_heli"};
					case (typeOf _obj isKindOf "Car"): {"b_motor_inf"};
					case (typeOf _obj isKindOf "Tank"): {"b_armor"};
					case (typeOf _obj isKindOf "Ship"): {"b_naval"};
					case (typeOf _obj isKindOf "Plane"): {"loc_plane"};
					case (typeOf _obj isKindOf "StaticWeapon"): {"b_unknown"};
					default {"b_unknown"};
				
				};
			
			};
			
		
		};
	
	};
	

	_markerName = format ["%1_movingMarker", _obj];
	
	_marker = createMarker [_markerName, getPos _obj];
	_marker setMarkerType _markerType;
	_marker setMarkerText _markerText;
	_marker setMarkerSize _markerSize;
	_marker setMarkerColor _markerColor;
	_marker setMarkerAlpha _markerAlpha;
	
	_rotatingMarkerTypes = [
		
		"loc_car",
		"loc_boat",
		"loc_heli",
		"loc_plane",
		"loc_Truck",
		"loc_sdv"
		
	];
	
	if (_markerType in  _rotatingMarkerTypes) then {
	
		_marker setMarkerDir getDir _obj;
		_marker setMarkerSize [(markerSize _marker select 0) * 1.5, (markerSize _marker select 0) * 1.5];
		
	};
	
	sleep 0.5;
	
	deleteMarker _marker;

};