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
	
	_missionLevel = _origVeh getVariable ["missionLevel", 1];
	_remoteCall = _origVeh getVariable ["remoteCall", TRUE];
	_faction = _origVeh getVariable ["faction", "BLU"];
	
	_origPilotType = "B_Helipilot_F";
	_respawnDelay = 30;
	_side = WEST;
	
	
	// Create Empty All Transport Vehicles Array
	
		if (isNil "BEW_v_HeliTransportVehicles") then {
	
			BEW_v_HeliTransportVehicles = [];
				publicVariable "BEW_v_HeliTransportVehicles";
	
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
		
		if (BEW_v_WW2) exitWith {};
									
		sleep 1;
		
	
	// Flag For Respawn
	
		_hasRespawned = FALSE;


while {true} do {
	
	// Create Vehicle
	
		_veh = createVehicle [_newType, _origPos, [], 0, "CAN_COLLIDE"];
		_veh setDir _origDir;
		
	
	// Attach To Invisible Helipad
					
	//	_attachHelipad = [_veh, _origPos, _origDir] call BEW_FNC_attachToInvisibleHelipad;

	
	// Add Veh To All Vehs Array 
	
		BEW_v_HeliTransportVehicles = BEW_v_HeliTransportVehicles + [_veh];
			publicVariable "BEW_v_HeliTransportVehicles";
	
	
	// Create Unique VarName
	
		_varName = [_veh, "TransportHeli_"] call bis_fnc_objectvar;
			
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
	
	
	// Delay
	
		sleep 1;
	
	// Create Crew Group

		_group = createGroup _side;

	
	// Create Crew
	
		_newPilotType = [_origPilotType] call BEW_FNC_TranslateClassNames;
		
		_group = [_origPos, _side, [_newPilotType, _newPilotType],[],[],[],[],[], _origDir] call BIS_fnc_spawnGroup;


	// Delay
	
		sleep 1;
		

	// Set Group Callsign
	
		[_group, [_callsign]] remoteExec ["setGroupIdGlobal", 0, true];
		
		
	// Check Callsign
	
		waitUntil {groupId _group == _callsign};

		
	// Crew Setup

		_crew = units _group;
		_driver = _crew select 0;
		_driver moveInDriver _veh;
		
		_copilot = _crew select 1;
		_copilot moveInTurret [_veh,[0]];

		{_x setVariable ["NOAI",1,false]} forEach units _group;
		{_x enableSimulationGlobal FALSE} forEach _crew;
		{_x setBehaviour "CARELESS"} forEach _crew;
		{_x disableAI "AUTOTARGET"} forEach _crew;
		{_x allowFleeing 0} forEach _crew;
		{_x setCaptive TRUE} forEach _crew;
		{_x allowDamage FALSE} forEach _crew;
		
		// Setup New Crew Loadout
			
			{
				_unit = _x;
			
				[_unit] call BEW_FNC_switchLoadout;
				
			} forEach _crew;
			
	// Lock Positions
	
		//Lock all turrets that have someone in them
			
			{
			
				if !( isNull (_veh turretUnit _x) ) then {
					_veh lockTurret [_x,true]
				};
				
			} forEach allTurrets _veh;
			
		//Lock drivers position
		
			_veh lockDriver true;

	
	// Open Ramp
	
		_veh animatedoor ["door_rear_source", 1]; 
		_veh animatesource ["ramp_anim", 1];
		_veh animatesource ["ramp", 1];
		_veh animateDoor ["CargoRamp_Open", 1];
		_veh animate ["cargoDoor_1", 1]; 
		_veh animate ["cargoDoor_2", 1];
		_veh animateDoor ["cargoramp_source", 1];		
	
	// Create Action 
		
		if (_hasRespawned) then {
		
			[_veh, _startPad] remoteExec ["BEW_FNC_heliTransportAction", 0];
		
		};
		
		
	// Send Message
		
		[HQ_WEST, format ["All units be advised; a %1 is now available for transport at %2.", _displayName, mapGridPosition _origPos]] remoteExec ["sideChat", 0];
	
	
	// Wait Until Destroyed
	
		waitUntil {(!canMove _veh) or (!alive _veh) or (!alive _driver)};
	
	
	// Delete If Destroyed Near Spawn
	
		if (_veh distance2D _origPos < 100) then {deletevehicle _veh};
	
	
	// Delete Crew
	
		{deleteVehicle _x} forEach _crew;
		
	
	// Delete Start Pad
	
		deleteVehicle _startPad;
	
	
	// Remove Veh Array From All Vehs Array
		
		BEW_v_HeliTransportVehicles = BEW_v_HeliTransportVehicles - [_veh];
			publicVariable "BEW_v_HeliTransportVehicles";
	

		sleep _respawnDelay;
		
		_hasRespawned = TRUE;
		
};