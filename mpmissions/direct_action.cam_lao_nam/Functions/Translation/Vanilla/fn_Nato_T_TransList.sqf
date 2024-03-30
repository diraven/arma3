
	// Units
	
		_rifleman				= 	"B_T_Soldier_F";
		_officer 				=	"B_T_Officer_F";
		_teamLeader 			= 	"B_T_Soldier_TL_F";
		_marksman 				= 	"B_T_soldier_M_F";
		_sniper					=	"B_T_sniper_F";
		_spotter				=	"B_T_spotter_F";
		_grenadier				=	"B_T_Soldier_GL_F";
		_autoRifleman			= 	"B_T_Soldier_AR_F";
		_gunner					=	"B_T_HeavyGunner_F";
		_medic					= 	"B_T_Medic_F";
		_repairSpecialist		=	"B_T_soldier_repair_F";
		_engineer				= 	"B_T_Engineer_F";
		_guidedLAT				=	"B_T_Soldier_LAT_F";
		_dumbLAT				=	"B_T_Soldier_LAT2_F";
		_missileSpecialistAT	= 	"B_T_Soldier_AT_F";
		_missileSpecialistAA	=	"B_T_Soldier_AA_F";
		_ammoBearer				= 	"B_T_Soldier_A_F";
		_JTAC					= 	"B_T_Recon_JTAC_F";
		_explosivesSpecialist	= 	"B_T_Soldier_exp_F";
		_uavOperator			= 	"B_T_Soldier_UAV_F";
		_paratrooper			=	"B_T_Soldier_PG_F";
		_heliPilot 				=	"B_T_Helipilot_F";
		_heliCrew				=	"B_T_helicrew_F";
		_fighterPilot			=	"B_T_Fighter_Pilot_F";
		_pilot					=	"B_T_Pilot_F";
		_vehicleCrew			=  	"B_T_Crew_F";
		_diver 					=	"B_T_diver_F";
		_diverTeamLeader		=	"B_T_diver_TL_F";
		_diverExplosives		=	"B_T_diver_exp_F";
	
	
	// Vehicles
	
		_atTurret				=	"B_static_AT_F";
		_aaTurret				=	"B_static_AA_F";
		_mortar					=	"B_Mortar_01_F";
		_AttackCargoPlane		=	"B_T_VTOL_01_armed_F";
		_attackBoat				=	"B_Boat_Armed_01_minigun_F";
		_quadBike 				=	"B_T_Quadbike_01_F";
		_smallCargoTruck		=	"C_Van_01_transport_F";
		_fuelTruck				=	"C_Van_01_fuel_F";
		_car					=	"B_T_LSV_01_unarmed_F";
		_carHMG					=	"B_T_LSV_01_armed_F";
		_carAT					=	"B_T_LSV_01_AT_F";
		_Mrap					=	"B_T_MRAP_01_F";
		_MrapHMG				=	"B_T_MRAP_01_hmg_F";
		_MrapGMG				=	"B_T_MRAP_01_gmg_F";
		_cargoTruck				=	["B_T_Truck_01_flatbed_F",
									"B_T_Truck_01_ammo_F",
									"B_T_Truck_01_fuel_F",
									"B_T_Truck_01_Repair_F",
									"B_T_Truck_01_covered_F",
									"B_T_Truck_01_medical_F"];
		_lightIFV				=	"I_LT_01_cannon_F";
		_lightAA				=	"I_LT_01_AA_F";
		_tank					=	"B_T_MBT_01_TUSK_F";
		_antiAirAPC				=	"B_T_APC_Tracked_01_AA_F";
		_artilleryAPC			=	"B_T_MBT_01_arty_F";
		_wheeledIFV				=	"B_T_APC_Wheeled_01_cannon_F";
		_trackedAPC				=	"B_T_APC_Tracked_01_rcws_F";
		_tankHunter				=	"B_T_AFV_Wheeled_01_up_cannon_F";
		_smallTrHeli			=	"B_Heli_Light_01_F";
		
		_mediumTrHeli = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "B_Heli_Transport_01_navy_F")): {"B_Heli_Transport_01_navy_F"};
			default {"B_Heli_Transport_01_F"};

		};
		
		_largeTrHeli = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "navy_huron_F")): {"navy_huron_F"};
			default {"B_Heli_Transport_03_F"};

		};
		
		_cargoHeli				=	"I_Heli_Transport_02_F";
		_smallAH				=	"B_Heli_Light_01_dynamicLoadout_F";		
		
		_largeAH = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "B_Heli_Attack_Navy_01")): {"B_Heli_Attack_Navy_01"};
			default {"B_Heli_Attack_01_dynamicLoadout_F"};

		};
		
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
			
			case (isClass(configfile >> "CfgVehicles" >> "JS_JC_FA18E")): {"JS_JC_FA18E"};				// TETETE Super Hornet 2 Seat
			case (isClass(configfile >> "CfgVehicles" >> "FIR_FA18E")): {"FIR_FA18E"};					// FW Super Hornet 2 Seat
			default {"B_Plane_Fighter_01_Stealth_F"};

		};


		_plane_L4 = switch (true) do {
			
			case (isClass(configfile >> "CfgVehicles" >> "F_35C")): {"F_35C"};
			case (isClass(configfile >> "CfgVehicles" >> "FIR_F35B_Standard")): {"FIR_F35B_Standard"};
			default {"B_Plane_Fighter_01_F"};

		};


		_plane_L5 = switch (true) do {
			
			case (isClass(configfile >> "CfgVehicles" >> "FIR_EA18G_Blank")): {"FIR_EA18G_Blank"};
			default {"B_Plane_Fighter_01_Cluster_F"};

		};


		_plane_L6 = switch (true) do {
			
			case (isClass(configfile >> "CfgVehicles" >> "JS_JC_FA18F")): {"JS_JC_FA18F"};				// TETETE Super Hornet 2 Seat
			case (isClass(configfile >> "CfgVehicles" >> "FIR_FA18F_VFA106")): {"FIR_FA18F_VFA106"};
			default {"B_Plane_CAS_01_dynamicLoadout_F"};

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






















