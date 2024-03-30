	private ["_surname"];
	
	_unit = _this select 0;
	_type = param [1, typeOf _unit];
	_displayName = _type call ISSE_Cfg_Vehicle_GetName;
	
	// Set Name
		
		_surname = switch (_type) do {
		
			case "B_Soldier_F" 		: 	{"Rifleman"},
			case "B_soldier_M_F" 	: 	{"Marksman"},
			case "B_Soldier_GL_F" 	: 	{"Grenadier"},
			case "B_soldier_AR_F" 	: 	{"A.Rifleman"},
			case "B_medic_F" 		: 	{"Medic"},
			case "B_engineer_F" 	: 	{"Engineer"},
			case "B_soldier_AT_F" 	: 	{"AT Spec."},
			case "B_soldier_AA_F" 	: 	{"AA Spec."},
			case "B_recon_JTAC_F" 	: 	{"JTAC"},
			case "B_crew_F" 		: 	{"Crewman"},
			default {_displayName};
			
		};
		
		if (BEW_v_Zombies) then {
			
			_surname = "Survivor";
		
		};
		
		_firstName = "AI";
		_bothNames = _firstName + " " + _surname;
		
		[_unit, [_bothNames, _firstName, _surname]] remoteExec ["setName", 0, true];