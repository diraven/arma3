
	
	_center = _this select 0;
	
	_centerPos = switch (typeName _center) do {
	
		case "ARRAY"	:	{_center};
		case "STRING"	:	{markerPos _center};
		case "OBJECT"	:	{getPos _center};
		default {_center};
		
	};
	
	_markerName = _this select 1;
	_markerType = param [2, "selector_selectedFriendly"];
	_markerSize =  param [3, [1.2, 1.2]];
	_markerColor = param [4, "colorPink"];
		
	_iconMarker = createMarkerLocal [_markerName, _centerPos];	
	_iconMarker setMarkerTypeLocal _markerType;	
	_iconMarker setMarkerSizeLocal _markerSize;
	_iconMarker setMarkerColorLocal _markerColor;

	[_iconMarker] spawn {
			
		_iconMarker = _this select 0;
		_direction = 0;

		while {!(getMarkerColor _iconMarker == "")} do {


			sleep 0.02;

			_direction = (_direction + 1) % 360;
			_iconMarker setMarkerDirLocal _direction;

		};

	};
	
	_iconMarker