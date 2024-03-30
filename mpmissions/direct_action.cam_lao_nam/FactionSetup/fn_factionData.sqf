 
	_allFactions = [
			
			
			// Base Factions
			
				["NATO_Base", WEST, "BLU_F", "Infantry", "US Army", "flag_USA", "ENGLISH_US"], 
				["NATO_T_Base", WEST, "BLU_T_F", "Infantry", "US Marine Corps", "flag_USA", "ENGLISH_US"], 
				["NATO_W_Base", WEST, "BLU_W_F", "Infantry", "US Army", "flag_USA", "ENGLISH_US"], 
				["CTRG_Base", WEST, "BLU_CTRG_F", "Infantry", "UK CTRG", "flag_UK", "ENGLISH_BRITISH"], 
				["CTRG_D_Base", WEST, "BLU_CTRG_F", "Infantry", "UK CTRG", "flag_UK", "ENGLISH_BRITISH"], 
				
				["CSAT_Base", EAST, "OPF_F", "Infantry", "CSAT (Iran)", "flag_CSAT", "ENGLISH_US"], 
				["CSAT_T_Base", EAST, "OPF_T_F", "Infantry", "CSAT (China)", "flag_CSAT", "ENGLISH_US"], 
				["OPF_FIA_Base", EAST, "OPF_G_F", "Infantry", "FIA", "flag_FIA", "ENGLISH_US"],  
				["SPETSNAZ_Base", EAST, "OPF_R_F", "SpecOps", "Russian Spetsnaz", "flag_Russia", "ENGLISH_US"], 
				
				["AAF_Base", resistance, "IND_F", "Infantry", "AAF", "flag_AAF", "ENGLISH_US"], 
				["LDF_Base", resistance, "IND_E_F", "Infantry", "LDF", "flag_EAF", "ENGLISH_US"], 
				["MDF_Base", resistance, "IND_F", "Infantry", "MDF", "flag_Altis", "ENGLISH_US"], 
				["FIA_Base", resistance, "IND_G_F", "Infantry", "FIA", "flag_Altis", "ENGLISH_US"], 
				["SYNDIKAT_Base", resistance, "IND_C_F", "Infantry", "SYNDIKAT", "flag_Syndicat", "ENGLISH_US"], 
		
		
			// Vanilla Factions 
			
				["NATO", WEST, "BLU_F", "Infantry", "US Army", "flag_USA", "ENGLISH_US"], 
				["NATO_T", WEST, "BLU_T_F", "Infantry", "US Marine Corps", "flag_USA", "ENGLISH_US"], 
				["NATO_W", WEST, "BLU_W_F", "Infantry", "US Army", "flag_USA", "ENGLISH_US"], 
				
				["CTRG", WEST, "BLU_CTRG_F", "Infantry", "UK CTRG", "flag_UK", "ENGLISH_BRITISH"], 
				["CTRG_D", WEST, "BLU_CTRG_F", "Infantry", "UK CTRG", "flag_UK", "ENGLISH_BRITISH"], 
				
				["CSAT", EAST, "OPF_F", "Infantry", "CSAT (Iran)", "flag_CSAT", "ENGLISH_US"], 
				["CSAT_T", EAST, "OPF_T_F", "Infantry", "CSAT (China)", "flag_CSAT", "ENGLISH_US"], 
				["OPF_FIA", EAST, "OPF_G_F", "Infantry", "FIA", "flag_FIA", "ENGLISH_US"],  
				["SPETSNAZ", EAST, "OPF_R_F", "SpecOps", "Russian Spetsnaz", "flag_Russia", "ENGLISH_US"], 
				
				["AAF", resistance, "IND_F", "Infantry", "AAF", "flag_AAF", "ENGLISH_US"], 
				["LDF", resistance, "IND_E_F", "Infantry", "LDF", "flag_EAF", "ENGLISH_US"], 
				["MDF", resistance, "IND_F", "Infantry", "MDF", "flag_Altis", "ENGLISH_US"], 
				["FIA", resistance, "IND_G_F", "Infantry", "FIA", "flag_Altis", "ENGLISH_US"], 
				["SYNDIKAT", resistance, "IND_C_F", "Infantry", "SYNDIKAT", "flag_Syndicat", "ENGLISH_US"], 
				
				
			// Western Sahara Factions
							
				["NATO_D", WEST, "BLU_NATO_lxWS", "Infantry", "US Army", "flag_USA", "ENGLISH_US"], 				
				["SFIA", EAST, "OPF_SFIA_lxWS", "Infantry", "SFIA", "lxWS_flag_argana", "ENGLISH_US"], 				
				["OPF_TURA", EAST, "OPF_TURA_lxWS", "Infantry", "Tura", "flag_Syndicat", "ENGLISH_US"], 
				["ION", WEST, "BLU_ION_lxWS", "Infantry", "ION", "flag_USA", "ENGLISH_US"], 
		
			// RHS Factions
			
				["USARMYD", WEST, "rhs_faction_usarmy_d", "rhs_group_nato_usarmy_d_infantry", "US Army", "flag_USA", "ENGLISH_US"],
				["USARMYW", WEST, "rhs_faction_usarmy_wd", "rhs_group_nato_usarmy_wd_infantry", "US Army", "flag_USA", "ENGLISH_US"], 
				["USMCD", WEST, "rhs_faction_usmc_d", "rhs_group_nato_usmc_d_infantry", "USMC", "flag_USA", "ENGLISH_US"],
				["USMCW", WEST, "rhs_faction_usmc_wd", "rhs_group_nato_usmc_wd_infantry", "USMC", "flag_USA", "ENGLISH_US"],
				["USNAVY", WEST, "rhs_faction_usmc_d", "rhs_group_nato_usmc_d_infantry", "USMC", "flag_USA", "ENGLISH_US"],
				["VDV", EAST, "rhs_faction_vdv", "rhs_group_rus_vdv_infantry", "Russian Airborne", "flag_Russia", "ENGLISH_US"],
				["VDV_D", EAST, "rhs_faction_vdv", "rhs_group_rus_vdv_des_infantry", "Russian Airborne", "flag_Russia", "ENGLISH_US"],
				["VMF", EAST, "rhs_faction_vmf", "rhs_group_rus_vmf_infantry_recon", "Russian Marines", "flag_Russia", "ENGLISH_US"],
				["HIDF", WEST, "rhsgref_faction_hidf", "rhsgref_group_hidf_infantry", "HIDF", "flag_Tanoa", "ENGLISH_US", FALSE],
				["CDF", resistance, "rhsgref_faction_cdf_ground", "rhsgref_group_cdf_reg_infantry", "CDF", "flag_EU", "ENGLISH_US", FALSE],
				["SAF", resistance, "rhssaf_faction_army", "rhssaf_group_army_m10_para_infantry", "SAF", "rhssaf_flag_serbia", "ENGLISH_US"],
				["OPF_SAF", EAST, "rhssaf_faction_army_opfor", "rhssaf_group_army_o_m10_para_infantry", "SAF", "rhssaf_flag_serbia", "ENGLISH_US"],
				["SOCOM_D", WEST, "rhs_faction_socom_marsoc", "rhs_group_nato_marsoc_infantry", "US SOCOM", "flag_USA", "ENGLISH_US"],
				["SOCOM_W", WEST, "rhs_faction_socom_marsoc", "rhs_group_nato_marsoc_infantry", "US SOCOM", "flag_USA", "ENGLISH_US"],
				["CHDKZ", EAST, "rhsgref_faction_chdkz", "rhsgref_group_chdkz_insurgents_infantry", "CHDKZ", "rhs_flag_che", "ENGLISH_US"],
			
			
			// BF4 Mode Factions
			
				["BF4_USMC", WEST, "rhs_faction_usmc_d", "rhs_group_nato_usmc_d_infantry", "US Marine Corps", "flag_USA", "ENGLISH_US"],
				["BF4_Russia", EAST, "rhs_faction_vdv", "rhs_group_rus_vdv_infantry", "Russian Army", "flag_Russia", "ENGLISH_US"],
			
			
			// Cup Factions
			
				["CUP_USARMYD", WEST, "CUP_B_US_Army", "Infantry", "US Army", "flag_USA", "ENGLISH_US"],
				["CUP_USARMYW", WEST, "CUP_B_US_Army", "Infantry", "US Army", "flag_USA", "ENGLISH_US"],
				["CUP_SOCOM", WEST, "CUP_B_US_Army", "Infantry", "US SOCOM", "flag_USA", "ENGLISH_US"],
				["CUP_USMCD", WEST, "CUP_B_USMC", "Infantry_DES", "USMC", "flag_USA", "ENGLISH_US"],
				["CUP_USMCW", WEST, "CUP_B_USMC", "Infantry", "USMC", "flag_USA", "ENGLISH_US"],
				["CUP_BAFD", WEST, "CUP_B_GB", "Infantry_DDPM", "British Army", "flag_UK", "ENGLISH_US"],
				["CUP_BAFMTP", WEST, "CUP_B_GB", "Infantry", "British Army", "flag_UK", "ENGLISH_US"],
				["CUP_GERMANYD", WEST, "CUP_B_GER", "Infantry", "German Bundeswehr", "flag_Germany", "ENGLISH_US"],
				["CUP_GERMANYW", WEST, "CUP_B_GER", "Infantry_WDL", "German Bundeswehr", "flag_Germany", "ENGLISH_US"],
				["CUP_CDFD", WEST, "CUP_B_CDF", "Infantry_DST", "CDF", "flag_EU", "ENGLISH_US"],
				["CUP_CDFW", WEST, "CUP_B_CDF", "Infantry_FST", "CDF", "flag_EU", "ENGLISH_US"],
				["CUP_HIL", WEST, "CUP_B_HIL", "Infantry", "HIL", "flag_Tanoa", "ENGLISH_US"],
				["CUP_CZArmyD", WEST, "CUP_B_CZ", "Infantry", "Czech Army ", "flag_CzechRepublic", "ENGLISH_US"],
				["CUP_CZArmyW", WEST, "CUP_B_CZ", "Infantry", "Czech Army ", "flag_CzechRepublic", "ENGLISH_US"],
				["CUP_ION", WEST, "CUP_I_PMC_ION", "Infantry", "ION PMC", "flag_USA", "ENGLISH_US"],
				["CUP_RUS", EAST, "CUP_O_RU", "Infantry_VDV_EMR", "Russian Army", "Flag_Russia", "ENGLISH_US"],
				["CUP_RUS_Spetsnaz", EAST, "CUP_O_RU", "Infantry", "Russian Spetsnaz", "Flag_Russia", "ENGLISH_US"],
				["CUP_CHDKZ", EAST, "CUP_O_ChDKZ", "Infantry", "CHDKZ", "Faction_CUP_CHDKZ", "ENGLISH_US"],
			
			
			// Global Mobilisation Factions
			
				["GM_WESTGERMANY", WEST, "gm_ge_army", "gm_infantry_80", "West German Army", "flag_Germany", "GERMAN_GM"],
				["GM_WESTGERMANY_D", WEST, "gm_ge_army", "gm_infantry_80", "West German Army", "flag_Germany", "GERMAN_GM"],
				["GM_DENMARK", WEST, "gm_dk_army", "gm_infantry_80", "Danish Army", "flag_Denmark", "ENGLISH_US"],
				["GM_EASTGERMANY", EAST, "gm_gc_army", "gm_infantry_80", "East German Army", "gm_marker_flag_GC", "GERMAN_GM"],
				["GM_POLAND", EAST, "gm_pl_army", "gm_infantry_80", "Polish Army", "flag_Poland", "ENGLISH_US"],
				
				
			// Optre Factions
					
				["OPTRE_COVENANT", EAST, "OPTRE_FC_Covenant", "Infantry_Sangheili", "Covenant", "flag_covenant", "ENGLISH_US"],
				["OPTRE_JACKAL", EAST, "OPTRE_FC_Covenant", "Infantry_KigYar", "Covenant", "flag_covenant", "ENGLISH_US"],
				["OPTRE_FLOOD", resistance, "OPF_F", "Infantry", "Flood", "White", "ENGLISH_US"],
				["OPTRE_INSURRECTION", EAST, "OPTRE_Ins", "Infantry_ER", "Insurrectionists", "flag_insurrection", "ENGLISH_US"],
				["OPTRE_UNSCDF", WEST, "OPTRE_UNSC", "Infantry_Marine", "UNSCDF Marines", "flag_unsc", "ENGLISH_US"],
				["OPTRE_UNSCDF_D", WEST, "OPTRE_UNSC", "Infantry_Army_DES", "UNSCDF Army", "flag_unsc", "ENGLISH_US"],
				["OPTRE_UNSCDF_W", WEST, "OPTRE_UNSC", "Infantry_Army_OLI", "UNSCDF Army", "flag_unsc", "ENGLISH_US"],
				["OPTRE_ODST", WEST, "OPTRE_UNSC", "SF_ODST", "UNSCDF ODST", "flag_unsc", "ENGLISH_US"],
			
			
			// 3CB Factions
			
				["3CB_D", WEST, "UK3CB_BAF_Faction_Army_Desert", "Infantry", "British Royal Marines", "flag_UK", "ENGLISH_US"],
				["3CB_MTP", WEST, "UK3CB_BAF_Faction_Army_MTP", "Infantry", "British Royal Marines", "flag_UK", "ENGLISH_US"],
				["3CB_ColdWarBAF", WEST, "UK3CB_BAF_Faction_Army_Woodland", "Infantry", "British Army", "flag_UK", "ENGLISH_US"],
				["3CB_ColdWarBAF_D", WEST, "UK3CB_BAF_Faction_Army_Woodland", "Infantry", "British Army", "flag_UK", "ENGLISH_US"],
				
				["3CB_USArmyLate", WEST, "UK3CB_CW_US_B_LATE", "Infantry", "US Army", "flag_USA", "ENGLISH_US"],
				["3CB_USNavyLate", WEST, "UK3CB_CW_US_B_LATE", "Infantry", "US Navy", "flag_USA", "ENGLISH_US"],
				["3CB_USArmyLate_D", WEST, "UK3CB_CW_US_B_LATE", "Infantry", "US Army", "flag_USA", "ENGLISH_US"],
				["3CB_USNavyLate_D", WEST, "UK3CB_CW_US_B_LATE", "Infantry", "US Navy", "flag_USA", "ENGLISH_US"],
				["3CB_VDVLate", EAST, "UK3CB_CW_SOV_O_LATE", "Infantry", "Russian VDV", "UK3CB_Marker_CW_SOV", "ENGLISH_US"],
			
			
			// Project Uncut Factions
			
				["AUSArmy", WEST, "ADFU", "Infantry", "Austrialian SASR", "flag_aus", "ENGLISH_US"],
				
				
			// NZDF Factions
			
				["NZArmy", WEST, "NZDFMKII", "Infantry", "New Zealand Army", "USP_MARKER_NEW_ZEALAND", "ENGLISH_US"],
			
			
			// BW Mod Factions
			
				["BWFLEK", WEST, "BWA3_Faction_Fleck", "Infantry", "German Bundeswehr", "flag_Germany", "GERMAN_GM"],
				["BWTROP", WEST, "BWA3_Faction_Tropen", "Infantry", "German Bundeswehr", "flag_Germany", "GERMAN_GM"],
				
				
			// FFAA Factions
				
				["FFAA", WEST, "FFAA", "Infantry", "Spanish Army", "flag_Spain", "ENGLISH_US"],
			
			
			// ROARS Factions
			
				["ROARS", WEST, "BLU_F", "Infantry", "Romanian Army", "flag_UN", "ENGLISH_US"],
			
			
			// AMF Factions
			
				["FRENCH", WEST, "France_faction", "Infantry", "French Army", "flag_France", "ENGLISH_US"],
			
			
			// TFC
			
				["CAFT", WEST, "TFC_A3_TEMPERATE", "Infantry_Woodland", "Canadian Army", "flag_Canada", "ENGLISH_US"],
				["CAFT_D", WEST, "TFC_A3_ARID", "Infantry_Arid", "Canadian Army", "flag_Canada", "ENGLISH_US"],
				
				
			// Swedish Factions
			
				["SWEDEArmy", WEST, "sfp_swe_2015", "Infantry", "Swedish Army", "sfp_marker_sweden", "ENGLISH_US"],		
				["SWEDEArmy80", WEST, "sfp_swe_1981", "Infantry", "Swedish Army", "sfp_marker_sweden", "ENGLISH_US"],		

			
			// Finnish factions
			
				["FINLANDArmy", WEST, "ffp_fin_woodland", "Infantry", "Finnish Army", "ffp_flag", "ENGLISH_US"],
			
			
			// Czech Factions
			
				["ACR_W", WEST, "ACR_A3", "Infantry", "Czech Army", "flag_CzechRepublic", "ENGLISH_US"],
				["ACR_D", WEST, "ACR_A3_Des", "Infantry", "Czech Army", "flag_CzechRepublic", "ENGLISH_US"],
				
			
			// Japan Factions
			
				["JSDF", WEST, "gac_JGSDF", "Infantry", "Japan Self-Defense Force", "Jp_marker_Base", "ENGLISH_US"],
				["JSDF_D", WEST, "gac_JGSDF", "Infantry", "Japan Self-Defense Force", "Jp_marker_Base", "ENGLISH_US"],
			
			
			// Pedagne Factions
			
				["ITALYArmy", WEST, "Pedagne_Mod", "Infantry", "Italian Army", "flag_Italy", "ENGLISH_US"],

			
			// Vietnam Factions
			
				["VN_USArmy", WEST, "VN_MACV", "vn_b_group_men_army", "US Army", "vn_flag_usa", "ENGLISH_US"],
				["VN_AusArmy", WEST, "VN_AUS", "vn_b_group_men_aus_army_70", "Australian Army", "vn_flag_aus", "ENGLISH_US"],
				["VN_AusSAS", WEST, "VN_AUS", "vn_b_group_men_aus_sas_70", "Australian SAS", "vn_flag_aus", "ENGLISH_US"],
				["VN_USMC", WEST, "VN_MACV", "vn_b_group_men_army", "USMC", "vn_flag_usa", "ENGLISH_US"],
				["VN_SEALS", WEST, "VN_MACV", "vn_b_group_men_seal", "US Navy SEALS", "vn_flag_usa", "ENGLISH_US"],
				["VN_MACV", WEST, "VN_MACV", "vn_b_group_men_sog", "US MACV", "vn_flag_usa", "ENGLISH_US"],
				["VN_ARVN", WEST, "VN_ARVN", "vn_i_group_men_army", "ARVN", "vn_flag_arvn", "ENGLISH_US"],
				["VN_PAVN", EAST, "VN_PAVN", "vn_o_group_men_nva_field", "PAVN", "vn_flag_pavn", "ENGLISH_US"],
				["VN_VC", EAST, "VN_VC", "vn_o_group_men_vc", "Viet Cong", "vn_flag_vc", "ENGLISH_US"],
				["VN_PL", EAST, "VN_PL", "vn_o_group_men_pl", "Pathet Lao", "vn_flag_lao", "ENGLISH_US"],
			
			
			// Iran Factions
			
				["AJA", resistance, "LOP_IRAN", "Infantry", "Iranian Army", "lop_flag_iran", "ENGLISH_US"],
			
			
			// North Korea Factions
			
				["KPA", EAST, "rhs_faction_NK", "Infantry", "Korean Peoples Army", "USP_MARKER_NORTH_KOREA", "ENGLISH_US"],
				
				
			// Roman Factions
			
				["RomanLegion", WEST, "JMSL_roman_faction", "Infantry", "Roman Legion", "flag_italy", "ENGLISH_US"],
				
				
			// Ukraine Factions
			
				["UKRArmy", WEST, "b_afougf_groups", "Infantry", "Ukraine Army", "FlagUkraine", "ENGLISH_US"],
			
			// Aegis Factions
			
				["Aegis_AAF", resistance, "IND_F", "Infantry", "AAF", "flag_Altis", "ENGLISH_US"],
				["Aegis_BAF_T", WEST, "BLU_A_tna_F", "Infantry", "British Army", "flag_UK", "ENGLISH_US"],
				["Aegis_BAF", WEST, "BLU_A_F", "Infantry", "British Army", "flag_UK", "ENGLISH_US"],
				["Aegis_BAF_W", WEST, "BLU_A_wdl_F", "Infantry", "British Army", "flag_UK", "ENGLISH_US"],
				["Aegis_Bundeswehr", WEST, "Atlas_BLU_G_F", "Infantry", "German Bundeswehr", "flag_Germany", "ENGLISH_US"],
				["Aegis_China", EAST, "OPF_T_F", "Infantry", "Chinese Army", "flag_China", "ENGLISH_US"],
				["Aegis_Iran", EAST, "OPF_F", "Infantry", "Iranian Army", "flag_Iran", "ENGLISH_US"],
				["Aegis_Israel", resistance, "Atlas_IND_I_F", "Infantry", "Israeli Army", "flag_Israel", "ENGLISH_US"],
				["Aegis_LDF", resistance, "IND_E_F", "Infantry", "LDF", "flag_EAF", "ENGLISH_US"],
				["Aegis_Russia", EAST, "OPF_R_ard_F", "Infantry", "Russian Army", "flag_Russia", "ENGLISH_US"],
				["Aegis_Russia_W", EAST, "OPF_R_F", "Infantry", "Russian Army", "flag_Russia", "ENGLISH_US"],
				["Aegis_US_T", WEST, "BLU_T_F", "Infantry", "US Army", "flag_USA", "ENGLISH_US"],
				["Aegis_US", WEST, "BLU_F", "Infantry", "US Army", "flag_USA", "ENGLISH_US"],
				["Aegis_US_W", WEST, "BLU_W_F", "Infantry", "US Army", "flag_USA", "ENGLISH_US"],
			
			
			// CSLA Factions
			
				["CSLA", EAST, "CSLA", "CSLA_MotoriflemanUnits", "CSLA", "flag_CzechRepublic", "ENGLISH_US"],
				["CSLA_USMC", WEST, "US85", "US85_InfantryUnits", "USMC", "flag_USA", "ENGLISH_US"],
			

			// Opposition SW Factions
			
				["OPPOSITION_SW_RA", WEST, "REBELLION", "SWOP_group_REB_inf_desert", "Rebel Alliance", "flag_NATO", "ENGLISH_US"],
				["OPPOSITION_SW_GE", EAST, "EMPIRE", "SWOP_group_IMP_inf_storm", "Galactic Empire", "flag_CSAT", "ENGLISH_US"],
			
			
			// 3AS Factions
			
				["3AS_GAR", WEST, "BLU_F", "Infantry", "Grand Army Of The Republic", "flag_NATO", "ENGLISH_US"],		
			
			
			// WW2 Factions
			
				["WW2_USArmy", resistance, "fow_usa", "Infantry", ["US Army", "US Army Air Force"], "flag_USA", "ENGLISH_US"],
				["WW2_USArmy_W", resistance, "LIB_US_ARMY_w", "Infantry", ["US Army", "US Army Air Force"], "flag_USA", "ENGLISH_US"],
				["WW2_USArmy_D", resistance, "LIB_NAC", "Infantry", ["US Army", "US Army Air Force"], "flag_USA", "ENGLISH_US"],
				["WW2_USAirborne", resistance, "fow_usa", "Infantry", ["US Airborne", "US Army Air Force"], "flag_USA", "ENGLISH_US"],
				["WW2_USNavy", resistance, "fow_usa_p", "Infantry", ["US Marine Corps", "US Navy"], "flag_USA", "ENGLISH_US"],
				["WW2_USMarauders", resistance, "fow_usa_p", "Infantry", ["US Merril's Marauders", "US Navy"], "flag_USA", "ENGLISH_US"],
				["WW2_USRangers", resistance, "LIB_US_RANGERS", "Infantry", ["US Rangers", "US Army Air Force"], "flag_USA", "ENGLISH_US"],
				
				["WW2_British", resistance, "LIB_UK_ARMY", "Infantry", ["British Army", "British Royal Air Force"], "flag_UK", "ENGLISH_BRITISH"],
				["WW2_British_SEAC", resistance, "LIB_UK_ARMY", "Infantry", ["British Army SEAC", "British Royal Air Force"], "flag_UK", "ENGLISH_BRITISH"],
				["WW2_BritAirborne", resistance, "LIB_UK_AB", "Infantry", ["British Airborne", "British Royal Air Force"], "flag_UK", "ENGLISH_BRITISH"],
				["WW2_DesertRats", resistance, "LIB_UK_DR", "Infantry", ["British Army", "British Royal Air Force"], "flag_UK", "ENGLISH_BRITISH"],
				["WW2_British_W", resistance, "LIB_UK_ARMY_w", "Infantry", ["British Army", "British Royal Air Force"], "flag_UK", "ENGLISH_BRITISH"],
				["WW2_Commandos", resistance, "fow_uk", "Infantry", ["British Commandos", "British Royal Air Force"], "flag_UK", "ENGLISH_BRITISH"],
				["WW2_SAS", resistance, "fow_uk", "Infantry", ["British SAS", "British Royal Air Force"], "flag_UK", "ENGLISH_BRITISH"],
				["WW2_AUS", resistance, "fow_aus", "Infantry", ["Australian Army", "Royal Australian Air Force"], "WW2MAustralia", "ENGLISH_BRITISH"],
				["WW2_CAN", resistance, "fow_uk", "Infantry", ["Canadian Army", "Royal Canadian Air Force"], "WW2MCanada", "ENGLISH_BRITISH"],
				
				["WW2_Heer", WEST, "LIB_WEHRMACHT", "Infantry", ["German Heer", "German Luftwaffe"], "LIB_Faction_WEHRMACHT", "GERMAN_LIB"],
				["WW2_Heer_W", WEST, "LIB_WEHRMACHT_w", "Infantry", ["German Heer", "German Luftwaffe"], "LIB_Faction_WEHRMACHT", "GERMAN_LIB"],
				["WW2_FSJ", WEST, "LIB_FSJ_Battle", "Infantry", ["German Fallschirmjäger", "German Luftwaffe"], "LIB_Faction_WEHRMACHT", "GERMAN_LIB"],
				["WW2_FSJ_DAK", WEST, "LIB_FSJ_DAK", "Infantry", ["German Fallschirmjäger", "German Luftwaffe"], "LIB_Faction_WEHRMACHT", "GERMAN_LIB"],
				["WW2_DAK", WEST, "LIB_DAK", "Infantry", ["German Afrika Korps", "German Luftwaffe"], "LIB_Faction_WEHRMACHT", "GERMAN_LIB"],
				["WW2_SS", WEST, "SG_STURM", "Infantry", ["German Waffen SS", "German Luftwaffe"], "LIB_Faction_WEHRMACHT", "GERMAN_LIB"],
				["WW2_PanzerLehr", WEST, "LIB_WEHRMACHT", "Infantry", ["German Panzer Lehr", "German Luftwaffe"], "LIB_Faction_WEHRMACHT", "GERMAN_LIB"],
				
				["WW2_Japan", WEST, "fow_ija", "Infantry", ["Imperial Japanese Army", "Imperial Japanese Navy"], "WW2MJapan", "JAPANESE"],
				
				["WW2_Soviet", EAST, "LIB_RKKA", "Infantry", ["Soviet Red Army", "Soviet Red Air Force"], "WW2MSovietUnion", "RUSSIAN"],
				["WW2_Soviet_W", EAST, "LIB_RKKA_w", "Infantry", ["Soviet Red Army", "Soviet Red Air Force"], "WW2MSovietUnion", "RUSSIAN"],	

			// Zombies
				
				["Survivors", WEST, "BLU_F", "Infantry", "Survivors", "flag_USA", "ENGLISH_US"],
				["Survivors_OPF", EAST, "OPF_G_F", "Infantry", "Survivors (Hostile)", "flag_EnochLooters", "ENGLISH_US"],
				["Zombies", resistance, "WBK_AI_ZHAMBIES", "Infantry", "Zombies", "flag_Spetsnaz", "ENGLISH_US"]	
		
		];
		
		
		BEW_v_FactionIDs = [];

		{
		
			_factionTag = _x select 0;
		
			BEW_v_FactionIDs pushBack _factionTag;
		
		}forEach _allFactions;
		
		_allFactions