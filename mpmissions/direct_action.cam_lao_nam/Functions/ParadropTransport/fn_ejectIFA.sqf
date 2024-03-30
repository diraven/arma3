	
	_passenger = _this select 0;
	_veh = _this select 1;
	
	_passenger allowDamage false;
	
	private _jumpPoints = getArray (configFile/"CfgVehicles"/(typeOf _veh)/"LIB_JumpPoint");

	if (_jumpPoints isEqualTo []) then
	{
	//	diag_log text format ["Warning: LIB_JumpPoint empty or undefined. %1",typeOf _plane];
		_jumpPoints = [[0,0,4]];
	};

	//never true due to default set above if undefined?
	if (_jumpPoints isEqualTypeAll "") then
	{
		_jumpPoints = _jumpPoints apply {_veh selectionPosition _x}
	};

	private _jumpPoint = (selectRandom _jumpPoints);
	private _jumpPosition = (_veh modelToWorldVisualworld _jumpPoint);
	private _group = group _passenger;
	private _rejoin = false;
	if (isPlayer leader _passenger && !isPlayer _passenger) then
	{
		[_passenger] joinSilent grpNull;
		_rejoin = true;
	};

	unassignvehicle _passenger;
	moveOut _passenger;
	[_passenger] orderGetin false;
	[_passenger] allowGetIn false;
	
	if (_rejoin) then
	{
		[_passenger] joinSilent _group;
	};
	_passenger setPosASL _jumpPosition;
	
	_passenger setVelocity velocity _veh;