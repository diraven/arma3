	
	// Units
	
		_rifleman				=	"O_rhsfactionNK_Rifleman";
		_officer 				=	"O_rhsfactionNK_Officer";
		_teamLeader 			= 	"O_rhsfactionNK_Squad_Leader";
		_marksman 				= 	"";
		_sniper					=	"";
		_spotter				=	"";
		_grenadier				=	"O_rhsfactionNK_Grenadier";
		_autoRifleman			= 	"O_rhsfactionNK_Automatic_Rifleman";
		_gunner					=	"O_rhsfactionNK_Machinegunner";
		_medic					= 	"";
		_repairSpecialist		=	"";
		_engineer				= 	"O_rhsfactionNK_Engineer";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"O_rhsfactionNK_Rifleman_RPG";
		_missileSpecialistAA	=	"O_rhsfactionNK_AA_Specialist";
		_ammoBearer				= 	"";
		_JTAC					= 	"";
		_explosivesSpecialist	= 	"";
		_uavOperator			= 	"";
		_paratrooper			=	"";
		_heliPilot 				=	"O_rhsfactionNK_Heli_Pilot";
		_heliCrew				=	"O_rhsfactionNK_Heli_Pilot";
		_fighterPilot			=	"O_rhsfactionNK_Pilot";
		_pilot					=	"O_rhsfactionNK_Transport_Pilota";
		_vehicleCrew			=  	"O_rhsfactionNK_Crewman";
		_diver 					=	"O_diver_F";
		_diverTeamLeader		=	"O_diver_TL_F";
		_diverExplosives		=	"O_diver_exp_F";


	// Vehicles
		
		_atTurret				=	"O_rhsfactionNK_2A18M_D30A_AT";
		_aaTurret				=	"O_rhsfactionNK_ZU_23";
		_mortar					=	"O_rhsfactionNK_2B14_1Podnos_01";
		_AttackCargoPlane		=	"";		
		_attackBoat 			= 	"";				
		_quadBike 				=	"";
		_smallCargoTruck		=	"O_rhsfactionNK_Ural_Empty";
		_fuelTruck				=	"O_rhsfactionNK_Ural_Refuel";
		_car					=	"O_rhsfactionNK_UAZ_Open";
		_carHMG					=	"O_rhsfactionNK_UAZ_DShKM";
		_carAT					=	"O_rhsfactionNK_UAZ_SPG";
		_Mrap					=	"O_rhsfactionNK_BRDM_2UM";
		_MrapHMG				=	"O_rhsfactionNK_BRDM_2";
		_MrapGMG				=	"O_rhsfactionNK_BRDM_2ATGM";
		_cargoTruck				=	"O_rhsfactionNK_Zil_131_Open_Flatbed_01";
		_lightIFV				=	"";
		_lightAA				=	"O_rhsfactionNK_GAZ_66_ZU_23";
		_tank					=	"O_rhsfactionNK_T72S";
		_antiAirAPC				=	"O_rhsfactionNK_ZSU_23_4V";
		_artilleryAPC			=	"O_rhsfactionNK_BM_21";
		_wheeledIFV				=	"O_rhsfactionNK_BTR_60PB";
		_trackedAPC				=	"O_rhsfactionNK_BMP1";
		_tankHunter				=	"O_rhsfactionNK_BTR_80A";
		_smallTrHeli			=	"";
		_mediumTrHeli			=	"";
		_largeTrHeli			=	"O_rhsfactionNK_Mi_8MT";
		_cargoHeli				=	"O_rhsfactionNK_Mi_8MT_Cargo";
		_smallAH				=	"O_rhsfactionNK_Mi_8MTV3";
		_largeAH				=	"O_rhsfactionNK_Mi_25";		
		_TrPlane 				= 	"O_rhsfactionNK_Antonov_An_2";		
		_CargoPlane				=	"O_rhsfactionNK_Antonov_An_2";
		_plane_L1				=	"";
		_plane_L2				=	"";
		_plane_L3				=	"O_rhsfactionNK_Mig_29SE";
		_plane_L4				=	"";
		_plane_L5				=	"";
		_plane_L6				= 	"O_rhsfactionNK_SU_25K_Frogfoot";
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
























