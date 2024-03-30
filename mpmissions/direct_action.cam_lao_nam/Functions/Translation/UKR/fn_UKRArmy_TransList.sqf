
	// Units
	
		_rifleman				=	"b_afougf_rifleman_ak74";
		_officer 				=	"b_afougf_yt_teamleader_gp25";
		_teamLeader 			= 	"b_afougf_teamleader_gp25";
		_marksman 				= 	"b_sso_sniper_z10";
		_sniper					=	"b_sso_sniper_z10";
		_spotter				=	"";
		_grenadier				=	"b_afougf_rifleman_gp25";
		_autoRifleman			= 	"b_afougf_mg_pkm";
		_gunner					=	"b_afougf_mg_pkm";
		_medic					= 	"b_afougf_medic";
		_repairSpecialist		=	"b_afougf_sapper";
		_engineer				= 	"b_afougf_sapper";
		_guidedLAT				=	"b_afougf_pt_nlaw";
		_dumbLAT				=	"b_afougf_pt_rpg7";
		_missileSpecialistAT	= 	"b_afougf_pt_fgm148";
		_missileSpecialistAA	=	"b_afougf_aa_stinger_specialist";
		_ammoBearer				= 	"b_afougf_mg_ast";
		_JTAC					= 	"b_afougf_dep_teamleader_gp25";
		_explosivesSpecialist	= 	"b_afougf_sapper";
		_uavOperator			= 	"b_afougf_rifleman_sso_sard_ak74";
		_paratrooper			=	"";
		_heliPilot 				=	"b_afougf_pilot_F";
		_heliCrew				=	"b_afougf_pilot_F";
		_fighterPilot			=	"b_afougf_pilot_F";
		_pilot					=	"b_afougf_pilot_F";
		_vehicleCrew			=  	"b_afougf_tankist_F";
		_diver 					=	"b_afougf_rifleman_sso_diver_ak74";
		_diverTeamLeader		=	"b_afougf_rifleman_sso_diver_ak74";
		_diverExplosives		=	"b_afougf_rifleman_sso_diver_ak74";


	// Vehicles
	
		_atTurret				=	"RHS_TOW_TriPod_D";
		_aaTurret				=	"RHS_Stinger_AA_pod_D";
		_mortar					=	"b_afougf_2b14_82mm";
		_attackBoat 			= 	"rhsusf_mkvsoc";
		
		_quadBike 				=	[
		
			"rhsusf_mrzr4_d", 
			"B_Quadbike_01_F"
		
		];
		
		_smallCargoTruck		=	[
			
			"b_afougf_gaz66_flat"	
			
		];
		
		_fuelTruck				=	[

			"b_afougf_gaz66_ammo"
			
		];
		
		_car					=	[
		
			"b_afougf_UAZ_Base",
			"b_afougf_UAZ_open_Base"
					
		];		
		
		_carHMG					=	[
		
			"b_afougf_UAZ_DShKM_Base"
		
		];
		
		_carAT					=	[
			
			"b_afougf_UAZ_SPG9_Base",
			"b_afougf_UAZ_AGS30_Base"
			
		];		

		_Mrap					=	[
			
			"b_afougf_BRDM2_UM",
			"b_afougf_m1151_base"
			
		];	
		
		_MrapHMG				=	[
			
			"b_afougf_BRDM2_HQ",
			"b_afougf_m1151_mk19_base"
		
		];
		
		
		_MrapGMG				=	[
			
			"b_afougf_BRDM2_ATGM"
		
		];

		_cargoTruck				=	[
		
			"b_afougf_Ural_Open_Flat",
			"b_afougf_Ural_Base",
			"b_afougf_Ural_Flat",		
			"b_afougf_Ural_fuel",
			"b_afougf_Ural_open",
			"b_afougf_Ural_repair"
		
		];
		
		_lightIFV				=	[

			"b_afougf_BRDM2"
		
		];
		
		_lightAA				=	[
			
			"b_afougf_gaz66_zu23"
		
		];
		
		_tank					=	"b_afougf_t72ba";
		_antiAirAPC				=	"b_afougf_zsu234_aa";
		_artilleryAPC			=	["b_afougf_2s3"];		
		_wheeledIFV 			=	"b_afougf_btr80_common"; 		
		_trackedAPC				=	"b_afougf_bmp2d";		
		_tankHunter	 			= 	"b_afougf_brm1k_Base";		
		_smallTrHeli			=	"b_afougf_Mi8MTV3_Cargo";
		_mediumTrHeli			=	"b_afougf_Mi8MTV3_Cargo";
		_largeTrHeli			=	"b_afougf_Mi8MTV3_Cargo";
		_cargoHeli				=	"b_afougf_Mi8MTV3_Cargo";
		_smallAH				=	"b_afougf_Mi8MTV3_UPK23";

		_largeAH = switch (true) do {
		
			default {"b_afougf_Mi24V_FAB"};	
		};
		
		
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

		default {"b_afougf_a29"};
		
		};	
				
				
		_plane_L2 = switch (true) do {

			default {"b_afougf_l39c"};
			
		};	
				
				
		_plane_L3 = switch (true) do {

			default {"b_afougf_l39m1"};
			
		};	


		_plane_L4 = switch (true) do {

			default {"b_afougf_mig29s"};
			
		};	


		_plane_L5 = switch (true) do {

			default {"b_afougf_mig29sm"};
			
		};	


		_plane_L6 = switch (true) do {
		
			default {"b_afougf_Su25SM"};
			
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
	























