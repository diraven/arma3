if (BEW_v_Zombies) exitWith {};
	
	_despawnDelayMins = 20;
	_minsBetweenDrops = 10;

	while {true} do {

		// Check For Players On Server
		
			if (count allPlayers > 0) then {
			
			
				// Select Player
					
					_selectedPlayer = allPlayers call BIS_FNC_SelectRandom;
					
					
				// Select Position
					
					private _dropPos = [];
					private _maxCount = 0;

					while {count _dropPos < 1} do {

						_maxCount = _maxCount + 1;

						_dropPos = [_selectedPlayer, [2000, 4000]] call BEW_FNC_FindRandomEmptyPosition;

					// Define Blacklisted Zones
					
						_allRestrictedZones = [];


						// Safe Zones
							
							_safeZoneMarkers = getMissionLayerEntities "Camps" select 1; 
								_allRestrictedZones append _safeZoneMarkers;


						// Objectives
						
							_allObjectives = getMissionLayerEntities "allObjectiveMarkers" select 1;  
								_allRestrictedZones append _allObjectives;
						
						
						// Filter Blacklisted Zones
							
							if (_maxCount < 1000) then {
													
								if (([_dropPos, _allRestrictedZones] call BEW_FNC_inArrayOfAreas) or !(_dropPos inArea "wholeMapMarker")) then {

									_dropPos = [];

								};
	
							};

					};
					
					
				// Make Sure Spawn Pos Is Inland
				
					_dryMarkerPos = [_dropPos, 100] call MGI_dryArea;
					
					_dropPos = markerPos _dryMarkerPos;

					
				// Spawn Container
					
					_container = [_dropPos, _despawnDelayMins] call BEW_FNC_SupplyDrop;
					
					sleep (_minsBetweenDrops * 60);


			}else{

				sleep 1;

			};

	};
