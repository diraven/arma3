	
	_veh = param [0, cursorObject];
	_timeOut = param [1, 5];
	
	_disabledTrigger = createTrigger ["EmptyDetector", getPos _veh];
	_disabledTrigger setVariable ["target", _veh];
	_disabledTrigger setTriggerArea [1, 1, 1, false];
	_disabledTrigger setTriggerActivation ["ANY", "PRESENT", true];
	_disabledTrigger setTriggerStatements ["!(canMove (thisTrigger getVariable 'target'))", "", ""];
	_disabledTrigger setTriggerTimeout [_timeOut, _timeOut, _timeOut, true];
	
	_disabledTrigger