
	_centerPos = param [0, getpos player];
	_minimumDistance = param [1, 200];
	_maxDistance = param [2, 300]; 
	_direction = param [3, random 360];

	private _selectedPos = [_centerPos, [_minimumDistance, _maxDistance], _direction, 1, [0], 10] call SHK_pos;

	while {count (allPlayers select {_x distance2D _selectedPos < _minimumDistance}) > 0} do {

		_selectedPos = [_centerPos, [_minimumDistance, _maxDistance], _direction, 1, [0], 10] call SHK_pos;

	};

	_selectedPos