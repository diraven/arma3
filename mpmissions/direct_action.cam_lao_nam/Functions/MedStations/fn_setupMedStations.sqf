	
	
	// Define All Med Stations
	
		_medStations  = param [0, getMissionLayerEntities "Medical" select 0];
	
	
	// Set Variable 
	
		{
		
			_medStation = _x;
	
			_medStation setVariable ['BEW_v_MedicalStation', TRUE, TRUE];
		
		} forEach _medStations;