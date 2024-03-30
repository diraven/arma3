
	// Units
	
		_rifleman				= 	"O_R_Soldier_F";
		_officer 				=	"O_R_officer_F";
		_teamLeader 			= 	"O_R_Soldier_TL_F";
		_marksman 				= 	"O_R_soldier_M_F";
		_sniper					=	"O_R_sniper_F";
		_spotter				=	"O_R_spotter_F";
		_grenadier				=	"O_R_Soldier_GL_F";
		_autoRifleman			= 	"O_R_Soldier_AR_F";
		_gunner					=	"";
		_medic					= 	"O_R_medic_F";
		_repairSpecialist		=	"O_R_soldier_repair_F";
		_engineer				= 	"O_R_engineer_F";
		_guidedLAT				=	"O_R_Soldier_HAT_F";
		_dumbLAT				=	"O_R_Soldier_LAT_F";
		_missileSpecialistAT	= 	"O_R_soldier_AT_F";
		_missileSpecialistAA	=	"O_R_soldier_AA_F";
		_ammoBearer				= 	"O_R_Soldier_A_F";
		_JTAC					= 	"O_R_RadioOperator_F";
		_explosivesSpecialist	= 	"O_R_soldier_exp_F";
		_uavOperator			= 	"O_R_soldier_UAV_F";
		_paratrooper			=	"";
		_heliPilot 				=	"O_R_helipilot_F";
		_heliCrew				=	"O_R_helicrew_F";
		_fighterPilot			=	"O_R_Fighter_Pilot_F";
		_pilot					=	"O_R_Fighter_Pilot_F";
		_vehicleCrew			=  	"O_R_crew_F";
		_diver 					=	"O_R_diver_ard_F";
		_diverTeamLeader		=	"O_R_diver_TL_ard_F";
		_diverExplosives		=	"O_R_diver_exp_ard_F";
	
	
	// Vehicles
	
		_atTurret				=	"O_R_Static_AT_ard_F";
		_aaTurret				=	"O_R_Static_AA_ard_F";
		_mortar					=	"O_R_Mortar_01_ard_F";
		_AttackCargoPlane		=	"O_VTOL_02_vehicle_dynamicLoadout_F";
		_attackBoat				=	"O_R_Boat_Armed_01_hmg_ard_F";
		_quadBike 				=	"O_R_Quadbike_01_ard_F";
		_smallCargoTruck		=	"O_R_Truck_02_ard_F";
		_fuelTruck				=	"O_R_Truck_02_fuel_ard_F";
		_car					=	"O_R_LSV_02_unarmed_ard_F";
		_carHMG					=	"O_R_LSV_02_armed_ard_F";
		_carAT					=	"O_R_LSV_02_AT_ard_F";
		_Mrap					=	"O_R_MRAP_02_ard_F";
		_MrapHMG				=	"O_R_MRAP_02_hmg_ard_F";
		_MrapGMG				=	"O_R_MRAP_02_gmg_ard_F";
		_cargoTruck				=	"O_R_Truck_02_cargo_ard_F";
		_lightIFV				=	"";
		_lightAA				=	"";
		_tank					=	"O_R_MBT_04_cannon_ard_F";
		_antiAirAPC				=	"O_R_APC_Tracked_02_AA_ard_F";
		_artilleryAPC			=	"O_R_MBT_02_arty_ard_F";
		_wheeledIFV				=	"O_R_APC_Wheeled_04_cannon_ard_F";
		_trackedAPC				=	"O_R_APC_Tracked_02_cannon_ard_F";
		_tankHunter				=	"";
		_smallTrHeli			=	"";
		_mediumTrHeli			=	"O_R_Heli_Light_02_unarmed_ard_F";
		_largeTrHeli			=	"O_R_Heli_Transport_04_covered_ard_F";
		_cargoHeli				=	"O_R_Heli_Transport_04_F";
		_smallAH				=	"O_R_Heli_Light_02_dynamicLoadout_ard_F";
		_largeAH				=	"O_R_Heli_Attack_02_dynamicLoadout_ard_F";
		_TrPlane				=	"I_Plane_Transport_01_infantry_F";
		_CargoPlane				=	"I_Plane_Transport_01_vehicle_F";
		_plane_L1				=	"";
		_plane_L2				=	"";
		_plane_L3				=	"O_R_Plane_Fighter_02_Stealth_ard_F";
		_plane_L4				=	"O_R_Plane_Fighter_02_ard_F";
		_plane_L5				= 	"O_R_Plane_CAS_02_dynamicLoadout_ard_F";
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






















