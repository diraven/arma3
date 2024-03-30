
	_veh = param [0];
	
	
	// Check Blacklist
	
		_blacklist = [] call BEW_FNC_attachHelipadBlacklist;
		
		if (typeOf _veh in _blacklist) exitWith {};
		
	
	// Define
	
		_attachHelipad = _veh getVariable "attachHelipad";
	
	
	// Detach
	
		detach _veh;
		
		
	// Delete 

		deleteVehicle _attachHelipad;
		
		
	// Remove From Array
	
		BEW_v_vehicleAttachHelipads = BEW_v_vehicleAttachHelipads - [_attachHelipad];
