
	_veh = _this select 0;
	
	private ["_return"];
	
	if ((alive _veh) and (canMove _veh) and (alive driver _veh)) then {
		
		_return = true;
	
	}else{
	
		_return = false;
	
	};
	
	_return
