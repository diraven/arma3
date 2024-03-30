
	private [
	
		"_position",
		"_radius",
		"_faction",
		"_side",
		"_staticWeapons",
		"_staticsInArea",
		"_allVehs",
		"_allUnits"
		
	];

	_position = _this select 0;
	_radius = _this select 1;
	_faction = _this select 2;
	
	_side = switch (toUpper _faction) do {
		
		case "BLU" : {WEST};
		case "BLU_ALT" : {WEST};
		case "BLU_SOF" : {WEST};
		case "OPF_1" : {EAST};
		case "OPF_2" : {EAST};
		case "OPF_3" : {EAST};
		case "OPF_SOF" : {EAST};
		case "IND_1" : {resistance};
		case "IND_2" : {resistance};
		case "REBEL_1" : {resistance};
		case "REBEL_2" : {resistance};
	
	};
  
	_staticWeapons = getMissionLayerEntities "Statics" select 0;
	_staticsInArea = _staticWeapons select {_x distance2D _position < _radius};
	
	_allVehs = [];
	_allUnits = [];
	
	// Create Group
	
		_allStaticsGroup = createGroup _side;
	
	{

		_veh = _x;
	  
	  
		// Spawn Group
		
			_group = [_veh, _side, _faction] call BEW_FNC_createTranslatedVehicleCrew;    
		 
		 
		// Crew Setup
		 
			{  
			 
				_unit = _x;
			 
				_unit setUnloadInCombat [false, false];  
				
				_allUnits pushBack _unit;
			  
			} forEach units _group;  
		
		_allVehs pushBack _veh;
	  
	} forEach _staticsInArea;  
	
	
	// All Units Join Statics Group
	
		{
			
			[_x] joinSilent _allStaticsGroup;
		
		} forEach _allUnits;
	
	_array = [_allVehs, _allUnits];
	
	_array
	
	