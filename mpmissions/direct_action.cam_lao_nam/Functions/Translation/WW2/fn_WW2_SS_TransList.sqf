
	// Units
	
		_rifleman				= 	"SG_sturmtrooper_rifleman";
		_officer 				=	"SG_sturmtrooper_lieutenant";
		_teamLeader 			= 	"SG_sturmtrooper_unterofficer";
		_marksman 				= 	"SG_sturmtrooper_sniper";
		_sniper					=	"";
		_spotter				=	"";
		_grenadier				=	"SG_sturmtrooper_ober_grenadier";
		_autoRifleman			= 	"SG_sturmtrooper_mgunner2";
		_gunner					=	"";
		_medic					= 	"SG_sturmtrooper_medic";
		_repairSpecialist		=	"";
		_engineer				= 	"SG_sturmtrooper_sapper";
		_guidedLAT				=	"SG_sturmtrooper_LAT_rifleman";
		_dumbLAT				=	"SG_sturmtrooper_LAT_rifleman";
		_missileSpecialistAT	= 	"SG_sturmtrooper_AT_soldier";
		_missileSpecialistAA	=	"";
		_ammoBearer				= 	"";
		_JTAC					= 	"SG_sturmtrooper_radioman";
		_explosivesSpecialist	= 	"";
		_uavOperator			= 	"";
		_paratrooper			=	"";
		_heliPilot 				=	"LIB_GER_pilot";
		_heliCrew				=	"LIB_GER_pilot";
		_fighterPilot			=	"LIB_GER_pilot";
		_pilot					=	"LIB_GER_pilot";
		_vehicleCrew			=  	"LIB_GER_tank_crew";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";
	

	// Vehicles		
		
		// Turrets
		
			_atTurret				=	"LIB_FlaK_36";
			_aaTurret				=	"LIB_FlaK_38";
			_mortar					=	"LIB_GrWr34";
			
		// Trucks
			
			_quadBike 				=	"vn_o_bicycle_01_nva65";
			_smallCargoTruck		=	"LIB_OpelBlitz_Tent_Y_Camo";
			_fuelTruck				=	"LIB_OpelBlitz_Tent_Y_Camo";
			_cargoTruck				=	"LIB_OpelBlitz_Tent_Y_Camo";
			
		// Cars	
			
			_car					= 	"LIB_Kfz1_camo";
			_carHMG					= 	"LIB_Kfz1_Hood_camo";			
			_carAT					= 	"LIB_Kfz1_MG42_camo";			
			_Mrap 					=	"fow_v_sdkfz_250_camo_ger_heer";	 			
			_MrapHMG 				=	"fow_v_sdkfz_251_camo_ger_heer";	 			
			_MrapGMG				=	["fow_v_sdkfz_222_camo_ger_heer", "fow_v_sdkfz_250_9_camo_ger_heer"];
			
		// Tanks
						
			_lightIFV				= 	"FA_Sdkfz231";
			_lightAA				=	["fow_v_sdkfz_234_1", "FA_Panzer2"];
			_wheeledIFV				=	["FA_Sdkfz234", "FA_Pz38t"];
			_tankHunter				=	"LIB_StuG_III_G";
			_trackedAPC				=	"LIB_PzKpfwIV_H_tarn51d";
			_antiAirAPC				=	"LIB_FlakPanzerIV_Wirbelwind";
			_tank					=	["LIB_PzKpfwVI_E_tarn51d", "LIB_PzKpfwV"];
			_artilleryAPC			=	["LIB_PzKpfwVI_B_tarn51d", "LIB_SdKfz124"];
			
			
		// Helis

			_smallTrHeli			=	"";
			_mediumTrHeli			=	"";
			_largeTrHeli			=	"";
			_cargoHeli				=	"";
			_smallAH				=	"";
			_largeAH				=	"";
			
		// Planes
		
			_TrPlane				=	"UNI_C47_CAP_Grey";
			_CargoPlane				=	"UNI_C47_CAP_Grey";
			_AttackCargoPlane		=	"";
			_plane_L1				=	"sab_fl_bf109k";
			_plane_L2				=	"sab_fl_fw190a";
			_plane_L3 				= 	"sab_sw_ju87";
			_plane_L4				=	"sab_sw_bf110";
			_plane_L5				= 	"sab_fl_ju88a";
			_plane_L6				= 	"sab_sw_he177";
			
		// Boats
		
			_smallBoat				=	"";
			_attackBoat				=	"";
			_sub 				=	"";


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
