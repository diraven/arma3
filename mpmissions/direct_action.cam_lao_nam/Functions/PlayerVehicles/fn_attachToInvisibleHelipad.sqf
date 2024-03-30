	private ["_attachHelipad"];
	
	
	_veh = param [0];
	_pos = param [1, getPosATL _veh];
	_dir = param [2, getDir _veh];
	_debug = FALSE;
	
	
	// Check Blacklist
	
		_blacklist = [] call BEW_FNC_attachHelipadBlacklist;
		
		if (typeOf _veh in _blacklist) then {
		
			_attachHelipad = objNull;
			
		}else{
	
			
			// Attach To Helipad

				_attachHelipad = createVehicle ["Land_HelipadEmpty_F", _pos, [], 0, "CAN_COLLIDE"];
				_attachHelipad setDir _dir;
				[_veh, _attachHelipad, true] call BIS_fnc_attachToRelative;
				

			// Add Invisible Helipad To Array
			
				if (isNil "BEW_v_vehicleAttachHelipads") then {
				
					BEW_v_vehicleAttachHelipads = [];
				
				};
				
				BEW_v_vehicleAttachHelipads pushBackUnique _attachHelipad;
				
				
			// Set Variable
			
				_veh setVariable ["attachHelipad", _attachHelipad, true];
				
			
			// Debug
				
				if (_debug) then {
				
					systemchat format ["%1 Attach Helipads", count BEW_v_vehicleAttachHelipads];
				
				};
		
		};
		
	_attachHelipad