	
	_centerPos 			= _this select 0;
	_objectiveMarker 	= _this select 1;
	_parentTask 		= _this select 2;
	_radius 			= _this select 3;
		
		
	// Define Tower
	
		_towerTypes = [  
		
			"Land_MobileRadar_01_radar_F", 
			"Land_vn_mobileradar_01_radar_f", 
			"Land_TTowerBig_1_F", 
			"Land_TTowerBig_2_F", 
			"Land_vn_ttowerbig_1_f", 
			"Land_vn_ttowerbig_2_f", 
			"Land_vn_tower_signal_01", 
			"Land_vn_communication_f", 
			"Land_Communication_F",
			"Land_wx_radar",
			"Land_Telek1"
			
		]; 
		
		
	// Find Nearest Towers
 
		_nearestTowers = nearestObjects [_centerPos, _towerTypes, _radius];		
		
		
		// Shuffle Array
		
			_nearestTowers call BIS_fnc_arrayShuffle;
		
		
		// Define Max Number Of Towers
		
			private _maxTowers = (count _nearestTowers);
		
			if ((_maxTowers) > 2) then {
			
				_maxTowers = 2;
			
			};
		
		
	// Run For Each Tower
		
		_allTowers = [];
		
		for "_i" from 1 to _maxTowers do { 


			// Select Tower
			
				_nearestTower = _nearestTowers select (_i -1);
					_allTowers pushBack _nearestTower;

			// Give Tower Varname
			
				_varName = format ["nearestCampTower_%1_%2", _objectiveMarker, _i];
				_nearestTower setVehicleVarName _varName;
				missionNamespace setVariable [ _varName, _nearestTower, true ];
			
			
			// Setup Tower

				_nearestTower setVariable ["canPlaceExplosives", TRUE, TRUE];
			
			
			// Create Task
		
				private _destroyTowertask = format ["destroyTower_%1", _nearestTower];	
				_taskDescription = format ["Destroy the enemy transmission tower.", _objectiveText];
				_taskTitle = format ["Destroy Tower", _objectiveText];
				
				[

					WEST, 
					[_destroyTowertask, _parentTask],
					 
					[

					_taskDescription, 
					_taskTitle, 
					_objectiveMarker

					], 

					_nearestTower, 
					"CREATED", 
					-1, 
					false, 
					"destroy", 
					true

				] call BIS_fnc_taskCreate;
			
			
			// Check Tower Destroyed
			
				[_nearestTower,_objectiveMarker, _destroyTowertask] spawn {
				
					_nearestTower = _this select 0;
					_objectiveMarker = _this select 1;
					_destroyTowertask = _this select 2;
				
				
					waitUntil {!(alive _nearestTower) or (BEW_v_objectiveMissionCancelled)};
						
						
						// Exit If Cancelled
						
							if (BEW_v_objectiveMissionCancelled) exitWith {
						
								[_destroyTowertask, "FAILED"] call BIS_fnc_taskSetState;
								deleteVehicle _nearestTower;
							
							};
				
				
						// Complete Task
						
							[_destroyTowertask, "SUCCEEDED"] call BIS_fnc_taskSetState;
				
						
						// Send Message
											
							if !(_objectiveMarker in BEW_v_allCancelledObjectives) then {
							
								[HQ_WEST , 'Great job. The tower is out of action.'] remoteExec ['sideChat', 0];
							
							};
						
				};
	
		};
		
		
		_allTowers