	
	// PARAMS
	
		_veh = param [0];
		_allCrew = param [1];
			_vehGroup = _allCrew select 0;
			_passengers = _allCrew select 1;
		
		_waypointPos = param [2];
		_caller = param [3];
			_callerGroup = group _caller;
		_completionRadius = param [4, 300];
		_warningRadius = param [5, 3000];
	
	
	// Insertion Flag
	
		_insertionCompleted = false;
		
		
	// Set Move Waypoint
	
		_wp = _vehGroup addWaypoint [_waypointPos, -1];	
		_wp setWaypointType "MOVE";
		_wp setWaypointBehaviour "CARELESS";
		_wp setWaypointSpeed "NORMAL";
		_wp setWaypointVisible true;
		_wp setWaypointCompletionRadius _completionRadius;	
		_vehGroup setCurrentWaypoint _wp;
		
		
	
	// Send Message
	
		[_veh, "Reinforcement request recieved. En route to drop zone now."] remoteExec ["sideChat", 0];
	
		
	// Wait Until Near Destination
	
		waitUntil {sleep 1; !([_veh] call BEW_FNC_isVehCrewedAndOperational) or (_veh distance2D _waypointPos < _warningRadius)};
		
		
		// Set Speed Mode
		
			if !(_veh isKindof "HELICOPTER") then {
			
				_vehGroup setSpeedMode "LIMITED";
			
			};
		
		
		// Open Ramp
		
			[_veh, 1] call BEW_FNC_OpenRamp;
		
		
		// Send Message
			
			[_veh , "Be advised, we're 3 clicks out from the drop zone."] remoteExec ['sideChat', 0];
			
	
	// Wait Until Waypoint Completed
	
		waitUntil {sleep 1; !([_veh] call BEW_FNC_isVehCrewedAndOperational) or (_veh distance2D _waypointPos < _completionRadius)};
	
	
		// Delete Waypoint
			
			deleteWaypoint _wp;
				
			
		// Send Message
			
			[_veh, "Alright we're here. GO GO GO!"] remoteExec ["vehicleChat", 0];
			
			
		// Eject 
		
			_ejectCompleted = [_veh, _vehGroup, _passengers, _callerGroup] call BEW_FNC_reinforcementsEject;
		
	
	// Wait Until All Ejected
	
		waitUntil {sleep 1; !([_veh] call BEW_FNC_isVehCrewedAndOperational) or (count ((crew _veh) select {(alive _x) and !(_x in units _vehgroup)}) == 0)};	
		
		
		// Set Speed Mode
		
			_vehGroup setSpeedMode "FULL";
		
		
		// Close Ramp
		
			[_veh, 0] call BEW_FNC_OpenRamp;
		
		
		
		// Insertion Completed Flag
		
			_insertionCompleted = true;
		
	
	// Return
	
	_insertionCompleted