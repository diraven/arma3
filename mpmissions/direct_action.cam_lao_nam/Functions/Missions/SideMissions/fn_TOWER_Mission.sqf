
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
			
			
			
	// Tower Objective
	
		_towerObjectives = [_objectivePos, _objectiveMarker, _parentTask, _objectiveSize] call BEW_FNC_towerObjective;
			
			{
			
				_subObjectives pushBack _x;
				_allVehs pushBack _x;
			
			} forEach _towerObjectives;
			
			

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
	
		if (({alive _x} count _towerObjectives) > 1) then {

			[HQ_WEST , format ["Enemy transmitters have been detected at %1. We need them taken out.", _objectiveText]] remoteExec ["sideChat", 0];

		} else {	
		
			[HQ_WEST , format ["An enemy transmitter has been detected at %1. We need it taken out.", _objectiveText]] remoteExec ["sideChat", 0];
			
		};


	// Wait Until Mission Complete

		waitUntil {(count (_subObjectives select {alive _x}) < 1) or (BEW_v_objectiveMissionCancelled)};

	
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
	
	
	// Destroy Towers
	
		if (BEW_v_objectiveMissionCancelled) then {
		
			{_x setDamage [1, false]} forEach _towerObjectives;
			
		};


	// Update Task
		
		if (BEW_v_objectiveMissionCancelled) then {
		
			[_parentTask, "FAILED"] call BIS_fnc_taskSetState;
			
		}else{
		
			[_parentTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
			
		};
		
		_cleanUpArray = [_inAreaTrigger, _allUnits, _allvehs, _allMarkers];
		
		_return = [_cleanUpArray, _missionFailed];
		
		_return
