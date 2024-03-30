
	_veh = param [0];
	_allVehiclePylonData = param [1];
	_allTurrets = typeOf _veh call BIS_fnc_allTurrets;

	{

		// Set Loadout
			
			_vehiclePylonData = _x;
			_classnames = _vehiclePylonData select 0;	
			_loadout = _vehiclePylonData select 1;
					
			{
			
				private ["_classname", "_turret", "_weaponClassName", "_weaponClassNameData"];
				
				_classname = _x;
		
				_pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf _veh >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
							
				if (typeOf _veh == _classname) then {

					_pylonLoadout = _vehiclePylonData select 1;

						if ((_veh isKindOf "UAV") or (_veh isKindOf "UAV_03_base_F")) then {
							
							for "_i" from 1 to (count _pylonLoadout) do {

								_arrayPosition = _i - 1;
								_veh setPylonLoadout [_i, _pylonLoadout select _arrayPosition, true, [0]];

							};

						}else{
							
							// Remove Existing Weapons
	
								[_veh] call BEW_FNC_RemovePylonWeapons;
							
												
							// Add New Loadout
							
								{
								
									_weaponClassNameData = _x;
									
									// Check For Forced Turret Position
									
										if (typeName _weaponClassNameData == "ARRAY") then {
						
											_weaponClassName = _weaponClassNameData select 0;
											_turret = _weaponClassNameData select 1;
										 
										}else{
										
											_weaponClassName = _weaponClassNameData;
											_turret = _pylonPaths select _forEachIndex; 
										
										};
											
									_veh setPylonLoadout [_forEachIndex + 1, _weaponClassName, true, _turret] 
									
								} forEach _pylonLoadout;							

						};



				};
				
			} forEach _classnames;

	} forEach _allVehiclePylonData;