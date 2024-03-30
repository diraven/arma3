
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
				
		
		// Create Initial Task
		
			_findTask = format ["findPilotTask_%1", _objectiveMarker];		
			_taskDescription = format ["Find the downed pilot at %1.", _objectiveText];
			_taskTitle = format ["Find The Pilot", _objectiveText];
			
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
		

		// Create Pilot And Wreck
		
			_wreckPos = [];
			_maxDistance = (_objectiveSize) - 50;
		
		
		// Create Wreck
		
			_type = switch (true) do {
			
				case (BEW_v_WW2) : {"Land_HistoricalPlaneWreck_03_F"};
				case (BEW_v_Vietnam) : {"Land_Wreck_Plane_Transport_01_F"};
				case (BEW_v_ColdWar) : {"Land_Wreck_Plane_Transport_01_F"};
				default {"Land_Wreck_Heli_Attack_01_F"};
			
			};

			while {count _wreckPos < 1} do {
			
				_wreckPos = [_objectivePos, [5, _maxDistance], random 360, 0, [0], _type] call SHK_pos;
				_maxDistance = _maxDistance + 25;
				
			};

			_wreck = createVehicle [_type, _wreckPos, [], 0, "NONE"];
			_wreck allowDamage false;
			
			
			// Create Smoke Pillar 
			
				_smokePillar = createVehicle ["test_EmptyObjectForSmoke", getPos _wreck, [], 0, "CAN_COLLIDE"]; 
				_smokePillar setVehiclePosition [getPos _wreck, [], 0, "CAN_COLLIDE"];	
				[_wreck, _smokePillar] call BIS_fnc_attachToRelative;


		// Create Pilot
		
			_pilotType = "B_Helipilot_F";
			_pilotType = [_pilotType] call BEW_FNC_TranslateClassNames;
		
			_pilotPos = [getPos _wreck, [5, 50], random 360, 0, [0], _pilotType] call SHK_pos;
	
			_injuredUnit = (createGroup civilian) createUnit [_pilotType, _pilotPos, [], 0, "NONE"];
			
			// Wounded Pilot Setup	

				_injuredUnit setposATL getPos _injuredUnit;
				_injuredUnit setDamage 0.8;
				removeAllItems _injuredUnit;
				_injuredUnit setCaptive TRUE;
				_injuredUnit allowDamage FALSE;
				_injuredUnit disableAI "MOVE";
				_injuredUnit disableAI "TARGET";
				_injuredUnit disableAI "AUTOTARGET";
				_injuredUnit setUnitPos "MIDDLE";
				_injuredUnit setVariable ["BEW_v_CanHeal", TRUE, TRUE];
				
		
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
	
		[HQ_WEST , "One of our pilots has been shot down and is wounded somewhere in this sector. Find and escort him back to base."] remoteExec ["sideChat", 0];
	
	
	
	
	// Wait Until Pilot Found
	
		waitUntil {
		
			({(alive _x) and !(vehicle _x isKindOf "Air") and ((getPos _x distance2D getPos _injuredUnit) < 50)} count allplayers > 0) or 
			
			(BEW_v_objectiveMissionCancelled)
		
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
	
	
	// Complete Task
	
		[_findTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
	
		
	// Create Heal Task
		
		_healTask = format ["healPilotTask_%1", _objectiveMarker];		
		_taskDescription = format ["Treat the injured pilot.", _objectiveText];
		_taskTitle = format ["Treat The Pilot", _objectiveText];
		
		[

			WEST, 
			[_healTask, _parentTask],
			 
			[

			_taskDescription, 
			_taskTitle, 
			_objectiveMarker

			], 

			_injuredUnit, 
			"CREATED", 
			-1, 
			true, 
			"heal", 
			true

		] call BIS_fnc_taskCreate;
		
		
		// Add To All Tasks
		
			_allTasks pushBack _healTask;
		
		
		// Assign Task
	
			_healTask call BIS_fnc_taskSetCurrent;
		
		
	// Send Message
	
		if !(BEW_v_objectiveMissionCancelled) then {
	
			[HQ_WEST , "Okay, you've located the wounded pilot. Once he's fit to move, escort him back to base."] remoteExec ["sideChat", 0];
			
		};
		
		
	// Wait Until Pilot Healed
	
		waitUntil {
		
			!(alive _injuredUnit) or

			(getDammage _injuredUnit < 0.8) or			
			
			(BEW_v_objectiveMissionCancelled)
		
		};
				
	
	// Select Return Marker
	
		_returnMarker = [_objectivePos] call BEW_FNC_findReturnPoints;


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
		
	
	// Complete Task
	
		[_healTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
	
		
	// Create Return Task
		
		_returnTask = format ["returnTask_%1", _objectiveMarker];		
		_taskDescription = format ["Return the injured pilot to base.", _objectiveText];
		_taskTitle = format ["Return The Pilot", _objectiveText];
		
		
		// Update Task
	
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
		

	// Create Protect Task
		
		_escortTask = format ["protectTask_%1", _objectiveMarker];		
		_taskDescription = format ["Escort the injured pilot back to base", _objectiveText];
		_taskTitle = format ["Escort Pilot", _objectiveText];
		
		[

			WEST, 
			_escortTask,
			 
			[

			_taskDescription, 
			_taskTitle, 
			_objectiveMarker

			], 

			_injuredUnit, 
			"CREATED", 
			-1, 
			true, 
			"defend", 
			true

		] call BIS_fnc_taskCreate;
		
		// Add To All Tasks
	
			_allTasks pushBack _escortTask;
		
	
	// Injured Unit Change State
	
		_injuredUnit setCaptive false;
		_injuredUnit allowDamage TRUE;
		_injuredUnit enableAI "MOVE";
		_injuredUnit enableAI "TARGET";
		_injuredUnit enableAI "AUTOTARGET";
		_injuredUnit setUnitPos "UP";
		_nearestPlayer = [allPlayers, _injuredUnit] call BIS_fnc_nearestPosition;
		[_injuredUnit] joinSilent group _nearestPlayer;
		_injuredUnit setVariable ["BEW_v_CanHeal", FALSE, TRUE];
		
		_allUnits pushBack _injuredUnit;
		
				
	// Send Message
	
		if !(BEW_v_objectiveMissionCancelled) then {
	
			[HQ_WEST , "Alright, looks like you've got him moving. Now escort him back to base safely."] remoteExec ["sideChat", 0];
			
		};
	
	
	// Wait Until Mission Complete
		
		waitUntil {(BEW_v_objectiveMissionCancelled) or (_injuredUnit distance markerPos _returnMarker < 20) or !(alive _injuredUnit)};
		
		// Complete Tasks
		
			if (!(alive _injuredUnit) or (BEW_v_objectiveMissionCancelled)) then {
				
				[_parentTask, "FAILED"] call BIS_fnc_taskSetState;
				[_returnTask, "FAILED"] call BIS_fnc_taskSetState;
				[_escortTask, "FAILED"] call BIS_fnc_taskSetState;
				
				_missionFailed = true;
				
			}else{
				
				[_parentTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
				[_returnTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
				[_escortTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
			
			};		
	
		_cleanUpArray = [_inAreaTrigger, _allUnits, _allvehs, _allMarkers];
		
		_return = [_cleanUpArray, _missionFailed];
		
		_return
