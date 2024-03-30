
	// Units
	
		_rifleman				= 	"LIB_SOV_rifleman";
		_officer 				=	"LIB_SOV_first_lieutenant";
		_teamLeader 			= 	"LIB_SOV_sergeant";
		_marksman 				= 	"LIB_SOV_scout_sniper_autumn";
		_sniper					=	"LIB_SOV_scout_sniper_autumn";
		_spotter				=	"LIB_SOV_scout_rifleman_autumn";
		_grenadier				=	"LIB_SOV_grenadier";
		_autoRifleman			= 	"LIB_SOV_mgunner";
		_gunner					=	"";
		_medic					= 	"LIB_SOV_medic";
		_repairSpecialist		=	"";
		_engineer				= 	"LIB_SOV_sapper";
		_guidedLAT				=	"LIB_SOV_LAT_Soldier";
		_dumbLAT				=	"LIB_SOV_LAT_Soldier";
		_missileSpecialistAT	= 	"LIB_SOV_AT_M1A1_soldier";
		_missileSpecialistAA	=	"LIB_SOV_AT_M1A1_soldier";
		_ammoBearer				= 	"";
		_JTAC					= 	"LIB_SOV_operator";
		_explosivesSpecialist	= 	"";
		_uavOperator			= 	"";
		_paratrooper			=	"";
		_heliPilot 				=	"LIB_SOV_pilot";
		_heliCrew				=	"LIB_SOV_pilot";
		_fighterPilot			=	"LIB_SOV_pilot";
		_pilot					=	"LIB_SOV_pilot";
		_vehicleCrew			=  	"LIB_SOV_tank_overall_sergeant";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";
	

	// Vehicles		
		
		// Turrets
		
			_atTurret				=	"LIB_Zis3";
			_aaTurret				=	"LIB_61k";
			_mortar					=	"LIB_BM37";
			
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
			
			_Mrap 					=	"LIB_Scout_M3";	 			
			_MrapHMG 				=	"LIB_Scout_M3";	 			
			_MrapGMG				=	"LIB_US_M3_Halftrack";
			
		// Tanks
						
			_lightIFV				= 	"LIB_Zis5v_61K";			
			_lightAA				=	"FA_BA10M";
			_wheeledIFV				=	"FA_T26";
			_tankHunter				=	"LIB_SU85";
			_trackedAPC				=	["LIB_T34_76", "LIB_M4A2_SOV"];
			_antiAirAPC				=	"FA_KV1";
			_tank					=	"LIB_T34_85";
			_artilleryAPC			=	["LIB_JS2_43", "LIB_US6_BM13"];
			
			
		// Helis

			_smallTrHeli			=	"LIB_HORSA";
			_mediumTrHeli			=	"LIB_HORSA";
			_largeTrHeli			=	"LIB_HORSA";
			_cargoHeli				=	"LIB_HORSA";
			_smallAH				=	"";
			_largeAH				=	"";
			
		// Planes
		
			_TrPlane				=	"LIB_Li2";
			_CargoPlane				=	"LIB_Li2";
			_AttackCargoPlane		=	"";
			_plane_L1				=	"LIB_RA_P39_3";
			_plane_L2				=	"sab_sw_i16";
			_plane_L3 				= 	"sab_fl_yak3";
			_plane_L4				=	"sab_sw_il2";
			_plane_L5				= 	"sab_sw_il2_2";
			_plane_L6				= 	"LIB_Pe2";
			
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
