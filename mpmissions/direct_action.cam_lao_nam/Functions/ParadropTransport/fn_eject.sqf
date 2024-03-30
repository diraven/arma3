	
	_passenger = _this select 0;
	_veh = _this select 1;	
	
	_passenger moveInCargo _veh;
	_passenger disableCollisionWith _veh;
	unassignVehicle _passenger;
	[_passenger] ordergetin false;
	[_passenger] allowGetIn false;
	_passenger action ["Eject", _veh];
	moveOut _passenger;
	
	_passenger setVelocity velocity _veh;