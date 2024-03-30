	
	// Units
	
		_rifleman				=	"rhsgref_ins_rifleman_akm";
		_officer 				=	"rhsgref_ins_g_squadleader";
		_teamLeader 			= 	"rhsgref_ins_g_squadleader";
		_marksman 				= 	"rhsgref_ins_g_sniper";
		_sniper					=	"rhsgref_ins_g_sniper";
		_spotter				=	"rhsgref_ins_g_spotter";
		_grenadier				=	"rhsgref_ins_g_grenadier";
		_autoRifleman			= 	"rhsgref_ins_g_machinegunner";
		_gunner					=	"rhsgref_ins_g_machinegunner";
		_medic					= 	"rhsgref_ins_g_medic";
		_repairSpecialist		=	"rhsgref_ins_g_engineer";
		_engineer				= 	"rhsgref_ins_g_engineer";
		_guidedLAT				=	"rhsgref_ins_g_rifleman_RPG26";
		_dumbLAT				=	"rhsgref_ins_g_rifleman_RPG26";
		_missileSpecialistAT	= 	"rhsgref_ins_g_grenadier_rpg";
		_missileSpecialistAA	=	"rhsgref_ins_g_specialist_aa";
		_ammoBearer				= 	"";
		_JTAC					= 	"";
		_explosivesSpecialist	= 	"rhsgref_ins_g_saboteur";
		_uavOperator			= 	"";
		_paratrooper			=	"";
		_heliPilot 				=	"";
		_heliCrew				=	"";
		_fighterPilot			=	"";
		_pilot					=	"";
		_vehicleCrew			=  	"rhsgref_ins_g_crew";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";


	// Vehicles
		
		_atTurret				=	"rhs_D30_at_vdv";
		_aaTurret				=	"RHS_ZU23_VDV";
		_mortar					=	"rhs_D30_vdv";
		_AttackCargoPlane		=	"USAF_AC130U";
		
		_attackBoat = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "UK3CB_BAF_RHIB_HMG_DDPM_RM")): {"UK3CB_BAF_RHIB_HMG_DDPM_RM"};
			default {"O_Boat_Armed_01_hmg_F"};				
		};
		
		_quadBike 				=	"B_Quadbike_01_F";
		_smallCargoTruck		=	"C_Van_01_transport_F";
		_fuelTruck				=	"C_Van_01_fuel_F";
		_car					=	"rhs_tigr_m_vdv";
		_carHMG					=	"rhs_tigr_sts_vdv";
		_carAT					=	"rhs_tigr_sts_vdv";
		_Mrap					=	"rhsusf_m1240a1_usarmy_d";
		_MrapHMG				=	"rhsgref_BRDM2_vdv";
		_MrapGMG				=	"rhsgref_BRDM2_ATGM_vdv";
		_cargoTruck				=	"RHS_Ural_Flat_VDV_01";
		_lightIFV				=	"rhs_bmd2m";
		_lightAA				=	"rhs_bmd2m";
		_tank					=	"rhs_t90sm_tv";
		_antiAirAPC				=	"rhs_zsu234_aa";
		_artilleryAPC			=	"rhs_2s3_tv";
		_wheeledIFV				=	"rhs_btr80a_vdv";
		_trackedAPC				=	"rhs_bmp2k_vdv";
		_tankHunter				=	"rhs_sprut_vdv";
		_smallTrHeli			=	"rhs_ka60_grey";
		_mediumTrHeli			=	"RHS_Mi8mt_vvs";
		_largeTrHeli			=	"RHS_Mi8mt_vvs";
		_cargoHeli				=	"RHS_Mi8mt_Cargo_vvs";
		_smallAH				=	"RHS_Ka52_vvs";
		_largeAH				=	"rhs_mi28n_vvs";
		
		_TrPlane = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "il76td_BBC_blue")): {"il76td_BBC_blue"};
			default {"RHS_AN2"};				
		};	
		
		_CargoPlane				=	"RHS_Mi8mt_Cargo_vvs";
		_plane_L1				=	"RHS_AN2";
		_plane_L2				=	"rhs_l159_CDF";
		_plane_L3				=	"rhs_mig29sm_vvs";
		_plane_L4				=	"rhs_mig29sm_vvs";
		_plane_L5				=	"RHS_T50_vvs_054";
		_plane_L6				= 	"RHS_Su25SM_vvs";
		
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
























