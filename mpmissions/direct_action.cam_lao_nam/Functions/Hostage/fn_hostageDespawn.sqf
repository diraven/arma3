	
	_hostage = _this select 0;
	_despawnCountdown = 300;
	
	
	// Wait Until Mission Completed
	
		waitUntil {!(objectiveMissionActive) or !(alive _hostage)};
		
	
	// Waituntil Despawn Countdown Or Hostage Dead
		
		while {(alive _hostage) and (_despawnCountdown > 0)} do {
			
			sleep 1;
		
			_despawnCountdown = _despawnCountdown - 1;
		
		};
		
	
	// Delete Hostage If Hostage Still Alive But Not Rescued
		
		if ((alive _hostage) and !(_hostage getVariable "HostageRescued")) then {
		
			deleteVehicle _hostage;
		
		};
		