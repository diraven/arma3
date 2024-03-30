
_allFactions = ["BLU", "BLU_ALT", "OPF_1", "OPF_2", "OPF_3", "BLU_SOF", "OPF_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2"];

_allRoles = [ 
    
	["Officer", "B_officer_F"],  
    ["TL", "B_Soldier_TL_F"],   
    ["RifleMan", "B_Soldier_F"],    
    ["Marksman", "B_soldier_M_F"],   
    ["AR", "B_soldier_AR_F"],   
    ["GL", "B_Soldier_GL_F"],  
    ["Medic", "B_medic_F"],   
    ["Engineer", "B_engineer_F"],   
    ["AT", "B_soldier_AT_F"],  
	["AA", "B_soldier_AA_F"],   	
    ["JTAC", "B_recon_JTAC_F"],   
    ["UAV", "B_soldier_UAV_F"],   
    ["HeliPilot", "B_Helipilot_F"],   
    ["Pilot", "B_Pilot_F"],   
    ["Crewman", "B_crew_F"]
    
];


// Create Arrays

	{
	
		_roleName = _x select 0;
		_origType = _x select 1;
		
		call compile format ["
			
			if (isNil 'BEW_v_%1_classes') then {
			
				BEW_v_%1_classes = [];
				BEW_v_%1_classes pushBackUnique _origType;
			
			};
			
		", _roleName];
	
	} forEach _allRoles;


{
	
	_factionTag = _x;
	
	if !((call compile format ["%1Faction", _factionTag]) select 1 == "") then {
		
		// Define Translation List
		
			_translationLists = call compile format [" 
				
				_translationLists = [[BLU_Map_TransList, %1_New_TransList]]; 
		
				_translationLists 
				 
			", _factionTag];
		
		{
			
			_roleName = _x select 0;
			_origType = _x select 1;
			
			_newType = [_origType, _translationLists] call BEW_FNC_TranslateClassNames;
			
			call compile format ["
			
				%1_%2 = _newType;
				BEW_v_%2_classes pushBackUnique _newType;
							
			", _factionTag, _roleName];

		} forEach _allRoles;
	
	};

} forEach _allFactions;