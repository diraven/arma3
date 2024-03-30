	if (!isServer) exitWith {};
	
		private [
		
			"_veh",
			"_vehGroup",
			"_displayName",
			"_dropPos",
			"_returnPos"
		
		];
	
		_veh = _this select 0;
		_vehGroup = group driver (_veh);
		_displayName = [configFile >> "CfgVehicles" >> typeOf _veh] call BIS_fnc_displayName;
		_dropPos = _this select 1;
		_returnPos = [markerPos "wholeMapMarker", [(markerSize "wholeMapMarker" select 0), (markerSize "wholeMapMarker" select 0) + 1000], random 360, 1, [0], 10] call SHK_pos;


		// Paradrop Started Flag

			call compile format ["
			
				%1_paraDropMissionActive = true;
				publicVariable ""%1_paraDropMissionActive"";
				
			", _veh];
			
			
		// Delete Attach Helipad
		
			_attachHelipad = _veh getVariable ["attachHelipad", objNull];
			
			BEW_v_vehicleAttachHelipads = BEW_v_vehicleAttachHelipads - [_attachHelipad];
			deleteVehicle _attachHelipad;
			

		// Create Waypoint
								
			_dropZoneWP = _vehGroup addWaypoint [_dropPos, 0];

			_dropZoneWP = _vehGroup addWaypoint [_dropPos, -1];
			_dropZoneWP setWaypointType "MOVE";
			_dropZoneWP setWaypointCompletionRadius 300;

		
		// Set Altitude 
		
			_veh flyInHeight 300;

		
		// Create marker
			
			_markerName = format ["%1_Dropzone", _veh];
			_marker = createMarker [_markerName, _dropPos]; 
			_marker setMarkerShape "ICON";
			_marker setMarkerSize [0.75, 0.75];
			_marker setMarkerType "hd_objective";						
			_marker setMarkerColor BEW_v_aiVehicleColor;
			
			_markerText = format ["%1 DZ", _displayName];
			
			_marker setMarkerText _markerText;
			
			
		// Setup Vehicle
		
			{_x enableSimulationGlobal TRUE} forEach units _vehGroup;
			{_x setCaptive FALSE} forEach units _vehGroup;
			_veh setFuel 1;
			
		
		// Create Moving Marker

			[_veh , _displayName, BEW_v_aiVehicleColor] execVM "functions\fn_MovingMarker.sqf";
			
		
		// Close Ramp
			
			_veh animatedoor ["door_1_source", 0];
			_veh animatesource ["ramp", 0];
			_veh animatesource ["ramp_top", 0];
			_veh animatesource ["ramp_bottom", 0];
		
			
		// Teleport Vehicle To Runway
	
			_veh setVehiclePosition [markerPos "runwayTakeOff", [], 0, "NONE"];
			
			sleep 0.5;
			
			_veh setDir markerDir "runwayTakeOff";
			
		
		// VehicleChat Message	
				
					if ((alive _veh) and (alive driver (_veh)) and (canMove _veh)) then {
						
						// vehicle Chat Message	
							
							[_veh , "Paradrop insertion mission orders recieved. Be advised we are cleared for takeoff and heading for the DZ now."] remoteExec ["sideChat", 0];
				
					};			
		
	//Wait Until Vehicle Off The Ground
		
		waitUntil {!(isTouchingGround _veh)};

		{_x allowDamage TRUE} forEach units _vehGroup;		
		_veh allowDamage TRUE;						

						
		// Wait Until Vehicle Within 2000m of Drop Zone		
		
			waitUntil {((_veh distance (getMarkerPos _marker)) < 2000) or (!alive _veh) or (!alive driver (_veh))};
				

		// Check Vehicle and Driver Is Alive And Can Move
						
			if ((alive _veh)  and (canMove _veh) and (alive driver (_veh))) then {
						
		
				// Set Speed Mode
					
					if !(_veh isKindOf "HELICOPTER") then {
					
						_veh setSpeedMode "LIMITED";
					
					};
	
					
				// Open Ramp			
							
					_veh animatedoor ["door_1_source", 1];
					_veh animatesource ["ramp", 1];
					_veh animatesource ["ramp_top", 1];
					_veh animatesource ["ramp_bottom", 1];
						
				
						
				// Vehicle Chat Message	

					[_veh, "Okay, we're 2 clicks out from the drop zone. Get ready to jump."] remoteExec ["vehicleChat", 0];
	
			};	
		
		

		// Wait Until Vehicle Within 500m of Drop Zone			
			
			waitUntil {((_veh distance (getMarkerPos _marker)) < 400) or (!alive _veh) or (!alive driver (_veh)) or (!canMove _veh)};
						
					
				// Check Vehicle and Driver Is Alive And Can Move	
					
					if ((alive _veh)  and (canMove _veh) and (alive driver (_veh))) then {
						
							
						// Vehicle Chat Message	
					
							[_veh, "We're here! GO, GO, GO!"] remoteExec ["vehicleChat", 0];	
						
					};
					
					
			// Drop Cargo
			
				[[_veh], {
				
					_veh = _this select 0;
					_attachedObjects = attachedObjects _veh; 
					
					{
					
						_cargo = _x;

						if (isVehicleCargo _cargo == _veh) then {
					
							[_cargo] spawn BEW_FNC_paradropCargo; 

						}else{

							[_cargo] spawn BEW_FNC_paradropCargo; 

						};

						sleep 1;

					} forEach _attachedObjects;
					
				}] remoteExec ["bis_fnc_call", _veh]; 
			
			
			// Eject Passengers
				
				_allCrew = crew _veh; 
				_crew = _allCrew select {

					"turret", [0] in assignedVehicleRole _x or "driver" in assignedVehicleRole _x

				};

				_passengers = _allCrew - _crew;

	
				{

					[[_x, _veh], {

						_passenger = _this select 0;
						_veh = _this select 1;
						
						_ifaStaticLineVehs = [
					
							"LIB_C47_Skytrain",
							"LIB_C47_RAF",
							"LIB_C47_RAF_bob",
							"LIB_C47_RAF_snafu",
							"LIB_Li2",
							"UNI_C47_CAP_Grey",
							"UNI_C47_CAP_Camo"
						
						];
					
						if (vehicle _passenger == _veh) then {
												
							if (typeOf _veh in _ifaStaticLineVehs) then {
								
								[_passenger, _veh] call BEW_FNC_EjectIFA;
							
							}else{
							
								[_passenger, _veh] call BEW_FNC_Eject;
							
							};
							
							[_passenger] spawn BEW_FNC_ParadropLoadout;
		
						};		

					}] remoteExec ["bis_fnc_call", _x]; 
					
					sleep 1;
						
				} forEach _passengers;	
		
		
		// Wait Until Everyone Ejected	
						
			waitUntil {(({_x in _veh} count (call BEW_FNC_AllUnitsInGroupsWithPlayers)) < 1) or (!alive _veh) or (!alive driver (_veh)) or (!canMove _veh)};
					
					
		// Check Vehicle and Driver Is Alive And Can Move	
			
			if ((alive _veh) and (alive driver (_veh)) and (canMove _veh)) then {
				
				// Prevent Landing
			
					_veh land "NONE";
		
				// Delete Waypoints
		
					{deleteWaypoint _x} forEach waypoints _veh;
				
					
				// Delete Marker
				
					deleteMarker _marker; 
				
			
				if ((worldname in ([] call BEW_FNC_noAirfieldMaps)) or (_veh isKindOf "HELICOPTER")) then {

					_returnWP = _vehGroup addWaypoint [_returnPos, -1];
					_returnWP setWaypointType "MOVE";
					_returnWP setWaypointCompletionRadius 300;
							
				}else{
			
					// Land At Airport
					
						_veh landAt BEW_v_mainRunwayID;
					
				};
				
				
				// Set Speed Mode
			
					_veh setSpeedMode "FULL";

				
				// Close Ramp			
							
					_veh animatedoor ["door_1_source", 0];
					_veh animatesource ["ramp", 0];
					_veh animatesource ["ramp_top", 0];
					_veh animatesource ["ramp_bottom", 0];
				
				
			// Vehicle Chat Message	

				[_veh , "Paradrop mission completed. We're returning to base."] remoteExec ["sideChat", 0];

				
			} else {
			
				// Delete Marker If Vehicle Dead or Disabled
			
					deleteMarker _marker;
				
			};
	
		
		if (worldname in ([] call BEW_FNC_noAirfieldMaps)) then {
		
			waitUntil {!(alive _veh) or !(alive driver _veh) or (isTouchingGround _veh) or (_veh distance2D _returnPos < 300)};
			
		}else{
		
			waitUntil {!(alive _veh) or !(alive driver _veh) or (isTouchingGround _veh)};
		
		};
		
		
		if (!(alive _veh) or !(alive driver _veh)) then {
		
			[HQ_WEST , "Fuck. We've lost contact with the paradrop aircraft."] remoteExec ['sideChat', 0];
		
		};
		
			if (alive _veh) then {
			
				[_veh , "We've touched down at base. Paradrop mission complete."] remoteExec ['sideChat', 0];
			
				if ((isTouchingGround _veh)) then {
				
					_veh setFuel 0;
			
					sleep 30;
					
				};
							
			}else{
			
				sleep 30;
			
			};
		
			// Clean Up Vehicle
			
				deleteVehicle _veh;
				
				
			// Clean Up Crew
			
				{deleteVehicle _x} forEach units _vehGroup;
	