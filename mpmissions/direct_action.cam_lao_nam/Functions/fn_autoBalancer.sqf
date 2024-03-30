if !(BEW_v_AutoBalancer) exitWith {};
		
	if ((count (allPlayers select {!(_x == player) and (side _x == WEST)})) > (count (allPlayers select {!(_x == player) and (side _x == EAST)}))) then {
	
		[player] joinSilent createGroup [EAST, TRUE];
	
	};