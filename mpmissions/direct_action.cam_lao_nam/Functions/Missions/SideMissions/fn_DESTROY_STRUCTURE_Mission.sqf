
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
	
			
	// Define Target Structure

		_types = ["staticWeapon", "House"];
		_nearestStructures =  nearestObjects [_objectivePos, _types, _objectiveSize, true];
		_targetStructure = _nearestStructures select 0; 
		
		
		// Unhide Structure
		
			[_targetStructure, false] remoteExec ["hideObject", 0, true];
		
		
		// Add To Sub
		
			_subObjectives pushBack _targetStructure;
			
		
		// Add To All vehicles Array
		
			_allvehs pushback _targetStructure;
		
		
	// Setup Target Structure
	
		[_targetStructure, false] remoteExec ["allowDamage", 0, true];
		
	
	// Allow Destruction By Satchel
	
		_targetStructure setVariable ["canPlaceExplosives", TRUE, TRUE];

	
	// Create Crew
		
		_crewCount = [typeOf _targetStructure, false] call BIS_fnc_crewCount;
		
		if (_crewCount > 0) then {
		
			_crew = createVehicleCrew _targetStructure;
			
			_allUnits append units _crew;
			
		};
	
	
	// Create Initial Task
		
		_parentTask = format ["parentTask_%1", _objectiveMarker];
		
		
	// Add To All Tasks
		
		_allTasks pushBack _parentTask;
		
		
	// Set Task Destination
			
		[_parentTask,_targetStructure] call BIS_fnc_taskSetDestination;
		
	
	// Make Task Always Visible
	
		_parentTask call BIS_fnc_taskAlwaysVisible;
		
		
	// Change State
		
		[_parentTask, "ASSIGNED", true] call BIS_fnc_taskSetState;
		
	// Assign Task
	
		_parentTask call BIS_fnc_taskSetCurrent;
	
		
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
	
		[HQ_WEST , "Alright that's the enemy structure. Now take it out."] remoteExec ["sideChat", 0];
	

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
		
	
	// Attach To Invisible Helipad
	
		_attachHelipad = [_targetStructure, getPos _targetStructure, getDir _targetStructure] call BEW_FNC_attachToInvisibleHelipad;
	
	
	// Sleep Until Explosion Effect
	
		if !(BEW_v_objectiveMissionCancelled) then {
		
			[HQ_WEST , "Alright that's it. It's coming down!"] remoteExec ["sideChat", 0];	
		
			sleep 3;
		
			// Explosion Effect

				if ((typeOf _targetStructure == "OPTRE_FC_Tyrant") or (typeOf _targetStructure == "OPTRE_FC_TyrantAA")) then {

					_pos = getPos _targetStructure;
					_spawnHeight = (_pos select 2) + 5; 

					for "_i" from 1 to 10 do {

					"Bo_GBU12_LGB" createVehicle [_pos select 0, _pos select 1, _spawnHeight];


					_spawnHeight = _spawnHeight + 3;

					sleep random 0.3;

					};

				};

		};
		
		
		// Complete Task 
		
			if (BEW_v_objectiveMissionCancelled) then {
			
				[_parentTask, "FAILED"] call BIS_fnc_taskSetState;
				
			}else{
			
				[_parentTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
				
			};
	
	
		_cleanUpArray = [_inAreaTrigger, _allUnits, _allvehs, _allMarkers];
		
		_return = [_cleanUpArray, _missionFailed];
		
		_return
