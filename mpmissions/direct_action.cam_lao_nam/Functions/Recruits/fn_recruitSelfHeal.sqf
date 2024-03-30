		
	private ["_unit", "_debug"];
		
	_unit = param [0, cursorObject];
	_debug = false;
	
	while {alive _unit} do {
	
		if (_debug) then {systemchat "unit is alive"};
		
		if ("FirstAidKit" in items _unit) then {
			
			if (_debug) then {systemchat "unit has FAK"};

			if (getDammage _unit > 0.5) then {

				if (_debug) then {systemchat "unit is hurt"};
				
				if !(_unit getVariable ["AIS_unconscious", false]) then {
				
					if (_debug) then {systemchat "unit is not unconscious"};
				
					_unit action ["HealSoldierSelf", _unit];
					
				}else{
					
					if (_debug) then {systemchat "unit is unconscious"};
				
				};

			}else{
			
				if (_debug) then {systemchat "unit is not hurt"};
			
			};

		}else{
			
			if (_debug) then {systemchat "unit doesn't have FAK"};
		
		};
		
		sleep 10;
	
	};
