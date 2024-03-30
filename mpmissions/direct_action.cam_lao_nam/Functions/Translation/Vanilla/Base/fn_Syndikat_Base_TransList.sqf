
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
		
		_carrierPlane			= 	"B_Plane_Fighter_01_Stealth_F";
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
		_Mrap					=	"I_G_Offroad_01_F";
		_MrapHMG				=	"I_G_Offroad_01_armed_F";
		_MrapGMG				=	"I_G_Offroad_01_AT_F";
		_cargoTruck				=	"I_C_Van_01_transport_F";
		_lightIFV				=	"";
		_lightAA				=	"";
		_tank					=	"";
		_antiAirAPC				=	"";
		_artilleryAPC			=	"";
		_wheeledIFV				=	"";
		_trackedAPC				=	"";
		_tankHunter				=	"";
		_smallTrHeli			=	"I_C_Heli_Light_01_civil_F";
		_mediumTrHeli			=	"";
		_largeTrHeli			=	"";
		_cargoHeli				=	"";
		_smallAH				=	"";
		_largeAH				=	"";
		_plane_L1				=	"I_C_Plane_Civil_01_F";
		_plane_L2				=	"";
		_plane_L3				=	"";
		_plane_L4				=	"";
		_plane_L5				= 	"";
		_plane_L6				= 	"";
		_propPlane				=	"I_C_Plane_Civil_01_F";
		_smallBoat				=	"B_Boat_Transport_01_F";
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
	























