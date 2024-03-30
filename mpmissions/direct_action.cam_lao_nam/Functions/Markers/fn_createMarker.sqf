	
	// _marker = [_center, _markerName, _markerShape, _markerType, _markerColor, _markerText, _markerSize, _markerAlpha] call BEW_FNC_CreateMarker;
	
	private [
	
		"_center",
		"_centerPos",
		"_markerName",
		"_markerShape",
		"_markerType",
		"_markerColor",
		"_markerText",
		"_markerSize",
		"_markerAlpha"
	
	];
	
	
	_center = param [0];
	
		_centerPos = switch (typeName _center) do {
		
			case "OBJECT" 	:	{getPos _center};
			case "ARRAY"	:	{_center};
			case "STRING"	:	{markerPos _center};
		
		};
	
	_markerName = param [1];
	
		_markerName = switch (typeName _markerName) do {
		
			case "OBJECT" 	:	{format ["%1_Marker", _markerName]};
			case "STRING"	:	{_markerName};
		
		};
			
	_markerShape = param [2, "ICON"];
	_markerType = param [3, "mil_dot"];
	_markerColor = param [4, "ColorGREEN"];
	_markerText = param [5, ""];
	_markerSize = param [6, [1, 1]];
	_markerAlpha = param [7, 1];

	
	// Create Marker
	
		_marker = createMarker [_markerName, _centerPos]; 
		_marker setMarkerShape _markerShape;
		_marker setMarkerType _markerType;						
		_marker setMarkerColor _markerColor;
		_marker setMarkerSize _markerSize;
		_marker setMarkeralpha _markerAlpha;	
		_marker setMarkerText _markerText;
				
		
	_marker