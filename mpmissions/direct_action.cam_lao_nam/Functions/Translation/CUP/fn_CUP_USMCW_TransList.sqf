
	// Units
	
		_rifleman				=	"CUP_B_USMC_Soldier";
		_officer 				=	"CUP_B_USMC_Officer";
		_teamLeader 			= 	"CUP_B_USMC_Soldier_TL";
		_marksman 				= 	"CUP_B_USMC_Soldier_Marksman";
		_sniper					=	"CUP_B_USMC_Sniper_M40A3";
		_spotter				=	"CUP_B_USMC_Spotter";
		_grenadier				=	"CUP_B_USMC_Soldier_GL";
		_autoRifleman			= 	"CUP_B_USMC_Soldier_AR";
		_gunner					=	"CUP_B_USMC_Soldier_MG";
		_medic					= 	"CUP_B_USMC_Medic";
		_repairSpecialist		=	"CUP_B_USMC_Engineer";
		_engineer				= 	"CUP_B_USMC_Engineer";
		_guidedLAT				=	"CUP_B_USMC_Soldier_AT";
		_dumbLAT				=	"CUP_B_USMC_Soldier_LAT";
		_missileSpecialistAT	= 	"CUP_B_USMC_Soldier_HAT";
		_missileSpecialistAA	=	"CUP_B_USMC_Soldier_AA";
		_ammoBearer				= 	"CUP_B_US_Soldier_AAR_OCP";
		_JTAC					= 	"CUP_B_USMC_Soldier_RTO_FROG_DES";
		_explosivesSpecialist	= 	"CUP_B_USMC_Engineer";
		_uavOperator			= 	"CUP_B_USMC_Soldier_UAV";
		_paratrooper			=	"CUP_B_USMC_Soldier";
		_heliPilot 				=	"CUP_B_USMC_Pilot";
		_heliCrew				=	"CUP_B_USMC_Pilot";
		_fighterPilot			=	"CUP_B_USMC_Pilot";
		_pilot					=	"CUP_B_USMC_Pilot";
		_vehicleCrew			=  	"CUP_B_USMC_Crew";
		_diver 					=	"B_diver_F";
		_diverTeamLeader		=	"B_diver_TL_F";
		_diverExplosives		=	"B_diver_exp_F";
	
	
	// Vehicles
	
		_atTurret				=	"CUP_B_TOW2_TriPod_US";
		_aaTurret				=	"CUP_B_CUP_Stinger_AA_pod_US";
		_mortar					=	"CUP_B_M252_US";
		_AttackCargoPlane		=	"B_T_VTOL_01_armed_F";
		_attackBoat				=	"CUP_B_RHIB_USMC";
		_quadBike 				=	"CUP_B_M1030_USA";
		_smallCargoTruck		=	"CUP_B_MTVR_Ammo_USMC";
		_fuelTruck				=	"CUP_B_MTVR_Refuel_USMC";
		_car					=	"CUP_B_HMMWV_Unarmed_USMC";
		_carHMG					=	"CUP_B_HMMWV_M2_USMC";
		_carAT					=	"CUP_B_HMMWV_TOW_USMC";
		_Mrap					=	"CUP_B_M1151_WDL_USA";
		_MrapHMG				=	"CUP_B_RG31E_M2_OD_USMC";
		_MrapGMG				=	"CUP_B_RG31_Mk19_OD_USMC";
		_cargoTruck				=	"B_T_Truck_01_flatbed_F";
		_lightIFV				=	"CUP_B_M113_USA";
		_lightAA				=	"CUP_B_M113_USA";
		_tank					=	"CUP_B_M1A2_TUSK_MG_US_Army";
		_antiAirAPC				=	"CUP_B_M6LineBacker_USA_W";
		_artilleryAPC			=	"CUP_B_M1129_MC_MK19_Woodland";
		_wheeledIFV				=	"CUP_B_LAV25M240_green";
		_trackedAPC				=	"CUP_B_M2A3Bradley_USA_W";
		_tankHunter				=	"CUP_B_M1128_MGS_Woodland";
		_smallTrHeli			=	"CUP_B_UH1Y_UNA_USMC";
		_mediumTrHeli			=	"CUP_B_MH60S_USMC";
		_largeTrHeli			=	"CUP_B_CH53E_USMC";
		_cargoHeli				=	"CUP_B_CH53E_VIV_USMC";
		_smallAH				=	"CUP_B_UH1Y_Gunship_Dynamic_USMC";
		_largeAH				=	"CUP_B_AH1Z_Dynamic_USMC";
		_TrPlane				=	"CUP_B_C130J_USMC";
		_CargoPlane				=	"CUP_B_C130J_Cargo_USMC";

		_plane_L1 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6a_2")): {"bwi_a3_t6a_2"};
			default {"C_Plane_Civil_01_racing_F"};	
		};	
				
				
		_plane_L2 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6a_11")): {"bwi_a3_t6a_11"};
			default {"I_Plane_Fighter_03_dynamicLoadout_F"};				
		};	
				
				
		_plane_L3 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "JS_JC_FA18E")): {"JS_JC_FA18E"};
			case (isClass(configfile >> "CfgVehicles" >> "FIR_FA18E")): {"FIR_FA18E"};
			case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A_LIGHT")): {"USAF_F35A_LIGHT"};
			default {"CUP_B_AV8B_DYN_USMC"};				
		};	


		_plane_L4 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "F_35C")): {"F_35C"};
			case (isClass(configfile >> "CfgVehicles" >> "FIR_F35B_Standard")): {"FIR_F35B_Standard"};
			case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A")): {"USAF_F35A"};
			default {"CUP_B_F35B_Stealth_USMC"};				
		};	


		_plane_L5 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "FIR_EA18G_Blank")): {"FIR_EA18G_Blank"};
			case (isClass(configfile >> "CfgVehicles" >> "JS_JC_FA18F")): {"JS_JC_FA18F"};
			
			default {"CUP_B_F35B_USMC"};				
		};	


		_plane_L6 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "FIR_FA18F_VFA106")): {"FIR_FA18F_VFA106"};
			case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A")): {"USAF_F35A"};
			case (isClass(configfile >> "CfgVehicles" >> "USAF_A10")): {"USAF_A10"};
			default {"CUP_B_A10_DYN_USA"};				
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






















