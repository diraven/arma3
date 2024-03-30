	private ["_object", "_objectSide", "_markerColor"];

	_object = param [0, player];	
	_objectSide = param [1, WEST];	
	
	if (typeName _objectSide == "STRING") then {
	
		_objectSide = switch (_objectSide) do {
					
			case "OPF_1" 	: {EAST};
			case "OPF_2" 	: {EAST};
			case "OPF_3" 	: {EAST};
			case "OPF_SOF" 	: {EAST};
			default {WEST};		
		};	
	
	};
	
	_markerColor = switch (_objectSide) do {
	
		case WEST :	{"colorBLUFOR"};
		case EAST : {"colorOPFOR"};
		default {"colorBLUFOR"};
	
	};
	
		
	waitUntil {!(isNil "BEW_v_all_Objectives")};
	
	if (count BEW_v_all_Objectives < 1) exitWith {
		
		_return = false;
		
		_return
	
	};
	
	// All Unfinished Objectives
	
		_allUnfinishedObjectives = BEW_v_all_Objectives select {!(markerColor _x == _markerColor)};
		
		if (count _allUnfinishedObjectives < 1) exitWith {
		
			_return = false;
			
			_return
	
		};
		
	// Nearest Unfinished Objective
	
		_nearestUnfinishedObjective = [_allUnfinishedObjectives, _object] call BIS_fnc_nearestPosition;

		
	// Check If In Area
	
		_return = _object inArea _nearestUnfinishedObjective;

		_return
		
		
		
		
	