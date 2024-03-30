
	private _blacklistedModelNames = switch (toupper worldName) do {
	
		case (toUpper "Altis")			:	{};
		case (toUpper "Tanoa")			:	{};
		case (toUpper "Cam_Lao_Nam")	:	{};
		case (toUpper "OPTRE_Madrigal")	:	{};
		case (toUpper "tem_anizay")		:	{
		
			[
			
				'HBarrier_3_F.p3d',
				'HBarrier_5_F.p3d',
				'HBarrier_Big_F.p3d',
				'HBarrier_1_F.p3d',
				'HBarrierWall_corridor_F.p3d',
				'HBarrierWall_corner_F.p3d',
				'HBarrierWall6_F.p3d',
				'HBarrierWall4_F.p3d',
				'HBarrierTower_F.p3d',
				'Toilet.p3d'
					
			];
			
		};
		
		case (toUpper "stozec")			:	{};
		case (toUpper "enoch")			:	{
		
			[
			
					"Wreck_BMP2_F.p3d",
					"Wreck_BRDM2_F.p3d",
					"Wreck_AFV_Wheeled_01_F.p3d",
					"Wreck_HMMWV_F.p3d",
					"Wreck_Skodovka_F.p3d",
					"Wreck_CarDismantled_F.p3d",
					"Wreck_Truck_F.p3d",
					"Wreck_Car2_F.p3d",
					"Wreck_Car_F.p3d",
					"Wreck_Car3_F.p3d",
					"Wreck_Hunter_F.p3d",
					"Wreck_Van_F.p3d",
					"Wreck_Offroad_F.p3d",
					"Wreck_Offroad2_F.p3d",
					"Wreck_UAZ_F.p3d",
					"Wreck_Truck_dropside_F.p3d",
					"Wreck_Ural_F.p3d",
					"V3S_wreck_F.p3d",
					"Wreck_Heli_Attack_01_F.p3d",
					"Mi8_wreck_F.p3d",
					"Wreck_Heli_Attack_02_F.p3d",
					"UWreck_Heli_Attack_02_F.p3d",
					"Heli_Light_02_wreck_01_F.p3d",
					"Heli_Light_02_wreck_02_F.p3d",
					"Heli_Light_02_wreck_03_F.p3d",
					"Heli_Light_02_wreck_04_F.p3d",
					"Bulldozer_01_wreck_F.p3d",
					"CombineHarvester_01_wreck_F.p3d",
					"Excavator_01_wreck_F.p3d",
					"HaulTruck_01_abandoned_F.p3d",
					"Bulldozer_01_abandoned_F.p3d",
					"Excavator_01_abandoned_F.p3d",
					"MiningShovel_01_abandoned_F.p3d",
					"TrailerCistern_wreck_F.p3d",
					"Wreck_Plane_Transport_01_F.p3d",
					"UWreck_MV22_F.p3d",
					"Wreck_MBT_04_F.p3d",
					"Wreck_LT_01_F.p3d",
					"Wreck_Slammer_F.p3d",
					"Wreck_Slammer_hull_F.p3d",
					"Wreck_Slammer_turret_F.p3d",
					"Wreck_T72_hull_F.p3d",
					"Wreck_T72_turret_F.p3d",
					
				// Plastic
				
					"WheelieBin_01_F.p3d",
					"GarbageContainer_open_F.p3d",
					"GarbageContainer_closed_F.p3d",
					"GarbageBin_01_F.p3d",
					"BarrelEmpty_F.p3d",
					"BarrelEmpty_grey_F.p3d",
					"BarrelSand_F.p3d",
					"BarrelSand_grey_F.p3d",
					"BarrelTrash_F.p3d",
					"BarrelTrash_grey_F.p3d",
					"BarrelWater_F.p3d",
					"BarrelWater_grey_F.p3d",
					"WaterBarrel_F.p3d",
					
				// Signs
				
					"sign_priority_new.p3d",
					"sign_waitingprohibited.p3d",
					"busstop_02_sign_f.p3d",
					"sign_main.p3d",
					"sign_bus.p3d",
					"sign_parking.p3d",
					"sign_nodrivingwronway.p3d",
					"sign_stop_new.p3d",
					"sign_speed20.p3d",
					"sign_accomodation.p3d",
					
				// Electronics
				
					"spp_transformer_f.p3d",
					"gasmetercabinet_01_f.p3d",
					
				// Utilities
				
					"wpp_Turbine_V2_F.p3d",
					"wpp_Turbine_V1_F.p3d",
					"wpp_Turbine_V2_F.p3d",
					"wpp_Turbine_V1_F.p3d"
					
			];
			
		};
		
		
		case (toUpper "fow_map_henderson")	:	{
		
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
		
		};
		
		
		case (toUpper "OPTRE_Madrigal")	:	{};
	
	};
	
	_blacklistedModelNames