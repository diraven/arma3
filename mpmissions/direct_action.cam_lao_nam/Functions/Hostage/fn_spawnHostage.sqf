	if (BEW_V_airSuperiority) exitWith {};
	
	private ["_centerPos", "_radius", "_buildingTypes"];

	_centerPos = param [0, getPos player];
	_radius = param [1, 100];
	_parentTask = param [2];
	
	_buildingTypes = [

		"Land_Cargo_Tower_V1_No1_F", 
		"Land_Cargo_Tower_V1_No2_F", 
		"Land_Cargo_Tower_V1_No3_F", 
		"Land_Cargo_Tower_V1_No4_F", 
		"Land_Cargo_Tower_V1_No5_F", 
		"Land_Cargo_Tower_V1_No6_F", 
		"Land_Cargo_Tower_V1_No7_F", 
		"Land_Cargo_Tower_V3_F", 
		"Land_Cargo_Tower_V1_F", 
		"Land_Cargo_Tower_V2_F", 
		"Land_i_Barracks_V1_F", 
		"Land_i_Barracks_V2_F", 
		"Land_u_Barracks_V2_F", 
		"Land_Cargo_House_V3_F", 
		"Land_Cargo_House_V1_F", 
		"Land_Medevac_house_V1_F", 
		"Land_Cargo_House_V2_F", 
		"Land_Cargo_HQ_V3_F",
		"Land_Cargo_HQ_V1_F",
		"Land_Medevac_HQ_V1_F", 
		"Land_Cargo_HQ_V2_F",
		"Land_MilOffices_V1_F"

	];
	
	// Define Positions
		
		_buildingPositionsArray = [_centerPos, _radius, _buildingTypes] call BEW_fnc_findPositionsInNearBuildings;
		_selectedPosition = _buildingPositionsArray select 0;


	// Define Nearest Building To Position
	
		_nearestBuilding = nearestBuilding _selectedPosition;
	
	
	// Create Hostage
	
		_hostage = objNull;
	
		_hostageType = "B_officer_F";
		_hostageType = [_hostageType] call BEW_FNC_TranslateClassNames;
	
		_hostage = (createGroup civilian) createUnit [_hostageType, _selectedPosition, [], 0, "NONE"];
	
		_hostage setDir getDir _nearestBuilding;
		_hostage setDamage 0.8;
		removeAllItems _hostage;
		removeAllWeapons _hostage;
		removeHeadgear _hostage;
		_hostage unassignItem "NVGoggles"; 
		_hostage removeItem "NVGoggles";
			
		_hostage setCaptive TRUE;
		_hostage disableAI "MOVE";
		_hostage disableAI "TARGET";
		_hostage disableAI "AUTOTARGET";
		_hostage setUnitPos "MIDDLE";
		_hostage setVariable ["HostageRescued", false, true];
		
		
	// Give Hostage Loadout
	
		[_hostage] call BEW_FNC_SwitchLoadout;
		
		
	// Create Action
	
		[_hostage, _parentTask] call BEW_FNC_hostageAction;
		
		
	// Hostage Despawn
	
		[_hostage] spawn BEW_FNC_hostageDespawn;
		
		
	_hostage
		