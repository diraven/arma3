
	if !(isMultiplayer) exitWith {};
		
	private _allowedClasses = [
	
		"B_soldier_AR_F",
		"B_medic_F",
		"B_soldier_M_F"
	
	];	
	
	// Add Roles If BF4 Mode
	
		if (BEW_v_BF4Mode) then {
		
			_allowedClasses pushBack "B_engineer_F";
		
		};
		
	
	if !((typeOf player in _allowedClasses) or (BEW_v_Zombies)) exitWith {};

_actionPosition = -89;
_actionColor = "<t color='#99ccff'>";


	// Open Gadget Menu

		_actionText = "OPEN GADGETS MENU</t>";
		
		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["GadgetMenu", TRUE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "!(player getVariable ['GadgetMenu', FALSE]) and (vehicle player == player) and (!(BEW_v_Zombies) or player == leader group player)"]; 
		
		
		
	// Close Squad Leader Menu
	
		_actionText = "CLOSE GADGETS MENU</t>";

		player addAction [ 
			 
			_actionColor + _actionText,  
			 
			{ 
			 
				player setVariable ["GadgetMenu", FALSE];	
			
			} 
			 		 
		, [], _actionPosition, false, false, "", "(player getVariable ['GadgetMenu', FALSE]) and (vehicle player == player) and (!(BEW_v_Zombies) or player == leader group player)"]; 