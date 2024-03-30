	
	_side = param [0, WEST];
	
	_unitCount = 0;
	
	private _allGroupsWithPlayers = []; 
	{_allGroupsWithPlayers pushBackUnique group _x} forEach (allPlayers select {side _x == _side});

	{
	
		_unitCount = _unitCount + (count units _x);
	
	} forEach _allGroupsWithPlayers;
	
	_unitCount
