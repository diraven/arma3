
// Default Setup
	
	
	if (BEW_v_MapCamo == "Desert") then {
					
		bluFaction				=	"USARMYD";					
		blu_AltFaction			=	"USMCD";			
		blu_SofFaction			=	"SOCOM_D";			
		opf_1Faction			=	"VDV_D";				
		opf_2Faction			=	"VMF";			
		opf_3Faction			=	"OPF_SAF";					
		opf_SOFFaction			=	"VDV_D";				
		ind_1Faction			=	"CDF";			
		ind_2Faction			=	"USMCD";			
		rebel_1Faction			=	"CDF";				
		rebel_2Faction			=	"CDF";		
						
	}else{
		
		bluFaction				=	"USARMYW";	
		blu_AltFaction			=	"USMCW";			
		blu_SofFaction			=	"SOCOM_W";			
		opf_1Faction			=	"VDV";				
		opf_2Faction			=	"VMF";			
		opf_3Faction			=	"OPF_SAF";					
		opf_SOFFaction			=	"VDV";				
		ind_1Faction			=	"CDF";			
		ind_2Faction			=	"USMCW";			
		rebel_1Faction			=	"CDF";				
		rebel_2Faction			=	"CDF";		
	
	};
	
	systemchat "Mission Configured For RHS";

	BEW_v_modPresetString = BEW_v_modPresetString + "_RHS";
	

