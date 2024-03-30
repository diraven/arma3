
	// Units
	
		_rifleman				= 	"B_D_Soldier_lxWS";
		_officer 				=	"B_D_officer_lxWS";
		_teamLeader 			= 	"B_D_Soldier_TL_lxWS";
		_marksman 				= 	"B_D_soldier_M_lxWS";
		_sniper					=	"B_D_recon_M_lxWS";
		_spotter				=	"B_D_recon_lxWS";
		_grenadier				=	"B_D_Soldier_GL_lxWS";
		_autoRifleman			= 	"B_D_soldier_AR_lxWS";
		_gunner					=	"";
		_medic					= 	"B_D_medic_lxWS";
		_repairSpecialist		=	"B_D_soldier_repair_lxWS";
		_engineer				= 	"B_D_engineer_lxWS";
		_guidedLAT				=	"B_D_soldier_LAT_lxWS";
		_dumbLAT				=	"B_D_soldier_LAT_lxWS";
		_missileSpecialistAT	= 	"B_D_soldier_AT_lxWS";
		_missileSpecialistAA	=	"B_D_soldier_AA_lxWS";
		_ammoBearer				= 	"B_D_Soldier_A_lxWS";
		_JTAC					= 	"B_D_recon_JTAC_lxWS";
		_explosivesSpecialist	= 	"B_D_soldier_exp_lxWS";
		_uavOperator			= 	"B_D_soldier_UAV01_lxWS";
		_paratrooper			=	"B_D_soldier_PG_lxWS";
		_heliPilot 				=	"B_D_HeliPilot_lxWS";
		_heliCrew				=	"B_D_HeliPilot_lxWS";
		_fighterPilot			=	"B_D_Fighter_Pilot_F";
		_pilot					=	"B_D_Pilot_lxWS";
		_vehicleCrew			=  	"B_D_crew_lxWS";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";

	
	// Vehicles
	
		_atTurret				=	"B_static_AT_F";
		_aaTurret				=	"B_static_AA_F";
		_mortar					=	"B_Mortar_01_F";
		_AttackCargoPlane		=	"B_T_VTOL_01_armed_F";
		_attackBoat				=	"B_T_Boat_Armed_01_minigun_F";
		_quadBike 				=	"B_D_Quadbike_01_lxWS";
		_smallCargoTruck		=	"C_Van_01_transport_F";
		_fuelTruck				=	"C_Van_01_fuel_F";
		_car					=	"B_LSV_01_unarmed_F";
		_carHMG					=	"B_LSV_01_armed_F";
		_carAT					=	"B_LSV_01_AT_F";
		_Mrap					=	"B_D_MRAP_01_lxWS";
		_MrapHMG				=	"B_D_MRAP_01_hmg_lxWS";
		_MrapGMG				=	"B_D_MRAP_01_gmg_lxWS";
		_cargoTruck				=	"B_D_Truck_01_flatbed_lxWS";
		_lightIFV				=	"B_D_APC_Wheeled_01_command_lxWS";
		_lightAA				=	"B_D_APC_Wheeled_01_command_lxWS";
		_tank					=	"B_D_MBT_01_TUSK_lxWS";
		_antiAirAPC				=	"B_D_APC_Tracked_01_aa_lxWS";
		_artilleryAPC			=	"B_D_MBT_01_arty_lxWS";
		_wheeledIFV				=	"B_D_APC_Wheeled_01_cannon_lxWS";
		_trackedAPC				=	"B_D_APC_Wheeled_01_mortar_lxWS";
		_tankHunter				=	"B_D_APC_Wheeled_01_atgm_lxWS";
		_smallTrHeli			=	"B_D_Heli_Light_01_lxWS";
		_mediumTrHeli			=	"B_D_Heli_Transport_01_lxWS";
		
		_largeTrHeli = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "d2x_ws_b_nato_ch67_armed")): {"d2x_ws_b_nato_ch67_armed"};
			default {"B_Heli_Transport_03_F"};

		};
		
		_cargoHeli = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "d2x_ws_b_nato_ch67_armed")): {"d2x_ws_b_nato_ch67_armed"};
			default {"I_Heli_Transport_02_F"};

		};
		
		_smallAH				=	"B_D_Heli_Light_01_dynamicLoadout_lxWS";
		_largeAH				=	"B_D_Heli_Attack_01_dynamicLoadout_lxWS";
		_TrPlane				=	"B_T_VTOL_01_infantry_F";
		_CargoPlane				=	"B_T_VTOL_01_vehicle_F";
		
		_plane_L1 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6a")): {"bwi_a3_t6a"};
			default {"C_Plane_Civil_01_racing_F"};

		};


		_plane_L2 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_at6b")): {"bwi_a3_at6b"};
			default {"I_Plane_Fighter_03_dynamicLoadout_F"};

		};


		_plane_L3 = switch (true) do {
			
			case (isClass(configfile >> "CfgVehicles" >> "FIR_F15SE_LN")): {"FIR_F15SE_LN"};
			default {"B_Plane_Fighter_01_Stealth_F"};

		};


		_plane_L4 = switch (true) do {
			
			case (isClass(configfile >> "CfgVehicles" >> "FIR_F23A_HO")): {"FIR_F23A_HO"};
			default {"B_Plane_Fighter_01_F"};

		};


		_plane_L5 = switch (true) do {
			
			case (isClass(configfile >> "CfgVehicles" >> "FIR_F22")): {"FIR_F22"};
			default {"B_Plane_Fighter_01_Cluster_F"};

		};


		_plane_L6 = switch (true) do {
			
			case (isClass(configfile >> "CfgVehicles" >> "FIR_A10C_MD")): {"FIR_A10C_MD"};
			default {"B_D_Plane_CAS_01_dynamicLoadout_lxWS"};

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






















