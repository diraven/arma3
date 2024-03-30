
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
	
	// Establish Comms Objective
	
		_towerObjectives = [_objectivePos, _objectiveMarker, _parentTask, _objectiveSize] call BEW_FNC_establishComms;
		
	// Eliminate Enemies Task
		
		_eliminateEnemiesTask = format ["eliminateForceTask_%1", _objectiveMarker];	
		_taskDescription = format ["Clear the infected area at %1.", _objectiveText];
		_taskTitle = format ["Clear Infected Area", _objectiveText];
		
		[

			WEST, 
			[_eliminateEnemiesTask, _parentTask],
			 
			[

			_taskDescription, 
			_taskTitle, 
			_objectiveMarker

			], 

			[_objectivePos select 0, _objectivePos select 1, 0], 
			"CREATED", 
			-1, 
			false, 
			"attack", 
			false

		] call BIS_fnc_taskCreate;
		
		// Add To All Tasks
		
			_allTasks pushBack _eliminateEnemiesTask;
			
	
	// Spawn Force
		
		// Spawn Force
	
			_force = [_objectivePos, _objectiveSize, _forceType, false, true, true, true, true] call BEW_FNC_spawnForce;
				_forceUnits = _force select 0;
				_forceVehs  = _force select 1;
				
				_allUnits append _forceUnits;
				_allVehs append _forceVehs;
				
				
	// Spawn Empty Cars
	
		[_objectivePos, _objectiveSize, random 5, TRUE] call BEW_FNC_spawnEmptyCars;
				
	
	// Rescue Hostage
	
		_hostage = [_objectivePos, _objectiveSize, _objectiveMarker, _parentTask] call BEW_FNC_rescueHostage;
		
	// Supply Drop
		
		_selectedPos = [_objectivePos, [1, _objectiveSize - 100], random 360, 1, [0], 10] call SHK_pos;
		[_selectedPos, 20, 10, [FALSE, 300]] spawn BEW_FNC_SupplyDrop;

	
	// Count Enemy Force
				
		_nearEntites = _objectivePos nearEntities ["Man", _objectiveSize];
		_nearEnemies = _nearEntites select {([west, side _x] call BIS_fnc_sideIsEnemy) and !(_x in BEW_v_HunterUnits)};
		_nearEnemiesGoal = count _nearEnemies * 0.2;


	// Wait Until Enemies In Area Killed

		while {(count _nearEnemies >= _nearEnemiesGoal) && !(BEW_v_objectiveMissionCancelled)} do {

			_nearEntites = _objectivePos nearEntities ["Man", _objectiveSize];
			_nearEnemies = _nearEntites select {([west, side _x] call BIS_fnc_sideIsEnemy) and !(_x in BEW_v_HunterUnits)};
			
		};
		
	
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
	
	
	// Complete Eliminate Enemies Task
	
		[_eliminateEnemiesTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
	

	// Wait Until Mission Complete

		waitUntil {((count (_subObjectives select {alive _x}) < 1) and ((count (_towerObjectives select {_x getVariable ["commsEstablished", FALSE]}) == count _towerObjectives) or !(count (_towerObjectives select {alive _x}) == count _towerObjectives))) or (BEW_v_objectiveMissionCancelled)};
	

	// Complete Task 
	
		if (BEW_v_objectiveMissionCancelled) then {
		
			[_parentTask, "FAILED"] call BIS_fnc_taskSetState;
			
		}else{
		
			[_parentTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
			
			// Send Message
			
				[HQ_WEST , format ["Well done! The enemy force is in retreat. We're have control of the position.", _objectiveText]] remoteExec ["sideChat", 0];
			
		};

		
		_cleanUpArray = [_inAreaTrigger, _allUnits, _allvehs, _allMarkers];
		
		_return = [_cleanUpArray, _missionFailed];
		
		_return
