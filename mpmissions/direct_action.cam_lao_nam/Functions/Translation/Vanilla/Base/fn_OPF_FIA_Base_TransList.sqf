
	// Units

		_rifleman				= 	"O_G_Soldier_F";
		_officer 				=	"O_G_officer_F";
		_teamLeader 			= 	"O_G_Soldier_TL_F";
		_marksman 				= 	"O_G_Soldier_M_F";
		_sniper					=	"O_G_Sharpshooter_F";
		_spotter				=	"";
		_grenadier				=	"O_G_Soldier_GL_F";
		_autoRifleman			= 	"O_G_Soldier_AR_F";
		_gunner					=	"O_G_Soldier_AR_F";
		_medic					= 	"O_G_medic_F";
		_repairSpecialist		=	"O_G_engineer_F";
		_engineer				= 	"O_G_engineer_F";
		_guidedLAT				=	"O_G_Soldier_LAT_F";
		_dumbLAT				=	"O_G_Soldier_LAT2_F";
		_missileSpecialistAT	= 	"O_G_Soldier_LAT_F";
		_missileSpecialistAA	=	"";
		_ammoBearer				= 	"O_G_Soldier_A_F";
		_JTAC					= 	"";
		_explosivesSpecialist	= 	"O_G_Soldier_exp_F";
		_uavOperator			= 	"";
		_paratrooper			=	"";
		_heliPilot 				=	"O_G_Soldier_unarmed_F";
		_heliCrew				=	"";
		_fighterPilot			=	"";
		_pilot					=	"";
		_vehicleCrew			=  	"O_G_Soldier_lite_F";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";
		
	
	// Vehicles
	
		_atTurret				=	"B_static_AT_F";
		_aaTurret				=	"B_static_AA_F";
		_mortar					=	"B_Mortar_01_F";
		_AttackCargoPlane		=	"B_T_VTOL_01_armed_F";
		_attackBoat				=	"B_Boat_Armed_01_minigun_F";
		_quadBike 				=	"B_Quadbike_01_F";
		_smallCargoTruck		=	"C_Van_01_transport_F";
		_fuelTruck				=	"C_Van_01_fuel_F";
		_car					=	"O_C_Offroad_02_unarmed_F";
		_carHMG					=	"O_C_Offroad_02_LMG_F";
		_carAT					=	"O_C_Offroad_02_AT_F";
		_Mrap					=	"O_G_Offroad_01_F";
		_MrapHMG				=	"O_G_Offroad_01_armed_F";
		_MrapGMG				=	"O_G_Offroad_01_AT_F";
		_cargoTruck				=	"O_C_Van_01_transport_F";
		_lightIFV				=	"";
		_lightAA				=	"";
		_tank					=	"";
		_antiAirAPC				=	"";
		_artilleryAPC			=	"";
		_wheeledIFV				=	"O_APC_Wheeled_03_cannon_F";
		_trackedAPC				=	"";
		_tankHunter				=	"";
		_smallTrHeli			=	"";
		_mediumTrHeli			=	"O_Heli_light_03_unarmed_F";
		_largeTrHeli			=	"";
		_cargoHeli				=	"";
		_smallAH				=	"O_Heli_light_03_dynamicLoadout_F";
		_largeAH				=	"";
		_TrPlane				=	"O_T_VTOL_02_infantry_dynamicLoadout_F";	
		_CargoPlane				=	"O_T_VTOL_02_vehicle_dynamicLoadout_F";
		_plane_L1				=	"I_C_Plane_Civil_01_F";
		_plane_L2				=	"";
		_plane_L3				=	"";
		_plane_L4				=	"";
		_plane_L5				= 	"";
		_plane_L6				= 	"";
		_smallBoat				=	"B_Boat_Transport_01_F";
		_sub 					=	"I_SDV_01_F";
		

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
	