// ADDITIONAL FACTIONS

	// British Army
			
			if (BEW_v_RHS_Running and BEW_v_3CB_BAF_Running and !(BEW_v_ForceVanilla)) then {

				_3CB_Factions = ["3CB_D", "3CB_MTP"];
				
				if !(bluFaction in _3CB_Factions) then {
				
					if (BEW_v_MapCamo == "Desert") then {
					
						bluFaction = "3CB_D";
						
					}else{
						
						bluFaction = "3CB_MTP";
					
					};
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_3CB_D";
				
				};

			};
		
		
		// German Bundeswehr
			
			if (BEW_v_RHS_Running and BEW_v_BWMod_Running and !(BEW_v_ForceVanilla)) then {

				_BWMod_Factions = ["BWFLEK", "BWTROP"];
				
				if !(bluFaction in _BWMod_Factions) then {

					if (BEW_v_MapCamo == "Desert") then {
					
						bluFaction = "BWTROP";
						
					}else{
						
						bluFaction = "BWFLEK";
					
					};
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_BWMod";
				
				};

			};
			
			
		// Spanish Army
			
			if (BEW_v_RHS_Running and BEW_v_FFAA_Running and !(BEW_v_ForceVanilla)) then {

				_FFAA_Factions = ["FFAA"];
				
				if !(bluFaction in _FFAA_Factions) then {
				
					bluFaction = "FFAA";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_FFAA";
				
				};

			};
			
		
		// French Army
			
			if (BEW_v_RHS_Running and BEW_v_AMF_Running and !(BEW_v_ForceVanilla)) then {

				_FRENCH_Factions = ["FRENCH"];
				
				if !(bluFaction in _FRENCH_Factions) then {
				
					bluFaction = "FRENCH";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_AMF";
				
				};

			};
			
			
		// Canadian Army
			
			if (BEW_v_RHS_Running and BEW_v_TFC_Running and !(BEW_v_ForceVanilla)) then {

				_TFC_Factions = ["CAFT"];
				
				if !(bluFaction in _TFC_Factions) then {
				
					bluFaction = "CAFT";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_TFC";
				
				};

			};


		// Australian Army 
			
			if (BEW_v_RHS_Running and BEW_v_ProjectUncut_Running and !(BEW_v_ForceVanilla)) then {

				_ADFU_Factions = ["AUSArmy"];		
				
				if !(bluFaction in _ADFU_Factions) then {
				
					bluFaction = "AUSArmy";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_ProjectUncut";
				
				};

			};


		// New Zealand Army
			
			if (BEW_v_RHS_Running and BEW_v_NZDF_Running and BEW_v_3CB_BAF_Running and !(BEW_v_ForceVanilla)) then {

				_NZDF_Factions = ["NZArmy"];		
				
				if !(bluFaction in _NZDF_Factions) then {
				
					bluFaction = "NZArmy";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_NZDF";
				
				};

			};
			
			
		// Swedish Army
			
			if (BEW_v_RHS_Running and BEW_v_SFP_Running and !(BEW_v_ForceVanilla)) then {

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
			
			if (BEW_v_RHS_Running and BEW_v_Pedagne_Running and !(BEW_v_ForceVanilla)) then {

				_Pedagne_Factions = ["ITALYArmy"];		
				
				if !(bluFaction in _Pedagne_Factions) then {
				
					bluFaction = "ITALYArmy";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_Pedagne";
				
				};

			};
			
		
		// Czech Army
			
			if (BEW_v_RHS_Running and BEW_v_ACR_Running and !(BEW_v_ForceVanilla)) then {

				_ACR_Factions = ["ACR_W", "ACR_D"];		
				
				if !(bluFaction in _ACR_Factions) then {

					if (BEW_v_MapCamo == "Desert") then {
					
						bluFaction = "ACR_D";
						
					}else{
						
						bluFaction = "ACR_W";
					
					};
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_ACR";
				
				};

			};
			
			
		// Japan Army
			
			if (BEW_v_JSDF_Running and !(BEW_v_ForceVanilla)) then {

				_JSDF_Factions = ["JSDF", "JSDF_D"];		
				
				if !(bluFaction in _JSDF_Factions) then {

					if (BEW_v_MapCamo == "Desert") then {
					
						bluFaction = "JSDF_D";
						
					}else{
						
						bluFaction = "JSDF";
					
					};
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_JSDF";
				
				};

			};
			
			
		// North Korean Army
			
			if (BEW_v_RHS_Running and BEW_v_KPA_Running and !(BEW_v_ForceVanilla)) then {

				_KPA_Factions = ["KPA"];		
				
				if !(opf_2Faction in _KPA_Factions) then {
				
					opf_2Faction = "KPA";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_KPA";
				
				};

			};
			

		// Iranian Army
			
			if (BEW_v_RHS_Running and BEW_v_IAF_Running and !(BEW_v_ForceVanilla)) then {

				_IAF_Factions = ["AJA"];		
				
				if !(opf_2Faction in _IAF_Factions) then {
				
					opf_2Faction = "AJA";
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_IAF";
				
				};

			};
			
			
	// MULTI MOD PRESETS
	
		// Commonwealth
			
			if (
			
				BEW_v_RHS_Running and 
				BEW_v_ProjectUncut_Running and 
				BEW_v_TFC_Running and 
				BEW_v_NZDF_Running and 
				BEW_v_3CB_BAF_Running and 
				!(BEW_v_ForceVanilla)
			
			) then {	
			
				if (BEW_v_MapCamo == "Desert") then {
				
					bluFaction = "CAFT_D";
					blu_altFaction = "USMCD";
					ind_1Faction = "USARMYD";
					ind_2Faction = "3CB_D";
					blu_SofFaction = "AUSArmy";
					rebel_1Faction = "3CB_D";
					rebel_2Faction = "NZArmy";
					
				}else{
					
					bluFaction = "CAFT";
					blu_altFaction = "USMCW";
					ind_1Faction = "USARMYW";
					ind_2Faction = "3CB_MTP";
					blu_SofFaction = "AUSArmy";
					rebel_1Faction = "3CB_MTP";
					rebel_2Faction = "NZArmy";
				
				};		
		
			};
		

		// European Union
			
			if (
				
				BEW_v_RHS_Running and 
				BEW_v_Pedagne_Running and 
				BEW_v_AMF_Running and 
				BEW_v_FFAA_Running and 
				BEW_v_BWMod_Running and 
				BEW_v_SFP_Running and 
				!(BEW_v_ForceVanilla)
				
			) then {
			
				if (BEW_v_MapCamo == "Desert") then {
	
					bluFaction = "BWTROP";
					blu_altFaction = "FRENCH";
					ind_1Faction = "FFAA";
					ind_2Faction = "ITALYArmy";
					blu_SofFaction = "FRENCH";
					rebel_1Faction = "SOCOM_D";
					rebel_2Faction = "SWEDEArmy";
							
					if (BEW_v_ACR_Running) then {				
					
						rebel_1Faction = "ACR_D";
						
					};	
				
				}else{
				
					bluFaction = "BWFLEK";
					blu_altFaction = "FRENCH";
					ind_1Faction = "FFAA";
					ind_2Faction = "ITALYArmy";
					blu_SofFaction = "FRENCH";
					rebel_1Faction = "SOCOM_W";
					rebel_2Faction = "SWEDEArmy";
							
					if (BEW_v_ACR_Running) then {				
					
						rebel_1Faction = "ACR_W";
						
					};	
								
				};
	
			};
			
			
		// Facific Forces
				
			if (
			
				BEW_v_RHS_Running and 
				BEW_v_JSDF_Running and
				BEW_v_ProjectUncut_Running  and 
				BEW_v_NZDF_Running and 
				BEW_v_3CB_BAF_Running and
				BEW_v_KPA_Running and 
				!(BEW_v_ForceVanilla)
			
			) then {
				
				if (BEW_v_MapCamo == "Desert") then {
				
					bluFaction = "USMCD";
					blu_altFaction = "AUSArmy";
					ind_1Faction = "JSDF";
					ind_2Faction = "USNavy";
					blu_SofFaction = "SOCOM_D";
					rebel_1Faction = "NZArmy";
					rebel_2Faction = "AUSArmy";
					opf_1Faction = "KPA";
					opf_2Faction = "KPA";
					opf_3Faction =	"";	
					opf_SOFFaction = "KPA";
					
				}else{
				
					bluFaction = "USMCW";
					blu_altFaction = "AUSArmy";
					ind_1Faction = "JSDF";
					ind_2Faction = "USNavy";
					blu_SofFaction = "SOCOM_W";
					rebel_1Faction = "NZArmy";
					rebel_2Faction = "AUSArmy";
					opf_1Faction = "KPA";
					opf_2Faction = "KPA";
					opf_3Faction =	"";	
					opf_SOFFaction = "KPA";
					
				};
		
			};
			
			
		// BF4 Mode
			
			if (BEW_v_BF4Mode) then {
			
				if (BEW_v_MapCamo == "Desert") then {
					
						bluFaction = "BF4_USMC";
						blu_altFaction = "BF4_USMC";
						ind_1Faction = "BF4_USMC";
						ind_2Faction = "BF4_USMC";
						blu_SofFaction = "BF4_USMC";
						rebel_1Faction = "BF4_USMC";
						rebel_2Faction = "BF4_USMC";
						opf_1Faction = "BF4_Russia";
						opf_2Faction = "BF4_Russia";
						opf_3Faction =	"BF4_Russia";	
						opf_SOFFaction = "BF4_Russia";
						
					}else{
					
						bluFaction = "BF4_USMC";
						blu_altFaction = "BF4_USMC";
						ind_1Faction = "BF4_USMC";
						ind_2Faction = "BF4_USMC";
						blu_SofFaction = "BF4_USMC";
						rebel_1Faction = "BF4_USMC";
						rebel_2Faction = "BF4_USMC";
						opf_1Faction = "BF4_Russia";
						opf_2Faction = "BF4_Russia";
						opf_3Faction =	"BF4_Russia";	
						opf_SOFFaction = "BF4_Russia";
						
					};
				
			};