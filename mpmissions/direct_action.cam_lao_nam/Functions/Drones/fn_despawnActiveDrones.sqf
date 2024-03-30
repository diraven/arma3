
	{
	
		_drone = _x;
		
		_nearestTrigger = [BEW_v_droneTriggers, _drone] call BIS_fnc_nearestPosition;
	
	
		if (_drone distance2D _nearestTrigger > 100) then {
		
			_drone setDamage 1;
			
		}else{
		
			deleteVehicle _drone;
		
		};

	} forEach BEW_v_activeDrones;