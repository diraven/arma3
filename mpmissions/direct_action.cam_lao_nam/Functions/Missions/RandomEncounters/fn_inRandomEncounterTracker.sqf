
	_debug = FALSE;
	
	if (_debug) then {
	
		hint "Random Enounter Tracker Running";
		
	};
	
	private ["_randomEncounterMarker"];
	
	_randomEncounterMarker = "";
	
	while {true} do {
			
		// Check For Players In Random Encounters
		
			while {_randomEncounterMarker == ""} do {
			
				_randomEncounterMarker = [BEW_v_randomEncounterMarkers] call BEW_FNC_detectPlayerInMarkerArray;
				
				sleep 1;
				
			};	
		
			// Check For Random Encounter
			
				if (random 100 < 25) then {
					
					if (_debug) then {
					
						hint "Random Encounter Started";
						
					};
					
					[_randomEncounterMarker, selectRandom ["OPF_1", "OPF_2", "OPF_SOF"], _debug] spawn BEW_FNC_spawnRandomEncounter;
					
				}else{
					
					if (_debug) then {
					
						hint "No Random Enounter";
						
					};
					
				};
		
		while {!(_randomEncounterMarker == "")} do {
		
			_randomEncounterMarker = [BEW_v_randomEncounterMarkers] call BEW_FNC_detectPlayerInMarkerArray;
			
			sleep 1;
			
		};
		
			if (_debug) then {
		
				hint "player exited random encounter";
				
			};
			
		sleep 1;
		
	};
	
	
	