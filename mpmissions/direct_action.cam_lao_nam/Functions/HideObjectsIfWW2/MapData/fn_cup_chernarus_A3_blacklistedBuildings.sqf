		
	if (!(isServer)) exitWith {};	
	if (!(BEW_v_WW2)) exitWith {};		
	if (!(toupper worldName == (toUpper "cup_chernarus_A3"))) exitWith {};
	
	
	_centerPos = markerPos "wholeMapMarker";
	_radius = markerSize "wholeMapMarker" select 0;
	
		
	_blacklistedBuildingModels = [
		
		'houseblock_a3.p3d',
		'houseblock_c5.p3d',
		'houseblock_c4.p3d',
		'houseblock_b2.p3d',
		'a_generalstore_01.p3d',
		'a_hospital.p3d',
		'a_office02.p3d',
		'houseblock_c2.p3d',
		'houseblock_c3.p3d',
		'houseblock_a1.p3d',
		'houseblock_d2.p3d',
		'houseblock_d1.p3d',
		'houseblock_b6.p3d',
		'houseb_tenement.p3d',
		'houseblock_a2_1.p3d',
		'house_2w03_f.p3d',
		'a_generalstore_01a.p3d'
		
	];
	
	
	// Destroy Buildings
	
		waitUntil {!(isNil "BEW_v_allAlliedCamps")};
		
		{

			_obj = _x;
			
			private _inArea = false;
		
			// Check If Building In Safe HQ Area
			
				if (_obj inArea BEW_v_HqSafeZoneMarker) then {_inArea = true};
								
			// Check If Object Hidden
			
				if (isObjectHidden _obj) then {_inArea = true};
			
			// Destroy If Not In Area
			
				if !(_inArea) then {
				
					_obj setDamage 1
				
				};
				
		} foreach (nearestTerrainObjects [_centerPos, [], _radius] select {getModelInfo _x #0 in _blacklistedBuildingModels});