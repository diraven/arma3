	
	private [];
	
	_originalObject = _this select 0;
			

	// Open Map
	
		openmap [true,true];
	
	
	// Animate Map
	
		[2.0, 0.4, getPos player] call BIS_fnc_mapAnimAdd;


	// Define Possible Missions
	
		_possibleMissions = (BEW_v_all_Objectives select {!(markerColor _x == "colorBLUFOR") and !(markerAlpha _x == 0)});

	// Create Animated Markers
	
		_iconMarkers = [];
		
			{
			
				_objectiveMarker = _x;
				
				_markerName = format ["objectiveMissionBoardIcon_%1", _objectiveMarker];
				
				_iconMarker = [_objectiveMarker, _markerName] call BEW_FNC_spinningMapMarker;
				
				_iconMarkers pushback _iconMarker;	

			} forEach _possibleMissions;
	
	
	// Create Cancel Position
	
		_cancelMarker = [_originalObject, "cancelMarker"] call BEW_FNC_spinningMapMarker;
			_iconMarkers pushback _cancelMarker;	
			
			
	// Create Text Marker
	
		_cancelTextMarker = createMarkerLocal ["cancelMarkerText", getPos _originalObject];	
		_cancelTextMarker setMarkerTypeLocal "EmptyIcon";	
		_cancelTextMarker setMarkerTextLocal "CANCEL SELECT MISSION";
		_cancelTextMarker setMarkerSizeLocal [1, 1];
		_cancelTextMarker setMarkerColorLocal "colorWhite";
	
	
	// Notify Player To Select
	
		hint "SELECT NEXT MISSION OBJECTIVE";
	
	
	// On Player Click Map
	
		_array = [_originalObject, _possibleMissions, _iconMarkers, _cancelTextMarker];
		
		_array onMapSingleClick {
		
			_originalObject = _this select 0;
			_possibleMissions = _this select 1;
			_iconMarkers = _this select 2;
			_cancelTextMarker = _this select 3;
		
		
		// Detect If Player Clicked On Marker
		
			if (count (_iconMarkers select {markerPos _x distance2D _pos < 30}) > 0) then {
									
				onMapSingleClick {};
											
				openmap [false,false];
				
				
			// Detect If Player Clicked On Mission Or Cancelled
			
				if (_originalObject distance2D _pos > 30) then {


					// Select Mission
					
						_selectedMission = [_possibleMissions, _pos] call BIS_fnc_nearestPosition;
					
					
					// Make Current Objective
				
						[_selectedMission, {
							
							_selectedMission = _this;
							
							BEW_v_currentActiveObjective pushBack toUpper _selectedMission;
						
						}] remoteExec ["bis_fnc_call", 2]; 
				
					hint "NEW MISSION SELECTED";
					
				}else{
				
					hint "SELECT MISSION CANCELLED";								
				
				};
				
				
				// Delete Markers
				
					{deleteMarkerlocal _x} forEach _iconMarkers;
					deleteMarkerLocal _cancelTextMarker;


			}else{
			
				systemchat "NOT A VALID MISSION";
			
			};
				
		};