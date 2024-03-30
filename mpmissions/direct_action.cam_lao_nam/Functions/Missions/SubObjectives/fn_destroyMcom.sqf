	private ["_mcomPos"];

	// PARAMS
	
		_centerPos = param [0];
		_radius = param [1];
		_objectiveMarker = param [2];
			_markerText = markerText _objectiveMarker;
		
		_parentTask = param [3, "sideObjectives"];
		
		
	// Find Position		

		_mcomPositions = [_centerPos, _radius] call BEW_fnc_findPositionsInNearBuildings;
		
		if (count _mcomPositions < 1) exitWith {
		
			systemchat "no mcom found";
			
			_mcom = objNull;
		
			_mcom
			
		};
		
		_mcomPos = _mcomPositions select 0;

	// Create Mcom
		
		_mcomType = switch (true) do {

			default {"Land_DataTerminal_01_F"};
			
		};

		_mcom = createVehicle [_mcomType, _mcomPos, [], 0, "CAN_COLLIDE"];
				
		
	// Setup MCOM
		
		_mcom allowDamage FALSE;
		_mcom setVariable ["canPlaceExplosives", TRUE, TRUE];
		
		
		if (_mcomType == "Land_DataTerminal_01_F") then {
		
			[_mcom, 1] call BIS_fnc_dataTerminalAnimate;
		
		};
		
		
	// Create Task
		
		private _destroyMcomTask = format ["destroyMcom_%1", _mcom];	
		_taskDescription = "Find and destroy the enemy M-COM.";
		_taskTitle = format ["Destroy M-COM", _markerText];
		
		[

			WEST, 
			[_destroyMcomTask, _parentTask],
			 
			[

			_taskDescription, 
			_taskTitle, 
			""

			], 

			_mcom, 
			"CREATED", 
			-1, 
			false, 
			"destroy", 
			false

		] call BIS_fnc_taskCreate;
		


	// Wait Until Destroyed
		
		[_mcom, _destroyMcomTask, _objectiveMarker] spawn {
		
			_mcom = _this select 0;
			_destroyMcomTask = _this select 1;
			_objectiveMarker = _this select 2;
			
			waitUntil {!(alive _mcom)};
			
			waitUntil {(!alive _mcom) or (BEW_v_objectiveMissionCancelled) or !(BEW_v_objectiveMissionActive)};
			
				if !(alive _mcom) exitWith {
				
					[_destroyMcomTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
					
					sleep 60;
					
					deleteVehicle _mcom;
				
				};
			
			// Fail And delete If Mission Cancelled
			
				if ((BEW_v_objectiveMissionCancelled) or (_objectiveMarker in BEW_v_allCancelledObjectives)) exitWith {
						
					[_destroyMcomTask, "FAILED"] call BIS_fnc_taskSetState;
					
					sleep 60;
					
					deleteVehicle _mcom;
						
				};
			
		};

		_mcom