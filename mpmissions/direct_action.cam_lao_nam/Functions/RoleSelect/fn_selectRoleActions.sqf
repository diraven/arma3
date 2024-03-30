	
	private [

		"_displayName",
		"_availableRoles",
		"_roleSelectConditions"	

	];	
	
	// Define Switchable Roles
	
	
		_availableRoles = switch (true) do {
			
			case BEW_v_BF4Mode : {
			
				[ 
				 
					"B_soldier_M_F", 
					"B_soldier_AR_F", 
					"B_medic_F", 
					"B_engineer_F"
				 
				];

			};

			case BEW_v_Zombies : {
			
				[ 
				 
					"B_Soldier_TL_F",   
					"B_Soldier_F"
				 
				];

			};
			
			default {
				
				[
				
					"B_Soldier_TL_F", 	
					"B_Soldier_F", 	
					"B_soldier_M_F", 
					"B_soldier_AR_F", 
					"B_Soldier_GL_F",
					"B_medic_F", 
					"B_engineer_F", 
					"B_soldier_AT_F", 
					"B_recon_JTAC_F", 
					"B_soldier_UAV_F", 
					"B_Helipilot_F", 
					"B_Pilot_F", 
					"B_crew_F"
				
				];
			
			};

		};
	
	
	// OPFOR Roles
		
		if ((side player == EAST) and !(BEW_v_Zombies) and !(BEW_v_BF4Mode)) then {
				
			_availableRoles = [
				
				"B_soldier_M_F", 
				"B_Pilot_F", 
				"B_crew_F"
				
			];
		
		};
	
	
	// Add Spartan If Optre and First Contact Detected
	
		if (BEW_V_OPTRE and !(BEW_v_forceVanilla)) then {
	
			_availableRoles = _availableRoles - ["B_Pilot_F"];
	
			if (isClass(configfile >> "CfgMods" >> "OPTRE_FC")) then {
	
				_availableRoles = _availableRoles + ["OPTRE_Spartan3_Soldier_Rifleman_AR"];
				
			};
			
		};
		
		
	// Remove UAV Operator
	
		if ((BEW_V_ColdWar or BEW_V_Vietnam or BEW_V_WW2) and !(BEW_v_forceVanilla)) then {
		
			_availableRoles = _availableRoles - ["B_soldier_UAV_F"];
		
		};
		
		
	// Remove WW2 Roles
	
		if ((BEW_V_WW2) and !(BEW_v_forceVanilla)) then {
		
			_availableRoles = _availableRoles - ["B_Helipilot_F"];
			_availableRoles = _availableRoles - ["B_Soldier_GL_F"];
			_availableRoles = _availableRoles - ["B_soldier_AT_F"];
		
		};
		
	
	{	
	
		_role = _x;
		
		if (_role == "OPTRE_Spartan3_Soldier_Rifleman_AR") then {
		
			_displayName = "Spartan";
		
		}else{
			
			_displayName = [configFile >> "CfgVehicles" >> _role] call BIS_fnc_displayName;
		
		};
		
		if (BEW_v_BF4Mode) then {
					
			_displayName = switch (_role) do {
			
				case "B_soldier_M_F" 	: {"Recon"};				
				case "B_soldier_AR_F" 	: {"Support"};				
				case "B_engineer_F"	 	: {"Engineer"};
				case "B_medic_F"		: {"Assault"};
			
			};
		
		};
		
		if (!(typeOf player == _role)) then { 
			
									
				
				
				_roleSelectConditions = switch (true) do {
					
					case (BEW_v_BF4Mode) 	:	{
						
						"
						
							(true)						
						
						";
					
					};
					
					case (BEW_v_Optre) 	:	{
					
						"
											
							(
							
								((count (allPlayers select {(typeOf _x == '%1') and (side _x == side player)}) < 1)) 
								
									or

								(('%1' == 'B_Helipilot_F') and ((count (allPlayers select {(typeOf _x == '%1') and (side _x == side player)}) < 2)) and (count allplayers > 6))
							
							)
			
						";
					
					};
					
					case (BEW_v_WW2) 	:	{
					
						"
											
							(
							
								((count (allPlayers select {(typeOf _x == '%1') and (side _x == side player)}) < 1)) 
								
									or

								(('%1' == 'B_Pilot_F') and ((count (allPlayers select {(typeOf _x == '%1') and (side _x == side player)}) < 2)) and (count allplayers > 6))
								
									or 
								
								(('%1' == 'B_engineer_F') and ((count (allPlayers select {(typeOf _x == '%1') and (side _x == side player)}) < 2)))
								
							)
			
						";
					
					};
					
					default {
					
						"
											
							((count (allPlayers select {(typeOf _x == '%1') and (side _x == side player)}) < 1))
			
						";	
					
					};
				
				};
				
				_roleSelectConditions = _roleSelectConditions + "
				
					 and						
							
					!(typeOf player == '%1') and 
					
					(player getVariable 'RoleSelectMenu') and 
					
					(isMultiplayer) and
					
					(count (BEW_v_allArsenalCrates select {_x distance2d player < 6}) > 0) and 
					
					(cursorObject in BEW_v_allArsenalCrates) and 
					
					(vehicle player == player)
				
				";
				
			
				_actionText = format ["<t color='#FFFF00'>- Switch Role To %1", _displayName];

				[	
					player,																
					_actionText,														
					"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	
					"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	
					format [_roleSelectConditions, _role, _displayName, profileName],																
					format [_roleSelectConditions, _role, _displayName, profileName],																
					{},																	
					{},																	
					{	

						_passThru = (_this select 3);
						_role = _passThru select 0;
						
						[_role, TRUE, TRUE, side player] call BEW_FNC_switchRole;
							
					},																	
					{},																	
					[_role],																	
					0.5,																
					5.5,																	
					true,																
					false																
				] call BIS_fnc_holdActionAdd;	
		

		};

	} forEach _availableRoles;