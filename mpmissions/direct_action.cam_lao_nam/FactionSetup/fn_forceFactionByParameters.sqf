
		_orig_BluFaction = bluFaction;
		_orig_blu_AltFaction = blu_AltFaction;	
		_orig_blu_SofFaction = blu_SofFaction;
		_orig_opf_1Faction = opf_1Faction;			
		_orig_opf_2Faction = opf_2Faction;		
		_orig_opf_3Faction = opf_3Faction;			
		_orig_opf_SOFFaction = opf_SOFFaction;			
		_orig_ind_1Faction = ind_1Faction;		
		_orig_ind_2Faction = ind_2Faction;		
		_orig_rebel_1Faction = rebel_1Faction;		
		_orig_rebel_2Faction = rebel_2Faction;

	
	if (!(isNil "BEW_v_SelectedMainFaction") and !(isNil "OO_INIDBI")) then {
		
	}else{
		
		BEW_v_SelectedMainFaction = ("BLU_Faction" call BIS_fnc_getParamValue);
		
	};
	
	
	// Switch Faction
	
		switch (BEW_v_SelectedMainFaction) do {
		
			case 1 : {
			
				bluFaction = bluFaction;
			
			};
			
			case 2 : {
			
				bluFaction = blu_altFaction;
				blu_altFaction = _orig_BluFaction;
			
			};
			
			case 3 : {
			
				bluFaction = blu_sofFaction;
				blu_SofFaction = _orig_BluFaction;
			
			};
			
			case 4 : {
			
				bluFaction = ind_1faction;
				ind_1faction = _orig_BluFaction;
			
			};
			
			case 5 : {
				
				bluFaction = ind_2Faction;
				ind_2Faction = _orig_BluFaction;			
			
			};
			
			case 6 : {
				
				bluFaction = rebel_1Faction;
				rebel_1Faction = _orig_BluFaction;			
			
			};
			
			case 7 : {
				
				bluFaction = rebel_2Faction;
				rebel_2Faction = _orig_BluFaction;			
			
			};
			
		};