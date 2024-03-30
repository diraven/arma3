
		
	// Units
	
		_rifleman				= 	"UK3CB_CW_US_B_LATE_SF_RIF_1";
		_officer 				=	"UK3CB_CW_US_B_LATE_OFF";
		_teamLeader 			= 	"UK3CB_CW_US_B_LATE_SF_TL";
		_marksman 				= 	"UK3CB_CW_US_B_LATE_SF_MK";
		_sniper					=	"UK3CB_CW_US_B_LATE_SF_SNI";
		_spotter				=	"UK3CB_CW_US_B_LATE_SF_SPOT";
		_grenadier				=	"UK3CB_CW_US_B_LATE_SF_GL";
		_autoRifleman			= 	"UK3CB_CW_US_B_LATE_SF_AR";
		_gunner					=	"UK3CB_CW_US_B_LATE_MG";
		_medic					= 	"UK3CB_CW_US_B_LATE_SF_MD";
		_repairSpecialist		=	"UK3CB_CW_US_B_LATE_ENG";
		_engineer				= 	"UK3CB_CW_US_B_LATE_SF_ENG";
		_guidedLAT				=	"UK3CB_CW_US_B_LATE_LAT";
		_dumbLAT				=	"UK3CB_CW_US_B_LATE_LAT";
		_missileSpecialistAT	= 	"UK3CB_CW_US_B_LATE_SF_AT";
		_missileSpecialistAA	=	"UK3CB_CW_US_B_LATE_SF_AA";
		_ammoBearer				= 	"UK3CB_CW_US_B_LATE_MG_ASST";
		_JTAC					= 	"UK3CB_CW_US_B_LATE_RADIO";
		_explosivesSpecialist	= 	"UK3CB_CW_US_B_LATE_DEM";
		_uavOperator			= 	"UK3CB_CW_US_B_LATE_RIF_2";
		_paratrooper			=	"UK3CB_CW_US_B_LATE_RIF_2";
		_heliPilot 				=	"UK3CB_CW_US_B_LATE_HELI_PILOT";
		_heliCrew				=	"UK3CB_CW_US_B_LATE_HELI_PILOT";
		_fighterPilot			=	"UK3CB_CW_US_B_LATE_JET_PILOT";
		_pilot					=	"UK3CB_CW_US_B_LATE_JET_PILOT";
		_vehicleCrew			=  	"UK3CB_CW_US_B_LATE_CREW";
		_diver 					=	"B_diver_F";
		_diverTeamLeader		=	"B_diver_TL_F";
		_diverExplosives		=	"B_diver_exp_F";


	// Vehicles
	
		_atTurret				=	"UK3CB_CW_US_B_LATE_TOW_TriPod";
		_aaTurret				=	"UK3CB_CW_US_B_LATE_Stinger_AA_pod";
		_mortar					=	"RHS_M252_D";
		_attackBoat				=	"rhsusf_mkvsoc";
		_quadBike 				=	"UK3CB_B_M1030_NATO";
		_smallCargoTruck		=	"UK3CB_CW_US_B_LATE_M939_Recovery";
		_fuelTruck				=	"UK3CB_CW_US_B_LATE_M939_Fuel";
		_car					=	"UK3CB_CW_US_B_LATE_M151_Jeep_Open";
		_carHMG					=	"UK3CB_CW_US_B_LATE_M151_Jeep_HMG";
		_carAT					=	"UK3CB_CW_US_B_LATE_M151_Jeep_TOW";
		_Mrap					=	"UK3CB_CW_US_B_LATE_M998_4DR";
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
		_largeAH				=	"RHS_AH1Z";
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

			case (isClass(configfile >> "CfgVehicles" >> "FIR_F18C_VFA15")): {"FIR_F18C_VFA15"};
			default {"B_Plane_Fighter_01_Stealth_F"};
			
		};	


		_plane_L4 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "FIR_F18C")): {"FIR_F18C"};
			default {"B_Plane_Fighter_01_F"};
			
		};	


		_plane_L5 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "FIR_F14A_Maverick")): {"FIR_F14A_Maverick"};
			default {"rhsusf_f22"};
			
		};	


		_plane_L6 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "FIR_A10C_MD")): {"FIR_A10C_MD"};
			case (isClass(configfile >> "CfgVehicles" >> "USAF_A10")): {"USAF_A10"};
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

