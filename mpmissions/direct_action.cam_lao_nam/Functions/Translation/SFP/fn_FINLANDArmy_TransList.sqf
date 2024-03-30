	
	// Units
	
		_rifleman				=	"ffp_m05w_rifleman_rk95";
		_officer 				=	"ffp_m05w_platoonleader";
		_teamLeader 			= 	"ffp_m05w_teamleader";
		_marksman 				= 	"ffp_m05w_marksman";
		_sniper					=	"ffp_m04d_sog_sniper";
		_spotter				=	"ffp_m04d_sog_spotter";
		_grenadier				=	"ffp_m05w_rifleman_rk95";
		_autoRifleman			= 	"ffp_m05w_machinegunner_kk_pkm";
		_gunner					=	"ffp_m05w_machinegunner_kk_pkm";
		_medic					= 	"ffp_m05w_medic";
		_repairSpecialist		=	"ffp_m05w_m05w_engineer";
		_engineer				= 	"ffp_m05w_m05w_engineer";
		_guidedLAT				=	"ffp_m05w_at_specialist_apilas";
		_dumbLAT				=	"ffp_m05w_at_specialist_kes88";
		_missileSpecialistAT	= 	"ffp_m05w_at_specialist_nlaw";
		_missileSpecialistAA	=	"ffp_m05w_rifleman_ito15";
		_ammoBearer				= 	"ffp_m05w_rifleman_rk95";
		_JTAC					= 	"ffp_m05w_rifleman_jtac";
		_explosivesSpecialist	= 	"ffp_m05w_explosive_specialist";
		_uavOperator			= 	"ffp_m05w_rifleman_uav_op";
		_paratrooper			=	"ffp_m05w_rifleman_rk95";
		_heliPilot 				=	"ffp_helipilot";
		_heliCrew				=	"ffp_helipilot";
		_fighterPilot			=	"ffp_pilot";
		_pilot					=	"ffp_pilot";
		_vehicleCrew			=  	"ffp_m05w_crew";
		_diver 					=	"sfp_m90w_combat_diver";
		_diverTeamLeader		=	"sfp_m90w_combat_diver_tl";
		_diverExplosives		=	"sfp_m90w_combat_diver_exp";


	// Vehicles
	
		_atTurret				=	"ffp_pstohj83";
		_aaTurret				=	"ffp_23itk61";
		_mortar					=	"ffp_122h63";
		_attackBoat				=	"sfp_strb90";
		_quadBike 				=	"B_T_Quadbike_01_F";
		_smallCargoTruck		=	"ffp_susi_sa420_covered";
		_fuelTruck				=	"ffp_susi_sa420_fuel";
		_car					=	"sfp_81_tgb1112";
		_carHMG					=	"sfp_tgb1111_sog_ksp58";
		_carAT					=	"sfp_tgb1111";
		_Mrap					=	"sfp_tgb16";
		_MrapHMG				=	"sfp_tgb16_ksp58";
		_MrapGMG				=	"sfp_tgb16_rws";
		_cargoTruck				=	"B_T_Truck_01_flatbed_F";
		_lightIFV				=	"sfp_pbv302";
		_lightAA				=	"sfp_pbv302";
		_tank					=   "ffp_leopard2a6";		
		_antiAirAPC				=	"sfp_lvkv90c";
		_artilleryAPC			=	"sfp_grkpbv90120";
		_wheeledIFV				=	"sfp_patgb360";
		_trackedAPC				=	"ffp_bmp2_atgm";
		_tankHunter				=	"ffp_cv9030";
		_smallTrHeli			=	"ffp_md500";
		_mediumTrHeli			=	"ffp_nh90";
		_largeTrHeli			=	"ffp_nh90_armed";
		_cargoHeli				=	"sfp_hkp4_2015";
		_smallAH				=	"sfp_hkp9_rb55";
		_largeAH				=	"RHS_AH64D_wd";
		
		// Planes
		
			_TrPlane = "sfp_tp84_2015";

			_CargoPlane = "sfp_tp84_2015";

			_AttackCargoPlane = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "USAF_AC130U")): {"USAF_AC130U"};
				default {"RHS_C130J_Cargo"};
				
			};	
		
			_plane_L1 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6a_10")): {"bwi_a3_t6a_10"};
				default {"RHSGREF_A29B_HIDF"};
				
			};	
					
					
			_plane_L2 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "bwi_a3_t6a_nta_2")): {"bwi_a3_t6a_nta_2"};
				default {"rhs_l159_cdf_b_CDF"};
				
			};	
					
					
			_plane_L3 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "sfp_jas39_cap")): {"sfp_jas39_cap"};
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A_STEALTH")): {"USAF_F35A_STEALTH"};
				default {"B_Plane_Fighter_01_Stealth_F"};
				
			};	


			_plane_L4 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "sfp_jas39")): {"sfp_jas39"};
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A_STEALTH")): {"USAF_F35A_STEALTH"};
				default {"B_Plane_Fighter_01_F"};
				
			};	


			_plane_L5 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "sfp_jas39_gbu39")): {"sfp_jas39_gbu39"};
				case (isClass(configfile >> "CfgVehicles" >> "USAF_F35A")): {"USAF_F35A"};
				default {"rhsusf_f22"};
				
			};	


			_plane_L6 = switch (true) do {

				case (isClass(configfile >> "CfgVehicles" >> "sfp_jas39_bk90")): {"sfp_jas39_bk90"};
				case (isClass(configfile >> "CfgVehicles" >> "USAF_A10")): {"USAF_A10"};
				default {"RHS_A10"};
				
			};
			
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
	























