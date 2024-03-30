
	// Units
	
		_rifleman				=	"rhsusf_infantry_socom_armysf_rifleman";
		_officer 				=	"rhsusf_socom_marsoc_elementleader";
		_teamLeader 			= 	"rhsusf_socom_marsoc_teamleader";
		_marksman 				= 	"rhsusf_socom_marsoc_marksman";
		_sniper					=	"rhsusf_socom_marsoc_sniper";
		_spotter				=	"rhsusf_socom_marsoc_spotter";
		_grenadier				=	"rhsusf_socom_marsoc_cso_grenadier";
		_autoRifleman			= 	"rhsusf_army_ocp_arb_autorifleman";
		_gunner					=	"rhsusf_army_ocp_arb_machinegunner";
		_medic					= 	"rhsusf_socom_marsoc_sarc";
		_repairSpecialist		=	"rhsusf_socom_marsoc_cso_mechanic";
		_engineer				= 	"rhsusf_socom_marsoc_cso_mechanic";
		_guidedLAT				=	"rhsusf_army_ocp_arb_riflemanat";
		_dumbLAT				=	"rhsusf_army_ocp_arb_riflemanat";
		_missileSpecialistAT	= 	"rhsusf_army_ocp_javelin";
		_missileSpecialistAA	=	"rhsusf_socom_marsoc_cso_grenadier";
		_ammoBearer				= 	"rhsusf_army_ocp_arb_autoriflemana";
		_JTAC					= 	"rhsusf_socom_marsoc_jtac";
		_explosivesSpecialist	= 	"rhsusf_socom_marsoc_cso_eod";
		_uavOperator			= 	"rhsusf_socom_marsoc_cso";
		_paratrooper			=	"rhsusf_socom_marsoc_cso";
		_heliPilot 				=	"rhsusf_army_ocp_helipilot";
		_heliCrew				=	"rhsusf_army_ocp_helicrew";
		_fighterPilot			=	"rhsusf_airforce_jetpilot";
		_pilot					=	"rhsusf_airforce_pilot";
		_vehicleCrew			=  	"rhsusf_army_ocp_combatcrewman";
		_diver 					=	"B_T_Diver_F";
		_diverTeamLeader		=	"B_T_Diver_TL_F";
		_diverExplosives		=	"B_T_Diver_Exp_F";
		_TrPlane				=	"RHS_C130J";
		_CargoPlane				=	"RHS_C130J_Cargo";


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
		
			if (isClass(configfile >> "CfgVehicles" >> "Dagor_Olive")) then {
				
				_car pushBackUnique "Dagor_Olive";
				
			};
		
		_carHMG					=	[
		
			"rhsusf_m1025_w_m2"
		
		];
		
			if (isClass(configfile >> "CfgVehicles" >> "Dagor_Armed_Olive")) then {
				
				_carHMG pushBackUnique "Dagor_Armed_Olive";
				
			};
		
		_carAT					=	[
			
			"rhsusf_m1045_w",
			"rhsusf_m1025_w_mk19"
			
		];
		
			if (isClass(configfile >> "CfgVehicles" >> "Dagor_AT_Olive")) then {
				
				_carAT pushBackUnique "Dagor_AT_Olive";
				
			};
			
			
		_Mrap					=	[
			
			"rhsusf_m1240a1_usarmy_wd",
			"rhsusf_m1151_usarmy_wd",	
			"rhsusf_M1238A1_socom_wd"
		
		];	
		
		_MrapHMG				=	[
		
			"rhsusf_m1240a1_m2crows_usarmy_wd",
			"rhsusf_m1151_m2crows_usarmy_wd",
			"rhsusf_M1238A1_M2_socom_wd"
		
		];
		
		
		_MrapGMG				=	[
			
			"rhsusf_m1240a1_mk19crows_usarmy_wd",
			"rhsusf_m1151_mk19crows_usarmy_wd",			
			"rhsusf_M1238A1_Mk19_socom_wd"
		
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
		
		_tank					=	"rhsusf_m1a1aim_tuski_wd";
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
		_mediumTrHeli			=	"RHS_UH60M";		
		_largeTrHeli 			= 	"RHS_CH_47F_10";		
		_cargoHeli 				= 	"RHS_CH_47F_10_cargo";					
		_smallAH				=	"RHS_MELB_AH6M";
		
		_largeAH = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "fza_ah64d_b2e")): {"fza_ah64d_b2e"};
			default {"RHS_AH64D"};	
		};
		

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
			case (isClass(configfile >> "CfgVehicles" >> "FIR_F15SE_LN")): {"FIR_F15SE_LN"};
			case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A_STEALTH")): {"USAF_F35A_STEALTH"};
			default {"B_Plane_Fighter_01_Stealth_F"};				
		};	


		_plane_L4 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "FIR_F23A_HO")): {"FIR_F23A_HO"};
			case (isClass(configfile >> "CfgVehicles" >> "F_35C")): {"F_35C"};
			case (isClass(configfile >> "CfgVehicles" >> "FIR_F35B_Standard")): {"FIR_F35B_Standard"};
			case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A_STEALTH")): {"USAF_F35A_STEALTH"};
			default {"B_Plane_Fighter_01_F"};				
		};	


		_plane_L5 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "FIR_F22")): {"FIR_F22"};
			case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A")): {"USAF_F35A"};
			default {"rhsusf_f22"};				
		};	


		_plane_L6 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "FIR_FA18F_VFA106")): {"FIR_FA18F_VFA106"};
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























