	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [


	];
	
	_carsUnarmed = [


	];
	
	
	_carsArmed = [

		"B_LSV_01_armed_F",
		"B_LSV_01_AT_F",
		"B_MRAP_01_hmg_F",
		"O_LSV_02_AT_F",
		"O_LSV_02_armed_F",
		"O_MRAP_02_hmg_F",
		"I_MRAP_03_hmg_F",
		"B_Heli_Light_01_F"
	
	];
	
	
	_trucks = [


	];
	
	
	_apcs = [

		"O_G_Offroad_01_AT_F"
		
	];
	
	
	_AAs = [


	];
	
	
	_tanks = [


	];
	
	
	_artys = [

	];
	
	
	
	_transportHelis = [


	];
	
	
	_attackHelis = [
	
	];
	
	
	_capPlanes = [

	];
	
	
	_casPlanes = [

	];
	
	_ships = [

	];
	
	_staticGun = [
	
	
	];
	
	
	_staticAA = [
	
	];
	
	
	_staticAT = [
	
	
	];
	
	
	_staticMortar = [
	
	
	];
	
	_return = switch (_type) do {

		case "BIKE": {_bikes};
		case "U_CAR": {_carsUnarmed};
		case "A_CAR": {_carsArmed};
		case "TRUCK": {_trucks};
		case "APC": {_apcs};
		case "AA": {_AAs};
		case "TANK": {_tanks};
		case "ARTY": {_artys};
		case "T_HELI": {_transportHelis};
		case "A_HELI": {_attackHelis};
		case "CAP": {_capPlanes};
		case "CAS": {_casPlanes};
		case "SHIP": {_ships};
		case "STATIC_GUN": {_staticGun};
		case "STATIC_AA": {_staticAA};
		case "STATIC_AT": {_staticAT};
		case "STATIC_MORTAR": {_staticMortar};		

	};
	
	_return;
