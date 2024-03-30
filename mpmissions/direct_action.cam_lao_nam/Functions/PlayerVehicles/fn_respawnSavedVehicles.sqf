
	if ((isNil "OO_INIDBI") and !(isMultiplayer)) exitWith {};
	if !(BEW_v_persistentPlayerVehicles) exitWith {};
	
	{
		
		_savedVehicleArray = _x;
		_type = _savedVehicleArray select 0;
		_position = _savedVehicleArray select 1;
		_direction = _savedVehicleArray select 2;
		
		_veh = createVehicle [_type, _position, [], 0, "NONE"];
		_veh setDir _direction;
		
		// Vehicle Init
		
			_varname = [_veh] call BEW_FNC_SpawnVehicleInit;
		
		
		// Add To Array

			BEW_v_SpawnedPlayerVehicles pushBack _veh;
			
			
		[_veh] spawn {
		
			_veh = _this select 0;
		
			// Create Triggers

				_allTriggers = [];
			
				// Disabled Trigger 
				
					_disabledTrigger = [_veh, 1200] call BEW_FNC_DisabledTrigger;
					
						_allTriggers pushBack _disabledTrigger;


			// Wait Until Vehicle Dead Or Abandoned

				waitUntil {sleep 3; !(alive _veh) or (triggerActivated _disabledTrigger)};


			// Clean Up Vehicle

				deleteVehicle _veh;
				{deleteVehicle _x} forEach _allTriggers;
				removeAllActions _veh;


			// Remove From Array 

				BEW_v_SpawnedPlayerVehicles = BEW_v_SpawnedPlayerVehicles - [_veh];
				
		};
			
	
	} forEach BEW_v_SavedVehicles