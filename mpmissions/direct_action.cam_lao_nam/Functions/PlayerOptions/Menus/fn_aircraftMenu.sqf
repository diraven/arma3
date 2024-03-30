//if !(worldName in BEW_v_noAirfieldMaps) exitWith {};	

_actionPosition = 100;
_actionColor = "<t color='#99ccff'>";


	// Open Squad Leader Menu

		_actionText = "OPEN AIRCRAFT MENU</t>";
		
		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["aircraftMenu", TRUE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "
			
			((typeOf player == 'B_Pilot_F') or (serverCommandAvailable '#kick')) and 
			!(player getVariable ['aircraftMenu', FALSE]) and 
			((player inArea BEW_v_HqSafeZoneMarker) or (side player == EAST)) and 
			(vehicle player == player) and 
			((worldName in BEW_v_noAirfieldMaps) or (side player == EAST))
			
		"]; 
		
		
		
	// Close Squad Leader Menu
	
		_actionText = "CLOSE AIRCRAFT MENU</t>";

		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["aircraftMenu", FALSE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "
		((typeOf player == 'B_Pilot_F') or (serverCommandAvailable '#kick')) and 
		(player getVariable ['aircraftMenu', FALSE]) and 
		((player inArea BEW_v_HqSafeZoneMarker) or (side player == EAST)) and 
		(vehicle player == player) and 
		((worldName in BEW_v_noAirfieldMaps) or (side player == EAST))
		"]; 