
	// Units
	
		_rifleman				=	"BWA3_Rifleman_Tropen";
		_officer 				=	"BWA3_Officer_Tropen";
		_teamLeader 			= 	"BWA3_TL_Tropen";
		_marksman 				= 	"BWA3_Marksman_Tropen";
		_sniper					=	"BWA3_Sniper_G29_Tropen";
		_spotter				=	"BWA3_Spotter_Tropen";
		_grenadier				=	"BWA3_Grenadier_Tropen";
		_autoRifleman			= 	"BWA3_MachineGunner_MG4_Tropen";
		_gunner					=	"BWA3_MachineGunner_MG3_Tropen";
		_medic					= 	"BWA3_Medic_Tropen";
		_repairSpecialist		=	"BWA3_Engineer_Tropen";
		_engineer				= 	"BWA3_Engineer_Tropen";
		_guidedLAT				=	"BWA3_RiflemanAT_PzF3_Tropen";
		_dumbLAT				=	"BWA3_RiflemanAT_RGW90_Tropen";
		_missileSpecialistAT	= 	"BWA3_RiflemanAT_PzF3_Tropen";
		_missileSpecialistAA	=	"BWA3_RiflemanAA_Fliegerfaust_Tropen";
		_ammoBearer				= 	"";
		_JTAC					= 	"BWA3_recon_Radioman_Tropen";
		_explosivesSpecialist	= 	"BWA3_Engineer_Tropen";
		_uavOperator			= 	"BWA3_recon_Tropen";
		_paratrooper			=	"BWA3_Rifleman_lite_Tropen";
		_heliPilot 				=	"BWA3_Helipilot";
		_heliCrew				=	"BWA3_Helipilot";
		_fighterPilot			=	"BWA3_Helipilot";
		_pilot					=	"BWA3_Helipilot";
		_vehicleCrew			=  	"BWA3_Crew_Tropen";
		_diver 					=	"B_diver_F";
		_diverTeamLeader		=	"B_diver_TL_F";
		_diverExplosives		=	"B_diver_exp_F";
		


	// Vehicles
	
		_atTurret				=	"RHS_TOW_TriPod_WD";
		_aaTurret				=	"RHS_Stinger_AA_pod_D";
		_mortar					=	"BWA3_MRS120_Tropen";
		_attackBoat 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "UK3CB_BAF_RHIB_HMG_DDPM_RM")): {"UK3CB_BAF_RHIB_HMG_DDPM_RM"};
			default {"B_Boat_Armed_01_minigun_F"};
			
		};	
		
		_quadBike 				=	"B_T_Quadbike_01_F";
		
		_smallCargoTruck 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_kat1_451_container_des")): {"gm_ge_army_kat1_451_container_des"};
			default {"rnt_lkw_5t_mil_gl_kat_i_transport_Tropen"};
			
		};	
		
		_fuelTruck 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_kat1_451_refuel_des")): {"gm_ge_army_kat1_451_refuel_des"};
			default {"rnt_lkw_5t_mil_gl_kat_i_fuel_Tropen"};
			
		};	
		
		_car 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_iltis_cargo_des")): {"gm_ge_army_iltis_cargo_des"};
			default {"KGB_B_MRAP_03_F"};
			
		};	
		
		_carHMG 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_iltis_mg3_des")): {"gm_ge_army_iltis_mg3_des"};
			default {"KGB_B_MRAP_03_hmg_F"};
			
		};	
		
		_carAT 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_iltis_milan_des")): {"gm_ge_army_iltis_milan_des"};
			default {"KGB_B_MRAP_03_gmg_F"};
			
		};	
		
		_Mrap					=	"BWA3_Eagle_FLW100_Tropen";
		_MrapHMG				=	"BWA3_Dingo2_FLW200_M2_CG13_Tropen";
		_MrapGMG				=	"BWA3_Dingo2_FLW200_GMW_CG13_Tropen";
		_cargoTruck				=	"gm_ge_army_kat1_451_container_des";
		
		_lightIFV 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_m113a1g_apc_des")): {"gm_ge_army_m113a1g_apc_des"};
			default {"Redd_Tank_Wiesel_1A4_MK20_Tropentarn"};
			
		};	
				
		_lightAA 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_m113a1g_apc_milan_des")): {"gm_ge_army_m113a1g_apc_milan_des"};
			default {"Redd_Tank_Wiesel_1A4_MK20_Tropentarn"};
			
		};	
				
		_tank					=	"BWA3_Leopard2_Tropen";
		
		_antiAirAPC 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_gepard1a1_des")): {"gm_ge_army_gepard1a1_des"};
			default {"Redd_Tank_Gepard_1A2_Tropentarn"};
			
		};	
				
		_artilleryAPC 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_m109g_des")): {"gm_ge_army_m109g_des"};
			default {"rhsusf_m109_usarmy"};
			
		};	
			
		_wheeledIFV 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_fuchsa0_reconnaissance_des")): {"gm_ge_army_fuchsa0_reconnaissance_des"};
			default {"rnt_sppz_2a2_luchs_Tropentarn"};
			
		};	
		
		_trackedAPC 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_marder1a2_des")): {"gm_ge_army_marder1a2_des"};
			default {"BWA3_Puma_Tropen"};
			
		};	
		
		_tankHunter 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_luchsa2_des")): {"gm_ge_army_luchsa2_des"};
			default {"Redd_Marder_1A5_Tropentarn"};
			
		};	
		
		_smallTrHeli 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_bo105p1m_vbh")): {"gm_ge_army_bo105p1m_vbh"};
			default {"bw_bo105_p1m"};
			
		};

		_mediumTrHeli 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "bw_nh90_armed")): {"bw_nh90_armed"};
			default {"NH_90_Fleck"};
			
		};		
		
		_largeTrHeli 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_ch53g")): {"gm_ge_army_ch53g"};
			default {"kyo_MH47E_Ramp"};
			
		};
		
		_cargoHeli 			= switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_ch53g")): {"gm_ge_army_ch53g"};
			default {"kyo_MH47E_Ramp"};
			
		};
		
		_smallAH 			= switch (true) do {
	
			case (isClass(configfile >> "CfgVehicles" >> "gm_ge_army_bo105p_pah1")): {"gm_ge_army_bo105p_pah1"};
			case (isClass(configfile >> "CfgVehicles" >> "bw_ec135_fz_raketen")): {"bw_ec135_fz_raketen"};
			default {"MH6_Littlebird_BW_Fleck"};
			
		};
		
		_largeAH				=	"BWA3_Tiger_RMK_Universal";


	// Planes
	
		_TrPlane = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "USAF_C130J")): {"USAF_C130J"};
			default {"RHS_C130J"};
			
		};	

		_CargoPlane = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "USAF_C130J_Cargo")): {"USAF_C130J_Cargo"};
			default {"RHS_C130J_Cargo"};
			
		};	
		
		_AttackCargoPlane = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "USAF_AC130U")): {"USAF_AC130U"};
			default {"RHS_C130J_Cargo"};
			
		};	

		_plane_L1 = switch (true) do {

			default {"RHSGREF_A29B_HIDF"};
		
		};	
				
				
		_plane_L2 = switch (true) do {
			
			default {"rhs_l159_cdf_b_CDF"};
			
		};	
				
				
		_plane_L3 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "EAWS_EF2000_Genericblu_CAP")): {"EAWS_EF2000_Genericblu_CAP"};
			case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A_STEALTH")): {"USAF_F35A_STEALTH"};
			default {"B_Plane_Fighter_01_Stealth_F"};
			
		};	


		_plane_L4 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "EAWS_EF2000_GER_CAP")): {"EAWS_EF2000_GER_CAP"};
			case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A_STEALTH")): {"USAF_F35A_STEALTH"};
			default {"B_Plane_Fighter_01_F"};
			
		};	

		_plane_L5 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "FIR_F35B_MFG2")): {"FIR_F35B_MFG2"};
			case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A")): {"USAF_F35A"};
			default {"rhsusf_f22"};
			
		};	

		_plane_L6 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "Tornado_AWS_camo_ger")): {"Tornado_AWS_camo_ger"};
			case (isClass(configfile >> "CfgVehicles" >> "USAF_A10")): {"USAF_A10"};
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
	























