
	// Units
	
		_rifleman				=	"rhsusf_usmc_marpat_wd_rifleman_m4";
		_officer 				=	"rhsusf_usmc_marpat_wd_officer";
		_teamLeader 			= 	"rhsusf_usmc_marpat_wd_teamleader";
		_marksman 				= 	"rhsusf_usmc_marpat_wd_marksman";
		_sniper					=	"rhsusf_usmc_marpat_wd_sniper";
		_spotter				=	"rhsusf_usmc_marpat_wd_spotter";
		_grenadier				=	"rhsusf_usmc_marpat_wd_grenadier";
		_autoRifleman			= 	"rhsusf_usmc_marpat_wd_autorifleman";
		_gunner					=	"rhsusf_usmc_marpat_wd_machinegunner";
		_medic					= 	"rhsusf_navy_marpat_wd_medic";
		_repairSpecialist		=	"rhsusf_usmc_marpat_wd_engineer";
		_engineer				= 	"rhsusf_usmc_marpat_wd_engineer";
		_guidedLAT				=	"rhsusf_usmc_marpat_wd_riflemanat";
		_dumbLAT				=	"rhsusf_usmc_marpat_wd_smaw";
		_missileSpecialistAT	= 	"rhsusf_usmc_marpat_wd_javelin";
		_missileSpecialistAA	=	"rhsusf_usmc_marpat_wd_stinger";
		_ammoBearer				= 	"rhsusf_usmc_marpat_wd_autorifleman_m249_ass";
		_JTAC					= 	"rhsusf_usmc_marpat_wd_jfo";
		_explosivesSpecialist	= 	"rhsusf_usmc_marpat_wd_explosives";
		_uavOperator			= 	"rhsusf_usmc_marpat_wd_uav";
		_paratrooper			=	"rhsusf_usmc_marpat_wd_rifleman_m4";
		_heliPilot 				=	"rhsusf_usmc_marpat_wd_helipilot";
		_heliCrew				=	"rhsusf_usmc_marpat_wd_helicrew";
		_fighterPilot			=	"rhsusf_airforce_pilot";
		_pilot					=	"rhsusf_airforce_pilot";
		_vehicleCrew			=  	"rhsusf_usmc_marpat_wd_combatcrewman";
		_diver 					=	"B_T_Diver_F";
		_diverTeamLeader		=	"B_T_Diver_TL_F";
		_diverExplosives		=	"B_T_Diver_Exp_F";
			
	
	// Vehicles
	
		_atTurret				=	"RHS_TOW_TriPod_D";
		_aaTurret				=	"RHS_Stinger_AA_pod_D";
		_mortar					=	"RHS_M252_D";
		_attackBoat 			= 	"rhsusf_mkvsoc";
		
		_quadBike 				=	[
		
			"rhsusf_mrzr4_d", 
			"B_Quadbike_01_F"
		
		];
		
		_smallCargoTruck		=	[
			
			"rhsusf_M1084A1R_SOV_M2_WD_fmtv_socom"	
			
		];
		
		_fuelTruck				=	[

			"rhsusf_M1078A1R_SOV_M2_WD_fmtv_socom",
			"rhsusf_m1152_rsv_usarmy_wd"
			
		];
		
		_car					=	[
			
			"rhsusf_m1025_w", 
			"rhsusf_m998_w_4dr", 
			"rhsusf_m998_w_2dr_halftop"
					
		];		
		
		_carHMG					=	[
		
			"rhsusf_m1025_w_m2"
		
		];
		
		_carAT					=	[
			
			"rhsusf_m1045_w",
			"rhsusf_m1025_w_mk19"
			
		];		
		
		_Mrap					=	[
			
			"rhsusf_m1240a1_usarmy_wd",
			"rhsusf_m1151_usarmy_wd",	
			"rhsusf_CGRCAT1A2_usmc_wd"
		
		];	
		
		_MrapHMG				=	[
		
			"rhsusf_m1240a1_m2crows_usarmy_wd",
			"rhsusf_m1151_m2crows_usarmy_wd",		
			"rhsusf_CGRCAT1A2_M2_usmc_wd"
		
		];
		
		
		_MrapGMG				=	[
			
			"rhsusf_m1240a1_mk19crows_usarmy_wd",
			"rhsusf_m1151_mk19crows_usarmy_wd",	
			"rhsusf_CGRCAT1A2_Mk19_usmc_wd"
		
		];

		_cargoTruck				=	[
		
			"rhsusf_M977A4_BKIT_usarmy_wd", 
			"rhsusf_M978A4_BKIT_usarmy_wd", 		
			"rhsusf_M977A4_REPAIR_BKIT_usarmy_wd", 
			"rhsusf_M977A4_AMMO_usarmy_wd"
		
		];
		
		_lightIFV				=	[
			
			"rhsusf_M1220_M153_M2_usarmy_wd",
			"rhsusf_m113_usarmy"			
		
		];
		
		_lightAA				=	[
			
			"rhsusf_M1117_W", 
			"rhsusf_M1220_M153_MK19_usarmy_wd",
			"rhsusf_m113_usarmy_MK19"
		
		];
		
		_tank					=	"rhsusf_m1a1hc_wd";
		_antiAirAPC				=	"RHS_M6_wd";
		_artilleryAPC			=	[
		
			"rhsusf_m109_usarmy",
			"rhsusf_M142_usarmy_WD"	
		
		];
		
		_wheeledIFV = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "Cha_Des1_LAV25A2")): {"Cha_Des1_LAV25A2"};
			default {"rhsusf_stryker_m1126_mk19_wd"};				
		};
		
		_trackedAPC				=	"RHS_M2A3_wd";
		
		_tankHunter	 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "M1128_MGS_DG1_NOSLATDES")): {"M1128_MGS_DG1_NOSLATDES"};
			default {"rhsusf_stryker_m1134_wd"};				
		};
		
		_smallTrHeli			=	"RHS_MELB_MH6M";
		_mediumTrHeli			=	"RHS_UH1Y_UNARMED_d";		
		_largeTrHeli 			= 	"rhsusf_CH53E_USMC_D";		
		_cargoHeli 				= 	"rhsusf_CH53e_USMC_cargo";				
		_smallAH				=	"RHS_UH1Y_d";
		_largeAH				=	"RHS_AH1Z";
		
		// Planes
		
			_TrPlane = switch (true) do {
				
				case (isClass(configfile >> "CfgVehicles" >> "DEGA_V22_Infantry_B_NATO")): {"DEGA_V22_Infantry_B_NATO"};
				default {"RHS_C130J"};
				
			};	

			_CargoPlane = "RHS_C130J_Cargo";
			
			_AttackCargoPlane = switch (true) do {
				
				case (isClass(configfile >> "CfgVehicles" >> "USAF_AC130U")): {"USAF_AC130U"};
				case (isClass(configfile >> "CfgVehicles" >> "DEGA_V22_IDWS_B_NATO")): {"DEGA_V22_IDWS_B_NATO"};
				default {"RHS_C130J_Cargo"};
				
			};	
		
			_plane_L1 = switch (true) do {
				case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6a_2")): {"bwi_a3_t6a_2"};
				default {"RHSGREF_A29B_HIDF"};	
			};	
					
					
			_plane_L2 = switch (true) do {
				case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6a_11")): {"bwi_a3_t6a_11"};
				default {"rhs_l159_cdf_b_CDF"};				
			};	
					
					
			_plane_L3 = switch (true) do {
				case (isClass(configfile >> "CfgVehicles" >> "FIR_AV8B_VMA223")): {"FIR_AV8B_VMA223"};		// Harrier
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A_LIGHT")): {"USAF_F35A_LIGHT"};
				default {"B_Plane_Fighter_01_Stealth_F"};				
			};	


			_plane_L4 = switch (true) do {
							
				case (isClass(configfile >> "CfgVehicles" >> "FIR_F18C")): {"FIR_F18C"};					// Legacy Hornet
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A")): {"USAF_F35A"};					// USAF F35A
				default {"B_Plane_Fighter_01_F"};				
			};	


			_plane_L5 = switch (true) do {			
				case (isClass(configfile >> "CfgVehicles" >> "FIR_F35B_Standard")): {"FIR_F35B_Standard"};	// F35B
				default {"rhsusf_f22"};													
			};	


			_plane_L6 = switch (true) do {
				case (isClass(configfile >> "CfgVehicles" >> "FIR_F18D_VMFAAW224_02")): {"FIR_F18D_VMFAAW224_02"};	// Legacy Hornet 2 Seat
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A")): {"USAF_F35A"};							// USAF F35A
				case (isClass(configfile >> "CfgVehicles" >> "USAF_A10")): {"USAF_A10"};							// USAF A10
				default {"RHS_A10"};				
			};	
			
		_smallBoat				=	"B_Boat_Transport_01_F";
		_sub 					=	"B_SDV_01_F";
		
	
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
