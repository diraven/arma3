	private ["_objectivePos", "_radius", "_iconMarkerName", "_missionFunction", "_markerColor", "_forceType", "_iconType"];			
	
	if (isNil "BEW_v_currentActiveMission") then {BEW_v_currentActiveMission = []}; 
	if (isNil "BEW_v_AllObjectiveTriggerMarkers") then {BEW_v_AllObjectiveTriggerMarkers = []}; 
	if (isNil "BEW_v_AllObjectiveAreaMarkers") then {BEW_v_AllObjectiveAreaMarkers = []}; 
	
// PARAMS	
	
	_objectiveMarker = _this select 0;
		_objectivePos = markerPos _objectiveMarker;
		_markerText = markerText _objectiveMarker;
		
	_radius = _this select 1;
	_randomMissionArray = _this select 2;
		
	_missionFunction = _randomMissionArray select 0;
	_missionType = _randomMissionArray select 1;	
		_missionType = toUpper _missionType;		
		
	_debug = FALSE;

	
	// Get Mission Array Entries
		
		_missionArray = [_objectiveMarker, _missionType] call BEW_FNC_missionArraySetup; 
		
		_missionTypeText		= 	_missionArray select 0;
		_markerColor			=	_missionArray select 1;
		_message				=	_missionArray select 2;
		_forceTypes				=	_missionArray select 3;

	
	// Select Force Type

		_forceType = _forceTypes call BIS_FNC_SelectRandom;


		// Select Icon

		_iconType = switch (_forceType) do {
		
			case "OPF_1"	: 	{OPF_1_MarkerIcon};
			case "OPF_2"	:	{OPF_2_MarkerIcon};				
			case "OPF_SOF"	:	{OPF_SOF_MarkerIcon};			
			default {_iconType = OPF_1_MarkerIcon};
			
		};

		if (_missionType == "DEFEND") then {
		
			_iconType = [BLU_MarkerIcon] call BEW_FNC_TranslateClassNames;
		
		};
	
	// Trigger Area Marker
	
		_areaMarkerName = format ["%1_triggerArea", _objectiveMarker];
	
		_triggerAreaMarker = createMarker [_areaMarkerName, _objectivePos];
		_triggerAreaMarker setMarkerShape "ELLIPSE";
		_triggerAreaMarker setMarkerBrush "FDiagonal";
		_triggerAreaMarker setMarkerSize [_radius, _radius];
		_triggerAreaMarker setMarkerText _markerText;
		_triggerAreaMarker setMarkerColor _markerColor;
		_triggerAreaMarker setMarkerAlpha 0;
		
		BEW_v_AllObjectiveAreaMarkers = BEW_v_AllObjectiveAreaMarkers + [_triggerAreaMarker];
		publicVariable "BEW_v_AllObjectiveAreaMarkers";

	
	// Wait Until Mission Progression Completed
			
			waitUntil {!(isNil "BEW_v_objectiveProgression")};
			
			waitUntil {sleep 5; (count (BEW_v_objectiveProgression select 0) < 1) or (_objectiveMarker in (BEW_v_objectiveProgression select 0))};
	
	// Wait Until Player In Range To Reveal
	
		if ((_missionType == "ENEMY_CAMP") or (_missionType == "ENEMY_AIRFIELD") or (_missionType == "BEACHHEAD") or ((_missionType == "CAPTURE_SMALL") and (_objectiveMarker in (getMissionLayerEntities "MilitarySmall" select 1)))) then {

			waitUntil {sleep 5; 
			
			(
			
				(
				
					(
					
						{(alive _x) and 
						(_x distance2D _objectivePos < _radius * 4) and 
						!(vehicle _x isKindOf 'air') and 
						(isNull (isVehicleCargo vehicle _x))} count allPlayers
						
					) > 0
				
				) or (_objectivePos distance markerPos BEW_v_HqSafeZoneMarker < 2500) or 
				
				(toUpper _objectiveMarker in BEW_v_revealedObjectives) or
				
				(_objectiveMarker in (BEW_v_objectiveProgression select 0))
				
			) and !(objectiveMissionActive)};	
		
		};

	// Name Marker Icon
		
		_iconMarkerName = format ["%1_objectiveIcon", _objectiveMarker];
	
		
	// Create Icon Marker
		
		_playAreaIcon = createMarker [_iconMarkerName, _objectivePos];
		
		if !((_missionType == "ENEMY_CAMP") or (_missionType == "ENEMY_AIRFIELD") or (_missionType == "BEACHHEAD") or (_missionType == "CAPTURE_SMALL")) then {
			
			_playAreaIcon setMarkerColor "Color6_FD_F";
		
		};
		
		_playAreaIcon setMarkerType _iconType;
		_playAreaIcon setMarkerText _missionTypeText;
		_playAreaIcon setMarkerSize [0.5, 0.5];
			_playAreaIcon call BEW_FNC_fixMarkerSize;
		
		
		if ((_missionType == "ENEMY_CAMP") or (_missionType == "ENEMY_AIRFIELD") or (_missionType == "BEACHHEAD") or ((_missionType == "CAPTURE_SMALL") and (_objectiveMarker in (getMissionLayerEntities "MilitarySmall" select 1))) or (_debug)) then {
		
			_playAreaIcon setMarkerAlpha 1;
		
		}else{
		
			_playAreaIcon setMarkerAlpha 0;
		
		};
		
		BEW_v_AllObjectiveTriggerMarkers = BEW_v_AllObjectiveTriggerMarkers + [_playAreaIcon];


