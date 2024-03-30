

	_origType = param [0];
	_planeLevel = param [1, 1];	
	_originalFaction = param [2, "BLU"];
	
	
		// Translate Original Type
			 
			_translationList = call compile format ["      
			   
				_translationList = [[BLU_Map_TransList, %1_New_TransList]]; 

				_translationList
			
			", _originalFaction]; 

			_newType = [_origType, _translationList] call BEW_FNC_TranslateClassNames;
	
	
	_displayName = [configFile >> "CfgVehicles" >> _newType] call BIS_fnc_displayName;
		
	_actionText = format [ "<t color='#00FF00'>- Spawn In %1", _displayName];
		
	

	_conditions = "
	
		(player getVariable 'aircraftMenu') and 
		(vehicle player == player) and 
		((player inArea BEW_v_HqSafeZoneMarker) or (side player == EAST)) and 
		((typeOf player == 'B_Pilot_F') or (serverCommandAvailable '#kick')) and 
		(count (BEW_v_ActiveSpawnInPlanes select {alive _x}) < 1) and 
		!(BEW_v_spawnInPlaneRespawnDelay) and 
		((worldName in BEW_v_noAirfieldMaps) or (side player == EAST))
	
	";
	
	_conditions = _conditions + format [" and (missionlevel >= %1)", _planeLevel];
		
		
		[
               player,																// Object the action is attached to
                _actionText,														// Title of the action
				"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\repair_ca.paa",			// Idle icon shown on screen
				"\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\repair_ca.paa",			// Progress icon shown on screen
                _conditions,																// Condition for the action to be shown
                _conditions,																// Condition for the action to progress
                {},																	// Code executed when action starts
                {},																	// Code executed on every progress tick
                {
				
					_newType = _this select 3 select 0;
					_planeLevel = _this select 3 select 1;
                    
					[player, _newType, _planeLevel] remoteExec ["BEW_FNC_createSpawnInPlane", 2];		
		
                },																	// Code executed on completion
                {},																	// Code executed on interrupted
                [_newType, _planeLevel],															// Arguments passed to the scripts as _this select 3
                3,																	// Action duration [s]
                99.9,																	// Priority
				false,																// Remove on completion
                false																// Show in unconscious state
				
        ] call BIS_fnc_holdActionAdd;