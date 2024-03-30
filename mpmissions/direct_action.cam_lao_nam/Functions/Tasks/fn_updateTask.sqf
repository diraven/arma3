
// [_taskName, [_description, _title, _marker], _type, _destination, _state, _showHint] call BEW_FNC_UpdateTask;

	private [
	
		"_taskName",
		"_descriptionArray",
		"_description",
		"_title",
		"_marker",
		"_type",
		"_destination",
		"_state",
		"_showHint"
	
	];


	// PARAMS
	
		_taskNames = param [0];
			_oldTask = _taskNames select 0;
			_newTask = _taskNames select 1;
		
		_descriptionArray = param [1];
			_description = _descriptionArray select 0;
			_title = _descriptionArray select 1;
			_marker = _descriptionArray select 2;
			
		_type = param [2];
		_destination = param [3];
		_states = param [4, ["SUCCEEDED", "ASSIGNED"]];
			_stateOld = _states select 0;
			_stateNew = _states select 1;
			
		_showHint = param [5, true];
		_visibleIn3D = param [6, true];
		


	// Complete Old Task
	
		[_oldTask, _stateOld] call BIS_fnc_taskSetState;
		
		// Delete Old Task
		
			[_oldTask] spawn {
			
				_oldTask = _this select 0;
			
				sleep 3;
			
				[_oldTask] call BIS_fnc_deleteTask;
			
			};
		
	// Create New Task
	
		[

			WEST, 
			_newTask,
			 
			[

			_description, 
			_title, 
			_marker

			], 

			_destination, 
			"CREATED", 
			-1, 
			_showHint, 
			_type, 
			_visibleIn3D

		] call BIS_fnc_taskCreate;
		
		
	// Assign Task
	
		if (_stateNew == "ASSIGNED") then {
		
			_newTask call BIS_fnc_taskSetCurrent;
			
		};
