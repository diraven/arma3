if (

	!(typeOf player == 'B_soldier_UAV_F') and 
	!((typeOf player == 'B_soldier_M_F') and BEW_v_BF4Mode) and 
	!(isMultiplayer)

) exitWith {};

	_types = [] call BEW_FNC_DroneTypesList;
	_activationRadius = 5;

	{
	
		_typeData = _x;
		
		_type = _typeData select 0; 
		_missionlevel = _typeData select 1; 
		
		//_displayName = [configFile >> "CfgVehicles" >> _type] call BIS_fnc_displayName;
		_displayName = [_type] call BEW_FNC_GetDisplayName;
		
	
		// Spawn Drone Action
	
			_actionText = format ["<t color='#FFB6C1'>- Spawn %1", _displayName];
	
			call compile format ["

					[
					
						player,												
						_actionText,										
						""\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa"",	
						""\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa"",	
						
						""
						
							(player getVariable 'DroneMenu') and 
							(missionLevel >= %2) and 
							(
							
								(count (BEW_v_droneConsoles select {((_x distance player) < %1)}) > 0) or 
								(count ((player nearEntities [['Man'], %1]) select {alive _x and (typeOf _x == 'B_recon_JTAC_F')}) > 0)
							
							) and 
							(count (BEW_v_activeDrones select {alive _x}) < 1) and 
							!(BEW_v_droneRespawnDelay)
							
						"",		
						
						""
						
							(player getVariable 'DroneMenu') and 
							(missionLevel >= %2) and 
							(
							
								(count (BEW_v_droneConsoles select {((_x distance player) < %1)}) > 0) or 
								(count ((player nearEntities [['Man'], %1]) select {alive _x and (typeOf _x == 'B_recon_JTAC_F')}) > 0)
							
							) and 
							(count (BEW_v_activeDrones select {alive _x}) < 1) and 
							!(BEW_v_droneRespawnDelay)
						
						"",	
						
						{},													
						{},													
						{
						
							params ['_target', '_caller', '_actionId', '_arguments'];
		
							_type = _arguments select 0;
							_missionLevel = _arguments select 1;
							_displayName = _arguments select 2;
							
							[_caller, _type] remoteExec ['BEW_FNC_spawnDrone', 2];
						
						},													
						{},													
						[_type, _missionLevel, _displayName],													
						1,													
						-91,													
						false,												
						false												
					
					] call BIS_fnc_holdActionAdd;
			
			", _activationRadius, _missionLevel];
		
	
	} forEach _types;
	
	
	// Not Near Drone Console Or JTAC Warning
	
		_actionText = format ["<t color='#FF0000'>- Can't Spawn Drones - No Drone Console Or JTAC Within %1m", _activationRadius];
	
		call compile format ["
		
			[
			
				player,												
				_actionText,										
				""\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa"",	
				""\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa"",	
				""
				
					(player getVariable 'DroneMenu') and 
					!(
								
						(count (BEW_v_droneConsoles select {((_x distance player) < %1)}) > 0) or 
						(count ((player nearEntities [['Man'], %1]) select {alive _x and (typeOf _x == 'B_recon_JTAC_F')}) > 0)
								
					)
				
				"",												
				""
				
					(player getVariable 'DroneMenu') and 
					!(
							
						(count (BEW_v_droneConsoles select {((_x distance player) < %1)}) > 0) or 
						(count ((player nearEntities [['Man'], %1]) select {alive _x and (typeOf _x == 'B_recon_JTAC_F')}) > 0)
							
					)
					
				"",												
				{},													
				{},													
				{
				
					""Too Far From Drone Console"" hintC [

						""You are currently too far away from a drone console or JTAC to spawn drones.""

					];

				},													
				{},													
				[],													
				1,													
				-91,													
				false,												
				false												
			
			] call BIS_fnc_holdActionAdd;
			
		", _activationRadius];
		
		
	// Despawn Active Drones
	
		_actionText = "<t color='#FF0000'>- Self Destruct All Active Drones";

		call compile format ["

			[
			
				player,												
				_actionText,										
				""\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa"",	
				""\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa"",	
				""
				
				(player getVariable 'DroneMenu') and 
				(
								
					(count (BEW_v_droneConsoles select {((_x distance player) < %1)}) > 0) or 
					(count ((player nearEntities [['Man'], %1]) select {alive _x and (typeOf _x == 'B_recon_JTAC_F')}) > 0)
								
				) and 
				!(count (BEW_v_activeDrones select {alive _x}) < 1) and 
				!(BEW_v_droneRespawnDelay)
				
				"",												
				""
				
				(player getVariable 'DroneMenu') and 
				(
								
					(count (BEW_v_droneConsoles select {((_x distance player) < %1)}) > 0) or 
					(count ((player nearEntities [['Man'], %1]) select {alive _x and (typeOf _x == 'B_recon_JTAC_F')}) > 0)
								
				) and 
				!(count (BEW_v_activeDrones select {alive _x}) < 1) and 
				!(BEW_v_droneRespawnDelay)
				
				"",												
				{},													
				{},													
				{
			
					[] remoteExec ['BEW_FNC_despawnActiveDrones', 2];
					
					hint 'All Active Drones Have Been Destroyed';
				
				},													
				{},													
				[],													
				5,													
				-91,													
				false,												
				false												
			
			] call BIS_fnc_holdActionAdd;
			
		", _activationRadius];
		
		
	// Delay Warning
	
		_actionText = "<t color='#FF0000'>- Can't Spawn Drones - Drones Currently Unavailable";

		call compile format ["

			[
			
				player,												
				_actionText,										
				""\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa"",	
				""\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa"",	
				""
				
					(player getVariable 'DroneMenu') and 
					(
								
						(count (BEW_v_droneConsoles select {((_x distance player) < %1)}) > 0) or
						(count ((player nearEntities [['Man'], %1]) select {alive _x and (typeOf _x == 'B_recon_JTAC_F')}) > 0)
								
					) and 
					(count (BEW_v_activeDrones select {alive _x}) < 1) and 
					(BEW_v_droneRespawnDelay)
				
				"",												
				""
				
					(player getVariable 'DroneMenu') and 
					(
								
						(count (BEW_v_droneConsoles select {((_x distance player) < %1)}) > 0) or 
						(count ((player nearEntities [['Man'], %1]) select {alive _x and (typeOf _x == 'B_recon_JTAC_F')}) > 0)
								
					) and  
					(count (BEW_v_activeDrones select {alive _x}) < 1) and 
					(BEW_v_droneRespawnDelay)
				
				"",												
				{},													
				{},													
				{
					
					""Drones Currently Unavailable"" hintC [

						""Drones are currently unavailable. Please wait.""

					];
					
				},													
				{},													
				[],													
				1,													
				-91,													
				false,												
				false												
			
			] call BIS_fnc_holdActionAdd;
			
		", _activationRadius];