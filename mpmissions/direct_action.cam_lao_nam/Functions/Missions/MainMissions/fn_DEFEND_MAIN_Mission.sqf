
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
		
	// Change Destination
		
		[_parentTask,[_objectivePos select 0, _objectivePos select 1, 0]] call BIS_fnc_taskSetDestination;
		
	// Assign Task
	
		_parentTask call BIS_fnc_taskSetCurrent;
			

	// Spawn Force
	
		_infForceArray = [_objectivePos, _objectiveSize, _forceType, false, [FALSE, 0], [FALSE, 0], [TRUE, 1], [FALSE, 0]] call BEW_FNC_spawnInfForce;
					
			_infGroups = _infForceArray select 0;
			_infUnits = _infForceArray select 1;
			_infVehicles = _infForceArray select 2;
			
			_allUnits = [];
			_allUnits append _infUnits;
	
	
	// Intel Objects
		
		[_objectivePos, _objectiveSize] call BEW_FNC_spawnCabinetIntelObjects;
	
		
	// Send Message
	
		_messageText = format ["Come in DELTA. There's an enemy airborne force minutes away from %1. Intercept and destroy them!", _objectiveText];
	
		[HQ_WEST , _messageText] remoteExec ["sideChat", 0];
		
	
	// Wait Until Enemy Cleared

		_nearEnemiesGoal = count _allUnits * 0.3;
		_aliveEnemyUnits = _allUnits select {alive _x};

		while {(count _aliveEnemyUnits >= _nearEnemiesGoal) && !(BEW_v_objectiveMissionCancelled)} do {

			_aliveEnemyUnits = _allUnits select {alive _x};
			
		};


	// Complete Task 
	
		if (BEW_v_objectiveMissionCancelled) then {
		
			[_taskName, "FAILED"] call BIS_fnc_taskSetState;
			
		}else{
		
			[_taskName, "SUCCEEDED"] call BIS_fnc_taskSetState;
			
		};

	
		_cleanUpArray = [_inAreaTrigger, _allUnits, _allvehs, _allMarkers];
		
		_return = [_cleanUpArray, _missionFailed];
		
		_return
