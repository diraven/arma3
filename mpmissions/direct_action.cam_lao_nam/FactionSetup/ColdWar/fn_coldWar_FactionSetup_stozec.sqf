		
	
	// Cold War Setup
		
		// Cold War Default
			
			bluFaction				=	"3CB_USArmyLate";	
			blu_AltFaction			=	"3CB_USArmyLate";	
			blu_SofFaction			=	"3CB_USNavyLate";	
			opf_1Faction			=	"3CB_VDVLate";		
			opf_2Faction			=	"3CB_VDVLate";	
			opf_3Faction			=	"";				
			opf_SOFFaction			=	"3CB_VDVLate";		
			ind_1Faction			=	"3CB_USArmyLate";	
			ind_2Faction			=	"3CB_USNavyLate";	
			rebel_1Faction			=	"3CB_USArmyLate";	
			rebel_2Faction			=	"3CB_USArmyLate";	
			
			BEW_v_modPresetString = BEW_v_modPresetString + "_3CBFactions";
			
			
		// Cold War + CSLA
			
			if (BEW_v_CSLA_Running) then {
			
				bluFaction				=	"CSLA_USMC";	
				blu_AltFaction			=	"CSLA_USMC";	
				blu_SofFaction			=	"3CB_USNavyLate";	
				opf_1Faction			=	"3CB_VDVLate";		
				opf_2Faction			=	"CSLA";
				opf_3Faction			=	"";	
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
				blu_AltFaction			=	"3CB_USArmyLate";	
				blu_SofFaction			=	"3CB_USNavyLate";	
				opf_1Faction			=	"GM_EASTGERMANY";		
				
					if (BEW_v_CSLA_Running) then {
					
						opf_2Faction		=	"GM_POLAND";		
						opf_3Faction		=	"CSLA";
						
					}else{
					
						opf_2Faction		=	"GM_POLAND";
						opf_3Faction		=	"3CB_VDVLate";
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
					
					BEW_v_modPresetString = BEW_v_modPresetString + "_SFP";
			
			};
			
	
		// Message
	
			systemchat "Mission Configured For COLD WAR";
