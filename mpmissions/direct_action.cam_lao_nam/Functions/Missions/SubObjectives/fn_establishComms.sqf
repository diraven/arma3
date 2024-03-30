	
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

				_nearestTower setVariable ["canEstablishComms", TRUE, TRUE];
				_nearestTower setVariable ["commsEstablished", FALSE, TRUE];
			
			
			// Create Task
		
				private _establishCommsTask = format ["establishComms_%1", _nearestTower];	
				_taskDescription = format ["Establish comms at the tower.", _objectiveText];
				_taskTitle = format ["Establish Comms", _objectiveText];
				
				[

					WEST, 
					[_establishCommsTask, _parentTask],
					 
					[

					_taskDescription, 
					_taskTitle, 
					_objectiveMarker

					], 

					_nearestTower, 
					"CREATED", 
					-1, 
					false, 
					"interact", 
					true

				] call BIS_fnc_taskCreate;
			
			
			// Check Comms Established
			
				[_nearestTower,_objectiveMarker, _establishCommsTask] spawn {
				
					_nearestTower = _this select 0;
					_objectiveMarker = _this select 1;
					_establishCommsTask = _this select 2;
				
				
					waitUntil {	(_nearestTower getVariable ["commsEstablished", FALSE]) or !(alive _nearestTower) or (BEW_v_objectiveMissionCancelled)};
						
						
						// Exit If Cancelled
						
							if (BEW_v_objectiveMissionCancelled) exitWith {
						
								[_establishCommsTask, "FAILED"] call BIS_fnc_taskSetState;
								_nearestTower setVariable ["canEstablishComms", FALSE, TRUE];
							
							};
					
					if !(alive _nearestTower) then {	
					
						// Complete Task
						
							[_establishCommsTask, "FAILED"] call BIS_fnc_taskSetState;
							
							[HQ_WEST , 'The tower has been damaged. How are we going to establish contact now?'] remoteExec ['sideChat', 0];
					
					}else{
							// Add Munitions
				
								[100] remoteExec ["BEW_FNC_addMunitions", 2];
								
							
							if (random 100 < 75) then {
							
								// Reveal Objective
								
									[_nearestTower] remoteExec ["BEW_FNC_RevealObjective", 2];
									
							}else{
							
								// Reveal Allied Camp
									
									[{
										if ((count BEW_v_allAlliedCamps) - ({[(format ["meetAlliesTask_%1", _x])] call BIS_fnc_taskExists} count BEW_v_allAlliedCamps) > 0) then { 
						 
										  [] spawn BEW_FNC_MEET_ALLIES_mission; 
										 
										}else{
										
											[_nearestTower] remoteExec ["BEW_FNC_RevealObjective", 2];
											
										};
										
									}] remoteExec ["BIS_FNC_Call", 2];
							
							};
				
				
						// Complete Task
						
							[_establishCommsTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
				
						
						// Send Message
											
							if !(_objectiveMarker in BEW_v_allCancelledObjectives) then {
							
								[HQ_WEST , 'Great job. The link is up and running.'] remoteExec ['sideChat', 0];
							
							};
							
					};
						
				};
	
		};
		
		
		_allTowers