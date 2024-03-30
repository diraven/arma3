
	// Set Up Initial Variables

		if (isNil "BEW_v_all_Objectives") then {BEW_v_all_Objectives = []};
					
		if (isNil "BEW_v_all_MainObjectives") then {BEW_v_all_MainObjectives = []};
					
		if (isNil "BEW_v_all_SideObjectives") then {BEW_v_all_SideObjectives = []};
		
		if (isNil "BEW_v_defend_Objectives") then {BEW_v_defend_Objectives = []};		
			
		if (isNil "BEW_v_all_completedMainObjectives") then {BEW_v_all_completedMainObjectives = []};
			publicVariable "BEW_v_all_completedMainObjectives";
		
		if (isNil "BEW_v_all_completedSideObjectives") then {BEW_v_all_completedSideObjectives = []};
			publicVariable "BEW_v_all_completedSideObjectives";
			
		if (isNil "BEW_v_currentActiveObjective") then {BEW_v_currentActiveObjective = []};		
			publicVariable "BEW_v_currentActiveObjective";
			
		if (isNil "BEW_v_allCancelledObjectives") then {BEW_v_allCancelledObjectives = []};		
			publicVariable "BEW_v_allCancelledObjectives";
			
		if (isNil "BEW_v_objectiveMissionActive") then {BEW_v_objectiveMissionActive = FALSE};
			publicVariable "BEW_v_objectiveMissionActive";
			
		if (isNil "BEW_v_objectiveMissionCancelled") then {BEW_v_objectiveMissionCancelled = FALSE};
			publicVariable "BEW_v_objectiveMissionCancelled";
			
		if (isNil "BEW_v_mapBoards") then {BEW_v_mapBoards = getMissionLayerEntities "mapBoards" select 0};
			publicVariable "BEW_v_mapBoards";

		
	// Define All Objective Types
		
		// Get Objective Data
		
			_objectiveData = [] call BEW_FNC_ObjectiveData;
		
		{
		
			_objectiveType = _x select 0;
			_mainOrSide = _x select 1;
			
			call compile format ["
			
				_3denFolder = (getMissionLayerEntities '%1' select 1);
				
				if !(isNil '_3denFolder') then {
				
					if ( count (getMissionLayerEntities '%1' select 1) > 0 ) then {
						
						BEW_v_%1_Objectives = getMissionLayerEntities '%1' select 1;
						
						if (_mainOrSide == 'Main') then {
						
							BEW_v_all_MainObjectives append BEW_v_%1_Objectives;
						
						}else{
						
							BEW_v_all_SideObjectives append BEW_v_%1_Objectives;
							
						};
						
						BEW_v_all_Objectives append BEW_v_%1_Objectives;
						
					}else{
					
						BEW_v_%1_Objectives = [];
					
					};
				
				};
								
			", _objectiveType];
		
		} forEach _objectiveData;
		
		
		// Hide Markers
		
			{

				_x setMarkerAlpha 0;

			} forEach BEW_v_all_Objectives;
			
							
		// Broadcast
		
			publicVariable "BEW_v_all_Objectives";
			publicVariable "BEW_v_all_MainObjectives";
			publicVariable "BEW_v_all_SideObjectives";