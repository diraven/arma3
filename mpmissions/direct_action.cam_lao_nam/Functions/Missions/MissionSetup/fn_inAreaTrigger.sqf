	
	_centerPos = param [0];
	_radius = param [1];
	
	// In Area Trigger
		
		_inArea = createTrigger ["EmptyDetector", _centerPos];
		_inArea setTriggerArea [_radius, _radius, 0, false];
		_inArea setTriggerActivation ["WEST", "PRESENT", true];
		_inArea setTriggerStatements ["(this) && (({alive _x && _x inArea thisTrigger} count allPlayers) > 0)", "", ""];
		
		_inArea