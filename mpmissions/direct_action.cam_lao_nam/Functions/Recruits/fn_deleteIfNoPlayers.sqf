
	_unit = param [0];
	
	waitUntil {!(alive _unit) or (count (units group _unit select {_x in allPlayers}) > 0)};
	
	while {alive _unit} do {
	
		sleep 3;
		
		if (count (units group _unit select {_x in allPlayers}) < 1) then {
		
			deleteVehicle _unit;
			
		};
			
	};