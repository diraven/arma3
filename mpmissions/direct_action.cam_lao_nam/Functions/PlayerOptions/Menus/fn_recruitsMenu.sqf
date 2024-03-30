
_actionPosition = 5.3;
_actionColor = "<t color='#99ccff'>";


	// Open Admin Menu

		_actionText = "OPEN RECRUITS MENU</t>";
		
		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["RecruitsMenu", TRUE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "
		
			!(player getVariable ['RecruitsMenu', FALSE]) and 
			(count (BEW_v_Officers select {_x distance player < 5}) > 0) and 
			(cursorObject in BEW_v_Officers) and 
			(vehicle player == player) and
			([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
		
		"]; 
		
		
	// Close Squad Leader Menu
	
		_actionText = "CLOSE RECRUITS MENU</t>";

		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["RecruitsMenu", FALSE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "
		
			(player getVariable ['RecruitsMenu', FALSE]) and 
			(count (BEW_v_Officers select {_x distance player < 5}) > 0) and 
			(cursorObject in BEW_v_Officers) and 
			(vehicle player == player) and
			([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
			
			"]; 