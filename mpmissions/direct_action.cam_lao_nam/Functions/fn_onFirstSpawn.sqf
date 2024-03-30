	
	_unit = param [0, player];
	_debug = param [1, FALSE];
	
	
	if (isnil "BEW_v_FirstSpawn") then {
		
		// Here If First Spawn
		
			if (_debug) then {systemchat "first spawn"};
		
			// Get Player Data Save Game Entry
			
				BEW_v_saveGameEntry = ((BEW_v_AllPlayerSaveData select {_x select 0 == getPlayerUID player}) select 0);

				
				if (!(isNil "BEW_v_saveGameEntry") and (BEW_v_persistentPos or BEW_v_persistentRole)) then {
						
					private ["_savedPos", "_savedDir"];
					
					_savedPos = (BEW_v_saveGameEntry select 2);
					
					
					// Default Position If Saved Position Is At Default Placed Object Position
						
						if (count _savedPos > 0) then {
						
							if ((_savedPos distance2d BEW_v_playerObjectDefaultPosition) < 20) then {
								
								_savedPos = [];
								
							};
						
						};
				
					
					_savedDir = (BEW_v_saveGameEntry select 3);
					
					
					// Set Pos And Dir If Saved Pos Exists
					
						if ((count _savedPos > 0) and BEW_v_persistentPos) then {
												
							_unit setPosASL _savedPos;
							_unit setDir _savedDir;
						
						};
					
					
					
					_savedRole = (BEW_v_saveGameEntry select 5);
						
						
					// Set Role If Saved Role Exists
						
						if (!(typeOf player == _savedRole) and !(_savedRole == "") and BEW_v_persistentRole) then {
							
							if (count (allplayers select {typeOf _x == _savedRole}) < 1) then {
							
								[(BEW_v_saveGameEntry select 5), FALSE, FALSE] call BEW_FNC_switchRole;
								
							};
							
						};
					
					
				}else{
							
					// Move Into Cryopod If OPTRE

						if (BEW_v_OPTRE_Running and !(BEW_v_forceVanilla) and !(isClass(configfile >> "CfgMods" >> "SWOP_MODs")) and !(is3DENPreview) and !(BEW_v_forceVanilla)) then {
						
							waitUntil {!(isNil "BEW_v_Cryopods")};
							
							if (count BEW_v_Cryopods > 0) then {
							
								[_unit, BEW_v_Cryopods] call BEW_fnc_moveIntoCryopod;
								
							};

						}else{
								
								// Wait Until Initial Spawn Point Exists
								
									waitUntil {!(isNil "initialSpawnPoint")};
									waitUntil {!(isNull initialSpawnPoint)};
							
							
								// Move To Initial Spawn Point And Set Dir
								
									_unit setPosASL getPosASL initialSpawnPoint;
									_unit setdir getDir initialSpawnPoint;
						
								
								// Switch Role If BF4 Mode
								
									if (BEW_V_BF4Mode) then {
									
										_roles = [
										
											"B_soldier_M_F", 
											"B_soldier_AR_F", 
											"B_medic_F", 
											"B_engineer_F"
										
										];
										
										_selectedRole = _roles call BIS_FNC_SelectRandom;
									
										[_selectedRole] call BEW_FNC_switchRole;
								
							};
						
						};
						
						
						// Random Encounter On Weapon Fire If In Zombies Mode
						
							if (BEW_v_Zombies) then {
							
								[_unit] call BEW_FNC_randomEncounterOnWeaponFire;
							
							};
						
			};
									
	}else{
		
		// Here If Not First Spawn
		
			if (_debug) then {systemchat "respawn"};
		
			// Wait Until Spawn Arrows Exist
		
			waitUntil {!(isNil "BEW_v_SpawnArrows")};

			if (side player == EAST) then {
				
				// Here If Player Is EAST
				
					if (_debug) then {systemchat "player is EAST"};
				
					// Determine Initial Spawn Pos Based On Nearest Flags
						
						private ["_allValidFlags"];
						
						_allValidFlags = BEW_V_SwitchableFastTravelFlags select { 

						_flag = _x; 

						count (BEW_v_revealedObjectives select {([_flag] call BEW_FNC_InUnfinishedObjective) and (_flag inArea _x)}) > 0; 

						}; 

						if (count _allValidFlags < 1) then { 

						 _allValidFlags = BEW_V_SwitchableFastTravelFlags select {([_x] call BEW_FNC_InUnfinishedObjective)};  

						}; 
					 
						_nearestFlag = [_allValidFlags, player] call BIS_fnc_nearestPosition;
					
						_offsetPos = _nearestFlag modelToWorld [0,3,0];
						_relDir = ((player getRelDir _nearestFlag) - 180);
					
					
					// Set Pos And Dir
					
						player setPosASL _offsetPos;
						player setDir _relDir;

			}else{
			
				if (_debug) then {systemchat "player is WEST"};
					
				// Spawn At Nearest Spawn Arrow If Within 100m
				
					[_debug] spawn {
					
						_debug = _this select 0;
										
						private ["_nearestSpawnArrow"];
										
						_nearestSpawnArrow = [BEW_v_SpawnArrows, player] call BIS_fnc_nearestPosition;

						if (_nearestSpawnArrow distance2d player < 100) then {

							if (_debug) then {systemchat "spawn arrow found"};
													
							player setPosASL getPosASL _nearestSpawnArrow;
							player setDir getDir _nearestSpawnArrow;
	
						}else{
						
								if (_debug) then {systemchat "no spawn arrow"};
						
						};	
					
					};
				
			};

	};