
	_worldName = toUpper worldName;

	if (!(_worldName == (toUpper "enoch"))) exitWith {};
	

// USE THIS TO FORCE VANILLA

	forceVanilla = false;
		publicVariable "forceVanilla";
		
		
// DETECT MODS RUNNING
	
	[] call BEW_FNC_DetectMods;
		
		
// COPY AND PASTE FACTION STRINGS BELOW
		
		BEW_v_modPresetString = "";
		
		switch (true) do {
		
			// Default Vanilla Setup
			
				case ((!BEW_v_RHS_Running and !(BEW_v_CUP_Running) and !(BEW_v_GM_Running) and !(BEW_v_VN_Running) and !(BEW_v_Aegis_Running) and !(BEW_v_OPTRE_Running) and !(WW2_Running) and !(isClass(configfile >> "CfgMods" >> "SWOP_MODs"))) or (forceVanilla))	:	{
				
					bluFaction				=	"NATO_W";			// Main Blufor Faction
					blu_AltFaction			=	"NATO_T";			// Alt Blufor Faction (Unused)
					blu_SofFaction			=	"CTRG";				// Blufor SOF Faction
					opf_1Faction			=	"CSAT_T";			// Main Opfor Faction 1
					opf_2Faction			=	"CSAT_T";			// Main Opfor Faction 2
					opf_SOFFaction			=	"SPETSNAZ";			// Opfor SOF Faction
					ind_1Faction			=	"AAF";				// Main Independant Faction 1
					ind_2Faction			=	"NATO_T";			// Main Independant Faction 2
					rebel_1Faction			=	"FIA";				// Rebel Faction 1
					rebel_2Faction			=	"LDF";				// Rebel Faction 2
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_Vanilla";
										
					systemchat "Mission Configured For Vanilla";
						
				};
				
				
			// Aegis Setup
		
				case ((isClass(configfile >> "CfgMods" >> "Aegis")) and !(forceVanilla))	:	{

						bluFaction				=	"Aegis_US";				// Main Blufor Faction
						blu_AltFaction			=	"Aegis_US_T";			// Alt Blufor Faction (Unused)
						blu_SofFaction			=	"Aegis_Bundeswehr";		// Blufor SOF Faction
						opf_1Faction			=	"Aegis_Iran";			// Main Opfor Faction 1
						opf_2Faction			=	"Aegis_Russia";			// Main Opfor Faction 2
						opf_SOFFaction			=	"Aegis_Russia_W";		// Opfor SOF Faction
						ind_1Faction			=	"Aegis_BAF";			// Main Independant Faction 1
						ind_2Faction			=	"Aegis_US_T";			// Main Independant Faction 2
						rebel_1Faction			=	"Aegis_AAF";			// Rebel Faction 1
						rebel_2Faction			=	"Aegis_LDF";			// Rebel Faction 2
					
					systemchat "Mission Configured For AEGIS";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_AEGIS";
					
				};
				
				
			// RHS Setup
		
				case (BEW_v_RHS_Running and !(forceVanilla))	:	{

					bluFaction				=	"USARMYW";			// Main Blufor Faction
					blu_AltFaction			=	"USMCW";			// Alt Blufor Faction (Unused)
					blu_SofFaction			=	"USMCW";			// Blufor SOF Faction
					opf_1Faction			=	"VDV";				// Main Opfor Faction 1
					opf_2Faction			=	"OPF_SAF";			// Main Opfor Faction 2
					opf_SOFFaction			=	"VDV";				// Opfor SOF Faction
					ind_1Faction			=	"SOCOM_W";			// Main Independant Faction 1
					ind_2Faction			=	"USMCW";			// Main Independant Faction 2
					rebel_1Faction			=	"CDF";				// Rebel Faction 1
					rebel_2Faction			=	"HIDF";				// Rebel Faction 2
					
					systemchat "Mission Configured For RHS";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_RHS";
					
				};
				
				
			// CUP Setup
		
				case ((isClass(configfile >> "CfgMods" >> "CUP_Units")) and !(forceVanilla))	:	{

					bluFaction				=	"CUP_USARMYD";		// Main Blufor Faction
					blu_AltFaction			=	"CUP_USMCD";		// Alt Blufor Faction (Unused)
					blu_SofFaction			=	"CUP_SOCOM";		// Blufor SOF Faction
					opf_1Faction			=	"CUP_RUS";			// Main Opfor Faction 1
					opf_2Faction			=	"CUP_CHDKZ";		// Main Opfor Faction 2
					opf_SOFFaction			=	"CUP_RUS_Spetsnaz";	// Opfor SOF Faction
					ind_1Faction			=	"CUP_BAFMTP";		// Main Independant Faction 1
					ind_2Faction			=	"CUP_USMCD";		// Main Independant Faction 2
					rebel_1Faction			=	"CUP_CZArmyD";		// Rebel Faction 1
					rebel_2Faction			=	"CUP_GERMANYW";		// Rebel Faction 2
					
					systemchat "Mission Configured For CUP";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_CUP";
					
				};
							
				
			// PF: SOG Setup
		
				case (BEW_v_VN_Running and (isClass(configfile >> "CfgMods" >> "UNSUNG")) and !(forceVanilla))	:	{

					bluFaction				=	"VN_USArmy";		// Main Blufor Faction
					blu_AltFaction			=	"VN_USMC";			// Alt Blufor Faction (Unused)
					blu_SofFaction			=	"VN_MACV";			// Blufor SOF Faction
					opf_1Faction			=	"VN_PAVN";			// Main Opfor Faction 1
					opf_2Faction			=	"VN_VC";			// Main Opfor Faction 2
					opf_SOFFaction			=	"VN_PAVN";			// Opfor SOF Faction
					ind_1Faction			=	"VN_ARVN";			// Main Independant Faction 1
					ind_2Faction			=	"VN_USMC";			// Main Independant Faction 2
					rebel_1Faction			=	"VN_USArmy";		// Rebel Faction 1
					rebel_2Faction			=	"VN_USArmy";		// Rebel Faction 2
					
					systemchat "Mission Configured For S.O.G. Prairie Fire + Unsung";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_SOG";
					
				};
						
				
			// OPTRE Setup
		
				case (BEW_v_OPTRE_Running and !(forceVanilla))	:	{

					bluFaction			=	"OPTRE_ODST";		// Main Blufor Faction
					blu_AltFaction		=	"OPTRE_UNSCDF";		// Alt Blufor Faction (Unused)
					blu_SofFaction		=	"OPTRE_ODST";		// Blufor SOF Faction
					opf_1Faction		=	"OPTRE_INSURRECTION";	// Main Opfor Faction 1
					opf_2Faction		=	"OPTRE_INSURRECTION";	// Main Opfor Faction 2
					opf_SOFFaction		=	"OPTRE_COVENANT";	// Opfor SOF Faction
					ind_1Faction		=	"OPTRE_UNSCDF";		// Main Independant Faction 1
					ind_2Faction		=	"OPTRE_UNSCDF";		// Main Independant Faction 2
					rebel_1Faction		=	"OPTRE_UNSCDF";		// Rebel Faction 1
					rebel_2Faction		=	"OPTRE_UNSCDF";		// Rebel Faction 2
					
					systemchat "Mission Configured For OPTRE";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_OPTRE_FC";
					
				};
				
				
			// Opposition Star Wars Setup
		
				case ((isClass(configfile >> "CfgMods" >> "SWOP_MODs")) and !(forceVanilla))	:	{

					bluFaction			=	"OPPOSITION_SW_RA";		// Main Blufor Faction
					blu_AltFaction		=	"OPPOSITION_SW_RA";		// Alt Blufor Faction (Unused)
					blu_SofFaction		=	"OPPOSITION_SW_RA";		// Blufor SOF Faction
					opf_1Faction		=	"OPPOSITION_SW_GE";		// Main Opfor Faction 1
					opf_2Faction		=	"OPPOSITION_SW_GE";		// Main Opfor Faction 2
					opf_SOFFaction		=	"OPPOSITION_SW_GE";		// Opfor SOF Faction
					ind_1Faction		=	"OPPOSITION_SW_RA";		// Main Independant Faction 1
					ind_2Faction		=	"OPPOSITION_SW_RA";		// Main Independant Faction 2
					rebel_1Faction		=	"OPPOSITION_SW_RA";		// Rebel Faction 1
					rebel_2Faction		=	"OPPOSITION_SW_RA";		// Rebel Faction 2
					
					systemchat "Mission Configured For Opposition Star Wars";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_OPPOSITION_SW";
					
				};
				
				
			// WW2 Setup
		
				case (WW2_Running and BEW_v_WW2 and !(forceVanilla))	:	{

					bluFaction			=	"WW2_USArmy";		// Main Blufor Faction
					blu_AltFaction		=	"WW2_USNavy";		// Alt Blufor Faction (Unused)
					blu_SofFaction		=	"WW2_USAirborne";	// Blufor SOF Faction
					opf_1Faction		=	"WW2_Heer";			// Main Opfor Faction 1
					opf_2Faction		=	"WW2_SS";			// Main Opfor Faction 2
					opf_SOFFaction		=	"WW2_FSJ";			// Opfor SOF Faction
					ind_1Faction		=	"WW2_BritAirborne";		// Main Independant Faction 1
					ind_2Faction		=	"WW2_USNavy";		// Main Independant Faction 2
					rebel_1Faction		=	"WW2_USRangers";	// Rebel Faction 1
					rebel_2Faction		=	"WW2_British";		// Rebel Faction 2
					
					systemchat "Mission Configured For Opposition WW2";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_WW2";
					
				};

		};
		
		
