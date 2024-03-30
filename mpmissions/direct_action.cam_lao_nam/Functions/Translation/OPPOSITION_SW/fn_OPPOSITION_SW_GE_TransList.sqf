
	// Units
	
		_rifleman				= 	"SWOP_Storm_stormtrooper";
		_officer 				=	"SWOP_Navy_Green_Cap";
		_teamLeader 			= 	"SWOP_Storm_stormtrooper_SL";
		_marksman 				= 	"";
		_sniper					=	"SWOP_Scout_sniper";
		_spotter				=	"SWOP_Scout_scout";
		_grenadier				=	"";
		_autoRifleman			= 	"SWOP_Storm_stormtrooper_dlt";
		_gunner					=	"";
		_medic					= 	"SWOP_Snow_stormtrooper_medic";
		_repairSpecialist		=	"SWOP_Spec_Incinerator";
		_engineer				= 	"SWOP_Spec_Incinerator";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"SWOP_Storm_stormtrooper_AA";
		_missileSpecialistAA	=	"SWOP_Storm_stormtrooper_AA";
		_ammoBearer				= 	"";
		_JTAC					= 	"";
		_explosivesSpecialist	= 	"SWOP_Spec_Incinerator";
		_uavOperator			= 	"SWOP_Scout_scout";
		_paratrooper			=	"";
		_heliPilot 				=	"SWOP_Navy_Pilot";
		_heliCrew				=	"SWOP_Navy_Pilot";
		_fighterPilot			=	"SWOP_Navy_Pilot";
		_pilot					=	"SWOP_Navy_Pilot";
		_vehicleCrew			=  	"SWOP_Navy_Pilot";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";
	

	
	// Vehicles
	
		_atTurret				=	"";
		_aaTurret				=	"";
		_mortar					=	"";
		_AttackCargoPlane		=	"";
		_attackBoat				=	"";
		_quadBike 				=	"SW_SpeederBikeIMPw";
		_smallCargoTruck		=	"";
		_fuelTruck				=	"";
		_car					=	"SW_SpeederBikeIMPw";
		_carHMG					=	"SW_SpeederBikeIMPw";
		_carAT					=	"SW_SpeederBikeIMPw";
		_Mrap					=	"O_SWOP_HoverT_1";
		_MrapHMG				=	"O_SWOP_HoverTa_1";
		_MrapGMG				=	"O_SWOP_HoverTf_1";
		_cargoTruck				=	"";
		_lightIFV				=	"O_SWOP_HoverTr_1";
		_lightAA				=	"";
		_tank					=	"";
		_antiAirAPC				=	"";
		_artilleryAPC			=	"";
		_wheeledIFV				=	"O_SWOP_HoverTr_1";
		_trackedAPC				=	"O_JM_TX130m1_1";
		_tankHunter				=	"O_JM_TX130m2_1";
		_smallTrHeli			=	"";
		_mediumTrHeli			=	"swop_lambda";
		_largeTrHeli			=	"swop_lambda";
		_cargoHeli				=	"";
		_smallAH				=	"swop_tie";
		_largeAH				=	"swop_Scimitar";
		_TrPlane				=	"";
		_CargoPlane				=	"";	
		_plane_L1 				=	"swop_tie";
		_plane_L2 				=	"swop_tie_int";
		_plane_L3 				= 	"swop_tiedef";
		_plane_L4 				= 	"swop_TIE_Stryker";
		_plane_L5				= 	"swop_tiex1";
		_plane_L6 				=	"swop_tieb";
		
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
	