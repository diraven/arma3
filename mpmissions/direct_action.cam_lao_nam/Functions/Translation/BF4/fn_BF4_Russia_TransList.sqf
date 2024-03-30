	
	// Units
	
		_rifleman				=	"rhs_vdv_rifleman";
		_officer 				=	"rhs_vdv_officer";
		_teamLeader 			= 	"rhs_vdv_sergeant";
		_marksman 				= 	"rhs_vdv_marksman";
		_sniper					=	"rhs_vdv_marksman_asval";
		_spotter				=	"rhs_vdv_rifleman";
		_grenadier				=	"rhs_vdv_grenadier";
		_autoRifleman			= 	"rhs_vdv_arifleman";
		_gunner					=	"rhs_vdv_machinegunner";
		_medic					= 	"rhs_vdv_medic";
		_repairSpecialist		=	"rhs_vdv_engineer";
		_engineer				= 	"rhs_vdv_engineer";
		_guidedLAT				=	"rhs_vdv_LAT";
		_dumbLAT				=	"rhs_vdv_LAT";
		_missileSpecialistAT	= 	"rhs_vdv_grenadier_rpg";
		_missileSpecialistAA	=	"rhs_vdv_aa";
		_ammoBearer				= 	"rhs_vdv_machinegunner_assistant";
		_JTAC					= 	"rhs_vdv_recon_rifleman_scout_akm";
		_explosivesSpecialist	= 	"rhs_vdv_rifleman";
		_uavOperator			= 	"rhs_vdv_efreitor";
		_paratrooper			=	"rhs_vdv_rifleman";
		_heliPilot 				=	"rhs_pilot_tan";
		_heliCrew				=	"rhs_pilot_tan";
		_fighterPilot			=	"rhs_pilot_tan";
		_pilot					=	"rhs_pilot_tan";
		_vehicleCrew			=  	"rhs_vdv_combatcrew";
		_diver 					=	"O_diver_F";
		_diverTeamLeader		=	"O_diver_TL_F";
		_diverExplosives		=	"O_diver_exp_F";


	// Vehicles
		
		_atTurret				=	"rhs_D30_at_vdv";
		_aaTurret				=	"RHS_ZU23_VDV";
		_mortar					=	"rhs_D30_vdv";
		_AttackCargoPlane		=	"USAF_AC130U";
		_attackBoat 			= 	"";
		_quadBike 				=	"B_Quadbike_01_F";
		_smallCargoTruck		=	"RHS_Ural_Ammo_VDV_01";
		_fuelTruck				=	"RHS_Ural_Fuel_VDV_01";
		_car					=	"rhs_uaz_open_vdv";
		_carHMG					=	"rhsgref_ins_uaz_dshkm";
		_carAT					=	"rhsgref_ins_uaz_spg9";
		_Mrap					=	"rhs_tigr_vdv";
		_MrapHMG				=	"rhs_tigr_m_vdv";
		_MrapGMG				=	"rhs_tigr_sts_vdv";
		_cargoTruck				=	"RHS_Ural_Open_Flat_VDV_01";
		_lightIFV				=	"rhsgref_BRDM2_vdv";
		_lightAA				=	"rhsgref_BRDM2_ATGM_vdv";
		_tank					=	"rhs_t90sab_tv";
		_antiAirAPC				=	"rhs_zsu234_aa";
		_artilleryAPC			=	["rhs_2s3_tv", "RHS_BM21_VDV_01"];
		_wheeledIFV				=	"rhs_btr80_vdv";
		_trackedAPC				=	"rhs_bmp2k_vdv";
		_tankHunter				=	"rhs_btr80a_vdv";
		_smallTrHeli			=	"rhs_ka60_c";
		_mediumTrHeli			=	"RHS_Mi8AMT_vvsc";
		_largeTrHeli			=	"RHS_Mi8mt_vvsc";
		_cargoHeli				=	"RHS_Mi8mt_Cargo_vvsc";
		_smallAH				=	"O_Heli_Light_02_dynamicLoadout_F";
		_largeAH				=	[
		
			"rhs_mi28n_vvsc", 
			"RHS_Mi24V_vvsc", 
			"RHS_Ka52_vvsc"
		
		];
		
		
		
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
		_sub					=	"B_SDV_01_F";
		
	
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
























