
_actionPosition = 5.5;
_actionColor = "<t color='#99ccff'>";


	// Open Admin Menu

		_actionText = "OPEN SUPPLIES MENU</t>";
		
		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["SuppliesMenu", TRUE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "!(player getVariable ['SuppliesMenu', FALSE]) and (count (BEW_v_Officers select {_x distance player < 5}) > 0) and (cursorObject in BEW_v_Officers) and (vehicle player == player) and
			([side player, side cursorObject] call BIS_fnc_sideIsFriendly)"]; 
		
		
	// Close Squad Leader Menu
	
		_actionText = "CLOSE SUPPLIES MENU</t>";

		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["SuppliesMenu", FALSE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "(player getVariable ['SuppliesMenu', FALSE]) and (count (BEW_v_Officers select {_x distance player < 5}) > 0) and (cursorObject in BEW_v_Officers) and (vehicle player == player) and
			([side player, side cursorObject] call BIS_fnc_sideIsFriendly)"]; 