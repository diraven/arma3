
	_veh = param [0, vehicle player];
	_maxSpeed = param [1, 20];

	while {(alive _veh) and (((getPosATL _veh) select 2) > 0.3)} do { 

		private ["_speed"]; 

		_vel = velocity _veh; 
		_dir = direction _veh; 
	
		
		if (((getPosATL _veh) select 2) < 1) then { 

			_speed = 5; 

		}else{ 

			_speed = 1; 
		 
		}; 
	
		
		if (speed _veh < _maxSpeed) then {
		
			_veh setVelocity [
			
				(_vel select 0) + (sin _dir * _speed),  
				(_vel select 1) + (cos _dir * _speed),  
				(_vel select 2) 
			
			];
		
		};

		sleep 0.5; 

	};