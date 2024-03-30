
	// Units

		_rifleman				= 	"O_Tura_deserter_lxWS";
		_officer 				=	"O_Tura_enforcer_lxWS";
		_teamLeader 			= 	"O_Tura_watcher_lxWS";
		_marksman 				= 	"O_Tura_scout_lxWS";
		_sniper					=	"";
		_spotter				=	"";
		_grenadier				=	"O_Tura_thug_lxWS";
		_autoRifleman			= 	"O_Tura_hireling_lxWS";
		_gunner					=	"";
		_medic					= 	"O_Tura_medic2_lxWS";
		_repairSpecialist		=	"";
		_engineer				= 	"O_Tura_defector_lxWS";
		_guidedLAT				=	"";
		_dumbLAT				=	"";
		_missileSpecialistAT	= 	"";
		_missileSpecialistAA	=	"";
		_ammoBearer				= 	"";
		_JTAC					= 	"";
		_explosivesSpecialist	= 	"";
		_uavOperator			= 	"";
		_paratrooper			=	"";
		_heliPilot 				=	"O_SFIA_pilot_lxWS";
		_heliCrew				=	"O_SFIA_pilot_lxWS";
		_fighterPilot			=	"O_SFIA_pilot_lxWS";
		_pilot					=	"O_SFIA_pilot_lxWS";
		_vehicleCrew			=  	"O_SFIA_crew_lxWS";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";
	
	
	// Vehicles
	
		_atTurret				=	"B_static_AT_F";
		_aaTurret				=	"B_static_AA_F";
		_mortar					=	"B_Mortar_01_F";
		_AttackCargoPlane		=	"B_T_VTOL_01_armed_F";
		_attackBoat				=	"B_Boat_Armed_01_minigun_F";
		_quadBike 				=	"B_Quadbike_01_F";
		_smallCargoTruck		=	"O_SFIA_Truck_02_Ammo_lxWS";
		_fuelTruck				=	"O_SFIA_Truck_02_fuel_lxWS";
		
		_car = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_ws_o_sfia_uaz469_cargo")): {"dcx_ws_o_sfia_uaz469_cargo"};
			default {"O_SFIA_Offroad_lxWS"};

		};
		
		_carHMG = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_ws_o_sfia_uaz469_dshkm")): {"dcx_ws_o_sfia_uaz469_dshkm"};
			default {"O_SFIA_Offroad_armed_lxWS"};

		};
		
		_carAT = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_ws_o_sfia_uaz469_spg9")): {"dcx_ws_o_sfia_uaz469_spg9"};
			default {"O_SFIA_Offroad_AT_lxWS"};

		};
		
		_Mrap					=	"O_Tura_Offroad_armor_lxWS";
		_MrapHMG				=	"O_Tura_Offroad_armor_armed_lxWS";
		_MrapGMG				=	"O_Tura_Offroad_armor_AT_lxWS";
		_cargoTruck				=	"O_SFIA_Truck_02_flatbed_lxWS";
		_lightIFV				=	"";
		_lightAA				=	"";
		
		_tank = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_ws_o_sfia_t55ak")): {"dcx_ws_o_sfia_t55ak"};
			default {"O_SFIA_MBT_02_cannon_lxWS"};

		};
		
		_antiAirAPC				=	"O_SFIA_APC_Tracked_02_AA_lxWS";
		_artilleryAPC			=	"O_SFIA_Truck_02_MRL_lxWS";
		_wheeledIFV				=	"O_APC_Wheeled_02_rcws_v2_F";
		
		_trackedAPC = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_ws_o_sfia_bmp1")): {"dcx_ws_o_sfia_bmp1"};
			default {"O_SFIA_APC_Tracked_02_cannon_lxWS"};

		};
		
		
		_tankHunter = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_ws_o_sfia_pt76")): {"dcx_ws_o_sfia_pt76"};
			default {""};

		};
		
		_smallTrHeli			=	"O_Heli_Light_02_unarmed_F";
		_mediumTrHeli			=	"O_Heli_light_03_unarmed_F";
		_largeTrHeli			=	"O_Heli_Transport_04_covered_F";
		_cargoHeli				=	"O_Heli_Transport_04_F";
		_smallAH				=	"O_Heli_light_03_dynamicLoadout_F";
		_largeAH				=	"O_SFIA_Heli_Attack_02_dynamicLoadout_lxWS";
		
		_TrPlane = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_ws_o_sfia_l410")): {"dcx_ws_o_sfia_l410"};
			default {"O_T_VTOL_02_infantry_dynamicLoadout_F"};

		};
		
		_CargoPlane = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_ws_o_sfia_l410")): {"dcx_ws_o_sfia_l410"};
			default {"O_T_VTOL_02_vehicle_dynamicLoadout_F"};

		};
		
		_plane_L1				=	"I_C_Plane_Civil_01_F";
		_plane_L2				=	"";
		
		_plane_L3 = switch (true) do {

			case (isClass(configfile >> "CfgVehicles" >> "dcx_ws_sfia_f4")): {"dcx_ws_sfia_f4"};
			default {""};

		};
		
		_plane_L4				=	"";
		_plane_L5				= 	"";
		_plane_L6				= 	"";
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
	























