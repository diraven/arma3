
	_worldName = toUpper worldName;

	if (!(_worldName == (toUpper "gm_weferlingen_summer"))) exitWith {};
	

// FORCE VANILLA

	forceVanilla = false;
		publicVariable "forceVanilla";
		
		
// DETECT MODS RUNNING
	
	[] call BEW_FNC_DetectMods;
		
		
		BEW_v_modPresetString = "";
		
		
		
		// Switch 
		
			switch (true) do {
			
				//  WW2
		
					case (IFA3_Running and FOW_Running and BEW_v_WW2 and !(forceVanilla))	:	{
								
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
				
					case (BEW_v_RHS_Running and BEW_v_3CB_Factions_Running and !(forceVanilla) and (BEW_v_ColdWar))	:	{
								
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
			
					case (BEW_v_VN_Running and BEW_v_Unsung_Running and BEW_v_Vietnam and !(forceVanilla))	:	{

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
				
					case (BEW_v_AEGIS_Running and !(forceVanilla))	:	{
								
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
			
					case (BEW_v_RHS_Running and !(forceVanilla))	:	{					
						
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
			
					case (BEW_v_CUP_Running and !(forceVanilla))	:	{

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
			
					case (BEW_v_OPTRE_Running and BEW_v_OPTRE and !(forceVanilla))	:	{

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
			
					case (BEW_v_OppositionSW_Running and !(forceVanilla))	:	{
					
						_configTag = "OppositionSW";

						call compile format ["
							
							if !(isNil 'BEW_FNC_%1_FactionSetup_%2') then {
								
								[] call BEW_FNC_%1_FactionSetup_%2;
							
							}else{
							
								[] call BEW_FNC_%1_FactionSetup_default;
							
							};
						
						", _configTag, worldName];
						
					};
					
					
				// Zombies

					case (BEW_v_Zombies)	:	{
						
						[] call BEW_FNC_Zombies_FactionSetup_default;
						
					};
								

				// Vanilla
				
					default {
					
						[] call BEW_FNC_Vanilla_FactionSetup_default;
					
					};
			
			};
						
			
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
		
		publicVariable "BEW_v_factionsRunning";
			