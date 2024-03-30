	 
	//if !(worldName in BEW_v_noAirfieldMaps) exitWith {};	
	 
	_planeTypesArray = [

		["C_Plane_Civil_01_racing_F", 1],
		["I_Plane_Fighter_03_dynamicLoadout_F", 2],
		["B_Plane_Fighter_01_Stealth_F", 4],
		["B_Plane_Fighter_01_F", 5],
		["B_Plane_Fighter_01_Cluster_F", 6],
		["B_Plane_CAS_01_dynamicLoadout_F", 7]

	];
	
	
	_playerFaction = switch (side player) do {
	
		case WEST : {"BLU"};
		case EAST : {"OPF_1"};
		default {"BLU"};
	
	};
	
	{	
	
		_planeType = _x select 0;
		_planeLevel = _x select 1;
		
		[_planeType, _planeLevel, _playerFaction] call BEW_FNC_spawnInPlaneAction;
	
	} forEach _planeTypesArray;
	
	
	// Active Plane Warning
	
		_actionText = "<t color='#FF0000'>- Spawn In Flight Unavailable - Aircraft Already Active";


			[
			
				player,												
				_actionText,										
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",	
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",	
				"
				
					(player getVariable 'aircraftMenu') and 
					(count (BEW_v_ActiveSpawnInPlanes select {alive _x}) > 0) and 
					(vehicle player == player) and 
					((typeOf player == 'B_Pilot_F') or (serverCommandAvailable '#kick')) and 
					((worldName in BEW_v_noAirfieldMaps) or (side player == EAST))
				
				",												
				"
				
					(player getVariable 'aircraftMenu') and 
					(count (BEW_v_ActiveSpawnInPlanes select {alive _x}) > 0) and 
					(vehicle player == player) and ((typeOf player == 'B_Pilot_F') or 
					(serverCommandAvailable '#kick')) and 
					((worldName in BEW_v_noAirfieldMaps) or (side player == EAST))
				
				",												
				{},													
				{},													
				{
					
					"Spawn In Flight Currently Unavailable" hintC [

						"Respawn currently active aircraft to spawn a new plane."

					];
					
				},													
				{},													
				[],													
				1,													
				99.9,													
				false,												
				false												
			
			] call BIS_fnc_holdActionAdd;
			
			
			
	// Cooldown Warning
	
		_actionText = "<t color='#FF0000'>- Spawn In Flight Unavailable - Please Wait";


			[
			
				player,												
				_actionText,										
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",	
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",	
				"
				
					(player getVariable 'aircraftMenu') and 
					(count (BEW_v_ActiveSpawnInPlanes select {alive _x}) < 1) and 
					(BEW_v_spawnInPlaneRespawnDelay) and 
					(vehicle player == player) and 
					((typeOf player == 'B_Pilot_F') or (serverCommandAvailable '#kick')) and 
					((worldName in BEW_v_noAirfieldMaps) or (side player == EAST))
				
				",												
				"
				
					(player getVariable 'aircraftMenu') and 
					(count (BEW_v_ActiveSpawnInPlanes select {alive _x}) < 1) and 
					(BEW_v_spawnInPlaneRespawnDelay) and 
					(vehicle player == player) and 
					((typeOf player == 'B_Pilot_F') or (serverCommandAvailable '#kick')) and 
					((worldName in BEW_v_noAirfieldMaps) or (side player == EAST))
				
				",												
				{},													
				{},													
				{
					
					"Spawn In Flight Unavailable" hintC [

						"Please wait."

					];
					
				},													
				{},													
				[],													
				1,													
				99.9,													
				false,												
				false												
			
			] call BIS_fnc_holdActionAdd;