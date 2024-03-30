
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [

	

	];
	
	_carsUnarmed = [
		
		"Redd_Tank_LKW_leicht_gl_Wolf_Tropentarn_FueFu",
		"BWA3_Eagle_Tropen"

	];
	
	
	_carsArmed = [

		"BWA3_Eagle_FLW100_Tropen",
		"BWA3_Dingo2_FLW200_M2_Tropen",
		"BWA3_Dingo2_FLW100_MG3_Tropen",
		"BWA3_Dingo2_FLW200_GMW_Tropen"

	];
	
	
	_trucks = [



	];
	
	
	_apcs = [



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
