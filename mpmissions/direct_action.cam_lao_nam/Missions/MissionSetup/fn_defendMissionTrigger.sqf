	private ["_objectivePos", "_radius", "_iconMarkerName", "_randomMission", "_markerColor", "_forceType", "_iconType"];			
	
	_objectiveMarker = _this select 0;
	_radius = _this select 1;
	_randomMissionArray = _this select 2;
	_objectivePos = markerPos _objectiveMarker;
		
	_randomMission = _randomMissionArray select 0;
	_origMarkerType = _randomMissionArray select 1;	
	_missionTypeText = _randomMissionArray select 2;	
	_markerColor = _randomMissionArray select 3;	
	_message = _randomMissionArray select 4;
	_forceTypes = _randomMissionArray select 5;
	_forceType = _forceTypes call BIS_FNC_SelectRandom;
	_markerText = markerText _objectiveMarker;
	
		_iconType = switch (_forceType) do {
		
			case "OPF_1"	: 	{OPF_1_MarkerIcon};
			
			case "OPF_2"	:	{OPF_2_MarkerIcon};
				
			case "OPF_SOF"	:	{OPF_SOF_MarkerIcon};
			
			default {_iconType = OPF_1_MarkerIcon};
			
		};
	
	if (isNil "BEW_v_AllObjectiveTriggerMarkers") then {BEW_v_AllObjectiveTriggerMarkers = []}; 
	if (isNil "BEW_v_AllObjectiveAreaMarkers") then {BEW_v_AllObjectiveAreaMarkers = []}; 

	
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


	if (_origMarkerType == OPF_1_MarkerIcon) then {

		waitUntil {sleep 5; ((({(alive _x) and (_x distance2D _objectivePos < _radius * 4) and !(vehicle _x isKindOf 'air') and (isNull (isVehicleCargo vehicle _x))} count allPlayers) > 0) or (_objectivePos distance markerPos "safeZone_1" < 2500)) and !(objectiveMissionActive)};	

	};

	// Name Marker Icon
		
		_iconMarkerName = format ["%1_objectiveIcon", _objectiveMarker];
	
		
	// Create Icon Marker
		
		_playAreaIcon = createMarker [_iconMarkerName, _objectivePos];
		_playAreaIcon setMarkerType _iconType;
		if (_origMarkerType == OPF_1_MarkerIcon) then {_missionTypeText = format ["%1", markerText _objectiveMarker]};
		//if !(_origMarkerType == OPF_1_MarkerIcon) then {_playAreaIcon setMarkerColor _markerColor};
		_playAreaIcon setMarkerText _missionTypeText;
		_playAreaIcon setMarkerSize [0.5, 0.5];
			_playAreaIcon call BEW_FNC_fixMarkerSize;
		
		
		if (_origMarkerType == OPF_1_MarkerIcon) then {
		
			_playAreaIcon setMarkerAlpha 1;
		
		}else{
		
			_playAreaIcon setMarkerAlpha 0;
		
		};
		
		BEW_v_AllObjectiveTriggerMarkers = BEW_v_AllObjectiveTriggerMarkers + [_playAreaIcon];


waitUntil {sleep 5; markerAlpha _playAreaIcon > 0};

		BEW_v_AllObjectiveTriggerMarkers = BEW_v_AllObjectiveTriggerMarkers - [_playAreaIcon];
		
		_triggerAreaMarker setMarkerAlpha 0.5;		
	

	// Create Trigger To Flip Marker Alpha
	
		call compile format ["
		
			_iconAlphaTrigger = createTrigger [""EmptyDetector"", _objectivePos];
			_iconAlphaTrigger setTriggerArea [1, 1, 0, false, 2];
			_iconAlphaTrigger setTriggerActivation [""ANY"", ""PRESENT"", TRUE];
			_iconAlphaTrigger setTriggerStatements [""(objectiveMissionActive)"", ""'%1' setMarkerAlpha 0"", ""'%1' setMarkerAlpha 1""];
					
			_areaAlphaTrigger = createTrigger [""EmptyDetector"", _objectivePos];
			_areaAlphaTrigger setTriggerArea [1, 1, 0, false, 2];
			_areaAlphaTrigger setTriggerActivation [""ANY"", ""PRESENT"", TRUE];
			_areaAlphaTrigger setTriggerStatements [""(objectiveMissionActive)"", ""'%2' setMarkerColor 'colorGrey'"", ""'%2' setMarkerColor '%3'""];
			
		", _iconMarkerName, _areaMarkerName, _markerColor];

	
	// Send Message
		
		_message = format [_message, _markerText];
				
		[HQ , _message] remoteExec ["sideChat", 0];
		
	
	waitUntil {sleep 5; (({(alive _x) and (_x distance2D _objectivePos < _radius) and !(vehicle _x isKindOf 'air') and (isNull (isVehicleCargo vehicle _x))} count allPlayers) > 0) and !(objectiveMissionActive)};	
	
	
	// Delete Trigger Area
	
	
	deleteMarker _triggerAreaMarker;
	
	
	// Spawn Mission
		
		[_objectiveMarker, _iconMarkerName, _forceType] spawn _randomMission;
		
		

		
		
