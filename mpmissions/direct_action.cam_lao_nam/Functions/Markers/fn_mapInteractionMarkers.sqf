		
	BEW_v_mapInteractionMarkers = [];
		publicVariable "BEW_v_mapInteractionMarkers";
	
	
	// Medical Buildings
		
		_medicalBuildings = getMissionLayerEntities "Medical" select 0; 
		
		{

			_obj = _x;
				
			_markers = [_obj, "loc_heal", "colorRed", [0.8, 0.8]] call BEW_FNC_createMarkerWithBackground;
			_icon = _markers select 0;
			_background = _markers select 1;
			
			BEW_v_mapInteractionMarkers = BEW_v_mapInteractionMarkers + [_icon];
			BEW_v_mapInteractionMarkers = BEW_v_mapInteractionMarkers + [_background];
		
		} forEach _medicalBuildings;


	// Service Pads
		
		_servicePads = getMissionLayerEntities "servicePad" select 0; 
		
		{

			_obj = _x;
				
			_markers = [_obj, "loc_use", "ColorYellow", [1, 1]] call BEW_FNC_createMarkerWithBackground;
			_icon = _markers select 0;
			_background = _markers select 1;
			
			BEW_v_mapInteractionMarkers = BEW_v_mapInteractionMarkers + [_icon];
			BEW_v_mapInteractionMarkers = BEW_v_mapInteractionMarkers + [_background];
		
		} forEach _servicePads;


	// Fast Travel
		
		_fastTravelFlags = getMissionLayerEntities "fastTravel" select 0; 
		
		{

			_obj = _x;
				
			_markers = [_obj, "mil_flag", "colorBlue", [0.4, 0.4]] call BEW_FNC_createMarkerWithBackground;
			_icon = _markers select 0;
			_background = _markers select 1;
			
			BEW_v_mapInteractionMarkers = BEW_v_mapInteractionMarkers + [_icon];
			BEW_v_mapInteractionMarkers = BEW_v_mapInteractionMarkers + [_background];
		
		} forEach _fastTravelFlags;
			
				
	// Arsenal Crates
		
		_arsenalCrates = getMissionLayerEntities "ArsenalCrate" select 0;
		
		{

			_obj = _x;
				
			_markers = [_obj, "loc_rifle", "colorGreen"] call BEW_FNC_createMarkerWithBackground;
			_icon = _markers select 0;
			_background = _markers select 1;
			
			BEW_v_mapInteractionMarkers = BEW_v_mapInteractionMarkers + [_icon];
			BEW_v_mapInteractionMarkers = BEW_v_mapInteractionMarkers + [_background];
		
		} forEach _arsenalCrates;