// DON'T TOUCH THIS
		
	
	// British Army
		
		if (BEW_v_RHS_Running and BEW_v_3CB_BAF_Running and !(forceVanilla)) then {

			_3CB_Factions = ["3CB_D", "3CB_MTP"];
			
			if !(bluFaction in _3CB_Factions) then {
			
				bluFaction = "3CB_MTP";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_3CB_D";
			
			};

		};
	
	
	// German Bundeswehr
		
		if (BEW_v_RHS_Running and (isClass(configfile >> "CfgMods" >> "BWA3")) and !(forceVanilla)) then {

			_BWMod_Factions = ["BWFLEK", "BWTROP"];
			
			if !(bluFaction in _BWMod_Factions) then {
			
				bluFaction = "BWFLEK";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_BWMod";
			
			};

		};
		
		
	// Spanish Army
		
		if (BEW_v_RHS_Running and (isClass(configfile >> "CfgMods" >> "FFAAMOD")) and !(forceVanilla)) then {

			_FFAA_Factions = ["FFAA"];
			
			if !(bluFaction in _FFAA_Factions) then {
			
				bluFaction = "FFAA";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_FFAA";
			
			};

		};
		
	
	// French Army
		
		if (BEW_v_RHS_Running and (isClass(configfile >> "CfgMods" >> "AMF_AMF_DLC")) and !(forceVanilla)) then {

			_FRENCH_Factions = ["FRENCH"];
			
			if !(bluFaction in _FRENCH_Factions) then {
			
				bluFaction = "FRENCH";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_AMF";
			
			};

		};
		
		
	// Canadian Army
		
		if (BEW_v_RHS_Running and (isClass(configfile >> "CfgMods" >> "TFC")) and !(forceVanilla)) then {

			_TFC_Factions = ["CAFT"];
			
			if !(bluFaction in _TFC_Factions) then {
			
				bluFaction = "CAFT";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_TFC";
			
			};

		};


	// Australian Army 
		
		if (BEW_v_RHS_Running and (isClass(configfile >> "CfgMods" >> "ADFU")) and BEW_v_3CB_BAF_Running and !(forceVanilla)) then {

			_ADFU_Factions = ["AUSArmy"];		
			
			if !(bluFaction in _ADFU_Factions) then {
			
				bluFaction = "AUSArmy";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_ProjectUncut";
			
			};

		};


	// New Zealand Army
		
		if (BEW_v_RHS_Running and (isClass(configfile >> "CfgMods" >> "NZDFMKII")) and BEW_v_3CB_BAF_Running and !(forceVanilla)) then {

			_NZDF_Factions = ["NZArmy"];		
			
			if !(bluFaction in _NZDF_Factions) then {
			
				bluFaction = "NZArmy";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_NZDF";
			
			};

		};
		
		
	// Swedish Army
		
		if (BEW_v_RHS_Running and BEW_v_SFP_Running and !(forceVanilla)) then {

			_SFP_Factions = ["SWEDEArmy"];		
			
			if !(bluFaction in _SFP_Factions) then {
			
				bluFaction = "SWEDEArmy";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_SFP";
			
			};
			
			// Finnish Army
		
				if (BEW_v_FFP_Running) then {

					_SFP_Factions = ["SWEDEArmy", "FINLANDArmy"];		

					blu_SofFaction = "FINLANDArmy";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_FFP";

				};

		};
	
	
	// Italy Army
		
		if (BEW_v_RHS_Running and (isClass(configfile >> "CfgFactionClasses" >> "PedagneMOD")) and !(forceVanilla)) then {

			_Pedagne_Factions = ["ITALYArmy"];		
			
			if !(bluFaction in _Pedagne_Factions) then {
			
				bluFaction = "ITALYArmy";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_Pedagne";
			
			};

		};
		
	
	// Czech Army
		
		if (BEW_v_RHS_Running and (isClass(configfile >> "CfgFactionClasses" >> "ACR_A3")) and !(forceVanilla)) then {

			_ACR_Factions = ["ACR_W", "ACR_D"];		
			
			if !(bluFaction in _ACR_Factions) then {
			
				bluFaction = "ACR_W";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_ACR";
			
			};

		};
		
		
	// Japan Army
		
		if (BEW_v_RHS_Running and ("gac_jsdf_xeh" in activatedAddons) and ("jpa_jsdf_xeh" in activatedAddons) and !(forceVanilla)) then {

			_JSDF_Factions = ["JSDF", "JSDF_D"];		
			
			if !(bluFaction in _JSDF_Factions) then {
			
				bluFaction = "JSDF";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_JSDF";
			
			};

		};
		
		
	// North Korean Army
		
		if ((BEW_v_RHS_Running and ("rhs_kpa_flag" in activatedAddons)) and !(forceVanilla)) then {

			_KPA_Factions = ["KPA"];		
			
			if !(opf_2Faction in _KPA_Factions) then {
			
				opf_2Faction = "KPA";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_KPA";
			
			};

		};
		

	// Iranian Army
		
		if ((BEW_v_RHS_Running and (isClass(configfile >> "CfgMods" >> "LOP_LeightsOPFOR"))) and !(forceVanilla)) then {

			_IAF_Factions = ["AJA"];		
			
			if !(opf_2Faction in _IAF_Factions) then {
			
				opf_2Faction = "AJA";
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_IAF";
			
			};

		};
		
		
	// Multi Mod Presets

	
		// Commonwealth
			
			if (BEW_v_RHS_Running and (isClass(configfile >> "CfgMods" >> "ADFU")) and (isClass(configfile >> "CfgMods" >> "TFC")) and (isClass(configfile >> "CfgMods" >> "NZDFMKII")) and BEW_v_3CB_BAF_Running and !(forceVanilla)) then {

					bluFaction = "3CB_MTP";
					blu_altFaction = "AUSArmy";
					ind_1Faction = "CAFT";
					ind_2Faction = "USMCD";
					blu_SofFaction = "SOCOM_D";
					rebel_1Faction = "USARMYD";
					rebel_2Faction = "NZArmy";
		
			};
		

		// European Union
			
			if (BEW_v_RHS_Running and (isClass(configfile >> "CfgFactionClasses" >> "PedagneMOD")) and (isClass(configfile >> "CfgMods" >> "AMF_AMF_DLC")) and (isClass(configfile >> "CfgMods" >> "FFAAMOD")) and (isClass(configfile >> "CfgMods" >> "BWA3")) and (isClass(configfile >> "CfgMods" >> "sfp")) and !(isClass(configfile >> "CfgMods" >> "ACR_A3")) and !(forceVanilla)) then {

					bluFaction = "BWFLEK";
					blu_altFaction = "FRENCH";
					ind_1Faction = "FFAA";
					ind_2Faction = "ITALYArmy";
					blu_SofFaction = "FRENCH";
					rebel_1Faction = "SOCOM_W";
					rebel_2Faction = "SWEDEArmy";
		
			};

			
		// European Union w/ Czech Republic
			
			if (BEW_v_RHS_Running and (isClass(configfile >> "CfgFactionClasses" >> "PedagneMOD")) and (isClass(configfile >> "CfgMods" >> "AMF_AMF_DLC")) and (isClass(configfile >> "CfgMods" >> "FFAAMOD")) and (isClass(configfile >> "CfgMods" >> "BWA3")) and (isClass(configfile >> "CfgMods" >> "sfp")) and (isClass(configfile >> "CfgMods" >> "ACR_A3")) and !(forceVanilla)) then {

					bluFaction = "BWFLEK";
					blu_altFaction = "FRENCH";
					ind_1Faction = "FFAA";
					ind_2Faction = "ITALYArmy";
					blu_SofFaction = "SOCOM_W";
					rebel_1Faction = "ACR_W";
					rebel_2Faction = "SWEDEArmy";
		
			};
			
		// Facific Forces
				
			if (
			
			
			(isClass(configfile >> "CfgMods" >> "RHSAFRF")) and 
			(isClass(configfile >> "CfgMods" >> "RHSGREF")) and 
			(isClass(configfile >> "CfgMods" >> "RHSSAF")) and 
			BEW_v_RHS_Running and 
			(isClass(configfile >> "CfgFactionClasses" >> "gac_JGSDF")) and 
			(isClass(configfile >> "CfgFactionClasses" >> "JP_Japan_Units")) and 
			(isClass(configfile >> "CfgMods" >> "ADFU"))  and 
			(isClass(configfile >> "CfgMods" >> "NZDFMKII")) and 
			(isClass(configfile >> "CfgMods" >> "UK3CB_BAF_Equipment")) and 
			BEW_v_3CB_BAF_Running and 
			(isClass(configfile >> "CfgMods" >> "UK3CB_BAF_Vehicles")) and 
			(isClass(configfile >> "CfgMods" >> "UK3CB_BAF_Weapons")) and 
			(isClass(configfile >> "CfgMods" >> "UK3CB_BAF_Weapons_Static")) and 
			(isClass(configfile >> "CfgMods" >> "USP_FlagsMarkers")) and 
			("rhs_kpa_flag" in activatedAddons)	and 
			!(forceVanilla)
			
			) then {

					bluFaction = "USMCW";
					blu_altFaction = "AUSArmy";
					ind_1Faction = "JSDF";
					ind_2Faction = "USNavy";
					blu_SofFaction = "SOCOM_W";
					rebel_1Faction = "NZArmy";
					rebel_2Faction = "AUSArmy";
					opf_1Faction = "KPA";
					opf_2Faction = "KPA";
					opf_SOFFaction = "KPA";
		
			};
			
		
		// Cold War Setup
		
			if (BEW_v_RHS_Running and BEW_v_3CB_Factions_Running and !(forceVanilla) and (BEW_v_ColdWar)) then {

				// Cold War
					
					bluFaction				=	"3CB_USArmyLate";	
					blu_AltFaction			=	"3CB_USArmyLate";	
					blu_SofFaction			=	"3CB_USNavyLate";	
					opf_1Faction			=	"3CB_VDVLate";		
					opf_2Faction			=	"3CB_VDVLate";		
					opf_SOFFaction			=	"3CB_VDVLate";		
					ind_1Faction			=	"3CB_USArmyLate";	
					ind_2Faction			=	"3CB_USNavyLate";	
					rebel_1Faction			=	"3CB_USArmyLate";	
					rebel_2Faction			=	"3CB_USArmyLate";	
					
					
				// Cold War + CSLA
					
					if (BEW_v_CSLA_Running) then {
					
						bluFaction				=	"CSLA_USMC";	
						blu_AltFaction			=	"CSLA_USMC";	
						blu_SofFaction			=	"3CB_USNavyLate";	
						opf_1Faction			=	"3CB_VDVLate";		
						opf_2Faction			=	"CSLA";		
						opf_SOFFaction			=	"3CB_VDVLate";		
						ind_1Faction			=	"3CB_USArmyLate";	
						ind_2Faction			=	"3CB_USNavyLate";	
						rebel_1Faction			=	"3CB_USArmyLate";	
						rebel_2Faction			=	"3CB_USArmyLate";
						
						BEW_v_modPresetString = BEW_v_modPresetString + "_CSLA";
						
					};


				// Cold War + GM
				
					if (BEW_v_GM_Running) then {

						bluFaction				=	"GM_WESTGERMANY";	
						blu_AltFaction			=	"3CB_USNavyLate";	
						blu_SofFaction			=	"3CB_USNavyLate";	
						opf_1Faction			=	"GM_EASTGERMANY";		
						
							if (BEW_v_CSLA_Running) then {
							
								opf_2Faction		=	"CSLA";		
								
							}else{
							
								opf_2Faction		=	"GM_POLAND";
							
							};
						
						opf_SOFFaction			=	"3CB_VDVLate";	

							if (BEW_v_CSLA_Running) then {
							
								ind_1Faction		=	"CSLA_USMC";		
								
							}else{
							
								ind_1Faction		=	"3CB_USArmyLate";
							
							};
							
						ind_2Faction			=	"3CB_USNavyLate";	
						rebel_1Faction			=	"GM_WESTGERMANY";	
						rebel_2Faction			=	"GM_DENMARK";
						
						BEW_v_modPresetString = BEW_v_modPresetString + "_GM";

					};
					

				// Cold War + 3CB BAF
				
					if (BEW_v_3CB_BAF_Running) then {

						bluFaction				=	"3CB_ColdWarBAF";
						blu_AltFaction			=	"3CB_ColdWarBAF";
						
						BEW_v_modPresetString = BEW_v_modPresetString + "_3CB";
						
					};


				// Cold War + SFP
				
					if (BEW_v_SFP_Running) then {

							bluFaction				=	"SWEDEArmy80";
							
							BEW_v_modPresetString = BEW_v_modPresetString + "_3CBFactions";
					
					};
					

				BEW_v_modPresetString = BEW_v_modPresetString + "_3CBFactions";
					
				systemchat "Mission Configured For COLD WAR";
							
			};
			
			
		BEW_v_factionsRunning = [
			
			bluFaction,				
			blu_AltFaction,			
			blu_SofFaction,		
			opf_1Faction,			
			opf_2Faction,			
			opf_SOFFaction,				
			ind_1Faction,			
			ind_2Faction,			
			rebel_1Faction,			
			rebel_2Faction	

		];
		
		publicVariable "BEW_v_factionsRunning";
			