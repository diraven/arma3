	
	if (!(isServer) or (BEW_V_airSuperiority)) exitWith {};
	
	private [
	
		"_currentMunitionsLevel"
	
	];
	
	
	// Set Default Munitions Value And Broadcast
	
		BEW_v_munitions = param [0, 0];
			publicVariable "BEW_v_munitions";
			
		BEW_v_munitions_EAST = param [1, 0];
			publicVariable "BEW_v_munitions_EAST";
			
	// Set Default Munitions Level
	
		_currentMunitionsLevel = param [2, 1];
	
	
	// Set Cancel Flag
	
		BEW_v_munitionsCancelled = false;
	
	
	// Loop To Track Mission Level Changes
	
		while {!(BEW_v_munitionsCancelled)} do {
		
			
			// Wait Until Missionlevel Has Changed
		
				waitUntil {(floor missionLevel > _currentMunitionsLevel) or (BEW_v_munitionsCancelled)};
			
	
			if !(BEW_v_munitionsCancelled) then {
			
			
				// Increase Fire Support Level
				
					_currentMunitionsLevel = _currentMunitionsLevel + 1;
				
				
				// Change Munitions Level In Database
		
					if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
						 
						["write", ["Progression", "Fire Support Level", _currentMunitionsLevel]] call BEW_v_dataBase; 
					
					};
				
				
				// Calculate Munitions To Add
				
					_munitionsToAdd = (100 *  _currentMunitionsLevel);
				
					if (_munitionsToAdd > 1000) then {_munitionsToAdd = 1000};
				
				
				// Add Munitions To Total And Broadcast
				
					BEW_v_munitions = BEW_v_munitions + _munitionsToAdd;
						publicVariable "BEW_v_munitions";
						
					BEW_v_munitions_EAST = BEW_v_munitions_EAST + _munitionsToAdd;
						publicVariable "BEW_v_munitions_EAST";
					
					
				// Change Munitions In Database
					
						if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
							 
							["write", ["Progression", "Munitions", BEW_v_munitions]] call BEW_v_dataBase; 
							["write", ["Progression", "Munitions EAST", BEW_v_munitions_EAST]] call BEW_v_dataBase; 
						
						};
												
				
				// Send Message To Players;
				
					private ["_message"];
					
					// WEST
					
					[{
					
						_munitionsCount = switch (side player) do {
							
							case WEST : {BEW_v_munitions};
							case EAST : {BEW_v_munitions_EAST};
							default {BEW_v_munitions};
							
						};
						
						_message = format ["Fire Support Munitions Have Been Resupplied - Current Munitions %1", _munitionsCount];
					
						systemchat _message;
						
					}] remoteExec ["BIS_FNC_Call", 0];

			};			
		
		};
	
	systemchat "Munitions System Cancelled";