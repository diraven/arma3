
if (!isServer) exitWith {};

waitUntil {time > 0};

	if (isNil "BEW_v_allParadropVehs") then {
	
		BEW_v_allParadropVehs = [];
			publicVariable "BEW_v_allParadropVehs";
		
	};


	// Variable Setup
	
		private [
		
			"_veh",
			"_spawnPos",
			"_spawnDir",
			"_newType",
			"_origType",
			"_pilotType",
			"_group",
			"_displayName",		
			"_side",
			"_callsign",
			"_notification",
			"_respawnDelay",
			"_varNameStr",
			"_faction",
			"_vehGroup"
		
		];
		

		_spawnPos = _this select 0;
	
			switch (true) do {
				
				case (TypeName _spawnPos == "OBJECT"): {
				
					_veh = _this select 0;
				
					_spawnPos = getPos _veh;
					deleteVehicle _veh;
					
				};
				
				case (TypeName _spawnPos == "ARRAY"): {
				
					_spawnPos =  _this select 0;
				
				};

			};
			
		_spawnDir = _this select 1;
		
		_origType = _this select 2;
		
			_newType = [_origType, all_TransLists, TRUE, FALSE] call BEW_FNC_TranslateClassNames;
				_displayName = [configFile >> "CfgVehicles" >> _newType] call BIS_fnc_displayName;
			
			_pilotType = "B_Pilot_F";	
				_pilotType = [_pilotType] call BEW_FNC_TranslateClassNames;
			
		_side = _this param [3, WEST];
			_group = createGroup _side;
		
		_callsign = _this param [4, _displayName];
		_notification = _this param [5, FALSE];
		
		_faction = _veh getVariable ["faction", "BLU"];

		_respawnDelay = 30;
		
		
	// Exit If Air Superiority
	
		if (BEW_V_airSuperiority) exitWith {};
		
		
	// Exit If Vehicle Doesn't Exist
	
		if (!(isClass(configfile >> "CfgVehicles" >> _newType))) exitWith {};
		
		
	// Flag For Respawn
	
		_hasRespawned = FALSE;
	
	
while {true} do {		

	// Create Vehicle
		
		_veh = createVehicle [_newType, _spawnPos, [], 0, "CAN_COLLIDE"];
		_veh setDir _spawnDir;
	
	
	// Adjust Vector Of Taildraggers
	
		[_veh] call BEW_FNC_tailDraggers;
		
	
	// Attach To Invisible Helipad
					
		_attachHelipad = [_veh, _spawnPos, _spawnDir] call BEW_FNC_attachToInvisibleHelipad;


	// Vehicle Setup

		[[_veh, _faction], {
		
			_veh = _this select 0;
			_faction = _this select 1;
		
			// Textures

				// Get Textures

					_textureListArray = [typeOf _veh, _faction] call BEW_FNC_getTextureList;
						_textureList = _textureListArray select 0;
						_customFactionTextures = _textureListArray select 1;
				
				
				// Set Textures

					[_veh, _textureList] call BEW_FNC_setVehicleTextures;
					
		
		}] remoteExec ["call", 0, true];
		
		_veh allowDamage FALSE;
		clearItemCargo _veh;
		clearWeaponCargo _veh;
		clearMagazineCargo _veh;		
		_veh setFuel 0;
		
		
	// Hide Door If C47
	
		[_veh] call BEW_FNC_HideDoorIfC47;
		

	// Create Unique VarName
	
		_varName = [_veh, "ParaDropVeh_"] call bis_fnc_objectvar;
			
		[[_veh, _varName] ,{
			
			_veh = _this select 0;
			_varName = _this select 1;
			
			_veh setvehiclevarname _varName;
			missionNamespace setVariable [ _varName, _veh];
		
		}] remoteExec ["BIS_FNC_Call", 0, true];
		
	
	// Set Faction Variable 
	
		_veh setVariable ["faction", _faction, TRUE];
	
	
	// Add Veh To Array
		
		BEW_v_allParadropVehs pushback _veh;
			publicVariable "BEW_v_allParadropVehs";
	
	
	// Wait Until Not In Objective Area To Be Activated
			
			sleep 10;
			
			[_veh] call BEW_FNC_HideVehicleInObjectiveArea;
			
			_veh setVariable ["availableForTransport", TRUE, TRUE];
			

	// Create Crew

		if !(_veh isKindOf "HELICOPTER") then {
		
			_vehGroup = [_spawnPos, WEST, [_pilotType, _pilotType],[],[],[],[],[],180] call BIS_fnc_spawnGroup;		
			
		}else{
			
			_vehGroup = [_spawnPos, WEST, [_pilotType],[],[],[],[],[],180] call BIS_fnc_spawnGroup;		
		
		};
			
		[_vehGroup, [_callsign]] remoteExec ["setGroupId", 0, true];
	
		
	// Crew Setup

		_crew = units _vehGroup;
		(_crew select 0) moveInDriver _veh;
		
		if !(_veh isKindOf "HELICOPTER") then {
			(_crew select 1) moveInTurret [_veh, [0]];
		};
		
		{_x setVariable ["NOAI",1,false]} forEach _crew;
		{_x setBehaviour "CARELESS"} forEach _crew;
		{_x enableSimulationGlobal FALSE} forEach _crew;
		{_x disableAI "AUTOTARGET"} forEach _crew;
		{_x allowFleeing 0} forEach _crew;
		{_x setCaptive TRUE} forEach _crew;
		{_x allowDamage FALSE} forEach _crew;
	

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
						
		_veh animatedoor ["door_1_source", 1];
		_veh animatesource ["ramp", 1];
		_veh animatesource ["ramp_top", 1];
		_veh animatesource ["ramp_bottom", 1];
		_veh animateDoor ["cargoramp_source", 1];	
	
	
		
	// Create Action 
		
		if (_hasRespawned) then {
		
			[[_veh]] remoteExec ["BEW_FNC_ParadropPlayerActions", 0];
		
		};


	// Commandchat Message	
	
			[HQ_WEST, format ["All units be advised; a %1 is now available for paradrop insertion at %2.", _displayName, mapGridPosition _spawnPos]] remoteExec ["sideChat", 0];
			
	
	// Mission Active Flag
	
		call compile format ["

			%1_paradropMissionActive = false;
			publicVariable '%1_paradropMissionActive';
			
		", _veh];
	
	
	// Wait Until Vehicle Dead
										
		waitUntil {(!alive _veh) or ((!canMove _veh) and (fuel _veh > 0)) or (!alive driver (_veh))};
	
	// Delete If Destroyed Near Spawn
	
		if (_veh distance2D _spawnPos < 100) then {deletevehicle _veh};
	
	// Remove Veh From Array
		
		BEW_v_allParadropVehs = BEW_v_allParadropVehs - [_veh];
		publicVariable "BEW_v_allParadropVehs";
	
	
	// Delete Vehicle Crew
		
		{deleteVehicle _x;} forEach _crew;
	
	
	// Wait For Respawn Delay 
		
		sleep _respawnDelay;


	_hasRespawned = TRUE;
		
};
		
