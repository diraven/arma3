
	// Units
	
		_rifleman				= 	"Atlas_I_I_Soldier_F";
		_officer 				=	"Atlas_I_I_officer_F";
		_teamLeader 			= 	"Atlas_I_I_Soldier_TL_F";
		_marksman 				= 	"Atlas_I_I_soldier_M_F";
		_sniper					=	"Atlas_I_I_sniper_F";
		_spotter				=	"Atlas_I_I_spotter_F";
		_grenadier				=	"Atlas_I_I_Soldier_GL_F";
		_autoRifleman			= 	"Atlas_I_I_Soldier_AR_F";
		_gunner					=	"";
		_medic					= 	"Atlas_I_I_medic_F";
		_repairSpecialist		=	"Atlas_I_I_Soldier_repair_F";
		_engineer				= 	"Atlas_I_I_engineer_F";
		_guidedLAT				=	"Atlas_I_I_Soldier_LAT_F";
		_dumbLAT				=	"Atlas_I_I_Soldier_LAT_F";
		_missileSpecialistAT	= 	"Atlas_I_I_soldier_AT_F";
		_missileSpecialistAA	=	"Atlas_I_I_soldier_AA_F";
		_ammoBearer				= 	"Atlas_I_I_Soldier_A_F";
		_JTAC					= 	"Atlas_I_I_RadioOperator_F";
		_explosivesSpecialist	= 	"Atlas_I_I_soldier_exp_F";
		_uavOperator			= 	"Atlas_I_I_Soldier_UAV_F";
		_paratrooper			=	"";
		_heliPilot 				=	"Atlas_I_I_helipilot_F";
		_heliCrew				=	"Atlas_I_I_helicrew_F";
		_fighterPilot			=	"Atlas_I_I_Fighter_Pilot_F";
		_pilot					=	"";
		_vehicleCrew			=  	"Atlas_I_I_crew_F";
		_diver 					=	"Atlas_I_I_diver_F";
		_diverTeamLeader		=	"Atlas_I_I_diver_TL_F";
		_diverExplosives		=	"Atlas_I_I_diver_exp_F";

	
	// Vehicles
	
		_atTurret				=	"B_static_AT_F";
		_aaTurret				=	"B_static_AA_F";
		_mortar					=	"B_Mortar_01_F";
		_AttackCargoPlane		=	"B_T_VTOL_01_armed_F";
		_attackBoat				=	"B_Boat_Armed_01_minigun_F";
		_quadBike 				=	"B_Quadbike_01_F";
		_smallCargoTruck		=	"C_Van_01_transport_F";
		_fuelTruck				=	"C_Van_01_fuel_F";
		_car					=	"I_C_Offroad_02_unarmed_F";
		_carHMG					=	"I_C_Offroad_02_LMG_F";
		_carAT					=	"I_C_Offroad_02_AT_F";
		_Mrap					=	"Atlas_I_I_MRAP_01_F";
		_MrapHMG				=	"Atlas_I_I_MRAP_01_hmg_F";
		_MrapGMG				=	"Atlas_I_I_MRAP_01_gmg_F";
		_cargoTruck				=	"B_Truck_01_flatbed_F";
		_lightIFV				=	"Atlas_B_G_LT_01_cannon_F";
		_lightAA				=	"Atlas_B_G_LT_01_AA_F";
		_tank					=	"Atlas_I_I_MBT_01_cannon_F";
		_antiAirAPC				=	"Atlas_I_I_APC_Tracked_01_AA_F";
		_artilleryAPC			=	"Atlas_I_I_MBT_01_arty_F";
		_wheeledIFV				=	"B_APC_Wheeled_01_cannon_v2_F";
		_trackedAPC				=	"Atlas_I_I_APC_Tracked_01_rcws_F";
		_tankHunter				=	"B_AFV_Wheeled_01_up_cannon_F";
		_smallTrHeli			=	"Atlas_I_I_Heli_Light_01_F";
		_mediumTrHeli			=	"Atlas_I_I_Heli_Transport_01_F";
		_largeTrHeli			=	"B_Heli_Transport_03_F";
		_cargoHeli				=	"I_Heli_Transport_02_F";
		_smallAH				=	"Atlas_I_I_Heli_Light_01_dynamicLoadout_F";
		_largeAH				=	"Atlas_I_I_Heli_Attack_01_dynamicLoadout_F";
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






















