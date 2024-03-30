	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [

		"fow_v_truppenfahrrad_ger_heer"

	];
	
	
	_carsUnarmed = [
		
		"fow_v_kubelwagen"

	];
		
		
	_carsArmed = [
		
		"fow_v_kubelwagen_mg34_ger_heer"

	];
		
		
	_trucks = [

		"fow_v_type97_truck_fuel_ija",
		"fow_v_type97_truck_ija",
		"fow_v_type97_truck_open_ija",
		"fow_v_type97_truck_utility_ija"

	];
		
		
	_apcs = [
		
		"fow_ija_type95_HaGo_1_ija"

	];
		
		
	_AAs = [


	];
		
		
	_tanks = [
		
		"fow_ija_type95_HaGo_1_ija"
		
	];
		
		
	_artys = [


	];
		
	_transportHelis = [


	];
		
		
	_attackHelis = [
		
		"sab_sw_b5n"

	];
		
		
	_capPlanes = [
				
		"sab_fl_a6m"

	];
		
		
	_casPlanes = [

		"sab_sw_b5n"
		
	];

	_ships = [


	];
	
	_staticGun = [
		
		"fow_w_type92_tripod_low_ija"
	
	];
	
	
	_staticAA = [
		
		"LIB_FlaK_38"
	
	];
	
	
	_staticAT = [
		
		"fow_w_flak36_gray_ger_heer",
		"fow_w_6Pounder_ija"
	
	];
	
	
	_staticMortar = [
		
		"fow_w_type97_mortar_ija"
	
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
