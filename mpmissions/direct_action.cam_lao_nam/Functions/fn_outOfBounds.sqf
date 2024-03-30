	
	private ["_object", "_side", "_markers", "_altitude", "_debug"];
	
	_object = param [0, player];		
	_markers = param [1];
	_altitude = param [2, 100];
	_side = param [3, WEST];
	_debug = param [4, FALSE];
	
	if (typeName _markers == "STRING") then {
		
		_markers = [_markers];
	
	};

	while {(alive _object)} do {

		if (
		
			(
					
						(count (_markers select {_object inArea _x}) > 0) or 						
						(count (_markers select {vehicle _object inArea _x}) > 0)
					
			) and 
			(alive _object) and 
			(side _object == _side) and
			(((getPosATL _object) select 2) < _altitude)
		
		) then {
			
			vehicle _object lock 2;
			
			_hintMessage = "WARNING: You are not authorized to be in this area. Leave the area NOW.";

				hint _hintMessage;	
			
			_outOfBoundsTimer = 10;
			
			while {_outOfBoundsTimer > 0} do {
										
				sleep 1;
			
				if (
		
					(
					
						(count (_markers select {_object inArea _x}) > 0) or 						
						(count (_markers select {vehicle _object inArea _x}) > 0)
					
					) and 
					(alive _object) and 
					(side _object == _side) and
					(((getPosATL _object) select 2) < _altitude)
		
				) then {
					
					_outOfBoundsTimer = _outOfBoundsTimer - 1;
					systemchat format ["OUT OF BOUNDS - You will be executed in %1", _outOfBoundsTimer];
				
				}else{
				
					_outOfBoundsTimer = 10;
				
				};
			
			};
			
			if (
		
					(
					
						(count (_markers select {_object inArea _x}) > 0) or 						
						(count (_markers select {vehicle _object inArea _x}) > 0)
					
					) and 
					(alive _object) and 
					(side _object == _side) and
					(((getPosATL _object) select 2) < _altitude)
		
				) then {
				
				_object setDamage 1;
				
			};
			
			waitUntil {
			
				sleep 3; 
				(
				
					(!(count (_markers select {_object inArea _x}) > 0) and 						
					!(count (_markers select {vehicle _object inArea _x}) > 0)) or
					!(((getPosATL _object) select 2) < _altitude)
				
				)
			
			};

				vehicle _object lock 0;

			if (_debug) then {systemchat "Object Has Left The Area"};

		};
		
		sleep 1;
		
	};