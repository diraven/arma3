
	if (!(isServer)) exitWith {};	
	if (!(BEW_v_WW2)) exitWith {};		
	if (!(toupper worldName == (toUpper "tem_anizay"))) exitWith {};
	
	
	_centerPos = markerPos "wholeMapMarker";
	_radius = markerSize "wholeMapMarker" select 0;
	
		
	_blacklistedBuildingModels = [
		
		"dum_istan4_big_inverse.p3d",
		"dum_istan4_big.p3d",
		"a_villa_ep1.p3d",
		"dum_istan4_detaily1.p3d",
		"house_k_7_ep1.p3d",
		"guardhouse_01_f.p3d",
		"miloffices_v1_f.p3d",
		"a_buildingwip.p3d",
		"i_barracks_v2_f.p3d",
		"ind_powerstation_ep1.p3d"
		
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