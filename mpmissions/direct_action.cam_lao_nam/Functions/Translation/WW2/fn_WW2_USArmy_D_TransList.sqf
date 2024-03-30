
	// Units
	
		_rifleman				= 	"LIB_US_NAC_rifleman";
		_officer 				=	"LIB_US_NAC_captain";
		_teamLeader 			= 	"LIB_US_NAC_first_lieutenant";
		_marksman 				= 	"LIB_US_NAC_sniper";
		_sniper					=	"LIB_US_NAC_sniper";
		_spotter				=	"LIB_US_NAC_smgunner";
		_grenadier				=	"LIB_US_NAC_grenadier";
		_autoRifleman			= 	"LIB_US_NAC_mgunner";
		_gunner					=	"LIB_US_NAC_mgunner";
		_medic					= 	"LIB_US_NAC_medic";
		_repairSpecialist		=	"";
		_engineer				= 	"LIB_US_NAC_engineer";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"LIB_US_NAC_AT_soldier";
		_missileSpecialistAA	=	"LIB_US_NAC_AT_soldier";
		_ammoBearer				= 	"";
		_JTAC					= 	"LIB_US_NAC_radioman";
		_explosivesSpecialist	= 	"";
		_uavOperator			= 	"";
		_paratrooper			=	"";
		_heliPilot 				=	"LIB_US_Pilot";
		_heliCrew				=	"LIB_US_Pilot";
		_fighterPilot			=	"LIB_US_Pilot";
		_pilot					=	"LIB_US_Pilot";
		_vehicleCrew			=  	"LIB_US_NAC_driver";
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
			_plane_L1				=	"LIB_US_P39";
			_plane_L2				=	"sab_sw_p40";
			_plane_L3 				= 	"sab_fl_p51d";
			_plane_L4				=	"LIB_P47";
			_plane_L5				= 	["sab_sw_p38", "sab_sw_a26"];
			_plane_L6				= 	"sab_sw_b17";
			
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
