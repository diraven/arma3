
	// Units

		_rifleman				= 	"vn_b_men_seal_38";
		_officer 				=	"vn_b_men_navy_01";
		_teamLeader 			= 	"vn_b_men_seal_18";
		_marksman 				= 	"vn_b_men_seal_39";
		_sniper					=	"vn_b_men_seal_39";
		_spotter				=	"";
		_grenadier				=	"vn_b_men_seal_41";
		_autoRifleman			= 	"vn_b_men_navy_05";
		_gunner					=	"vn_b_men_navy_06";
		_medic					= 	"vn_b_men_navy_03";
		_repairSpecialist		=	"";
		_engineer				= 	"vn_b_men_seal_22";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"vn_b_men_navy_07";
		_missileSpecialistAA	=	"vn_b_men_navy_07";
		_ammoBearer				= 	"";
		_JTAC					= 	"vn_b_men_navy_08";
		_explosivesSpecialist	= 	"vn_b_men_seal_22";
		_uavOperator			= 	"vn_b_men_army_09";
		_paratrooper			=	"";
		_heliPilot 				=	"vn_b_men_aircrew_05";
		_heliCrew				=	"";
		_fighterPilot			=	"vn_b_men_jetpilot_01";
		_pilot					=	"vn_b_men_jetpilot_01";
		_vehicleCrew			=  	"vn_b_men_army_24";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";


	// Vehicles

		_atTurret				=	"vn_b_army_static_tow";
		_aaTurret				=	"vn_b_army_static_m45";
		_mortar					=	"vn_b_army_static_mortar_m29";
		_AttackCargoPlane		=	"uns_AC47";
		_attackBoat				=	["vn_b_boat_12_02", "vn_b_boat_13_02"];
		_quadBike 				=	"";
		_smallCargoTruck		=	"vn_b_wheeled_m54_01";
		_fuelTruck				=	"vn_b_wheeled_m54_fuel";	
		_car					=	"vn_b_wheeled_m151_01";
		_carHMG					=	"vn_b_wheeled_m151_mg_02";
		_carAT 					= 	"vn_b_wheeled_m151_mg_06";
		_Mrap 					= 	"vn_b_wheeled_m151_02";	
		_MrapHMG 				= 	"vn_b_wheeled_m151_mg_03";		
		_MrapGMG 				= 	"vn_b_wheeled_m151_mg_05";
		_cargoTruck				=	"vn_b_wheeled_m54_01";
		_lightIFV				=	"vn_b_wheeled_m151_mg_04";
		_lightAA				=	"vn_b_wheeled_m54_mg_02";
		
		_tank					= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_m48a3")): {"uns_m48a3"};
			default {"vn_b_armor_m41_01_01"};				
		};

		_antiAirAPC				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_m163")): {"uns_m163"};
			default {"vn_b_armor_m113_acav_04"};				
		};	
		
		_artilleryAPC			= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "dcx_macv_m109")): {"dcx_macv_m109"};
			default {"uns_m110sp"};				
		};	
		
		_wheeledIFV				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_xm706e1")): {"uns_xm706e1"};
			default {"vn_b_wheeled_m54_mg_03"};				
		};
	
		_trackedAPC				=	"vn_b_armor_m113_acav_05";
		_tankHunter				=	"vn_b_armor_m113_acav_06";
		_smallTrHeli			=	"vn_b_air_oh6a_01";
		_mediumTrHeli			=	"vn_b_air_uh1e_03_04";	
		_largeTrHeli			= 	"vn_b_air_ch34_03_01";	
		
		_cargoHeli				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "dcx_macv_ch53d")): {"dcx_macv_ch53d"};
			case (isClass(configfile >> "CfgVehicles" >> "uns_ch53a_m60_usmc")): {"uns_ch53a_m60_usmc"};
			default {"vn_b_air_ch34_03_01"};				
		};
		
		_smallAH				=	"vn_b_air_uh1e_01_04";
		_largeAH				=	"vn_b_air_ah1g_09_usmc";	
		
		_TrPlane				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_C130_H")): {"uns_C130_H"};
			default {"vn_b_air_ch34_03_01"};				
		};
		
		_CargoPlane				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_C130_H")): {"uns_C130_H"};
			default {"vn_b_air_ch34_03_01"};				
		};
		
		_plane_L1				= switch (true) do {
			default {"uns_ov10_navy"};				
		};
		
		_plane_L2				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_A1J_navy_CAS")): {"uns_A1J_navy_CAS"};
			default {"vn_b_air_f4b_navy_cap"};				
		};
		
		_plane_L3				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_A4E_skyhawk_CAP")): {"uns_A4E_skyhawk_CAP"};
			default {"vn_b_air_f4b_navy_sead"};				
		};
		
		_plane_L4				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_A7N_MR")): {"uns_A7N_MR"};
			default {"vn_b_air_f4b_navy_mr"};				
		};
		
		_plane_L5				= switch (true) do {
			default {"vn_b_air_f4b_navy_mbmb"};				
		};
		
		_plane_L6				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_A6_Intruder_MR")): {"uns_A6_Intruder_MR"};
			default {"vn_b_air_f4b_navy_at"};				
		};
		
		_smallBoat				=	"vn_b_boat_10_01";
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
