	
	_timerTarget = _this select 0;
	_condition = _this select 1;
	
	_currentTimer = 0;
				
	while {_currentTimer < _timerTarget} do { 
	
		if call _condition then {

			_currentTimer = _currentTimer + 1;

		} else {
		
			_currentTimer = 0;

		};
		
		sleep 1;
		
	};

	true