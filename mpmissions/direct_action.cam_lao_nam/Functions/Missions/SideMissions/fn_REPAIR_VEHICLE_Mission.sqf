
	_objectiveMarker = param [0];
		_objectivePos = markerPos _objectiveMarker;
		_objectiveSize = markerSize _objectiveMarker select 0;
		_objectiveText = markerText _objectiveMarker;

	
	_inAreaTrigger = param [1];
	_forceType = param [2, "OPF_1"];
	
	private _missionFailed = false;
	
	private _allUnits = [];
	private _allVehs = [];
	private _allMarkers = [];
	private _subObjectives = [];
	private _allTasks = [];

	
	// Create Initial Task
		
		_parentTask = format ["parentTask_%1", _objectiveMarker];
		
	// Add To All Tasks
		
		_allTasks pushBack _parentTask;
		
	// Change State
		
		[_parentTask, "ASSIGNED", true] call BIS_fnc_taskSetState;
		
	// Assign Task
	
		_parentTask call BIS_fnc_taskSetCurrent;
	
	
	// Define Target Vehicle Type
	
		_vehicleTypes = []; 
			_vehicleTypes = _vehicleTypes + (["A_CAR"] call BLU_VehList); 
	

	// Select Random Target Vehicle Type
	
		_type = _vehicleTypes call BIS_FNC_SelectRandom;

		
	// Find Safe Pos

		_safePos = [_objectivePos, [1, _objectiveSize], 4, 0, 0] call BEW_FNC_findRandomEmptyPosition;
		
			
	// Create Vehicle
	
		_targetVeh = createVehicle [_type, _safePos, [], 0, "NONE"];
		
		
	// Setup Target Vehicle
	
		_targetVeh setDamage 0.8;	
		_targetVeh setHit ["motor", 1];
		_targetVeh setHit ["wheel_1_1_steering", floor random 2];
		_targetVeh setHit ["wheel_1_2_steering", floor random 2];
		_targetVeh setHit ["wheel_1_3_steering", floor random 2];
		_targetVeh setHit ["wheel_1_4_steering", floor random 2];
		_targetVeh setHit ["wheel_2_1_steering", floor random 2];
		_targetVeh setHit ["wheel_2_2_steering", floor random 2];
		_targetVeh setHit ["wheel_2_3_steering", floor random 2];
		_targetVeh setHit ["wheel_2_4_steering", floor random 2];
		_targetVeh allowDamage false;
		
		
	// Create Find Task
	
		_findTask = format ["damagedVehicle_%1", _objectiveMarker];		
		_taskDescription = format ["Find and repair the damaged vehicle at %1.", _objectiveText];
		_taskTitle = format ["Find Damaged Vehicle", _objectiveText];
		
		[

			WEST, 
			[_findTask, _parentTask],
			 
			[

			_taskDescription, 
			_taskTitle, 
			_objectiveMarker

			], 

			[_objectivePos select 0, _objectivePos select 1, 0], 
			"CREATED", 
			-1, 
			true, 
			"search", 
			true

		] call BIS_fnc_taskCreate;
		
		// Add To All Tasks
		
			_allTasks pushBack _findTask;
			
		
	// Assign Task
	
		_findTask call BIS_fnc_taskSetCurrent;
	

	// Spawn Force
		
		// Spawn Force
	
			_force = [_objectivePos, _objectiveSize, _forceType, true, true, true, true, true] call BEW_FNC_spawnForce;
				_forceUnits = _force select 0;
				_forceVehs  = _force select 1;
				
				_allUnits append _forceUnits;
				_allVehs append _forceVehs;
				
	
	// Crew Static Weapons
	
		_staticsArray = [_objectivePos, _objectiveSize, _forceType] call BEW_FNC_crewStaticsInArea;
			_staticWeapons = _staticsArray select 0;
			_staticUnits = _staticsArray select 1;
			
			_allVehs append _staticWeapons;
			_allUnits append _staticUnits;
			
		
	// Intel Objects

		[_objectivePos, _objectiveSize] call BEW_FNC_spawnCabinetIntelObjects;
	
	
	// Send Message
	
		[HQ_WEST , "We have reports a friendly vehicle has been disabled near your position. Find, repair and return it to base."] remoteExec ["sideChat", 0];
	
	
	waitUntil {(west knowsAbout _targetVeh > 0) or (BEW_v_objectiveMissionCancelled)};
		
		
		// Exit If Cancelled
	
			if (BEW_v_objectiveMissionCancelled) exitWith {
		
				{
					
					if !((_x call BIS_fnc_taskState) == "SUCCEEDED") then {
					
						[_x, "FAILED"] call BIS_fnc_taskSetState
						
					};
				
				} forEach _allTasks;
				
				_cleanUpArray = [_inAreaTrigger, _allUnits, _allvehs, _allMarkers];
		
				_return = [_cleanUpArray, _missionFailed];
				
				_return
				
			};
			
			
		// Send Message
	
			if !(BEW_v_objectiveMissionCancelled) then {
		
				[HQ_WEST , "Good work! You have located the damaged vehicle. Now repair it."] remoteExec ["sideChat", 0];
				
			};
		
		// Complete Find Task
		
			[_findTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
		
		
		// Repair Task
			
			_repairTask = format ["repairVehicle_%1", _objectiveMarker];		
			_taskDescription = format ["Repair the damaged vehicle.", _objectiveText];
			_taskTitle = format ["Repair Damaged Vehicle", _objectiveText];
			
		
		// Create Task
		
			[

				WEST, 
				[_repairTask, _parentTask],
				 
				[

				_taskDescription, 
				_taskTitle, 
				_objectiveMarker

				], 

				_targetVeh, 
				"CREATED", 
				-1, 
				true, 
				"repair", 
				true

			] call BIS_fnc_taskCreate;
			
			
			// Add To All Tasks
			
				_allTasks pushBack _repairTask;
				
			
		// Assign Task
		
			_repairTask call BIS_fnc_taskSetCurrent;
			


	waitUntil {(BEW_v_objectiveMissionCancelled) or (canMove _targetVeh) or !(alive _targetVeh)};
		
	
	// Exit If Cancelled
	
		if (BEW_v_objectiveMissionCancelled) exitWith {
	
			{
				
				if !((_x call BIS_fnc_taskState) == "SUCCEEDED") then {
				
					[_x, "FAILED"] call BIS_fnc_taskSetState;
					
				};
			
			} forEach _allTasks;
			
			_cleanUpArray = [_inAreaTrigger, _allUnits, _allvehs, _allMarkers];
	
			_return = [_cleanUpArray, _missionFailed];
			
			_return
			
		};
		
		
	// Send Message
	
		if !(BEW_v_objectiveMissionCancelled) then {
		
			[HQ_WEST , "Looks like you've got the vehicle moving again. Now get it back here to base."] remoteExec ["sideChat", 0];
			
		};
		


	// Select Return Marker
	
		_returnMarker = [_objectivePos] call BEW_FNC_findReturnPoints;
		
		
	// Complete Find Task
		
			[_repairTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
		
		
		// Return Task
		
			_returnTask = format ["returnVehicle_%1", _objectiveMarker];
			_taskDescription = format ["Return the damaged vehicle to base.", _objectiveText];
			_taskTitle = format ["Recover Damaged Vehicle", _objectiveText];
			
		
		// Create Task
		
			[

				WEST, 
				[_returnTask, _parentTask],
				 
				[

				_taskDescription, 
				_taskTitle, 
				_objectiveMarker

				], 

				[markerPos _returnMarker select 0, markerPos _returnMarker select 1, 0], 
				"CREATED", 
				-1, 
				true, 
				"move", 
				true

			] call BIS_fnc_taskCreate;
			
			
			// Add To All Tasks
			
				_allTasks pushBack _returnTask;
				
			
		// Assign Task
		
			_returnTask call BIS_fnc_taskSetCurrent;
		
		
	// Escort Task
		
		_escortTask = format ["returnDamagedVehicle_%1", _objectiveMarker];		
		_taskDescription = format ["Return the damaged vehicle to base.", _objectiveText];
		_taskTitle = format ["Return Damaged Vehicle", _objectiveText];
		
		[

			WEST, 
			[_escortTask, _parentTask],
			 
			[

			_taskDescription, 
			_taskTitle, 
			_objectiveMarker

			], 

			_targetVeh, 
			"CREATED", 
			-1, 
			false, 
			"defend", 
			true

		] call BIS_fnc_taskCreate;	
		
			// Add To All Tasks
		
				_allTasks pushBack _escortTask;
	

	// Enable Vehicle Damage 
	
		_targetVeh allowDamage true;
				
	
	waitUntil {(BEW_v_objectiveMissionCancelled) or (_targetVeh distance getMarkerPos _returnMarker < 50) or !(alive _targetVeh)};
	
	
		if ((alive _targetVeh) and !(BEW_v_objectiveMissionCancelled)) then {
		
			// Eject Crew 
			
				_targetVeh setFuel 0;	
				_targetVeh setVehicleLock "LOCKED";
					
				sleep 3;
				
				{_x action ["EJECT", _targetVeh];} forEach crew _targetVeh;	
				
				[_parentTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
				[_returnTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
				[_escortTask, "SUCCEEDED"] call BIS_fnc_taskSetState;				

		}else{
			
			[_parentTask, "FAILED"] call BIS_fnc_taskSetState;
			[_returnTask, "FAILED"] call BIS_fnc_taskSetState;
			[_escortTask, "FAILED"] call BIS_fnc_taskSetState;
					
			_missionFailed = true;
		
		};

	
		_cleanUpArray = [_inAreaTrigger, _allUnits, _allvehs, _allMarkers];
		
		_return = [_cleanUpArray, _missionFailed];
		
		_return
