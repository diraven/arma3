
_actionPosition = -96.1;
_actionColor = "<t color='#99ccff'>";


	// Open Admin Menu

		_actionText = "     OPEN SAVE MENU</t>";
		
		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["SaveMenu", TRUE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "(player getVariable 'AdminMenu') and ((serverCommandAvailable '#kick')) and !(player getVariable ['SaveMenu', FALSE])"]; 
		
		
		
	// Close Squad Leader Menu
	
		_actionText = "     CLOSE SAVE MENU</t>";

		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["SaveMenu", FALSE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "(player getVariable 'AdminMenu') and ((serverCommandAvailable '#kick')) and (player getVariable ['SaveMenu', FALSE])"]; 