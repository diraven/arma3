
	// Units
	
		_rifleman				= 	"B_A_Soldier_F";
		_officer 				=	"B_A_Officer_F";
		_teamLeader 			= 	"B_A_Soldier_TL_F";
		_marksman 				= 	"B_A_soldier_M_F";
		_sniper					=	"B_A_ghillie_ard_F";
		_spotter				=	"B_A_ghillie_spotter_ard_F";
		_grenadier				=	"B_A_Soldier_GL_F";
		_autoRifleman			= 	"B_A_Soldier_AR_F";
		_gunner					=	"B_A_HeavyGunner_F";
		_medic					= 	"B_A_Medic_F";
		_repairSpecialist		=	"B_A_Soldier_Repair_F";
		_engineer				= 	"B_A_Engineer_F";
		_guidedLAT				=	"B_A_Soldier_LAT_F";
		_dumbLAT				=	"B_A_Soldier_LAT_F";
		_missileSpecialistAT	= 	"B_A_Soldier_AT_F";
		_missileSpecialistAA	=	"B_A_Soldier_AA_F";
		_ammoBearer				= 	"B_A_Soldier_A_F";
		_JTAC					= 	"B_A_RadioOperator_F";
		_explosivesSpecialist	= 	"B_A_Soldier_Exp_F";
		_uavOperator			= 	"B_A_Soldier_UAV_F";
		_paratrooper			=	"B_A_Soldier_PG_F";
		_heliPilot 				=	"B_A_Helipilot_F";
		_heliCrew				=	"B_A_Helicrew_F";
		_fighterPilot			=	"B_A_Fighter_Pilot_F";
		_pilot					=	"B_A_Pilot_F";
		_vehicleCrew			=  	"B_A_Crew_F";
		_diver 					=	"B_A_Diver_F";
		_diverTeamLeader		=	"B_A_Diver_TL_F";
		_diverExplosives		=	"B_A_Diver_Exp_F";


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
		_Mrap					=	"B_A_MRAP_03_F";
		_MrapHMG				=	"B_A_MRAP_03_hmg_F";
		_MrapGMG				=	"B_A_MRAP_03_gmg_F";
		_cargoTruck				=	"B_Truck_01_flatbed_F";
		_lightIFV				=	"Atlas_B_G_LT_01_cannon_F";
		_lightAA				=	"Atlas_B_G_LT_01_AA_F";
		_tank					=	"B_MBT_01_cannon_F";
		_antiAirAPC				=	"B_APC_Tracked_01_AA_F";
		_artilleryAPC			=	"B_MBT_01_arty_F";
		_wheeledIFV				=	"B_APC_Wheeled_01_cannon_v2_F";
		_trackedAPC				=	"B_A_APC_tracked_03_cannon_v2_F";
		_tankHunter				=	"B_AFV_Wheeled_01_up_cannon_F";
		_smallTrHeli			=	"B_Heli_Light_01_F";
		_mediumTrHeli			=	"B_A_Heli_light_03_unarmed_F";
		_largeTrHeli			=	"B_A_Heli_Transport_02_F";
		_cargoHeli				=	"B_A_Heli_Transport_02_F";
		_smallAH				=	"B_Heli_Light_01_dynamicLoadout_F";
		_largeAH				=	"I_Heli_Attack_03_F";
		_TrPlane				=	"I_Plane_Transport_01_infantry_F";
		_CargoPlane				=	"I_Plane_Transport_01_vehicle_F";
		_plane_L1				=	"C_Plane_Civil_01_racing_F";
		_plane_L2				=	"I_Plane_Fighter_03_dynamicLoadout_F";
		_plane_L3				=	"B_Plane_Fighter_05_Stealth_F";
		_plane_L4				=	"B_Plane_Fighter_05_F";
		_plane_L5				= 	"B_Plane_Fighter_05_Cluster_F";
		_plane_L6				= 	"B_Plane_CAS_01_dynamicLoadout_F";	
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






















