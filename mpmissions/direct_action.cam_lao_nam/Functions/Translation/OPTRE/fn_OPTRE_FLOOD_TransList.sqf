
	// Units
	
		_rifleman				=	"dev_flood_combat_i";
		_officer 				= 	"dev_flood_combat_i";
		_teamLeader 			= 	"dev_flood_combat_i";
		_marksman 				= 	"dev_flood_combat_i";
		_sniper					=	"dev_flood_combat_i";
		_spotter				=	"dev_flood_combat_i";
		_grenadier				=	"dev_flood_combat_i";
		_autoRifleman			= 	"dev_flood_combat_i";
		_gunner					=	"";
		_medic					= 	"dev_flood_combat_i";
		_repairSpecialist		=	"";
		_engineer				= 	"";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"dev_flood_combat_i";
		_missileSpecialistAA	=	"dev_flood_combat_i";
		_ammoBearer				= 	"";
		_JTAC					= 	"dev_flood_combat_i";
		_explosivesSpecialist	= 	"";
		_uavOperator			= 	"dev_flood_combat_i";
		_paratrooper			=	"";
		_heliPilot 				=	"";
		_heliCrew				=	"";
		_fighterPilot			=	"dev_flood_combat_i";
		_pilot					=	"dev_flood_combat_i";
		_vehicleCrew			=  	"dev_flood_combat_i";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";


	// Vehicles

		_atTurret				=	"OPTRE_FC_T26_AT";
		_aaTurret				=	"OPTRE_FC_T26_AT";
		_mortar					=	"Plasma_Mortar";
		_AttackCargoPlane		=	"OPTRE_FC_Spirit";
		_attackBoat				=	"optre_catfish_mg_f";
		_quadBike 				=	"OPTRE_M274_ATV_Ins";
		_smallCargoTruck		=	"OPTRE_cart";
		_fuelTruck				=	"OPTRE_M914_RV_ins";
		_car					=	"OPTRE_M12_FAV_ins";
		_carHMG					=	"OPTRE_M12_ins_APC";
		_carAT					=	"OPTRE_M12_ins_APC";
		_Mrap					=	"OPTRE_M12_FAV_ins";
		_MrapHMG				=	"OPTRE_M12_LRV_ins";
		_MrapGMG				=	"OPTRE_M12A1_LRV_ins";
		_cargoTruck				=	"OPTRE_m1015_mule_ins";
		_lightIFV				=	"OPTRE_M12_TD_ins";
		_lightAA				=	"OPTRE_M12R_AA_ins";
		_tank					=	"OPTRE_FC_Wraith";
		_antiAirAPC				= 	"OPTRE_M808B2";
		_artilleryAPC			=	"OPTRE_FC_Wraith";
		_wheeledIFV				=	"OPTRE_M412_IFV_UNSC";
		_trackedAPC				=	"";
		_tankHunter				=	"";
		_smallTrHeli			=	"";
		_mediumTrHeli			=	"";
		_largeTrHeli			=	"";
		_cargoHeli				=	"";
		_smallAH				=	"OPTRE_UNSC_hornet_ins";
		_largeAH				=	"OPTRE_FC_Type26B_Banshee";
		_TrPlane				=	"OPTRE_FC_Spirit";
		_CargoPlane				=	"OPTRE_FC_Spirit";
		_plane_L1				=	"";
		_plane_L2				=	"";
		_plane_L3				=	"OPTRE_FC_Type26B_Banshee";
		_plane_L4				=	"OPTRE_FC_Type26N_Banshee";
		_plane_L5				= 	"";
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
