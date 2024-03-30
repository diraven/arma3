
private ["_objectiveData"];

	_objectiveData = switch (true) do {
		
		case BEW_v_Zombies : {
			
			[
		
				// Military Objectives
								
					[
					
						"Military", 
						"MAIN", 
						["INFECTION"]
					
					],
				
				
				// Beachhead Objectives	
				
					[
					
						"Beachhead", 
						"MAIN", 
						["INFECTION"]
					
					],
				
				
				// Infection Objectives
				
					[
					
						"Infection", 
						"MAIN", 
						["INFECTION"]
					
					],
							
				
				// POW Camp Objectives	
				
					[
					
						"PowCamp", 
						"SIDE", 
						["INFECTION"]
					
					],
					
				
				// Military Small Objectives	
					
					[
					
						"MilitarySmall", 
						"SIDE", 
						["INFECTION"]
					
					],
					
					
				// Industrial Objectives	
					
					[
					
						"Industrial", 
						"SIDE", 
						["REPAIR_VEHICLE", "SUPPLY_DROPS", "KILL_CREATURE"]
						
					],
					
					
				// Airfield Objectives	
					
					[
					
						"Airfield", 
						"MAIN", 
						["INFECTION"]
					
					],
					
					
				// Port Objectives	
					
					[
					
						"Port", 
						"SIDE", 
						["SUPPLY_DROPS"]
					
					],
					
					
				// Town Objectives	
					
					[
					
						"Town", 
						"SIDE", 
						["REPAIR_VEHICLE", "SUPPLY_DROPS", "KILL_CREATURE"]
						
					],
					
					
				// Power Plant Objectives	
					
					[
					
						"Power", 
						"SIDE", 
						["REPAIR_VEHICLE", "SUPPLY_DROPS", "KILL_CREATURE"]
					
					],
					
					
				// Tower Objectives	
					
					[
					
						"Tower", 
						"SIDE", 
						["ESTABLISH_COMMS"]
					
					],
					
					
				// Sea Objectives		
				
					[
					
						"Sea", 
						"SIDE", 
						["INFECTION"]
					
					],
					
					
				// Destroy Structure Objectives	
					
					[
					
						"DestroyStructure", 
						"SIDE", 
						["REPAIR_VEHICLE", "SUPPLY_DROPS", "KILL_CREATURE"]
					
					],
					
				
				// Research Facility Objectives	
					
					[
					
						"ResearchFacility", 
						"SIDE", 
						["INFECTION"]
					
					]
					
					
			];
			
		};
		
		default {
			
			[
		
				// Military Objectives
								
					[
					
						"Military", 
						"MAIN", 
						["MILITARY"]
					
					],
				
				
				// Beachhead Objectives	
				
					[
					
						"Beachhead", 
						"MAIN", 
						["BEACHHEAD"]
					
					],
				
				
				// Infection Objectives
				
					[
					
						"Infection", 
						"MAIN", 
						["INFECTION"]
					
					],
							
				
				// POW Camp Objectives	
				
					[
					
						"PowCamp", 
						"SIDE", 
						["RESCUE_PILOT"]
					
					],
					
				
				// Military Small Objectives	
					
					[
					
						"MilitarySmall", 
						"SIDE", 
						["MILITARY_SMALL"]
					
					],
					
					
				// Industrial Objectives	
					
					[
					
						"Industrial", 
						"SIDE", 
						["MILITARY_SMALL", "RESCUE_PILOT", "REPAIR_VEHICLE", "SUPPLY_DROPS", "DESTROY_VEHICLE"]
						
					],
					
					
				// Airfield Objectives	
					
					[
					
						"Airfield", 
						"MAIN", 
						["AIRFIELD"]
					
					],
					
					
				// Port Objectives	
					
					[
					
						"Port", 
						"SIDE", 
						["SUPPLY_DROPS"]
					
					],
					
					
				// Town Objectives	
					
					[
					
						"Town", 
						"SIDE", 
						["MILITARY_SMALL", "RESCUE_PILOT", "REPAIR_VEHICLE", "SUPPLY_DROPS", "DESTROY_VEHICLE"]
						
					],
					
					
				// Power Plant Objectives	
					
					[
					
						"Power", 
						"SIDE", 
						["MILITARY_SMALL", "RESCUE_PILOT", "REPAIR_VEHICLE", "SUPPLY_DROPS", "DESTROY_VEHICLE"]
					
					],
					
					
				// Tower Objectives	
					
					[
					
						"Tower", 
						"SIDE", 
						["TOWER"]
					
					],
					
					
				// Sea Objectives		
				
					[
					
						"Sea", 
						"SIDE", 
						["MILITARY_SMALL"]
					
					],
					
					
				// Destroy Structure Objectives	
					
					[
					
						"DestroyStructure", 
						"SIDE", 
						["DESTROY_STRUCTURE"]
					
					],
					
				
				// Destroy Structure Objectives	
					
					[
					
						"ResearchFacility", 
						"SIDE", 
						["MILITARY_SMALL"]
					
					]
					
			];
			
		};
	
	};

	
	
	
	if ((BEW_v_WW2) and ("SUPPLY_DROPS" in _objectiveData)) then {
	
		_objectiveData = _objectiveData - ["SUPPLY_DROPS"];
	
	};
	
	_objectiveData