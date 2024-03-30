	
	_obj = param [0, player];
	_debug = false;

	// Define Faction Types
	
		_factionTypes = ["BLU", "BLU_ALT", "BLU_SOF", "OPF_1", "OPF_2", "OPF_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2"];


	{
		
		_factionType = _x;
	
		// Define Weapon Lists
		
			_weaponList = call compile format ["

				_weaponList = %1_WeaponList;
			
				_weaponList
				
			", _factionType];
			
			
		// Define Restriction List
		
			_restrictionList = call compile format ["

				_restrictionList = %1_weaponRestrictionList;
			
				_restrictionList
				
			", _factionType];
		
		
		// Run For Each Level In Weapon List
		
			for "_i" from 1 to (count _weaponList) do {
				
				[_obj, _weaponList, _restrictionList, _i, _factionType, _debug] spawn {
				
					_obj = _this select 0;
					_weaponList = _this select 1;
					_restrictionList = _this select 2;
					_position = _this select 3;
					_factionType = _this select 4;
					_debug = _this select 5;
					
					// Select Weapon List Level
					
						_weaponListLevel = _weaponList select _position - 1;	
						
						
					// Filter Weapon List By Class
					
						_weaponListLevel = [_weaponListLevel, _restrictionList] call BEW_FNC_filterGearByClass;
				
				
					// Wait Until Level Reached And Faction Unlocked
						
						waitUntil {!(isNil "missionLevel")};
						
						if (side player == EAST) then {
						
							waitUntil {sleep 1; (missionLevel >= _position) and (_factionType in BEW_v_UnlockedFactions_EAST)};
							
						}else{
							
							waitUntil {sleep 1; (missionLevel >= _position) and (_factionType in BEW_v_UnlockedFactions)};
							
						};				
									
									
					// Send Debug Message
					
						if (_debug) then {systemchat format ["unlocked %2 level %1", _position, _factionType]};
					
					
					// Add Weapons
					
						[_obj, _weaponListLevel, true] call BIS_fnc_addVirtualWeaponCargo;
						
						
					// Set Arsenal Text And Conditions
			
							[_obj] call BEW_FNC_setArsenalTextAndConditions;
										
						
					// Add Magazines For Each Weapon
					
						// Create All Magazines Array
					
							private _allMagazines = [];
					
						{ 
						
							_weapon = _x;
							
							// Get Magazines
							
								_magazines = getArray (configFile / "CfgWeapons" / _weapon / "magazines");
						
						
							// Add Magazines To All Magazines Array
							
								{	
																		
									_allMagazines pushBackUnique _x; 
								
									sleep 0.1;
															
								} forEach _magazines;
												
			
						} forEach _weaponListLevel;
						
						
						// Add Magazines To Arsenal
							
							[_obj, _allMagazines] call BIS_fnc_addVirtualMagazineCargo;
							
							
						// Set Arsenal Text And Conditions
			
							[_obj] call BEW_FNC_setArsenalTextAndConditions;
					
				};
				
			};
	
	} forEach _factionTypes;