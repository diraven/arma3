	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [



	];
	
	
	_carsUnarmed = [
		
		"LIB_UK_Willys_MB"

	];
		
		
	_carsArmed = [

		"LIB_UK_Willys_MB_M1919", 
		"LIB_UniversalCarrier",
		"LIB_UK_M3_Halftrack"
		
	];
		
		
	_trucks = [

		"LIB_US_GMC_Open", 
		"LIB_US_GMC_Fuel", 
		"LIB_US_GMC_Ammo"

	];
		
		
	_apcs = [

		"LIB_M8_Greyhound",
		"csa38_valentineMkIIgreen"

	];
		
		
	_AAs = [



	];
		
		
	_tanks = [
		
		"LIB_Churchill_Mk7",
		"LIB_M4A4_FIREFLY",
		"LIB_Cromwell_Mk4",
		"csa38_matildaii_1"

	];
		
		
	_artys = [


	];
		
	_transportHelis = [


	];
		
		
	_attackHelis = [


	];
		
		
	_capPlanes = [
		
		"spitfire_v_G", 
		"LIB_RAF_P39", 
		"sab_fl_hurricane_2"

	];
		
		
	_casPlanes = [
		
		"sab_fl_dh98"

	];

	_ships = [


	];
	
	_staticGun = [
		
		"fow_w_vickers_uk"
	
	];
	
	
	_staticAA = [
		
		"LIB_61k"
	
	];
	
	
	_staticAT = [

		
		"fow_w_6Pounder_uk"
	
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
