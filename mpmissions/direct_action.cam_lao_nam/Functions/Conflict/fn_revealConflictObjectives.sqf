	
	{	
	
		_objectiveMarker = _x;
		_sideMakerColor = switch (side player) do {
		
			case WEST : {"colorBLUFOR"};
			case EAST :	{"colorOPFOR"};
			
		};
	
		if ((markerColor _objectiveMarker == _sideMakerColor) or 
		
		
		
			(count (BEW_v_all_Objectives select {  
				
			   (markerColor _x == _sideMakerColor) and   
				 
			   ((markerPos _objectiveMarker distance2D markerPos _x) < 2000)  
				
			   }) > 0)
		
		
		
		) then {
		
			_objectiveIcon = format ["%1_Icon", _objectiveMarker];
			_objectiveIcon setMarkerAlphaLocal 1;
			_objectiveMarker setMarkerAlphaLocal 1;
			
		}else{
			
			_objectiveIcon = format ["%1_Icon", _objectiveMarker];
			_objectiveIcon setMarkerAlphaLocal 0;
			_objectiveMarker setMarkerAlphaLocal 0;
		
		};
		
	
	} forEach BEW_v_all_Objectives;