
	// Units
	
		_rifleman				= 	"B_CTRG_Soldier_tna_F";
		_officer 				=	"B_Story_SF_Captain_F";
		_teamLeader 			= 	"B_CTRG_Soldier_TL_tna_F";
		_marksman 				= 	"B_CTRG_Soldier_M_tna_F";
		_sniper					=	"";
		_spotter				=	"";
		_grenadier				=	"B_CTRG_Soldier_TL_tna_F";
		_autoRifleman			= 	"B_CTRG_Soldier_AR_tna_F";
		_gunner					=	"";
		_medic					= 	"B_CTRG_Soldier_Medic_tna_F";
		_repairSpecialist		=	"";
		_engineer				= 	"B_CTRG_Soldier_Exp_tna_F";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"B_CTRG_Soldier_LAT_tna_F";
		_missileSpecialistAA	=	"B_CTRG_Soldier_LAT2_tna_F";
		_ammoBearer				= 	"";
		_JTAC					= 	"B_CTRG_Soldier_JTAC_tna_F";
		_explosivesSpecialist	= 	"";
		_uavOperator			= 	"B_Patrol_Soldier_UAV_F";
		_paratrooper			=	"";
		_heliPilot 				=	"B_Helipilot_F";
		_heliCrew				=	"B_helicrew_F";
		_fighterPilot			=	"B_Fighter_Pilot_F";
		_pilot					=	"B_Pilot_F";
		_vehicleCrew			=  	"B_crew_F";
		_diver 					=	"B_diver_F";
		_diverTeamLeader		=	"B_diver_TL_F";
		_diverExplosives		=	"B_diver_exp_F";
	
	
	// Vehicles
	
		_atTurret				=	"B_static_AT_F";
		_aaTurret				=	"B_static_AA_F";
		_mortar					=	"B_Mortar_01_F";
		_AttackCargoPlane		=	"B_T_VTOL_01_armed_F";
		_attackBoat				=	"B_Boat_Armed_01_minigun_F";
		_quadBike 				=	"B_Quadbike_01_F";
		_smallCargoTruck		=	"C_Van_01_transport_F";
		_fuelTruck				=	"C_Van_01_fuel_F";
		_car					=	"B_LSV_01_unarmed_F";
		_carHMG					=	"B_LSV_01_armed_F";
		_carAT					=	"B_LSV_01_AT_F";
		_Mrap					=	"B_MRAP_01_F";
		_MrapHMG				=	"B_MRAP_01_hmg_F";
		_MrapGMG				=	"B_MRAP_01_gmg_F";
		_cargoTruck				=	"B_Truck_01_flatbed_F";
		_lightIFV				=	"I_LT_01_cannon_F";
		_lightAA				=	"I_LT_01_AA_F";
		_tank					=	"B_MBT_01_TUSK_F";
		_antiAirAPC				=	"B_APC_Tracked_01_AA_F";
		_artilleryAPC			=	"B_MBT_01_arty_F";
		_wheeledIFV				=	"B_APC_Wheeled_01_cannon_F";
		_trackedAPC				=	"B_APC_Tracked_01_rcws_F";
		_tankHunter				=	"B_AFV_Wheeled_01_up_cannon_F";
		_smallTrHeli			=	"B_Heli_Light_01_F";
		_mediumTrHeli			=	"B_Heli_Transport_01_F";
		_largeTrHeli			=	"B_Heli_Transport_03_F";
		_cargoHeli				=	"I_Heli_Transport_02_F";
		_smallAH				=	"B_Heli_Light_01_dynamicLoadout_F";
		_largeAH				=	"B_Heli_Attack_01_dynamicLoadout_F";
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
			default {"B_Plane_CAS_01_dynamicLoadout_F"};

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
	
















