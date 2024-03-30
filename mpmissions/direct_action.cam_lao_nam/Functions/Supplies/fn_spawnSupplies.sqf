	
	_obj = param [0];
	_pos = param [1];
	_dir = param [2];
	_type = param [3];
	_missionLevel = param [4];
	_outpost = param [5, false];
	_repairStation = param [6, false];
	_respawnDelay = param [7, 10];
	_abandonedRadius = param [8, 1000];
	
		sleep 0.25;
		
	while {true} do { 
		
		// Create Original Dummy Vehicle
		
			_obj = createVehicle [_type, _pos, [], 0, "CAN_COLLIDE"];
			_obj setDir _dir;
		
			sleep 0.25;
		
		// Create Simple Object
		
			_obj = [_obj] call BEW_FNC_ReplaceWithSimpleObject;
			_obj allowDamage false;
			_obj setVariable ["CanBeActivatedSupplies", true, true];
		
			waitUntil {!alive _obj};
			
			sleep 0.25;
			
		// Create Vehicle

			_obj = createVehicle [_type, _pos, [], 0, "CAN_COLLIDE"];


		// Setup Vehicle

			_obj setDir _dir;
			_obj allowDamage false;
			clearMagazineCargoGlobal _obj;
			clearWeaponCargoGlobal _obj;
			clearBackpackCargoGlobal _obj;
			clearItemCargoGlobal _obj;
			_obj setVariable ["canUnload", TRUE, TRUE];
			
			if (_obj isKindOf "StaticWeapon") then {
			
				_obj enableWeaponDisassembly false;
			
			};

			
		// Global VarName

			_varName = [_obj, "Vehicle_"] call bis_fnc_objectvar;
			_obj setvehiclevarname _varName;

			
		// Disable Damage

			_obj allowDamage false;

			waitUntil {missionlevel >= _missionLevel};


		// Allow Pickup

			_obj setVariable ["BEW_V_CanCarry", TRUE, TRUE];
			
		

		// Wait Until Object Moved

			waitUntil {((getPos _obj distance2D _pos) > 1)};

			_obj allowDamage true;
			_obj setVariable ["canRespawn", true, true];
			
		
			// Outpost
				
				if (_outpost) then {
					
					[_obj] spawn BEW_FNC_outpostActions;
					_obj setVariable ["dontHide", TRUE, TRUE];
				
				};
		
		
			// Repair Station
		
				if (_repairStation) then {
					
					[_obj] spawn BEW_FNC_repairStationActions;
					_obj setVariable ["dontHide", TRUE, TRUE];
				
				};
			
		
		// Wait Until Supplies Lost Or Destroyed
		
			waitUntil {(!alive _obj) or !(isNil "BEW_v_all_Objectives")};

			waitUntil {sleep 3; (!alive _obj) or (underwater _obj) or (([getPos _obj, BEW_v_all_Objectives select {!(markerColor _x == "colorBLUFOR")}] call BEW_FNC_inArrayOfAreas) and (((getPosATL _obj) select 2) < 20))};

		
				// Message If Lost In Enemy  Territory
					
					if (
					
						(([getPos _obj, BEW_v_all_Objectives select {!(markerColor _x == "colorBLUFOR")}] call BEW_FNC_inArrayOfAreas) and (((getPosATL _obj) select 	2) < 20))
					
					) then {
					
						// Send Message
				
						[HQ_WEST , "The enemy have captured our supplies! Try to be more careful next time DELTA."] remoteExec ["sideChat", 0];
					
					};
				
				
				// Message If Lost Underwater
				
					if (underwater _obj) then {
					
						// Send Message
				
						[HQ_WEST , "Our supplies have been lost at sea! Try to be more careful next time DELTA."] remoteExec ["sideChat", 0];
					
					};
		
		
			// Respawn
		
				deleteVehicle _obj;

				sleep _respawnDelay;
	
	};
