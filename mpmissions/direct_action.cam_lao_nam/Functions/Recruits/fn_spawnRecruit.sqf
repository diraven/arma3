	private [
		
		"_unit",
		"_type",
		"_pos",
		"_group",
		"_moveToPlayer",
		"_translationLists",
		"_offsetPos"
	
	];
	
	// Params
	
		_type = param [0];
		_pos = param [1];
		_group = param [2];
		_moveToPlayer = param [3, false];
		_translationLists = param [4, [[BLU_Map_Translist, BLU_New_Translist]]];
		_factionTag = param [5, "BLU"];
		_side = param [6, WEST];
		
		/*
		_side = switch (_factionTag) do {
		
			case "OPF_1"	:	{east};
			case "OPF_2" 	:	{east};
			case "OPF_3" 	:	{east};
			case "OPF_SOF"	:	{east};
			default {west};
		
		};
		*/
		
		
	// Create Recruit
							
		_unit = createGroup [_side, true]  createUnit [_type, _pos, [], 0, 'FORM'];
	
	
	// Set Name
		
		[_unit] call BEW_FNC_SetRecruitName;
	
	
	// Join Group
	
		[_unit] joinSilent _group;
	
	
	// Switch Loadout
	
		if (BEW_v_Zombies) then {
			
			[_unit, _factionTag] call BEW_FNC_randomGearGenerator;
			
		}else{
		
			[_unit, nil, nil, _translationLists] spawn BEW_FNC_switchLoadout;
		
		};
		
		
	// Set Voice
	
		[_unit, _factionTag] spawn BEW_FNC_setCorrectIdentity;


	// Reposition Recruit
		
		if (_moveToPlayer) then {
		
			_offsetPos = player modelToWorld [-2,-2,0];
			_unit setPosASL _offsetPos;
		
		};
		
	// Setup Recruit
	
		_unit enableFatigue false;
		_unit enableStamina false;
		[_unit] call AIS_System_fnc_loadAIS;
		[_unit] spawn BEW_FNC_recruitSelfHeal;
		
	
	// Zombies Setup
	
		if (BEW_v_Zombies) then {
				
			_unit setUnitTrait ["engineer", true];
			_unit setUnitTrait ["medic", true];
			
			[_unit] call BEW_FNC_randomEncounterOnWeaponFire;
				
		};
			

	// Dismiss Action

		[_unit] call BEW_FNC_dismissRecruitAction;	
		
	
	// Delete If No Players
	
		[_unit] spawn BEW_FNC_DeleteIfNoPlayers;
		
		_unit