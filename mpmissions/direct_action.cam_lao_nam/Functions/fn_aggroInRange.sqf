
	private ["_unit", "_LoopActive", "_unit"];

	
	_unit = param [0, cursorObject];
	_debug = param [1, FALSE];

	_LoopActive = true; 

	while {(_LoopActive) and (alive _unit)} do { 

		if (_debug) then {systemchat "unit is passive";}; 

		sleep 1; 

		if (count (allPlayers select {(_x distance2D getPos _unit) < 5}) > 0) then { 

			_timer = 5; 
			
			_unit disableAi "PATH";
			_unitToLookAt = selectRandom (allPlayers select {(_x distance2D getPos _unit) < 5});
			_unit lookAt _unitToLookAt;

			while {_timer > 0} do { 

				if (_debug) then {systemchat str _timer}; 

				sleep 1; 

				_timer = _timer - 1; 

			}; 

			if (count (allPlayers select {(_x distance2D getPos _unit) < 5}) > 0) then { 

				_LoopActive = false; 

			}; 
			
			_unit enableAI "PATH";
			_unit lookAt objNull;
			
		}; 

	}; 
	
	if (_debug) then {systemchat "unit aggro";};
	
	
	{
	
		_x addRating -2001;
		
	}forEach (allPlayers select {(_x distance2D getPos _unit) < 5});
	
	