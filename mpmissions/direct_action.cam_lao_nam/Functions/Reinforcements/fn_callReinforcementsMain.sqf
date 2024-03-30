	
	private [
	
		"_dropPos",
		"_caller",
		"_callerGroup",
		"_runwayMarker",
		"_spawnPos",
		"_faction",
		"_side",
		"_debug"

	];
	
	
	_dropPos = param [0];
	_caller = param [1];
	_callerGroup = param [2];
	_runwayMarker = param [3, ""];
	_faction = param [4, "BLU"];
	_side = param [5, WEST];
	
	_debug = FALSE;
	
	
	// No TakeOff Or Landing For No Airfield Maps
		
		if (worldName in ([] call BEW_FNC_NoAirfieldMaps)) then {
		
			_runwayMarker = "";
			
		};
		

	// Paradrop Mission Flag
	
		BEW_V_reinforcementRequestActive = TRUE;
			publicVariable "BEW_V_reinforcementRequestActive";
	
		
		// Check Runway Exists
		
			if (_runwayMarker == "") then {
			
				// Dynamically Select Spawn Pos
				
					_minDistance = markerSize "wholeMapMarker" select 0;
					//_minDistance = 1000; 
					_maxDistance = _minDistance + 1000;
				
					_spawnPos = [markerPos "wholeMapMarker", [_minDistance, _maxDistance], random 360, 1, [0], 10] call SHK_pos;
					
			}else{
					
				// SpawnPos is Runway
				
					_spawnPos = markerPos _runwayMarker;
			
			};
		

		// Create Vehicle

			_vehArray = [_spawnPos, _runwayMarker, _faction, _side, _dropPos] call BEW_FNC_createReinforcementsVehicle;
			_veh = _vehArray select 0;
			_vehGroup = _vehArray select 1;
			
		
		// Create Infantry Group
		
			_infantryGroup = [_veh, _faction, _side] call BEW_FNC_reinforcementsInfantrySquad;
			
	
		// Create Insertion Marker
			
			_markerName = format ["%1_DropZone", _veh];
			_insertionMarker = [_dropPos, _markerName, "ICON", "hd_objective", "colorGREEN", "Drop Zone", [0.75, 0.75], 1] call BEW_FNC_CreateMarker;
		

		// Insertion Script
				
			_insertionCompleted = [_veh, [_vehGroup, _infantryGroup], _dropPos, _caller] call BEW_FNC_reinforcementsInsertion;


	// Wait Until Inserted

		waitUntil {!([_veh] call BEW_FNC_isVehCrewedAndOperational) or (_insertionCompleted)}; 
		
		
		// Delete Insertion Marker
		
			deleteMarker _insertionMarker;
			
			
		// Create RTB Marker
						
			_markerName = format ["%1_RTB", _veh];
			_rtbMarker = [_spawnPos, _markerName, "ICON", "hd_objective", "colorGREEN", "RTB", [0.75, 0.75], 0] call BEW_FNC_CreateMarker;
			

		// RTB Script
		
			_rtbCompleted = [_veh, _vehGroup, _spawnPos, _runwayMarker] call BEW_FNC_reinforcementsRTB;
			
		
	// Wait Until RTB

		waitUntil {!([_veh] call BEW_FNC_isVehCrewedAndOperational) or (_rtbCompleted)}; 
		
		
		// Delete Insertion Marker
		
			deleteMarker _rtbMarker;
		
		
		// Delay
		
			sleep 10;
		
		
		// Available Message

			[HQ_WEST, "Paradrop reinforcements are now available."] remoteExec ["sideChat", 0];
		
		
		// Paradrop Mission Flag
		
			BEW_V_reinforcementRequestActive = FALSE;
				publicVariable "BEW_V_reinforcementRequestActive";
		