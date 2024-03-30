	
	private ["_infGroup", "_allUnits"];
	
	_centerMarker = param [0];
		_markerPos = markerPos _centerMarker;
		_markerSize = markerSize _centerMarker select 0;
	
	_forceType = param [1, selectRandom ["OPF_1", "OPF_2", "OPF_SOF"]];
	_debug = param [2, false];
	
	_resetDelay = 600;
	
	_allUnits = [];
	_allVehicles = [];
	_allObjects = [];
	
	
	// Define Infantry Array 
	
		_infantryArray = call compile format ["
		
			_infantryArray = %1_InfantryArray;
			
			_infantryArray
		
		", _forceType];
		
		_factionType = (_infantryArray select 1);
		
	
	// Spawn Encounter
		
		if ((BEW_v_Zombies) and (_factionType == "WBK_AI_ZHAMBIES")) then {
			
			for "_i" from 1 to random 10 do {
			
				_infGroup = [_markerPos, 50, _forceType] call BEW_FNC_randomInfantryPatrol;
				_allUnits append units _infGroup;
			
			};
				
		}else{
			
			_infGroup = [_markerPos, 50, _forceType] call BEW_FNC_randomInfantryPatrol;
			
			_allUnits append units _infGroup;
			
		};


	// Time Out

		_timeout = [_resetDelay, {!(({(alive _x) and (_x distance2D _markerPos < _markerSize) and !(vehicle _x isKindOf 'air') and (isNull (isVehicleCargo vehicle _x))} count allPlayers) > 0)}] call BEW_FNC_timeOut;


	// Clean Up Units and Vehicles
	
		if (_debug) then {
		
			hint "Random encounter force deleted";
		
		};
		
		{deleteVehicle _x} forEach _allUnits; 		// Delete Units
		{deleteVehicle _x} forEach _allVehicles; 	// Delete Vehicles
		{deleteVehicle _x} forEach _allObjects; 	// Delete Objects