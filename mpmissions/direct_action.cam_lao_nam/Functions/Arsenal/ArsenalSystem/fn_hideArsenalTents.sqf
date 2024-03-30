	
	_arsenalTents = getMissionLayerEntities "ArsenalTents" select 0;
	
	{
		
		[_x, "BLU"] spawn BEW_FNC_HideVehicleInObjectiveArea;
				
	} forEach _arsenalTents;