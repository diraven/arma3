
	if !(isMultiplayer) exitWith {};
	if ((BEW_v_WW2) or (BEW_v_Vietnam) or (BEW_v_ColdWar)) exitWith {};
	if (!(typeOf player == 'B_soldier_M_F') and (BEW_v_BF4Mode)) exitWith {};
	if (!(typeOf player == 'B_soldier_UAV_F') and !(BEW_v_BF4Mode)) exitWith {};

_actionPosition = -90;
_actionColor = "<t color='#99ccff'>";


	// Open Drone Menu

		_actionText = "OPEN DRONE MENU</t>";
		
		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["DroneMenu", TRUE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "!(player getVariable ['DroneMenu', FALSE])"]; 
		
		
		
	// Close Squad Leader Menu
	
		_actionText = "CLOSE DRONE MENU</t>";

		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["DroneMenu", FALSE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "(player getVariable ['DroneMenu', FALSE])"]; 