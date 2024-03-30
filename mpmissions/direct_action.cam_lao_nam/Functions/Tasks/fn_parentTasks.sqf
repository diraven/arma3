
		_mapName = toUpper worldName;

		_captureTaskTitle = switch (_mapName) do {
		
			case (toUpper "Altis")					:	{"Capture Altis"};
			case (toUpper "Tanoa")					:	{"Capture Tanoa"};
			case (toUpper "Cam_Lao_Nam")			:	{"Capture Vietnam"};
			case (toUpper "OPTRE_Madrigal")			:	{"Capture Madrigal"};
			case (toUpper "tem_anizay")				:	{"Capture Anizay"};
			case (toUpper "stozec")					:	{"Capture Gabreta"};
			case (toUpper "enoch")					:	{"Capture Livonia"};
			case (toUpper "fow_map_henderson")		:	{"Capture Guadalcanal"};
			case (toUpper "cup_chernarus_A3")		:	{"Capture Chernarus"};
			case (toUpper "I44_Omaha_V2")			:	{"Capture Omaha Beach"};
			case (toUpper "gm_weferlingen_summer")	:	{"Capture Weferlingen Region"};
			default {"Capture The Region"};
			
		};
	

	// Capture The Map

		[
			
			"captureTheMap",
			WEST, 
			
			[

			"VICTORY CONDITION: Find and secure all the enemy camps, airfields and beachheads. Check your map for details.", 
			_captureTaskTitle, 
			""

			], 

			objNull, 
			"CREATED", 
			-1, 
			false, 
			true,
			"map", 
			false

		] call BIS_fnc_setTask;


	// Side Objectives

		[

			"sideObjectives",
			WEST, 
			 
			[

			"", 
			"Optional Objectives", 
			""

			], 

			objNull, 
			"CREATED", 
			-1, 
			false, 
			true,
			"map", 
			false

		] call BIS_fnc_setTask;