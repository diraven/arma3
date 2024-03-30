	
	// Units
	
		_rifleman				=	"UK3CB_BAF_Rifleman_DPMW";
		_officer 				=	"UK3CB_BAF_Officer_DPMW";
		_teamLeader 			= 	"UK3CB_BAF_SC_DPMW";
		_marksman 				= 	"UK3CB_BAF_Marksman_DPMW";
		_sniper					=	"UK3CB_BAF_Sniper_DPMW_Ghillie_L115";
		_spotter				=	"UK3CB_BAF_Spotter_DPMW_Ghillie_L129";
		_grenadier				=	"UK3CB_BAF_Grenadier_DPMW";
		_autoRifleman			= 	"UK3CB_BAF_LSW_DPMW";
		_gunner					=	"UK3CB_BAF_MGGPMG_DPMW";
		_medic					= 	"UK3CB_BAF_Medic_DPMW";
		_repairSpecialist		=	"UK3CB_BAF_Repair_DPMW";
		_engineer				= 	"UK3CB_BAF_Engineer_DPMW";
		_guidedLAT				=	"UK3CB_BAF_LAT_DPMW";
		_dumbLAT				=	"UK3CB_BAF_LAT_ILAW_DPMW";
		_missileSpecialistAT	= 	"UK3CB_BAF_MAT_DPMW";
		_missileSpecialistAA	=	"UK3CB_BAF_MAT_DPMW";
		_ammoBearer				= 	"UK3CB_BAF_Rifleman_762_DPMW";
		_JTAC					= 	"UK3CB_BAF_FAC_DPMW";
		_explosivesSpecialist	= 	"UK3CB_BAF_Explosive_DPMW";
		_uavOperator			= 	"UK3CB_BAF_UAV_DPMW_RM";
		_paratrooper			=	"UK3CB_BAF_Rifleman_DPMW";
		_heliPilot 				=	"UK3CB_BAF_HeliPilot_Army_MTP";
		_heliCrew				=	"UK3CB_BAF_HeliPilot_Army_MTP";
		_fighterPilot			=	"UK3CB_BAF_HeliPilot_Army_MTP";
		_pilot					=	"UK3CB_BAF_HeliPilot_Army_MTP";
		_vehicleCrew			=  	"UK3CB_BAF_Crewman_DPMW";
		_diver 					=	"B_diver_F";
		_diverTeamLeader		=	"B_diver_TL_F";
		_diverExplosives		=	"B_diver_exp_F";
	
	
	// Vehicles
	
		_atTurret				=	"RHS_TOW_TriPod_D";
		_aaTurret				=	"RHS_Stinger_AA_pod_D";
		_mortar					=	"RHS_M252_D";
		_attackBoat				=	"UK3CB_BAF_RHIB_HMG";
		_quadBike 				=	"UK3CB_B_M1030_NATO";
		_smallCargoTruck		=	"UK3CB_BAF_MAN_HX60_Transport_Sand_MTP";
		_fuelTruck				=	"UK3CB_BAF_MAN_HX60_Fuel_Sand_MTP";
		_car					=	"UK3CB_BAF_LandRover_Snatch_FFR_Sand_A_MTP";
		_carHMG					=	"UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Sand_A_MTP";
		_carAT					=	"UK3CB_BAF_LandRover_WMIK_Milan_FFR_Sand_A_MTP";
		_Mrap					=	"UK3CB_BAF_LandRover_Snatch_FFR_Sand_A_MTP";
		_MrapHMG				=	"UK3CB_BAF_LandRover_WMIK_HMG_FFR_Sand_A_MTP";
		_MrapGMG				=	"UK3CB_BAF_LandRover_WMIK_GMG_FFR_Sand_A_MTP";
		_cargoTruck				=	"UK3CB_BAF_MAN_HX58_Cargo_Sand_A_DDPM";
		_lightIFV				=	"rhsusf_m113d_usarmy";
		_lightAA				=	"rhsusf_m113d_usarmy_MK19";
		
		_tank	 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "Burnes_FV4034_02")): {"Burnes_FV4034_02"};
			default {"rhsusf_m1a1fep_d"};				
		};
		
		_antiAirAPC				=	"RHS_M6";
		_artilleryAPC			=	"rhsusf_m109d_usarmy";
		_wheeledIFV				=	"UK3CB_BAF_FV432_Mk3_GPMG_Sand_MTP_RM";
		_trackedAPC				=	"UK3CB_BAF_Warrior_A3_D_MTP";
		_tankHunter				=	"UK3CB_BAF_FV432_Mk3_RWS_Sand_MTP";
		_smallTrHeli			=	"RHS_MELB_MH6M";
		_mediumTrHeli			=	"UK3CB_BAF_Wildcat_AH1_TRN_8A_DDPM";
		_largeTrHeli			=	"UK3CB_BAF_Merlin_HC3_18_GPMG_DDPM";
		_cargoHeli				=	"UK3CB_BAF_Merlin_HC3_Cargo_DDPM";
		_smallAH				=	"UK3CB_BAF_Wildcat_AH1_CAS_8D_DDPM";
		_largeAH				=	"UK3CB_BAF_Apache_AH1_MTP";
		
		// Planes
		
			_TrPlane = "UK3CB_BAF_Hercules_C4";

			_CargoPlane = "UK3CB_BAF_Hercules_C4";

			_AttackCargoPlane = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "USAF_AC130U")): {"USAF_AC130U"};
				default {"RHS_C130J_Cargo"};
				
			};	
		
			_plane_L1 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6c_raf_nta_1")): {"bwi_a3_t6c_raf_nta_1"};
				case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6a_nta_2")): {"bwi_a3_t6a_nta_2"};
				default {"RHSGREF_A29B_HIDF"};
				
			};	
					
					
			_plane_L2 = switch (true) do {
				
				case (isClass(configfile >> "CfgVehicles" >> "dcxx_uk_navy_fg1_unfolded")): {"dcxx_uk_navy_fg1_unfolded"};
				case (isClass(configfile >> "CfgVehicles" >> "FIR_AV8B_GR9A_Blank")): {"FIR_AV8B_GR9A_Blank"};
				default {"rhs_l159_cdf_b_CDF"};
				
			};	
					
					
			_plane_L3 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "FIR_AV8B_GR7A_Lucy")): {"FIR_AV8B_GR7A_Lucy"};
				default {"B_Plane_Fighter_01_Stealth_F"};
				
			};	


			_plane_L4 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "Tornado_AWS_UK_617")): {"Tornado_AWS_UK_617"};
				default {"B_Plane_Fighter_01_F"};
				
			};	


			_plane_L5 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "Tornado_AWS_ecr_blu")): {"Tornado_AWS_ecr_blu"};
				default {"rhsusf_f22"};
				
			};	


			_plane_L6 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "Tornado_AWS_camo_uk")): {"Tornado_AWS_camo_uk"};
				default {"RHS_A10"};
				
			};
			
		_smallBoat				=	"B_Boat_Transport_01_F";
		_sub					=	"B_SDV_01_F";
		
	
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
	























