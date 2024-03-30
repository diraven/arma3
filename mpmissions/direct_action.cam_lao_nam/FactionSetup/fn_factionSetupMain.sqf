		
// DETECT MODS RUNNING
	
	[] call BEW_FNC_DetectMods;
		
	
	// Mod Preset String Setup
	
		BEW_v_modPresetString = "";
	
	
		// Switch 
		
			switch (true) do {
			
				// Zombies

					case ((BEW_v_Zombies) and !(BEW_v_forceVanilla))	:	{
						
						[] call BEW_FNC_Zombies_FactionSetup_default;
						
					};
					
			
				//  WW2
		
					case (IFA3_Running and FOW_Running and BEW_v_WW2 and !(BEW_v_forceVanilla))	:	{
								
						_configTag = "WW2";

							call compile format ["
								
								if !(isNil 'BEW_FNC_%1_FactionSetup_%2') then {
									
									[] call BEW_FNC_%1_FactionSetup_%2;
								
								}else{
								
									[] call BEW_FNC_%1_FactionSetup_default;
								
								};
							
							", _configTag, worldName];
						
					};
				
				
				//  Cold War
				
					case (BEW_v_RHS_Running and BEW_v_3CB_Factions_Running and !(BEW_v_forceVanilla) and (BEW_v_ColdWar))	:	{
								
						_configTag = "ColdWar";

							call compile format ["
								
								if !(isNil 'BEW_FNC_%1_FactionSetup_%2') then {
									
									[] call BEW_FNC_%1_FactionSetup_%2;
								
								}else{
								
									[] call BEW_FNC_%1_FactionSetup_default;
								
								};
							
							", _configTag, worldName];
						
					};
					
					
				// PF: SOG Setup
			
					case (BEW_v_VN_Running and BEW_v_Vietnam and !(BEW_v_forceVanilla))	:	{

						_configTag = "VN";

						call compile format ["
							
							if !(isNil 'BEW_FNC_%1_FactionSetup_%2') then {
								
								[] call BEW_FNC_%1_FactionSetup_%2;
							
							}else{
							
								[] call BEW_FNC_%1_FactionSetup_default;
							
							};
						
						", _configTag, worldName];
						
					};

					
				// Aegis Setup
				
					case (BEW_v_AEGIS_Running and !(BEW_v_forceVanilla))	:	{
								
						_configTag = "AEGIS";

						call compile format ["
							
							if !(isNil 'BEW_FNC_%1_FactionSetup_%2') then {
								
								[] call BEW_FNC_%1_FactionSetup_%2;
							
							}else{
							
								[] call BEW_FNC_%1_FactionSetup_default;
							
							};
						
						", _configTag, worldName];
									
					};
					
					
				// RHS Setup
			
					case (BEW_v_RHS_Running and !(BEW_v_forceVanilla))	:	{					
						
						_configTag = "RHS";

						call compile format ["
							
							if !(isNil 'BEW_FNC_%1_FactionSetup_%2') then {
								
								[] call BEW_FNC_%1_FactionSetup_%2;
							
							}else{
							
								[] call BEW_FNC_%1_FactionSetup_default;
							
							};
						
						", _configTag, worldName];

					};
					
					
				// CUP Setup
			
					case (BEW_v_CUP_Running and !(BEW_v_forceVanilla))	:	{

						_configTag = "CUP";

						call compile format ["
							
							if !(isNil 'BEW_FNC_%1_FactionSetup_%2') then {
								
								[] call BEW_FNC_%1_FactionSetup_%2;
							
							}else{
							
								[] call BEW_FNC_%1_FactionSetup_default;
							
							};
						
						", _configTag, worldName];
						
					};
														
					
				// OPTRE Setup
			
					case (BEW_v_OPTRE_Running and BEW_v_OPTRE and !(BEW_v_forceVanilla))	:	{

						_configTag = "OPTRE";

						call compile format ["
							
							if !(isNil 'BEW_FNC_%1_FactionSetup_%2') then {
								
								[] call BEW_FNC_%1_FactionSetup_%2;
							
							}else{
							
								[] call BEW_FNC_%1_FactionSetup_default;
							
							};
						
						", _configTag, worldName];
						
					};
					
					
				// Opposition Star Wars Setup
			
					case (BEW_v_OppositionSW_Running and !(BEW_v_forceVanilla))	:	{
					
						_configTag = "OppositionSW";

						call compile format ["
							
							if !(isNil 'BEW_FNC_%1_FactionSetup_%2') then {
								
								[] call BEW_FNC_%1_FactionSetup_%2;
							
							}else{
							
								[] call BEW_FNC_%1_FactionSetup_default;
							
							};
						
						", _configTag, worldName];
						
					};
												

				// Vanilla
				
					default {
					
						_configTag = "Vanilla";

						call compile format ["
							
							if !(isNil 'BEW_FNC_%1_FactionSetup_%2') then {
								
								[] call BEW_FNC_%1_FactionSetup_%2;
							
							}else{
							
								[] call BEW_FNC_%1_FactionSetup_default;
							
							};
						
						", _configTag, worldName];
						
					};
			
			};
		
		
		// Define Original Factions
		
			bluOriginalFaction = bluFaction;			
			blu_AltOriginalFaction = blu_AltFaction;			
			blu_SofOriginalFaction = blu_SofFaction;		
			opf_1OriginalFaction = opf_1Faction;			
			opf_2OriginalFaction = opf_2Faction;
			opf_3OriginalFaction = opf_3Faction;	
			opf_SOFOriginalFaction = opf_SOFFaction;				
			ind_1OriginalFaction = ind_1Faction;			
			ind_2OriginalFaction = ind_2Faction;		
			rebel_1OriginalFaction = rebel_1Faction;			
			rebel_2OriginalFaction = rebel_2Faction;
		
		BEW_v_factionsRunning = [
			
			bluFaction,				
			blu_AltFaction,			
			blu_SofFaction,		
			opf_1Faction,			
			opf_2Faction,
			opf_3Faction,	
			opf_SOFFaction,				
			ind_1Faction,			
			ind_2Faction,			
			rebel_1Faction,			
			rebel_2Faction	

		];
		
		publicVariable	"bluFaction",		
		publicVariable	"blu_AltFaction",	
		publicVariable	"blu_SofFaction",	
		publicVariable	"opf_1Faction",		
		publicVariable	"opf_2Faction",
		publicVariable	"opf_3Faction",
		publicVariable	"opf_SOFFaction",			
		publicVariable	"ind_1Faction",		
		publicVariable	"ind_2Faction",		
		publicVariable	"rebel_1Faction",		
		publicVariable	"rebel_2Faction",		
		publicVariable 	"BEW_v_factionsRunning";
			