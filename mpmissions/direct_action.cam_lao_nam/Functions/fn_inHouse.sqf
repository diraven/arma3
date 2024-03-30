	// by killzonekid, modified by tankbuster (to accept pos input (Must be ASL)), returns true if indoors
	
	private _return = false;
	private _houseabove = false;
	//if sending pos, it must be asl
	params ["_indata"];
	private ["_pos", "_houseabove", "_wallscore"];
	private _ignoreObject = if (((typeName _indata) isEqualTo "OBJECT")) then {_indata} else {objNull};
	if ((typename _indata) isEqualTo "OBJECT") then
		{_pos = getPosWorld _indata}
		else
		{
		_pos = _indata;
		_pos set [2, (0.2 + (_pos select 2))];
		};
	lineIntersectsSurfaces [
		_pos,
		_pos vectorAdd [0, 0, 50],
		_ignoreObject, objNull, false, 1, "GEOM", "NONE"
	] select 0 params ["","","","_house"];
	if ((not (isnil "_house")) and { _house isKindOf "House"})  then// i think this is right?
	{
		_houseabove = true;
	};
	_wallscore = 0;
	if (not _houseabove) then
		{
		_dirstocheck = [[2,0,0], [0,2,0], [-2,0,0], [0,-2,0]];
			{
			lineIntersectsSurfaces [
			_pos,
			_pos vectorAdd _x,
			_ignoreObject, objNull, false, 1, "GEOM", "NONE"
			] select 0 params ["","","","_house"];
			if ((not (isnil "_house")) and { _house isKindOf "House"})  then
				{
				_wallscore = _wallscore + 1;
				}
			} foreach _dirstocheck;
		};
	if ((_wallscore > 2) or (_houseabove)) then // found at least 2 walls nearby
		{_return = true};
	_return