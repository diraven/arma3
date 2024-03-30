	
	private ["_patrolUnits"];
	
	_dropPos = param [0];
	_despawnDelayMins = param [1, 20];
	_completionRadius = param [2, 10];
	_spawnPatrol = param [3, [TRUE, 300]];
	_munitionsReward = param [4, [TRUE, 100]];
	_forceType = param [5, selectRandom ["OPF_1", "OPF_2"]];
	
	
	// Create Contatiner
					
		_container = createVehicle ["CargoNet_01_box_F", _dropPos, [], 0, "NONE"];


	// Allow Pickup

		_container setVariable ["BEW_V_CanCarry", TRUE, TRUE];
		_container setVariable ["canUnload", TRUE, TRUE];
	

	// Add Gear

		[_container] call BEW_FNC_addRandomGearToContainer;


	// Supply Drop Variable

		_container setVariable ["supplyDropCrate", TRUE, TRUE];


	// Paradrop Contatiner

		[_container, _dropPos] spawn BEW_FNC_paradropCargo;
		
		sleep 1;
		
	// Create Task
		
		private _randomSupplyDropTask = format ["randomSupplyDrop_%1", _container];	
		_taskDescription = "Find and recover the nearby supply drop.";
		_taskTitle = "Recover Supply Drop";
		
		[

			WEST, 
			[_randomSupplyDropTask, "sideObjectives"],
			 
			[

			_taskDescription, 
			_taskTitle, 
			""

			], 

			_container, 
			"CREATED", 
			-1, 
			false, 
			"container", 
			true

		] call BIS_fnc_taskCreate;
		

	// Message
		
		_message = "There's a supply drop in your sector. Find it before the enemy does. Check your map for details.";
		
		[HQ_WEST , _message] remoteExec ["sideChat", 0];
	
	
	// Setup Timer
	
		private _supplyDropTimer = _despawnDelayMins * 60;

		
		// Wait Till Players Within 300m
			
			// Patrol Units
			
			private	_patrolUnits = [];
			
			waitUntil {getpos _container select 2 < 1};
			
			if (_spawnPatrol select 0) then {
				
				while {(_supplyDropTimer > 0) and (count (allPlayers select {(_x distance2D _container) < (_spawnPatrol select 1)}) < 1)} do {

					_supplyDropTimer = _supplyDropTimer - 1;

					sleep 1;

				};
	
	
				// Patrol Spawn Pos
					_patrolSpawnPos = [getpos _container select 0, getpos _container select 1, 0];
				
				
				// Spawn Patrol
										
					// Patrol Data
					
						_infantryArray = call compile format ["
						
							_infantryArray = %1_InfantryArray;
							
							_infantryArray
						
						", _forceType];
					
					if ((BEW_v_Zombies) and ((_infantryArray select 1) == "WBK_AI_ZHAMBIES")) then {
					
						for "_i" from 1 to 10 do {
						
							_patrolGroup = [_patrolSpawnPos, _infantryArray, _forceType] call BEW_FNC_SpawnGroup;  
							
							_patrolUnits append units _patrolGroup;
							
							// Set Skill 
				 
								[_patrolGroup] spawn BEW_FNC_setAISkill; 
								
							// Patrol 
							 
								[leader _patrolGroup, _patrolSpawnPos, 100, 10] spawn BEW_FNC_taskPatrol;
						
						};
					
					}else{
					
						_patrolGroup = [_patrolSpawnPos, _infantryArray, _forceType] call BEW_FNC_SpawnGroup;  
						
						_patrolUnits append units _patrolGroup;
						
						// Set Skill 
				 
							[_patrolGroup] spawn BEW_FNC_setAISkill;
							
						// Patrol 
						 
							[leader _patrolGroup, _patrolSpawnPos, 100, 10] spawn BEW_FNC_taskPatrol;
					
					};
								
			};
			
			
		// Wait Till Players Within 10m
		
			while {(_supplyDropTimer > 0) and (count (allPlayers select {(_x distance2D _container) < _completionRadius}) < 1)} do {

				_supplyDropTimer = _supplyDropTimer - 1;

				sleep 1;

			};
			
	
	if (count (allPlayers select {(_x distance2D _container) < _completionRadius}) > 0) then {
	
		// Complete Task
		
			[_randomSupplyDropTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
			
		
		// Create Moving Marker
		
			[_container, "Supply Drop", "ColorYellow", "mil_box", 1, [0.25, 0.25]] spawn BEW_FNC_movingMarker;
		
			
		// Message
			
			_message = "Well done. You've found the supply drop. Grab what you need and move out.";
			
			[HQ_WEST , _message] remoteExec ["sideChat", 0];
			
		// Add Munitions
	
			if (_munitionsReward select 0) then {
			
				[_munitionsReward select 1] remoteExec ["BEW_FNC_addMunitions", 2];
			
			};
		
		_deletePatrolTimer = _despawnDelayMins * 60;
			
		while {(_deletePatrolTimer > 0) and (count (_patrolUnits select {alive _x}) > 0)} do {
			
			sleep 1;
			
			_deletePatrolTimer = _deletePatrolTimer - 1;
						
		};
		
		// Delete Patrol
		
			{deleteVehicle _x} forEach _patrolUnits;
		
	}else{
	
		// Fail Task
		
			[_randomSupplyDropTask, "FAILED"] call BIS_fnc_taskSetState;
			
		// Delete Drop
			
			deleteVehicle _container;
			
		// Delete Patrol
		
			{deleteVehicle _x} forEach _patrolUnits;
			
		// Message
			
			_message = "We were too late. The supply drop has fallen into enemy hands.";
			
			[HQ_WEST , _message] remoteExec ["sideChat", 0];
	
	};
		
		_container