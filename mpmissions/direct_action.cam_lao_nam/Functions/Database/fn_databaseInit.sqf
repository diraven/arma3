	
	if (!(isNil "OO_INIDBI") and (isMultiplayer) and !(BEW_V_airSuperiority)) then {
		
		// Define And Create Database
		
			_databaseName = format ["directAction_%1%2_%3_database", worldName, BEW_v_modPresetString, BEW_V_GameMode];
			BEW_v_dataBase = ["new", _databaseName] call OO_INIDBI; 
			_databasefind = "exists" call BEW_v_dataBase; 
			
			publicVariable "BEW_v_dataBase";
			
				// Read From Database And Write Initial Entires	
				
					// Mission Version
						
						BEW_v_dataBaseVersion = ["read", ["Version", "Mission Version"]] call BEW_v_dataBase; 
						
						if (typeName (BEW_v_dataBaseVersion) == "BOOL") then { 
						
							BEW_v_dataBaseVersion = BEW_v_missionVersion;
							
							["write", ["Version", "Mission Version", BEW_v_missionVersion]] call BEW_v_dataBase; 
							BEW_v_missionVersion = ["read", ["Version", "Mission Version"]] call BEW_v_dataBase; 
						
						};
						
						if !(BEW_v_dataBaseVersion == BEW_v_missionVersion) exitWith {
						
							[] call BEW_FNC_ResetDatabase;
							[] call BEW_FNC_databaseInit;
						
						};
						
						publicVariable "BEW_v_dataBaseVersion";
				
							
					/*
							
					// Game Mode
					
						BEW_v_GameMode = ["read", ["Mission Settings", "Game Mode"]] call BEW_v_dataBase; 
						
						if (typeName (BEW_v_GameMode) == "BOOL") then { 
						
							["write", ["Mission Settings", "Game Mode", ""]] call BEW_v_dataBase; 
							BEW_v_GameMode = ["read", ["Mission Settings", "Game Mode"]] call BEW_v_dataBase; 
								
						};
						
						publicVariable "BEW_v_GameMode";
						
					*/
					
					
					// AI Skill
					
						BEW_v_aiSkillGlobal = ["read", ["Mission Settings", "AI Skill"]] call BEW_v_dataBase; 
						
						if (typeName (BEW_v_aiSkillGlobal) == "BOOL") then { 
						
							["write", ["Mission Settings", "AI Skill", "HARD"]] call BEW_v_dataBase; 
							BEW_v_aiSkillGlobal = ["read", ["Mission Settings", "AI Skill"]] call BEW_v_dataBase; 
								
						};
						
						
					// AI Skill
					
						BEW_v_startTime = ["read", ["Mission Settings", "Time"]] call BEW_v_dataBase; 
						
						if (typeName (BEW_v_startTime) == "BOOL") then { 
						
							["write", ["Mission Settings", "Time", [9, 0, 0, 0]]] call BEW_v_dataBase; 
							BEW_v_startTime = ["read", ["Mission Settings", "Time"]] call BEW_v_dataBase; 
								
						};
						
						
						
						
					// Mission Level
					
						BEW_v_missionLevel = ["read", ["Progression", "Mission Level"]] call BEW_v_dataBase; 
						
						if (typeName (BEW_v_missionLevel) == "BOOL") then { 
						
							["write", ["Progression", "Mission Level", 1]] call BEW_v_dataBase; 
							BEW_v_missionLevel = ["read", ["Progression", "Mission Level"]] call BEW_v_dataBase; 
								
						};
						
						publicVariable "BEW_v_missionLevel";
						
					
					
					
					// Fire Support Level
					
						BEW_v_fireSupportLevel = ["read", ["Progression", "Fire Support Level"]] call BEW_v_dataBase; 
						
						if (typeName (BEW_v_fireSupportLevel) == "BOOL") then { 
						
							["write", ["Progression", "Fire Support Level", 0]] call BEW_v_dataBase; 
							BEW_v_fireSupportLevel = ["read", ["Progression", "Fire Support Level"]] call BEW_v_dataBase; 
								
						};
						
						publicVariable "BEW_v_fireSupportLevel";
					
					
					
					
					// Munitions
					
						BEW_v_munitions = ["read", ["Progression", "Munitions"]] call BEW_v_dataBase; 
						
						if (typeName (BEW_v_munitions) == "BOOL") then { 
						
							["write", ["Progression", "Munitions", 0]] call BEW_v_dataBase; 
							BEW_v_munitions = ["read", ["Progression", "Munitions"]] call BEW_v_dataBase; 
								
						};
						
						publicVariable "BEW_v_munitions";
						
					
					
					// Munitions
					
						BEW_v_munitions_EAST = ["read", ["Progression", "Munitions EAST"]] call BEW_v_dataBase; 
						
						if (typeName (BEW_v_munitions_EAST) == "BOOL") then { 
						
							["write", ["Progression", "Munitions EAST", 0]] call BEW_v_dataBase; 
							BEW_v_munitions_EAST = ["read", ["Progression", "Munitions EAST"]] call BEW_v_dataBase; 
								
						};
						
						publicVariable "BEW_v_munitions_EAST";
						
						
						
					// Unlocked Vehicles
					
						BEW_v_unlockedVehicles_WEST = ["read", ["Progression", "Unlocked Vehicles WEST"]] call BEW_v_dataBase; 
						
						if (typeName (BEW_v_unlockedVehicles_WEST) == "BOOL") then { 
						
							["write", ["Progression", "Unlocked Vehicles WEST", []]] call BEW_v_dataBase; 
							BEW_v_unlockedVehicles_WEST = ["read", ["Progression", "Unlocked Vehicles WEST"]] call BEW_v_dataBase; 
								
						};
					
						publicVariable "BEW_v_unlockedVehicles";
					
					
					// Unlocked Vehicles
					
						BEW_v_unlockedVehicles_EAST = ["read", ["Progression", "Unlocked Vehicles EAST"]] call BEW_v_dataBase; 
						
						if (typeName (BEW_v_unlockedVehicles_EAST) == "BOOL") then { 
						
							["write", ["Progression", "Unlocked Vehicles EAST", []]] call BEW_v_dataBase; 
							BEW_v_unlockedVehicles_EAST = ["read", ["Progression", "Unlocked Vehicles EAST"]] call BEW_v_dataBase; 
								
						};
					
						publicVariable "BEW_v_unlockedVehicles_EAST";
			
			
					// Completed Main Objectives
						
						BEW_v_all_completedMainObjectives = ["read", ["Locations", "Completed Main Objectives"]] call BEW_v_dataBase;
						
						if (typeName (BEW_v_all_completedMainObjectives) == "BOOL") then { 
						
							["write", ["Locations", "Completed Main Objectives", []]] call BEW_v_dataBase; 
							BEW_v_all_completedMainObjectives = ["read", ["Locations", "Completed Main Objectives"]] call BEW_v_dataBase;
						
						};
						
						
						
					// Completed Side Objectives
						
						BEW_v_all_completedSideObjectives = ["read", ["Locations", "Completed Side Objectives"]] call BEW_v_dataBase;
						
						if (typeName (BEW_v_all_completedSideObjectives) == "BOOL") then { 
						
							["write", ["Locations", "Completed Side Objectives", []]] call BEW_v_dataBase; 
							BEW_v_all_completedSideObjectives = ["read", ["Locations", "Completed Side Objectives"]] call BEW_v_dataBase;
						
						};




					// Revealed Objectives
					
						BEW_v_revealedObjectives = ["read", ["Locations", "Revealed Objectives"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_revealedObjectives) == "BOOL") then { 
						
							["write", ["Locations", "Revealed Objectives", []]] call BEW_v_dataBase; 
							BEW_v_revealedObjectives = ["read", ["Locations", "Revealed Objectives"]] call BEW_v_dataBase;
						
						};
							
						publicVariable "BEW_v_revealedObjectives";
						
						
						
					// Objective Progression
					
						BEW_v_ObjectiveProgression = ["read", ["Locations", "Objective Progression"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_ObjectiveProgression) == "BOOL") then { 
						
							["write", ["Locations", "Objective Progression", [[]] ]] call BEW_v_dataBase; 
							BEW_v_ObjectiveProgression = ["read", ["Locations", "Objective Progression"]] call BEW_v_dataBase;
						
						};
						
					
					
					
					// Revealed Side Missions
					
						BEW_v_revealedSideMissions = ["read", ["Locations", "Revealed Side Missions"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_revealedSideMissions) == "BOOL") then { 
						
							["write", ["Locations", "Revealed Side Missions", [] ]] call BEW_v_dataBase; 
							BEW_v_revealedSideMissions = ["read", ["Locations", "Revealed Side Missions"]] call BEW_v_dataBase;
						
						};

					
					
					
					// Activated Allied Camps
					
						BEW_v_activatedAlliedCamps = ["read", ["Locations", "Activated Allied Camps"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_activatedAlliedCamps) == "BOOL") then {  
						
							["write", ["Locations", "Activated Allied Camps", [] ]] call BEW_v_dataBase; 
							BEW_v_activatedAlliedCamps = ["read", ["Locations", "Activated Allied Camps"]] call BEW_v_dataBase;
						
						};
						
						publicVariable "BEW_v_activatedAlliedCamps";
						
											
					// Revealed Allied Camps
					
						BEW_v_revealedAlliedCamps = ["read", ["Locations", "Revealed Allied Camps"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_revealedAlliedCamps) == "BOOL") then {  
						
							["write", ["Locations", "Revealed Allied Camps", [] ]] call BEW_v_dataBase; 
							BEW_v_revealedAlliedCamps = ["read", ["Locations", "Revealed Allied Camps"]] call BEW_v_dataBase;
						
						};
						
						
					// Deployed Outposts WEST
					
						BEW_v_deployedOutposts_WEST = ["read", ["Locations", "Deployed Outposts WEST"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_deployedOutposts_WEST) == "BOOL") then {  
						
							["write", ["Locations", "Deployed Outposts WEST", [] ]] call BEW_v_dataBase; 
							BEW_v_deployedOutposts_WEST = ["read", ["Locations", "Deployed Outposts WEST"]] call BEW_v_dataBase;
						
						};
						
						
					// Deployed Outposts EAST
					
						BEW_v_deployedOutposts_EAST = ["read", ["Locations", "Deployed Outposts EAST"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_deployedOutposts_EAST) == "BOOL") then {  
						
							["write", ["Locations", "Deployed Outposts EAST", [] ]] call BEW_v_dataBase; 
							BEW_v_deployedOutposts_EAST = ["read", ["Locations", "Deployed Outposts EAST"]] call BEW_v_dataBase;
						
						};
							
						
					// Deployed Repair Depots WEST
					
						BEW_v_deployedRepairDepots_WEST = ["read", ["Locations", "Deployed Repair Depots WEST"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_deployedRepairDepots_WEST) == "BOOL") then {  
						
							["write", ["Locations", "Deployed Repair Depots WEST", [] ]] call BEW_v_dataBase; 
							BEW_v_deployedRepairDepots_WEST = ["read", ["Locations", "Deployed Repair Depots WEST"]] call BEW_v_dataBase;
						
						};
						
						
					// Deployed Repair Depots EAST
					
						BEW_v_deployedRepairDepots_EAST = ["read", ["Locations", "Deployed Repair Depots EAST"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_deployedRepairDepots_EAST) == "BOOL") then {  
						
							["write", ["Locations", "Deployed Repair Depots EAST", [] ]] call BEW_v_dataBase; 
							BEW_v_deployedRepairDepots_EAST = ["read", ["Locations", "Deployed Repair Depots EAST"]] call BEW_v_dataBase;
						
						};
						

					// Selected Main Faction
					
						BEW_v_SelectedMainFaction = ["read", ["Factions", "BLU"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_SelectedMainFaction) == "BOOL") then {  
						
							["write", ["Factions", "BLU", 1]] call BEW_v_dataBase; 
							BEW_v_SelectedMainFaction = ["read", ["Factions", "BLU"]] call BEW_v_dataBase;
						
						};
						
						publicVariable "BEW_v_SelectedMainFaction";
						
						
						
					// Unlocked factions
						
						
						// West
							
							BEW_v_UnlockedFactions = ["read", ["Arsenal", "Unlocked Factions"]] call BEW_v_dataBase;
						
							if (typeName (BEW_v_UnlockedFactions) == "BOOL") then {  
							
								["write", ["Arsenal", "Unlocked Factions", ["BLU"]]] call BEW_v_dataBase; 
								BEW_v_UnlockedFactions = ["read", ["Arsenal", "Unlocked Factions"]] call BEW_v_dataBase;
							
							};
							
							publicVariable "BEW_v_UnlockedFactions";
						
						
						// East
						
							BEW_v_UnlockedFactions_EAST = ["read", ["Arsenal", "Unlocked Factions East"]] call BEW_v_dataBase;
						
							if (typeName (BEW_v_UnlockedFactions_EAST) == "BOOL") then {  
							
								["write", ["Arsenal", "Unlocked Factions East", ["OPF_1"]]] call BEW_v_dataBase; 
								BEW_v_UnlockedFactions_EAST = ["read", ["Arsenal", "Unlocked Factions East"]] call BEW_v_dataBase;
							
							};
							
							publicVariable "BEW_v_UnlockedFactions_EAST";
							
						
						
						
					// Arsenal Backpacks
						
						// West
						
							BEW_v_backpacksToAdd = ["read", ["Arsenal", "Backpacks"]] call BEW_v_dataBase;
						
							if (typeName (BEW_v_backpacksToAdd) == "BOOL") then {  
							
								["write", ["Arsenal", "Backpacks", []]] call BEW_v_dataBase; 
								BEW_v_backpacksToAdd = ["read", ["Arsenal", "Backpacks"]] call BEW_v_dataBase;
							
							};
							
							publicVariable "BEW_v_backpacksToAdd";
						
						
						// East
						
							BEW_v_backpacksToAdd_EAST = ["read", ["Arsenal", "Backpacks East"]] call BEW_v_dataBase;
						
							if (typeName (BEW_v_backpacksToAdd_EAST) == "BOOL") then {  
							
								["write", ["Arsenal", "Backpacks East", []]] call BEW_v_dataBase; 
								BEW_v_backpacksToAdd_EAST = ["read", ["Arsenal", "Backpacks East"]] call BEW_v_dataBase;
							
							};
							
							publicVariable "BEW_v_backpacksToAdd_EAST";
						
						
						
						
					// Arsenal Items
						
						// West
						
							BEW_v_itemsToAdd = ["read", ["Arsenal", "Items"]] call BEW_v_dataBase;
						
							if (typeName (BEW_v_itemsToAdd) == "BOOL") then {  
							
								["write", ["Arsenal", "Items", []]] call BEW_v_dataBase; 
								BEW_v_itemsToAdd = ["read", ["Arsenal", "Items"]] call BEW_v_dataBase;
							
							};
							
							publicVariable "BEW_v_itemsToAdd";
						
						
						// East
						
							BEW_v_itemsToAdd_EAST = ["read", ["Arsenal", "Items East"]] call BEW_v_dataBase;
						
							if (typeName (BEW_v_itemsToAdd_EAST) == "BOOL") then {  
							
								["write", ["Arsenal", "Items East", []]] call BEW_v_dataBase; 
								BEW_v_itemsToAdd_EAST = ["read", ["Arsenal", "Items East"]] call BEW_v_dataBase;
							
							};
							
							publicVariable "BEW_v_itemsToAdd_EAST";
						
						
						
						
					// Arsenal Weapons
						
						// West
						
							BEW_v_weaponsToAdd = ["read", ["Arsenal", "Weapons"]] call BEW_v_dataBase;
						
							if (typeName (BEW_v_weaponsToAdd) == "BOOL") then {  
							
								["write", ["Arsenal", "Weapons", []]] call BEW_v_dataBase; 
								BEW_v_weaponsToAdd = ["read", ["Arsenal", "Weapons"]] call BEW_v_dataBase;
							
							};
							
							publicVariable "BEW_v_weaponsToAdd";
						
						
						// East
						
							BEW_v_weaponsToAdd_EAST = ["read", ["Arsenal", "Weapons East"]] call BEW_v_dataBase;
						
							if (typeName (BEW_v_weaponsToAdd_EAST) == "BOOL") then {  
							
								["write", ["Arsenal", "Weapons East", []]] call BEW_v_dataBase; 
								BEW_v_weaponsToAdd_EAST = ["read", ["Arsenal", "Weapons East"]] call BEW_v_dataBase;
							
							};
							
							publicVariable "BEW_v_weaponsToAdd_EAST";
						
						
						
						
					// Arsenal Magazines
						
						// West
						
							BEW_v_magazinesToAdd = ["read", ["Arsenal", "Magazines"]] call BEW_v_dataBase;
						
							if (typeName (BEW_v_magazinesToAdd) == "BOOL") then {  
							
								["write", ["Arsenal", "Magazines", []]] call BEW_v_dataBase; 
								BEW_v_magazinesToAdd = ["read", ["Arsenal", "Magazines"]] call BEW_v_dataBase;
							
							};
							
							publicVariable "BEW_v_magazinesToAdd";
							
							
						// East
						
							BEW_v_magazinesToAdd_EAST = ["read", ["Arsenal", "Magazines EAST"]] call BEW_v_dataBase;
						
							if (typeName (BEW_v_magazinesToAdd_EAST) == "BOOL") then {  
							
								["write", ["Arsenal", "Magazines EAST", []]] call BEW_v_dataBase; 
								BEW_v_magazinesToAdd_EAST = ["read", ["Arsenal", "Magazines EAST"]] call BEW_v_dataBase;
							
							};
							
							publicVariable "BEW_v_magazinesToAdd_EAST";
						
						
					// Initial Camp
					
						BEW_v_initialSpawnCamp = ["read", ["Locations", "Initial Camp"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_initialSpawnCamp) == "BOOL") then {  
						
							["write", ["Locations", "Initial Camp", ""]] call BEW_v_dataBase; 
							BEW_v_initialSpawnCamp = ["read", ["Locations", "Initial Camp"]] call BEW_v_dataBase;
						
						};
						
						publicVariable "BEW_v_initialSpawnCamp";
						
						
					// Player Position On Quit
					
						BEW_v_AllPlayerSaveData = ["read", ["Player Data", "Player Save Data"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_AllPlayerSaveData) == "BOOL") then {  
												
							["write", ["Player Data", "Player Save Data", []]] call BEW_v_dataBase; 
							BEW_v_AllPlayerSaveData = ["read", ["Player Data", "Player Save Data"]] call BEW_v_dataBase;
						
						};
						
						publicVariable "BEW_v_AllPlayerSaveData";
						
						
					// Player Position On Quit
					
						BEW_v_SavedVehicles = ["read", ["Player Data", "Spawned Vehicles"]] call BEW_v_dataBase;
					
						if (typeName (BEW_v_SavedVehicles) == "BOOL") then {  
												
							["write", ["Player Data", "Spawned Vehicles", []]] call BEW_v_dataBase; 
							BEW_v_SavedVehicles = ["read", ["Player Data", "Spawned Vehicles"]] call BEW_v_dataBase;
						
						};
						

	}else{
			
		BEW_v_aiSkillGlobal = "HARD";
		
		BEW_v_missionLevel = 1;
			publicVariable "BEW_v_missionLevel";
			
		BEW_v_startTime = [9, 0 , 0, 0];
		
		BEW_v_fireSupportLevel = 0;
			publicVariable "BEW_v_fireSupportLevel";
			
		BEW_v_munitions = 0;
			publicVariable "BEW_v_munitions";
			
		BEW_v_munitions_EAST = 0;
			publicVariable "BEW_v_munitions_EAST";
			
		BEW_v_unlockedVehicles_WEST = [];
			publicVariable "BEW_v_unlockedVehicles_WEST";
			
		BEW_v_unlockedVehicles_EAST = [];
			publicVariable "BEW_v_unlockedVehicles_EAST";
			
		BEW_v_all_completedMainObjectives = [];
			
		BEW_v_all_completedSideObjectives = [];
		
		BEW_v_revealedObjectives = [];
		
		BEW_v_objectiveProgression = [[]];
		
		BEW_v_revealedSideMissions = [];
		
		BEW_v_activatedAlliedCamps = [];
		
		BEW_v_revealedAlliedCamps = [];
		
		BEW_v_deployedOutposts_WEST = [];
		
		BEW_v_deployedOutposts_EAST = [];
		
		BEW_v_deployedRepairDepots_WEST = [];
		
		BEW_v_deployedRepairDepots_EAST = [];
		
		
		//  Arsenal
		
			BEW_v_backpacksToAdd = [];
				publicVariable "BEW_v_backpacksToAdd";
			
			BEW_v_itemsToAdd = [];
				publicVariable "BEW_v_itemsToAdd";
			
			BEW_v_weaponsToAdd = [];
				publicVariable "BEW_v_weaponsToAdd";
			
			BEW_v_magazinesToAdd = [];
				publicVariable "BEW_v_magazinesToAdd";
				
			BEW_v_backpacksToAdd_East = [];
				publicVariable "BEW_v_backpacksToAdd_East";
			
			BEW_v_itemsToAdd_East = [];
				publicVariable "BEW_v_itemsToAdd_East";
			
			BEW_v_weaponsToAdd_East = [];
				publicVariable "BEW_v_weaponsToAdd_East";
			
			BEW_v_magazinesToAdd_East = [];
				publicVariable "BEW_v_magazinesToAdd_East";
		
		// Factions
		
			BEW_v_UnlockedFactions = ["BLU"];
				publicVariable "BEW_v_UnlockedFactions";
				
			BEW_v_UnlockedFactions_EAST = ["OPF_1"];
				publicVariable "BEW_v_UnlockedFactions_EAST";
				
			BEW_v_SelectedMainFaction = 1;
				publicVariable "BEW_v_SelectedMainFaction";
			
		BEW_v_initialSpawnCamp = "";
			publicVariable "BEW_v_initialSpawnCamp";
			
		BEW_v_AllPlayerSaveData = [];
			publicVariable "BEW_v_AllPlayerSaveData";
			
		BEW_v_SavedVehicles = [];
	
	};