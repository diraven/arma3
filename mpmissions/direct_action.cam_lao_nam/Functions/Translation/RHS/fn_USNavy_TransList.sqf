
	// Units
	
		_rifleman				=	"rhsusf_usmc_marpat_d_rifleman_m4";
		_officer 				=	"rhsusf_usmc_marpat_d_officer";
		_teamLeader 			= 	"rhsusf_usmc_marpat_d_teamleader";
		_marksman 				= 	"rhsusf_usmc_marpat_d_marksman";
		_sniper					=	"rhsusf_usmc_marpat_d_sniper";
		_spotter				=	"rhsusf_usmc_marpat_d_spotter";
		_grenadier				=	"rhsusf_usmc_marpat_d_grenadier";
		_autoRifleman			= 	"rhsusf_usmc_marpat_d_autorifleman";
		_gunner					=	"rhsusf_usmc_marpat_d_machinegunner";
		_medic					= 	"rhsusf_navy_marpat_d_medic";
		_repairSpecialist		=	"rhsusf_usmc_marpat_d_engineer";
		_engineer				= 	"rhsusf_usmc_marpat_d_engineer";
		_guidedLAT				=	"rhsusf_usmc_marpat_d_riflemanat";
		_dumbLAT				=	"rhsusf_usmc_marpat_d_smaw";
		_missileSpecialistAT	= 	"rhsusf_usmc_marpat_d_javelin";
		_missileSpecialistAA	=	"rhsusf_usmc_marpat_d_stinger";
		_ammoBearer				= 	"rhsusf_usmc_marpat_d_autorifleman_m249_ass";
		_JTAC					= 	"rhsusf_usmc_marpat_d_jfo";
		_explosivesSpecialist	= 	"rhsusf_usmc_marpat_d_explosives";
		_uavOperator			= 	"rhsusf_usmc_marpat_d_uav";
		_paratrooper			=	"rhsusf_usmc_marpat_d_rifleman_m4";
		_heliPilot 				=	"rhsusf_usmc_marpat_d_helipilot";
		_heliCrew				=	"rhsusf_usmc_marpat_d_helicrew";
		_fighterPilot			=	"rhsusf_airforce_jetpilot";
		_pilot					=	"rhsusf_airforce_pilot";
		_vehicleCrew			=  	"rhsusf_usmc_marpat_d_combatcrewman";
		_diver 					=	"B_T_Diver_F";
		_diverTeamLeader		=	"B_T_Diver_TL_F";
		_diverExplosives		=	"B_T_Diver_Exp_F";
			
	
	// Vehicles
	
		_carrierPlane			= 	"FIR_FA18E_VFA15";
		_atTurret				=	"RHS_TOW_TriPod_D";
		_aaTurret				=	"RHS_Stinger_AA_pod_D";
		_mortar					=	"RHS_M252_D";
		
		_attackBoat = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "UK3CB_BAF_RHIB_HMG_DDPM_RM")): {"UK3CB_BAF_RHIB_HMG_DDPM_RM"};
			default {"B_Boat_Armed_01_minigun_F"};				
		};

		
		_quadBike 				=	"rhsusf_mrzr4_d";
		_smallCargoTruck		=	"rhsusf_M1078A1P2_B_M2_D_flatbed_fmtv_usarmy";
		_fuelTruck				=	"rhsusf_m1152_rsv_usarmy_d";
		_car					=	"rhsusf_m998_d_4dr";
		_carHMG					=	"rhsusf_m1043_d_m2";
		_carAT					=	"rhsusf_m1045_d";
		_Mrap					=	"rhsusf_m1151_usarmy_d";
		_MrapHMG				=	"rhsusf_m1240a1_m240_usmc_d";
		_MrapGMG				=	"rhsusf_m1240a1_mk19_usmc_d";
		_cargoTruck				=	"B_Truck_01_flatbed_F";
		_lightIFV				=	"rhsusf_M1117_D";
		_lightAA				=	"rhsusf_M1117_D";
		_tank					=	"rhsusf_m1a1fep_d";
		_antiAirAPC				=	"RHS_M6";
		_artilleryAPC			=	"rhsusf_m109d_usarmy";
		
		_wheeledIFV = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "Cha_Des1_LAV25A2")): {"Cha_Des1_LAV25A2"};
			default {"rhsusf_stryker_m1126_mk19_d"};				
		};
		
		_trackedAPC				=	"RHS_M2A3";
		
		_tankHunter	 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "M1128_MGS_DG1_NOSLATDES")): {"M1128_MGS_DG1_NOSLATDES"};
			default {"rhsusf_stryker_m1134_d"};				
		};
		
		_smallTrHeli			=	"RHS_MELB_MH6M";
			
		_mediumTrHeli = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "UMB_MH60S_d")): {"UMB_MH60S_d"};
			default {"RHS_UH1Y_UNARMED_d"};	
		};
		
		_largeTrHeli = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "UMB_MH60S_d")): {"UMB_MH60S_d"};
			default {"RHS_UH1Y_UNARMED_d"};	
		};
		
		_cargoHeli 				= 	"rhsusf_CH53e_USMC_cargo";	
		
		_smallAH 				= 	"RHS_MELB_AH6M";
		_largeAH				=	"RHS_UH60M";
		
		// Planes
		
			_TrPlane = switch (true) do {

				default {"RHS_C130J"};
				
			};	

			_CargoPlane = switch (true) do {

				default {"RHS_C130J_Cargo"};
				
			};	
			
			_AttackCargoPlane = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "USAF_AC130U")): {"USAF_AC130U"};
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
				case (isClass(configfile >> "CfgVehicles" >> "JS_JC_FA18E")): {"JS_JC_FA18E"};				// TETETE Super Hornet 2 Seat
				case (isClass(configfile >> "CfgVehicles" >> "FIR_FA18E")): {"FIR_FA18E"};					// FW Super Hornet 2 Seat
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A_LIGHT")): {"USAF_F35A_LIGHT"};
				default {"B_Plane_Fighter_01_Stealth_F"};				
			};	


			_plane_L4 = switch (true) do {
							
				case (isClass(configfile >> "CfgVehicles" >> "F_35C")): {"F_35C"};							// LAR F35C
				case (isClass(configfile >> "CfgVehicles" >> "FIR_F35B_Standard")): {"FIR_F35B_Standard"}; 	// FW F35B
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A")): {"USAF_F35A"};					// USAF F35A
				default {"B_Plane_Fighter_01_F"};				
			};	


			_plane_L5 = switch (true) do {			
				case (isClass(configfile >> "CfgVehicles" >> "FIR_F14A_Maverick")): {"FIR_F14A_Maverick"};	// FW F14
				case (isClass(configfile >> "CfgVehicles" >> "FIR_EA18G_Blank")): {"FIR_EA18G_Blank"};		// FW Growler
				default {"rhsusf_f22"};													
			};	


			_plane_L6 = switch (true) do {
				case (isClass(configfile >> "CfgVehicles" >> "JS_JC_FA18F")): {"JS_JC_FA18F"};				// TETETE Super Hornet 2 Seat
				case (isClass(configfile >> "CfgVehicles" >> "FIR_FA18F_VFA106")): {"FIR_FA18F_VFA106"};	// FW Super Hornet 2 Seat
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A")): {"USAF_F35A"};					// USAF F35A
				case (isClass(configfile >> "CfgVehicles" >> "USAF_A10")): {"USAF_A10"};					// USAF A10
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
















