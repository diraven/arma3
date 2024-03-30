	
	// Drone Consoles
	
		BEW_v_droneConsoles = getMissionLayerEntities "droneConsoles" select 0;
			publicVariable "BEW_v_droneConsoles";
	
	
	// Drone Triggers
			
		BEW_v_droneTriggers = getMissionLayerEntities "droneSpawnTriggers" select 0;
			publicVariable "BEW_v_droneTriggers";
		
		
	//Active Drones
	
		BEW_v_activeDrones = [];
			publicVariable "BEW_v_activeDrones";
			
			
	// Setup Respawn Delay Flag
					
		BEW_v_droneRespawnDelay = FALSE;
			publicVariable "BEW_v_droneRespawnDelay";