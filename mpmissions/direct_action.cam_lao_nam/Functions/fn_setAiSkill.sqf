
private ["_group", "_difficulty", "_debug", "_unit"];

	_group = _this select 0;
	_difficulty = param [1, BEW_v_aiSkillGlobal];
	
	_debug = FALSE;
	
	
	// Define Skills
	
		_skills = switch (_difficulty) do {
		
			case "EASY": {

				[["aimingspeed", 0.15], ["spotdistance", 0.15],  ["aimingaccuracy", 0.1], ["aimingshake", 0.1], ["spottime", 0.3], ["spotdistance", 0.5], ["commanding", 0.5], ["general", 0.6]]

			};
			
			case "REGULAR": {

				[["aimingspeed", 0.2], ["spotdistance", 0.2],  ["aimingaccuracy", 0.2], ["aimingshake", 0.2], ["spottime", 0.4], ["spotdistance", 0.6], ["commanding", 0.6], ["general", 0.7]]
				
			};
			
			case "HARD": {

				[["aimingspeed", 0.3], ["spotdistance", 0.3],  ["aimingaccuracy", 0.3], ["aimingshake", 0.3], ["spottime", 0.5], ["spotdistance", 0.8], ["commanding", 0.8], ["general", 0.9]]

			};

			
			default { 
			
				[["aimingspeed", 0.2], ["spotdistance", 0.2],  ["aimingaccuracy", 0.2], ["aimingshake", 0.2], ["spottime", 0.4], ["spotdistance", 0.6], ["commanding", 0.6], ["general", 0.7]]
			
			};
				
		};
	
	
	// Set Skills
	
		{
		
			_unit = _x;
			
			if (_debug) then {systemchat format ["%1", _unit]};
			
			{
			
				_unit setSkill _x;
				if (_debug) then {systemchat format ["%1", _x]};
		
			} forEach _skills;
		
		} foreach units _group;