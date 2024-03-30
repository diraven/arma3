	
	if !(BEW_v_WW2) exitWith {};
	
	if (!(toupper worldName == (toUpper "enoch"))) exitWith {};
	
	_centerPos = [6412.46,6367.17,0];
	_radius = 10000;
	
	_blacklistedModelList = [
	
		'wreck_bmp2_f.p3d',
		'wreck_brdm2_f.p3d',
		'wreck_skodovka_f.p3d',
		'wreck_uaz_f.p3d',
		'wreck_ural_f.p3d',
		'v3s_wreck_f.p3d',
		'mi8_wreck_f.p3d',
		'bulldozer_01_wreck_f.p3d',
		'combineharvester_01_wreck_f.p3d',
		'excavator_01_wreck_f.p3d',
		'trailercistern_wreck_f.p3d',
		'wreck_slammer_turret_f.p3d',
		'wreck_t72_hull_f.p3d',
		'wreck_t72_turret_f.p3d',
		'garbagecontainer_open_f.p3d',
		'garbagecontainer_closed_f.p3d',
		'garbagebin_01_f.p3d',
		'barrelempty_f.p3d',
		'barrelempty_grey_f.p3d',
		'barrelsand_f.p3d',
		'barrelsand_grey_f.p3d',
		'barreltrash_f.p3d',
		'barreltrash_grey_f.p3d',
		'barrelwater_f.p3d',
		'barrelwater_grey_f.p3d',
		'sign_priority_new.p3d',
		'sign_waitingprohibited.p3d',
		'busstop_02_sign_f.p3d',
		'sign_main.p3d',
		'sign_bus.p3d',
		'sign_parking.p3d',
		'sign_nodrivingwronway.p3d',
		'sign_stop_new.p3d',
		'sign_speed20.p3d',
		'sign_accomodation.p3d',
		'spp_transformer_f.p3d',
		'gasmetercabinet_01_f.p3d',
		'wpp_turbine_v2_f.p3d',
		'cargo20_military_green_f.p3d',
		'cargo40_military_green_f.p3d',
		'containerline_03_f.p3d',
		'fuelstation_03_prices_f.p3d',
		'fuelstation_03_pump_f.p3d',
		'fuelstation_03_shop_f.p3d',
		'cargo40_grey_f.p3d',
		'cargo20_grey_f.p3d',
		'garbagebags_f.p3d',
		'sign_downhill.p3d',
		'sign_stopprohibited.p3d',
		'cargo20_sand_f.p3d',
		'cargo20_red_f.p3d',
		'cargo20_grey_f.p3d',
		'cargo40_grey_f.p3d',
		'cargo40_sand_f.p3d',
		'cargobox_v1_f.p3d',
		'cargo40_red_f.p3d',
		'powergenerator_wreck_f.p3d',
		'cargo20_yellow_f.p3d',
		'powerwirebig_direct_f.p3d',
		'highvoltagetower_large_f.p3d',
		'powerwirebig_direct_short_f.p3d',
		'highvoltagetower_largecorner_f.p3d',
		'powerwirebig_left_f.p3d',
		'powerwirebig_right_f.p3d',
		'powerwirebig_end_f.p3d',
		'dp_transformer_f.p3d',
		'highvoltageend_f.p3d',
		'chairplastic_f.p3d'
		
	];
	
	
	// Hide Objects
	
		{

			_x hideObject TRUE;
				
		} foreach (nearestTerrainObjects [_centerPos, [], _radius] select {getModelInfo _x #0 in _blacklistedModelList});