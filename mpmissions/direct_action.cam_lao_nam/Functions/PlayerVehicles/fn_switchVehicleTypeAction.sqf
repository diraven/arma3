
	private ["_newType", "_factionName", "_factionTypes", "_origveh", "_originalFactionClass", "_origType"];
	
	
	// Select Vehicle Action
	
		_closeVehicleMenuAction = player addAction [

				"<t color='#99ccff'>CLOSE VEHICLE SPAWN MENU",{

					BEW_v_VehicleBeingSelected = objNull;

			},[], 99, true, true, "", "(BEW_v_VehicleBeingSelected == cursorObject) and (cursorObject distance2D player < 10)"];
	
	

	// Setup Initial Variables
		
		if (isNil "BEW_v_unlockedVehicles_WEST") then {
		
			BEW_v_unlockedVehicles_WEST = []; 
			publicVariable "BEW_v_unlockedVehicles_WEST"
		
		};
		
		if (isNil "BEW_v_unlockedVehicles_EAST") then {
		
			BEW_v_unlockedVehicles_EAST = []; 
			publicVariable "BEW_v_unlockedVehicles_EAST"
		
		};

		BEW_v_actionCreatedList = [];
		BEW_v_uniqueFactions = [];



	// Params
	
		_origveh = _this select 0;
			BEW_v_VehicleBeingSelected = _origveh;
		
		_vehicleData = _origveh getVariable "vehicleData";
			_types = _vehicleData select 3;
				_origType = _types select 0;
			
			_factions = _vehicleData select 4;
				_originalFaction = _factions select 1;	
				
			_defaultUnlockFaction = switch (side player) do {
			
				case WEST : {"BLU"};
				case EAST : {"OPF_1"};
				default {"BLU"};
			
			};
			
		
	// Get Original Faction Class Name
	
		call compile format ["

			_originalFactionClass = %1_NewFactionTag;

		", _originalFaction];

	
	// Check If Original Type Is In Unlocked Vehiclees
						
			if !([_origType, _originalFactionClass] in BEW_v_unlockedVehicles_WEST) then {
					
				// Send Unlocked Message
			
				_vehName = [_origType] call BEW_FNC_GetDisplayName;
				_vehPicture = getText(configFile >> "CfgVehicles" >> _origType >> "picture"); 
			
				if (!(_originalFaction == _defaultUnlockFaction) and !(_origveh inArea BEW_v_HqSafeZoneMarker)) then {
				
					// Message
					 
						_message = parseText format ["<t size = '1.5' color = '#FF0000'>%1 has unlocked a %2</t><br/><br/><img image='%3' size='3'/><br/><br/>This vehicle is now deployable at base.",profileName, _vehName, _vehPicture]; 
						
						[_message] remoteExec ["hint", 0];	
				
				};
				
				// Add Unlocked vehicle To Array
					
						BEW_v_unlockedVehicles_WEST pushBackUnique [_origType, _originalFactionClass];	

				
				// Write To Database
					
					[[BEW_v_unlockedVehicles_WEST, side player], {
						
						BEW_v_unlockedVehicles_WEST = _this select 0;
						_side = _this select 1;
							
							publicVariable 'BEW_v_unlockedVehicles_WEST';

							if !(isNil 'OO_INIDBI') then {
												 
								['write', ['Progression', 'Unlocked Vehicles %1', BEW_v_unlockedVehicles_WEST]] call BEW_v_dataBase; 
											
							};
					
					}] remoteExec ["BIS_FNC_Call", 2];
			
			};


	// Define All Factions
	
		_allFactions = ["BLU", "BLU_SOF", "BLU_ALT", "OPF_1", "OPF_2", "OPF_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2"];



	// Create Actions For All Factions

		{	

			private ["_factionClass"];
			
			_newFaction = _x;
			
			
			// Get Faction Class Name
			
				call compile format ["

					_factionClass = %1_NewFactionTag;

				", _newFaction];
						
					BEW_v_uniqueFactions = BEW_v_uniqueFactions + [_factionClass];			
				
					[_newFaction , _origveh, _factionClass, _closeVehicleMenuAction, _defaultUnlockFaction, BEW_v_unlockedVehicles_WEST] spawn {
				
						private ["_newFaction", "_newType", "_factionName", "_factionClass", "_origveh"];
					
						_newFaction = _this select 0;
						_origveh = _this select 1;
						_factionClass = _this select 2;
						_closeVehicleMenuAction = _this select 3;
						_defaultUnlockFaction = _this select 4;
						
						_vehicleData = _origveh getVariable "vehicleData";
							_types = _vehicleData select 3;
								_newType = _types select 0;
								_origType = _types select 1;
							
							_factions = _vehicleData select 4;
								_originalFaction = _factions select 1;	
					
					
						// Get Translated Class Name
					
							call compile format ["

								_newType = [_origType , [[%2_Map_TransList, %1_New_TransList]], FALSE] call BEW_FNC_TranslateClassNames;
								
							", _newFaction, _originalFaction];
							
							
							private ["_newTypes"];
							
							if (typeName _newType == "ARRAY") then {

								_newTypes = _newType;
								
							}else{
							
								_newTypes = [_newType];
							
							};
							
						
						{	
						
							_typeFromArray = _x;
						
							if !(_typeFromArray == "") then {
									
									
								// Look For Custom Textures

									_textureListArray = [_typeFromArray, _newFaction] call BEW_FNC_getTextureList;
										_customFactionTextures = _textureListArray select 1;
										
								
								// Check If Vehicle Is From Root Faction
								
									_rootFaction = (getText (configfile >> "CfgVehicles" >> _typeFromArray >> "faction"));
									
									
													
								if ((([_typeFromArray, _factionClass] in BEW_v_unlockedVehicles_WEST) and !([_typeFromArray, _factionClass] in BEW_v_actionCreatedList)) or (_newFaction == _defaultUnlockFaction)) then {
					
										
									// Get Faction Display Name
									
										call compile format ["

											_factionName = %1_factionName;

										", _newFaction];
										
										
										// Switch Faction Name Of Planes To Air Force Name If Found 
										
											if (typeName _factionName == "ARRAY") then {
						
												if (_typeFromArray isKindOf "Plane") then {
												
													_factionName = _factionName select 1;
												
												}else{
													
													_factionName = _factionName select 0;
												
												};
											
											};
									
									
									// Set Display Name
										
										_vehDisplayName = [_typeFromArray] call BEW_FNC_GetDisplayName;
										
									

									// Create Action
									
										// Conditions
										
										
											BEW_v_switchVehicleConditions = {

												private ['_cursorObject', '_return', '_vehKind', '_class'];

												_cursorObject = cursorObject;
												_return = true;

												if !(vehicle player == player) exitWith {};
												if (_cursorObject distance player > 10) exitWith {};
												if (isNull _cursorObject) exitWith {};
												if (!isSimpleObject _cursorObject) exitWith {};
												if (isNil {_cursorObject getVariable 'CanBeActivated'}) exitWith {};
												if (isNil {_cursorObject getVariable 'Missionlevel'}) exitWith {};
												if !(BEW_v_VehicleBeingSelected == _cursorObject) exitWith {};
												if !(BEW_V_airSuperiority or (missionlevel >= (_cursorObject getVariable 'MissionLevel'))) exitWith {};
												
												if ((typeOf _cursorObject isKindOf 'Helicopter') and !(typeOf player == 'B_Helipilot_F') and !(serverCommandAvailable '#kick') and (isMultiplayer) and !(BEW_v_BF4Mode) and BEW_v_enableVehicleRestrictions) exitWith {};
												if ((typeOf _cursorObject isKindOf 'Plane') and !(typeOf player == 'B_Pilot_F') and !(serverCommandAvailable '#kick') and (isMultiplayer) and !(BEW_v_BF4Mode) and BEW_v_enableVehicleRestrictions) exitWith {};
												if ((typeOf _cursorObject isKindOf 'tank') and !(typeOf player == 'B_crew_F') and !(serverCommandAvailable '#kick') and (isMultiplayer) and !(BEW_v_BF4Mode) and BEW_v_enableVehicleRestrictions) exitWith {};
												if ((typeOf _cursorObject isKindOf 'Wheeled_APC_F') and !(typeOf player == 'B_crew_F') and !(serverCommandAvailable '#kick') and (isMultiplayer) and !(BEW_v_BF4Mode) and BEW_v_enableVehicleRestrictions) exitWith {};

												_return

											};
									
				
										_actionText = format ["<t color='#00ff00'>- %1 %2", _factionName, _vehDisplayName];

										_actionID = [	
										player,																
										_actionText,														
										"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	
										"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	
										"([] call BEW_v_switchVehicleConditions)",																
										"([] call BEW_v_switchVehicleConditions)",																
										{},																	
										{},																	
										{		
											
												_origveh = (_this select 3) select 0;
												
												_vehicleData = _origveh getVariable "vehicleData";
												
												_typeFromArray = (_this select 3) select 1;
												_origType = (_this select 3) select 2;
												_newFaction = (_this select 3) select 3;
												
												_origvehPos = _vehicleData select 1;
												_origvehDir = getDir _origveh;
												
				
													_factions = _vehicleData select 4;
														_originalFaction = _factions select 1;
													_missionLevel = _vehicleData select 5;
													_forcedVarname = _vehicleData select 6;
													_objectToAttach = _vehicleData select 7;
													_respawnDelay = _vehicleData select 8;
													_spawnAsSimpleObject = _vehicleData select 9;
													_mobileSpawnPoint = _vehicleData select 10;
															
											// Get Display Name
											
												_vehDisplayName = [_typeFromArray] call BEW_FNC_GetDisplayName;
												
											// Put Down Action

												player playActionNow 'PutDown';
												playSound 'click';
											
											// Message
																		
												_message = format ["%1 has activated a %2", profileName, _vehDisplayName];				
												[_message] remoteExec ["systemChat", 0];		
					
											
											// Spawn Vehicle
											
												[[_origveh, _origvehPos, _origvehDir, [_typeFromArray, _origType], [_newFaction, _originalFaction], _missionLevel, _forcedVarname, _objectToAttach, _respawnDelay, _spawnAsSimpleObject, _mobileSpawnPoint], {
												
													_origveh = _this select 0;
													_origvehPos = _this select 1;
													_origvehDir = _this select 2;
													_typeFromArray = _this select 3 select 0;
													_origType = _this select 3 select 1;
													_newFaction = _this select 4 select 0;
													_originalFaction = _this select 4 select 1;
													_missionLevel = _this select 5;
													_forcedVarname = _this select 6;
													_objectToAttach = _this select 7;
													_respawnDelay = _this select 8;
													_spawnAsSimpleObject = _this select 9;
													_mobileSpawnPoint = _this select 10;
												
													[_origveh, _origvehPos, _origvehDir, [_typeFromArray, _origType], [_newFaction, _originalFaction], _missionLevel, _forcedVarname, _objectToAttach, _respawnDelay, _spawnAsSimpleObject, _mobileSpawnPoint] spawn BEW_FNC_spawnVehicle;	
												
												}] remoteExec ["BIS_FNC_Call", 2];

													
										},																	
										{},																	
										[_origveh, _typeFromArray, _origType, _newFaction],																	
										0.5,															
										99,																	
										true,																
										false															
										] call BIS_fnc_holdActionAdd;								
										
									// Add To Action Created List
									
										BEW_v_actionCreatedList = BEW_v_actionCreatedList + [[_typeFromArray, _factionClass]];
									
									
									// Timeout
									
										[_origveh, _actionID, _closeVehicleMenuAction] spawn {
										
											_origveh = _this select 0;
											_actionID = _this select 1;
											_closeVehicleMenuAction = _this select 2;
										
											// Set Up Timeout

												private _timeout = 30;
											
											// Wait Until Timeout or Vehicle Not Alive or Another Vehicle Selected
											
												while {(alive _origveh) and (BEW_v_VehicleBeingSelected == _origveh) and (_timeout > 0)} do {
												
													_timeout = _timeout - 1;
													
													sleep 1;
												
												};
												
											// Change Select Activated Variable Back To False
											
												_origveh setVariable ["selectActivated", FALSE, TRUE];
											
											// Remove All Actions
											
												[player, _actionID] call BIS_fnc_holdActionRemove;
												[player, _closeVehicleMenuAction] call BIS_fnc_holdActionRemove;
											
										};
								};
						
							};
							
						} forEach _newTypes;
						
					};

		} forEach _allFactions;

