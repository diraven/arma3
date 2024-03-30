private ["_veh", "_objs", "_pos", "_dir", "_type", "_textures", "_missionLevel"];

_objs = getMissionLayerEntities "Supplies" select 0; 

_spawnInterval = 0.25;

sleep 3;

{	

	_obj = _x;

	_pos = getPosATL _obj;
	_dir = getDir _obj;
	_type = typeOf _obj;
	_missionLevel = _obj getVariable "missionLevel";
	_outpost = _obj getVariable ["outpost", false];
	_repairStation = _obj getVariable ["repairStation", false];
	_respawnDelay = _obj getVariable ["respawnDelay", 30];
	_abandonedRadius = _obj getVariable ["abandonedRadius", 1000];
	
	
	sleep _spawnInterval;
	
	
	// Exit If Air Superiority
	
		if ((BEW_V_airSuperiority)) then {
		
			_obj = [_obj] call QS_fnc_simpleObjectReplaceWith;
			_obj allowDamage false;
		
		
		}else{
		
			
			deleteVehicle _obj;
			
			
			// Run Spawn Supplies Script
			
				[_obj, _pos, _dir, _type, _missionLevel, _outpost, _repairStation,_respawnDelay, _abandonedRadius] spawn BEW_FNC_spawnSupplies;
				
		};
	
} forEach _objs;