 	private [
	
		"_bluFaction", 	
		"_blu_AltFaction", 
		"_blu_SofFaction", 
		"_opf_1Faction", 
		"_opf_2Faction", 
		"_opf_3Faction", 
		"_opf_SOFFaction", 
		"_ind_1Faction", 
		"_ind_2Faction", 
		"_rebel_1Faction", 
		"_rebel_2Faction"
	
	];


		_bluFaction				=	["NATO_Base", bluFaction];
		_blu_AltFaction			=	["NATO_W_Base", blu_AltFaction];
		_blu_SOFFaction			=	["CTRG_Base", blu_SOFFaction];
		_opf_1Faction			=	["CSAT_Base", opf_1Faction];
		_opf_2Faction			=	["OPF_FIA_Base", opf_2Faction];
		_opf_3Faction			=	["CSAT_T_Base", opf_3Faction];
		_opf_SOFFaction			=	["SPETSNAZ_Base", opf_SOFFaction];
		_ind_1Faction			=	["AAF_Base", ind_1Faction];				
		_ind_2Faction			=	["NATO_T_Base", ind_2Faction];
		_rebel_1Faction			=	["FIA_Base", rebel_1Faction];
		_rebel_2Faction			=	["LDF_Base", rebel_2Faction];

	// Define Faction Types
	
		BEW_v_factionTypes = ["BLU", "BLU_ALT", "BLU_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2", "OPF_1", "OPF_2", "OPF_3", "OPF_SOF"];	
		
		BEW_v_friendlyFactionTypes = ["BLU", "BLU_ALT", "BLU_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2"];
		BEW_v_alliedFactionTypes = [];
		BEW_v_enemyFactionTypes = ["OPF_1", "OPF_2", "OPF_3", "OPF_SOF"];
		
			publicVariable "BEW_v_factionTypes";
		
		{
		
			call compile format ["
			
			%1Faction				=	_%1Faction;
			
			", _x];
		
		} forEach BEW_v_factionTypes;
	
		
		// Remove OPF 3
	
			if (_opf_3Faction select 1 == "") then {BEW_v_factionTypes = BEW_v_factionTypes - ["OPF_3"]};
	
	
	// Define All Factions
	
		_allFactions = [] call BEW_FNC_FactionData;
		

	// Define Infantry Lists
	
		{

			_factionType = _x;

			{
			
				_faction 		= _x select 0;
				_side			= _x select 1;
				_factionClass	= _x select 2;
				_groupCat		= _x select 3;
			
				call compile format ["		
					
					if (_%1Faction select 1 == '%2') then {
					
						%1_InfantryArray = [_side, _factionClass, _groupCat];
						publicVariable '%1_InfantryArray';
				
					};
				
				", _factionType, _faction];
			
			} forEach _allFactions;

		} forEach BEW_v_factionTypes;

		
		
	// Define Vehicle Lists
	
		{

			_factionType = _x;

			{
			
				_faction = _x select 0;
			
				call compile format ["		
					
					if (_%1Faction select 1 == '%2') then {
					
						%1_VehList = BEW_FNC_%2_VehList;
						publicVariable '%1_VehList';
				
					};
				
				", _factionType, _faction];
			
			} forEach _allFactions;

		} forEach BEW_v_factionTypes;
		
		
	// Define Marker Icon
	
		{

			_factionType = _x;

			{
			
				_faction = _x select 0;
				_markerIcon = _x select 5;
			
				call compile format ["		
					
					if (_%1Faction select 1 == '%2') then {
					
						%1_MarkerIcon = _markerIcon;
						publicVariable '%1_MarkerIcon';
				
					};
				
				", _factionType, _faction];
			
			} forEach _allFactions;

		} forEach BEW_v_factionTypes;
	
	
	// Map Faction Tag
	
		{

			_factionType = _x;

			{
			
				_faction = _x select 0;
				_factionClass = _x select 2;
			
				call compile format ["		
					
					if (_%1Faction select 1 == '%2') then {
					
						%1_MapFactionTag = _factionClass;
						publicVariable '%1_MapFactionTag';
				
					};
				
				", _factionType, _faction];
			
			} forEach _allFactions;

		} forEach BEW_v_factionTypes;
		
			
	// New Faction Tag
	
		{

			_factionType = _x;

			{
			
				_faction = _x select 0;
				_factionClass = _x select 2;
			
				call compile format ["		
					
					if (_%1Faction select 1 == '%2') then {
					
						%1_NewFactionTag = _factionClass;
						publicVariable '%1_NewFactionTag';
				
					};
				
				", _factionType, _faction];
			
			} forEach _allFactions;

		} forEach BEW_v_factionTypes;
		
		
	// Playable Faction
	
		{

			_factionType = _x;

			{
			
				_faction = _x select 0;
				private _isPlayable = _x select 7;
				
				if (isNil"_isPlayable") then {
				
					_isPlayable = TRUE;
				
				};
				
			
				call compile format ["		
					
					if (_%1Faction select 1 == '%2') then {
					
						%1_isPlayable = _isPlayable;
						publicVariable '%1_isPlayable';
				
					};
				
				", _factionType, _faction];
			
			} forEach _allFactions;

		} forEach BEW_v_factionTypes;
	
	
	// Define Faction Name (Used After Switch)
	
		{

			_factionType = _x;

			{
			
				_faction = _x select 0;
				_factionName = _x select 4;
			
				call compile format ["		
					
					if (_%1Faction select 1 == '%2') then {
					
						%1_factionName = _factionName;
						publicVariable '%1_factionName';
				
					};
				
				", _factionType, _faction];
			
			} forEach _allFactions;

		} forEach BEW_v_factionTypes;
		
		
	// Define Original Faction Name (Needed to recall faction before switch)
	
		{

			_factionType = _x;

			{
			
				_faction = _x select 0;
				_factionName = _x select 4;
			
				call compile format ["		
					
					if (%1OriginalFaction == '%2') then {
					
						%1_OriginalfactionName = _factionName;
						publicVariable '%1_OriginalfactionName';
				
					};
				
				", _factionType, _faction];
			
			} forEach _allFactions;

		} forEach BEW_v_factionTypes;
		
		
		
	// Define Faction Language
	
		{

			_factionType = _x;

			{
			
				_faction = _x select 0;
				_factionLanguage = _x select 6;
				
				if (isNil "_factionLanguage") then {_factionLanguage = "ENGLISH_US"};
			
				call compile format ["		
					
					if (_%1Faction select 1 == '%2') then {
					
						%1_factionLanguage = _factionLanguage;
						publicVariable '%1_factionLanguage';
				
					};
				
				", _factionType, _faction];
			
			} forEach _allFactions;

		} forEach BEW_v_factionTypes;

	
	// Weapon Lists
		
		{

			_factionType = _x;

			{
			
				_faction = _x select 0;
			
				call compile format ["		
					
					if (_%1Faction select 1 == '%2') then {
					
						_weaponList = [] call BEW_FNC_%2_WeaponList;
								
						_newWeaponList = [];
						
						{	
						
							_weaponListLevel = _x;
							
							{
							
								_origType = _x;
								
								_newType = [_origType] call BEW_FNC_TranslateItems;
								
								if !(_origType == _newType) then {
								
									_weaponListLevel = _weaponListLevel - [_origType];
									_weaponListLevel pushBack _newType;
								
								};
							
							} forEach _weaponListLevel;
												
							_newWeaponList = _newWeaponList + [_weaponListLevel];

						} forEach _weaponList;
						
						%1_WeaponList = _newWeaponList;
							publicVariable '%1_WeaponList';
				
					};
				
				", _factionType, _faction];
			
			} forEach _allFactions;

		} forEach BEW_v_factionTypes;
		

	// Item Lists
		
		{

			_factionType = _x;

			{
			
				_faction = _x select 0;
			
				call compile format ["		
					
					if (_%1Faction select 1 == '%2') then {
					
						%1_ItemList = [] call BEW_FNC_%2_ItemList;
						publicVariable '%1_ItemList';
				
					};
				
				", _factionType, _faction];
			
			} forEach _allFactions;

		} forEach BEW_v_factionTypes;
	
	
	// Weapon Restrictions
		
		{
		
			call compile format ["
				
				if (BEW_v_BF4Mode) then {
				
					%1_WeaponRestrictionList = [] call BEW_FNC_BF4_WeaponRestrictionList;
				
				}else{
				
					%1_WeaponRestrictionList = [] call BEW_FNC_WeaponRestrictionList;
					
				};
					
				publicVariable '%1_WeaponRestrictionList';
	
			", _x];

		} forEach BEW_v_factionTypes;		
			
		
	// Item Restrictions
		
		{
		
			call compile format ["
				
				if (BEW_v_BF4Mode) then {
				
					%1_ItemRestrictionList = [] call BEW_FNC_BF4_ItemRestrictionList;
				
				}else{
				
					%1_ItemRestrictionList = [] call BEW_FNC_ItemRestrictionList;
					
				};

				publicVariable '%1_ItemRestrictionList';
	
			", _x];

		} forEach BEW_v_factionTypes;	
		
		
		
	// Currently Active Factions
	
		BEW_v_CurrentlyActiveFactions = [];

			{

				call Compile Format ["
					
					private _camps = [];
				
					if !(_x == 'BLU') then {
					
						_camps = getMissionLayerEntities '%1' select 1;
						
					};		
						
					private _side = switch (true) do {
					
						case (_x in BEW_v_enemyFactionTypes)	: {EAST};
						case (_x in BEW_v_alliedFactionTypes)	: {RESISTANCE};
						default {WEST};
					
					};
			
						private _factionName = %1_FactionName;
						
						if (typeName _factionName == 'ARRAY') then {
						
							_factionName = _factionName select 0;
							
						};
						
						_markerIcon = %1_MarkerIcon;
						_noOfCamps = (count _camps);
						
						BEW_v_CurrentlyActiveFactions pushBack [_x, _factionName, _side, _markerIcon, _noOfCamps];
					
					

				", _x];

			} forEach BEW_v_FactionTypes;
			
			publicVariable "BEW_v_CurrentlyActiveFactions";