	
	private ["_runwayMarker"];
	
	
	_veh = param [0];
	_vehGroup = param [1];
	_waypointPos = param [2];
	_runwayMarker = param [3, ""];
	_completionRadius = param [4, 300];
	_warningRadius = param [5, 3000];
	_land = param [6, false];
	
	
	// Insertion Flag
	
		_rtbCompleted = false;
		
		
		// Prevent Landing
							
			_veh land "NONE";


		// Delete Waypoints

			{deleteWaypoint _x} forEach waypoints _vehGroup;
			
			
		// Prevent
		
			if (_veh isKindOf "HELICOPTER") then {
			
				_runwayMarker = "";
			
			};
		
		
		// Select Airport Landing
	
			if (_runwayMarker == "") then {
				
				// Set Move Waypoint
				
					_wp = _vehGroup addWaypoint [_waypointPos, -1];	
					_wp setWaypointType "MOVE";
					_wp setWaypointBehaviour "CARELESS";
					_wp setWaypointSpeed "FULL";
					_wp setWaypointVisible true;
					_wp setWaypointCompletionRadius _completionRadius;	
					_vehGroup setCurrentWaypoint _wp;

			}else{
						
				// Land At Airport
				
					_veh landAt BEW_v_mainRunwayID;
			
			};
		
	
		// Send Message
			
			[_veh, "Drop completed. Returning to base."] remoteExec ["sideChat", 0];
			
		if (_runwayMarker == "") then {
			
			
			// Wait Until Back At Spawn Pos
				
				waitUntil {sleep 1; !([_veh] call BEW_FNC_isVehCrewedAndOperational) or ((_veh distance2D _waypointPos) < 300)};

				
			// Send Message
				
				[_veh , "Reinforcement mission complete. We will be back online for tasking shortly."] remoteExec ['sideChat', 0];
				
			
				sleep 3;
			
			
			// Delete Crew
					
				{
				
					deleteVehicle _x;
				
				} forEach crew _veh;
			
			
			// Delete Vehicle
			
				deleteVehicle _veh;
		
		
		}else{
		
		
			// Wait Until Landed On Runway
				
				waitUntil {sleep 1; !([_veh] call BEW_FNC_isVehCrewedAndOperational) or (isTouchingGround _veh)};
		
		
			// Send Message
				
				[_veh , "We've touched down at base. We will be back online for tasking shortly."] remoteExec ['sideChat', 0];
				
			
			// Wait For Clean Up
			
				[_veh] spawn {
				
					_veh = _this select 0;
					
					// Set Fuel To 0 To Stop Takeoff
					
						_veh setFuel 0;
					
					
					// Delay
					
						sleep 30;
					
					
					// Delete Crew
					
						{
						
							deleteVehicle _x;
						
						} forEach crew _veh;
					
					
					// Delete Vehicle
					
						deleteVehicle _veh;
					
			};
		
		};
		
		// Insertion Completed Flag
		
			_rtbCompleted = true;
		
	
	// Return
	
	_rtbCompleted