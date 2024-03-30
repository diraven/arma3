
	// Units
	
		_rifleman				=	"gm_ge_army_rifleman_g3a3_80_ols";
		_officer 				=	"gm_ge_army_officer_p1_80_oli";
		_teamLeader 			= 	"gm_ge_army_squadleader_g3a3_p2a1_80_ols";
		_marksman 				= 	"gm_ge_army_marksman_g3a3_80_ols";
		_sniper					=	"gm_ge_army_sf_marksman_g3a3_80_wdl";
		_spotter				=	"gm_ge_army_sf_marksman_g3a3_80_wdl";
		_grenadier				=	"gm_ge_army_grenadier_g3a3_80_ols";
		_autoRifleman			= 	"gm_ge_army_machinegunner_mg3_80_ols";
		_gunner					=	"gm_ge_army_machinegunner_mg3_80_ols";
		_medic					= 	"gm_ge_army_medic_g3a3_80_ols";
		_repairSpecialist		=	"gm_ge_army_engineer_g3a4_80_ols";
		_engineer				= 	"gm_ge_army_engineer_g3a4_80_ols";
		_guidedLAT				=	"gm_ge_army_antitank_g3a3_pzf44_80_ols";
		_dumbLAT				=	"gm_ge_army_antitank_g3a3_pzf44_80_ols";
		_missileSpecialistAT	= 	"gm_ge_army_antitank_g3a3_pzf84_80_ols";
		_missileSpecialistAA	=	"gm_ge_army_antiair_g3a3_fim43_80_ols";
		_ammoBearer				= 	"gm_ge_army_machinegunner_assistant_g3a3_mg3_80_ols";
		_JTAC					= 	"gm_ge_army_radioman_g3a3_80_ols";
		_explosivesSpecialist	= 	"gm_ge_army_demolition_g3a4_80_ols";
		_uavOperator			= 	"";
		_paratrooper			=	"gm_ge_army_paratrooper_g3a4_80_oli";
		_heliPilot 				=	"gm_ge_army_pilot_p1_80_oli";
		_heliCrew				=	"gm_ge_army_pilot_p1_80_oli";
		_fighterPilot			=	"gm_ge_army_pilot_p1_80_oli";
		_pilot					=	"gm_ge_army_pilot_p1_80_oli";
		_vehicleCrew			=  	"gm_ge_army_crew_mp2a1_80_oli";
		_diver 					=	"B_diver_F";
		_diverTeamLeader		=	"B_diver_TL_F";
		_diverExplosives		=	"B_diver_exp_F";

	// Vehicles
	
		_atTurret				=	"B_static_AT_F";
		_aaTurret				=	"B_static_AA_F";
		_mortar					=	"B_Mortar_01_F";
		_AttackCargoPlane		=	"";
		_attackBoat				=	"";
		_quadBike 				=	"gm_ge_army_k125";
		_smallCargoTruck		=	"gm_ge_army_kat1_451_container";
		_fuelTruck				=	"gm_ge_army_kat1_451_refuel";
		_car					=	"gm_ge_army_iltis_cargo";
		_carHMG					=	"gm_ge_army_iltis_mg3";
		_carAT					=	"gm_ge_army_iltis_milan";
		_Mrap					=	"gm_ge_army_iltis_cargo";
		_MrapHMG				=	"gm_ge_army_iltis_mg3";
		_MrapGMG				=	"gm_ge_army_iltis_milan";
		_cargoTruck				=	"gm_ge_army_kat1_452_container";
		_lightIFV				=	"gm_ge_army_m113a1g_apc";
		_lightAA				=	"gm_ge_army_m113a1g_apc_milan";
		_tank					=	"gm_ge_army_Leopard1a1a1";
		_antiAirAPC				=	"gm_ge_army_gepard1a1";
		_artilleryAPC			=	"gm_ge_army_m109g";
		_wheeledIFV				=	"gm_ge_army_fuchsa0_reconnaissance";
		_trackedAPC				=	"gm_ge_army_marder1a2";
		_tankHunter				=	"gm_ge_army_luchsa2";
		_smallTrHeli			=	"gm_ge_army_bo105p1m_vbh";
		
		_mediumTrHeli = switch (true) do {
			
			case (isClass(configfile >> "CfgVehicles" >> "dcx_gm_ge_air_uh1d_armed")): {"dcx_gm_ge_air_uh1d_armed"};
			default {"gm_ge_army_bo105p1m_vbh_swooper"};
			
		};	
		
		_largeTrHeli			=	"gm_ge_army_ch53g";
		_cargoHeli				=	"gm_ge_army_ch53g";
		_smallAH				=	"gm_ge_army_bo105p_pah1";
		_largeAH				=	"UK3CB_CW_US_B_LATE_AH64";
		_TrPlane				=	"gm_ge_airforce_do28d2";
		_CargoPlane				=	"UK3CB_CW_US_B_LATE_C130J_CARGO";		
		_plane_L1 				= 	"RHSGREF_A29B_HIDF";		
		
		_plane_L2 = switch (true) do {
			
			case (isClass(configfile >> "CfgVehicles" >> "dcxx_generic_f4_grey")): {"dcxx_generic_f4_grey"};
			default {"rhs_l159_cdf_b_CDF"};
			
		};								

		_plane_L3 = switch (true) do {
			
			case (isClass(configfile >> "CfgVehicles" >> "dcx_gm_ge_air_rf4e")): {"dcx_gm_ge_air_rf4e"};
			default {"Tornado_AWS_blu"};
			
		};
		
		_plane_L4 				=	"Tornado_AWS_GER";
		_plane_L5 				= 	"Tornado_AWS_ecr_ger";
		_plane_L6 				= 	"Tornado_AWS_camo_ger";
		
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






















