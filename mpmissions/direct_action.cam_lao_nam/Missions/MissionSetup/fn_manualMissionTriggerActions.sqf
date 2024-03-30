	
	_missionTriggerObject = _this select 0;
	_missionTriggerObjectPos = getPos _missionTriggerObject;
	
	
	// Create Markers
	
		_allIconMarkers = [];
		_allTextMarkers = [];
	
		// Create Cancel Markers
			
			_textMarkerName = format ['missionTriggerObjectText_%1', _missionTriggerObject];
											
			_missionTriggerObjectTextMarker = createMarkerLocal [_textMarkerName, _missionTriggerObjectPos];	
			_missionTriggerObjectTextMarker setMarkerTypeLocal 'mil_objective';	
			_missionTriggerObjectTextMarker setMarkerTextLocal "CANCEL SELECT MISSION";
			_missionTriggerObjectTextMarker setMarkerSizeLocal [0.5, 0.5];
			_missionTriggerObjectTextMarker setMarkerColorLocal 'colorWhite';
					
			_allTextMarkers = _allTextMarkers + [_missionTriggerObjectTextMarker];
			
					
			_iconMarkerName = format ['missionTriggerObjectIcon_%1', _missionTriggerObject];
			
			_missionTriggerObjectIconMarker = createMarkerLocal [_iconMarkerName, _missionTriggerObjectPos];	
			_missionTriggerObjectIconMarker setMarkerTypeLocal 'mil_objective';	
			_missionTriggerObjectIconMarker setMarkerSizeLocal [0.5, 0.5];
			_missionTriggerObjectIconMarker setMarkerColorLocal 'colorPink';
			
			_allIconMarkers = _allIconMarkers + [_missionTriggerObjectIconMarker];
		
		
		// Create Objective Markers
	
			{
			
				_objectiveMarker = _x;
				_markerPos = markerPos _objectiveMarker;
				
				_areaMarkerName = format ["%1_triggerArea", _objectiveMarker];
				
				if ((markerAlpha _areaMarkerName > 0) and !(markerColor _objectiveMarker == "colorBlufor")) then {
				
					_textMarkerName = format ['missionManualTriggerText_%1', _objectiveMarker];
													
					_textMarker = createMarkerLocal [_textMarkerName,_markerPos];	
					_textMarker setMarkerTypeLocal 'mil_objective';	
					_textMarker setMarkerTextLocal "";
					_textMarker setMarkerSizeLocal [0.5, 0.5];
					_textMarker setMarkerColorLocal 'colorWhite';
					
					_allTextMarkers = _allTextMarkers + [_textMarker];
					
																										
					_iconMarkerName = format ['missionManualTriggerIcon_%1', _objectiveMarker];
					
					_iconMarker = createMarkerLocal [_iconMarkerName,_markerPos];	
					_iconMarker setMarkerTypeLocal 'mil_objective';	
					_iconMarker setMarkerSizeLocal [0.5, 0.5];
					_iconMarker setMarkerColorLocal 'colorPink';	
					
					_allIconMarkers = _allIconMarkers + [_iconMarker];
				
				};
				
			} forEach BEW_v_AllObjectiveMarkers;
			
	// Map Click
	
		openmap [true, true];
	
		[_missionTriggerObjectIconMarker, _missionTriggerObjectTextMarker, _allIconMarkers, _allTextMarkers, BEW_v_AllObjectiveMarkers] onMapSingleClick {
			
				_missionTriggerObjectIconMarker = _this select 0;
				_missionTriggerObjectTextMarker = _this select 1;
				_allIconMarkers = _this select 2;
				_allTextMarkers = _this select 3;
				_allObjectiveMarkers = _this select 4;
				
				_nearestMissionSelectMarker = [_allIconMarkers, _pos] call BIS_fnc_nearestPosition;
				_nearestObjectiveMarker = [_allObjectiveMarkers, _pos] call BIS_fnc_nearestPosition;												
																
				if (markerPos _missionTriggerObjectIconMarker distance2D _pos < 50) then {

						missionTriggerObjectActivated = FALSE;
							publicVariable "missionTriggerObjectActivated";

						hint "SELECT MISSION CANCELLED";
						onMapSingleClick {};
		
						{deleteMarkerLocal _x} forEach _allTextMarkers;
						{deleteMarkerLocal _x} forEach _allIconMarkers;

						openmap [false, false];

			}else{

				if (markerPos _nearestMissionSelectMarker distance2D _pos > 50) then {

					hint "NOT A VALID OBJECTIVE";
				
				}else{
				
					if (objectiveMissionActive) then {
					
						missionTriggerObjectActivated = FALSE;
							publicVariable "missionTriggerObjectActivated";

						hint "MISSION ALREADY ACTIVE";
						onMapSingleClick {};
		
						{deleteMarkerLocal _x} forEach _allTextMarkers;
						{deleteMarkerLocal _x} forEach _allIconMarkers;

						openmap [false, false];
					
					}else{
				
						hint "MISSION SELECTED";
						
						_nearestObjectiveMarker setMarkerColor "colorWhite";
								
						{deleteMarkerLocal _x} forEach _allTextMarkers;
						{deleteMarkerLocal _x} forEach _allIconMarkers;

						openmap [false, false];
						
						[] spawn {
						
							waitUntil {objectiveMissionActive};
							
							waitUntil {!objectiveMissionActive};
							
							missionTriggerObjectActivated = FALSE;
								publicVariable "missionTriggerObjectActivated";
							
						};
					
					};
				
				};
				
			};
			
		};
	

	
	