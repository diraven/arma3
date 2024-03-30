
	// Units
	
		_rifleman				= 	"I_E_Soldier_F";
		_officer 				=	"I_E_Officer_F";
		_teamLeader 			= 	"I_E_Soldier_TL_F";
		_marksman 				= 	"I_E_soldier_M_F";
		_sniper					=	"";
		_spotter				=	"";
		_grenadier				=	"I_E_Soldier_GL_F";
		_autoRifleman			= 	"I_E_Soldier_AR_F";
		_gunner					=	"";
		_medic					= 	"I_E_Medic_F";
		_repairSpecialist		=	"I_E_Soldier_Repair_F";
		_engineer				= 	"I_E_Engineer_F";
		_guidedLAT				=	"I_E_Soldier_LAT_F";
		_dumbLAT				=	"I_E_Soldier_LAT2_F";
		_missileSpecialistAT	= 	"I_E_Soldier_AT_F";
		_missileSpecialistAA	=	"I_E_Soldier_AA_F";
		_ammoBearer				= 	"I_E_Soldier_A_F";
		_JTAC					= 	"I_E_RadioOperator_F";
		_explosivesSpecialist	= 	"I_E_Soldier_Exp_F";
		_uavOperator			= 	"I_E_Soldier_UAV_F";
		_paratrooper			=	"";
		_heliPilot 				=	"I_E_Helipilot_F";
		_heliCrew				=	"I_E_Helicrew_F";
		_fighterPilot			=	"";
		_pilot					=	"";
		_vehicleCrew			=  	"I_E_Crew_F";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";
		
	
	// Vehicles
	
		_atTurret				=	"B_static_AT_F";
		_aaTurret				=	"B_static_AA_F";
		_mortar					=	"B_Mortar_01_F";
		_AttackCargoPlane		=	"B_T_VTOL_01_armed_F";
		_attackBoat				=	"B_T_Boat_Armed_01_minigun_F";
		_quadBike 				=	"I_E_Quadbike_01_F";
		_smallCargoTruck		=	"C_Van_01_transport_F";
		_fuelTruck				=	"C_Van_01_fuel_F";
		_car					=	"I_E_Offroad_01_F";
		_carHMG					=	"I_G_Offroad_01_armed_F";
		_carAT					=	"I_G_Offroad_01_AT_F";
		_Mrap					=	"B_T_MRAP_01_F";
		_MrapHMG				=	"B_T_MRAP_01_hmg_F";
		_MrapGMG				=	"B_T_MRAP_01_gmg_F";
		_cargoTruck				=	"B_T_Truck_01_flatbed_F";
		_lightIFV 				= 	"I_LT_01_cannon_F";
		_lightAA 				= 	"I_LT_01_AA_F";
		_tank 					= 	"B_T_MBT_01_TUSK_F";
		_antiAirAPC				=	"B_T_APC_Tracked_01_AA_F";
		_artilleryAPC			=	"B_T_MBT_01_arty_F";
		_wheeledIFV 			= 	"B_T_APC_Wheeled_01_cannon_F";
		_trackedAPC				=	"I_E_APC_tracked_03_cannon_F";
		_tankHunter				=	"B_T_AFV_Wheeled_01_up_cannon_F";
		_smallTrHeli			=	"B_Heli_Light_01_F";
		_mediumTrHeli			=	"I_E_Heli_light_03_unarmed_F";
		_largeTrHeli 			= 	"I_Heli_Transport_02_F";
		_cargoHeli 				= 	"I_Heli_Transport_02_F";
		_smallAH				=	"I_E_Heli_light_03_dynamicLoadout_F";
		_largeAH				=	"B_Heli_Attack_01_dynamicLoadout_F";
		_TrPlane				=	"B_T_VTOL_01_infantry_F";
		_CargoPlane				=	"B_T_VTOL_01_vehicle_F";
		_plane_L1 				= 	"C_Plane_Civil_01_racing_F";		
		_plane_L2				=	"I_Plane_Fighter_03_dynamicLoadout_F";
		_plane_L3				=	"I_Plane_Fighter_03_Cluster_F";
		_plane_L4				=	"I_Plane_Fighter_04_F";
		_plane_L5				= 	"I_Plane_Fighter_04_Cluster_F";
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





















