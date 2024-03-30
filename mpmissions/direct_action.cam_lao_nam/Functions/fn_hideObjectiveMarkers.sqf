
	_marker = _this select 0; 
	
	while {true} do {

		waitUntil {(objectiveMissionActive)};
			
			if (markerAlpha _marker > 0) then {
			
				_marker setMarkerAlpha 0;
			
			};
			
		waitUntil {!(objectiveMissionActive)};

				_marker setMarkerAlpha 1;
			
	};