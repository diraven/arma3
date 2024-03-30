	
	private ["_center", "_dir", "_side", "_centerPos", "_outpostObj", "_factionTag"];
	
	_center = param [0, getpos player];
	_dir = param [1, random 360];
	_side = param [2, WEST];
	
	_side = switch (typeName _side) do { 
  
		case "STRING" : {call compile format ["%1", _side]}; 
		case "SIDE" : {_side}; 
		default {_side}; 

	};

	
	
	// Define Center Pos 
	
		_centerPos = switch (typeName _center) do {

			case "ARRAY" :	{_center};
			case "OBJECT" :	{getPos _center};
			case "STRING" :	{markerPos _center};
			default {_center};

		};
		
		
	// Define Center Pos 
	
		_outpostObj = switch (typeName _center) do {

			case "ARRAY" :	{objNull};
			case "OBJECT" :	{_center};
			case "STRING" :	{objNull};
			default {objNull};

		};
		
		if !(isNull _outpostObj) then {
			
			_dir = getDir _outpostObj;
		
		};
	
	
	// Define Faction Tag

		_factionTag = switch (_side) do {

			case WEST	:	{"BLU"};
			case EAST 	:	{"OPF_1"};
			default {"BLU"};

		};


	// Setup Outpost
		
		if (isNull _outpostObj) then {
			
			_outpostObj = createVehicle ["B_CargoNet_01_ammo_F", _centerPos, [], 0, "CAN_COLLIDE"];
			
		};
		
		_outpostObj setDir _dir;
		_outpostObj setVectorUp [0,0,1];
		_outpostObj setPosATL [(getPosATL _outpostObj) select 0, (getPosATL _outpostObj) select 1, 0];
		_outpostObj allowDamage false;
		_outpostObj enableSimulationGlobal false;
		_outpostObj setVariable ["BEW_V_CanCarry", FALSE];
		_outpostObj setVariable ["dontLoad", TRUE, TRUE];
		_outpostObj setVariable ["canRespawn", true, true];
		
		
		// Add To Database
			
			_outpostArray = [getPos _outpostObj, getDir _outpostObj, str _side];
			
			if (_side == EAST) then {
				
				// Remove Old Arsenal
				
					_arsenalsInArea = BEW_v_deployedOutposts_EAST select {(getPos _outpostObj distance2D (_x select 0)) < 15};

					{

						BEW_v_deployedOutposts_EAST = BEW_v_deployedOutposts_EAST - [_x];

					} forEach _arsenalsInArea;
					
					
					BEW_v_deployedOutposts_EAST pushBackUnique _outpostArray;
					
					if !(isNil "OO_INIDBI") then {
					
						["write", ["Locations", "Deployed Outposts EAST", BEW_v_deployedOutposts_EAST]] call BEW_v_dataBase;  
					
					}; 
				
			}else{
				
				// Remove Old Arsenal
				
					_arsenalsInArea = BEW_v_deployedOutposts_WEST select {(getPos _outpostObj distance2D (_x select 0)) < 15};

					{

						BEW_v_deployedOutposts_WEST = BEW_v_deployedOutposts_WEST - [_x];

					} forEach _arsenalsInArea;
					
					
					BEW_v_deployedOutposts_WEST pushBackUnique _outpostArray;
					
					if !(isNil "OO_INIDBI") then {
					
						["write", ["Locations", "Deployed Outposts WEST", BEW_v_deployedOutposts_WEST]] call BEW_v_dataBase;  
						
					};
				
			};
	
	
	// Create Outpost Marker
	
		_markerName = format ["%1_outpostArea", _outpostObj];
		_outpostAreaMarker = createMarker [_markerName, getPos _outpostObj];
		_outpostAreaMarker setMarkerShape "ELLIPSE";
		_outpostAreaMarker setMarkerSize [15, 15];
		_outpostAreaMarker setMarkerColor "colorGreen";
		_outpostAreaMarker setMarkerAlpha 0.3;
		_outpostAreaMarker setMarkerText "the Outpost";
	
		BEW_v_respawnMarkerList = BEW_v_respawnMarkerList + [_outpostAreaMarker];
			publicVariable "BEW_v_respawnMarkerList";
		
		
	// Wait Till Outpost Respawned
	
		[_outpostObj, _outpostAreaMarker, _side, _outpostArray] spawn {
			
			_outpostObj = _this select 0;
			_outpostAreaMarker = _this select 1;
			_side = _this select 2;
			_outpostArray = _this select 3;
			
			waitUntil {sleep 3; !(alive _outpostObj)};
			
			BEW_v_respawnMarkerList = BEW_v_respawnMarkerList - [_outpostAreaMarker];
				publicVariable "BEW_v_respawnMarkerList";
			
			
			// Remove From Database
			
				if (_side == EAST) then {
					
						BEW_v_deployedOutposts_EAST = BEW_v_deployedOutposts_EAST - [_outpostArray];
						
						if !(isNil "OO_INIDBI") then {
						
							["write", ["Locations", "Deployed Outposts EAST", BEW_v_deployedOutposts_EAST]] call BEW_v_dataBase;  
						
						};
					
				}else{
					
						BEW_v_deployedOutposts_WEST = BEW_v_deployedOutposts_WEST - [_outpostArray];
						
						if !(isNil "OO_INIDBI") then {
						
							["write", ["Locations", "Deployed Outposts WEST", BEW_v_deployedOutposts_WEST]] call BEW_v_dataBase;  
							
						};
					
				};
		
		};
		
	
	// Spawn Tent
	
		_tent = createVehicle ["Land_ConnectorTent_01_NATO_cross_F", getPos _outpostObj, [], 0, "CAN_COLLIDE"];
		_tent setDir getDir _outpostObj;
		_tent allowDamage false;
	
	
	// Spawn Fast Travel Flag
	
		_offsetPos = _outpostObj modelToWorld [-3,-3,-1];
		_flag = createVehicle ["Flag_NATO_F", _offsetPos, [], 0, "CAN_COLLIDE"];
		_flag allowDamage false;
		
		
	// Spawn Internal Lighting
	
		[_tent] call BEW_FNC_SpawnInternalLighting;
	
	
	// Change Flag Textures
	
		[_flag, _factionTag] call BEW_FNC_SetFlagTexture; 
	
	
	
	// Add Flag To Fast Travel
	
		[_flag] spawn {
	
			_flag = _this select 0;
			
			_flag setVariable ["flagName", "Outpost", TRUE];
			
			
			// Add To Fast Travel Flags Array
			
				BEW_V_AllFastTravelFlags = BEW_V_AllFastTravelFlags + [_flag];
					publicVariable "BEW_V_AllFastTravelFlags";
				
				BEW_V_ActivatedFastTravelFlags = BEW_V_ActivatedFastTravelFlags + [_flag];
					publicVariable "BEW_V_ActivatedFastTravelFlags";
				
			
			// Remove When Destroyed
			
				waitUntil {sleep 3; !(alive _flag)};
				
				BEW_V_AllFastTravelFlags = BEW_V_AllFastTravelFlags - [_flag];
					publicVariable "BEW_V_AllFastTravelFlags";
				
				BEW_V_ActivatedFastTravelFlags = BEW_V_ActivatedFastTravelFlags - [_flag];
					publicVariable "BEW_V_ActivatedFastTravelFlags";
		
		
		};
		
	
	// Create Respawn Position
	
		_respawnPosition = [_side, getPos _outpostObj, "Outpost"] call BIS_fnc_addRespawnPosition;
		
		
	// Stop Moving Marker
	
		_outpostObj setVariable ["stopMovingMarker", TRUE];
		
	
	// Add Arsenal
					
		[[_outpostObj],{
		
			_outpostObj = _this select 0;	
			
			
			// Add Object To Arsenal List

				[_outpostObj, TRUE] call BEW_FNC_addObjectToArsenalList;
			

			// Update Variables
			
				_outpostObj setVariable ["BEW_V_OutpostActivated", TRUE, TRUE];
				_outpostObj setVariable ["BEW_V_CanCarry", FALSE, TRUE];
													
		
		}] remoteexec ["bis_fnc_call", 0, true];
	
	
	// Wait Until Obj Dead or Underwater
	
		waitUntil {sleep 3; !(alive _outpostObj) or (underwater _outpostObj)};
	
	
	// Clean Up
	
		deleteVehicle _tent;
		deleteVehicle _flag;
		deleteMarker _outpostAreaMarker;
		{deleteVehicle _x} forEach attachedObjects _tent;
	
	
	// Remove Respawn Position
	
		_respawnPosition call BIS_fnc_removeRespawnPosition;
			