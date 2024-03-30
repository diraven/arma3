	
	
	private [
		
		"_factionTypes",
		"_faction"
	
	];
	
	// Define BLUFOR Camps
	
		BEW_v_allBluCamps = (getMissionLayerEntities 'BLU_Camps' select 1); 
			publicVariable "BEW_v_allBluCamps";	

	
	// Define OPFOR Camps

		BEW_v_allOpfCamps = (getMissionLayerEntities 'OPF_Camps' select 1); 
			publicVariable "BEW_v_allOpfCamps";	


	
	// Define Allied Camps
		
		BEW_v_allAlliedCamps = [];
		
		_factionTypes = ["BLU_ALT", "BLU_SOF", "OPF_1", "OPF_2", "OPF_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2"];
			
				{
					
					_faction = _x;
					
						call compile format ["
					
							BEW_v_%1_ResistanceCamps = getMissionLayerEntities '%1' select 1;
								publicVariable 'BEW_v_%1_ResistanceCamps';
						
						
							{
								_marker = _x;
							
								[_marker, _faction] spawn BEW_FNC_activateAlliedCamp;
							
							} forEach BEW_v_%1_ResistanceCamps;
							
							BEW_v_allAlliedCamps append BEW_v_%1_ResistanceCamps;
						
						", _faction];
					
				} forEach _factionTypes;
				
				
		// Broadcast Allied Camps
		
			publicVariable "BEW_v_allAlliedCamps";	
			
			

	// If Random Spawn Add Blu Camps To Allied Camp Array 
		
		waitUntil {!(isNil "BEW_v_RandomSpawn")};
		
		if (BEW_v_RandomSpawn) then {
			
			BEW_v_allAlliedCamps append BEW_v_allBluCamps;
			
			{
				
				[_x, "BLU"] spawn BEW_FNC_activateAlliedCamp;
				
			} forEach BEW_v_allBluCamps;
			
		};