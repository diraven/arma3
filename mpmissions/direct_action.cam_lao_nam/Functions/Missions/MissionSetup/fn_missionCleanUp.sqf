	
	_inAreaTrigger = _this select 0;
	_allUnits = _this select 1;
	_allVehs = _this select 2;
	_allMarkers = _this select 3;
	

	// Wait Until Players Left Area
			
		waitUntil {!(triggerActivated _inAreaTrigger) or (BEW_v_objectiveMissionActive)};
			
			
		// Delete In Area Trigger
		
			deleteVehicle _inAreaTrigger;
			
			
		// Clean Up Force
				
			// Delete All Remaining Units
			
				{
				
					deleteVehicle _x;
				
				} forEach _allUnits;
							
			
			// Delete All Remaining Crew And Vehicles
			{
			
				if (count crew _x < 1) then {
				
					deleteVehicle _x;
					
				};
		
			} forEach _allvehs;
			
			
		// Clean Up Markers
		
			{
			
				deleteMarker _x;
		
			} forEach _allMarkers;