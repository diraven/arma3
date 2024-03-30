
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
	
	// Select Return Marker
	
		_returnMarker = [_objectivePos] call BEW_FNC_findReturnPoints;
	
	
	// Create Initial Task
		
		_parentTask = format ["parentTask_%1", _objectiveMarker];
		
	// Add To All Tasks
		
		_allTasks pushBack _parentTask;
		
	// Change State
		
		[_parentTask, "ASSIGNED", true] call BIS_fnc_taskSetState;
		
	// Assign Task
	
		_parentTask call BIS_fnc_taskSetCurrent;
		
		
	
	// Create Recover Task
		
		_recoverTask = format ["recoverObjectTask_%1", _objectiveMarker];	
		_taskDescription = format ["Return the aid drops to base.", _objectiveText];
		_taskTitle = format ["Return Aid Drops", _objectiveText];
		
		[

			WEST, 
			[_recoverTask, _parentTask],
			 
			[

			_taskDescription, 
			_taskTitle, 
			_objectiveMarker

			], 

			[markerPos _returnMarker select 0, markerPos _returnMarker select 1, 0], 
			"CREATED", 
			-1, 
			false, 
			"move", 
			true

		] call BIS_fnc_taskCreate;
		
		// Add To All Tasks
		
			_allTasks pushBack _recoverTask;	

		
		
	// Spawn Force
		
		// Spawn Force
	
			_force = [_objectivePos, _objectiveSize, _forceType, true, true, true, true, true] call BEW_FNC_spawnForce;
				_forceUnits = _force select 0;
				_forceVehs  = _force select 1;
				
				_allUnits append _forceUnits;
				_allVehs append _forceVehs;
	
	

	// Create Supply Drops
	
		private _supplyDrops = [];
	
		for "_i" from 1 to 3 do {
			
			
			// Define Object Type
			
				_type = [

					"C_IDAP_CargoNet_01_supplies_F"

				] call BIS_fnc_selectRandom;
			
			
			// Select Spawn Pos
			
				_spawnPos = [_objectivePos, [100, _objectiveSize], random 360, 0, [0]] call SHK_pos;


			// Create Crate
			
				_supplyObj = createVehicle [_type, _spawnPos, [], 0, "NONE"];
				
				
			// Setup Crate
			
				_supplyObj allowDamage false;
				_supplyObj setVariable ["BEW_V_CanCarry", TRUE, TRUE];
				_supplyObj setVariable ["canUnload", TRUE, TRUE];
				clearMagazineCargoGlobal _supplyObj;
				clearWeaponCargoGlobal _supplyObj;
				clearBackpackCargoGlobal _supplyObj;
				clearItemCargoGlobal _supplyObj;
				_supplyDrops = _supplyDrops + [_supplyObj];
				
			
			// Add Gear
			
				[_supplyObj] call BEW_FNC_addRandomGearToContainer;
				
				
			// Create Recover Task
		
				_dropTask = format ["dropObjectTask_%1", _supplyObj];	
				_taskDescription = format ["Recover the aid drop.", _objectiveText];
				_taskTitle = format ["Aid Drop", _objectiveText];
				
				[

					WEST, 
					[_dropTask, _parentTask],
					 
					[

					_taskDescription, 
					_taskTitle, 
					_objectiveMarker

					], 

					_supplyObj, 
					"CREATED", 
					-1, 
					false, 
					"container", 
					true

				] call BIS_fnc_taskCreate;
				
				// Add To All Tasks
				
					_allTasks pushBack _dropTask;
		
		};
	
	
	// Send Message
	
		[HQ_WEST , "Enemy units are closing in on the location of a number of aid drops. Proceed to the AO and recover the supplies before the enemy does."] remoteExec ["sideChat", 0];
					
		
	// Look Until Supply Drops Recovered
	
		while {(count _supplyDrops > 0) && !(BEW_v_objectiveMissionCancelled)} do {
		
			{
			
				if (_x distance getMarkerPos _returnMarker < 20) then {
				
					_supplyDrops = _supplyDrops - [_x];
					
					// Get Items
					
						_backpacksToAdd = backpackCargo _x;	
						_itemsToAdd = itemCargo _x;
						_magazinesToAdd = magazineCargo _x;
						_weaponsToAdd = weaponCargo _x;


					// Add Items
					
						[_backpacksToAdd, _itemsToAdd, _magazinesToAdd, _weaponsToAdd] call BEW_FNC_AddToArsenal;
					
					
					// Hint
					
						[format ["%1 Items Have Been Transferred To The Arsenal", (count _backpacksToAdd) + (count _itemsToAdd) + (count _magazinesToAdd) + (count _weaponsToAdd)]] remoteExec ["hint", 0];
						
						
					// Clear Container
							
						clearBackpackCargoGlobal _x;
						clearWeaponCargoGlobal _x;
						clearMagazineCargoGlobal _x;
						clearItemCargoGlobal _x;					
					
					// Delete Container
					
							deleteVehicle _x;	
					
					if (count _supplyDrops > 0) then {[HQ_WEST , format ["Well done! Only %1 more drops to go.", count _supplyDrops]] remoteExec ["sideChat", 0];};
						
					_dropTask = format ["dropObjectTask_%1", _x];
					[_dropTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
				
				};
			
			} forEach _supplyDrops;
			
			sleep 1;
		
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
		
		
	// Send Message
	
		[HQ_WEST , "Great job. We'll put these supplies to good use."] remoteExec ["sideChat", 0];
		
		
	// Clean Up Supply Drops
		/*
		{
			
			deleteVehicle _x;
			
		} forEach _supplyDrops;
		*/


	// Complete Task 
	
		if (BEW_v_objectiveMissionCancelled) then {
		
			[_parentTask, "FAILED"] call BIS_fnc_taskSetState;
			
		}else{
		
			[_parentTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
			
		};
	
	
	
		_cleanUpArray = [_inAreaTrigger, _allUnits, _allvehs, _allMarkers];
		
		_return = [_cleanUpArray, _missionFailed];
		
		_return
