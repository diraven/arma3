
	private [
		
		"_objectiveMarker",
		"_objectivePos",
		"_selectedMissionType",
		"_allMissionData",
		"_missionType",
		"_activationRadius",
		"_activatedObjectiveSize",
		"_allowedFactionTypes",
		"_markerText",
		"_discoveryMessage",
		"_taskType",
		"_playAreaIcon"
	
	];

	_objectiveMarker = _this select 0;
		_objectivePos = markerPos _objectiveMarker; 
		_objectiveSize = markerSize _objectiveMarker select 0;
		_objectiveText = markerText _objectiveMarker;
	
	_selectedMissionType = _this select 1;
		
		
	// Hide Objectives And Make Color OPFOR

		_objectiveMarker setMarkerColor "colorOPFOR";
		_objectiveMarker setMarkerBrush "FDiagonal";
		_objectiveMarker setMarkerAlpha 0;
		

	// Create Marker And Exit If Objective Already Completed
	
		// Main Mission
		
			if (toUpper _objectiveMarker in (BEW_v_all_completedMainObjectives apply {toUpper _x})) exitWith {
									
				// Area Marker
				
					_objectiveMarker setMarkerColor "colorBLUFOR";
					_objectiveMarker setMarkerAlpha 0.5;
						
						
				// Icon
				
					_markerText = _objectiveText + " [Captured]";	
					_markerName = format ["%1_Icon", _objectiveMarker];
					_playAreaIcon = createMarker [_markerName, _objectivePos];
					_playAreaIcon setMarkerColor "default";
					_playAreaIcon setMarkerType BLU_MarkerIcon;
					_playAreaIcon setMarkerText _markerText;
					_playAreaIcon setMarkerSize [0.75, 0.75];
					_playAreaIcon call BEW_FNC_fixMarkerSize;
				
				
				// Create Spawn Point
				
					[_objectiveMarker] call BEW_FNC_createNearestCampRespawnPoint;
					
				// Delete Any Landing Craft
					
					_landingCraftFolder = (getMissionLayerEntities _objectiveMarker); 

					if (count _landingCraftFolder > 0) then { 

						_landingCraftObjects = _landingCraftFolder select 0; 

						{ 

						deleteVehicle _x; 

						} forEach _landingCraftObjects; 

					}; 
					
			};
		
		
		// Side Mission
		
			if (toUpper _objectiveMarker in (BEW_v_all_completedSideObjectives apply {toUpper _x})) exitWith {
				
				// Area Marker
				
					_objectiveMarker setMarkerColor "colorBLUFOR";
					_objectiveMarker setMarkerAlpha 0;
								
				// Icon
				
					_markerName = format ["%1_Icon", _objectiveMarker];					
					_playAreaIcon = createMarker [_markerName, _objectivePos];
					_playAreaIcon setMarkerColor "default";
					_playAreaIcon setMarkerType BLU_MarkerIcon;
					_playAreaIcon setMarkerText "";
					_playAreaIcon setMarkerSize [0.5, 0.5];
					_playAreaIcon call BEW_FNC_fixMarkerSize;
				
			
			};
	
		
	// Get Mission Data
	
		_allMissionData = [] call BEW_FNC_MissionData;
		
		
	// Select Mission Data
	
		{

			_missionData = _x;
				_missionType = _missionData select 0;
				   
			if (_missionType == _selectedMissionType) exitWith {
			
				_activationRadius = _missionData select 1;
				_activatedObjectiveSize = _missionData select 2;
				_allowedFactionTypes = _missionData select 3;
				_markerText = _missionData select 4;
				_discoveryMessage = _missionData select 5;
				_taskType = _missionData select 6;
				
				{
				
					_factionType = _x;
				
					call compile format ["
					
						if (%1Faction select 1 == '') then {
							
							_allowedFactionTypes = _allowedFactionTypes - [_factionType];
							
						};
					
					", _factionType];
				
				} forEach _allowedFactionTypes;
			
			};

		} forEach _allMissionData;
		
		
	// Select Faction
	
		_selectedFaction = _allowedFactionTypes call BIS_FNC_SelectRandom;
		
	
	// Add To Array 
	
		if (isNil "BEW_v_FactionsOnObjectives") then {BEW_v_FactionsOnObjectives = []};
		BEW_v_FactionsOnObjectives pushBack [_objectiveMarker, _selectedFaction];
	
	
	// Change Marker Size
	
		_objectiveMarker setMarkerSize [_activationRadius, _activationRadius];
	
	
	// Switch Flags
	
		private _allFlags = getMissionLayerEntities "MilitarySpawnPoints" select 0;

		private _allFlagsInArea = _allFlags inAreaArray _objectiveMarker;
	
		{	
		
			_flag = _x;
		
			[_flag, _selectedFaction] call BEW_FNC_SetFlagTexture; 
			
			_flag setVariable ["factionSide", EAST, TRUE];
			
		} forEach _allFlagsInArea;
		
		
	
	
	// Wait Until Alive Player In Discovery Radius
	
		waitUntil {sleep 1; 
			
			(toUpper _objectiveMarker in (BEW_v_revealedObjectives apply {toUpper _x})) or
			
			(
			
				!(BEW_v_objectiveMissionActive) and 
				
				(toUpper _objectiveMarker in (BEW_v_currentActiveObjective apply {toUpper _x})) or
				
				(
				
					(
						
						(toUpper _objectiveMarker in (BEW_v_all_SideObjectives apply {toUpper _x})) or
						(toUpper _objectiveMarker in ((BEW_v_ObjectiveProgression select 0) apply {toUpper _x})) or 
						(count (BEW_v_ObjectiveProgression select 0) < 1)
					
					) and 
					
					(
					
						(toUpper _objectiveMarker in ((BEW_v_ObjectiveProgression select 0) apply {toUpper _x})) or
					
						(	
							
							(toUpper _objectiveMarker in (BEW_v_all_MainObjectives apply {toUpper _x})) and
						

							(count (allplayers select {

								(
								
									!(vehicle _x isKindOf "Air") and 
									(alive _x) and 
									(side _x == WEST) and
									(isTouchingGround vehicle _x) or (!(vehicle _x isKindOf "Air") and (surfaceIsWater getpos _x))
								
								) and 
								(_x distance2D _objectivePos < _activationRadius * 4) 

							}) > 0)
						
						) or 
						
						(	
							
							(toUpper _objectiveMarker in (BEW_v_all_SideObjectives apply {toUpper _x})) and
							
							(
								
								(
								
									(_selectedMissionType == "MILITARY_SMALL") and 
									(toUpper _objectiveMarker in (BEW_v_militarySmall_Objectives apply {toUpper _x})) and 
									
									(count (allplayers select {

										(!(vehicle _x isKindOf "Air") and (alive _x)) and 
										(_x distance2D _objectivePos < _activationRadius * 4) 

									}) > 0) and
									
									(
									
										(toUpper _objectiveMarker in ((BEW_v_ObjectiveProgression select 0) apply {toUpper _x})) or 
										(count (BEW_v_ObjectiveProgression select 0) < 1)
									
									)
								
								) or
								
								(markerAlpha _objectiveMarker == 1)
							
							)
							
						)
					
					)
				
				)
			
			)
		};
	

	
	// Change Area Marker Alpha When Discovered
	
		_objectiveMarker setMarkerAlpha 1;
		
	// Change Defend Marker Colour
	
		if (_selectedMissionType == "DEFEND_MAIN") then {
		
			_objectiveMarker setMarkerColor "ColorYellow";
			
		};
		
	private ["_eastRespawnPosition"];
	
	if !(toUpper _objectiveMarker in (BEW_v_revealedObjectives apply {toUpper _x})) then {
		
		// Add To Revealed Objectives
		
			BEW_v_revealedObjectives pushBackUnique _objectiveMarker;
				publicVariable "BEW_v_revealedObjectives";
		
		// Add To Revealed Side Objectives
			
			if !(toUpper _objectiveMarker in (BEW_v_all_MainObjectives apply {toUpper _x})) then {
			
				BEW_v_revealedSideMissions pushBackUnique _objectiveMarker;
					publicVariable "BEW_v_revealedObjectives";
				
				if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
				 
					["write", ["Locations", "Revealed Side Missions", BEW_v_revealedSideMissions]] call BEW_v_dataBase; 
			
				};
				
			};
			
		// Update Database
					
			if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
				 
				["write", ["Locations", "Revealed Objectives", BEW_v_revealedObjectives]] call BEW_v_dataBase; 
			
			};
			
		// Create OPFOR Spawn Point
			
			if ((count _allFlagsInArea > 0) and (BEW_v_PvpEnabled)) then {
			
				_eastRespawnPosition = [EAST, getpos (selectRandom _allFlagsInArea), _objectiveText] call BIS_fnc_addRespawnPosition;
				
			};

	};

	// If Main Objective Create Task
	
		
			// Create Task
				
				private ["_taskName", "_taskDescription", "_taskTitle", "_taskNameArray"];
							
				if (toUpper _objectiveMarker in (BEW_v_all_MainObjectives apply {toUpper _x})) then {
					
					_taskName = format ["parentTask_%1", _objectiveMarker];	
					_taskDescription = format [_discoveryMessage, _objectiveText];
					_taskTitle = format ["%1 %2",_markerText, _objectiveText];
					_taskNameArray = [_taskName,"captureTheMap"];

				}else{
				
					_taskName = format ["parentTask_%1", _objectiveMarker];	
					_taskDescription = format [_discoveryMessage + " [Optional]", _objectiveText];
					_taskTitle = format ["%1 %2",_markerText, _objectiveText];
					_taskNameArray = [_taskName,"sideObjectives"];
					
				};
				
				[

					WEST, 
					_taskNameArray,
					 
					[

					_taskDescription, 
					_taskTitle, 
					_objectiveMarker

					], 

					objNull, 
					"CREATED", 
					-1, 
					false, 
					_taskType, 
					true

				] call BIS_fnc_taskCreate;
			
		
			
	
	// Create Icon
		
		
		// Define Icon Type
		
			_iconType = call compile format ["
			
				_iconType = %1_MarkerIcon;
				
				_iconType
			
			", _selectedFaction];
		
		
		// Create Marker
						
			_newMarkerText = " " + _markerText + " " + _objectiveText;
						
			_markerName = format ["%1_Icon", _objectiveMarker];
			
			if (getMarkerColor _markerName == "") then {
			
				_playAreaIcon = createMarker [_markerName, _objectivePos];
				
			}else{
			
				_playAreaIcon = _markerName;
			
			};
			
			_playAreaIcon setMarkerColor "default";
			_playAreaIcon setMarkerType _iconType;
			_playAreaIcon setMarkerText _newMarkerText;
			
			if (toUpper _objectiveMarker in (BEW_v_all_MainObjectives apply {toUpper _x})) then {
				_playAreaIcon setMarkerSize [0.75, 0.75];
			}else{
				_playAreaIcon setMarkerSize [0.5, 0.5];
			};
			
			_playAreaIcon call BEW_FNC_fixMarkerSize;
	
	
	// Hide Marker If Objective Active
	
		[_objectiveMarker, _playAreaIcon] spawn BEW_FNC_HideObjectiveIfMissionActive;
	
	
	// Discovery Message
		
		waitUntil {!(isNil "HQ_WEST")};
		
		_message = format [_discoveryMessage, _objectiveText];
		[HQ_WEST, _message] remoteExec ["sideChat", 0];

	
	// Wait Until Alive Player In Activation Radius Or Manually Triggered
		
	
		// Timeout 
		
			_timeOut = 10;
			
			while {_timeOut > 0} do {
										
				sleep 1;
			
				if (
			
					(
					
						(BEW_v_objectiveMissionActive) and 
						(toUpper _objectiveMarker in (BEW_v_defend_Objectives apply {toUpper _x}))
						
					) or
					
					(
					
						!(BEW_v_objectiveMissionActive) and 
						
						(
									
							(toUpper _objectiveMarker in (BEW_v_currentActiveObjective apply {toUpper _x})) or
						
							(

								count (allplayers select {

									(
									
										!(vehicle _x isKindOf "Air") and 
										!(vehicle _x isKindOf "ParachuteBase") and 
										(side _x == WEST) and 
										(alive _x) and
										(isTouchingGround vehicle _x) or (!(vehicle _x isKindOf "Air") and (surfaceIsWater getpos _x))
									
									) and 
									(_x distance2D _objectivePos < _activationRadius)

								}

								) > 0

							)
						
						)
					
					)
			
				) then {
						
						_timeOut = _timeOut - 1;
						[format ["INSIDE MISSION AREA - Mission Will Activate In %1", _timeOut]] remoteExec ["systemchat", 0];
					
				}else{
				
					_timeOut = 10;
				
				};
				
			};
		
	
	// Defend Mission

			if (
				
				(BEW_v_objectiveMissionActive) and  
				(toUpper _objectiveMarker in (BEW_v_defend_Objectives apply {toUpper _x})) and
				(

							count (allplayers select {

								(!(vehicle _x isKindOf "Air") and !(vehicle _x isKindOf "ParachuteBase") and (alive _x)) and 
								(_x distance2D _objectivePos < _activationRadius)

							}

							) < 1

				)
			
			) exitWith {
				
				// Reset Objective
				
					[_objectiveMarker] call BEW_FNC_resetObjective;
				
				// Remove From Defend Objectives
				
					BEW_v_defend_Objectives = BEW_v_defend_Objectives - [toUpper _objectiveMarker];
			
				// Message
				
					_message = format ["The Enemy Has Recaptured %1", markerText _objectiveMarker];
					[_message] remoteExec ["hint", 0];
			
			};
	
	
	// Remove East Respawn
		
		if !(isNil "_eastRespawnPosition") then {
		
			_eastRespawnPosition call BIS_fnc_removeRespawnPosition;
		
		};
	
	// Flip Mission Active Variable
	
		BEW_v_objectiveMissionActive = TRUE;
			publicVariable "BEW_v_objectiveMissionActive";
		
		
	// Make Current Active Objective
	
		BEW_v_currentActiveObjective pushBackUnique _objectiveMarker;
			publicVariable "BEW_v_currentActiveObjective";
		

	// Change Marker Size
	
		_objectiveMarker setMarkerSize [_activatedObjectiveSize, _activatedObjectiveSize];

	
	// Create In Area Trigger
	
		_inAreaTrigger = [_objectivePos, _objectiveSize] call BEW_FNC_InAreaTrigger;
	

	// Mission Started Message
		
		_startedMessageLine_1 = "NEW MISSION ORDERS";
		_startedMessageLine_2 = _markerText + " " + _objectiveText;
		
		[_startedMessageLine_1, _startedMessageLine_2] call BEW_FNC_missionStartedMessage;


	// Flip Mission Cancelled
	
		BEW_v_objectiveMissionCancelled = false;	


	// Call Mission
		
		private ["_missionFailed"];
		
		_returnArray = call compile format ["
		
			_returnArray = [_objectiveMarker, _inAreaTrigger, _selectedFaction] call BEW_FNC_%1_Mission;
			
			_returnArray
			
		", _selectedMissionType];
		
		_cleanUpArray = _returnArray select 0;
		_missionFailed = _returnArray select 1;
		
		if (BEW_v_objectiveMissionCancelled) then {
			
			_missionFailed = true;
			BEW_v_allCancelledObjectives pushBack _objectiveMarker;
				publicVariable "BEW_v_allCancelledObjectives";
		
		};
		
		
	// Flip Mission Cancelled
	
		BEW_v_objectiveMissionCancelled = false;	
			publicVariable "BEW_v_objectiveMissionCancelled";
	
	
		if (toUpper _objectiveMarker in (BEW_v_all_MainObjectives apply {toUpper _x})) then {
		
			// Icon Marker
			
				_markerText = _objectiveText + " [Captured]";
				_playAreaIcon setMarkerType BLU_MarkerIcon;
				_playAreaIcon setMarkerText _markerText;
				_playAreaIcon setMarkerSize [0.75, 0.75];
				_playAreaIcon setMarkerAlpha 1;
				_playAreaIcon call BEW_FNC_fixMarkerSize;
			
			
			// Area Marker
			
				_objectiveMarker setMarkerColor "colorBLUFOR";
				_objectiveMarker setMarkerAlpha 0.5;
				
				
			// Add To Completed Array
			
				BEW_v_all_completedMainObjectives pushBack toUpper _objectiveMarker;
					publicVariable "BEW_v_all_completedMainObjectives";
				
				
			// Create Spawn Point
	
				if !(BEW_v_objectiveMissionCancelled) then {
				
					[_objectiveMarker] call BEW_FNC_createNearestCampRespawnPoint;
					
				};
				
						
			// Update Mission Level
						
				if !(_missionFailed) then {
				
					if (BEW_v_slowDownProgression) then {
					
						missionLevel = missionLevel + 0.5;
						
					}else{
					
						missionLevel = missionLevel + 1;
					
					};
					
					publicVariable "missionLevel";
					
				};
				
				
			// Mission Complete Message
			
				if !(_missionFailed) then {
				
					[missionLevel, "MISSION COMPLETE"] call BEW_FNC_missionCompleteMessage;
					
				}else{
					
					[missionLevel, "MISSION FAILED", "EventTrack02_F_Curator"] call BEW_FNC_missionCompleteMessage;
				
				};
			
			
			// Update Database
				
				if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
					 
					["write", ["Locations", "Completed Main Objectives", BEW_v_all_completedMainObjectives]] call BEW_v_dataBase; 
					["write", ["Progression", "Mission Level", missionLevel]] call BEW_v_dataBase; 
				
				};
			
		}else{
				
			// Icon Marker
						
				_playAreaIcon setMarkerType BLU_MarkerIcon;
				_playAreaIcon setMarkerText "";
				_playAreaIcon setMarkerSize [0.5, 0.5];
				_playAreaIcon setMarkerAlpha 1;
				_playAreaIcon call BEW_FNC_fixMarkerSize;
			
			// Area Marker
			
				_objectiveMarker setMarkerColor "colorBLUFOR";
				_objectiveMarker setMarkerAlpha 0;
				
			
			// Add To Completed Array
			
				BEW_v_all_completedSideObjectives pushBack toUpper _objectiveMarker;
					publicVariable "BEW_v_all_completedSideObjectives";
			
			
			// Update Mission Level
						
				if !(_missionFailed) then {
					
					if (BEW_v_slowDownProgression) then {
					
						missionLevel = missionLevel + 0.25;
						
					}else{
					
						missionLevel = missionLevel + 0.5;
					
					};
					
						publicVariable "missionLevel";
					
				};
				
				
			// Mission Complete Message
			
				if !(_missionFailed) then {
				
					[missionLevel, "MISSION COMPLETE"] call BEW_FNC_missionCompleteMessage;
					
				}else{
					
					[missionLevel, "MISSION FAILED", "EventTrack02_F_Curator"] call BEW_FNC_missionCompleteMessage;
				
				};
			
			
			// Update Database
				
				if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
					
					
					["write", ["Locations", "Completed Side Objectives", BEW_v_all_completedSideObjectives]] call BEW_v_dataBase; 
					["write", ["Progression", "Mission Level", missionLevel]] call BEW_v_dataBase; 
				
				};
		
		};
		
		
	sleep 10;
	
	
	// Flip Mission Active Variable
	
		BEW_v_objectiveMissionActive = FALSE;
			publicVariable "BEW_v_objectiveMissionActive";	
			
			
	// Mission Clean Up
	
		_cleanUpArray spawn BEW_FNC_MissionCleanUp;
		
		
	// Remove From Current Active Objective
	
		BEW_v_currentActiveObjective = BEW_v_currentActiveObjective - [_objectiveMarker];
			publicVariable "BEW_v_currentActiveObjective";
			
			
	// Remove From Defend Objectives
				
		BEW_v_defend_Objectives = BEW_v_defend_Objectives - [toUpper _objectiveMarker];
				
			
	// Select Defend Mission
	
		_completedObjsNoPlayers = BEW_v_all_completedMainObjectives select {count (allplayers inAreaArray [markerPos _x, 800, 800]) < 1};
		
		if ((random 100 > 75) and (count _completedObjsNoPlayers > 0) and !(BEW_v_Zombies)) then {

			_selectedDefendMission = selectRandom _completedObjsNoPlayers;
			_selectedMissionName = markerText _selectedDefendMission;
			
			// Add To Defend Objectives
			
				BEW_v_defend_Objectives pushBack  toUpper _selectedDefendMission;
			
			// Message
			
				["ENEMY ATTACK INCOMING", format ["Move To Defend %1", markerText _selectedDefendMission]] call BEW_FNC_MissionMessage;	
				
			// Start Defend Mission
			
				[_selectedDefendMission, "DEFEND_MAIN"] call BEW_FNC_resetObjective;
		
		}else{
		
		};
