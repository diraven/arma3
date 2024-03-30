	
		_pos = param [0, player];
		_origPos = _pos;
			
			_pos = switch (typeName _origPos) do {
			
				case "ARRAY"	: {_origPos};
				case "OBJECT"	: {(_origPos modelToWorld [0,3,0])};
				case "STRING" 	: {markerPos _origPos};
				default {_origPos};
			
			};
			
			_dir = switch (typeName _origPos) do {
			
				case "ARRAY"	: {random 360};
				case "OBJECT"	: {getDir _origPos};
				case "STRING" 	: {markerDir _origPos};
				default {random 360};
			
			};
		
		_type = param [1, "B_CargoNet_01_ammo_F"];
		_deployableType = param [2, "OUTPOST"];
		_playerSide = param [3, WEST];
			
		// Create Vehicle

			_obj = createVehicle [_type, _pos, [], 0, "CAN_COLLIDE"];


		// Setup Vehicle

			_obj setDir _dir;
			_obj allowDamage false;
			
			if (typeName _origPos == "OBJECT") then {
			_obj attachTo [_origPos, [0,1.1,0], "pelvis"];
			};
					
			clearMagazineCargoGlobal _obj;
			clearWeaponCargoGlobal _obj;
			clearBackpackCargoGlobal _obj;
			clearItemCargoGlobal _obj;
			_obj setVariable ["canUnload", TRUE, TRUE];
			
			if (_obj isKindOf "StaticWeapon") then {
			
				_obj enableWeaponDisassembly false;
			
			};
			
		// Add To Array
		
			BEW_v_supplyCrates pushBack _obj;
				publicVariable "BEW_v_supplyCrates";

			
		// Global VarName

			_varName = [_obj, "Vehicle_"] call bis_fnc_objectvar;
			_obj setvehiclevarname _varName;


		// Allow Pickup

			_obj setVariable ["BEW_V_CanCarry", TRUE, TRUE];
			_obj setVariable ["BEW_V_Rescale", 0.5, TRUE];
			
			
		// Rescale
						
				_scale = _obj getVariable ["BEW_V_Rescale", 1];
				
				if !(_scale == 1) then { 
			
					_obj setObjectScale _scale;
					
				};
			
			
		// Can Respawn
		
			_obj setVariable ["canRespawn", true, true];
			
			
		// Outpost
				
				if (toUpper _deployableType == "OUTPOST") then {
					
					[_obj] spawn BEW_FNC_outpostActions;
					_obj setVariable ["dontHide", TRUE, TRUE];
					
				};
				
			// Repair Station
		
				if (toUpper _deployableType == "REPAIR") then {
				
					[_obj] spawn BEW_FNC_repairStationActions;
					_obj setVariable ["dontHide", TRUE, TRUE];
				
				};
		
				
		// Wait Until Supplies Lost Or Destroyed
		
			[_obj, _playerSide] spawn {
			
				_obj = _this select 0;
				_playerSide = _this select 1;
				
				_sideColor = switch (_playerSide) do {
				
					case WEST :	{"colorBLUFOR"};
					case EAST :	{"colorOPFOR"};
					default {"colorBLUFOR"};
				
				};
				
		
				waitUntil {(!alive _obj) or !(isNil "BEW_v_all_Objectives")};

				waitUntil {sleep 3; (!alive _obj) or (underwater _obj) or (([getPos _obj, BEW_v_all_Objectives select {!(markerColor _x == _sideColor)}] call BEW_FNC_inArrayOfAreas) and (((getPosATL _obj) select 2) < 20))};

			
					// Message If Lost In Enemy  Territory
						
						if (
						
							(([getPos _obj, BEW_v_all_Objectives select {!(markerColor _x == _sideColor)}] call BEW_FNC_inArrayOfAreas) and (((getPosATL _obj) select 	2) < 20))
						
						) then {
						
							// Send Message
					
							[HQ_WEST , "The enemy have captured our supplies! Try to be more careful next time."] remoteExec ["sideChat", 0];
						
						};
					
					
					// Message If Lost Underwater
					
						if (underwater _obj) then {
						
							// Send Message
					
							[HQ_WEST , "Our supplies have been lost at sea! Try to be more careful next time."] remoteExec ["sideChat", 0];
						
						};
						
				// Remove From Array And Delete
				
					BEW_v_supplyCrates = BEW_v_supplyCrates - [_obj];
						publicVariable "BEW_v_supplyCrates";
			
					deleteVehicle _obj;
				
		};
		
		_obj
