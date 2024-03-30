	if (!isServer) exitWith {};
	
		private [
		
			"_veh",
			"_vehGroup",
			"_vehDisplayName",
			"_towedDisplayName",
			"_dropPos",
			"_endPos",
			"_towedVehicle"
		
		];
	
		_towedVehicle = _this select 0;
		_towedDisplayName = [configFile >> "CfgVehicles" >> typeOf _towedVehicle] call BIS_fnc_displayName;
		_dropPos = _this select 1;
		_faction = "BLU";
		_endPos = getMarkerPos "mapCorner";

			
		// Create Tow Vehicle
		
			call compile format ["

				_translationList = [[%1_Map_TransList, %1_New_TransList]];

			", _faction];
									
			_type = ["B_T_VTOL_01_vehicle_F", _translationList] call BEW_FNC_TranslateClassNames;			
			
			_veh = createVehicle [_type, markerPos "runwayTakeOff", [], 0, "CAN_COLLIDE"];
			_vehDisplayName = [configFile >> "CfgVehicles" >> typeOf _veh] call BIS_fnc_displayName;
			_vehGroup = createVehicleCrew _veh;
			_veh setVehiclePosition [markerPos "runwayTakeOff", [], 0, "NONE"];
			_veh setDir markerDir "runwayTakeOff";


		// Glider Started Flag

			call compile format ["
			
				%1_gliderMissionActive = true;
				publicVariable ""%1_gliderMissionActive"";
				
			", _towedVehicle];


		// Create Waypoint
								
			_dropZoneWP = _vehGroup addWaypoint [_dropPos, 0];

			_dropZoneWP setWaypointType "MOVE";
			_dropZoneWP setWaypointCompletionRadius 400;

		
		// Set Altitude 
		
			_veh flyInHeight 300;

		
		// Create marker
			
			_markerName = format ["%1_Dropzone", _veh];
			_marker = createMarker [_markerName, _dropPos]; 
			_marker setMarkerShape "ICON";
			_marker setMarkerSize [0.75, 0.75];
			_marker setMarkerType "hd_objective";						
			_marker setMarkerColor BEW_v_aiVehicleColor;
			
			_markerText = format ["%1 DZ", _vehDisplayName];
			
			_marker setMarkerText _markerText;
			
			
		// Setup Vehicle
		
			{_x enableSimulationGlobal TRUE} forEach units _vehGroup;
			{_x setCaptive FALSE} forEach units _vehGroup;
			_veh setFuel 1;
			
		
		// Create Moving Marker

			[_veh , _vehDisplayName, BEW_v_aiVehicleColor] execVM "functions\fn_MovingMarker.sqf";
			
		
		// Close Ramp
			
			_veh animatedoor ["door_1_source", 0];
			_veh animatesource ["ramp", 0];
			_veh animatesource ["ramp_top", 0];
			_veh animatesource ["ramp_bottom", 0];
			
			
		// Teleport Towed Vehicle To Runway
			
			private ["_offsetPos"];
			
			if ((typeOf _towedVehicle == "LIB_HORSA") or (typeOf _towedVehicle == "LIB_HORSA_RAF")) then {
			
				_offsetPos = _veh modelToWorld [0, -22, 0];
				
			}else{
			
				_offsetPos = _veh modelToWorld [0, -19, 0];
				
			};
				
			
			sleep 2;
			
			_towedVehicle setVehiclePosition [_offsetPos, [], 0, "NONE"];
			
			sleep 0.25;
			
			[_towedVehicle, markerDir "runwayTakeOff"] remoteExec ["setDir", driver _towedVehicle];
			
			sleep 2;
			
		// Moving Marker
		
			[_towedVehicle , "Glider", "colorGreen"] execVM "functions\fn_MovingMarker.sqf";
			
		// Attach To Tow Plane
		
			[_towedVehicle] remoteExec ["LIB_G_TowAttach", driver _towedVehicle];
			
		
		// Can Respawn Towed Vehicle
		
			_towedVehicle setVariable ["canRespawn", true, true];
			
		
		// VehicleChat Message	
				
			if ((alive _veh) and (alive driver (_veh)) and (canMove _veh)) then {
				
				// vehicle Chat Message	
					
					[_veh , "Glider insertion mission orders recieved. Be advised we are cleared for takeoff and heading for the DZ now."] remoteExec ["sideChat", 0];
		
			};			
		
	//Wait Until Vehicle Off The Ground
		
		waitUntil {!(isTouchingGround _veh)};

		{_x allowDamage TRUE} forEach units _vehGroup;		
		_veh allowDamage TRUE;			
		_towedVehicle allowDamage TRUE;				

		_veh setSpeedMode "LIMITED";
		
		
		// Allow Glider To Be Activated
		
			_towedVehicle setVariable ["gliderCanBeActivated", TRUE, TRUE];
			
			
		// Wait Until Vehicle Within 2000m of Drop Zone		
		
			waitUntil {((_veh distance (getMarkerPos _marker)) < 2000) or (!alive _veh) or (!alive driver (_veh))};
				

		// Check Vehicle and Driver Is Alive And Can Move
						
			if ((alive _veh)  and (canMove _veh) and (alive driver (_veh))) then {

	
				// Open Ramp			
							
					_veh animatedoor ["door_1_source", 1];
					_veh animatesource ["ramp", 1];
					_veh animatesource ["ramp_top", 1];
					_veh animatesource ["ramp_bottom", 1];
						
				
						
				// Vehicle Chat Message	

					[_veh, "Okay, we're 2 clicks out from the drop zone. Get ready to jump."] remoteExec ["vehicleChat", 0];
	
			};	
		
		

		// Wait Until Vehicle Within 500m of Drop Zone			
					
			waitUntil {((_veh distance (getMarkerPos _marker)) < 500) or (!alive _veh) or (!alive driver (_veh)) or (!canMove _veh)};
						
					
				// Check Vehicle and Driver Is Alive And Can Move	
					
					if ((alive _veh)  and (canMove _veh) and (alive driver (_veh))) then {
						
							
						// Vehicle Chat Message	
					
							[_veh, "We're here! GO, GO, GO!"] remoteExec ["vehicleChat", 0];	
						
					};
			
		
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
			
				// Land At Airport
				
					_veh landAt BEW_v_mainRunwayID;
				
				
				// Set Speed Mode
			
					_veh setSpeedMode "FULL";

				
				// Close Ramp			
							
					_veh animatedoor ["door_1_source", 0];
					_veh animatesource ["ramp", 0];
					_veh animatesource ["ramp_top", 0];
					_veh animatesource ["ramp_bottom", 0];
				
				
			// Vehicle Chat Message	

				[_veh , "Glider mission completed. We're returning to base."] remoteExec ["sideChat", 0];

				
			} else {
			
				// Delete Marker If Vehicle Dead or Disabled
			
					deleteMarker _marker;
				
			};
	
		
		waitUntil {!(alive _veh) or !(alive driver _veh) or (isTouchingGround _veh)};
		
		
		if (!(alive _veh) or !(alive driver _veh)) then {
		
			[HQ_WEST , "Fuck. We've lost contact with the Glider aircraft."] remoteExec ['sideChat', 0];
		
		};
		
			if ((alive _veh) and (isTouchingGround _veh)) then {
			
				[_veh , "We've touched down at base. Glider mission complete."] remoteExec ['sideChat', 0];
				
				_veh setFuel 0;
			
				sleep 30;
			
			}else{
			
				sleep 5;
			
			};
		
			// Clean Up Vehicle
			
				deleteVehicle _veh;
				
				
			// Clean Up Crew
			
				{deleteVehicle _x} forEach units _vehGroup;
	