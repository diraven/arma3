		
	
	// Cold War Setup
		
		// Cold War Default
			
			bluFaction				=	"3CB_USArmyLate_D";	
			blu_AltFaction			=	"3CB_USNavyLate_D";	
			blu_SofFaction			=	"3CB_USNavyLate_D";	
			opf_1Faction			=	"3CB_VDVLate";		
			opf_2Faction			=	"3CB_VDVLate";		
			opf_3Faction			= 	"";
			opf_SOFFaction			=	"3CB_VDVLate";		
			ind_1Faction			=	"3CB_USArmyLate_D";	
			ind_2Faction			=	"3CB_USNavyLate_D";	
			rebel_1Faction			=	"3CB_USArmyLate_D";	
			rebel_2Faction			=	"3CB_USArmyLate_D";	
			
			BEW_v_modPresetString = BEW_v_modPresetString + "_3CBFactions";
			
			
		// Cold War + CSLA
			
			if (BEW_v_CSLA_Running) then {
			
				BEW_v_modPresetString = BEW_v_modPresetString + "_CSLA";
				
			};


		// Cold War + GM
				
			if (BEW_v_GM_Running) then {

				bluFaction				=	"GM_WESTGERMANY_D";	
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_GM";

			};
			

		// Cold War + 3CB BAF
		
			if (BEW_v_3CB_BAF_Running) then {

				bluFaction				=	"3CB_ColdWarBAF_D";
				
				if (BEW_v_GM_Running) then {

					ind_1Faction		=	"GM_WESTGERMANY_D";	
					
				};
				
				BEW_v_modPresetString = BEW_v_modPresetString + "_3CB";
				
			};

	
		// Message
	
			systemchat "Mission Configured For COLD WAR";
