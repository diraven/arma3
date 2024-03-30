private ["_arrow"];

	_veh = param [0];
		_driver = driver _veh;
		_copilot = _veh turretUnit [0];
		_group = group _driver;
		_crew = units _group;
		_passengers = crew _veh;
		_passengers = _passengers - [_driver]; 
		_passengers = _passengers - [_copilot]; 
	
	_startPad = param [1];
		_startPos = getPosASL _startPad;
		_startDir = getDir _startPad;	
	_callsign = param [2];		

	if ((canMove _veh) and (alive _veh) and (alive _driver)) then {
	
		_arrow = "Sign_Arrow_Large_Blue_F" createVehicle _startPos;
		_arrow setPosASL _startPos;

		_wp = _group addWaypoint [_startPos, 0];
		_wp setWaypointType "MOVE";
		
		// Close Ramp
		
			_veh animatedoor ["door_rear_source", 0]; 
			_veh animatesource ["ramp_anim", 0];
			_veh animatesource ["ramp", 0];
			_veh animateDoor ["CargoRamp_Open", 0];
			_veh animate ["cargoDoor_1", 0]; 
			_veh animate ["cargoDoor_2", 0];
			_veh animateDoor ["cargoramp_source", 0];	
		
	};
			
			
waitUntil {((_veh distance2D _startPos) < 150) or (!canMove _veh) or (!alive _veh) or (!alive _driver)};
	
	if ((canMove _veh) and (alive _veh) and (alive _driver)) then {
				
		_veh land "LAND";
		_veh landAt _startPad;
		
		// Open Ramp
		
			_veh animatedoor ["door_rear_source", 1]; 
			_veh animatesource ["ramp_anim", 1];
			_veh animatesource ["ramp", 1];
			_veh animateDoor ["CargoRamp_Open", 1];
			_veh animate ["cargoDoor_1", 1]; 
			_veh animate ["cargoDoor_2", 1];
			_veh animateDoor ["cargoramp_source", 1];	
	
	};		

	
	// Create Headwind
		
		[_veh] spawn BEW_FNC_createHeadwind;

			
waitUntil {(isTouchingGround _veh) or (!canMove _veh) or (!alive _veh) or (!alive _driver)};

	_respawnDelay = 30;

	if ((canMove _veh) and (alive _veh) and (alive _driver)) then {
	
		_message = format ["We're back at base. Ready for tasking in %1 seconds.", _respawnDelay];
		[_veh, _message] remoteExec ["sideChat", 0];	
		
			// Drop Cargo
			
			_veh setVariable ["loadingDisabled", TRUE, TRUE];
			
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

			} forEach _attachedObjects;
		
	};

		deleteVehicle _arrow;

		{doGetOut _x} forEach _passengers;
		_veh setVehicleLock "LOCKED";
		
		sleep 5;
		
		{deleteVehicle _x} forEach _crew;
				
		deleteVehicle _veh;
		
			sleep _respawnDelay - 15;
		

