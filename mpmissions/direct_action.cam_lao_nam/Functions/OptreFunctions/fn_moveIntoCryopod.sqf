	_plyr = _this select 0;
	_cryopods = _this select 1;	

	_emptyCryopods = _cryopods select {count crew _x < 1};

	_randomCryopod = _emptyCryopods call BIS_FNC_SelectRandom; 

	_plyr moveInAny _randomCryopod; 