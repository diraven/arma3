
	if (!isServer) exitWith {};
	
	if (isNil "BEW_v_spawnPointsSet") then {BEW_v_spawnPointsSet = FALSE};
	if (BEW_v_spawnPointsSet) exitWith {};
	
	// Setup HQ Spawn Arrows
	
		_allArrows = [];

		BEW_v_InfantryArrows = getMissionLayerEntities "InfantrySpawn" select 0; 
			_allArrows append BEW_v_InfantryArrows;
			
		BEW_v_HeliArrows = getMissionLayerEntities "HeliSpawn" select 0; 
			_allArrows append BEW_v_HeliArrows;
		
		BEW_v_AirArrows = getMissionLayerEntities "AirSpawn" select 0; 
			_allArrows append BEW_v_AirArrows;
		
		BEW_v_VehicleArrows = getMissionLayerEntities "VehicleSpawn" select 0; 
			_allArrows append BEW_v_VehicleArrows;
		
		BEW_v_NavalArrows = getMissionLayerEntities "NavalSpawn" select 0; 
			_allArrows append BEW_v_NavalArrows;
		
		BEW_v_DroneArrows = getMissionLayerEntities "DroneSpawn" select 0; 
			_allArrows append BEW_v_DroneArrows;
			
		BEW_v_alliedRespawnArrows = getMissionLayerEntities "AlliedSpawn" select 0; 
			_allArrows append BEW_v_alliedRespawnArrows;
			
			publicVariable "BEW_v_alliedRespawnArrows";
			
		BEW_v_EastSpawnArrows = getMissionLayerEntities "EastSpawn" select 0; 
			_allArrows append BEW_v_EastSpawnArrows;
		
			publicVariable "BEW_v_EastSpawnArrows";
			
	
		// Set Up Allied Spawn Arrows

			{
				
				_alliedSpawnArrow = _x;
			
				_nearestAlliedCamp = [BEW_v_allAlliedCamps, getPos _alliedSpawnArrow] call BIS_fnc_nearestPosition;
				
				_alliedSpawnArrow setVariable ["spawnPointName", markerText _nearestAlliedCamp, TRUE];
						
			} forEach BEW_v_alliedRespawnArrows;
			
			
		
	// Global Variable For Spawn Arrows

		BEW_v_SpawnArrows = _allArrows;
			publicVariable "BEW_v_SpawnArrows";
			
			
	// Setup Initial Spawn Point
		
		waitUntil {!(isNil "BEW_v_RandomSpawn")};
					
				private ["_selectedAlliedCamp"];
				
			if (BEW_v_initialSpawnCamp == "") then {
				
				if ((BEW_v_RandomSpawn) and (count (BEW_v_alliedRespawnArrows select {!(surfaceIsWater getpos _x)}) > 0)) then {
							
						initialSpawnPoint = objNull;	
						
						while {(isNull initialSpawnPoint)} do {
							
							_selectedAlliedCamp = selectRandom BEW_v_allAlliedCamps;

							_campRespawnArrows = BEW_v_alliedRespawnArrows select {_x inArea _selectedAlliedCamp};
							
							if (count _campRespawnArrows > 0) then {
							
								initialSpawnPoint = _campRespawnArrows select 0;
								
								if (surfaceIsWater getpos initialSpawnPoint) then {
									
									initialSpawnPoint = objNull;
									
								};
							
							}else{
							
								initialSpawnPoint = objNull;
							
							};
							
						};
						
						if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
						 
							["write", ["Locations", "Initial Camp", _selectedAlliedCamp]] call BEW_v_dataBase; 
					
						};

				}else{
					
					if (isNil "initialSpawnPoint") then {
					 
						initialSpawnPoint = HQ_Spawn;
						
					};
					
				};
				
								
			}else{
							
				if (BEW_v_RandomSpawn) then {
				
					_campRespawnArrows = BEW_v_alliedRespawnArrows select {_x inArea BEW_v_initialSpawnCamp};
				
					initialSpawnPoint = _campRespawnArrows select 0;
				
				}else{
					
					if (isNil "initialSpawnPoint") then {
					
						initialSpawnPoint = HQ_Spawn;
						
					};
					
				};
					
			};
		
		
		
		publicVariable "initialSpawnPoint";