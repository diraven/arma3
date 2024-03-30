	
	_heliTransportVehs = getMissionLayerEntities "TransportHeli" select 0;

	{
		
		if (BEW_v_Zombies) then {
		
			
			deleteVehicle _x;
		
		
		}else{
		
			if (BEW_v_WW2) then {
			
				[_x] spawn BEW_FNC_setupGliderTransportVehicle;
				
			}else{
				
				[_x] spawn BEW_FNC_setupHeliTransportVehicle;
			
			};
		
		};

		sleep 0.5;

	} forEach _heliTransportVehs;