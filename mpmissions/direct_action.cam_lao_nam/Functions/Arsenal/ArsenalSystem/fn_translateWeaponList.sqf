	
	private ["_newWeaponList"];
	
	_weaponList = BLU_WeaponList;
	
	_newWeaponList = [];
	
	{	
	
		_weaponListLevel = _x;
		
		{
		
			_origType = _x;
			
			_newType = [_origType] call BEW_FNC_TranslateItems;
			
			if !(_origType == _newType) then {
			
				_weaponListLevel = _weaponListLevel - [_origType];
				_weaponListLevel pushBack _newType;
			
			};
		
		} forEach _weaponListLevel;
		
		// Add Translated Level To New Weapon List
		
			_newWeaponList = _newWeaponList + [_weaponListLevel];

	} forEach _weaponList;
	