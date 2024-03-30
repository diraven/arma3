
	// Units
	
		_rifleman				= 	"fow_s_us_mm_rifleman";
		_officer 				=	"fow_s_us_mm_officer";
		_teamLeader 			= 	"fow_s_us_mm_nco";
		_marksman 				= 	"fow_s_us_mm_sniper_m1903a1";
		_sniper					=	"fow_s_us_mm_sniper_m1903a1";
		_spotter				=	"fow_s_us_mm_rifleman_scout";
		_grenadier				=	"fow_s_us_mm_rifleman_gl";
		_autoRifleman			= 	"fow_s_us_mm_bar_gunner";
		_gunner					=	"fow_s_us_mm_m1919a6_gunner";
		_medic					= 	"fow_s_us_mm_medic";
		_repairSpecialist		=	"fow_s_us_mm_engineer";
		_engineer				= 	"fow_s_us_mm_engineer";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"fow_s_us_mm_at";
		_missileSpecialistAA	=	"fow_s_us_mm_at";
		_ammoBearer				= 	"fow_s_us_mm_m1919a6_asst";
		_JTAC					= 	"fow_s_us_mm_radio_operator";
		_explosivesSpecialist	= 	"";
		_uavOperator			= 	"fow_s_us_mm_rifleman_scout";
		_paratrooper			=	"";
		_heliPilot 				=	"LIB_US_Pilot";
		_heliCrew				=	"LIB_US_Pilot";
		_fighterPilot			=	"LIB_US_Pilot";
		_pilot					=	"LIB_US_Pilot";
		_vehicleCrew			=  	"LIB_US_Tank_Crew";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";


	// Vehicles		
		
		// Turrets
		
			_atTurret				=	"fow_w_6Pounder_usa";
			_aaTurret				= switch (true) do {
				case (isClass(configfile >> "CfgVehicles" >> "vn_b_army_static_m45")): {"vn_b_army_static_m45"};
				default {"LIB_61k"};				
			};
			_mortar					=	"LIB_M2_60";
			
		// Trucks
			
			_quadBike 				=	"sab_fl_scooter_53";
			_smallCargoTruck		=	"LIB_US_GMC_Tent";
			_fuelTruck				=	"LIB_US_GMC_Tent";
			_cargoTruck				=	"LIB_US_GMC_Tent";
			
		// Cars	
			
			_car					= switch (true) do {
				case (isClass(configfile >> "CfgVehicles" >> "vn_b_wheeled_m151_01")): {"vn_b_wheeled_m151_01"};
				default {"LIB_UK_Willys_MB"};				
			};
			
			_carHMG					= switch (true) do {
				case (isClass(configfile >> "CfgVehicles" >> "vn_b_wheeled_m151_02")): {"vn_b_wheeled_m151_02"};
				default {"LIB_UK_Willys_MB_Hood"};				
			};	
			
			_carAT					= switch (true) do {
				case (isClass(configfile >> "CfgVehicles" >> "vn_b_wheeled_m151_mg_02")): {"vn_b_wheeled_m151_mg_02"};
				default {"LIB_UK_Willys_MB_M1919"};				
			};
			
			_Mrap 					=	"LIB_US_Scout_M3_FFV";	 			
			_MrapHMG 				=	"LIB_US_Scout_M3_FFV";	 			
			_MrapGMG				=	"LIB_US_M3_Halftrack";
			
		// Tanks
						
			_lightIFV				= 	"LIB_US_M3_Halftrack";
			
			_lightAA				=	"LIB_M8_Greyhound";
			_wheeledIFV				=	"LIB_M3A3_Stuart";
			_tankHunter				=	"LIB_M5A1_Stuart";
			_trackedAPC				=	"LIB_M4A3_75";
			_antiAirAPC				=	"LIB_M4A3_76";
			_tank					=	"LIB_M4A3_76_HVSS";
			_artilleryAPC			=	"FA_M26";
			
			
		// Helis

			_smallTrHeli			=	"LIB_HORSA";
			_mediumTrHeli			=	"LIB_HORSA";
			_largeTrHeli			=	"LIB_HORSA";
			_cargoHeli				=	"LIB_HORSA";
			_smallAH				=	"";
			_largeAH				=	"";
			
		// Planes
		
			_TrPlane				=	"LIB_C47_Skytrain";
			_CargoPlane				=	"LIB_C47_Skytrain";
			_AttackCargoPlane		=	"";
			_plane_L1				=	"sab_fl_f4f";
			_plane_L2				=	"fow_va_f6f";
			_plane_L3 				= 	"fow_va_f6f_c";
			_plane_L4				=	"sab_fl_sbd";
			_plane_L5				= 	"sab_fl_f4u";
			_plane_L6				= 	"sab_sw_tbf";
			
		// Boats
		
			_smallBoat				=	"LIB_LCVP";
			_attackBoat				=	"LIB_LCM3_Armed";
			_sub 				=	"";


// Arrays

		_allUnitTypes = [
			
			_rifleman,
			_officer,
			_teamLeader, 
			_marksman, 
			_sniper, 
			_spotter, 
			_grenadier, 
			_autoRifleman, 
			_gunner, 
			_medic, 
			_repairSpecialist, 
			_engineer, 
			_guidedLAT, 
			_dumbLAT, 
			_missileSpecialistAT, 
			_missileSpecialistAA, 
			_ammoBearer, 
			_JTAC, 
			_explosivesSpecialist, 
			_uavOperator, 
			_paratrooper, 
			_heliPilot, 
			_heliCrew, 
			_fighterPilot, 
			_pilot, 
			_vehicleCrew,
			_diver,
			_diverTeamLeader,
			_diverExplosives
		
		];


		_allVehicleTypes = [
		
			_atTurret,
			_aaTurret,
			_mortar,
			_AttackCargoPlane,
			_attackBoat,
			_quadBike,
			_smallCargoTruck,
			_fuelTruck,
			_car,
			_carHMG,
			_carAT,
			_Mrap,
			_MrapHMG,
			_MrapGMG,
			_cargoTruck,
			_lightIFV,
			_lightAA,
			_tank,
			_antiAirAPC,
			_artilleryAPC,
			_wheeledIFV,
			_trackedAPC,
			_tankHunter,
			_smallTrHeli,
			_mediumTrHeli,
			_largeTrHeli,
			_cargoHeli,
			_smallAH,
			_largeAH,
			_TrPlane,
			_CargoPlane,
			_plane_L1,
			_plane_L2,
			_plane_L3,
			_plane_L4,
			_plane_L5,
			_plane_L6,			
			_smallBoat,
			_sub

		];


	_return = _allUnitTypes + _allVehicleTypes;
	
	_return	
