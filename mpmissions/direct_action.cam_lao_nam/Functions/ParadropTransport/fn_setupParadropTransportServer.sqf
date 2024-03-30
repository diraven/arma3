	
	_paraDropVehs = getMissionLayerEntities "ParaDropVehs" select 0;

	{

		[_x, getDir _x, typeOf _x, WEST] spawn BEW_FNC_setupParadropVehicle;

		sleep 0.5;

	} forEach _paraDropVehs;