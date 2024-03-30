
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [

		"B_Quadbike_01_F"

	];
	
	_carsUnarmed = [
		
		"UK3CB_BAF_LandRover_Hard_FFR_Green_A_MTP", 
		"UK3CB_BAF_LandRover_Snatch_FFR_Green_A_MTP", 
		"UK3CB_BAF_LandRover_Soft_FFR_Green_A_MTP"

	];
	
	
	_carsArmed = [

		"UK3CB_BAF_LandRover_WMIK_GMG_FFR_Green_A_MTP", 
		"UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Green_A_MTP", 
		"UK3CB_BAF_LandRover_WMIK_Milan_FFR_Green_A_MTP"
	
	];
	
	
	_trucks = [

		"UK3CB_BAF_MAN_HX60_Transport_Green_MTP", 
		"UK3CB_BAF_MAN_HX60_Repair_Green_MTP", 
		"UK3CB_BAF_MAN_HX60_Fuel_Green_MTP", 
		"UK3CB_BAF_MAN_HX60_Cargo_Green_B_MTP", 
		"UK3CB_BAF_MAN_HX60_Cargo_Green_A_MTP", 
		"UK3CB_BAF_MAN_HX58_Transport_Green_MTP", 
		"UK3CB_BAF_MAN_HX58_Repair_Green_MTP", 
		"UK3CB_BAF_MAN_HX58_Fuel_Green_MTP", 
		"UK3CB_BAF_MAN_HX58_Cargo_Green_B_MTP", 
		"UK3CB_BAF_MAN_HX58_Cargo_Green_A_MTP"

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

		"rhsusf_mkvsoc"

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
