
	// Params
	
		_obj = param [0];
		
	if (isNil "BEW_v_supplyCrates") then {
		
		BEW_v_supplyCrates = [];
		publicVariable "BEW_v_supplyCrates";
		
	};
		
	// Create Actions
		
		// Outpost
		
			_actionText = "<t color='#00ff00'>- Spawn Deployable Outpost";
					
				[
				
						_obj,																	
						_actionText,															
						"\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_start_ca.paa",		
						"\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_start_ca.paa",		
						"
						
							(player distance2D _target < 5) and 
							(player getVariable 'SuppliesMenu') and 
							(count BEW_v_supplyCrates < 5) and 
							!(count (attachedObjects player select {_x getVariable ['BEW_V_CanCarry', FALSE]}) > 0) and
							([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
						
						",			
						"
						
							(player distance2D _target < 5) and 
							(player getVariable 'SuppliesMenu') and 
							(count BEW_v_supplyCrates < 5) and 
							!(count (attachedObjects player select {_x getVariable ['BEW_V_CanCarry', FALSE]}) > 0) and
							([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
						
						",			
						{},																		
						{},																		
						{
						
							[player, "B_CargoNet_01_ammo_F", "OUTPOST", side player] remoteExec ["BEW_FNC_SpawnSupplyCrate", 2];
								
						},																		
						{},																		
						[],																
						0.5,																	
						5.4,																		
						false,																	
						false																	
						
				] remoteExec ["BIS_fnc_holdActionAdd", 0, true];
				
		
		// Repair Station
		
			_actionText = "<t color='#00ff00'>- Spawn Deployable Repair Station";
					
				[
				
						_obj,																	
						_actionText,															
						"\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_start_ca.paa",		
						"\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_start_ca.paa",		
						"
						
							(player distance2D _target < 5) and 
							(player getVariable 'SuppliesMenu') and 
							(count BEW_v_supplyCrates < 5) and 
							!(count (attachedObjects player select {_x getVariable ['BEW_V_CanCarry', FALSE]}) > 0) and
							([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
						
						",			
						"
						
							(player distance2D _target < 5) and 
							(player getVariable 'SuppliesMenu') and 
							(count BEW_v_supplyCrates < 5) and 
							!(count (attachedObjects player select {_x getVariable ['BEW_V_CanCarry', FALSE]}) > 0) and
							([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
						
						",			
						{},																		
						{},																		
						{
						
							[player, "Box_NATO_AmmoVeh_F", "REPAIR", side player] remoteExec ["BEW_FNC_SpawnSupplyCrate", 2];
								
						},																		
						{},																		
						[],																
						0.5,																	
						5.4,																		
						false,																	
						false																	
						
				] remoteExec ["BIS_fnc_holdActionAdd", 0, true];
		
		
	// Can't Recruit Actions
	/*
		[
		
			_obj,																	
			"<t color='#ff0000'>Cannot Spawn Supplies: Not The Squad Leader",															
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",		
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",		
			"(player distance2D _target < 5) and !(player == leader group player)",			
			"(player distance2D _target < 5) and !(player == leader group player)",			
			{},																		
			{},																		
			{

				hintC "You must be the SQUAD LEADER to spawn supplies.";
			
			},																		
			{},																		
			['%1'],																
			0.5,																	
			5.4,																		
			false,																	
			false																	
			
		] remoteExec ["BIS_fnc_holdActionAdd", 0, true];
	*/
	

		[
		
			_obj,																	
			"<t color='#ff0000'>Cannot Spawn Supplies: Already Carrying Object",															
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",		
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",		
			"
			(player distance2D _target < 5) and
			(player getVariable 'SuppliesMenu') and 
			(count (attachedObjects player select {_x getVariable ['BEW_V_CanCarry', FALSE]}) > 0) and
			([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
			",			
			"(player distance2D _target < 5) and
			(player getVariable 'SuppliesMenu') and 
			(count (attachedObjects player select {_x getVariable ['BEW_V_CanCarry', FALSE]}) > 0) and
			([side player, side cursorObject] call BIS_fnc_sideIsFriendly)",			
			{},																		
			{},																		
			{

				hintC "You must be the SQUAD LEADER to spawn supplies.";
			
			},																		
			{},																		
			['%1'],																
			0.5,																	
			5.4,																		
			false,																	
			false																	
			
		] remoteExec ["BIS_fnc_holdActionAdd", 0, true];


		[
		
			_obj,																	
			"<t color='#FF0000'>Cannot Spawn Supplies: Supply Cap Reached",															
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",		
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",		
			"(player distance2D _target < 5) and 
			(player getVariable 'SuppliesMenu') and 
			(count BEW_v_supplyCrates > 4) and
			!(count (attachedObjects player select {_x getVariable ['BEW_V_CanCarry', FALSE]}) > 0) and
			([side player, side cursorObject] call BIS_fnc_sideIsFriendly)",			
			"(player distance2D _target < 5) and 
			(player getVariable 'SuppliesMenu') and 
			(count BEW_v_supplyCrates > 4) and
			!(count (attachedObjects player select {_x getVariable ['BEW_V_CanCarry', FALSE]}) > 0) and
			([side player, side cursorObject] call BIS_fnc_sideIsFriendly)",			
			{},																		
			{},																		
			{

				hintC "You cannot spawn any more supplies. Supply cap reached.";
			
			},																		
			{},																		
			['%1'],																
			0.5,																	
			5.4,																		
			false,																	
			false																	
			
		] remoteExec ["BIS_fnc_holdActionAdd", 0, true];