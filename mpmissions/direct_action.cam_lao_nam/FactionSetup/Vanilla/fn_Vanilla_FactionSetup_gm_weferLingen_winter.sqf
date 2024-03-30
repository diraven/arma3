	
	// Check Contact Owned
	
		_allOwnedDLC = getDLCs 1;
		_contactOwned = 1021790 in _allOwnedDLC;
	
		if (_contactOwned) then {
		
			bluFaction				=	"NATO_W";	

		}else{
			
			bluFaction				=	"NATO";
		
		};
		
	blu_AltFaction			=	"NATO_T";			
	blu_SofFaction			=	"CTRG";				
	opf_1Faction			=	"CSAT_T";			
	opf_2Faction			=	"OPF_FIA";			
	opf_3Faction			=	"";					
	opf_SOFFaction			=	"SPETSNAZ";			
	ind_1Faction			=	"AAF";				
	ind_2Faction			=	"NATO_T";			
	rebel_1Faction			=	"FIA";				
	rebel_2Faction			=	"LDF";				

	BEW_v_modPresetString = BEW_v_modPresetString + "_Vanilla";
						
	systemchat "Mission Configured For Vanilla";