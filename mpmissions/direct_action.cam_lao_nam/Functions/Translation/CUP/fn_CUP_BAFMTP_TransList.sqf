
	// Units
	
		_rifleman				=	"CUP_B_BAF_Soldier_Rifleman_MTP";
		_officer 				=	"CUP_B_BAF_Soldier_Officer_MTP";
		_teamLeader 			= 	"CUP_B_BAF_Soldier_TeamLeader_MTP";
		_marksman 				= 	"CUP_B_BAF_Soldier_Marksman_MTP";
		_sniper					=	"CUP_B_BAF_Sniper_AS50_MTP";
		_spotter				=	"CUP_B_BAF_Spotter_MTP";
		_grenadier				=	"CUP_B_BAF_Soldier_Grenadier_MTP";
		_autoRifleman			= 	"CUP_B_BAF_Soldier_AutoRifleman_MTP";
		_gunner					=	"CUP_B_BAF_Soldier_HeavyGunner_MTP";
		_medic					= 	"CUP_B_BAF_Soldier_Medic_MTP";
		_repairSpecialist		=	"CUP_B_BAF_Soldier_Repair_MTP";
		_engineer				= 	"CUP_B_BAF_Soldier_Engineer_MTP";
		_guidedLAT				=	"CUP_B_BAF_Soldier_RiflemanAT_MTP";
		_dumbLAT				=	"CUP_B_BAF_Soldier_RiflemanLAT_MTP";
		_missileSpecialistAT	= 	"CUP_B_BAF_Soldier_AT_MTP";
		_missileSpecialistAA	=	"CUP_B_BAF_Soldier_AA_MTP";
		_ammoBearer				= 	"CUP_B_BAF_Soldier_AmmoBearer_MTP";
		_JTAC					= 	"CUP_B_BAF_Spotter_MTP";
		_explosivesSpecialist	= 	"CUP_B_BAF_Soldier_Explosive_MTP";
		_uavOperator			= 	"CUP_B_BAF_Soldier_Rifleman_MTP";
		_paratrooper			=	"CUP_B_BAF_Soldier_Paratrooper_MTP";
		_heliPilot 				=	"CUP_B_BAF_Soldier_Helipilot_MTP";
		_heliCrew				=	"CUP_B_BAF_Soldier_Helicrew_MTP";
		_fighterPilot			=	"CUP_B_BAF_Soldier_FighterPilot_MTP";
		_pilot					=	"CUP_B_BAF_Soldier_Pilot_MTP";
		_vehicleCrew			=  	"CUP_B_BAF_Soldier_Crew_MTP";
		_diver 					=	"CUP_B_BAF_Soldier_Diver_MTP";
		_diverTeamLeader		=	"CUP_B_BAF_Soldier_Diver_MTP";
		_diverExplosives		=	"CUP_B_BAF_Soldier_Diver_MTP";
		
	
	// Vehicles
	
		_atTurret				=	"CUP_B_TOW2_TriPod_US";
		_aaTurret				=	"CUP_B_CUP_Stinger_AA_pod_US";
		_mortar					=	"CUP_B_L16A2_BAF_WDL";
		_AttackCargoPlane		=	"B_T_VTOL_01_armed_F";
		_attackBoat				=	"B_Boat_Armed_01_minigun_F";
		_quadBike 				=	"CUP_B_M1030_USA";
		_smallCargoTruck		=	"CUP_B_MTVR_Ammo_USA";
		_fuelTruck				=	"CUP_B_MTVR_Refuel_USA";
		_car					=	"CUP_B_LR_Transport_GB_W";
		_carHMG					=	"CUP_B_LR_MG_GB_W";
		_carAT					=	"CUP_B_LR_Special_GMG_GB_W";
		_Mrap					=	"CUP_B_Jackal2_L2A1_GB_W";
		_MrapHMG				=	"CUP_B_Ridgback_HMG_GB_W";
		_MrapGMG				=	"CUP_B_Ridgback_GMG_GB_W";
		_cargoTruck				=	"B_T_Truck_01_flatbed_F";
		_lightIFV				=	"CUP_B_FV432_GB_GPMG";
		_lightAA				=	"CUP_B_FV432_GB_GPMG";
		_tank					=	"CUP_B_Challenger2_2CW_BAF";
		_antiAirAPC				=	"CUP_B_M6LineBacker_USA_D";
		_artilleryAPC			=	"CUP_B_FV432_Mortar";
		_wheeledIFV				=	"CUP_B_FV432_Bulldog_GB_W_RWS";
		_trackedAPC				=	"CUP_B_FV510_GB_W_SLAT";
		_tankHunter				=	"CUP_B_M1128_MGS_Desert";
		_smallTrHeli			=	"CUP_B_AW159_Unarmed_GB";
		_mediumTrHeli			=	"CUP_B_Merlin_HC3A_Armed_GB";
		_largeTrHeli			=	"CUP_B_CH47F_GB";
		_cargoHeli				=	"CUP_B_CH47F_VIV_GB";
		_smallAH				=	"CUP_B_AW159_GB";
		_largeAH				=	"CUP_B_AH1_DL_BAF";
		_TrPlane				=	"CUP_B_C130J_GB";
		_CargoPlane				=	"CUP_B_C130J_Cargo_GB";
		
			_plane_L1 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6c_raf_nta_1")): {"bwi_a3_t6c_raf_nta_1"};
				case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6a_nta_2")): {"bwi_a3_t6a_nta_2"};
				default {"C_Plane_Civil_01_racing_F"};
				
			};	
					
					
			_plane_L2 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_at6b_raf_1")): {"bwi_a3_at6b_raf_1"};
				case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6a_nta_2")): {"bwi_a3_t6a_nta_2"};
				default {"I_Plane_Fighter_03_dynamicLoadout_F"};
				
			};
			
			_plane_L3 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "FIR_AV8B_GR7A_Lucy")): {"FIR_AV8B_GR7A_Lucy"};
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A_LIGHT")): {"USAF_F35A_LIGHT"};
				default {"CUP_B_GR9_DYN_GB"};
				
			};	


			_plane_L4 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "EAWS_EF2000_rafhist_CAP")): {"EAWS_EF2000_rafhist_CAP"};
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A")): {"USAF_F35A"};
				default {"CUP_B_F35B_Stealth_BAF"};
				
			};	


			_plane_L5 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "FIR_F35B_RAF01")): {"FIR_F35B_RAF01"};
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F22_Heavy")): {"USAF_F22_Heavy"};
				default {"CUP_B_F35B_BAF"};
				
			};	


			_plane_L6 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "Tornado_AWS_camo_uk")): {"Tornado_AWS_camo_uk"};
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






















