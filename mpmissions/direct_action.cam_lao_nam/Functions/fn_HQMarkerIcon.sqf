		
		
		_marker 	= 	_this select 0;
		_markerPos	= 	markerPos _marker;
		_factionType = param [1, "BLU"];
		
		
			
			
		// Define Marker Type
		
			_origMarkerType = call compile format ["
			
				_origMarkerType = %1_MarkerIcon;
				
				_origMarkerType
			
			", _factionType];
		
			BEW_v_ResistanceCampMarkerType = [_origMarkerType] call BEW_FNC_TranslateClassNames;


		// Create Marker Icon
		
			_markerText = " " + markerText _marker;
			_markerIcon = createMarker [format ["%1_HQMarker", _marker], _markerPos];
			_markerIcon setMarkerType BEW_v_ResistanceCampMarkerType;
			_markerIcon setMarkerAlpha 1;
			_markerIcon setMarkerText _markerText;
			_markerIcon setMarkerSize [0.75, 0.75];
			
		// Fix Marker Size
		
			_markerIcon call BEW_FNC_FixMarkerSize;