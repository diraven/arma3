	
	_debug = param [0, FALSE];
	
	while {alive player} do {
		
		if !(leader group player in playableUnits) then {
			
			if ((count (units group player select {typeOf _x == "B_soldier_TL_F"}) < 1) or (typeOf player == "B_soldier_TL_F")) then {
			
				[player] call BEW_FNC_setGroupLeader;
				
				if (_debug) then {systemchat "SL is AI"};
			
			}else{
				
				if (_debug) then {systemchat "SL not AI"};
			
			};
		 
		};
		
		sleep 10;
		
	};