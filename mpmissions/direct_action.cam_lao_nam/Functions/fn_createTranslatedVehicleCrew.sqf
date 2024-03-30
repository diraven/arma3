
	private [
	
		"_veh",
		"_side",
		"_faction",
		"_type",
		"_vehGroup"
	
	];
	
	_veh = param [0];
	_side = param [1];
	_faction = param [2, "BLU"];
			
	_type = switch (true) do {
	
		case (_veh isKindOf "Tank") : {"B_crew_F"};
	
		case (_veh isKindOf "Wheeled_APC_F") : {"B_crew_F"};
		
		case (_veh isKindOf "Helicopter") : {"B_Helipilot_F"};
		
		case (_veh isKindOf "Plane") : {"B_Fighter_Pilot_F"};
		
		default {"B_Soldier_F"};
	
	};
	

	// Translate Class Names
										
		_newType = call compile format ["

			_newType = [_type, [[BLU_Map_TransList, %1_New_TransList]]] call BEW_FNC_TranslateClassNames;
			
			_newType
			
		", _faction];


	// Get All Turrets 

		_allTurrets = _veh call BIS_fnc_vehicleCrewTurrets;


	// Repeat For Each Turret
	
		private _allUnits = [];
	
		for "_i" from 0 to ((count _allTurrets) - 1) do {


			// Define Turret Path
			
				_turretPath = _allTurrets select _i;


			// Create Unit
			
				_unit = createGroup [_side, true] createUnit [_newType, getPos _veh, [], 0, "FORM"];


			// Move In Unit
				
				units group _unit allowGetIn true;
				[_unit] orderGetIn true;
				
				if (str _turretPath == "[-1]") then {
								
					_unit moveInDriver _veh;
					
				}else{
				
					_unit assignAsTurret [_veh, _turretPath];	
					_unit moveInTurret [_veh, _turretPath]
				
				};
				
				_allUnits pushBack _unit;

		};
		
		sleep 0.5;
		
		// Create Group
	
			_vehGroup = createGroup _side;
				
			{	
				[_x] joinSilent _vehGroup
					
			} forEach _allUnits;

	_vehGroup
