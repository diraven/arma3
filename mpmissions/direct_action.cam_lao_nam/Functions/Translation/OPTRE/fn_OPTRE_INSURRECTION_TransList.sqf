	
	// Units
	
		_rifleman				=	"OPTRE_Ins_URF_Rifleman_AR";
		_officer 				= 	"OPTRE_Ins_URF_Officer";
		_teamLeader 			= 	"OPTRE_Ins_URF_TeamLead";
		_marksman 				= 	"OPTRE_Ins_URF_Marksman";
		_sniper					=	"OPTRE_Ins_URF_Sniper";
		_spotter				=	"OPTRE_Ins_URF_Rifleman_BR";
		_grenadier				=	"OPTRE_Ins_URF_Grenadier";
		_autoRifleman			= 	"OPTRE_Ins_URF_Autorifleman";
		_gunner					=	"";
		_medic					= 	"OPTRE_Ins_URF_Medic";
		_repairSpecialist		=	"OPTRE_Ins_URF_Engineer";
		_engineer				= 	"OPTRE_Ins_URF_Engineer";
		_guidedLAT				=	"";
		_dumbLAT				=	"OPTRE_Ins_URF_Rifleman_AT";
		_missileSpecialistAT	= 	"OPTRE_Ins_URF_AT_Specialist";
		_missileSpecialistAA	=	"OPTRE_Ins_URF_AA_Specialist";
		_ammoBearer				= 	"OPTRE_Ins_URF_Assist_Autorifleman";
		_JTAC					= 	"OPTRE_Ins_URF_Observer";
		_explosivesSpecialist	= 	"OPTRE_Ins_URF_Demolitions";
		_uavOperator			= 	"OPTRE_Ins_URF_UAV_Op";
		_paratrooper			=	"";
		_heliPilot 				=	"OPTRE_Ins_URF_Crewman";
		_heliCrew				=	"OPTRE_Ins_URF_Crewman";
		_fighterPilot			=	"OPTRE_Ins_URF_Pilot";
		_pilot					=	"OPTRE_Ins_URF_Pilot";
		_vehicleCrew			=  	"OPTRE_Ins_URF_Crewman";
		_diver 					=	"";
		_diverTeamLeader		=	"";
		_diverExplosives		=	"";


	// Vehicles

		_atTurret				=	"OPTRE_Static_ATGM_Ins";
		_aaTurret				=	"OPTRE_Static_AA_Ins";
		_mortar					=	"B_Mortar_01_F";
		_AttackCargoPlane		=	"OPTRE_Pelican_armed";
		_attackBoat				=	"optre_catfish_ins_mg_f";
		_quadBike 				=	"OPTRE_M274_ATV_Ins";
		_smallCargoTruck		=	[
									
										"OPTRE_m1015_mule_ins",
										"OPTRE_m1015_mule_ammo_ins",
										"OPTRE_m1015_mule_cover_ins",
										"OPTRE_m1015_mule_fuel_ins",
										"OPTRE_m1015_mule_medical_ins",
										"OPTRE_m1015_mule_repair_ins"
									
									];
									
		_fuelTruck				=	[
									
										"OPTRE_m1015_mule_ins",
										"OPTRE_m1015_mule_ammo_ins",
										"OPTRE_m1015_mule_cover_ins",
										"OPTRE_m1015_mule_fuel_ins",
										"OPTRE_m1015_mule_medical_ins",
										"OPTRE_m1015_mule_repair_ins"
									
									];
									
		_car					=	"OPTRE_M12_FAV_ins";
		_carHMG					=	"OPTRE_M12_FAV_ins";
		_carAT					=	"OPTRE_M914_RV_ins";
		_Mrap					=	"OPTRE_M12_ins_APC";
		_MrapHMG				=	"OPTRE_M12_LRV_ins";
		_MrapGMG				=	["OPTRE_M12_TD_ins", "OPTRE_M12A1_LRV_ins"];
		_cargoTruck				=	"OPTRE_m1015_mule_cover_ins";
		_lightIFV				=	"OPTRE_M12_ins_MED";
		_lightAA				=	"OPTRE_M12R_AA_ins";
		_tank					=	"OPTRE_M808B_INS";
		_antiAirAPC				=	"";
		_artilleryAPC			=	"OPTRE_m1015_mule_mlr_ins";
		_wheeledIFV				=	"";
		_trackedAPC				=	"OPTRE_M494_INS";
		_tankHunter				=	"";
		_smallTrHeli			=	"OPTRE_ins_falcon_unarmed";
		_mediumTrHeli			=	"OPTRE_ins_falcon";
		_largeTrHeli			=	"OPTRE_Pelican_unarmed_ins";
		_cargoHeli				=	"OPTRE_Pelican_unarmed_ins";
		_smallAH				=	"OPTRE_UNSC_hornet_ins";
		_largeAH				=	"";
		_TrPlane				=	"OPTRE_Pelican_unarmed_ins";
		_CargoPlane				=	"OPTRE_Pelican_unarmed_ins";
		_plane_L1				=	"";
		_plane_L2				=	"";
		_plane_L3				=	"";
		_plane_L4				=	"";
		_plane_L5				= 	"";
		_plane_L6				= 	"";
		_smallBoat				=	"optre_catfish_ins_unarmed_f";
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
