	
	_missionData = [
		
		
		// Military Mission Type
		
			[
				
				"MILITARY",						// Objective Type
				650,							// Activation Radius
				300,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Capture",						// Marker Text
				"We have intel there is an enemy camp at %1 we need to neutralise. Check your map for the location.",		// Discovery Message
				"attack" // Task Type
				
			],
			
		
		// Defend Main Mission Type
		
			[
				
				"DEFEND_MAIN",					// Objective Type
				650,							// Activation Radius
				300,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Defend",						// Marker Text
				"There is an enemy airborne force enroute to %1. We must move to defend the position.",		// Discovery Message
				"defend" // Task Type
				
			],
		
		
		// Airfield Mission Type
		
			[
				
				"AIRFIELD",						// Objective Type
				650,							// Activation Radius
				300,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Steal Enemy Aircraft At",		// Marker Text
				"We have intel there is an enemy aircraft at %1. We need you to steal the vehicle and get it back to base so our engineers can study it.",		// Discovery Message
				"plane"
				
			],
		
		
		// Beachhead Mission Type
		
			[
				
				"BEACHHEAD",					// Objective Type
				800,							// Activation Radius
				300,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Secure Beachhead At",			// Marker Text
				"We need you to secure the beachhead at %1 and neutralise the enemy forces. Check your map for the location.",		// Discovery Message
				"attack"
				
			],
			
			
		// Infection Mission Type
		
			[
				
				"INFECTION",					// Objective Type
				650,							// Activation Radius
				300,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Clear",						// Marker Text
				"We need to clear the infected area at %1. Check your map for the location.",		// Discovery Message
				"attack" // Task Type
				
			],
		

		// Military Small Mission Type
		
			[
				
				"MILITARY_SMALL",				// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Capture",						// Marker Text
				"We have intel there is an enemy force in the region of %1. We need you to secure the area.",		// Discovery Message
				"attack"
				
			],
		

		// Tower Mission Type
		
			[
				
				"TOWER",						// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Destroy Tower At",				// Marker Text
				"We have intel there is a enemy transmitter at %1 that we need taken out. Check your map for the location.",		// Discovery Message
				"destroy"
				
			],
			
			
		// Tower Mission Type
		
			[
				
				"ESTABLISH_COMMS",				// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Establish Comms At",				// Marker Text
				"There is a transmitter at %1. We need to you get to it and establish communications with our allies. Check your map for the location.",		// Discovery Message
				"interact"
				
			],
		
		
		// Kill Creature
		
			[
				
				"KILL_CREATURE",				// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1"],	// Allowed Factions
				"Hunt Creature At",				// Marker Text
				"There's a creature at %1. We need it taken out. Check your map for the location.",		// Discovery Message
				"destroy"
				
			],
		
		
		// Recover Vehicle Mission Type
		
			[
				
				"REPAIR_VEHICLE",				// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Recover Vehicle At",			// Marker Text
				"We have intel there is a friendly vehicle needing recovery at %1. Check your map for the location.",		// Discovery Message
				"car"
				
			],
			
			
		// Supply Drops Mission Type
		
			[
				
				"SUPPLY_DROPS",					// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Recover Supply Drops At",		// Marker Text
				"We have intel there are supply drops needing recovery at %1. Check your map for the location.",	// Discovery Message
				"container"
					
			],
		
		
		// Defend Small Mission Type
		
			[
				
				"DEFEND_SMALL",					// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Defend",						// Marker Text
				"There is an enemy airborne force enroute to %1. We must move to defend the position.",		// Discovery Message
				"defend"
				
			],
			
			
		// Rescue Pilot Mission Type
		
			[
				
				"RESCUE_PILOT",					// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Rescue Pilot At",				// Marker Text
				"We have intel there is a downed friendly pilot in your area needing assistance at %1. Check your map for the location.",		// Discovery Message
				"run"
					
			],
			
			
		// Destroy Structure Mission Type
		
			[
				
				"DESTROY_STRUCTURE",			// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Destroy Enemy Structure At",	// Marker Text
				"We have intel there are supply drops needing recovery at %1. Check your map for the location.",		// Discovery Message
				"destroy"
					
			],
			
		
		// Destroy Vehicle
		
			[
				
				"DESTROY_VEHICLE",				// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Destroy Armored Vehicle At",	// Marker Text
				"We have intel there is an enemy armoured vehicle operating in your area at %1. Check your map for the location.",		// Discovery Message
				"destroy"
					
			],
			
		
		// Repair Power Plant
		
			[
				
				"POWER_PLANT",					// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Repair Power Station At",		// Marker Text
				"We have intel the enemy has sabotaged a power plant at %1. We need you to repair it. Check your map for the location.",		// Discovery Message
				"repair"
					
			],
			
			
		// POW Camp
		
			[
				
				"POW_CAMP",					// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Rescue prisoners at",		// Marker Text
				"We have intel the enemy is holding a number of POWS at %1. We need you to break them out. Check your map for the location.",		// Discovery Message
				"run"
					
			],
			
			
		// Research Facility
		
			[
				
				"RESEARCH_FACILITY",			// Objective Type
				400,							// Activation Radius
				150,							// Activated Objective Size
				["OPF_1", "OPF_2", "OPF_3"],	// Allowed Factions
				"Gather intel at",				// Marker Text
				"We have intel the enemy has a weapons research facility at %1. We need you to assault the facility and gather as much data as you can find. Check your map for the location.",		// Discovery Message
				"run"
					
			]
	
	];
	
	_missionData