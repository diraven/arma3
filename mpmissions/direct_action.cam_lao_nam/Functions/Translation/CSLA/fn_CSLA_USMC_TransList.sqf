
	// Units
	
		_rifleman				= 	"US85_mcM16";
		_officer 				=	"US85_mcOfc";
		_teamLeader 			= 	"US85_mcSgt";
		_marksman 				= 	"US85_mcM21";
		_sniper					=	"US85_sfM21G";
		_spotter				=	"US85_sfSptG";
		_grenadier				=	"US85_mcM16GL";
		_autoRifleman			= 	"US85_mcM249";
		_gunner					=	"US85_mcM60";
		_medic					= 	"US85_mcCprs";
		_repairSpecialist		=	"US85_ptEng";
		_engineer				= 	"US85_ptEng";
		_guidedLAT				=	"US85_mcCG";
		_dumbLAT				=	"US85_mcSMAW";
		_missileSpecialistAT	= 	"US85_mcM47";
		_missileSpecialistAA	=	"US85_mcFIM92";
		_ammoBearer				= 	"UK3CB_CW_US_B_LATE_MG_ASST";
		_JTAC					= 	"US85_ptRTO";
		_explosivesSpecialist	= 	"US85_sfMPV";
		_uavOperator			= 	"UK3CB_CW_US_B_LATE_RIF_2";
		_paratrooper			=	"UK3CB_CW_US_B_LATE_RIF_2";
		_heliPilot 				=	"UK3CB_CW_US_B_LATE_HELI_PILOT";
		_heliCrew				=	"UK3CB_CW_US_B_LATE_HELI_PILOT";
		_fighterPilot			=	"UK3CB_CW_US_B_LATE_JET_PILOT";
		_pilot					=	"UK3CB_CW_US_B_LATE_JET_PILOT";
		_vehicleCrew			=  	"US85_mcDrv";
		_diver 					=	"B_diver_F";
		_diverTeamLeader		=	"B_diver_TL_F";
		_diverExplosives		=	"B_diver_exp_F";


	// Vehicles
	
		_atTurret				=	"UK3CB_CW_US_B_LATE_TOW_TriPod";
		_aaTurret				=	"UK3CB_CW_US_B_LATE_Stinger_AA_pod";
		_mortar					=	"UK3CB_CW_US_B_LATE_M252";
		_attackBoat				=	"B_Boat_Armed_01_minigun_F";
		_quadBike 				=	"UK3CB_B_M1030_NATO";
		_smallCargoTruck		=	"UK3CB_CW_US_B_LATE_M939_Recovery";
		_fuelTruck				=	"UK3CB_CW_US_B_LATE_M939_Fuel";
		_car					=	"UK3CB_CW_US_B_LATE_M151_Jeep_Open";
		_carHMG					=	"UK3CB_CW_US_B_LATE_M151_Jeep_HMG";
		_carAT					=	"UK3CB_CW_US_B_LATE_M151_Jeep_TOW";
		_Mrap					=	"UK3CB_CW_US_B_LATE_M1025_Unarmed";
		_MrapHMG				=	"UK3CB_CW_US_B_LATE_M1025_M2";
		_MrapGMG				=	"UK3CB_CW_US_B_LATE_M1025_MK19";
		_cargoTruck				=	"B_T_Truck_01_flatbed_F";
		_lightIFV				=	"UK3CB_CW_US_B_LATE_M113_M2";
		
		_lightAA				= switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "US85_M163")): {"US85_M163"};
				default {"rhsusf_m113_usarmy_MK19_90"};
				
			};
			
		_tank					=	"UK3CB_CW_US_B_LATE_M60a3";
		_antiAirAPC				=	"RHS_M6_wd";
		_artilleryAPC			=	"UK3CB_CW_US_B_LATE_M1A1";
		_wheeledIFV				=	"UK3CB_CW_US_B_LATE_LAV25";
		_trackedAPC				=	"UK3CB_CW_US_B_LATE_M2A2";
		_tankHunter				=	"UK3CB_CW_US_B_LATE_AAV";
		_smallTrHeli			=	"RHS_MELB_MH6M";
		_mediumTrHeli			=	"UK3CB_CW_US_B_LATE_UH60M2";
		_largeTrHeli			=	"rhsusf_CH53E_USMC";
		_cargoHeli				=	"rhsusf_CH53e_USMC_cargo";
		_smallAH				=	"RHS_MELB_AH6M";
		_largeAH				=	"UK3CB_CW_US_B_LATE_AH1Z_GS";
		_TrPlane				=	"UK3CB_CW_US_B_LATE_C130J";
		_CargoPlane				=	"UK3CB_CW_US_B_LATE_C130J_CARGO";
		
		_AttackCargoPlane = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "USAF_AC130U")): {"USAF_AC130U"};
			default {"RHS_C130J_Cargo"};
			
		};	

		_plane_L1 = switch (true) do {

		case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6a")): {"bwi_a3_t6a"};
		default {"RHSGREF_A29B_HIDF"};
		
		};	
				
				
		_plane_L2 = switch (true) do {
			
			case (isClass(configfile >> "CfgVehicles" >> "vn_b_air_f4b_navy_mr")): {"vn_b_air_f4b_navy_mr"};
			case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_at6b")): {"bwi_a3_at6b"};
			default {"rhs_l159_cdf_b_CDF"};
			
		};	
				
				
		_plane_L3 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "FIR_AV8B_VMA223")): {"FIR_AV8B_VMA223"};
			default {"B_Plane_Fighter_01_Stealth_F"};
			
		};	


		_plane_L4 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "FIR_F18C_MALS11")): {"FIR_F18C_MALS11"};
			default {"B_Plane_Fighter_01_F"};
			
		};	


		_plane_L5 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "FIR_F18C_VMFA314")): {"FIR_F18C_VMFA314"};
			default {"rhsusf_f22"};
			
		};	


		_plane_L6 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "FIR_F18D_VMFAAW224_02")): {"FIR_F18D_VMFAAW224_02"};
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






















