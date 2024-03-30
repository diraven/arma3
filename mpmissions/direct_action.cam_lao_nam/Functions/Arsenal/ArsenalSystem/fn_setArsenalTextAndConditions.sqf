
	_obj = param [0];
	
	waitUntil {!(isNil "BEW_v_allArsenalCrates")};
	
	// Wait Until Arsenal Exists
			
		waitUntil{ !isNil { _obj getVariable "bis_fnc_arsenal_action" } };
		
		
	// Set Action Text
	
		_obj setUserActionText [ _obj getVariable "bis_fnc_arsenal_action", "<t size = '1.5' color = '#00ff00'>Open Arsenal</t>" ];
	
	
	// Set Action Conditions
	
		_arsenalConditions = {(vehicle player == player) and (_target == _this) and (cursorObject in BEW_v_allArsenalCrates) and (player distance2D cursorObject < 6) and !(isnil "BEW_v_WelcomeScreenFinished")};
	
		_obj setvariable ['bis_fnc_arsenal_condition', _arsenalConditions, true];