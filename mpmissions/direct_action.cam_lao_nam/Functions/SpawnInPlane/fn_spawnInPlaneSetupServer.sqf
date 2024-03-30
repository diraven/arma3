
	if !(isServer) exitWith {};
	//if !(worldName in BEW_v_noAirfieldMaps) exitWith {};	

	BEW_v_ActiveSpawnInPlanes = [];
		publicVariable "BEW_v_ActiveSpawnInPlanes";
		
	BEW_v_spawnInPlaneRespawnDelay = FALSE;
		publicVariable "BEW_v_spawnInPlaneRespawnDelay";