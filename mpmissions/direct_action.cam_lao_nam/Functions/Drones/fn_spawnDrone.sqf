	
	_caller = param [0];
	_type = param [1];
	_respawnDelay = 30;
	
	//_displayName = [configFile >> "CfgVehicles" >> _type] call BIS_fnc_displayName;
	_displayName = [_type] call BEW_FNC_GetDisplayName;


	// Select Nearest Trigger
	
		_nearestTrigger = [BEW_v_droneTriggers, _caller] call BIS_fnc_nearestPosition;

	
	// Define Pos And Dir

		_pos = getPosASL _nearestTrigger;
		_dir = triggerArea _nearestTrigger select 2;

	
	// Check If Trigger Empty

		if !(triggerActivated _nearestTrigger) then {
		

			// Create Drone
			
				_drone = _type createVehicle _pos;
			
			
			// Create Drone Crew
			
				createVehicleCrew _drone;
			
			
			// Set Callsign
				
				_callsign = format ["%1", name _caller];
				
				group _drone setGroupIdGlobal [_callsign];
				
			
			// Setup Drone
			
				_drone flyInHeight 500;
				[_drone] call BEW_FNC_customPylonLoadouts;
				[_drone] call BEW_FNC_customVehicleWeapons;
				_drone setVariable ["canRespawn", true, true];
				
			
			// Add To Active Drones Array
			
				BEW_v_activeDrones pushBackUnique _drone;
					publicVariable "BEW_v_activeDrones";
					
				
			// Set Drone Position And Dir 
			
				_drone setPosASL _pos;
				_drone setDir _dir;
				
			
			// Define Nearest Spawn Marker
			
				_nearestSpawnArrow = [BEW_v_SpawnArrows, _drone] call BIS_fnc_nearestPosition;
				
				private ["_nearestSpawnName"];
				
				if (_drone distance2D _nearestSpawnArrow > 100) then {
				
					_nearestSpawnName = str (mapGridPosition getPosASL _drone);
			
				}else{
					
					_nearestSpawnName = _nearestSpawnArrow getVariable ["spawnPointName", "Spawn Point"];
				
				};
			
			
			// Hint When Complete
			
				_message = format ["You Have Spawned A %1 At %2", _displayName, _nearestSpawnName];
				[_message] remoteExec ["hint", _caller];
				
				
			// Wait Until Drone Dead
			
				[_drone, _respawnDelay] spawn {
				
					_drone = _this select 0;
					_respawnDelay = _this select 1;
			
			
					waitUntil {!alive _drone};
			
			
					// Flip Respawn Delay Flag
					
						BEW_v_droneRespawnDelay = TRUE;
							publicVariable "BEW_v_droneRespawnDelay";
			
			
					// Remove From Active Drones Array

						BEW_v_activeDrones = BEW_v_activeDrones - [_drone];
							publicVariable "BEW_v_activeDrones";
							
							
						sleep _respawnDelay;
					
					
					// Flip Respawn Delay Flag
					
						BEW_v_droneRespawnDelay = FALSE;
							publicVariable "BEW_v_droneRespawnDelay";
	
				};

		}else{

			["Cannot Spawn Drone - Spawn Position Is Not Empty"] remoteExec ["hint", _caller];

		};
		
	
