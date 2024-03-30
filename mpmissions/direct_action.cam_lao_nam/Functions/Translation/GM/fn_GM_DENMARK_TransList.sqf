
	// Units
	
		_rifleman				=	"gm_dk_army_rifleman_g3a3_84_m84";
		_officer 				=	"gm_dk_army_sf_squadleader_mp5a3_p2a1_84_m84";
		_teamLeader 			= 	"gm_dk_army_squadleader_g3a3_p2a1_84_m84";
		_marksman 				= 	"gm_dk_army_marksman_g3a3_84_m84";
		_sniper					=	"";
		_spotter				=	"";
		_grenadier				=	"gm_dk_army_antitank_g3a3_m72a3_84_m84";
		_autoRifleman			= 	"gm_dk_army_machinegunner_mg3_84_m84";
		_gunner					=	"gm_dk_army_machinegunner_mg3_84_m84";
		_medic					= 	"gm_dk_army_medic_g3a3_84_m84";
		_repairSpecialist		=	"gm_dk_army_demolition_g3a4_84_m84";
		_engineer				= 	"gm_dk_army_demolition_g3a4_84_m84";
		_guidedLAT				=	"gm_dk_army_antitank_g3a3_m72a3_84_m84";
		_dumbLAT				=	"gm_dk_army_antitank_g3a3_m72a3_84_m84";
		_missileSpecialistAT	= 	"gm_dk_army_antitank_g3a3_pzf84_84_m84";
		_missileSpecialistAA	=	"gm_dk_army_antiair_g3a3_fim43_84_m84";
		_ammoBearer				= 	"gm_dk_army_machinegunner_assistant_g3a3_mg3_84_m84";
		_JTAC					= 	"gm_dk_army_radioman_g3a3_84_m84";
		_explosivesSpecialist	= 	"gm_dk_army_demolition_g3a4_84_m84";
		_uavOperator			= 	"";
		_paratrooper			=	"gm_dk_army_rifleman_g3a3_84_m84";
		_heliPilot 				=	"gm_ge_army_pilot_p1_80_oli";
		_heliCrew				=	"gm_ge_army_pilot_p1_80_oli";
		_fighterPilot			=	"gm_ge_army_pilot_p1_80_oli";
		_pilot					=	"gm_ge_army_pilot_p1_80_oli";
		_vehicleCrew			=  	"gm_dk_army_crew_84_oli";
		_diver 					=	"B_diver_F";
		_diverTeamLeader		=	"B_diver_TL_F";
		_diverExplosives		=	"B_diver_exp_F";


	// Vehicles
	
		_atTurret				=	"B_static_AT_F";
		_aaTurret				=	"B_static_AA_F";
		_mortar					=	"B_Mortar_01_F";
		_AttackCargoPlane		=	"";
		_attackBoat				=	"";
		_quadBike 				=	"gm_dk_army_typ1200_cargo";
		_smallCargoTruck		=	"gm_dk_army_u1300l_container";
		_fuelTruck				=	"gm_ge_army_kat1_451_refuel";
		_car					=	"gm_ge_army_iltis_cargo";
		_carHMG					=	"gm_ge_army_iltis_mg3";
		_carAT					=	"gm_ge_army_iltis_milan";
		_Mrap					=	"";
		_MrapHMG				=	"";
		_MrapGMG				=	"";
		_cargoTruck				=	"B_Truck_01_flatbed_F";
		_lightIFV				=	"gm_dk_army_m113a1dk_apc";
		_lightAA				=	"gm_ge_army_m113a1g_apc";
		_tank					=	"gm_dk_army_Leopard1a3";
		_antiAirAPC				=	"gm_ge_army_gepard1a1";
		_artilleryAPC			=	"";
		_wheeledIFV				=	"gm_dk_army_m113a2dk";
		_trackedAPC				=	"gm_ge_army_luchsa2";
		_tankHunter				=	"gm_ge_army_marder1a2";
		
		_smallTrHeli = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_gm_dk_oh6a_01")): {"dcx_gm_dk_oh6a_01"};
			default {"gm_ge_army_bo105p1m_vbh"};
			
		};
		
		_mediumTrHeli			=	"gm_ge_army_bo105p1m_vbh_swooper";
		_largeTrHeli			=	"gm_ge_army_ch53g";
		_cargoHeli				=	"gm_ge_army_ch53g";
		
		_smallAH = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_gm_dk_oh6a_04")): {"dcx_gm_dk_oh6a_04"};
			default {"gm_ge_army_bo105p_pah1a1"};
			
		};	
		
		_largeAH				=	"";
		_TrPlane				=	"gm_ge_airforce_do28d2";
		_CargoPlane				=	"gm_ge_airforce_do28d2";
		
		_plane_L1 = switch (true) do {

			default {"RHSGREF_A29B_HIDF"};
		
		};	
				
				
		_plane_L2 = switch (true) do {
			
			default {"rhs_l159_cdf_b_CDF"};
			
		};	
				
				
		_plane_L3 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "Tornado_AWS_GER")): {"Tornado_AWS_GER"};
			default {"B_Plane_Fighter_01_Stealth_F"};
			
		};	


		_plane_L4 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "Tornado_AWS_ADV_blu")): {"Tornado_AWS_ADV_blu"};
			default {"B_Plane_Fighter_01_F"};
			
		};	

		_plane_L5 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "Tornado_AWS_ecr_ger")): {"Tornado_AWS_ecr_ger"};
			default {"rhsusf_f22"};
			
		};	

		_plane_L6 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "Tornado_AWS_camo_ger")): {"Tornado_AWS_camo_ger"};
			default {"RHS_A10"};
			
		};
		
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