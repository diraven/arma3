	
	private ["_civilianTypes"];
	
	_marker 		= 	_this select 0;
	
	_towns = getMissionLayerEntities "town" select 1;
	_factories = getMissionLayerEntities "factory" select 1;
	_farms = getMissionLayerEntities "farm" select 1;
	_cities = getMissionLayerEntities "city" select 1;
	_seasideTowns = getMissionLayerEntities "seaside" select 1;
	
	
	// Vanilla
		
		_civilianTypes = switch (true) do {

			case (_marker in _towns) 		: {[

				"C_man_p_beggar_F",
				"C_man_1",
				"C_Man_casual_3_F",
				"C_Man_casual_5_F",
				"C_Man_casual_4_F",
				"C_Man_casual_6_F",
				"C_man_polo_1_F",
				"C_man_polo_2_F",
				"C_man_polo_4_F",
				"C_man_polo_5_F",
				"C_man_polo_6_F",
				"C_Man_Messenger_01_F",
				"C_Man_casual_1_F",
				"C_Man_casual_2_F"

			]};

			case (_marker in _factories) 	: {[
				
				"C_Man_ConstructionWorker_01_Black_F",
				"C_Man_ConstructionWorker_01_Blue_F",
				"C_Man_ConstructionWorker_01_Red_F"

			]};

			case (_marker in _farms) 		: {[

				"C_man_p_beggar_F",
				"C_man_1",
				"C_Man_casual_3_F",
				"C_Man_casual_5_F",
				"C_Man_casual_4_F",
				"C_Man_casual_6_F",
				"C_man_polo_1_F",
				"C_man_polo_2_F",
				"C_man_polo_4_F",
				"C_man_polo_5_F",
				"C_man_polo_6_F",
				"C_Man_Messenger_01_F",
				"C_Man_casual_1_F",
				"C_Man_casual_2_F"

			]};

			case (_marker in _cities) 		: {[

				"C_Man_casual_1_F",
				"C_Man_casual_2_F",
				"C_Man_casual_4_v2_F",
				"C_Man_casual_5_v2_F",
				"C_Man_casual_6_v2_F",
				"C_Man_casual_7_F",
				"C_Man_formal_1_F",
				"C_Man_formal_2_F",
				"C_Man_formal_3_F",
				"C_Man_formal_4_F",
				"C_Man_smart_casual_1_F",
				"C_Man_smart_casual_2_F",
				"C_Man_casual_9_F",
				"C_Man_casual_8_F",
				"C_Man_casual_3_F",
				"C_man_polo_1_F",
				"C_Man_Messenger_01_F"

			]};


			case (_marker in _seasideTowns) 		: {[

				"C_man_sport_1_F",
				"C_man_sport_2_F",
				"C_man_sport_3_F",
				"C_Man_Fisherman_01_F",
				"C_man_shorts_2_F",
				"C_Man_casual_5_F",
				"C_Man_casual_6_F",
				"C_Man_casual_4_F",
				"C_man_polo_6_F",
				"C_man_polo_2_F",
				"C_man_polo_1_F",
				"C_man_polo_5_F"

			]};

			default {[

				"C_man_p_beggar_F",
				"C_man_1",
				"C_Man_casual_3_F",
				"C_Man_casual_5_F",
				"C_Man_casual_4_F",
				"C_Man_casual_6_F",
				"C_man_polo_1_F",
				"C_man_polo_2_F",
				"C_man_polo_4_F",
				"C_man_polo_5_F",
				"C_man_polo_6_F",
				"C_Man_Messenger_01_F",
				"C_Man_casual_1_F",
				"C_Man_casual_2_F"

			]};
			
		};
	
	
	if (BEW_V_WW2) then {
			
		_civilianTypes = [
		
			"LIB_CIV_Worker_2",
			"LIB_CIV_Worker_1",
			"LIB_CIV_Worker_4",
			"LIB_CIV_Worker_3",
			"LIB_CIV_Woodlander_4",
			"LIB_CIV_Woodlander_3",
			"LIB_CIV_Woodlander_2",
			"LIB_CIV_Woodlander_1",
			"LIB_CIV_Villager_3",
			"LIB_CIV_Villager_2",
			"LIB_CIV_Villager_4",
			"LIB_CIV_Villager_1",
			"LIB_CIV_SchoolTeacher_2",
			"LIB_CIV_SchoolTeacher",
			"LIB_CIV_Rocker",
			"LIB_CIV_Priest",
			"LIB_CIV_Functionary_2",
			"LIB_CIV_Functionary_3",
			"LIB_CIV_Functionary_1",
			"LIB_CIV_Functionary_4",
			"LIB_CIV_Citizen_8",
			"LIB_CIV_Citizen_7",
			"LIB_CIV_Citizen_6",
			"LIB_CIV_Citizen_5",
			"LIB_CIV_Citizen_4",
			"LIB_CIV_Citizen_3",
			"LIB_CIV_Citizen_2",
			"LIB_CIV_Citizen_1"
		
		];
	
	};
	
	
	if (BEW_V_Vietnam) then {
			
		_civilianTypes = [
		
			"vn_c_men_13",
			"vn_c_men_22",
			"vn_c_men_23",
			"vn_c_men_24",
			"vn_c_men_25",
			"vn_c_men_26",
			"vn_c_men_27",
			"vn_c_men_28",
			"vn_c_men_29",
			"vn_c_men_30",
			"vn_c_men_31",
			"vn_c_men_14",
			"vn_c_men_32",
			"vn_c_men_15",
			"vn_c_men_16",
			"vn_c_men_17",
			"vn_c_men_18",
			"vn_c_men_19",
			"vn_c_men_20",
			"vn_c_men_21",
			"vn_c_men_05",
			"vn_c_men_06",
			"vn_c_men_07",
			"vn_c_men_08",
			"vn_c_men_01",
			"vn_c_men_02",
			"vn_c_men_03",
			"vn_c_men_04",
			"vn_c_men_09",
			"vn_c_men_10",
			"vn_c_men_11",
			"vn_c_men_12"
		
		];
	
	};
	
	
	_civilianTypes