waitUntil {sleep 5; markerAlpha _playAreaIcon > 0};

		BEW_v_AllObjectiveTriggerMarkers = BEW_v_AllObjectiveTriggerMarkers - [_playAreaIcon];
		
		_triggerAreaMarker setMarkerAlpha 0.5;		
		
		
	// Set Icon Color To Default
	
		_playAreaIcon setMarkerColor "Default";
	

	// Create Trigger To Flip Marker Alpha
	
		[_triggerAreaMarker] spawn BEW_FNC_hideObjectiveMarkers;
		[_playAreaIcon] spawn BEW_FNC_hideObjectiveMarkers;

	
	// Send Message
		
		_message = format [_message, _markerText];
				
		[HQ_WEST , _message] remoteExec ["sideChat", 0];

	
	// Add Revealed Objective To Database
	
		if ((_missionType == "ENEMY_CAMP") or (_missionType == "ENEMY_AIRFIELD") or (_missionType == "BEACHHEAD")) then {
			
			BEW_v_revealedObjectives pushBackUnique toUpper _objectiveMarker;  
			
			if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
 
				["write", ["Locations", "Revealed Objectives", BEW_v_revealedObjectives]] call BEW_v_dataBase; 
				
			};
		
		}else{
			
			BEW_v_revealedSideMissions pushBackUnique toUpper _objectiveMarker;
			
			if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
 
				["write", ["Locations", "Revealed Side Missions", BEW_v_revealedSideMissions]] call BEW_v_dataBase; 
				
			};
		
		};
	
	waitUntil {sleep 5; ((({(alive _x) and (_x distance2D _objectivePos < _radius) and !(vehicle _x isKindOf 'air') and (isNull (isVehicleCargo vehicle _x))} count allPlayers) > 0) or (markerColor _objectiveMarker == "colorWHITE")) and !(objectiveMissionActive)};	
	
	
	// Delete Trigger Area
	
		deleteMarker _triggerAreaMarker;
		
		
	// Switch Flag Texture
	
		// Find Nearest Flag
	
			_nearestMilitaryFlag = [BEW_v_militarySpawnFlags, _objectivePos] call BIS_fnc_nearestPosition;
		
		
		// Switch Flag Texture
	
			[_nearestMilitaryFlag, _forceType] call BEW_FNC_SetFlagTexture; 
	
	
	// Spawn Mission
		
		[_objectiveMarker, _iconMarkerName, _forceType] spawn _missionFunction;
	
	
	if !(isMultiplayer) then {saveGame};
		

		
		
