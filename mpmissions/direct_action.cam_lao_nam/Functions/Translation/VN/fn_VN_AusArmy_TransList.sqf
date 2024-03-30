
	// Units

		_rifleman				= 	"vn_b_men_aus_army_70_08";
		_officer 				=	"vn_b_men_aus_army_70_22";
		_teamLeader 			= 	"vn_b_men_aus_army_70_01";
		_marksman 				= 	"vn_b_men_aus_army_70_10";
		_sniper					=	"vn_b_men_aus_army_70_19";
		_spotter				=	"";
		_grenadier				=	"vn_b_men_aus_army_70_07";
		_autoRifleman			= 	"vn_b_men_aus_army_70_06";
		_gunner					=	"";
		_medic					= 	"vn_b_men_aus_army_70_03";
		_repairSpecialist		=	"";
		_engineer				= 	"vn_b_men_aus_army_70_04";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"vn_b_men_aus_army_70_12";
		_missileSpecialistAA	=	"vn_b_men_aus_army_70_12";
		_ammoBearer				= 	"";
		_JTAC					= 	"vn_b_men_aus_army_70_09";
		_explosivesSpecialist	= 	"vn_b_men_aus_army_70_05";
		_uavOperator			= 	"vn_b_men_aus_army_70_11";
		_paratrooper			=	"";
		_heliPilot 				=	"vn_b_men_aircrew_27";
		_heliCrew				=	"";
		_fighterPilot			=	"vn_b_men_jetpilot_01";
		_pilot					=	"vn_b_men_jetpilot_01";
		_vehicleCrew			=  	"vn_b_men_aus_army_70_24";
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
		
		_smallTrHeli			= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_H13_transport_CAV")): {"uns_H13_transport_CAV"};
			default {"vn_b_air_oh6a_01"};				
		};
		
		_mediumTrHeli			=	"vn_b_air_uh1c_07_06";	
		_largeTrHeli			= 	"vn_b_air_uh1d_02_06";	
		
		_cargoHeli				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_ch47_m60_army")): {"uns_ch47_m60_army"};
			default {"vn_b_air_ch34_03_01"};				
		};
		
		_smallAH				=	"vn_b_air_uh1d_03_06";
		_largeAH				=	"vn_b_air_ah1g_04";	
		
		_TrPlane				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_C130_H")): {"uns_C130_H"};
			default {"vn_b_air_ch34_03_01"};				
		};
		
		_CargoPlane				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_C130_H")): {"uns_C130_H"};
			default {"vn_b_air_ch34_03_01"};				
		};
		
		_plane_L1				= switch (true) do {
			default {"uns_ov10_usaf"};				
		};
		
		_plane_L2				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_A1J_CAS")): {"uns_A1J_CAS"};
			default {"vn_b_air_f100d_cap"};				
		};
		
		_plane_L3				= switch (true) do {
			default {"vn_b_air_f100d_mr"};				
		};
		
		_plane_L4				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "uns_A7_MR")): {"uns_A7_MR"};
			default {"vn_b_air_f4c_mr"};				
		};
		
		_plane_L5				= switch (true) do {
			default {"vn_b_air_f4c_mbmb"};				
		};
		
		_plane_L6				= switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "UNS_F111_D_MR")): {"UNS_F111_D_MR"};
			default {"vn_b_air_f4c_at"};				
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
