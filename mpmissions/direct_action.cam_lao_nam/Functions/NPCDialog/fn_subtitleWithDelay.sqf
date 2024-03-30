	private ["_playersInRadius"];
	
	_caller	= param [0];
		_callerName = name _caller;
	
	_dialogue = param [1];
	_listenRadius = param [2, 0];
	_color = param [3, '#ffffff']; 
	_size = param [4, 1];
	
			
	call compile format ["
	
		_dialogue = ""<t size='%1' color='%2'>%3</t>"";
	
	", _size, _color, _dialogue];
	
	
	// Calculate Sleep Time
	
		_sleepTime = [count _dialogue] call BEW_FNC_calculateReadDelayTime;
		

	// Random Lip Movement
		
		[_caller, true] remoteExec ["setRandomLip", _caller];
		
		[_caller, _sleepTime] spawn {
		
			_caller = _this select 0;
			_sleepTime = _this select 1;
			
			// Wait For Sleep Time
			
				sleep _sleepTime;
			
			// Start Random Lip Movement
				
				[_caller, false] remoteExec ["setRandomLip", _caller];
		
		};
		
	
	// Detect Players In Radius
	
		if (_listenRadius > 0) then {
			
			_playersInRadius = allPlayers select {(alive _x) and (_x distance _caller < _listenRadius)};
			
		}else{
		
			_playersInRadius = allPlayers select {(alive _x)};
		
		};
		

	// Show Subtitle
		
		{
		
			[_callerName, _dialogue] remoteExec ["BIS_fnc_showSubtitle", _x];
			playSound 'click';
			
		} forEach _playersInRadius;
		
	_sleepTime
