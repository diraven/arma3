	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [
	
		"SW_BARC"
		
	];
	
	_carsUnarmed = [

		"O_SWOP_HoverT_2"
	
	];
		
		
	_carsArmed = [

		"O_SWOP_HoverTa_2",
		"O_SWOP_HoverTf_2"
		
	];
		
		
	_trucks = [
		
		"O_SWOP_HoverT_2"

	];
		
		
	_apcs = [
		
		"O_SWOP_HoverTr_2",
		"O_JM_TX130m1r_1"

	];
		
		
	_AAs = [
	
	];
		
		
	_tanks = [
		
		"O_JM_TX130m2r_1"

	];
		
		
	_artys = [
	
	
	];
		
	_transportHelis = [

		"swop_LAAT",
		"Swop_Uwing"
		
	];
		
		
	_attackHelis = [
		
		"swop_ywRed"

	];
		
		
	_capPlanes = [
		
		"swop_aw",
		"swop_xw",
		"swop_arc_t",
		"swop_eta2_c2",
		"swop_delta7a",
		"swop_Vwing"

	];
		
		
	_casPlanes = [

		"swop_ywRed"
		
	];

	_ships = [


	];
	
	_staticGun = [
	
		"AItur_base"
		
	];
	
	
	_staticAA = [
	
		"NavyGunR"
		
	];
	
	
	_staticAT = [
		
		"NavyGunR"
	
	];
	
	
	_staticMortar = [
	
		"NavyGunR"
		
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