
	if !(BEW_v_WW2) exitWith {};

	if (!(toupper worldName == (toUpper "tem_anizay"))) exitWith {};
	
	_centerPos = [5095.31,5074.34];
	_radius = 7400;
	
	_blacklistedModelList = [
	
		"cargo20_brick_red_f.p3d",
		"signt_giveway.p3d",
		"signt_giveway.p3d",
		"hbarrier_big_f.p3d",
		"garbagecontainer_open_f.p3d",
		"bargate_f.p3d",
		"hbarriertower_f.p3d",
		"crane_f.p3d",
		"datsun01t.p3d",
		"wreck_skodovka_f.p3d",
		"garbagecontainer_closed_f.p3d",
		"garbagebags_f.p3d",
		"wreck_offroad2_f.p3d",
		"hbarrier_5_f.p3d",
		"wreck_truck_dropside_f.p3d",
		"wreck_van_f.p3d",
		"wreck_offroad_f.p3d",
		"hiluxt.p3d",
		"concretepipe_f.p3d",
		"bricks_v1_f.p3d",
		"datsun02t.p3d",
		"cargo20_sand_f.p3d",
		"cargo20_cyan_f.p3d",
		"cargo20_light_green_f.p3d",
		"cargo20_light_blue_f.p3d",
		"cargo20_grey_f.p3d"
		
	];
	
	
	// Hide Objects
	
		{

			_x hideObject TRUE;
				
		} foreach (nearestTerrainObjects [_centerPos, [], _radius] select {getModelInfo _x #0 in _blacklistedModelList});