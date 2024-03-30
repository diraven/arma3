
	// Units
	
		_rifleman				= 	"I_E_Soldier_F";
		_officer 				=	"I_E_Officer_F";
		_teamLeader 			= 	"I_E_Soldier_TL_F";
		_marksman 				= 	"I_E_soldier_M_F";
		_sniper					=	"I_E_ghillie_wdl_F";
		_spotter				=	"I_E_ghillie_spotter_wdl_F";
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
		_pilot					=	"I_E_Fighter_Pilot_F";
		_vehicleCrew			=  	"I_E_Crew_F";
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
		_car					=	"I_E_Offroad_01_F";
		_carHMG					=	"I_E_Offroad_01_armed_F";
		_carAT					=	"I_G_Offroad_01_AT_F";
		_Mrap					=	"B_A_MRAP_03_tna_F";
		_MrapHMG				=	"B_A_MRAP_03_hmg_tna_F";
		_MrapGMG				=	"B_A_MRAP_03_gmg_tna_F";
		_cargoTruck				=	"B_T_Truck_01_flatbed_F";
		_lightIFV				=	"Atlas_B_G_LT_01_cannon_F";
		_lightAA				=	"Atlas_B_G_LT_01_AA_F";
		_tank					=	"I_MBT_03_cannon_F";
		_antiAirAPC				=	"B_T_APC_Tracked_01_AA_F";
		_artilleryAPC			=	"I_E_Truck_02_MRL_F";
		_wheeledIFV				=	"I_APC_Wheeled_03_cannon_F";
		_trackedAPC				=	"I_E_APC_tracked_03_cannon_v2_F";
		_tankHunter				=	"B_T_AFV_Wheeled_01_up_cannon_F";
		_smallTrHeli			=	"B_Heli_Light_01_F";
		_mediumTrHeli			=	"I_E_Heli_light_03_unarmed_F";
		_largeTrHeli			=	"I_Heli_Transport_02_F";
		_cargoHeli				=	"I_Heli_Transport_02_F";
		_smallAH				=	"B_Heli_Light_01_dynamicLoadout_F";
		_largeAH				=	"I_Heli_Attack_03_F";
		_TrPlane				=	"I_Plane_Transport_01_infantry_F";
		_CargoPlane				=	"I_Plane_Transport_01_vehicle_F";
		_plane_L1				=	"";
		_plane_L2				=	"I_Plane_Fighter_03_dynamicLoadout_F";
		_plane_L3				=	"I_Plane_Fighter_03_Cluster_F";
		_plane_L4				=	"I_E_Plane_Fighter_04_F";
		_plane_L5				= 	"I_E_Plane_Fighter_04_Cluster_F";
		_plane_L6				= 	"";
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






















