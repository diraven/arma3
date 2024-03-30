
	private [
		
		"_returnMarkers",
		"_alliedCamps",
		"_nearestReturnMarker"
		
	];

	_pos = param [0, getpos player];


		// Define All Return Marker Array
		
			_allReturnMarkers = [];
			
			
		// Define All Return Markers From Mission Layer

			_returnMarkers 	= getMissionLayerEntities "returnMarkers" select 1;
		
			// Add To Return Marker Array
			
				_allReturnMarkers append _returnMarkers;
		
		
		// Define All Allied Camps
		
			_alliedCamps	= getMissionLayerEntities "Resistance" select 1;
			
			{
			
				_alliedCamp = _x;
				
				{
				
					_returnMarker = _x;
					
					if (markerPos _returnMarker inArea _alliedCamp) then {
					
						_alliedCamps = _alliedCamps - [_alliedCamp];
					
					};
				
				}forEach _returnMarkers;
			
			} forEach _alliedCamps;
			
			
		// Add To Return Marker Array
		
			_allReturnMarkers append _alliedCamps;
			
			
		// Filter Water Positions
		
			_allReturnMarkers 	= _allReturnMarkers select {!(surfaceIsWater markerPos _x)};
			
		// Find Nearest Return Marker
		
			_nearestReturnMarker = [_allReturnMarkers, _pos] call BIS_fnc_nearestPosition;
		
	_nearestReturnMarker