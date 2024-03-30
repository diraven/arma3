	
	private ["_allTypes", "_displayName"];
	
	
	// Params
	
		_obj = param [0];
		_factionTag = param [1];
	
	
	// Define Types
	
		_allTypes = switch (true) do {
		
			case BEW_v_AirSuperiority: {[
			
				"B_Helipilot_F"
			
			]};
			case BEW_v_BF4Mode : {[
			
				"B_soldier_M_F",
				"B_Soldier_GL_F",
				"B_medic_F",
				"B_engineer_F"
		
			]};
			case BEW_v_Zombies : {[
				
				"B_Soldier_F"
				
			]};
			default {[
				
				"B_Soldier_F",
				"B_soldier_M_F",
				"B_Soldier_GL_F",
				"B_soldier_AR_F",
				"B_medic_F",
				"B_engineer_F",
				"B_soldier_AT_F",
				"B_soldier_AA_F",
				"B_recon_JTAC_F",
				"B_crew_F"
				
			]};
		
		};
			
	
	// Blacklist Types By Mod
	
		_allTypes = [_allTypes] call BEW_FNC_blacklistTypesByMod;
		
	
	// Create Actions
	
		{

			_type = _x; 	
			
			// Translation Lists
	
				_translationLists = call compile format ["
				
					_translationLists = [[BLU_Map_TransList, %1_New_TransList]];
					
					_translationLists
				
				", _factionTag];
				
			
			// Translate Class Names
			
			//	_type = [_type, _translationLists] call BEW_FNC_TranslateClassNames;
			
			
			_displayName = _type call ISSE_Cfg_Vehicle_GetName;
			
			
			if (BEW_v_BF4Mode) then {
					
				_displayName = switch (_type) do {
				
					case "B_soldier_M_F" 	: {"Recon"};				
					case "B_soldier_AR_F" 	: {"Support"};				
					case "B_engineer_F"	 	: {"Engineer"};
					case "B_medic_F"		: {"Assault"};
				
				};
		
			};
			
			
			if (BEW_v_Zombies) then {
				
				_displayName = "Survivor";
				
			};
			
			_recruitActionText = format ["<t color='#00ff00'>- Recruit %1", _displayName];
		
			call compile format ["
			
				[
				
						_obj,																	
						_recruitActionText,															
						""\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_start_ca.paa"",		
						""\a3\missions_f_oldman\data\img\holdactions\holdAction_follow_start_ca.paa"",		
						""
						
							(player distance2D _target < 5) and (player getVariable ['RecruitsMenu', FALSE]) and 
							(!(count ((units group player) select {typeOf _x == '%1'}) > 0) or BEW_v_BF4Mode or BEW_v_Zombies) and 
							(player == leader group player) and 
							(([side player] call BEW_FNC_CountAllGroupsWithPlayers) < 10) and
							([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
						
						"",			
						""
						
							(player distance2D _target < 5) and (player getVariable ['RecruitsMenu', FALSE]) and 
							(!(count ((units group player) select {typeOf _x == '%1'}) > 0) or BEW_v_BF4Mode or BEW_v_Zombies) and 
							(player == leader group player) and 
							(([side player] call BEW_FNC_CountAllGroupsWithPlayers) < 10) and
							([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
						
						"",			
						{},																		
						{},																		
						{
						
							_passThru = (_this select 3);
							
								_type = _passThru select 0;
								_translationLists = _passThru select 1; 
								_factionTag = _passThru select 2;
								
								_pos = getPosASL player;
								_group = group player;					
								
								_offsetPos = player modelToWorld [-2,-2,0];
								
								[_type, _offsetPos, _group, false, _translationLists, _factionTag, side player] call BEW_FNC_spawnRecruit;
								
						},																		
						{},																		
						[_type, _translationLists, _factionTag],																
						0.5,																	
						5.1,																		
						false,																	
						false																	
						
				] remoteExec [""BIS_fnc_holdActionAdd"", 0, true];
		
			", _type];
	
		} forEach _allTypes;	
		
		
	// Can't Recruit Actions
	
		[
		
			_obj,																	
			"<t color='#ff0000'>Cannot Recruit: Not The Squad Leader",															
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",		
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",		
			"
			
				(player distance2D _target < 5) and 
				!(player == leader group player) and 
				(player getVariable ['RecruitsMenu', FALSE]) and
				([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
			
			",			
			"
			
				(player distance2D _target < 5) and 
				!(player == leader group player) and 
				(player getVariable ['RecruitsMenu', FALSE]) and
				([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
			
			",			
			{},																		
			{},																		
			{

				hintC "You must be the SQUAD LEADER to command recruits.";
			
			},																		
			{},																		
			['%1'],																
			0.5,																	
			5.1,																		
			false,																	
			false																	
			
		] remoteExec ["BIS_fnc_holdActionAdd", 0, true];
	
	
		[
		
			_obj,																	
			"<t color='#ff0000'>Cannot Recruit: Squad Full",															
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",		
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",		
			"
			
				(player distance2D _target < 5) and 
				(player getVariable ['RecruitsMenu', FALSE]) and 
				(player == leader group player) and 
				(([side player] call BEW_FNC_CountAllGroupsWithPlayers) > 9) and
				([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
			
			",			
			"
			
				(player distance2D _target < 5) and 
				(player getVariable ['RecruitsMenu', FALSE]) and 
				(player == leader group player) and 
				(([side player] call BEW_FNC_CountAllGroupsWithPlayers) > 9) and
				([side player, side cursorObject] call BIS_fnc_sideIsFriendly)
			
			",			
			{},																		
			{},																		
			{

				hintC "You cannot recruit any more units. The squad is already full.";
			
			},																		
			{},																		
			['%1'],																
			0.5,																	
			5.1,																		
			false,																	
			false																	
			
		] remoteExec ["BIS_fnc_holdActionAdd", 0, true];