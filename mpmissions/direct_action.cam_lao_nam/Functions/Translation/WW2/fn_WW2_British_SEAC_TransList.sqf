
	// Units
	
		_rifleman				= 	"fow_s_uk_seac_rifleman";
		_officer 				=	"fow_s_uk_seac_officer";
		_teamLeader 			= 	"fow_s_uk_seac_teamleader";
		_marksman 				= 	"fow_s_uk_seac_rifleman_l";
		_sniper					=	"";
		_spotter				=	"";
		_grenadier				=	"fow_s_uk_seac_section_commander";
		_autoRifleman			= 	"fow_s_uk_seac_bren_gunner";
		_gunner					=	"";
		_medic					= 	"fow_s_uk_seac_medic";
		_repairSpecialist		=	"";
		_engineer				= 	"fow_s_uk_seac_at_l";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"fow_s_uk_seac_at";
		_missileSpecialistAA	=	"fow_s_uk_seac_at";
		_ammoBearer				= 	"fow_s_uk_seac_bren_asst";
		_JTAC					= 	"fow_s_uk_seac_radio_operator";
		_explosivesSpecialist	= 	"";
		_uavOperator			= 	"";
		_paratrooper			=	"";
		_heliPilot 				=	"LIB_US_Pilot";
		_heliCrew				=	"LIB_US_Pilot";
		_fighterPilot			=	"LIB_US_Pilot";
		_pilot					=	"LIB_US_Pilot";
		_vehicleCrew			=  	"LIB_UK_Tank_Crew";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";
	
	
	// Vehicles		
		
		// Turrets
		
			_atTurret				=	"fow_w_6Pounder_uk";
			_aaTurret				=	"vn_b_army_static_m45";
			_mortar					=	"LIB_M2_60";
			
		// Trucks
			
			_quadBike 				=	"sab_fl_scooter_53";
			_smallCargoTruck		=	"LIB_US6_Tent_Cargo";
			_fuelTruck				=	"LIB_US6_Tent_Cargo";
			_cargoTruck				=	"LIB_US6_Tent_Cargo";
			
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
			
			_Mrap 					=	"LIB_UniversalCarrier";	 			
			_MrapHMG 				=	"LIB_US_Scout_M3_FFV";	 			
			_MrapGMG				=	"LIB_UK_M3_Halftrack";
			
		// Tanks
						
			_lightIFV	= switch (true) do {
				case (isClass(configfile >> "CfgVehicles" >> "FA_DaimlerMk2")): {"FA_DaimlerMk2"};
				default {"LIB_UK_M3_Halftrack"};				
			};
			
			_lightAA				=	"LIB_M8_Greyhound";
			_wheeledIFV				=	"LIB_M3A3_Stuart";
			_tankHunter				=	"LIB_M5A1_Stuart";
			_trackedAPC				=	"LIB_Cromwell_Mk4";
			_antiAirAPC				=	"LIB_M4A4_FIREFLY";
			_tank					=	"LIB_Churchill_Mk7";
			_artilleryAPC			=	["LIB_Churchill_Mk7_Crocodile", "LIB_Churchill_Mk7_AVRE", "LIB_Churchill_Mk7_Howitzer"];
			
			
		// Helis

			_smallTrHeli			=	"LIB_HORSA_RAF";
			_mediumTrHeli			=	"LIB_HORSA_RAF";
			_largeTrHeli			=	"LIB_HORSA_RAF";
			_cargoHeli				=	"LIB_HORSA_RAF";
			_smallAH				=	"";
			_largeAH				=	"";
			
		// Planes
		
			_TrPlane				=	"LIB_C47_RAF";
			_CargoPlane				=	"LIB_C47_RAF";
			_AttackCargoPlane		=	"";
			_plane_L1				=	"LIB_RAF_P39";
			_plane_L2				=	"sab_fl_hurricane";
			
			_plane_L3 				= switch (true) do {
				case (isClass(configfile >> "CfgVehicles" >> "spitfire_v")): {"spitfire_v"};
				default {"sab_fl_hurricane_trop"};				
			};
			
			_plane_L4				=	"sab_fl_hurricane_2";
			_plane_L5				= 	"sab_fl_dh98";
			_plane_L6				= 	"sab_sw_halifax";
			
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
