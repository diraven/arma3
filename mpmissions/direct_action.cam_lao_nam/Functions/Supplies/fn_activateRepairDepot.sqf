
	_center = param [0, player];
	_spawnDir = param [1, random 360];
	_side = param [2, WEST];
	
	_spawnPos = switch (typeName _center) do {
	
		case "OBJECT"	:	{_center modelToWorld [0,4,0]};
		case "ARRAY" 	:	{_center};
		case "STRING"	:	{markerPos _center};
		default 			{_center modelToWorld [0,4,0]};
	
	};
	
	
	_side = switch (typeName _side) do { 
  
		case "STRING" : {call compile format ["%1", _side]}; 
		case "SIDE" : {_side}; 
		default {_side}; 

	};
	
	
	// Spawn Repair Station
	
		_repairStation = createVehicle ["Land_RepairDepot_01_green_F",_spawnPos, [], 0, "CAN_COLLIDE"];
		_repairStation setVectorUp [0,0,1];
		_repairStation setDir _spawnDir;
		
		// Setup Repair Station
		
			_repairStation allowDamage false;
			_repairStation enableSimulationGlobal false;
			_repairStation setVariable ['canRespawn', true, true];
			
			
	
	// Add To Database
			
		_repairStationArray = [getPos _repairStation, getDir _repairStation, str _side];
		
		if (_side == EAST) then {
			
			// Remove Depot
			
				_depotsInArea = BEW_v_deployedRepairDepots_EAST select {(getPos _repairStation distance2D (_x select 0)) < 15};

				{

					BEW_v_deployedRepairDepots_EAST = BEW_v_deployedRepairDepots_EAST - [_x];

				} forEach _depotsInArea;
				
				
				BEW_v_deployedRepairDepots_EAST pushBackUnique _repairStationArray;
				
				if !(isNil "OO_INIDBI") then {
				
					["write", ["Locations", "Deployed Repair Depots EAST", BEW_v_deployedRepairDepots_EAST]] call BEW_v_dataBase;  
				
				}; 
			
		}else{
			
			// Remove Depot
			
				_depotsInArea = BEW_v_deployedRepairDepots_WEST select {(getPos _repairStation distance2D (_x select 0)) < 15};

				{

					BEW_v_deployedRepairDepots_WEST = BEW_v_deployedRepairDepots_WEST - [_x];

				} forEach _depotsInArea;
				
				
				BEW_v_deployedRepairDepots_WEST pushBackUnique _repairStationArray;
				
				if !(isNil "OO_INIDBI") then {
				
					["write", ["Locations", "Deployed Repair Depots WEST", BEW_v_deployedRepairDepots_WEST]] call BEW_v_dataBase;  
					
				};
			
		};
			
	
					
	// Create Repair Station Marker
	
		_markerSize = 15;
		_markerName = format ["%1_repairStationArea", _repairStation];
		_repairStationAreaMarker = createMarker [_markerName, getPos _repairStation];
		_repairStationAreaMarker setMarkerShape "ELLIPSE";
		_repairStationAreaMarker setMarkerSize [_markerSize, _markerSize];
		_repairStationAreaMarker setMarkerColor "colorYellow";
		_repairStationAreaMarker setMarkerAlpha 0.3;
		_repairStationAreaMarker setMarkerText "Repair Station";	
	

	// Create Icon Markers
	
		_iconMarkers = [_repairStation, "loc_use", "ColorYellow", [1, 1], TRUE, TRUE] call BEW_FNC_createMarkerWithBackground;
		
		
	// Spawn Serivce Pad Trigger
	
		_servicePad = [_repairStation, _markerSize, _markerSize] remoteExec ["BEW_FNC_servicePadTrigger", 0, true];
	
	
	// Stop Moving Marker
	
		_repairStation setVariable ["stopMovingMarker", TRUE];
		
		
	// Clean Up 
	
		[_repairStation, _repairStationAreaMarker, _iconMarkers, _side, _repairStationArray] spawn {
			
			_repairStation = _this select 0;
			_repairStationAreaMarker = _this select 1;
			_iconMarkers = _this select 2; 
			_side = _this select 3;
			_repairStationArray = _this select 4;
			
			waitUntil {sleep 3; !(alive _repairStation) or (underwater _repairStation)};
			
			deleteVehicle _repairStation;
			{deleteMarker _x} forEach _iconMarkers;
			deleteMarker _repairStationAreaMarker;	
			
			// Remove From Database
			
				if (_side == EAST) then {
					
						BEW_v_deployedRepairDepots_EAST = BEW_v_deployedRepairDepots_EAST - [_repairStationArray];
						
						if !(isNil "OO_INIDBI") then {
						
							["write", ["Locations", "Deployed Repair Depots EAST", BEW_v_deployedRepairDepots_EAST]] call BEW_v_dataBase;  
						
						};
					
				}else{
					
						BEW_v_deployedRepairDepots_WEST = BEW_v_deployedRepairDepots_WEST - [_repairStationArray];
						
						if !(isNil "OO_INIDBI") then {
						
							["write", ["Locations", "Deployed Repair Depots WEST", BEW_v_deployedRepairDepots_WEST]] call BEW_v_dataBase;  
							
						};
					
				};
			
		};
				