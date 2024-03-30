
_actionPosition = 5.7;
_actionColor = "<t color='#99ccff'>";

player setVariable ["RoleSelectMenu", false];

	// Open Admin Menu

		_actionText = "OPEN ROLE SELECT MENU</t>";
		
		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["RoleSelectMenu", TRUE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "(isMultiplayer) and !(player getVariable ['RoleSelectMenu', FALSE]) and (count (BEW_v_allArsenalCrates select {_x distance2d player < 6}) > 0) and (cursorObject in BEW_v_allArsenalCrates) and (vehicle player == player)"]; 
		
		
		
	// Close Squad Leader Menu
	
		_actionText = "CLOSE ROLE SELECT MENU</t>";

		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["RoleSelectMenu", FALSE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "(isMultiplayer) and (player getVariable ['RoleSelectMenu', FALSE]) and (count (BEW_v_allArsenalCrates select {_x distance2d player < 6}) > 0) and (cursorObject in BEW_v_allArsenalCrates) and (vehicle player == player)"]; 