
	// Units
		
		_rifleman				=	"TFC_C_Soldier_OTW_Rifleman_TW_F";
		_officer 				=	"TFC_C_Soldier_OTW_Officer_TW_F";
		_teamLeader 			= 	"TFC_C_Soldier_OTW_IC_TW_F";
		_marksman 				= 	"TFC_C_Soldier_OTW_Marksman_TW_F";
		_sniper					=	"TFC_C_Soldier_OTW_Marksman_TW_F";
		_spotter				=	"TFC_C_Soldier_OTW_Rifleman_Lite_TW_F";
		_grenadier				=	"TFC_C_Soldier_OTW_Grenadier_TW_F";
		_autoRifleman			= 	"TFC_C_Soldier_OTW_C9_TW_F";
		_gunner					=	"TFC_C_Soldier_OTW_C6_TW_F";
		_medic					= 	"TFC_C_Soldier_OTW_Medic_TW_F";
		_repairSpecialist		=	"TFC_C_Soldier_OTW_Engineer_TW_F";
		_engineer				= 	"TFC_C_Soldier_OTW_Engineer_TW_F";
		_guidedLAT				=	"TFC_C_Soldier_OTW_M72_TW_F";
		_dumbLAT				=	"TFC_C_Soldier_OTW_M72_TW_F";
		_missileSpecialistAT	= 	"TFC_C_Soldier_OTW_CarlG_TW_F";
		_missileSpecialistAA	=	"TFC_C_Soldier_Tunic_CarlG_TW_F";
		_ammoBearer				= 	"TFC_C_Soldier_OTW_Rifleman_TW_F";
		_JTAC					= 	"TFC_C_Soldier_Tunic_Rifleman_Lite_TW_F";
		_explosivesSpecialist	= 	"TFC_C_Soldier_OTW_Engineer_TW_F";
		_uavOperator			= 	"TFC_C_Soldier_OTW_Universal_TW_F";
		_paratrooper			=	"TFC_C_Soldier_OTW_Paratrooper_TW_F";
		_heliPilot 				=	"TFC_C_Soldier_Aircrew_Pilot_Helo_TW_F";
		_heliCrew				=	"TFC_C_Soldier_Aircrew_Pilot_Helo_TW_F";
		_fighterPilot			=	"TFC_C_Soldier_Aircrew_Pilot_Helo_TW_F";
		_pilot					=	"TFC_C_Soldier_Aircrew_Pilot_Helo_TW_F";
		_vehicleCrew			=  	"TFC_C_Soldier_OTW_Crewman_TW_F";
		_diver 					=	"B_diver_F";
		_diverTeamLeader		=	"B_diver_TL_F";
		_diverExplosives		=	"B_diver_exp_F";


	// Vehicles
	
		_atTurret				=	"RHS_TOW_TriPod_D";
		_aaTurret				=	"RHS_Stinger_AA_pod_D";
		_mortar					=	"RHS_M119_D";
		_attackBoat				=	"B_Boat_Armed_01_minigun_F";		
		_quadBike 				=	"rhsusf_mrzr4_d";
		_smallCargoTruck		=	"C_TFC_VS_LSVW_transport_covered_F";
		_fuelTruck				=	"C_Van_01_fuel_F";
		_car					=	"TFC_vs_luvw_F";
		_carHMG					=	"TFC_vs_luvw_armed_F";
		_carAT					=	"rhsusf_m1045_w";
		_Mrap					=	"rhsusf_m1151_usarmy_wd";
		_MrapHMG				=	"rhsusf_m1151_m2crows_usarmy_wd";
		_MrapGMG				=	"rhsusf_m1151_mk19crows_usarmy_wd";
		_cargoTruck				=	"B_T_Truck_01_flatbed_F";
		_lightIFV				=	"TFC_APC_Wheeled_TAPV_GMG_C6_F";
		_lightAA				=	"TFC_APC_Wheeled_TAPV_GMG_C6_F";
		_tank					=	"TFC_MBT_Leopard2A6M_F";
		_antiAirAPC				=	"RHS_M6_wd";
		_artilleryAPC			=	"rhsusf_m109_usarmy";

		_wheeledIFV = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "TFC_Wheeled_LAV6_ISC")): {"TFC_Wheeled_LAV6_ISC"};
			default {"rhsusf_stryker_m1126_mk19_d"};				
		};
		
		_trackedAPC				=	"RHS_M2A3_BUSKI_wd";
		
		_tankHunter	 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "rhsusf_stryker_m1134_wd")): {"rhsusf_stryker_m1134_wd"};
			default {"rhsusf_stryker_m1134_d"};				
		};
		
		_smallTrHeli			=	"TFC_CH146427_unarmed_F";
		_mediumTrHeli			=	"TFC_CH146402_unarmed_F";
		_largeTrHeli			=	"B_CH147F_F";
		_cargoHeli				=	"B_CH147F_F";
		_smallAH				=	"TFC_CH146444_dynamicLoadout_F";
		_largeAH				=	"RHS_AH64D";
		
	// Planes
	
		_TrPlane = "TFC_CC130_PAX";

		_CargoPlane = "TFC_CC130_cargo";
		
		_AttackCargoPlane = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "USAF_AC130U")): {"USAF_AC130U"};
			default {"RHS_C130J_Cargo"};
			
		};	

		_plane_L1 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6a_6")): {"bwi_a3_t6a_6"};
			default {"RHSGREF_A29B_HIDF"};
			
			};	
					
					
			_plane_L2 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_pc9a_nta_1")): {"bwi_a3_pc9a_nta_1"};
				default {"rhs_l159_cdf_b_CDF"};
				
			};	
					
					
			_plane_L3 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "FIR_F18C_Blank")): {"FIR_F18C_Blank"};
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F22")): {"USAF_F22"};
				default {"B_Plane_Fighter_01_Stealth_F"};
				
			};	


			_plane_L4 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "FIR_F18C_RCAF")): {"FIR_F18C_RCAF"};
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F22_EWP_AG")): {"USAF_F22_EWP_AG"};
				default {"B_Plane_Fighter_01_F"};
				
			};	


			_plane_L5 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "FIR_EA18G_Blank")): {"FIR_EA18G_Blank"};
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F22_Heavy")): {"USAF_F22_Heavy"};
				default {"rhsusf_f22"};
				
			};	


			_plane_L6 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "FIR_FA18F_Blank")): {"FIR_FA18F_Blank"};
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
	























