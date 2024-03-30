if ((!isServer)) exitWith {};

private ["_allObjectives", "_randomMissionTypes", "_triggerArea", "_forceType", "_randomMissionArray"];

	// Set Initial Mission Flags
		
		objectiveMissionActive = FALSE;
			publicVariable "objectiveMissionActive";
		
		missionTriggerObjectActivated = FALSE;
			publicVariable "missionTriggerObjectActivated";
			
		objectiveMissionCancelled = FALSE;
			publicVariable "objectiveMissionCancelled";
			

	// Exit If Air Superiority

		if ((BEW_V_airSuperiority)) exitWith {};


	// Setup Mission Trigger Object
	
		
		// Mission Trigger Action

			[
			
               missionTriggerObject,																		// Object the action is attached to
               "<t color='#ffff33'>" + "SELECT NEXT MISSION</t>",																// Title of the action
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",								// Idle icon shown on screen
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",								// Progress icon shown on screen
                "(player distance2D _target < 3) and (player == leader group player) and !(objectiveMissionActive) and !(missionTriggerObjectActivated)",	// Condition for the action to be shown
                "(player distance2D _target < 3) and (player == leader group player) and !(objectiveMissionActive) and !(missionTriggerObjectActivated)",	// Condition for the action to progress
                {},																			// Code executed when action starts
                {},																			// Code executed on every progress tick
                {
				
					player playActionNow 'PutDown';
					playSound 'click';
					
					missionTriggerObjectActivated = TRUE;
					publicVariable "missionTriggerObjectActivated";

					[missionTriggerObject] call BEW_FNC_manualMissionTriggerActions;
				   
                },																			// Code executed on completion
                {},																			// Code executed on interrupted
                [],																			// Arguments passed to the scripts as _this select 3
                4,																			// Action duration [s]
                99,																			// Priority
               false,																		// Remove on completion
               false																		// Show in unconscious state
				
			] remoteExec ["BIS_fnc_holdActionAdd", 0, true];
				
		
		// Cancel Mission Action
				
			[
			
               missionTriggerObject,																		// Object the action is attached to
              "<t color='#ffff33'>" + "CANCEL CURRENT MISSION (Penalty: -1 Mission Level)</t>",																// Title of the action
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",								// Idle icon shown on screen
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",								// Progress icon shown on screen
                "(player distance2D _target < 3) and (player == leader group player) and (objectiveMissionActive)",	// Condition for the action to be shown
                "(player distance2D _target < 3) and (player == leader group player) and (objectiveMissionActive)",	// Condition for the action to progress
                {},																			// Code executed when action starts
                {},																			// Code executed on every progress tick
                {
				
					player playActionNow 'PutDown';
					playSound 'click';
					
					{
			
						objectiveMissionActive = FALSE;
							publicVariable "objectiveMissionActive";
						
						objectiveMissionCancelled = TRUE;
							publicVariable "objectiveMissionCancelled";
							
						hint "MISSION CANCELLED";
			
					} remoteExec ["bis_fnc_call", 2]; 
				   
                },																			// Code executed on completion
                {},																			// Code executed on interrupted
                [],																			// Arguments passed to the scripts as _this select 3
                4,																			// Action duration [s]
                99,																			// Priority
               false,																		// Remove on completion
               false																		// Show in unconscious state
				
			] remoteExec ["BIS_fnc_holdActionAdd", 0, true];
		
			
		// Not The Squad Leader Action
			
			[{
				
				
				missionTriggerObject addAction [

				"<t color='#ffff33'>" + "CANNOT SELECT MISSION - MUST BE SQUAD LEADER</t>",{
				
					"CANNOT SELECT MISSION - MUST BE SQUAD LEADER" hintC [	
				
						"You must be the squad leader to manually select a mission."	
					
					];
			
				},[], 99, true, false, "", "(player distance2D _target < 3) and !(player == leader group player)"];
				

			}] remoteExec ["BIS_FNC_Call", 0, true];


		BEW_v_AllObjectiveMarkers = getMissionLayerEntities "AllObjectiveMarkers" select 1; 
			publicVariable "BEW_v_AllObjectiveMarkers";

		_objectiveTypes = ["Industrial", "Power", "Town", "Airfield", "Tower", "Military", "DestroyStructure", "MilitarySmall", "Beachhead"];
		

