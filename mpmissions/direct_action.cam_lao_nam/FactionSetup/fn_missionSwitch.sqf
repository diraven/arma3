	
	
	_vietnamMaps = [
		
			"Cam_Lao_Nam",
			"vn_khe_sanh",
			"rhspkl",
			"vn_the_bra",
			"VR"
		
	];
	
	
	_WW2Maps = [
		
			"tem_anizay",
			"enoch",
			"fow_map_henderson",
			"cup_chernarus_A3",
			"I44_Omaha_V2",
			"fow_map_tarawa",
			"juju_orglandes",
			"swu_kokoda_map",
			"VR"
		
	];	
	
	_OPTREMaps = [
		
		"OPTRE_Madrigal",
		"OPTRE_Arcadia",
		"VR"
		
	];
	
	_zombieMaps = [
		
		"Altis",
		"enoch",
		"cup_chernarus_A3",
		"Tanoa",
		"vn_the_bra",
		"Stratis",
		"VR"
	
	];
	
	
	// Cold War
	
		if ((isClass(configfile >> "CfgPatches" >> "UK3CB_Factions_Common")) and !(BEW_v_ForceVanilla)) then {
			
			BEW_V_ColdWar = true;
			
		}else{
		
			BEW_V_ColdWar = false;
		
		};
			
			publicVariable "BEW_V_ColdWar";
			
	
	
	// WW2
	
		if ((toUpper worldName in (_WW2Maps apply {toUpper _x})) and (isClass(configfile >> "CfgPatches" >> "fow_functions")) and (isClass(configfile >> "CfgPatches" >> "ifa3_core")) and !(BEW_v_ForceVanilla)) then {
			
			BEW_V_WW2 = true;
			
		}else{
		
			BEW_V_WW2 = false;
		
		};
			
			publicVariable "BEW_V_WW2";
			
		
		
	// Vietnam
		
		if ((toUpper worldName in (_vietnamMaps apply {toUpper _x})) and (isClass(configfile >> "CfgPatches" >> "vn_build_number")) and !(BEW_v_ForceVanilla)) then {
					
			BEW_V_Vietnam = true;
			
		}else{
		
			BEW_V_Vietnam = false;
		
		};
		
			publicVariable "BEW_V_Vietnam";
		
		
	
	// OPTRE
	
		if ((toUpper worldName in (_OPTREMaps apply {toUpper _x})) and (isClass(configfile >> "CfgPatches" >> "optre_core")) and (isClass(configfile >> "CfgPatches" >> "optre_fc_core")) and !(BEW_v_ForceVanilla)) then {
			
			BEW_V_OPTRE = true;
			
		}else{
		
			BEW_V_OPTRE = false;
		
		};
		
			publicVariable "BEW_V_OPTRE";
		
	
	
	// Zombies
	
		if ((toUpper worldName in (_zombieMaps apply {toUpper _x})) and (isClass(configfile >> "CfgPatches" >> "WBK_ZombieCreatures")) and !(BEW_v_ForceVanilla)) then {
			
			BEW_v_Zombies = true;
			
		}else{
		
			BEW_v_Zombies = false;
		
		};
		
			publicVariable "BEW_v_Zombies";
		
		
		BEW_v_ConflictMode = FALSE;
			
			publicVariable "BEW_v_ConflictMode";
			
			
		BEW_v_BF4Mode = FALSE;
		
			publicVariable "BEW_v_BF4Mode";
			
	
		BEW_V_AirSuperiority = false;
		
			publicVariable "BEW_V_AirSuperiority";
			
		