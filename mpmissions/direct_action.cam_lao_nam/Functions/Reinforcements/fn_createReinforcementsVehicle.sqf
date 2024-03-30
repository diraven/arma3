	
	private [
	
		"_veh",
		"_spawnPos",
		"_runwayMarker",
		"_spawnDir",
		"_faction",
		"_side",
		"_origType",
		"_flyInHeight"
	
	];


	// PARAMS
	
		_spawnPos = param [0]; 
		_runwayMarker = param [1, ""];					
		_faction = param [2, "BLU"];
		_side = param [3, WEST];
		_dropPos = param [4];
		_origType = param [5, "B_T_VTOL_01_infantry_F"];
		_flyInHeight = param [6, 300]; 
		
	
	// Define Translation List
		
		_translationList = call compile format ["
		
			_translationList = [[BLU_Map_Translist , %1_New_Translist]];
			
			_translationList
			
		", _faction];
	
	
	// Translate Classname
	
		_newType = [_origType, _translationList] call BEW_FNC_TranslateClassNames;
	
	
	// Create Vehicle
	
		if (_runwayMarker == "") then {
					
			// Spawn In Flight If No Runway Marker
			
				_veh = createVehicle [_newType, _spawnPos, [], 0, "FLY"];
				
				// Get and Set Spawn Dir
				
					_spawnDir = [_spawnPos, _dropPos] call BIS_fnc_dirTo;
					_veh setDir _spawnDir;
					_veh setVelocityModelSpace [0, getNumber (configFile >> "cfgVehicles" >> typeOf _veh >> "maxSpeed") / 3, 0];
			
		}else{
			
			
			// Spawn At Runway If Runway Marker
			
				_veh = createVehicle [_newType, _spawnPos, [], 0, "CAN_COLLIDE"];
				
				// Get and Set Spawn Dir

					_spawnDir = markerDir _runwayMarker;			
					_veh setDir _spawnDir;
		
		};
		
		
		// Get Display Name
		
			_displayName = [configFile >> "CfgVehicles" >> _newType] call BIS_fnc_displayName;
		
		
		// Setup Vehicle
		
			_veh allowDamage true;
			clearItemCargo _veh;
			clearWeaponCargo _veh;
			clearMagazineCargo _veh;
			_veh setVehicleAmmo 0;
			[_veh] call BEW_FNC_ApplyCustomTexture;
			
			
			//New Unique Varname

				_varName = format ["%1_reinforcementsVehicle", _faction];
				_veh setVehicleVarName _varName;
				missionNamespace setVariable [ _varName, _veh, true ];
		
	
	// Create Crew
		
		_vehGroup = [_veh, _side, _faction] call BEW_FNC_createTranslatedVehicleCrew; 
		
		
		// Set Group Callsign
		
			_callsign = format ["%1 Reinforcements", _displayName];
			_vehGroup setGroupIdGlobal [_callsign];
	
	
		// Setup Vehicle Crew
		
			_crew = units _vehGroup;
			(_crew select 0) moveInDriver _veh;
			(_crew select 1) moveInTurret [_veh, [0]];
			_vehGroup setVariable ["Vcm_Disable",true];
				
			{
				_x allowFleeing 0;
				_x disableAI "AUTOTARGET";
				_x enableSimulation TRUE;
				_x setBehaviour "CARELESS";
				_x disableAI "FSM";
				_x disableAI "SUPPRESSION";
				_x disableAI "COVER";
				_x disableAI "AUTOCOMBAT";
				_x disableAI "AUTOCOMBAT";
				_x disableAI "CHECKVISIBLE";

			}forEach _crew;
			
			
	// Set Altitude 
		
			_veh flyInHeight _flyInHeight;
	
	
	// Create Moving Marker

		if (_side == WEST) then {

			[_veh , "Reinforcements", "colorGreen", "loc_plane"] execVM "functions\fn_MovingMarker.sqf";
			
		};
		
	
	// Return
	
		_vehArray = [_veh, _vehGroup];
		
		_vehArray