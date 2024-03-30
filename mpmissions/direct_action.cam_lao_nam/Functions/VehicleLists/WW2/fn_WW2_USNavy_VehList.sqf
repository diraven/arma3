	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [



	];
	
	
	_carsUnarmed = [

		"LIB_US_Willys_MB"
		
	];
		
		
	_carsArmed = [
		
		"LIB_US_Scout_M3", 
		"LIB_US_Willys_MB_M1919",
		"LIB_US_M3_Halftrack"
		
	];
		
		
	_trucks = [

		"LIB_US_GMC_Open", 
		"LIB_US_GMC_Fuel", 
		"LIB_US_GMC_Ammo"

	];
		
		
	_apcs = [

		"LIB_M8_Greyhound",
		"fow_v_lvta2_usa",	
		"LIB_M3A3_Stuart"
		
	];
		
		
	_AAs = [



	];
		
		
	_tanks = [
			
		"LIB_M4A3_75", 
		"LIB_M4A3_76", 
		"LIB_M4A3_76_HVSS"

	];
		
		
	_artys = [


	];
		
	_transportHelis = [


	];
		
		
	_attackHelis = [


	];
		
		
	_capPlanes = [
		
		"sab_p38", 
		"sab_mustang", 
		"LIB_US_P39"

	];
		
		
	_casPlanes = [

		"sab_b25", 
		"LIB_P47"
		
	];

	_ships = [


	];
	
	_staticGun = [
		
		"LIB_M1919_M2"
	
	];
	
	
	_staticAA = [
		
		"LIB_61k"
	
	];
	
	
	_staticAT = [

		"fow_w_6Pounder_usa"
		
	];
	
	
	_staticMortar = [
		
		"LIB_M2_60"
	
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
