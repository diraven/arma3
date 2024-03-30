
	// Units
	
		_rifleman				=	"B_ACR_A3_Soldier_01";
		_officer 				=	"B_ACR_A3_Officer";
		_teamLeader 			= 	"B_ACR_A3_Soldier_TL";
		_marksman 				= 	"B_ACR_A3_Soldier_M";
		_sniper					=	"B_ACR_A3_Sniper";
		_spotter				=	"B_ACR_A3_Spotter";
		_grenadier				=	"B_ACR_A3_Soldier_GL";
		_autoRifleman			= 	"B_ACR_A3_Soldier_AR";
		_gunner					=	"B_ACR_A3_Soldier_AR";
		_medic					= 	"B_ACR_A3_Soldier_medic";
		_repairSpecialist		=	"B_ACR_A3_Soldier_repair";
		_engineer				= 	"B_ACR_A3_Soldier_repair";
		_guidedLAT				=	"B_ACR_A3_Recon_MAT";
		_dumbLAT				=	"B_ACR_A3_Recon_MAT";
		_missileSpecialistAT	= 	"B_ACR_A3_Soldier_MAT";
		_missileSpecialistAA	=	"B_ACR_A3_Soldier_AA";
		_ammoBearer				= 	"B_ACR_A3_Soldier_01";
		_JTAC					= 	"B_ACR_A3_Recon_JTAC";
		_explosivesSpecialist	= 	"B_ACR_A3_Recon_exp";
		_uavOperator			= 	"B_ACR_A3_Soldier_01";
		_paratrooper			=	"B_ACR_A3_Soldier_01";
		_heliPilot 				=	"B_ACR_A3_Pilot";
		_heliCrew				=	"B_ACR_A3_Pilot";
		_fighterPilot			=	"B_ACR_A3_Pilot";
		_pilot					=	"B_ACR_A3_Pilot";
		_vehicleCrew			=  	"B_ACR_A3_crew";
		_diver 					=	"B_ACR_A3_diver";
		_diverTeamLeader		=	"B_ACR_A3_diver_TL";
		_diverExplosives		=	"B_ACR_A3_diver_exp";
	
	// Vehicles
	
		_atTurret				=	"RHS_TOW_TriPod_D";
		_aaTurret				=	"RHS_Stinger_AA_pod_D";
		_mortar					=	"RHS_M119_D";
		_attackBoat				=	"rhsusf_mkvsoc";
		_quadBike 				=	"ACR_A3_UAZ_469_Open";
		_smallCargoTruck		=	"ACR_Kamaz02";
		_fuelTruck				=	"ACR_Kamaz04";
		_car					=	"acr_a3_HMMWV_Ambulance_ACR";
		_carHMG					=	"acr_a3_hmmwv_M1151_M2";
		_carAT					=	"acr_a3_hmmwv_M1114_AGS_ACR";
		_Mrap					=	"ACR_A3_BRDM2_HQ";
		_MrapHMG				=	"ACR_A3_BRDM2";
		_MrapGMG				=	"ACR_A3_BRDM2";
		_cargoTruck				=	"B_Truck_01_flatbed_F";
		_lightIFV				=	"ACR_A3_BRDM2";
		_lightAA				=	"ACR_A3_BRDM2";
		_tank					=	"acr_a3_t72m1_wdl";
		_antiAirAPC				=	"RHS_M6";
		_artilleryAPC			=	"rhsusf_m109d_usarmy";		
		_wheeledIFV 			= 	"ACR_Pandur";		
		_trackedAPC				=	"acr_a3_bmp2";
		
		_tankHunter	 = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "M1128_MGS_DG1_NOSLATDES")): {"M1128_MGS_DG1_NOSLATDES"};
			default {"rhsusf_stryker_m1134_d"};				
		};
		
		_smallTrHeli			=	"RHS_MELB_MH6M";
		_mediumTrHeli			=	"ACR_A3_Mi17_base_CZ_EP1";
		_largeTrHeli			=	"ACR_A3_Mi171Sh_medevac_CZ_EP1";
		_cargoHeli				=	"ACR_A3_Mi17_base_CZ_EP1_Des";
		_smallAH				=	"ACR_A3_Mi171Sh_rockets_CZ_EP1";
		_largeAH				=	"ACR_A3_Mi_24v";
		_TrPlane				=	"RHS_C130J";
		_CargoPlane				=	"RHS_C130J_Cargo";
		

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

		default {"RHSGREF_A29B_HIDF"};
		
		};	
				
				
		_plane_L2 = switch (true) do {

			default {"ACR_A3_L159_Alca_CAS"};
			
		};	
				
				
		_plane_L3 = switch (true) do {

			default {"ACR_A3_L159_Alca_AA"};
			
		};	


		_plane_L4 = switch (true) do {

			default {"ACR_A3_Gripen_Des"};
			
		};	


		_plane_L5 = switch (true) do {

			default {"ACR_A3_Gripen"};
			
		};	


		_plane_L6 = switch (true) do {

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
	























