	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [


	];
	
	_carsUnarmed = [
		
		"vn_b_wheeled_m151_02", 
		"vn_b_wheeled_m151_01"

	];
		
		
	_carsArmed = [

		"vn_b_wheeled_m151_mg_03", 
		"vn_b_wheeled_m151_mg_02", 
		"vn_b_wheeled_m151_mg_04"

	];
		
		
	_trucks = [
		
		"vn_b_wheeled_m54_02", 
		"vn_b_wheeled_m54_01", 
		"vn_b_wheeled_m54_ammo", 
		"vn_b_wheeled_m54_fuel", 
		"vn_b_wheeled_m54_repair", 
		"vn_b_wheeled_m54_03"
	
	];
		
		
	_apcs = [

		"vn_b_wheeled_m54_mg_03", 
		"vn_b_wheeled_m54_mg_01"

	];
		
		
	_AAs = [
		
		"vn_b_wheeled_m54_mg_02"

	];
		
		
	_tanks = [

		"vn_b_armor_m41_01_01"

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
