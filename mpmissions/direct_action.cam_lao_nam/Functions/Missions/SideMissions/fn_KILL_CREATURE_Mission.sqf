
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
		
		_findTask = format ["findCreatureTask_%1", _objectiveMarker];		
		_taskDescription = format ["Find the creature.", _objectiveText];
		_taskTitle = format ["Find Creature", _objectiveText];
		
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
	

		// Find Safe Pos

			_safePos = [_objectivePos, [1, _objectiveSize], 4, 0, 0] call BEW_FNC_findRandomEmptyPosition;
			
			
		// Create Vehicle
		
				// Get Side
			
					_side = call compile format ["

						_side = %1_InfantryArray select 0;

						_side

					",_forceType];

				_vehGroup = createGroup [_side, true];
				_targetVeh = _vehGroup createUnit ["WBK_SpecialZombie_Smasher_1", _safePos, [], 0, "FORM"];
				
				// Patrol
				
					[_targetVeh, _objectivePos, _objectiveSize, 10] spawn BEW_FNC_taskPatrol;
					_allUnits pushBack _targetVeh;
	
			_subObjectives pushBack _targetVeh;

	
	// Spawn Force
		
		// Spawn Force
	
			_force = [_objectivePos, _objectiveSize, _forceType, true, true, true, true, true] call BEW_FNC_spawnForce;
				_forceUnits = _force select 0;
				_forceVehs  = _force select 1;
				
				_allUnits append _forceUnits;
				_allVehs append _forceVehs;
						
		
	// Intel Objects

		[_objectivePos, _objectiveSize] call BEW_FNC_spawnCabinetIntelObjects;
	
	
	// Send Message
	
		[HQ_WEST , "We have reports of a creature in the area. Find and kill it."] remoteExec ["sideChat", 0];
		


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
		
		_destroyTask = format ["killCreatureTask_%1", _objectiveMarker];		
		_taskDescription = format ["Kill the creature.", _objectiveText];
		_taskTitle = format ["Kill Creature", _objectiveText];
		
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
		
			[HQ_WEST , "Alright you've found the creature. Now take it out."] remoteExec ["sideChat", 0];
		
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
