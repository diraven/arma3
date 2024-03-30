	private [
	
		"_origVeh", 
		"_origPos", 
		"_origDir", 
		"_origType", 
		"_origPilotType", 
		"_side", 
		"_faction", 
		"_translationList", 
		"_newType", 
		"_callsign",
		"_respawnDelay", 
		"_hasRespawned",
		"_startPad"
	
	];
	
	_origVeh = _this select 0;
	
	_origPos = getPosATL _origVeh;
	_origDir = getDir _origVeh;
	_origType = typeOf _origVeh;
	
	_missionLevel = _origVeh getVariable "missionLevel";
	_remoteCall = _origVeh getVariable "remoteCall";
	_faction = _origVeh getVariable "faction";
	
	_origPilotType = "B_Helipilot_F";
	_respawnDelay = 30;
	_side = WEST;
	
	
	// Create Empty All Transport Vehicles Array
	
		if (isNil "BEW_v_GliderVehicles") then {
	
			BEW_v_GliderVehicles = [];
				publicVariable "BEW_v_GliderVehicles";
	
		};

	// Define Translation List
	
		call compile format ["
				
			_translationList = [[%1_Map_TransList, %1_New_TransList]];

		", _faction];
	
	
	// Translate Class Name
	
		_newType = [_origType, _translationList] call BEW_FNC_TranslateClassNames;
		
		
	// Define Call Sign
	
		_callsign = [configFile >> "CfgVehicles" >> _newType] call BIS_fnc_displayName;
	
	
	// Delete Original Veh
		
		deleteVehicle _origVeh;
									
		sleep 1;
		
	
	// Exit If Type Is Still Helicopter
	
		if (_newType isKindOf "Helicopter") exitWith {};
	
	
	// Flag For Respawn
	
		_hasRespawned = FALSE;


while {true} do {
	
	// Create Vehicle
	
		_veh = createVehicle [_newType, _origPos, [], 0, "CAN_COLLIDE"];
		_veh setDir _origDir;

	
	// Add Veh To All Vehs Array 
	
		BEW_v_GliderVehicles = BEW_v_GliderVehicles + [_veh];
			publicVariable "BEW_v_GliderVehicles";
	
	
	// Create Unique VarName
	
		_varName = [_veh, "Glider_"] call bis_fnc_objectvar;
			
		[[_veh, _varName] ,{
			
			_veh = _this select 0;
			_varName = _this select 1;
			
			_veh setvehiclevarname _varName;
			missionNamespace setVariable [ _varName, _veh];
		
		}] remoteExec ["BIS_FNC_Call", 0, true];
		
		
	// Define Displayname
	
		_displayName = [configFile >> "CfgVehicles" >> _newType] call BIS_fnc_displayName;


	// Setup New Vehicle
	
		_veh setVehicleLock "LOCKED";
		_veh allowDamage FALSE;
		_veh enableSimulationGlobal false;
		_veh enableVehicleCargo false;
		_veh setVariable ["remoteCall", _remoteCall, true];
		_veh setVariable ["availableForTransport", FALSE, TRUE];
		_veh setVariable ["gliderCanBeActivated", FALSE, TRUE];
		clearMagazineCargoGlobal _veh;
		clearWeaponCargoGlobal _veh;
		clearItemCargoGlobal _veh;
		
		
	// Create Start Helipad
	
		_startPad = createVehicle ["Land_HelipadEmpty_F", _origPos, [], 0, "CAN_COLLIDE"];
		_startPad setDir _origDir;
		
	
	// New Veh Textures

		// Get Textures

			_textureListArray = [typeOf _veh, _faction] call BEW_FNC_getTextureList;
				_textureList = _textureListArray select 0;
				_customFactionTextures = _textureListArray select 1;
		
		
		// Set Textures

			[_veh, _textureList] call BEW_FNC_setVehicleTextures;
	
	
// Unlock When Mission Level Reached
	
	waitUntil {missionlevel >= _missionLevel};
	
	
	// Veh Setup When Unlocked
	
		_veh setVehicleLock "UNLOCKED";
		_veh allowDamage TRUE;
		_veh enableSimulationGlobal true;
		_veh enableVehicleCargo true;
		_veh flyInHeight 150;
		_veh setVariable ["availableForTransport", TRUE, TRUE];
	
	
	// Open Ramp
	
		_veh animatedoor ["door_rear_source", 1]; 
		_veh animatesource ["ramp_anim", 1];
		_veh animatesource ["ramp", 1];
		_veh animateDoor ["CargoRamp_Open", 1];
		_veh animate ["cargoDoor_1", 1]; 
		_veh animate ["cargoDoor_2", 1];
		
	
	// Create Action 
		
		if (_hasRespawned) then {
		
			[_veh, _startPad] remoteExec ["BEW_FNC_GliderAction", 0];
		
		};
		
		
	// Send Message
		
		[HQ_WEST, format ["All units be advised; a %1 is now available for transport at %2.", _displayName, mapGridPosition _origPos]] remoteExec ["sideChat", 0];
	
	
	// Wait Until Destroyed
	
		waitUntil {((!alive _veh))};
	
	
	// Delete If Destroyed Near Spawn
	
		if (_veh distance2D _origPos < 100) then {deletevehicle _veh};

	
	// Delete Start Pad
	
		deleteVehicle _startPad;
	
	
	// Remove Veh Array From All Vehs Array
		
		BEW_v_GliderVehicles = BEW_v_GliderVehicles - [_veh];
			publicVariable "BEW_v_GliderVehicles";
	

		sleep _respawnDelay;
		
		_hasRespawned = TRUE;
		
};