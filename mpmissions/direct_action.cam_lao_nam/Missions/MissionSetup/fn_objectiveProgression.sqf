	
	
	// Define The Progression For The Map
	
		if (count (BEW_v_objectiveProgression select 0) < 1) then {
	
			BEW_v_objectiveProgression = switch (worldName) do {
			
				case ("fow_map_henderson") : {[ ["Military_0"], ["Military_5", "Military_4"], ["Military_10"]]};
				case ("I44_Omaha_V2") : {[ ["Beachhead_0"], ["Military_2", "MilitarySmall_1"] ]};
				
				default {[[]]};
			
			};
			
		};
	
	
	// Exit If Progression Doesn't Exist
	
		if (count BEW_v_objectiveProgression < 1) exitWith {hint "no objective progression"};
		
		
	// Write To Database
		
			if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
		 
				["write", ["Locations", "Objective Progression", BEW_v_ObjectiveProgression]] call BEW_v_dataBase; 

			};
	
	
	// Start Objective Progression Loop
	
		{
		
			_currentObjectiveStage = _x;		
			
			// Wait Until Current Stage Passed
			
				waitUntil {sleep 3; count (_currentObjectiveStage select {!(markerColor _x == "colorBlufor")}) < 1};
			
			
			// Remove Current Stage From Progression When Completed
				
				if (count BEW_v_objectiveProgression > 1) then { 
				
					BEW_v_objectiveProgression = BEW_v_objectiveProgression - [_currentObjectiveStage];
					
				}else{
				
					BEW_v_objectiveProgression = [[]];
				
				};
				
				
			// Write To Database
			
				if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
			 
					["write", ["Locations", "Objective Progression", BEW_v_ObjectiveProgression]] call BEW_v_dataBase; 
	
				};

		} forEach BEW_v_objectiveProgression;
		
		
		
		
		
		