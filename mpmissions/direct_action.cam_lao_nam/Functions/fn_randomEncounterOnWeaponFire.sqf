
_unit = param [0, player];

	_unit addEventHandler ["Fired", { 

		params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"]; 
			
			_baseSpawnChance = 100;
			_weaponSoundLevelModifier = [_unit] call BEW_FNC_weaponSoundLevelModifier;
			_calculatedChance = _baseSpawnChance * _weaponSoundLevelModifier;
			
			//systemchat str _calculatedChance;
			
			if (random 1000 < _calculatedChance) then {
					
					//systemchat "random encounter spawned";
					
					[[_unit],{
						
						_unit = _this select 0;
						_hunterUnitCap = 15;
						
						if (isNil "BEW_v_HunterUnits") then {BEW_v_HunterUnits = []};
						
						_aliveHunterUnits = BEW_v_HunterUnits select {alive _x};
						
						if (count _aliveHunterUnits <= _hunterUnitCap) then {
						
							_spawnPos = [getPos _unit] call BEW_FNC_findRandomPositionNotNearPlayer;
							_hunterGroup = [_spawnPos, OPF_1_InfantryArray, "OPF_1"] call BEW_FNC_SpawnGroup;	
							BEW_v_HunterUnits append units _hunterGroup;
														
							_wp = _hunterGroup addWaypoint [getPos _unit, 20];
							_wp setWaypointType "SAD";
							

						// Despawn
							
						{
						
							[_x] spawn {
							
								_unit = _this select 0;
							
								_timeout = [30, 
								
									{!(({(alive _x) and (_x distance2D getPos _unit < 500) and !(vehicle _x isKindOf 'air') and (isNull (isVehicleCargo vehicle _x))} count allPlayers) > 0)}
											
								] call BEW_FNC_timeOut;
								
								//systemchat format ["%1 has despawned", _unit];
								
								deleteVehicle _unit;
								
							};
							
						} forEach units _hunterGroup;
							
							
						
						}else{
						
							//systemchat "hunter cap reached";
							
						};
					
					}] remoteExec ["BIS_FNC_Call", 2];
					
				
			}else{
				
					//systemchat "no random encounter";
				
			};

	}];
	
	
	
	
	/*
	
		if ((count BEW_v_currentActiveObjective) > 0) then {
				
				if (_unit inArea (BEW_v_currentActiveObjective select 0)) then {
					
					systemchat "player in current objective";
					
				}else{
					
					systemchat "player not in current objective";
					
					if ((random 100) < _chanceOfEncounter) then {
					
						systemchat "random encounter spawned";
						
						_spawnPos = [getPos _unit] call BEW_FNC_findRandomPositionNotNearPlayer;
						_hunterGroup = [_spawnPos, OPF_1_InfantryArray, "OPF_1"] call BEW_FNC_SpawnGroup;	
						_wp setWaypointType "SAD";
					
					}else{
						
						systemchat "no random encounter";
						
					};
					
				};
				
			}else{
					
				systemchat "no current objective";
				
				if (random 100 < 10) then {
					
						systemchat "random encounter spawned";
						
						_spawnPos = [getPos _unit] call BEW_FNC_findRandomPositionNotNearPlayer;
						_hunterGroup = [_spawnPos, OPF_1_InfantryArray, "OPF_1"] call BEW_FNC_SpawnGroup;	
						_wp = _hunterGroup addWaypoint [getPos _unit, 20];
						_wp setWaypointType "SAD";
						
					
				}else{
					
						systemchat "no random encounter";
					
				};
					
			};
	
	*/
	