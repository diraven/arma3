	if ((isServer) and (isDedicated)) exitWith {};
	
	private ["_center", "_centerPos", "_centerObject", "_areaX", "_areaY", "_areaZ", "_side"];
	
	_center = param [0];
	
	_centerPos = switch (typeName _center) do {
		
		case	"OBJECT"	:	{getPos _center};
		case	"ARRAY"		:	{_center};
		default	{_center};

	};
	
	_centerObject = switch (typeName _center) do {
		
		case	"OBJECT"	:	{_center};
		case	"ARRAY"		:	{objNull};
		default	{objNull};

	};
	
	_areaX = param [1, 10];
	_areaY = param [2, 10];
	_areaZ = param [3, 5];
	_side = param [4, "WEST"];
	_createMarkers = param [5, FALSE];
	_triggerType = param [6, 'LAND'];
	
	
	// Create Trigger
	
		_triggerStatements = format ["[(thisList select 0), '%1'] execVM 'scripts\rearmVehicle.sqf'", _triggerType];
	
		_servicePad = createTrigger ["EmptyDetector", _centerPos, false];
		_servicePad setTriggerArea [_areaX, _areaY, 0, false, _areaZ];
		_servicePad setTriggerActivation [_side, "PRESENT", true];
		_servicePad setTriggerStatements [
		
			"this",
			_triggerStatements, 
			""
		
		];
		
	if (_createMarkers) then {
		
		// Create Repair Station Marker
						
			_markerName = format ["%1_servicePadMarker", _centerPos];
			_servicePadMarker = createMarkerLocal [_markerName, _centerPos];
			_servicePadMarker setMarkerShape "ELLIPSE";
			_servicePadMarker setMarkerSize [_areaX, _areaY];
			_servicePadMarker setMarkerColor "colorYellow";
			_servicePadMarker setMarkerAlpha 0.3;
			_servicePadMarker setMarkerText "";
			
		
		// Create Background Marker
			
			_markerName = format ["%1_backgroundMarker", _centerPos];
		
			_servicePadIconBackground = createMarkerLocal [_markerName, _centerPos];
			_servicePadIconBackground setMarkerType "n_unknown";
			_servicePadIconBackground setMarkerSize [1, 1];
			_servicePadIconBackground setMarkerColor "colorYellow";	
			
		// Create Icon

			_markerName = format ["%1_iconMarker", _centerPos];

			_servicePadIcon = createMarkerLocal [_markerName, _centerPos];
			_servicePadIcon setMarkerType "loc_use";
			_servicePadIcon setMarkerSize [1, 1];
			_servicePadIcon setMarkerColor 'colorWhite';
			
	};
		
		
	
	
	
	if !(isNull _centerObject) then {
	
		waitUntil {sleep 3; !(alive _centerObject) or (underwater _centerObject)};
		
		deleteVehicle _servicePad;
		
		if (_createMarkers) then {
		
			deleteMarker _servicePadMarker;
			deleteMarker _servicePadIconBackground;
			deleteMarker _servicePadIcon;
		
		};
	
	};