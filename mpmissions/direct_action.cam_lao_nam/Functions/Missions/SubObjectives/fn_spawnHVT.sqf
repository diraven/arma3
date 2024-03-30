	private [
		
		"_centerPos",
		"_radius",
		"_forceType",
		"_transList"
	
	];
	
	_centerPos			= 	param [0];
	_objectiveMarker 	= 	param [1];
	_parentTask			= 	param [2];
	_radius				= 	param [3, 100];
	_forceType 			= 	param [4, "OPF_1"];
	_patrol				= 	param [5, TRUE];
	
	
	// Spawn Officer
	
		_hvt 	= objNull;
	

	// Select Translist
	
		_translist = call compile format ["
		
			_transList = [OPF_1_Map_TransList, %1_New_TransList];
			
			_translist
		
		", _forceType];


	// Translate Officer Type

		_newOfficerType = ["O_officer_F", [_transList]] call BEW_FNC_TranslateClassNames;


		// Get Spawn Position
		
			_safePos = [_centerPos, [1, _radius], 3, 0, 0] call BEW_FNC_findRandomEmptyPosition;
		
		
		// Spawn Officer
		
			_officergroup = [_safePos, EAST, [_newOfficerType],[],[],[],[],[],random 360,true] call BIS_fnc_spawnGroup;
			_hvt = leader _officergroup;

		
		// Setup Officer
						
			removeFromRemainsCollector [_hvt];
			_hvt setVariable ["IntelRecovered", false, true];
			_officergroup setVariable ["Vcm_Disable",true];
			_officergroup allowFleeing 0;
			_hvt setRank "MAJOR";
			
			
			if (_patrol) then {
			
				[_hvt, _centerPos, _radius, 10] spawn BEW_FNC_taskPatrol;
				
				// Zombies Fix
				
					[_officergroup, _centerPos, _radius] spawn BEW_FNC_RyansZombiesFix;
				
			};
			
			
		// Create Task
		
			private _killHVTtask = format ["killHVT_%1", _hvt];	
			_taskDescription = format ["Eliminate the enemy commander.", _objectiveText];
			_taskTitle = format ["Eliminate Enemy Commander", _objectiveText];
			
			[

				WEST, 
				[_killHVTtask, _parentTask],
				 
				[

				_taskDescription, 
				_taskTitle, 
				_objectiveMarker

				], 

				_hvt, 
				"CREATED", 
				-1, 
				false, 
				"kill", 
				true

			] call BIS_fnc_taskCreate;
			
		
		// Check Officer Killed

			[_hvt, _centerPos, _objectiveMarker, _killHVTtask] spawn {
			
				_hvt = _this select 0;
				_centerPos = _this select 1;
				_objectiveMarker = _this select 2;
				_killHVTtask = _this select 3;
			
				waitUntil {(!alive _hvt) or (BEW_v_objectiveMissionCancelled)};
				
					if ((BEW_v_objectiveMissionCancelled) or (_objectiveMarker in BEW_v_allCancelledObjectives)) exitWith {
					
						[_killHVTtask, "FAILED"] call BIS_fnc_taskSetState;
						deleteVehicle _hvt;
					
					};
					
					// Complete Task
					
						[_killHVTtask, "SUCCEEDED"] call BIS_fnc_taskSetState;
			
			
					// Add Gather Intel Action
					
						[_hvt] spawn BEW_FNC_gatherIntelAction;

					if !(_objectiveMarker in BEW_v_allCancelledObjectives) then {
					
						[HQ_WEST , 'Okay the enemy commander is dead. You may be able to find intel on his body.'] remoteExec ['sideChat', 0];
						
					};
										
					_markerName = format ["%1_deadHvt", _hvt];
					
					private _hvtDeadIcon = createMarker [_markerName, getPos _hvt];					
					_hvtDeadIcon setMarkerColor 'colorYellow';
					_hvtDeadIcon setMarkerType 'KIA';
					_hvtDeadIcon setMarkerSize [0.5, 0.5];
					_hvtDeadIcon setMarkerText 'Recover Intel';
					_hvtDeadIcon setMarkerDir 0;
					
				waitUntil {(BEW_v_objectiveMissionCancelled) or (_hvt getVariable "IntelRecovered")};
					
					_hvt setDamage 1;
					
					if (_hvt getVariable "IntelRecovered") then {
					
						_hvtDeadIcon setMarkerColor 'colorOPFOR';
						_hvtDeadIcon setMarkerType 'KIA';
						_hvtDeadIcon setMarkerText 'Intel Recovered';
						
					};
				
				// Dead HVT Countdown
				
					private _hvtDespawnCountdown = 300;
					
					while {!(_hvt getVariable "IntelRecovered") and (_hvtDespawnCountdown > 0) and !(BEW_V_airSuperiority)} do {
						
						sleep 1;
					
						_hvtDespawnCountdown = _hvtDespawnCountdown - 1;
					
					};
				
				// Clean Up HVT

					deleteMarker _hvtDeadIcon;
					
					sleep 30;
					
					deleteVehicle _hvt;
					
			};
			
			_hvt