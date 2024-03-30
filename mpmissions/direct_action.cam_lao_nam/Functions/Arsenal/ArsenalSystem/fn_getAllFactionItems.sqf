	
	_factionToGet = param [0, BEW_v_factionTypes];
	
	private _allItems = [];

	{

		call compile format ["

		{

			_itemList = _x;

			{

				_allItems pushBackUnique _x;

			} forEach _itemList;

		} forEach %1_itemList;

		", _x];

	} forEach _factionToGet;
	
	_allItems
