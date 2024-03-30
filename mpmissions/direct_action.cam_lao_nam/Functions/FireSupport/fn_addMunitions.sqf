	
	private ["_message"];
	
	_munitionsToAdd = param [0];
	_side = param [1, WEST];
	
	if (_side == EAST) then {
		
		BEW_v_munitions_EAST = BEW_v_munitions_EAST + _munitionsToAdd;
				publicVariable "BEW_v_munitions_EAST";


		// Change Munitions In Database

			if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
				 
				["write", ["Progression", "Munitions", BEW_v_munitions_EAST]] call BEW_v_dataBase; 
			
			};

		// Send Message To Players;
								
			[[_side, BEW_v_munitions_EAST], {
		
				_side = _this select 0;
				_munitionsCount = _this select 1;
			
				if (side player == _side) then {
				
					_message = format ["Fire Support Munitions Have Been Resupplied - Current Munitions %1", _munitionsCount];
					systemchat _message;
				
				};
		
			}] remoteExec ["BIS_FNC_Call", 0];
	
	}else{
	
	// Add Munitions To Total And Broadcast
					
			BEW_v_munitions = BEW_v_munitions + _munitionsToAdd;
				publicVariable "BEW_v_munitions";


		// Change Munitions In Database

			if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
				 
				["write", ["Progression", "Munitions", BEW_v_munitions]] call BEW_v_dataBase; 
			
			};

		// Send Message To Players;
								
			[[_side, BEW_v_munitions], {
		
				_side = _this select 0;
				_munitionsCount = _this select 1;
			
				if (side player == _side) then {
				
					_message = format ["Fire Support Munitions Have Been Resupplied - Current Munitions %1", _munitionsCount];
					systemchat _message;
				
				};
		
			}] remoteExec ["BIS_FNC_Call", 0];
	
	};
	
