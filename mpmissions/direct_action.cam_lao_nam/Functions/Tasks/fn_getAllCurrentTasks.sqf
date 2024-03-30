	
	_unit = param [0];
	
	BEW_v_allTasksArray = [];
	
	_allTasks = _unit call BIS_fnc_tasksUnit;
	
	{
		
		_taskID = _x;
		_taskOwner = WEST;
		_taskDescription = _taskID call BIS_fnc_taskDescription;
		_taskDestination = _taskID call BIS_fnc_taskDestination;
		_taskState = _taskID call BIS_fnc_taskState;
		_taskType = [_taskID] call BIS_fnc_taskType;
		_taskVisible = _taskID call BIS_fnc_taskAlwaysVisible;
		
		
		_taskArray = [
		
			_taskID, 
			_taskOwner, 
			_taskDescription, 
			_taskDestination, 
			_taskState, 
			-1, 
			false, 
			false, 
			_taskType, 
			_taskVisible
		
		];
		
		BEW_v_allTasksArray pushBack _taskArray;
	
	} forEach _allTasks;
	
	
	
	