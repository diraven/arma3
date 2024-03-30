	
	BEW_v_GameMode = switch ("Game_Mode" call BIS_fnc_getParamValue) do {
		
		case 0 : {"NONE"};
		case 1 : {"CAMPAIGN"};
		case 2 : {"CAMPAIGN SOLO"};
		case 3 : {"CONFLICT"};
	
	};
	
	BEW_v_forceVanilla = switch ("Force_Vanilla" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
	BEW_v_PvpEnabled = switch ("PVP_Enabled" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
	BEW_v_AutoBalancer = switch ("PVP_Autobalancer" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
	BEW_v_persistentPos = switch ("Persistent_Player_Pos" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
		
		if (BEW_v_GameMode == "CAMPAIGN SOLO") then {
			
			BEW_v_persistentPos = TRUE;
			
		};
	
	BEW_v_persistentLoadout = switch ("Persistent_Player_Loadout" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
		if (BEW_v_GameMode == "CAMPAIGN SOLO") then {
			
			BEW_v_persistentLoadout = TRUE;
			
		};
	
	BEW_v_persistentRole = switch ("Persistent_Player_Role" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
		if (BEW_v_GameMode == "CAMPAIGN SOLO") then {
			
			BEW_v_persistentRole = TRUE;
			
		};
		
		
	BEW_v_persistentTime = switch ("Persistent_Time" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
		if (BEW_v_GameMode == "CAMPAIGN SOLO") then {
			
			BEW_v_persistentTime = TRUE;
			
		};
	
	
	BEW_v_persistentPlayerVehicles = switch ("Persistent_Player_Vehicles" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
		if (BEW_v_GameMode == "CAMPAIGN SOLO") then {
			
			BEW_v_persistentPlayerVehicles = TRUE;
			
		};
	
	
	BEW_v_autoSaveInterval = switch ("Autosave_Interval" call BIS_fnc_getParamValue) do {
	
		case 0 : {180};
		case 1 : {300};
		case 2 : {600};
	
	};
	
	
	BEW_v_aiSkillGlobal = switch ("AI_Skill" call BIS_fnc_getParamValue) do {
	
		case 0 : {"EASY"};
		case 1 : {"REGULAR"};
		case 2 : {"HARD"};
	
	};
	
	
	BEW_v_RandomSpawn = switch ("Random_Spawn" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
	
	BEW_v_enableStamina = switch ("Enable_Stamina" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
	
	BEW_v_easyWeaponSway = switch ("Easy_Weapon_Sway" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
	
	BEW_v_allowWithstand = switch ("Allow_Withstand" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
	
	BEW_v_AOWarning = switch ("AO_Warning" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
	
	BEW_v_enableFastTravel = switch ("Fast_Travel" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
	
	BEW_v_enableGearRestrictions = switch ("Gear_Restrictions" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
		if (BEW_v_GameMode == "CAMPAIGN SOLO") then {
			
			BEW_v_enableGearRestrictions = FALSE;
			
		};
	
	BEW_v_enableVehicleRestrictions = switch ("Vehicle_Restrictions" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
		if (BEW_v_GameMode == "CAMPAIGN SOLO") then {
			
			BEW_v_enableVehicleRestrictions = FALSE;
			
		};
	
	
	BEW_v_enableZeus = switch ("Zeus_Enabled" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};
	
	
	BEW_v_dayNightCycleMode = switch ("dayNightCycleMode" call BIS_fnc_getParamValue) do {
	
		case 0 : {"REALTIME"};
		case 1 : {"FAST"};
		case 2 : {"FASTER"};
	
	};
	
	
	BEW_v_slowDownProgression = switch ("slowDown_progression" call BIS_fnc_getParamValue) do {
	
		case 0 : {FALSE};
		case 1 : {TRUE};
	
	};