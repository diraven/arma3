
	_objectiveMarker = _this select 0;
	_objectiveIcon = _this select 1;
		
		
	while {!(markerColor _objectiveMarker == "colorBLUFOR")} do {
		
		
		// Hide Area
		
			if ((BEW_v_objectiveMissionActive) and !(_objectiveMarker in BEW_v_currentActiveObjective)) then {
			
				_objectiveMarker setMarkerAlpha 0; 
			
			}else{
			
				_objectiveMarker setMarkerAlpha 1; 
				
			};
			
			
		// Hide Icon
			
			if ((BEW_v_objectiveMissionActive)) then {
			
				_objectiveIcon setMarkerAlpha 0; 
			
			}else{
			
				_objectiveIcon setMarkerAlpha 1; 
				
			};
	
		sleep 1;
	
	};