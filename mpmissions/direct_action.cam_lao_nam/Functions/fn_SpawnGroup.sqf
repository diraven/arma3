

	private ["_sideStrs", "_sideStr", "_factions", "_faction", "_archetypes", "_archetype", "_groupTypes", "_groupType", "_side", "_group", "_sideToJoin", "_unitTypes", "_newUnitTypes"];

	_pos			=	param [0];

	_infantryArray 	=	param [1];
		_side		=	_infantryArray select 0;
		_faction	=	_infantryArray select 1;
		_archetype	=	_infantryArray select 2;
		
		_sideStr = switch (_side) do {
		
			case west			:	{"WEST"};
			case east			:	{"EAST"};
			case resistance		:	{"INDEP"};
			case civ			:	{"EMPTY"};

		};

	_forceType		= 	param [2];
	_groupTypes 	= 	param [3, []];
	_sideToJoin		=	param [4, EAST];
	
		
		private _newUnitTypes = [];
				
		if (((BEW_v_Zombies) and (_faction == "WBK_AI_ZHAMBIES")) or ((BEW_v_OPTRE) and (_faction == "OPF_F"))) then {
		
			_unitTypes = [] call BEW_FNC_ZombieUnits;
		
			_unitType = _unitTypes call BIS_FNC_SelectRandom;
				
			_newUnitTypes pushBack _unitType;
			
			_sideToJoin = resistance;
		
		}else{
		
			if (count _groupTypes < 1) then {
		
				_groupTypes = ("true" configClasses (configFile >> "CfgGroups" >> _sideStr >> _faction >> _archetype) apply {configname _x});

			};
			
			// Get Blacklisted Group Types
			
				_blackListedGroups = [] call BEW_FNC_blacklistedGroupTypes;
				
				// Remove Blacklisted Groups
				
					{	
						
						_blackListedGroup = _x;
						
						if (_blackListedGroup in _groupTypes) then {
							
							_groupTypes = _groupTypes - [_blackListedGroup];
						
						};
									
					} forEach _blackListedGroups;
				
			
			// Select Group Type
			
				_groupType 		=	_groupTypes call BIS_fnc_selectRandom; 


			// Pull Unit Types From Group Type

				_groupUnits = ("true" configClasses (configFile >> "CfgGroups" >> _sideStr >> _faction >> _archetype >> _groupType) apply {configname _x});

				_unitTypes = [];
				
				{
				
					_unit = (configFile >> "CfgGroups" >> _sideStr >> _faction >> _archetype >> _groupType >> _x >> "vehicle") call BIS_fnc_getCfgData;;
				
					_unitTypes pushBack _unit;
				
				} forEach _groupUnits;
		
			_newUnitTypes = _unitTypes;
			
		};
		
		
		if (BEW_v_BF4Mode) then {
		
			_translationList = call compile format ["      
			   
				_translationList = [[BLU_Map_TransList, %1_New_TransList]]; 
				
				_translationList

			", _forceType]; 
			
			_newUnitTypes = [
			
				"B_medic_F", 
				"B_engineer_F",
				"B_soldier_M_F", 		
				"B_soldier_AR_F"
			
			];
			
			_newUnitTypes = _newUnitTypes apply {[_x, _translationList] call BEW_FNC_TranslateClassNames};
		
		};
		

	// Spawn Group
	
		_group = [_pos, _sideToJoin, _newUnitTypes,[],[],[],[],[],random 360,true] call BIS_fnc_spawnGroup;
		
		
	// Switch Loadout
		
		if (BEW_v_BF4Mode) then {
		
			{
			
				_unit = _x;
		
				[_unit, nil, true] call BEW_FNC_switchLoadout;		
		
			} forEach units _group;
		
		};
		
		if ((BEW_v_Zombies) and !(_faction == "WBK_AI_ZHAMBIES")) then {
			
			{
			
				_unit = _x;
				
				[_unit, _forceType] spawn BEW_FNC_randomGearGenerator;
			
			} forEach units _group;
		
		};
		
	
	// Delete Group When Empty
	
		if (local _group) then {
			_group deleteGroupWhenEmpty true;
		} else {
			[_group, true] remoteExec ["deleteGroupWhenEmpty", groupOwner _group];
		};
	
	_group;

