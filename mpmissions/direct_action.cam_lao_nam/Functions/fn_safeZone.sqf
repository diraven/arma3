// Define Safe Zone Markers

	_safeZoneMarkers = [];

	_safeZoneMarkers = getMissionLayerEntities "Camps" select 1; 
	_blu_safeZoneMarkers = getMissionLayerEntities "BLU_Camps" select 1; 
	_opf_safeZoneMarkers = getMissionLayerEntities "OPF_Camps" select 1; 

{

		_marker = _x;
		_markerPos = markerPos _marker;
		_markerDir = markerDir _marker;
		_markerSizeA = markerSize _marker select 0;
		_markerSizeB = markerSize _marker select 1;
		_markerText = markerText _marker;
		_marker setMarkerAlpha 0;
		
		if !(BEW_v_RandomSpawn) then {
		
			if (_x in _blu_safeZoneMarkers) then {
			
				_marker setMarkerColor "colorBLUFOR";
				_marker setMarkerAlpha 0.5;
				_marker setMarkerBrush "FDiagonal";
		
				// Icon 
				
					[_marker, "BLU"] call BEW_FNC_HQMarkerIcon;			
					
			};
			
			if (_x in _opf_safeZoneMarkers) then {
			
				_marker setMarkerColor "colorOPFOR";
				_marker setMarkerAlpha 0.5;
				_marker setMarkerBrush "FDiagonal";
		
				// Icon 
				
					[_marker, "OPF_1"] call BEW_FNC_HQMarkerIcon;			
					
			};
			
			if (toUpper _x in BEW_v_activatedAlliedCamps) then {
				
				_marker setMarkerAlpha 0.5;
			
			};
		
		};
	
	if !(BEW_v_Zombies) then {
	
		[[_marker, _markerPos, _markerDir, _markerSizeA, _markerSizeB, _markerText], {
		
			params ["_marker", "_markerPos", "_markerDir", "_markerSizeA", "_markerSizeB", "_markerText"];

			call compile format ["

				_safeZoneTrigger = createTrigger [""EmptyDetector"", _markerPos, false];
				_safeZoneTrigger setTriggerArea [_markerSizeA, _markerSizeB, _markerDir, false];
				_safeZoneTrigger setTriggerActivation [""ANY"", ""PRESENT"", true];
				_safeZoneTrigger setTriggerStatements [""(vehicle player in thisList) and !(triggerActivated baseAATrigger)"", ""systemchat 'You are in the %1 safe zone.'; player allowdamage false;"", ""systemchat 'You have left the %1 safe zone.'; player allowdamage true;""];

			", _markerText];
		
		}] remoteexec ["bis_fnc_call", 0, true];
	
	};
	
} forEach _safeZoneMarkers;