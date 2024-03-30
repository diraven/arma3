		
	// Params
	
		_unit = param [0];
		_type = typeOf _unit;
		_displayName = _type call ISSE_Cfg_Vehicle_GetName;
		
		
	// Dismiss Recruit
		
		_dismissActionText = format ["<t color='#FF0000'>Dismiss %1", _displayName];
		
		_dismissConditions = "
			
			(alive _target) and
			
			(player == leader group _target) and
			
			(
			
				!(cursorObject == _target) or 
				
				(
				
					(cursorObject == _target) and 
					(player distance2D _target < 3)
					
				)
			
			)
		
		";
		
		[

			_unit,																	
			_dismissActionText,															
			"\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_stop_ca.paa",		
			"\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_stop_ca.paa",		
			_dismissConditions,			
			_dismissConditions,			
			{},																		
			{},																		
			{

				deleteVehicle (_this select 0);
			
			},																		
			{},																		
			[],																
			0.5,																	
			99,																		
			true,																	
			false																	
					
		] remoteExec ["BIS_fnc_holdActionAdd", 0, true];