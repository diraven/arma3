		waitUntil {!(isNil "all_TransLists")};
		
		private [
		
			"_vehOldType",
			"_debug",
			"_defaultValue",
			"_originalTranslationList",
			"_newTranslationList",
			"_vehNewType"
		
		];

		_vehOldType = _this select 0;
		_translationLists = param [1, all_TransLists];
		_selectFirstInArray = param [2, TRUE];
		_defaultValue = param [3, TRUE];
		_debug = false;
			
		
		// Translate Veh Class
		
			{
			
				_originalTranslationList = _x select 0;
				_newTranslationList	= _x select 1;

				if ((_vehOldType in _originalTranslationList) and (isNil "_vehNewType")) then {
				
					for "_i" from 0 to ((count _originalTranslationList) - 1) do {
						
						if (toUpper _vehOldType == toUpper (_originalTranslationList select _i)) then {
							
							if (typeName (_newTranslationList select _i) == "ARRAY") then {
								
								_vehNewType = _newTranslationList select _i;
																
							}else{
							
								if !(_newTranslationList select _i == "") then {
								
									_vehNewType = _newTranslationList select _i;
									
								};
									
							};
					
						};

					};
					
				};

			} forEach _translationLists;
		
		
		// Set New Type To Old Type If Not Found
			
			if (_defaultValue) then {
				
				if (isNil "_vehNewType") exitWith {_vehNewType = _vehOldType};
				if (typeName _vehNewType == "ARRAY") exitWith {};	
				if (toUpper _vehNewType == "objNull") exitWith {_vehNewType = "OBJNULL"};				
				if (!(isClass(configfile >> "CfgVehicles" >> _vehNewType))) exitWith {_vehNewType = _vehOldType};
		
			}else{
						
				if (isNil "_vehNewType") then {_vehNewType = ""};
			
			};
		
		
		// Output Array Or Select From Array
		
			if (_selectFirstInArray) then {
				
				if (typename _vehNewType == "ARRAY") then {
				
					
					_vehNewType = _vehNewType select 0;
					
				};
			
			};
		
		
		// Debug
		
			if (_debug) then {
		
				systemChat format ["Old Type %1 - New Type %2", _vehOldType, _vehNewType];
		
			};
			
		_vehNewType 
	
	
	
	
	
	