{

	// Define All Objectives
	
			_allObjectives = [[_x]] call BEW_FNC_DefineObjectives;
			
			if (isNil "BEW_v_allObjectives") then {BEW_v_allObjectives = []};

			{
			
				BEW_v_allObjectives = BEW_v_allObjectives + [toUpper _x];
			
			} forEach _allObjectives;
			
		
		_randomMissionTypes = switch (true) do
		
		{
			
			case (!(BEW_v_WW2) and (_x == "Industrial")): {[
			
				[BEW_FNC_destroyVehicleMission, "DESTROY_VEHICLE"],
				[BEW_FNC_repairMission, "REPAIR_VEHICLE"],
				[BEW_FNC_SARMission, "RESCUE_PILOT"],
				[BEW_FNC_supplyDropsMission, "SUPPLY_DROPS"],				
				[BEW_FNC_defendMission, "DEFEND"],
				[BEW_FNC_captureSmallMission, "CAPTURE_SMALL"]
				
			]};
			
			case ((BEW_v_WW2) and (_x == "Industrial")): {[
			
				[BEW_FNC_destroyVehicleMission, "DESTROY_VEHICLE"],
				[BEW_FNC_repairMission, "REPAIR_VEHICLE"],
				[BEW_FNC_SARMission, "RESCUE_PILOT"],			
				[BEW_FNC_defendMission, "DEFEND"],
				[BEW_FNC_captureSmallMission, "CAPTURE_SMALL"]
				
			]};
			
			case (_x == "Power"): {[
			
				[BEW_FNC_repairPowerStation, "POWER_STATION"]
				
			]};
			
			case (!(BEW_v_WW2) and (_x == "Town")): {[
			
				[BEW_FNC_destroyVehicleMission, "DESTROY_VEHICLE"],
				[BEW_FNC_repairMission, "REPAIR_VEHICLE"],
				[BEW_FNC_SARMission, "RESCUE_PILOT"],
				[BEW_FNC_supplyDropsMission, "SUPPLY_DROPS"],		
				[BEW_FNC_defendMission, "DEFEND"],
				[BEW_FNC_captureSmallMission, "CAPTURE_SMALL"]

			]};
			
			case ((BEW_v_WW2) and (_x == "Town")): {[
			
				[BEW_FNC_destroyVehicleMission, "DESTROY_VEHICLE"],
				[BEW_FNC_repairMission, "REPAIR_VEHICLE"],
				[BEW_FNC_SARMission, "RESCUE_PILOT"],	
				[BEW_FNC_defendMission, "DEFEND"],
				[BEW_FNC_captureSmallMission, "CAPTURE_SMALL"]

			]};
			
			case (_x == "Airfield"): {[
			
				[BEW_FNC_stealVehicleMission, "ENEMY_Airfield"]
			
			]};
			
			case (_x == "Tower"): {[
			
				[BEW_FNC_towerMission, "DESTROY_TOWER"]
			
			]};
			
			case (_x == "SEA"): {[
			
				[BEW_FNC_seaMission, "SUNKEN_INTEL"]
			
			]};
			
			case (_x == "Military"): {[
			
				[BEW_FNC_captureMission, "ENEMY_CAMP"]
			
			]};
			
			case (_x == "DestroyStructure"): {[
			
				[BEW_FNC_destroyStructureMission, "DESTROY_STRUCTURE"]
			
			]};
			
			case (_x == "MilitarySmall"): {[
			
				[BEW_FNC_captureSmallMission, "CAPTURE_SMALL"]
			
			]};
			
			case (_x == "Beachhead"): {[
			
				[BEW_FNC_BeachheadMission, "BEACHHEAD"]
			
			]};
			
		};	
		
		_triggerArea = switch (true) do
		
		{
			
			case (_x == "Industrial"): {400};
			
			case (_x == "Power"): {400};
			
			case (_x == "Town"): {400};
			
			case (_x == "Airfield"): {650};
			
			case (_x == "Tower"): {400};
			
			case (_x == "DestroyStructure"): {400};
			
			case (_x == "Sea"): {400};
			
			case (_x == "MilitarySmall"): {400};
			
			case (_x == "Military"): {650};
			
			case (_x == "Beachhead"): {800};
			
		};	
		
		
	// Select Random Mission Type
	
		{
			
			// Params
			
				_objectiveMarker = _x;
				_pos = markerPos _x;
				_size = markerSize _x;
				_text = markerText _x;
				_type = markerColor _x;
			
			
			// Check For Island Objectives
			
				_islandLocations = [] call BEW_FNC_islandLocationsList;
			
				if (_objectiveMarker in _islandLocations) then {
					
					_randomMissionArray = _randomMissionArray - [[BEW_FNC_repairMission, "REPAIR_VEHICLE"]];
					_randomMissionArray = _randomMissionArray - [[BEW_FNC_supplyDropsMission, "SUPPLY_DROPS"]];
					_randomMissionArray = _randomMissionArray - [[BEW_FNC_defendMission, "DEFEND"]];
				
				};
			
			
			// Select Random Mission Type
		
			_randomMissionArray = _randomMissionTypes call BIS_fnc_selectRandom;
		
		
			// Pack Array
		
				_array = [_objectiveMarker, _pos, _size, _text, _type];
			
			if (toUpper _objectiveMarker in BEW_v_completedObjectives) then {
				
				// Create Friendly Flag
				
					_iconMarkerName = format ["%1_objectiveIcon", _objectiveMarker];
					_iconType = [BLU_MarkerIcon] call BEW_FNC_TranslateClassNames;
					_playAreaIcon = createMarker [_iconMarkerName, _pos];
					_playAreaIcon setMarkerColor "default";
					_playAreaIcon setMarkerType _iconType;
					_playAreaIcon setMarkerText _text;
					_playAreaIcon setMarkerSize [0.5, 0.5];
					_playAreaIcon call BEW_FNC_fixMarkerSize;
								
				// Create Respawn Point
				
					[_pos] call BEW_FNC_createNearestCampRespawnPoint;
					
				// Switch Markercolor To Blufor
				
					_objectiveMarker setMarkerColor "colorBLUFOR";
			
			}else{
			
				[_objectiveMarker, _triggerArea, _randomMissionArray] spawn BEW_FNC_MissionTrigger;
				
			};
			
		} forEach _allObjectives;
		
} forEach _objectiveTypes;
			
		
	// End Mission Tracker
	
		[] spawn BEW_FNC_endMissionTracker;