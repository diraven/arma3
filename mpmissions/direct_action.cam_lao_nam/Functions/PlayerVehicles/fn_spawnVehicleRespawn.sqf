

_veh = _this select 0;
_vehicleData = _this select 1;

	_pos = _vehicleData select 1;
		_origPos = _pos;
	_dir = _vehicleData select 2;
	
	_types = _vehicleData select 3;
		_newType = _types select 0;
		_origType = _types select 1;

	_vehFactions = _vehicleData select 4; 
		_faction = _vehFactions select 0;
		_originalFaction = _vehFactions select 1;
		
	_missionLevel = _vehicleData select 5;
	_forcedVarname = _vehicleData select 6; 
	_objectToAttach = _vehicleData select 7;
	_respawnDelay = _vehicleData select 8;
	_spawnAsSimpleObject = _vehicleData select 9;
	_mobileSpawnPoint = _vehicleData select 10;
		
	
// Create Triggers

		_allTriggers = [];
	
		// Disabled Trigger 
		
			_disabledTrigger = [_veh, 1200] call BEW_FNC_DisabledTrigger;
			
				_allTriggers pushBack _disabledTrigger;
				
				
// Wait Until Vehicle Dead Or Abandoned Or Moved
	
	waitUntil {sleep 3; (_veh distance2D _origPos > 20) or !(alive _veh) or (triggerActivated _disabledTrigger)};
	
	
	if ((alive _veh) and !(triggerActivated _disabledTrigger)) then {
	
		// Add To Array
		
			BEW_v_SpawnedPlayerVehicles pushBack _veh;
		
	};


// Wait Until Vehicle Dead Or Abandoned

	waitUntil {sleep 3; !(alive _veh) or (triggerActivated _disabledTrigger)};


// Clean Up Vehicle

	deleteVehicle _veh;
	{deleteVehicle _x} forEach _allTriggers;
	removeAllActions _veh;


// Remove From Array 

	BEW_v_SpawnedPlayerVehicles = BEW_v_SpawnedPlayerVehicles - [_veh];


// Respawn Delay


	if !(isMultiplayer) then {
	
		sleep _respawnDelay;
	
	}else{
	
		sleep 1;
	
	};


// Translate Original Type
	
	private ["_translationList"]; 
	 
	call compile format ["      
	   
		_translationList = [[%1_Map_TransList, %1_New_TransList]]; 

	", _originalFaction]; 

	_newType = [_origType, _translationList] call BEW_FNC_TranslateClassNames;


	if !(_spawnAsSimpleObject) then {
	
		[_veh, _pos, _dir, [_newType, _origType], [_faction, _originalFaction], _missionLevel, _forcedVarname, _objectToAttach, _respawnDelay, _spawnAsSimpleObject, _mobileSpawnPoint] spawn BEW_FNC_spawnVehicle;	
	
	}else{

		// Create Vehicle
		
			_veh = createVehicle [_newType, _pos, [], 0, "CAN_COLLIDE"];
			_veh setPosASL _origPos;
			_veh setDir _dir;


		// Replace With Simple Object

				_veh = [_veh] call BEW_FNC_ReplaceWithSimpleObject;
				
				
			// Adjust Vector Of Taildraggers
			
				[_veh] call BEW_FNC_tailDraggers;
								
				_veh allowDamage false;
				_veh enableCopilot false;
				_veh setVariable ["selectActivated", FALSE, TRUE];
				_veh setVariable ["CanBeActivated", true, true];
				_veh setVariable ["missionLevel", _missionLevel, true];
				
			
		// Hide Selections

			[_veh] call BEW_FNC_hideSelections;

		
		// Textures
			
			// Get Textures

				_textureListArray = [typeOf _veh, _originalFaction] call BEW_FNC_getTextureList;
					_textureList = _textureListArray select 0;
					_customFactionTextures = _textureListArray select 1;
			
			
			// Set Textures

				[_veh, _textureList] call BEW_FNC_setVehicleTextures;
		
		
		// Vehicle Data
		
			_vehicleData = [_veh, _origPos, _dir, [_newType, _origType], _vehFactions, _missionLevel, _forcedVarname, _objectToAttach, _respawnDelay, _spawnAsSimpleObject, _mobileSpawnPoint];
			
			_veh setVariable ["vehicleData", _vehicleData, true];
			
	};