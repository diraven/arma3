
	// Units
	
		_rifleman				= 	"SWOP_Rebel_desert_a280";
		_officer 				=	"SWOP_JEDI_hero1";
		_teamLeader 			= 	"SWOP_Rebel_desert_com";
		_marksman 				= 	"SWOP_Rebel_desert_sniper";
		_sniper					=	"SWOP_Rebel_desert_sniper";
		_spotter				=	"";
		_grenadier				=	"";
		_autoRifleman			= 	"SWOP_Rebel_desert_assault";
		_gunner					=	"";
		_medic					= 	"SWOP_Rebel_desert_med";
		_repairSpecialist		=	"SWOP_Rebel_desert_demolisher";
		_engineer				= 	"SWOP_Rebel_desert_demolisher";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"SWOP_Rebel_desert_aa";
		_missileSpecialistAA	=	"SWOP_Rebel_desert_aa";
		_ammoBearer				= 	"";
		_JTAC					= 	"";
		_explosivesSpecialist	= 	"SWOP_Rebel_desert_demolisher";
		_uavOperator			= 	"";
		_paratrooper			=	"";
		_heliPilot 				=	"SWOP_Rebel_navy_pil";
		_heliCrew				=	"SWOP_Rebel_navy_pil";
		_fighterPilot			=	"SWOP_Rebel_navy_pil";
		_pilot					=	"SWOP_Rebel_navy_pil";
		_vehicleCrew			=  	"SWOP_Rebel_navy_pil";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";


	// Vehicles
	
		_atTurret				=	"";
		_aaTurret				=	"";
		_mortar					=	"";
		_AttackCargoPlane		=	"";
		_attackBoat				=	"";
		_quadBike 				=	"SW_BARC";
		_smallCargoTruck		=	"";
		_fuelTruck				=	"";
		_car					=	"SW_BARC";
		_carHMG					=	"SW_BARC";
		_carAT					=	"SW_BARC";
		_Mrap					=	"O_SWOP_HoverT_2";
		_MrapHMG				=	"O_SWOP_HoverTa_2";
		_MrapGMG				=	"O_SWOP_HoverTf_2";
		_cargoTruck				=	"";
		_lightIFV				=	"O_SWOP_HoverTr_2";
		_lightAA				=	"";
		_tank					=	"";
		_antiAirAPC				=	"";
		_artilleryAPC			=	"";
		_wheeledIFV				=	"";
		_trackedAPC				=	"O_JM_TX130m1r_1";
		_tankHunter				=	"O_JM_TX130m2r_1";
		_smallTrHeli			=	"swop_LAAT";
		_mediumTrHeli			=	"swop_LAAT";
		_largeTrHeli			=	"Swop_Uwing";
		_cargoHeli				=	"Swop_Uwing";
		_smallAH				=	"swop_eta2_c2";
		_largeAH				=	"swop_MF";
		_TrPlane				=	"";
		_CargoPlane				=	"";	
		_plane_L1 				=	"swop_delta7a";
		_plane_L2 				=	"swop_Vwing";
		_plane_L3 				= 	"swop_aw";
		_plane_L4 				= 	"swop_arc_t";
		_plane_L5				= 	"swop_xw";
		_plane_L6 				=	"swop_ywRed";
		
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
	