
	// Units
	
		_rifleman				= 	"";
		_officer 				=	"";
		_teamLeader 			= 	"";
		_marksman 				= 	"I_C_Soldier_Para_2_F";
		_sniper					=	"";
		_spotter				=	"";
		_grenadier				=	"I_C_Soldier_Para_6_F";
		_autoRifleman			= 	"I_C_Soldier_Para_4_F";
		_gunner					=	"";
		_medic					= 	"I_C_Soldier_Para_3_F";
		_repairSpecialist		=	"";
		_engineer				= 	"";
		_guidedLAT				=	"";
		_dumbLAT				=	"I_C_Soldier_Para_5_F";
		_missileSpecialistAT	= 	"";
		_missileSpecialistAA	=	"";
		_ammoBearer				= 	"";
		_JTAC					= 	"";
		_explosivesSpecialist	= 	"I_C_Soldier_Para_8_F";
		_uavOperator			= 	"";
		_paratrooper			=	"";
		_heliPilot 				=	"B_T_Helipilot_F";
		_heliCrew				=	"";
		_fighterPilot			=	"";
		_pilot					=	"";
		_vehicleCrew			=  	"B_T_Crew_F";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";
		
	
	// Vehicles
		
		_atTurret				=	"B_static_AT_F";
		_aaTurret				=	"B_static_AA_F";
		_mortar					=	"B_Mortar_01_F";
		_AttackCargoPlane		=	"B_T_VTOL_01_armed_F";
		_attackBoat				=	"I_Boat_Armed_01_minigun_F";
		_quadBike 				=	"B_Quadbike_01_F";
		_smallCargoTruck		=	"C_Van_01_transport_F";
		_fuelTruck				=	"C_Van_01_fuel_F";
		_car					=	"I_G_Offroad_01_F";
		_carHMG					=	"I_G_Offroad_01_armed_F";
		_carAT					=	"I_G_Offroad_01_AT_F";
		_Mrap					=	"I_MRAP_03_F";
		_MrapHMG				=	"I_MRAP_03_hmg_F";
		_MrapGMG				=	"I_MRAP_03_gmg_F";
		_cargoTruck 			= 	"B_Truck_01_flatbed_F";
		_lightIFV				=	"I_LT_01_cannon_F";
		_lightAA = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "I_A_Truck_02_aa_lxWS")): {"I_A_Truck_02_aa_lxWS"};
			default {"I_LT_01_AA_F"};

		};
		_tank					=	"I_MBT_03_cannon_F";
		_antiAirAPC				=	"I_APC_tracked_03_cannon_F";
		_artilleryAPC			=	"I_Truck_02_MRL_F";
		_wheeledIFV				=	"I_APC_Wheeled_03_cannon_F";
		_trackedAPC				=	"I_APC_tracked_03_cannon_F";
		_tankHunter				=	"I_APC_Wheeled_03_cannon_F";
		_smallTrHeli			=	"B_Heli_Light_01_F";
		_mediumTrHeli			=	"I_Heli_light_03_unarmed_F";
		_largeTrHeli			=	"I_Heli_Transport_02_F";
		_cargoHeli				=	"I_Heli_Transport_02_F";
		_smallAH				=	"I_Heli_light_03_dynamicLoadout_F";
		_largeAH				=	"B_Heli_Attack_01_dynamicLoadout_F";
		_TrPlane				=	"B_T_VTOL_01_infantry_F";
		_CargoPlane				=	"B_T_VTOL_01_vehicle_F";
		_plane_L1				=	"C_Plane_Civil_01_racing_F";
		_plane_L2				=	"I_Plane_Fighter_03_dynamicLoadout_F";
		_plane_L3				=	"I_Plane_Fighter_03_Cluster_F";
		_plane_L4				=	"I_Plane_Fighter_04_F";
		_plane_L5				= 	"I_Plane_Fighter_04_Cluster_F";
		_plane_L6				= 	"I_Plane_Fighter_04_Cluster_F";
		_smallBoat				=	"I_Boat_Transport_01_F";
		_sub 					=	"I_SDV_01_F";
		

	// Arrays

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
	























