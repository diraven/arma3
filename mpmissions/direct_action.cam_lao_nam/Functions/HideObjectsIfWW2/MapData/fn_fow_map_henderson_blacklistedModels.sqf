
	if !(BEW_v_WW2) exitWith {};

	if (!(toupper worldName == (toUpper "fow_map_henderson"))) exitWith {};
	
	_centerPos = [4128.2,4051.64];
	_radius = 6000;
	
	_blacklistedModelList = [
	
		"d_fallentrunk_branches_f.p3d",
		"young_palm_01_green.p3d",
		"t_inocarpus_f.p3d",
		"young_tree02.p3d",  
		"young_tree01.p3d",  
		"t_pritchardia_f.p3d", 
		"mariata01.p3d",  
		"t_banana_slim_f.p3d",  
		"young_tree04.p3d", 
		"pinanga_bosket.p3d", 
		"young_tree_bosket.p3d", 
		"alexandrae02.p3d", 
		"young_palm_01.p3d", 
		"d_fallentrunk_clear_lc_f.p3d",
		"alexandrae05.p3d",
		"alexandrae01.p3d"
		
	];
	
	
	// Hide Objects
	
		{

			_x hideObject TRUE;
				
		} foreach (nearestTerrainObjects [_centerPos, [], _radius] select {getModelInfo _x #0 in _blacklistedModelList});