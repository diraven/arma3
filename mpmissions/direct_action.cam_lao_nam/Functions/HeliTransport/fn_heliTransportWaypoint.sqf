
	

	_dropPos = _this select 0;
	_veh = _this select 1 param [0];
		if (!alive _veh) exitWith {};
	_startPad = _this select 1 param [1];
		_startPos = getPos _startPad;
		_startDir = getDir _startPad;	
	_callsign = groupId (group driver _veh);		
	_group = group driver _veh;
	_crew = units _group;
	

	// Create LZ Marker And Helipad

		_markerName = format ["%1_LZmarker", _callsign];
		_marker = createMarker [_markerName, _dropPos]; 
		_marker setMarkerShape "ICON";
		_marker setMarkerType "hd_objective";		
		_marker setMarkerSize [0.75, 0.75];	
		_marker setMarkerColor BEW_v_aiVehicleColor;
		_marker setMarkerText format [" %1 LZ", _callsign];
		_TimerTrigger = objNull;
		_LZpad = "Land_HelipadEmpty_F" createVehicle _dropPos;
		
	[_veh, format ["Destination received. Proceeding to LZ at %1 now.", mapGridPosition _dropPos]] remoteExec ["sideChat", 0];	

	
	// Create Arrow
	
		_arrow = "Sign_Arrow_Large_Blue_F" createVehicle _dropPos;
		_arrow setPosATL [getPos _arrow select 0, getPos _arrow select 1, (getPos _arrow select 2) +1];


	// Delete Attach Helipad
		
	//	[_veh] call BEW_FNC_DeleteAttachHeliPad;
		
	
	// Create Move Waypoint
		
		_wp1 = _group addWaypoint [_dropPos, 0];
		_wp1 setWaypointType "MOVE";
		
	
	// Crew Setup

		_veh flyInHeight 150;
		{_x enableSimulationGlobal TRUE} forEach _crew;
		{_x setCaptive FALSE} forEach _crew;
		{_x allowDamage TRUE} forEach _crew;
		_veh allowDamage TRUE;


	// Moving Marker
			
		[_veh, _callsign, BEW_v_aiVehicleColor, "loc_heli"] spawn BEW_FNC_movingmarker;
		
		
	// Close Ramp
	
		_veh animatedoor ["door_rear_source", 0]; 
		_veh animatesource ["ramp_anim", 0];
		_veh animatesource ["ramp", 0];
		_veh animateDoor ["CargoRamp_Open", 0];
		_veh animate ["cargoDoor_1", 0]; 
		_veh animate ["cargoDoor_2", 0];
		_veh animateDoor ["cargoramp_source", 0];	
		
			
	waitUntil {((_veh distance2D _LZpad) < 150) or (!canMove _veh) or (!alive _veh) or (!alive driver (_veh))};
	
	
		if ((canMove _veh) and (alive _veh) and (alive driver (_veh))) then {
	
			_veh land "LAND";
			_veh landAt _LZpad;
			
		};
		

	// Create Headwind
		
		[_veh] spawn BEW_FNC_createHeadwind;
		
		
	waitUntil {((_veh distance2D _LZpad) < 20) or (!canMove _veh) or (!alive _veh) or (!alive driver (_veh))};	
		
		
	// Cut Slingload Cargo
	
		{

			ropeDestroy _x;

		} forEach ropes _veh;
		
		
	// Open Ramp
	
		_veh animatedoor ["door_rear_source", 1]; 
		_veh animatesource ["ramp_anim", 1];
		_veh animatesource ["ramp", 1];
		_veh animateDoor ["CargoRamp_Open", 1];
		_veh animate ["cargoDoor_1", 1]; 
		_veh animate ["cargoDoor_2", 1];
		_veh animateDoor ["cargoramp_source", 1];	

		
	waitUntil {(isTouchingGround _veh) or (!canMove _veh) or (!alive _veh) or (!alive driver (_veh))};
		
		// Set RTB Delay Time
			
			_rtbDelay = 60;
		
		
		// Delete Arrow And Marker
		
			deleteVehicle _arrow;
			deleteMarker _marker;
			
		// Send Message
			
			if ((canMove _veh) and (alive _veh) and (alive driver (_veh))) then {
				
				_message = format ["LZ reached. We're RTB in %1 seconds.", _rtbDelay];
				[_veh, _message] remoteExec ["sideChat", 0];
				
				// Drop Cargo
	
					_attachedObjects = attachedObjects _veh; 
					
					{
					
						_cargo = _x;

						if (isVehicleCargo _cargo == _veh) then {
					
							_attachedObject = _cargo;
							_veh =  attachedTo _attachedObject;
							_vehSize = sizeOf typeOf _veh * 0.5;

							_offSetPos = _veh modelToWorld [0,-(_vehSize) ,0];

							[_veh, _attachedObject] remoteExecCall ["disableCollisionWith", _veh];
							[_veh, _attachedObject] remoteExecCall ["disableCollisionWith", _attachedObject];
							
							detach _attachedObject;

							_attachedObject setVehiclePosition [_offSetPos, [], 0, "NONE"];

						}else{
							
							if (typeOf _veh == "OPTRE_Pelican_unarmed") then {
							
								_attachedObject = _cargo;
								detach _attachedObject;
							
							}else{
							
								_attachedObject = _cargo;
								_veh =  attachedTo _attachedObject;
								_vehSize = sizeOf typeOf _veh * 0.5;

								_offSetPos = _veh modelToWorld [0,-(_vehSize) ,0];

								[_veh, _attachedObject] remoteExecCall ["disableCollisionWith", _veh];
								[_veh, _attachedObject] remoteExecCall ["disableCollisionWith", _attachedObject];
								
								detach _attachedObject;

								_attachedObject setVehiclePosition [_offSetPos, [], 0, "NONE"];
							
							};

						};
						
						[_cargo] spawn {
						
							_cargo = _this select 0;
							
							_cargo allowDamage false;
							
							waitUntil {isTouchingGround _cargo};
							
							sleep 1;
							
							_cargo allowDamage true;
						
						};
						
						sleep 1;
						
					} forEach _attachedObjects;

			};

	// Transport Actions
		
	_array = [_veh, _startPad, _callsign];

	call compile format ["
	
		waypoint_%1 = false;
		
		_timerTrigger = createTrigger [""EmptyDetector"", getPos player];
		_timerTrigger setTriggerArea [1, 1, 1, false];
		_timerTrigger setTriggerActivation [""ANY"", ""PRESENT"", true];
		_timerTrigger setTriggerStatements [""!(waypoint_%1)"", """", """"];
		_timerTrigger setTriggerTimeout [_rtbDelay, _rtbDelay, _rtbDelay, true];

		[_array, {

			transportAction_%1 = _this select 0 addaction 

			[

				""<t color='#ff9900'>Set New LZ For Transport</t>"", 

				{								

					[_this select 0, transportAction_%1] remoteExec [""removeAction"", 0, true];
					[_this select 0, rtbAction_%1] remoteExec [""removeAction"", 0, true];
					
					remoteExec ["""", ""transportJIP_%1""];		

					[_this select 0, ""Transport request recieved. Mark an LZ on the map for transport.""] remoteExec [""vehicleChat"", 0];

					openmap [true,true];

					hint ""MARK LZ ON MAP FOR TRANSPORT"";

					(_this select 3) onMapSingleClick {
						onMapSingleClick {}; 							

						[_pos, _this] remoteExec [""BEW_FNC_heliTransportWaypoint"", _this select 0];

						openmap [false,false];   

						hint ""LZ SET"";

					};
					
					waypoint_%1 = true;
					publicVariable ""waypoint_%1"";

				}

				, _this, 99, false, true, """", ""(
					
						(alive %1) and
					
						((vehicle player == %1) or 
						
						(attachedTo vehicle player == %1) or 
						
						(isVehicleCargo vehicle player == %1))
					
					)"" 

			];

			_this select 0 setVariable [""tr_action_Id_%1"", transportAction_%1, true];

			publicVariable ""transportAction_%1"";

		}] remoteExec [""call"", 0, ""transportJIP_%1""];
		
		
		
		[_array, {

			rtbAction_%1 = _this select 0 addaction 

			[

				""<t color='#ff9900'>Return To Base</t>"", 

				{								
					
					[_this select 0, transportAction_%1] remoteExec [""removeAction"", 0, true];
					[_this select 0, rtbAction_%1] remoteExec [""removeAction"", 0, true];
					
					remoteExec ["""", ""rtbJIP_%1""];		

					_this select 3 remoteExec [""BEW_FNC_heliTransportRTB"", _this select 0];
					[_this select 0, ""Copy that. We're RTB now.""] remoteExec [""vehicleChat"", 0];
					
					waypoint_%1 = true;
					publicVariable ""waypoint_%1"";

				}

				, _this, 99, false, true, """", ""(
				
						(alive %1) and
					
						((vehicle player == %1) or 
						
						(attachedTo vehicle player == %1) or 
						
						(isVehicleCargo vehicle player == %1))
					
					)"" 

			];

			_this select 0 setVariable [""tr_action_Id_%1"", rtbAction_%1, true];

			publicVariable ""rtbAction_%1"";

		}] remoteExec [""call"", 0, ""rtbJIP_%1""];


	waitUntil {(triggerActivated _timerTrigger) or (waypoint_%1)};
	
		deleteVehicle _timerTrigger;
	
	if !(waypoint_%1) then {
	
		[_veh, transportAction_%1] remoteExec [""removeAction"", 0, true];
		[_veh, rtbAction_%1] remoteExec [""removeAction"", 0, true];
		
		if ((canMove _veh) and (alive _veh) and (alive driver (_veh))) then {
		
			_array spawn BEW_FNC_heliTransportRTB;
		
		};
		
		[_veh, ""We're almost at bingo fuel. RTB now.""] remoteExec [""sideChat"", 0];	
		
	};


", _veh, _callsign, _rtbDelay];