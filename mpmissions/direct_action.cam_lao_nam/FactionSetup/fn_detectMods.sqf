	// RHS
	
		if ((isClass(configfile >> "CfgMods" >> "RHSUSAF")) and (isClass(configfile >> "CfgMods" >> "RHSAFRF")) and (isClass(configfile >> "CfgMods" >> "RHSGREF")) and (isClass(configfile >> "CfgMods" >> "RHSSAF"))) then {
		
			BEW_v_RHS_Running = TRUE;
			
		}else{
			
			BEW_v_RHS_Running = FALSE;
			
		};
		
		publicVariable "BEW_v_RHS_Running";
	
	
	// CUP
	
		if (isClass(configfile >> "CfgMods" >> "CUP_Units")) then {
		
			BEW_v_CUP_Running = TRUE;
			
		}else{
		
			BEW_v_CUP_Running = FALSE;
		
		};
	
		publicVariable "BEW_v_CUP_Running";
		
	
	// Prairie Fire
			
		if (isClass(configfile >> "CfgMods" >> "vn")) then {
		
			BEW_v_VN_Running = TRUE;
			
		}else{
		
			BEW_v_VN_Running = FALSE;
		
		};
	
		publicVariable "BEW_v_VN_Running";
		
	
	// Global Mobilization
	
		if (isClass(configfile >> "CfgMods" >> "gm")) then {
		
			BEW_v_GM_Running = TRUE;
			
		}else{
		
			BEW_v_GM_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_GM_Running";
	
	
	// Unsung
	
		if (isClass(configfile >> "CfgMods" >> "UNSUNG")) then {
		
			BEW_v_Unsung_Running = TRUE;
			
		}else{
		
			BEW_v_Unsung_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_Unsung_Running";
		
		
	// Opposition Star Wars
	
		if (isClass(configfile >> "CfgMods" >> "SWOP_MODs")) then {
		
			BEW_v_OppositionSW_Running = TRUE;
			
		}else{
		
			BEW_v_OppositionSW_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_OppositionSW_Running";
	
	
	// CSLA
	
		if (isClass(configfile >> "CfgMods" >> "CSLA")) then {
		
			BEW_v_CSLA_Running = TRUE;
			
		}else{
		
			BEW_v_CSLA_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_CSLA_Running";
		
	
	
	// OPTRE
		
		if ((isClass(configfile >> "CfgMods" >> "OPTRE")) and (isClass(configfile >> "CfgMods" >> "OPTRE_FC"))) then {
		
			BEW_v_OPTRE_Running = TRUE;
			
		}else{
		
			BEW_v_OPTRE_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_OPTRE_Running";
		
	
	
	// AEGIS
		
		if (isClass(configfile >> "CfgMods" >> "Aegis")) then {
		
			BEW_v_AEGIS_Running = TRUE;
			
		}else{
		
			BEW_v_AEGIS_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_AEGIS_Running";
		
		
		
	// 3CB BAF
		
		if ((isClass(configfile >> "CfgMods" >> "RKSL_Attachments")) and (isClass(configfile >> "CfgMods" >> "UK3CB_BAF_Equipment")) and (isClass(configfile >> "CfgMods" >> "UK3CB_BAF_Units")) and (isClass(configfile >> "CfgMods" >> "UK3CB_BAF_Vehicles")) and (isClass(configfile >> "CfgMods" >> "UK3CB_BAF_Weapons")) and (isClass(configfile >> "CfgPatches" >> "UK3CB_BAF_Vehicles_Hercules"))) then {
		
			BEW_v_3CB_BAF_Running = TRUE;
			
		}else{
		
			BEW_v_3CB_BAF_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_3CB_BAF_Running";
		
		
		
	// SFP
		
		if ((isClass(configfile >> "CfgMods" >> "sfp"))) then {
		
			BEW_v_SFP_Running = TRUE;
			
		}else{
		
			BEW_v_SFP_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_SFP_Running";
		
		
		
	// FFP
		
		if ((isClass(configfile >> "CfgMods" >> "sfp")) and (isClass(configfile >> "CfgMods" >> "ffp"))) then {
		
			BEW_v_FFP_Running = TRUE;
			
		}else{
		
			BEW_v_FFP_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_FFP_Running";
		
		
		
	// Project Uncut
		
		if ((isClass(configfile >> "CfgMods" >> "ADFU")) and BEW_v_3CB_BAF_Running) then {
		
			BEW_v_ProjectUncut_Running = TRUE;
			
		}else{
		
			BEW_v_ProjectUncut_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_ProjectUncut_Running";
		
		
		
	// NZDF
		
		if ((isClass(configfile >> "CfgMods" >> "NZDFMKII")) and (isClass(configfile >> "CfgMods" >> "USP_FlagsMarkers")) and BEW_v_3CB_BAF_Running) then {
		
			BEW_v_NZDF_Running = TRUE;
			
		}else{
		
			BEW_v_NZDF_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_NZDF_Running";
		
		
		
	// FFAA
		
		if (isClass(configfile >> "CfgMods" >> "FFAAMOD")) then {
		
			BEW_v_FFAA_Running = TRUE;
			
		}else{
		
			BEW_v_FFAA_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_FFAA_Running";
		
		
		
	// ACR
		
		if (isClass(configfile >> "CfgMods" >> "ACR_A3")) then {
		
			BEW_v_ACR_Running = TRUE;
			
		}else{
		
			BEW_v_ACR_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_ACR_Running";
		
		
		
	// AMF
		
		if (isClass(configfile >> "CfgMods" >> "AMF_AMF_DLC")) then {
		
			BEW_v_AMF_Running = TRUE;
			
		}else{
		
			BEW_v_AMF_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_AMF_Running";
		
		
		
	// Pedagne
		
		if (isClass(configfile >> "CfgPatches" >> "ASZ_Weapons_A3")) then {
		
			BEW_v_Pedagne_Running = TRUE;
			
		}else{
		
			BEW_v_Pedagne_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_Pedagne_Running";
		
		
		
	// JSDF
		
		if ((isClass(configfile >> "CfgPatches" >> "Japan_Units")) and (isClass(configfile >> "CfgPatches" >> "gac_JSDF_common"))) then {
		
			BEW_v_JSDF_Running = TRUE;
			
		}else{
		
			BEW_v_JSDF_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_JSDF_Running";
		
		
		
	// KPA
		
		if ("rhs_kpa_flag" in activatedAddons) then {
		
			BEW_v_KPA_Running = TRUE;
			
		}else{
		
			BEW_v_KPA_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_KPA_Running";
		
		
		
	// BWMod
		
		if (isClass(configfile >> "CfgMods" >> "BWA3")) then {
		
			BEW_v_BWMod_Running = TRUE;
			
		}else{
		
			BEW_v_BWMod_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_BWMod_Running";
		
		
		
	// TFC
		
		if (isClass(configfile >> "CfgMods" >> "TFC")) then {
		
			BEW_v_TFC_Running = TRUE;
			
		}else{
		
			BEW_v_TFC_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_TFC_Running";
		
		
		
	// IAF
		
		if (isClass(configfile >> "CfgMods" >> "LOP_LeightsOPFOR")) then {
		
			BEW_v_IAF_Running = TRUE;
			
		}else{
		
			BEW_v_IAF_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_IAF_Running";
		


	// 3CB Factions
		
		if ("uk3cb_factions_equipment_vests" in activatedAddons) then {
		
			BEW_v_3CB_Factions_Running = TRUE;
			
		}else{
		
			BEW_v_3CB_Factions_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_3CB_Factions_Running";
		
		
		
	// Project Livonia
		
		if ("uk3cb_factions_equipment_vests" in activatedAddons) then {
		
			BEW_v_ProjectLivonia_Running = TRUE;
			
		}else{
		
			BEW_v_ProjectLivonia_Running = FALSE;
		
		};
		
		publicVariable "BEW_v_ProjectLivonia_Running";
		
	
	
	// IFA3
		
		if (isClass(configfile >> "CfgMods" >> "IF")) then {
		
			IFA3_Running = TRUE;
			
		}else{
		
			IFA3_Running = FALSE;
		
		};
		
		publicVariable "IFA3_Running";
		
		
		
	// FOW
		
		if (isClass(configfile >> "CfgMods" >> "fow_mod")) then {
		
			FOW_Running = TRUE;
			
		}else{
		
			FOW_Running = FALSE;
		
		};
		
		publicVariable "FOW_Running";
		
		
	// Ukraine Factions
		
		if (isClass(configfile >> "CfgPatches" >> "ua_factions_sfx")) then {
		
			UKR_Running = TRUE;
			
		}else{
		
			UKR_Running = FALSE;
		
		};
		
		publicVariable "UKR_Running";
		
		
	// Webknights Zombies
	
		if ((isClass(configfile >> "CfgPatches" >> "WBK_ZombieCreatures"))) then {
			
			WKZombies_Running = true;
			
		}else{
		
			WKZombies_Running = false;
		
		};
		
		
		
		
		
		
		