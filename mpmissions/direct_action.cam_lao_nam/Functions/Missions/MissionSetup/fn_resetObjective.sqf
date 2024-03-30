	
	_selectedObjective = _this select 0;
		_objectivePos = markerPos _selectedObjective;
		_markerText = markerText _selectedObjective;
	_objectiveType = param [1, ""];

	// Remove Objective From Completed Objectives
	
		if (toUpper _selectedObjective in (BEW_v_all_completedMainObjectives apply {toUpper _x})) then {
		
			BEW_v_all_completedMainObjectives = BEW_v_all_completedMainObjectives - [toUpper _selectedObjective];
		
		};
		
		
		if (toUpper _selectedObjective in (BEW_v_all_completedSideObjectives apply {toUpper _x})) then {
		
			BEW_v_all_completedSideObjectives = BEW_v_all_completedSideObjectives - [toUpper _selectedObjective];
		
		};
		
		
	// Reset Mission
	
		[toUpper _selectedObjective, _objectiveType] call BEW_FNC_SetupMissions;


	// Remove Fast Travel Flag
	
			// Find Nearest Flag
	
				_nearestFlags = BEW_v_militarySpawnFlags select {getPos _x inArea _selectedObjective};
		
		
			if (count _nearestFlags > 0) then {
						
				// Define Flag
				
					_flag = [_nearestFlags, _objectivePos] call BIS_fnc_nearestPosition;
					
				
				// Remove Fast Travel From Flag
				
					BEW_V_AllFastTravelFlags = BEW_V_AllFastTravelFlags - [_flag];
							publicVariable "BEW_V_AllFastTravelFlags";
						
						BEW_V_ActivatedFastTravelFlags = BEW_V_ActivatedFastTravelFlags - [_flag];
							publicVariable "BEW_V_ActivatedFastTravelFlags";
				
					// Remove Respawn Position
						
						_respawnID = _flag getVariable "RespawnID";
						
						_respawnID call BIS_fnc_removeRespawnPosition;
			
				
			};
	
	
	// Hide Arsenal
	
			// Find Nearest Arsenal
	
				_nearestArsenals = BEW_v_allArsenalCrates select {getPos _x inArea _selectedObjective};
				
				
			if (count _nearestArsenals > 0) then {
						
				// Define Arsenal
				
					_arsenal = [_nearestArsenals, _objectivePos] call BIS_fnc_nearestPosition;
					
					// Hide Arsenal
					
						[_arsenal] spawn BEW_FNC_HideVehicleInObjectiveArea;
					
			};
	