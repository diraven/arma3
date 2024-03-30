
	// Units
	
		_rifleman				=	"Japan_JP_Jeitai_Desert_2012_soldier_PG";
		_officer 				=	"Japan_JP_Jeitai_Desert_2012_officer";
		_teamLeader 			= 	"Japan_JP_Jeitai_Desert_2012_Soldier_TL";
		_marksman 				= 	"Japan_JP_Jeitai_Desert_2012_soldier_M";
		_sniper					=	"Japan_JP_Jeitai_Desert_2012_soldier_M";
		_spotter				=	"Japan_JP_Jeitai_Desert_2012_recon";
		_grenadier				=	"Japan_JP_Jeitai_Desert_2012_Soldier_GL";
		_autoRifleman			= 	"Japan_JP_Jeitai_Desert_2012_soldier_AR";
		_gunner					=	"Japan_JP_Jeitai_Desert_2012_soldier_AR";
		_medic					= 	"Japan_JP_Jeitai_Desert_2012_Soldier_Tshirt";
		_repairSpecialist		=	"Japan_JP_Jeitai_Desert_2012_soldier_repair";
		_engineer				= 	"Japan_JP_Jeitai_Desert_2012_Soldier_Vest";
		_guidedLAT				=	"Japan_JP_Jeitai_Desert_2012_recon_LAT";
		_dumbLAT				=	"Japan_JP_Jeitai_Desert_2012_Soldier_LAT";
		_missileSpecialistAT	= 	"Japan_JP_Jeitai_Desert_2012_soldier_AT";
		_missileSpecialistAA	=	"Japan_JP_Jeitai_Desert_2012_soldier_AA";
		_ammoBearer				= 	"Japan_JP_Jeitai_Desert_2012_Soldier_Base";
		_JTAC					= 	"Japan_JP_Jeitai_Desert_2012_recon_JTAC";
		_explosivesSpecialist	= 	"Japan_JP_Jeitai_Desert_2012_soldier_exp";
		_uavOperator			= 	"Japan_JP_Jeitai_Desert_2012_soldier_UAV";
		_paratrooper			=	"Japan_JP_Jeitai_Desert_2012_soldier_PG";
		_heliPilot 				=	"Japan_JP_Jeitai_Desert_2012_Soldier_F";
		_heliCrew				=	"Japan_JP_Jeitai_Desert_2012_Soldier_F";
		_fighterPilot			=	"Japan_JP_Jeitai_Desert_2012_Soldier_F";
		_pilot					=	"Japan_JP_Jeitai_Desert_2012_Soldier_F";
		_vehicleCrew			=  	"gac_JGSDF_crew_new";
		_diver 					=	"B_diver_F";
		_diverTeamLeader		=	"B_diver_TL_F";
		_diverExplosives		=	"B_diver_exp_F";


	
	// Vehicles
	
		_atTurret				=	"RHS_TOW_TriPod_D";
		_aaTurret				=	"RHS_Stinger_AA_pod_D";
		_mortar					=	"RHS_M119_D";
		_attackBoat				=	"B_Boat_Armed_01_minigun_F";
		_quadBike 				=	"gac_jsdf_klx";
		_smallCargoTruck		=	"gac_JGSDF_SKW476_Transport";
		_fuelTruck				=	"gac_JGSDF_SKW476TF_Air";
		_car					=	"gac_JGSDF_V16";
		_carHMG					=	"gac_JGSDF_V16_Rcn";
		_carAT					=	"gac_JGSDF_V16_Rcn";
		_Mrap					=	"gac_JGSDF_KU50W";
		_MrapHMG				=	"gac_JGSDF_KU50W_MG";
		_MrapGMG				=	"gac_JGSDF_BXD10_MG";
		_cargoTruck				=	"B_Truck_01_flatbed_F";
		_lightIFV				=	"rhsusf_M1117_D";
		_lightAA				=	"rhsusf_M1117_D";
		_tank					=	"gac_JGSDF_90TK";
		_antiAirAPC				=	"RHS_M6";
		_artilleryAPC			=	"rhsusf_m109d_usarmy";
		
		_wheeledIFV 			= 	"gac_JGSDF_KU140W_A";
		
		_trackedAPC				=	"gac_jgsdf_AAV";
		
		_tankHunter	 			=	"gac_JGSDF_10TK";
		
		_smallTrHeli			=	"Jp_UH1Y_Venom";
		_mediumTrHeli			=	"JPA_MH60M";
		_largeTrHeli			=	"gac_JGSDF_CH47J";
		_cargoHeli				=	"gac_JGSDF_CH47J";
		_smallAH				=	"RHS_MELB_AH6M";
		_largeAH				=	"jph_AH1S";
		
	// Planes
	
		_TrPlane = "Jpa_C130_HE";
		_CargoPlane = "Jpa_C130_HEC";
		
		_AttackCargoPlane = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "USAF_AC130U")): {"USAF_AC130U"};
			default {"Jpa_C130_HEC"};
			
		};	

		_plane_L1 = "RHSGREF_A29B_HIDF";
				
				
		_plane_L2 = "gac_JASDF_T4";
				
				
		_plane_L3 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "FIR_F2A")): {"FIR_F2A"};
			default {"B_Plane_Fighter_01_Stealth_F"};
			
		};	


		_plane_L4 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "FIR_F15J_306TFS")): {"FIR_F15J_306TFS"};
			default {"B_Plane_Fighter_01_F"};
			
		};	


		_plane_L5 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "FIR_F35B_Blank1")): {"FIR_F35B_Blank1"};
			default {"rhsusf_f22"};
			
		};	


		_plane_L6 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "FIR_F15J_IRST")): {"FIR_F15J_IRST"};
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
	























