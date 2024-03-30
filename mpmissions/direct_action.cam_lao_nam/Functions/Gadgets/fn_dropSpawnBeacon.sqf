
if !((typeOf player == "B_soldier_M_F") or BEW_v_Zombies) exitWith {};
if (isNil "BEW_v_spawnBeaconDeployed") then {BEW_v_spawnBeaconDeployed = FALSE;};	
	
	// Add Action
	
		player addAction [ 
			 
			"<t color='#FFC0CB'>- Deploy Spawn Beacon",  
			 
			{
			 
				[] spawn {
					
					// Flip Flag
					
						BEW_v_spawnBeaconDeployed = TRUE;
					
					
					// Switch Weapon 
					
						player action ["SWITCHWEAPON",player,player,-1];
							
						waitUntil {currentWeapon player == ""};
						
						
					// Get Spawn Pos
					
						_spawnPos = player modelToWorld [0,1,0];

					// Create Beacon

						_obj = createVehicle ["SatelliteAntenna_01_Small_Black_F", _spawnPos, [], 0, "CAN_COLLIDE"]; 
					
					
					// Setup Beacon
					
						_obj setVariable ["canRespawn", true, true];
						
						_obj enableSimulationGlobal false;
						_obj allowDamage false;
						
						
					// Moving Marker
					
						[_obj, "", "ColorYellow", "loc_Transmitter", 1, [0.75, 0.75]] spawn BEW_FNC_movingMarker;


					// Create Arrow

						_arrow = createVehicle ["Sign_Arrow_Large_Blue_F", _spawnPos, [], 0, "CAN_COLLIDE"];


						// Hide Arrow
						
							[_arrow, true] remoteExec ["hideObjectGlobal", 2];


						// Attach Arrow
							
							_inHouse = [AGLToASL getpos _obj] call BEW_FNC_InHouse;
							
							private ["_arrowSpawnHeight"];
							
							if (_inHouse) then {
							
								_arrowSpawnHeight = 0;
								
							}else{
								
								_arrowSpawnHeight = 100;
							
							};
							
							_arrow attachTo [_obj, [0, 0, _arrowSpawnHeight]];


						// Create Spawn Point
										
							_spawnBeaconRespawn = [side player, getPos _arrow, "Spawn Beacon"] call BIS_fnc_addRespawnPosition;
							
							
						// Send Messages
								
							hint "Spawn Beacon Deployed";
								
							_beaconPos = (mapGridPosition getPosASL _obj);
							_message = format ["%1 has deployed a spawn beacon at %2", profileName, _beaconPos];
							[_message] remoteExec ["systemchat", 0];
						
						
						// Cooldown
						
							_cooldownTimeout = 300;
							
							BEW_v_spawnBeaconTimeout = TRUE;
							
							while {(_cooldownTimeout > 0) and (BEW_v_spawnBeaconDeployed) and (alive _obj)} do {
								
								sleep 1;
									
								_cooldownTimeout = _cooldownTimeout - 1;	
								
							};
							
							BEW_v_spawnBeaconTimeout = FALSE;			
							
							
						// Flip Flag When Cooldown Done
							
							BEW_v_spawnBeaconDeployed = FALSE;
					
					
					// Setup Timeout
					
						waitUntil {(BEW_v_spawnBeaconDeployed) or !(alive _obj)};
										
										
					// Clean Up
					
							_spawnBeaconRespawn call BIS_fnc_removeRespawnPosition;
							deleteVehicle _obj;
							deleteVehicle _arrow;		
					
				};
			
			} 
					 
		, [], -89.1, false, false, "", "
		
			!(BEW_v_spawnBeaconDeployed) and 
			((typeOf player == 'B_soldier_M_F') or BEW_v_Zombies) and 
			(player getVariable 'GadgetMenu') and 
			(vehicle player == player)
		
		"]; 
	
	
	
	player addAction [ 
		 
		"<t color='#FF0000'>- Spawn Beacon Unavailable - Please Wait",  
		 
		{ 
		
			hint "SPAWN BEACON UNAVAILABLE AT THIS TIME - PLEASE WAIT";
						
		} 
				 
	, [], -89.1, false, true, "", "BEW_v_spawnBeaconTimeout and ((typeOf player == 'B_soldier_M_F') or BEW_v_Zombies) and (player getVariable 'GadgetMenu') and (vehicle player == player)"]; 
	