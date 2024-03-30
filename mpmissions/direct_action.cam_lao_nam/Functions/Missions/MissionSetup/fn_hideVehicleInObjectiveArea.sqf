
	_veh = param [0];
	_faction = param [1, "BLU"];
	_dontHide = _veh getVariable ["dontHide", FALSE];
	
	_dontHideTheseFactions = ["OPF_1", "OPF_2", "OPF_3", "OPF_SOF"];
	
	
	// Exit If Don't Hide This Faction
	
		if (_faction in _dontHideTheseFactions) exitWith {};
		
	
	// Exit If Force Don't Hide
	
		if (_dontHide) exitWith {};
		
	
	// Exit If Not In Unfinished Objective
	
		if !([getPos _veh] call BEW_FNC_inUnfinishedObjective) exitWith {};
	

	// Start Loop
			
		while {(alive _veh) and ([getPos _veh] call BEW_FNC_inUnfinishedObjective)} do { 
		
			[_veh, {
			
				_veh = _this;
				
				if !(side player == EAST) then {
					
					_veh hideObject true;
					
				}else{
					
					_veh hideObject false;
					
				};
			
			}] remoteExec ["BIS_FNC_Call", 0];
			
			sleep 30;
			
		};
		
		
	// Unhide Object
	
		[_veh, false] remoteExec ["hideObject", 0, true];