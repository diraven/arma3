if !(isServer) exitWith {};

		private [
		
				"_bluFaction", 
				"_blu_altFaction", 
				"_blu_SofFaction", 
				"_opf_1Faction", 
				"_opf_2Faction", 
				"_opf_3Faction", 
				"_opf_SOFFaction", 
				"_ind_1Faction", 
				"_ind_2Faction", 
				"_rebel_1Faction"
		
		];
	
		_bluFaction				=	bluFaction;
		_blu_altFaction			=	blu_altFaction;
		_blu_SofFaction			=	blu_SofFaction;
		_opf_1Faction			=	opf_1Faction;
		_opf_2Faction			=	opf_2Faction;
		_opf_3Faction			=	opf_3Faction;
		_opf_SOFFaction			=	opf_SOFFaction;
		_ind_1Faction			=	ind_1Faction;
		_ind_2Faction			=	ind_2Faction;
		_rebel_1Faction			=	rebel_1Faction;
		_rebel_2Faction			=	rebel_2Faction;

	
	// Define Translation Lists
					
					
		_factionTypes = ["BLU", "BLU_ALT", "OPF_1", "OPF_2", "OPF_3", "BLU_SOF", "OPF_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2"];
	
	
		// Remove OPF 3
	
			if (_opf_3Faction select 1 == "") then {_factionTypes = _factionTypes - ["OPF_3"]};
			
	
	// Define Map Factions
	
	{
	
		_factionType = _x;
		
		_factionName = call compile format ["
		
			_factionName = _%1Faction select 0;
			
			_factionName
			
		", _factionType];
		
		call compile format ["
					
			%1_Map_TransList = [] call BEW_FNC_%2_TransList;
			
			publicVariable ""%1_Map_TransList"";
			
		", _factionType, _factionName];

	} forEach _factionTypes;

	
	// Define New Factions
	
	{
	
		_factionType = _x;
		
		_factionName = call compile format ["
		
			_factionName = _%1Faction select 1;
			
			_factionName
			
		", _factionType];
		
		call compile format ["
					
			%1_New_TransList = [] call BEW_FNC_%2_TransList;
			
			publicVariable ""%1_New_TransList"";
			
		", _factionType, _factionName];

	} forEach _factionTypes;
	
	
	// Define All Translists
			
		all_TransLists 	= [];
			
		{
			
			call compile format ["
			
				all_TransLists pushBack [%1_Map_TransList, %1_New_TransList]
			
			", _x];

		} forEach _factionTypes;
		
		publicVariable "all_TransLists";
	
	{
	
		publicVariable "_x select 0";
		publicVariable "_x select 1";
		
	} forEach all_TransLists;