	
	private [
	
		"_list",
		"_restrictionListArray"
	
	];
	
	
	_list = _this select 0;
	_restrictionListArray = _this select 1;

	if ((isMultiplayer) and (BEW_v_enableGearRestrictions)) then {
	
		// Filter By Class
					
			_allClasses = _restrictionListArray select 0;
			_allRestrictionLists = _restrictionListArray select 1;
			
			for "_i" from 0 to ((count _allClasses) - 1) do {
				
				_classes = _allClasses select _i;
				_restrictionList = _allRestrictionLists select _i;
				
				if !(typeOf player in _classes) then {
				
					_list = _list - _restrictionList;
				
				};
			
			};
	
	};
		
	_list
		
	