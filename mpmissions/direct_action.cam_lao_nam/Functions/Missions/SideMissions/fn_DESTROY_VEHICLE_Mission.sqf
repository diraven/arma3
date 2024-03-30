
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
		
		
	// Create Find Task
		
		_findTask = format ["findArmouredVehicleTask_%1", _objectiveMarker];		
		_taskDescription = format ["Find the enemy armoured vehicle.", _objectiveText];
		_taskTitle = format ["Find Armoured Vehicle", _objectiveText];
		
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
	
	
	// Create Vehicle
	
		_forceTypeVehList = switch (_forceType) do {
		
			case "OPF_1"	: 	{OPF_1_VehList};
			
			case "OPF_2"	:	{OPF_2_VehList};
				
			case "OPF_SOF"	:	{OPF_SOF_VehList};
			
			default {OPF_1_VehList};
			
		};
	
	
		_tankTypes = []; 
			_tankTypes = _tankTypes + (["TANK"] call _forceTypeVehList); 
			
		_type = _tankTypes call BIS_FNC_SelectRandom;

	

		// Find Safe Pos

			_safePos = [_objectivePos, [1, _objectiveSize], 4, 0, 0] call BEW_FNC_findRandomEmptyPosition;
			
			
		// Create Vehicle
	
			_targetVeh = createVehicle [_type, _safePos, [], 0, "NONE"];
			_targetVehGroup = [_targetVeh, EAST, _forceType] call BEW_FNC_createTranslatedVehicleCrew; 
			_targetVehCrew = units _targetVehGroup;
			_subObjectives pushBack _targetVeh;
			
			_allUnits append _targetVehCrew;


	// Setup Target Vehicle
		
			[leader _targetVehGroup, _objectivePos, _objectiveSize, 10] spawn BEW_FNC_taskPatrol;
			_targetVeh setVariable ["canPlaceExplosives", TRUE, TRUE];
			
	
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
	
		[HQ_WEST , "We have reports of an enemy armoured vehicle operating in the area. Find and destroy it."] remoteExec ["sideChat", 0];
		


	waitUntil {!(alive _targetVeh) or (west knowsAbout _targetVeh > 0) or (BEW_v_objectiveMissionCancelled)};
	
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
	
	// Complete Find Task
	
		[_findTask, "SUCCEEDED"] call BIS_fnc_taskSetState;

	
	// Create Destroy Task
		
		_destroyTask = format ["destroyArmouredVehicleTask_%1", _objectiveMarker];		
		_taskDescription = format ["Destroy the armoured vehicle.", _objectiveText];
		_taskTitle = format ["Destroy Armoured Vehicle", _objectiveText];
		
		[

			WEST, 
			[_destroyTask, _parentTask],
			 
			[

			_taskDescription, 
			_taskTitle, 
			_objectiveMarker

			], 

			_targetVeh, 
			"CREATED", 
			-1, 
			true, 
			"destroy", 
			true

		] call BIS_fnc_taskCreate;
		
		// Add To All Tasks
		
			_allTasks pushBack _destroyTask;
		
		
	// Assign Task
	
		_destroyTask call BIS_fnc_taskSetCurrent;
	


	// Send Message
	
		if !(BEW_v_objectiveMissionCancelled) then {
		
			[HQ_WEST , "Alright you've found the target vehicle. Now take it out."] remoteExec ["sideChat", 0];
		
		};

	
	// Wait Until Mission Complete

		waitUntil {(count (_subObjectives select {alive _x}) < 1) or (BEW_v_objectiveMissionCancelled)};
		
		
		// Send Message
	
			if !(BEW_v_objectiveMissionCancelled) then {
			
				[HQ_WEST , "Well done! That's one more threat our forces won't have to deal with."] remoteExec ["sideChat", 0];
			
			};
		
		
	// Complete Task 
		
		if (BEW_v_objectiveMissionCancelled) then {
		
			[_parentTask, "FAILED"] call BIS_fnc_taskSetState;
			[_destroyTask, "FAILED"] call BIS_fnc_taskSetState;
			
		}else{
			
			[_parentTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
			[_destroyTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
			
		};
		
		_cleanUpArray = [_inAreaTrigger, _allUnits, _allvehs, _allMarkers];
		
		_return = [_cleanUpArray, _missionFailed];
		
		_return
