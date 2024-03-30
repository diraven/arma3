

private [

	"_veh", 
	"_pos", 
	"_origPos",
	"_dir", 
	"_faction", 
	"_originalFaction",
	"_newType", 
	"_origType", 
	"_missionLevel", 
	"_vehicleData",
	"_respawnDelay", 
	"_spawnAsSimpleObject",
	"_mobileSpawnPoint",
	"_abandonedRadius", 
	"_varName", 
	"_displayName",
	"_objectToAttach"

];

	_vehicleData = _this;

	_veh = _vehicleData select 0;
	_pos = _vehicleData select 1;
		_origPos = _pos;
	_dir = _vehicleData select 2;
	
	_types = _vehicleData select 3;
		_newType = _types select 0;
		_origType = _types select 1;

	_vehFactions = _vehicleData select 4; 
		_faction = _vehFactions select 0;
		_originalFaction = _vehFactions select 1;
		
	_missionLevel = _vehicleData select 5;
	_forcedVarname = _vehicleData select 6; 
	_objectToAttach = _vehicleData select 7;
	_respawnDelay = _vehicleData select 8;
	_spawnAsSimpleObject = _vehicleData select 9;
	_mobileSpawnPoint = _vehicleData select 10;
	
	
	_abandonedRadius = param [8, 1000];	
	
	// Spawn Pos
	
		_spawnPos = _origPos;
		
	
	// Delete Original Vehicle
	
		[_veh] remoteexec ["deleteVehicle", 2];
	

	// Delay
	
		sleep 0.5;
		

	// Create New Vehicle

		_veh = createVehicle [_newType, _spawnPos, [], 0, "CAN_COLLIDE"];
		
	
	// Reposition New Vehicle

		_veh setPosASL _spawnPos;
		_veh setDir _dir;
	
	
		
	// Vehicle Init

		_varName = [_veh, _faction, _missionLevel, _mobileSpawnPoint, _forcedVarname] call BEW_FNC_SpawnVehicleInit;
	
	
	// Respawn
	
		[_veh, _vehicleData] spawn BEW_FNC_spawnVehicleRespawn;