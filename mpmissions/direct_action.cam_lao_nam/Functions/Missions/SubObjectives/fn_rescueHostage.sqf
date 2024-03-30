
	// PARAMS
	
		_centerPos = param [0];
		_radius = param [1];
		_objectiveMarker = param [2];
		_parentTask = param [3];
		
		
	// Define Building Types
	
		_buildingTypes = [

			"Land_Cargo_Tower_V1_No1_F", 
			"Land_Cargo_Tower_V1_No2_F", 
			"Land_Cargo_Tower_V1_No3_F", 
			"Land_Cargo_Tower_V1_No4_F", 
			"Land_Cargo_Tower_V1_No5_F", 
			"Land_Cargo_Tower_V1_No6_F", 
			"Land_Cargo_Tower_V1_No7_F", 
			"Land_Cargo_Tower_V3_F", 
			"Land_Cargo_Tower_V1_F", 
			"Land_Cargo_Tower_V2_F", 
			"Land_i_Barracks_V1_F", 
			"Land_i_Barracks_V2_F", 
			"Land_u_Barracks_V2_F", 
			"Land_Cargo_House_V3_F", 
			"Land_Cargo_House_V1_F", 
			"Land_Medevac_house_V1_F", 
			"Land_Cargo_House_V2_F", 
			"Land_Cargo_HQ_V3_F",
			"Land_Cargo_HQ_V1_F",
			"Land_Medevac_HQ_V1_F", 
			"Land_Cargo_HQ_V2_F",
			"Land_MilOffices_V1_F"

		];
	
	// Define Positions
		
		_buildingPositionsArray = [_centerPos, _radius, _buildingTypes] call BEW_fnc_findPositionsInNearBuildings;
		
		if (count _buildingPositionsArray < 1) exitWith {
		
			_hostage = objNull;
			
			_hostage
		
		};
		
		_selectedPosition = _buildingPositionsArray select 0;


	// Define Nearest Building To Position
	
		_nearestBuilding = nearestBuilding _selectedPosition;
	
	
	// Create Hostage
	
		_hostage = objNull;
	
	
		// Define Type
		
			_hostageType = "B_officer_F";
			_hostageType = [_hostageType] call BEW_FNC_TranslateClassNames;
		
		
		// Create The Unit
		
			_hostage = (createGroup civilian) createUnit [_hostageType, _selectedPosition, [], 0, "NONE"];
		
		
		// Setup The Unit
		
			_hostage setDir getDir _nearestBuilding;
			_hostage setDamage 0.8;
			removeAllItems _hostage;
			removeAllWeapons _hostage;
			removeHeadgear _hostage;
				
			_hostage setCaptive TRUE;
			_hostage disableAI "MOVE";
			_hostage disableAI "TARGET";
			_hostage disableAI "AUTOTARGET";
			_hostage setUnitPos "MIDDLE";
			_hostage setVariable ["HostageRescued", false, true];
			
		
		// Create Action
		
			[_hostage] call BEW_FNC_hostageAction;
			
			
	// Create Task
		
		private _rescueHostageTask = format ["rescueHostage_%1", _hostage];	
		_taskDescription = "Find and rescue our officer being held hostage and return him to base.";
		_taskTitle = format ["Rescue Hostage [Optional]", markerText _objectiveMarker];
		
		[

			WEST, 
			[_rescueHostageTask, "sideObjectives"],
			 
			[

			_taskDescription, 
			_taskTitle, 
			""

			], 

			_hostage, 
			"CREATED", 
			-1, 
			false, 
			"run", 
			true

		] call BIS_fnc_taskCreate;
		
		
	// Wait Until Rescued
		
		[_hostage, _rescueHostageTask, _objectiveMarker] spawn {
		
			_hostage = _this select 0;
			_rescueHostageTask = _this select 1;
			_objectiveMarker = _this select 2;
			
		
			waitUntil {(!alive _hostage) or (_hostage getVariable "HostageRescued") or (BEW_v_objectiveMissionCancelled) or !(BEW_v_objectiveMissionActive)};
			
			if ((BEW_v_objectiveMissionCancelled) or (_objectiveMarker in BEW_v_allCancelledObjectives) or (!alive _hostage)) exitWith {
					
				[_rescueHostageTask, "FAILED"] call BIS_fnc_taskSetState;
				
				sleep 60;
				
				deleteVehicle _hostage;
					
			};
			
			private _timeOut = 300;
			
			while {!(_hostage getVariable "HostageRescued") and (_timeOut > 0)} do {
									
				sleep 1;
				
				_timeOut = _timeOut - 1;
			
			};			
			
			if (_timeOut == 0) exitWith { 
				
				[_rescueHostageTask, "FAILED"] call BIS_fnc_taskSetState;

				deleteVehicle _hostage;
						
			};
			
			// Select Return Marker

				_returnMarker = [getPos _hostage] call BEW_FNC_findReturnPoints;
			
			// Create Return Task
				
				private _returnHostageTask = format ["returnHostage_%1", _hostage];	
				_taskDescription = "Return hostage back to base.";
				_taskTitle = "Return Hostage";

				[

					WEST, 
					[_returnHostageTask, _rescueHostageTask],
					 
					[

					_taskDescription, 
					_taskTitle, 
					""

					], 

					[markerPos _returnMarker select 0, markerPos _returnMarker select 1, 0], 
					"CREATED", 
					-1, 
					true, 
					"move", 
					true

				] call BIS_fnc_taskCreate;

			
		// Wait Until Hostage Returned

			waitUntil {(!alive _hostage) or ((_hostage distance2D markerPos _returnMarker) < 30)};
								
				if !(alive _hostage) then {
				
					[_rescueHostageTask, "FAILED"] call BIS_fnc_taskSetState;
					
					sleep 60
					
				}else{
					
					// Complete Task
					
						[_rescueHostageTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
					
					
					// Add Munitions
				
						[300] remoteExec ["BEW_FNC_addMunitions", 2];
						
					
					if (random 100 < 1) then {
					
						// Reveal Objective
						
							[_hostage] remoteExec ["BEW_FNC_RevealObjective", 2];
							
					}else{
					
						// Reveal Allied Camp
							
							[_hostage, {
								
								_hostage = _this;
							
								if ((count BEW_v_allAlliedCamps) - ({[(format ["meetAlliesTask_%1", _x])] call BIS_fnc_taskExists} count BEW_v_allAlliedCamps) > 0) then { 
				 
								  [] spawn BEW_FNC_MEET_ALLIES_mission; 
								 
								}else{
								
									[_hostage] remoteExec ["BEW_FNC_RevealObjective", 2];
									
								};
								
							}] remoteExec ["BIS_FNC_Call", 2];
					
					};
				
					
				};
				
				deleteVehicle _hostage;
					
		};
			
		
		_hostage