	
	_obj = param [0, cursorObject];
	_copyToClipboard = [0, FALSE];

	_allCargo = [];

	_itemCargo = itemCargo _obj; 
	_weaponCargo = weaponCargo _obj;
	_magazineCargo = magazineCargo _obj;
	_backpackcargo = backpackCargo  _obj;

	_allCargo append _itemCargo;
	_allCargo append _weaponCargo;
	_allCargo append _magazineCargo;
	_allCargo append _backpackcargo;

	if (_copyToClipboard) then {
	
		[_allCargo] call BEW_FNC_CopyToClipboard;
	
	};
	
	_allCargo
