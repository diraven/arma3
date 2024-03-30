
	// Units
	
		_rifleman				= 	"gm_gc_army_rifleman_mpiak74n_80_str";
		_officer 				=	"gm_gc_army_officer_80_gry";
		_teamLeader 			= 	"gm_gc_army_squadleader_mpiak74n_80_str";
		_marksman 				= 	"gm_gc_army_marksman_svd_80_str";
		_sniper					=	"gm_gc_army_sf_marksman_svd_80_str";
		_spotter				=	"gm_gc_army_sf_rifleman_mpikms72_80_str";
		_grenadier				=	"";
		_autoRifleman			= 	"gm_gc_army_machinegunner_lmgrpk_80_str";
		_gunner					=	"gm_gc_army_machinegunner_pk_80_str";
		_medic					= 	"gm_gc_army_medic_mpiak74n_80_str";
		_repairSpecialist		=	"gm_gc_army_engineer_mpiaks74n_80_str";
		_engineer				= 	"gm_gc_army_engineer_mpiaks74n_80_str";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"gm_gc_army_antitank_mpiak74n_rpg7_80_str";
		_missileSpecialistAA	=	"gm_gc_army_antiair_mpiak74n_9k32m_80_str";
		_ammoBearer				= 	"gm_gc_army_machinegunner_assistant_mpiak74n_lmgrpk_80_str";
		_JTAC					= 	"gm_gc_army_radioman_mpiak74n_80_str";
		_explosivesSpecialist	= 	"gm_gc_army_demolition_mpiaks74n_80_str";
		_uavOperator			= 	"";
		_paratrooper			=	"gm_gc_army_paratrooper_mpiaks74n_80_str";
		_heliPilot 				=	"gm_gc_airforce_pilot_pm_80_blu";
		_heliCrew				=	"gm_gc_airforce_pilot_pm_80_blu";
		_fighterPilot			=	"gm_gc_airforce_pilot_pm_80_blu";
		_pilot					=	"gm_gc_airforce_pilot_pm_80_blu";
		_vehicleCrew			=  	"gm_gc_army_crew_mpiaks74nk_80_blk";
		_diver 					=	"O_diver_F";
		_diverTeamLeader		=	"O_diver_TL_F";
		_diverExplosives		=	"O_diver_exp_F";


	// Vehicles
	
		_atTurret				=	"gm_gc_army_fagot_launcher_tripod";
		_aaTurret				=	"UK3CB_CW_SOV_O_Late_ZU23";
		_mortar					=	"UK3CB_CW_SOV_O_Late_D30";
		_attackBoat				=	"";
		_quadBike 				=	"gm_gc_army_p601";
		_smallCargoTruck		=	"gm_gc_army_ural4320_cargo";
		_fuelTruck				=	"gm_gc_army_ural375d_refuel";
		_car					=	"gm_gc_army_uaz469_cargo";
		_carHMG					=	"gm_gc_army_uaz469_spg9";
		_carAT					=	"gm_gc_army_uaz469_dshkm";
		_Mrap					=	"gm_gc_army_brdm2um";
		_MrapHMG				=	"gm_gc_army_brdm2";
		_MrapGMG				=	"UK3CB_CW_SOV_O_LATE_BRDM2_ATGM";
		_cargoTruck				=	"gm_gc_army_ural4320_cargo";
		_lightIFV				=	"gm_gc_army_btr60pa";
		_lightAA				=	"UK3CB_CW_SOV_O_LATE_Gaz66_ZU23";
		
		_tank = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_gm_gc_t72m1")): {"dcx_gm_gc_t72m1"};
			default {"gm_gc_army_t55ak"};
			
		};
		
		_antiAirAPC				=	"gm_gc_army_zsu234v1";
		_artilleryAPC			=	"UK3CB_CW_SOV_O_LATE_2S3";
		_wheeledIFV				=	"gm_gc_army_btr60pb";
		_trackedAPC				=	"gm_gc_army_bmp1sp2";
		_tankHunter				=	"gm_gc_army_pt76b";
		_smallTrHeli			=	"gm_gc_airforce_mi2p";
		
		_mediumTrHeli = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_gm_gc_mi17mg")): {"dcx_gm_gc_mi17mg"};
			default {"gm_gc_airforce_mi2p"};
			
		};
		
		_largeTrHeli			=	"gm_gc_airforce_mi2p";
		_cargoHeli				=	"gm_gc_airforce_mi2t";
		_smallAH				=	"gm_gc_airforce_mi2us";
		
		_largeAH = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_gm_gc_mi17pylons")): {"dcx_gm_gc_mi17pylons"};
			default {"gm_gc_airforce_mi2urn"};
			
		};
		
		_TrPlane				=	"gm_gc_airforce_l410t";
		_CargoPlane				=	"gm_gc_airforce_l410t";
		_AttackCargoPlane		=	"gm_gc_airforce_l410t";
		_plane_L1				=	"";
		_plane_L2				=	"";
		_plane_L3				=	"";
		_plane_L4				=	"UK3CB_CW_SOV_O_LATE_MIG29SM";
		_plane_L5				= 	"";
		_plane_L6				= 	"UK3CB_CW_SOV_O_LATE_Su25SM_CAS";	
		_smallBoat				=	"";
		_sub 					=	"";
		
	
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






















