	
	_factionToGet = param [0, BEW_v_factionTypes];
	
	private _allWeapons = [];

	{

		call compile format ["

		{

			_weaponList = _x;

			{

				_allWeapons pushBackUnique _x;

			} forEach _weaponList;

		} forEach %1_WeaponList;

		", _x];

	} forEach _factionToGet;
	
	_allWeapons
