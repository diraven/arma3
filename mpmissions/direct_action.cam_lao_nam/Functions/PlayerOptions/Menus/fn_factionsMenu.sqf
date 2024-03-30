
_actionPosition = -96.3;
_actionColor = "<t color='#99ccff'>";


	// Open Admin Menu

		_actionText = "     OPEN FACTIONS MENU</t>";
		
		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["FactionsMenu", TRUE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "(player getVariable ['AdminMenu', FALSE]) and ((serverCommandAvailable '#kick')) and !(player getVariable ['FactionsMenu', FALSE])"]; 
		
		
		
	// Close Squad Leader Menu
	
		_actionText = "     CLOSE FACTIONS MENU</t>";

		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["FactionsMenu", FALSE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "(player getVariable ['AdminMenu', FALSE]) and ((serverCommandAvailable '#kick')) and (player getVariable ['FactionsMenu', FALSE])"]; 