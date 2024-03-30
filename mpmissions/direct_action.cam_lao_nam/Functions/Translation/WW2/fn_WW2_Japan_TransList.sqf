
	// Units
	
		_rifleman				= 	"fow_s_ija_rifleman";
		_officer 				=	"fow_s_ija_officer";
		_teamLeader 			= 	"fow_s_ija_nco";
		_marksman 				= 	"LIB_GER_scout_sniper";
		_sniper					=	"";
		_spotter				=	"";
		_grenadier				=	"LIB_GER_ober_grenadier";
		_autoRifleman			= 	"fow_s_ija_type99_gunner";
		_gunner					=	"";
		_medic					= 	"fow_s_ija_medic";
		_repairSpecialist		=	"";
		_engineer				= 	"LIB_GER_sapper";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"fow_s_ija_rifleman_at";
		_missileSpecialistAA	=	"";
		_ammoBearer				= 	"";
		_JTAC					= 	"LNRD_Luftwaffe_radioman";
		_explosivesSpecialist	= 	"";
		_uavOperator			= 	"";
		_paratrooper			=	"";
		_heliPilot 				=	"fow_s_ija_pilot";
		_heliCrew				=	"fow_s_ija_pilot";
		_fighterPilot			=	"fow_s_ija_pilot";
		_pilot					=	"fow_s_ija_pilot";
		_vehicleCrew			=  	"fow_s_ija_crewman";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";

	
	// Vehicles		
		
		_atTurret				=	"LIB_Pak40";
		_aaTurret				=	"LIB_Flakvierling_38";
		_mortar					=	"LIB_GrWr34";
		_AttackCargoPlane		=	"";
		_attackBoat				=	"";
		_quadBike 				=	"fow_v_truppenfahrrad_ger_heer";
		_smallCargoTruck		=	"fow_v_type97_truck_utility_ija";
		_fuelTruck				=	"fow_v_type97_truck_fuel_ija";
		_car					=	"fow_v_kubelwagen";
		_carHMG					=	"fow_v_kubelwagen_mg34_ger_heer";
		_carAT					=	"LIB_GazM1_SOV_camo_sand";
		_Mrap					=	"fow_v_kubelwagen";
		_MrapHMG				=	"fow_v_kubelwagen_mg34_ger_heer";
		_MrapGMG				=	"LIB_GazM1_SOV_camo_sand";
		_cargoTruck				=	"fow_v_type97_truck_ija";
		_lightIFV				=	"fow_v_type97_truck_ija";
		_lightAA				=	"fow_v_type97_truck_ija";
		_tank					=	"fow_ija_type95_HaGo_1_ija";
		_antiAirAPC				=	"fow_ija_type95_HaGo_1_ija";
		_artilleryAPC			=	"fow_ija_type95_HaGo_1_ija";
		_wheeledIFV				=	"fow_ija_type95_HaGo_1_ija";
		_trackedAPC				=	"fow_ija_type95_HaGo_1_ija";
		_tankHunter				=	"fow_ija_type95_HaGo_1_ija";
		_smallTrHeli			=	"";
		_mediumTrHeli			=	"";
		_largeTrHeli			=	"";
		_cargoHeli				=	"";
		_smallAH				=	"";
		_largeAH				=	"";


		_TrPlane = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "UNI_C47_CAP_Grey")): {"UNI_C47_CAP_Grey"};
			default {"LIB_C47_Skytrain"};				
		};
		

		_CargoPlane = switch (true) do {
			case (isClass(configfile >> "CfgVehicles" >> "UNI_C47_CAP_Grey")): {"UNI_C47_CAP_Grey"};
			default {"LIB_C47_Skytrain"};				
		};
		
		_plane_L1				=	"sab_fl_a6m";
		_plane_L2				=	"sab_fl_a6m";
		_plane_L3				=	"sab_fl_a6m";
		_plane_L4				=	"sab_sw_b5n";
		_plane_L5				= 	"sab_sw_b5n";
		_plane_L6				= 	"sab_sw_b5n";
		_smallBoat				=	"";
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
