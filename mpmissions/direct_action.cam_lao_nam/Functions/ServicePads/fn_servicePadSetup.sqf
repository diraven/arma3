	private ["_trigger", "_triggers"];

	_triggers = getMissionLayerEntities "servicePad" select 0; 

	{
		
		if (BEW_v_Zombies) then {
			
			deleteVehicle _x;
			
		}else{
		
			[_x] spawn {
			
				_trigger = _this select 0;
				
				[_trigger] call BEW_FNC_HideVehicleInObjectiveArea;

				[_trigger] spawn BEW_FNC_ServicePadMarker;
			
			};
		
		};
		
	} forEach _triggers;


	// Corner Map Triggers
	
		[] call BEW_FNC_cornerMapServicePads;