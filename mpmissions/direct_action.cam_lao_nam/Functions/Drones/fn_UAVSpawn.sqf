if ((BEW_V_ColdWar or BEW_V_Vietnam or BEW_V_WW2) and !(forceVanilla)) exitWith {};

    _obj = _this select 0;
	_types = _this select 1;

	{
	
		//_displayName = [configFile >> "CfgVehicles" >> _x] call BIS_fnc_displayName;
		_displayName = [_x] call BEW_FNC_GetDisplayName;
		
		_actionText = format ["<t color='#00ff00'>SPAWN %1", _displayName];

			[
			
               _obj,																		// Object the action is attached to
               _actionText,																// Title of the action
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",								// Idle icon shown on screen
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",								// Progress icon shown on screen
				"
				
					(_this distance _target < 3) and 				
					(
					
						(typeOf _this == 'B_Soldier_UAV_F') or 
						((typeOf _this == 'B_soldier_M_F') and BEW_v_BF4Mode) or 
						!(isMultiplayer)
					
					) and 
					(count (activeDrones select {alive _x}) < 1) and (alive _target) and 
					((typeOf _target == 'Land_PCSet_01_screen_F') or (count (_target nearEntities [['Man'], 5] select {typeOf _x == 'B_recon_JTAC_F'}) > 0))
				
				",	// Condition for the action to be shown
                "
				
					(_caller distance _target < 3) and 
					(
					
						(typeOf _caller == 'B_Soldier_UAV_F') or 
						((typeOf _caller == 'B_soldier_M_F') and BEW_v_BF4Mode) or 
						!(isMultiplayer)
					
					) and 
					(count (activeDrones select {alive _x}) < 1) and (alive _target) and 
					(
					
						(typeOf _target == 'Land_PCSet_01_screen_F') or 
						(count (_target nearEntities [['Man'], 5] select {typeOf _x == 'B_recon_JTAC_F'}) > 0)
					
					)
				
				",	// Condition for the action to progress
                {},																			// Code executed when action starts
                {},																			// Code executed on every progress tick
                {
				
					player playActionNow 'PutDown';
					playSound 'click';
					
						_type = _this select 3;
						
							[[_caller, _type], {
							
								private ["_type","_pos", "_dir", "_veh", "_marker", "_caller"];
						
						
								// Create Drone
								
									_caller = _this select 0;
									_type = _this select 1 select 0;
									
									
									if (_type isKindOf 'AIR') then {
										
										_marker = [BEW_v_uavSpawnMarkers, _caller] call BIS_fnc_nearestPosition;
										_nearestHelipad = [BEW_v_uavSpawnHelipads, _caller] call BIS_fnc_nearestPosition;
										
										_pos = getPosATL _nearestHelipad;
										_dir = markerDir _marker;
									
										_veh = createVehicle [_type, _pos, [], 0, 'NONE']; 
					
										if (surfaceIsWater _pos) then {

											_veh setPos _pos;
											_veh setDir _dir;

										}else{
											
											_veh setPos getPosATL uavDroneSpawn;
											_veh setDir getDir uavDroneSpawn;

										};					
										
										createVehicleCrew _veh;
																	
										// Fold Wings
											//_veh animate ["wing_fold_r", 1];
											//_veh animate ["wing_fold_l", 1]; 
											
										//_veh setVelocityModelSpace [0, 100, 0];
										activeDrones = activeDrones + [_veh];
										publicVariable 'activeDrones'; 
										//_displayName = [configFile >> "CfgVehicles" >> _type] call BIS_fnc_displayName;
										_displayName = [_type] call BEW_FNC_GetDisplayName;
										
										[_veh, _displayName] spawn BEW_FNC_movingMarker;
										_veh flyInHeight 500;
										[_veh] call BEW_FNC_customPylonLoadouts;
										[_veh] call BEW_FNC_customVehicleWeapons;
										_veh setVariable ["canRespawn", true, true];
									
									} else {
									
										_marker = 'landDroneSpawn';
										_helipad = landDroneSpawn;
										_pos = getPosATL _helipad;
										_dir = getDir _helipad;
									
										_veh = createVehicle [_type, _pos, [], 0, 'NONE']; 
										_veh setPos _pos;
										createVehicleCrew _veh;
										_veh setDir _dir;										
										activeDrones = activeDrones + [_veh];
										publicVariable 'activeDrones';
										//_displayName = [configFile >> "CfgVehicles" >> _type] call BIS_fnc_displayName;
										_displayName = [_type] call BEW_FNC_GetDisplayName;
										
										[_veh, _displayName] spawn BEW_FNC_movingMarker;
									
									};
									
									//_displayName = [configFile >> "CfgVehicles" >> typeOf _veh] call BIS_fnc_displayName;	
									_displayName = [typeOf _veh] call BEW_FNC_GetDisplayName;									
									_message = format ["%1 has spawned a %2 at the %3", name _caller, _displayName, markerText _marker];
									[_message] remoteExec ["systemChat", 0];
									_veh setVariable ["canRespawn", true, true];
									
							// Sync UAV and Operator 
									
									[ _veh, {
									
										_veh = _this;
									
										if (isMultiplayer) then {
										
											{
												
												_veh synchronizeObjectsAdd [_x];
											
											} forEach (allplayers select {typeOf _x == "B_Soldier_UAV_F"});
											
										}else{
										
											_veh synchronizeObjectsAdd [player];
										
										};
	
									}] remoteExec ["bis_fnc_call", 0]; 
																		

							}] remoteExec ["bis_fnc_call", 2]; 
					
				   
                },																			// Code executed on completion
                {},																			// Code executed on interrupted
                [_x],																		// Arguments passed to the scripts as _this select 3
                2,																			// Action duration [s]
                98,																			// Priority
               false,																		// Remove on completion
               false																		// Show in unconscious state
				
			] remoteExec ["BIS_fnc_holdActionAdd", 0, true];
			
			
		
		
	} forEach _types;