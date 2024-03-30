	private ["_flag", "_faction", "_mapFaction", "_newFaction", "_factionName"];
	
	_faction = param [0];
	
	call compile format ["
		
		if (typeName %1faction == 'ARRAY') then {
		
			_factionName = %1faction select 1;
		
		}else{
		
			_factionName = %1faction;
		
		};
		
		_mapFaction = %1_MapFactionTag;
		_newFaction = %1_NewFactionTag;

	", _faction];
	
	_flagTexture = switch (true) do {
		
		case (_newFaction == "BLU_F"): {"\A3\Data_F\Flags\flag_us_CO.paa"};
		case (_newFaction == "BLU_T_F"): {"\A3\Data_F\Flags\flag_us_CO.paa"};
		case (_newFaction == "BLU_W_F"): {"\A3\Data_F\Flags\flag_us_CO.paa"};
		case (_newFaction == "BLU_CTRG_F"): {"a3\data_f\flags\flag_uk_co.paa"};
		case (_newFaction == "CUP_B_US_Army"): {"\A3\Data_F\Flags\flag_us_CO.paa"};
		case (_newFaction == "rhs_faction_socom_marsoc"): {"\A3\Data_F\Flags\flag_us_CO.paa"};
		case (_newFaction == "France_faction"): {"VehicleTextures\Flags\west\flag_france_co.paa"};
		case (_newFaction == "Pedagne_Mod"): {"VehicleTextures\Flags\west\flag_italy_co.paa"};
		case (_newFaction == "UK3CB_BAF_faction_Army_Desert"): {"\A3\Data_F\Flags\flag_uk_CO.paa"};
		case (_newFaction == "sfp_swe_2015"): {"sfp_config\data\flag_sweden_co.paa"};
		case (_newFaction == "UK3CB_BAF_Faction_Army_Desert"): {"\A3\Data_F\Flags\flag_uk_CO.paa"};
		case (_newFaction == "UK3CB_BAF_Faction_Army_MTP"): {"\A3\Data_F\Flags\flag_uk_CO.paa"};
		case (_newFaction == "UK3CB_BAF_Faction_Army_Woodland"): {"\A3\Data_F\Flags\flag_uk_CO.paa"};
		case (_newFaction == "ADFU"): {"adfu_base\data\aus_flag_co.paa"};
		case (_newFaction == "BWA3_faction_Fleck"): {"bwa3_common\data\bwa3_flag_germany_co.paa"};
		case (_newFaction == "BWA3_faction_Tropen"): {"bwa3_common\data\bwa3_flag_germany_co.paa"};
		case (_newFaction == "ROARS"): {"a3\data_f\flags\flag_uno_co.paa"};
		case (_newFaction == "CUP_B_US_Army"): {"\A3\Data_F\Flags\flag_us_CO.paa"};
		case (_newFaction == "CUP_B_USMC"): {"\A3\Data_F\Flags\flag_us_CO.paa"};
		case (_newFaction == "ACR_A3"): {"VehicleTextures\Flags\east\flag_cz_co.paa"};
		case (_newFaction == "ACR_A3_Des"): {"VehicleTextures\Flags\east\flag_cz_co.paa"};
		case (_newFaction == "ffp_finland"): {"VehicleTextures\Flags\west\flag_finland_co.paa"};
		case (_newFaction == "gac_JGSDF"): {"VehicleTextures\Flags\west\flag_japan_co.paa"};
		case (_newFaction == "IND_G_F"): {"\A3\Data_F\Flags\flag_Altis_CO.paa"};
		case (_newFaction == "VN_PAVN"): {"VehicleTextures\Flags\uns_flags\flag_pavn_co.paa"};
		case (_newFaction == "VN_PL"): {"VehicleTextures\Flags\uns_flags\flag_pavn_co.paa"};
		case (_newFaction == "VN_AUS"): {"VehicleTextures\Flags\uns_flags\flag_aus_co.paa"};
		case (_newFaction == "VN_ARVN"): {"VehicleTextures\Flags\uns_flags\flag_rvn_co.paa"};
		case (_newFaction == "VN_MACV"): {"VehicleTextures\Flags\uns_flags\flag_us_co.paa"};
		case (_newFaction == "VN_VC"): {"VehicleTextures\Flags\uns_flags\flag_vc_co.paa"};
		case (_newFaction == "US85"): {"\A3\Data_F\Flags\flag_us_CO.paa"};
		case (_newFaction == "LIB_WEHRMACHT"): {"ww2\core_t\if_decals_t\german\flag_ger_co.paa"};
		case (_newFaction == "LIB_DAK"): {"ww2\core_t\if_decals_t\german\flag_ger_co.paa"};
		case (_newFaction == "SG_STURM"): {"ww2\core_t\if_decals_t\german\flag_ger_co.paa"};
		case (_newFaction == "LIB_FSJ_Battle"): {"ww2\core_t\if_decals_t\german\flag_ger_co.paa"};
		case (_newFaction == "LIB_FSJ_DAK"): {"ww2\core_t\if_decals_t\german\flag_ger_co.paa"};
		case (_newFaction == "LIB_WEHRMACHT_w"): {"ww2\core_t\if_decals_t\german\flag_ger_co.paa"};
		case (_factionName == "WW2_CAN"): {"fow\fow_main\flags\flag_canada_co.paa"};
		case (_newFaction == "LIB_UK_ARMY"): {"a3\data_f\flags\flag_uk_co.paa"};
		case (_newFaction == "LIB_UK_ARMY_w"): {"a3\data_f\flags\flag_uk_co.paa"};
		case (_newFaction == "LIB_UK_AB"): {"a3\data_f\flags\flag_uk_co.paa"};
		case (_newFaction == "LIB_UK_DR"): {"a3\data_f\flags\flag_uk_co.paa"};
		case (_newFaction == "fow_uk"): {"a3\data_f\flags\flag_uk_co.paa"};
		case (_newFaction == "fow_aus"): {"fow\fow_main\flags\flag_australia_co.paa"};
		case (_newFaction == "fow_usa"): {"ww2\core_t\if_decals_t\us\flag_usa_co.paa"};
		case (_newFaction == "LIB_US_ARMY_w"): {"ww2\core_t\if_decals_t\us\flag_usa_co.paa"};
		case (_newFaction == "LIB_NAC"): {"ww2\core_t\if_decals_t\us\flag_usa_co.paa"};
		case (_newFaction == "LIB_US_RANGERS"): {"ww2\core_t\if_decals_t\us\flag_usa_co.paa"};
		case (_newFaction == "fow_usa_p"): {"ww2\core_t\if_decals_t\us\flag_usa_co.paa"};
		case (_newFaction == "LIB_RKKA"): {"ww2\core_t\if_decals_t\ussr\flag_su_co.paa"};
		case (_newFaction == "fow_ija"): {"fow\fow_main\flags\flag_japan01_co.paa"};
		case (_newFaction == "gm_ge_army"): {"gm\gm_core\data\flags\gm_flag_ge_co.paa"};
		case (_newFaction == "gm_gc_army"): {"gm\gm_core\data\flags\gm_flag_gc_co.paa"};
		case (_newFaction == "gm_pl_army"): {"gm\gm_core\data\flags\gm_flag_pl_co.paa"};
		case (_newFaction == "gm_dk_army"): {"gm\gm_core\data\flags\gm_flag_dk_co.paa"};
		case (_newFaction == "b_afougf_groups"): {"ua_factions_rhs\data\flags\flag_ukraine_01.paa"};		
		case (_newFaction == "OPTRE_FC_Covenant"): {"vehicleTextures\flags\halo\flag_covenant.jpg"};	
		case (_newFaction == "OPTRE_Ins"): {"vehicleTextures\flags\halo\flag_insurrection.jpg"};	
		case (_newFaction == "OPTRE_UNSC"): {"vehicleTextures\flags\halo\flag_unsc.jpg"};	
		
		default {getText (configfile >> "CfgFactionClasses" >> _newFaction >> "flag")};
		
	};
				
	_flagTexture