
	// Units

		_rifleman				= 	"vn_o_men_nva_04";
		_officer 				=	"vn_o_men_nva_01";
		_teamLeader 			= 	"";
		_marksman 				= 	"vn_o_men_nva_10";
		_sniper					=	"";
		_spotter				=	"";
		_grenadier				=	"vn_o_men_nva_07";
		_autoRifleman			= 	"vn_o_men_nva_11";
		_gunner					=	"";
		_medic					= 	"vn_o_men_nva_08";
		_repairSpecialist		=	"";
		_engineer				= 	"vn_o_men_nva_09";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"vn_o_men_nva_14";
		_missileSpecialistAA	=	"vn_o_men_nva_43";
		_ammoBearer				= 	"";
		_JTAC					= 	"vn_o_men_nva_13";
		_explosivesSpecialist	= 	"";
		_uavOperator			= 	"";
		_paratrooper			=	"";
		_heliPilot 				=	"vn_o_men_aircrew_07";
		_heliCrew				=	"vn_o_men_aircrew_07";
		_fighterPilot			=	"vn_o_men_aircrew_07";
		_pilot					=	"vn_o_men_aircrew_07";
		_vehicleCrew			=  	"vn_o_men_nva_38";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";


	// Vehicles

		_atTurret				=	"vn_o_nva_navy_static_d44";
		_aaTurret				=	"vn_o_nva_static_zpu4";
		_mortar					=	"vn_o_nva_static_mortar_type63";
		_AttackCargoPlane		=	"";
		_attackBoat				=	["vn_o_boat_04_01", "vn_o_boat_03_01"];
		_quadBike 				=	"vn_o_bicycle_01";
		_smallCargoTruck		=	"vn_o_wheeled_z157_02";
		_fuelTruck				=	"vn_o_wheeled_z157_fuel";
		_car					=	"vn_o_wheeled_btr40_01";
		_carHMG					=	"vn_o_wheeled_btr40_02";
		_carAT					=	"vn_o_wheeled_btr40_mg_01";
		_Mrap					=	"vn_o_wheeled_btr40_01";
		_MrapHMG				=	"vn_o_wheeled_btr40_mg_02";
		_MrapGMG				=	"vn_o_wheeled_btr40_mg_03";
		_cargoTruck				=	"vn_o_wheeled_z157_01";
		_lightIFV				=	"vn_o_wheeled_z157_mg_01_nvam";
		_lightAA				=	"vn_o_wheeled_z157_mg_02_nvam";
		
		_tank 				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "dcx_pavn_t55")): {"dcx_pavn_t55"};
			case (isClass(configfile >> "CfgVehicles" >> "uns_t55_nva")): {"uns_t55_nva"};
			default {"vn_o_armor_type63_01"};				
		};

		_antiAirAPC 				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_ZSU57_NVA")): {"uns_ZSU57_NVA"};
			default {"vn_o_wheeled_btr40_mg_03"};				
		};
		
		_artilleryAPC			=	"uns_Type55_mortar";
		
		_wheeledIFV 				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_Type63_mg")): {"uns_Type63_mg"};
			default {"vn_o_wheeled_btr40_mg_02"};				
		};
		
		_trackedAPC				=	"vn_o_armor_type63_01";
		
		_tankHunter 				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_t34_85_nva")): {"uns_t34_85_nva"};
			default {"vn_o_armor_type63_01"};				
		};
		
		_smallTrHeli			=	"vn_o_air_mi2_01_01";
		_mediumTrHeli			=	"vn_o_air_mi2_01_01";
		
		_largeTrHeli 				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_Mi8T_VPAF")): {"uns_Mi8T_VPAF"};
			default {"vn_o_air_mi2_01_01"};				
		};
		
		_cargoHeli				=	"vn_o_air_mi2_01_01";
		_smallAH				=	"vn_o_air_mi2_03_03";
		_largeAH				=	"vn_o_air_mi2_05_03";
		
		_TrPlane 				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "dcx_pavn_an2")): {"dcx_pavn_an2"};
			case (isClass(configfile >> "CfgVehicles" >> "uns_an2")): {"uns_an2"};
			default {"vn_o_air_mi2_01_01"};		
		};
		
		_CargoPlane 				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "dcx_pavn_an2")): {"dcx_pavn_an2"};
			case (isClass(configfile >> "CfgVehicles" >> "uns_an2")): {"uns_an2"};
			default {"vn_o_air_mi2_01_01"};				
		};
		
		_plane_L1				=	"vn_o_air_mig19_gun";
		_plane_L2				=	"vn_o_air_mig19_cap";
		_plane_L3				= 	"vn_o_air_mig19_mr";
		_plane_L4				= 	"vn_o_air_mig19_cas";
		_plane_L5				= 	"vn_o_air_mig19_at";
		_plane_L6				= 	"vn_o_air_mig19_hbmb";
		_smallBoat				=	"vn_o_boat_01_mg_03_pl";
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
