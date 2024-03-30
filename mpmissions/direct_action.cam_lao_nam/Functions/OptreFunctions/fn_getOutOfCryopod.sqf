
	_cryopod = _this select 0;

	_cryopod setVehicleLock "LOCKED";

	_cryopod addAction [

		"<t color='#ffff33'>" + "GET OUT OF CRYOPOD</t>",{
		
		_cryoPod =  (_this select 0);
		
		_cryoPod animatesource ["doors", 1];
		
		sleep 3;
		
		moveOut player;
		
		player setDir getDir _cryopod;
		
		sleep 3;
		
		_cryoPod animatesource ["doors", 0];
		

	},[],99, true, true, "", "vehicle _this == _target"];