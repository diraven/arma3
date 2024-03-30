
	private [

		"_allMarkers",
		"_selectedMarker"

	];
	
	
	_markerArray = param [0];
	
	
	_allMarkers = [];

	{

		_marker = _x;

		if (count ((allPlayers select {(alive _x) and !(vehicle _x isKindOf "air")}) inAreaArray _marker) > 0) then {
		
			_allMarkers pushBack _marker;
		
		};

	} forEach _markerArray;

	if (count _allMarkers > 0) then {
	
		_selectedMarker = selectRandom _allMarkers;
		
	}else{
	
		_selectedMarker = "";
	
	};

	_selectedMarker