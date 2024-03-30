
	_obj = param [0, player];
	
	// Filter Camps
	
		_alliedCamps = BEW_v_allAlliedCamps select {!(initialSpawnPoint inArea _x)};
		_alliedCampsNotActivated = _alliedCamps select {markerAlpha _x == 0};
		_alliedCampsNoTask = _alliedCampsNotActivated select {!([(format ["meetAlliesTask_%1", _x])] call BIS_fnc_taskExists)};
	
	
		if (count _alliedCampsNoTask < 1) exitWith {
		
			[_obj] remoteExec ["BEW_FNC_RevealObjective", 2];
		
		};
	
	// Select Random Camp
	
		_objectiveMarker = selectRandom _alliedCampsNoTask; 
		_objectiveSize = markerSize _objectiveMarker select 0;
		_objectivePos = markerPos _objectiveMarker;
		_objectiveText = markerText _objectiveMarker;



	// Create Task
		
		_meetAlliesTask = format ["meetAlliesTask_%1", _objectiveMarker];	
		_taskDescription = format ["Meet with the allied forces at %1.", _objectiveText];
		_taskTitle = format ["Meet With Allies", _objectiveText];
		
		[

			WEST, 
			[_meetAlliesTask,"sideObjectives"],
			 
			[

			_taskDescription, 
			_taskTitle, 
			_objectiveMarker

			], 

			[_objectivePos select 0, _objectivePos select 1, 0], 
			"CREATED", 
			-1, 
			true, 
			"meet", 
			true

		] call BIS_fnc_taskCreate;
		
	
	
	// Wait Until Camp Found
	
		waitUntil {sleep 3; 
			
			{
				(alive _x) and 
				!(vehicle player isKindOf 'Air') and 
				(_objectivePos distance2D _x < _objectiveSize)
			} 
				
			count allplayers > 0
		
		};
		
	
	// Complete Task
		
		[_meetAlliesTask,"SUCCEEDED"] call BIS_fnc_taskSetState;
	
	
	// Add Munitions
				
		[100] remoteExec ["BEW_FNC_addMunitions", 2];
	
	