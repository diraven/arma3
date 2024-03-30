		
		_objectiveMarker = _this select 0;
			_markerText = markerText _objectiveMarker;
		_missionType = _this select 1;
		
		_missionTypeText = switch (_missionType) do {
		
			case "DESTROY_VEHICLE"		: 	{"Destroy Armored Vehicle"};	
			case "DESTROY_STRUCTURE"	: 	{"Destroy Enemy Structure"};			
			case "REPAIR_VEHICLE"		:	{"Recover Friendly Vehicle"};				
			case "RESCUE_PILOT"			:	{"Rescue Friendly Pilot"};
			case "SUPPLY_DROPS"			: 	{"Recover Supply Drops"};			
			case "POWER_STATION"		:	{format ["Repair %1", _markerText]};				
			case "ENEMY_AIRFIELD"		:	{"Steal Enemy Aircraft"};
			case "DESTROY_TOWER"		: 	{"Destroy Tower"};			
			case "SUNKEN_INTEL"			:	{"Recover Sunken Intel"};				
			case "ENEMY_CAMP"			:	{format ["Capture %1", _markerText]};
			case "BEACHHEAD"			:	{format ["Capture %1", _markerText]};
			case "DEFEND"				:	{format ["Defend %1", _markerText]};
			case "CAPTURE_SMALL"		:	{format ["Eliminate Enemy Force At %1", _markerText]};
			
			default {"Mission Text Not Defined"};
			
		};
		

		_markerColor = switch (_missionType) do {
		
			case "DESTROY_VEHICLE"		: 	{"ColorYellow"};	
			case "DESTROY_STRUCTURE"	: 	{"ColorYellow"};				
			case "REPAIR_VEHICLE"		:	{"ColorYellow"};				
			case "RESCUE_PILOT"			:	{"ColorYellow"};
			case "SUPPLY_DROPS"			: 	{"ColorYellow"};			
			case "POWER_STATION"		:	{"ColorYellow"};				
			case "ENEMY_AIRFIELD"		:	{"ColorOPFOR"};
			case "DESTROY_TOWER"		: 	{"ColorYellow"};			
			case "SUNKEN_INTEL"			:	{"ColorYellow"};				
			case "ENEMY_CAMP"			:	{"ColorOPFOR"};
			case "BEACHHEAD"			:	{"ColorOPFOR"};
			case "DEFEND"				:	{"ColorYellow"};
			case "CAPTURE_SMALL"		:	{"ColorOPFOR"};
			
			default {"ColorYellow"};
			
		};
		
		
		_message = switch (_missionType) do {
		
			case "DESTROY_VEHICLE"		: 	{"We have intel there is an enemy armoured vehicle operating in your area at %1. Check your map for the location."};	
			case "DESTROY_STRUCTURE"	: 	{"We have intel there is an enemy structure in the area at %1. Check your map for the location."};				
			case "REPAIR_VEHICLE"		:	{"We have intel there is a friendly vehicle needing recovery at %1. Check your map for the location."};			
			case "RESCUE_PILOT"			:	{"We have intel there is a downed friendly pilot in your area needing assistance at %1. Check your map for the location."};
			case "SUPPLY_DROPS"			: 	{"We have intel there are supply drops needing recovery at %1. Check your map for the location."};			
			case "POWER_STATION"		:	{"We have intel the enemy has sabotaged a power plant at %1. We need you to repair it. Check your map for the location."};				
			case "ENEMY_AIRFIELD"		:	{"We have intel there is an enemy aircraft at %1. We need you to steal the vehicle and get it back to base so our engineers can study it."};
			case "DESTROY_TOWER"		: 	{"We have intel there is a enemy transmitter at %1 that we need taken out. Check your map for the location."};			
			case "SUNKEN_INTEL"			:	{"We have intel there is a friendly aircraft carrying vital data on the seabed somewhere at %1. Check your map for the location."};				
			case "ENEMY_CAMP"			:	{"We have intel there is an enemy camp at %1 we need to neutralise. Check your map for the location."};
			case "BEACHHEAD"			:	{"We need you to secure the beachhead at %1 and neutralise the enemy forces. Check your map for the location."};
			case "DEFEND"				:	{"There is an enemy airborne force enroute to %1. We must move to defend the position."};
			case "CAPTURE_SMALL"		:	{"We have intel there is an enemy force in the region of %1. We need you to secure the area."};
			
			default {"Message not configured"};
			
		};
		
		
		_forceTypes = switch (_missionType) do {
		
			case "DESTROY_VEHICLE"		: 	{["OPF_1", "OPF_2"]};	
			case "DESTROY_STRUCTURE"	: 	{["OPF_1", "OPF_2"]};			
			case "REPAIR_VEHICLE"		:	{["OPF_1", "OPF_2"]};					
			case "RESCUE_PILOT"			:	{["OPF_1", "OPF_2"]};	
			case "SUPPLY_DROPS"			: 	{["OPF_1", "OPF_2"]};				
			case "POWER_STATION"		:	{["OPF_1", "OPF_2"]};					
			case "ENEMY_AIRFIELD"		:	{["OPF_1", "OPF_2"]};	
			case "DESTROY_TOWER"		: 	{["OPF_1", "OPF_2"]};				
			case "SUNKEN_INTEL"			:	{["OPF_1", "OPF_2"]};					
			case "ENEMY_CAMP"			:	{["OPF_1", "OPF_2"]};	
			case "BEACHHEAD"			:	{["OPF_1", "OPF_2"]};
			case "DEFEND"				:	{["OPF_1", "OPF_2"]};	
			case "CAPTURE_SMALL"		:	{["OPF_1", "OPF_2"]};
			
			default {["OPF_1", "OPF_2"]};	
			
		};
		
		
	_missionArray = [_missionTypeText, _markerColor, _message, _forceTypes];
	
	_missionArray
	
	