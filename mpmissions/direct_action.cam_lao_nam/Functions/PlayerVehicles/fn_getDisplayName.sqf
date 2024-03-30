	
	private ["_displayName"];
	
	_type = param [0];
	_debug = param [1, FALSE];
	
	_type = switch (typeName _type) do {
	
		case "OBJECT"	:	{typeOf _type};
		case "STRING"	:	{_type};
		default {_type};
	
	};
	
	
	_customDisplayNameArray = [
		
		["B_Plane_Fighter_01_Stealth_F", "F/A-181 Black Wasp II (CAP)"],
		["B_Plane_Fighter_01_F", "F/A-181 Black Wasp II (MR)"],
		["B_Plane_Fighter_01_Cluster_F", "F/A-181 Black Wasp II (CAS)"],
		
		["I_Plane_Fighter_03_dynamicLoadout_F", "A-143 Buzzard (MR)"],
		["I_Plane_Fighter_03_Cluster_F", "A-143 Buzzard (CAS)"],
		["I_Plane_Fighter_04_F", "A-149 Gryphon (CAP)"],
		["I_Plane_Fighter_04_Cluster_F", "A-149 Gryphon (CAS)"],
		
		["B_Truck_01_covered_F", "HEMTT Transport"],
		
		["B_UAV_02_dynamicLoadout_F", "MQ-4A Greyhawk (Unarmed)"]
		
		
		
	
	];
	
	_customNamesFilter = (_customDisplayNameArray select {(_x select 0 == _type)});
	
	if (count _customNamesFilter > 0) then {
	
	
		_displayName = (_customNamesFilter select 0 select 1);
	
	}else{
	
		_displayName = [configFile >> "CfgVehicles" >> _type] call BIS_fnc_displayName;
	
	};
	
	if (_debug) then {
	
		systemchat str _displayName;
	
	};
	
	_displayName