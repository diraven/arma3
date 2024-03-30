
	if (!isServer) exitWith {};
	
		// Setup Spawn Vehicles Array
	
			BEW_v_SpawnedPlayerVehicles = [];
			

	waitUntil {time > 0};
	
	
		// Respawn Saved Vehicles
	
			[] call BEW_FNC_respawnSavedVehicles;
		
	

		private ["_VehicleUnlockList"];
		
		if (isnil "_vehicleUnlockList") then {
			
			_vehicleUnlockList = [];
		
		};

		_delay = 1;

		// Define Pilots and Crew

			[] call BEW_FNC_defineCrewAndPilots;


		// Define Faction Types

			_factionTypes = ["BLU", "BLU_ALT", "BLU_SOF", "OPF_1", "OPF_2", "OPF_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2"];


		// For Each faction Loop

			{

				private ["_faction", "_allVehs", "_translationList", "_objectToAttach"];

				_faction = _x;

				// Get Vehicles From Mission Layer And Define Translation List

					call compile format ["

						_allVehs = getMissionLayerEntities '%1_Vehicles' select 0;

						_translationList = [[%1_Map_TransList, %1_New_TransList]];

					", _faction];


				// For Each Vehicle Loop

					for "_i" from 0 to (count _allVehs - 1) do {

						private ["_veh", "_newType", "_newTypesArray", "_origType", "_missionLevel", "_forcedVarname", "_objectToAttach","_allowedDriverClasses", "_forceType", "_spawnAsSimpleObject", "_varName"];
						
						/*
						if (_faction in ["OPF_1", "OPF_2", "OPF_3", "OPF_SOF"]) then {
						
							_inAreaFaction = ([_veh] call BEW_FNC_findObjectiveFactionInArea) select 1;
							
							if !(_inAreaFaction == "") then {
								
								_faction = _inAreaFaction;
								
							};
														
						};
						*/

						_veh = _allVehs select _i;
						_pos = getPosASL _veh;
						_dir = getDir _veh;
						_forcedVarname = _veh getvariable["forceVarName", ""];
						_forcedFaction = _veh getvariable["forceFaction", _faction];
						_spawnAsSimpleObject = _veh getvariable ["spawnAsSimpleObject", true];
						_mobileSpawnPoint = _veh getvariable ["mobileSpawnPoint", false];

						
							// Define Original Type
							
								_origType = _veh getvariable["forceVehicleType", typeOf _veh];
								if (_origType isKindOf "Ship") then {_pos = getPos _veh};
							
							
						if !((_origType isKindOf "Helicopter") and BEW_V_WW2) then {
							
							// Mission Level Variable
								
								//_missionLevelVariable = (_veh getVariable ['missionLevel', 1]);
								_missionLevelVariable = [_veh] call BEW_FNC_FindVehicleLevel;

								if  !((isNil "_missionLevelVariable") or (BEW_v_GameMode == "ARCADE") or (BEW_v_Zombies)) then {

									//_missionLevel = _veh getVariable ["missionLevel", 1];
									_missionLevel = [_veh] call BEW_FNC_FindVehicleLevel;

								} else {

									_missionLevel = 1;

								};

								//Crewable Crew List
								
									_crewableCrewList = (_veh getVariable 'allowedDriverClasses');

									if  !((isNil "_crewableCrewList") or (BEW_v_GameMode == "ARCADE")) then {

										_allowedDriverClasses = _veh getVariable 'allowedDriverClasses';

									} else {
									
										_allowedDriverClasses = [];
										
									};


							// Objects To Attach Variable

								_objectToAttachVariable = (_veh getVariable 'objectsToAttach');

								if  !(isNil "_objectToAttachVariable") then {

									_objectToAttach = _veh getVariable 'objectsToAttach';

								}else{

									_objectToAttach = "";

								};

			
							// Translate Class Names
							
								_newTypesArray = call compile format ["

									_newTypesArray = [_origType, [[%1_Map_TransList, %1_New_TransList]], FALSE, FALSE] call BEW_FNC_TranslateClassNames;
																		
									_newTypesArray
											
								", _forcedFaction];


							// Don't Translate Variable
							
								if  (_veh getVariable ['dontTranslate', FALSE]) then {

									_newType = _origType;
									_newType = _newTypesArray;
										
								}else{
									
									if (typeName _newTypesArray == "ARRAY") then {
											
										_newType = _newTypesArray select 0;
										
									}else{
										
										_newType = _newTypesArray;
									
									};	
									
								};


							// Don't Translate Variable

								_respawnDelay = (_veh getVariable 'respawnDelay');

								if  (isNil "_respawnDelay") then {

									_respawnDelay = 60;

								};


							// Delete Original Vehicle

								deleteVehicle _veh;

								sleep _delay;
								
								
							//if !(toUpper _newType == "objNull") then {
							if	(isClass(configfile >> "CfgVehicles" >> _newType)) then {						

								// Create Vehicle To Be Replaced

									_veh = createVehicle [_newType, _pos, [], 0, "CAN_COLLIDE"];


									// Reposition Vehicle
									
										_veh setPosASL _pos;
										_veh setDir _dir;	
										
										
									// Get Original textures
									
										_origTextures = getObjectTextures _veh;
										
									
									// Replace With Simple Object
																			
										_veh = [_veh] call BEW_FNC_ReplaceWithSimpleObject;
											
											
									// Setup Vehicle
									
										_veh allowDamage false;
										_veh enableCopilot false;
										_veh setVariable ["missionLevel", _missionLevel, true];
										_veh setVariable ["selectActivated", FALSE, TRUE];
										_veh setVariable ["CanBeActivated", false, true];
										_veh setVariable ["allowedDriverClasses",_allowedDriverClasses,true];
																

									// New Unique Varname
										
										if (_forcedVarname == "") then {
											
											_varName = format ["%1_playervehicle_%2", _forcedFaction, _i];
											
										}else{
										
											_varName = _forcedVarname;
										
										};
										
										_veh setVehicleVarName _varName;
										missionNamespace setVariable [ _varName, _veh, true ];


									// Hide Selections

										[_veh] call BEW_FNC_hideSelections;


								// Textures

									// Get Textures

										_textureListArray = [typeOf _veh, _forcedFaction] call BEW_FNC_getTextureList;
											private _textureList = _textureListArray select 0;
											_customFactionTextures = _textureListArray select 1;

										if (count _textureList < 1) then {_textureList = _origTextures};

									// Set Textures
																		
										[_veh, _textureList] call BEW_FNC_setVehicleTextures;


									// Factions

										_newFaction = _forcedFaction;
										_originalFaction = _forcedFaction;
										
										
								// Vehicle Data For Unlock List															
																
									if ((typeName _newTypesArray == "ARRAY") and (_forcedFaction == "BLU")) then {
										
										{
		
											_unlockData = [_x, _missionLevel];
											_vehicleUnlockList pushBackUnique _unlockData;
										
										} forEach _newTypesArray;
										
									}else{
										
										_unlockData = [_newType, _missionLevel];
										_vehicleUnlockList pushBackUnique _unlockData;
									
									};	
									

								// Vehicle Data

									_vehicleData = [_veh, _pos, _dir, [_newType, _origType], [_newFaction, _originalFaction], _missionLevel, _forcedVarname, _objectToAttach, _respawnDelay, _spawnAsSimpleObject, _mobileSpawnPoint];

									_veh setVariable ["vehicleData", _vehicleData, TRUE];
									
									
								// Wait Until Not In Objective Area To Be Activated
									
									[_veh, _newFaction] spawn {
									
										_veh = _this select 0;
										_newFaction = _this select 1;
									
										[_veh, _newFaction] call BEW_FNC_HideVehicleInObjectiveArea;
									
										_veh setVariable ["CanBeActivated", TRUE, true];
									
									};
									
									
								// Adjust Vector Of Taildraggers
																
									[_veh] call BEW_FNC_tailDraggers;
									
									
									if !(_spawnAsSimpleObject) then {
									
										[_veh, _pos, _dir, [_newType, _origType], [_newFaction, _originalFaction], _missionLevel, _forcedVarname, _objectToAttach, _respawnDelay, _spawnAsSimpleObject, _mobileSpawnPoint] spawn BEW_FNC_spawnVehicle;	
									
									};
							};
							
						}else{
							
							deleteVehicle _veh;
						
						};
						
					};

			} forEach _factionTypes;
			
			
			BEW_v_VehicleUnlockList_WEST = _VehicleUnlockList;
				publicVariable "BEW_v_VehicleUnlockList_WEST";