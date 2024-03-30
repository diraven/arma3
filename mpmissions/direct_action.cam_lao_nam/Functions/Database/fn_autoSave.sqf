	
	if (isNil "OO_INIDBI") exitWith {};
	if !(isMultiplayer) exitWith {};
	if !(isServer) exitWith {};

	_timeBetweenSave = param [0, 300];

	while {true} do {
	
		sleep _timeBetweenSave;

		waitUntil {!(BEW_v_objectiveMissionActive)};
		
		
			// Save Player Data
			
				[TRUE] call BEW_FNC_savePlayerData;
				
				
			// Save Weather
			
				["write", ["Mission Settings", "Time", [dayTime, overcast, rain, fog]]] call BEW_v_dataBase;  
				
				
			// Save Position Of Vehicles
				
				["write", ["Player Data", "Spawned Vehicles", (BEW_v_SpawnedPlayerVehicles apply {[typeOf _x, getPos _x, getDir _x]})]] call BEW_v_dataBase
				

	};