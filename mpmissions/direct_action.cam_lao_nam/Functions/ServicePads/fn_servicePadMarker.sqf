	
	private [
	
		"_trigger", 
		"_triggerArea", 
		"_triggerDir", 
		"_triggerShape", 
		"_markerName", 
		"_marker"
	
	];

		_trigger = _this select 0;
		_triggerArea = triggerArea _trigger;
		_triggerDir = _triggerArea select 2;
		

	waitUntil {((({(alive _x) and (_x distance2D _trigger < 150) and !(vehicle _x isKindOf 'air') and (isNull (isVehicleCargo vehicle _x))} count allPlayers) > 0)) or (getPos _trigger inArea BEW_v_HqSafeZoneMarker)};

		if (_triggerArea select 3) then {

			_triggerShape = "RECTANGLE";

		}else{

			_triggerShape = "ELLIPSE";

		};
		

		// Area Marker

			_markerName = format ["serviceArea_%1", _trigger];
			
			_marker = createMarker [_markerName, getPos _trigger]; 
			_marker setMarkerShape _triggerShape; 
			_marker setMarkerSize [_triggerArea select 0, _triggerArea select 1];
			_marker setMarkerColor "ColorYellow";
			_marker setMarkerDir _triggerDir;