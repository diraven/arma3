	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [
	
		"SW_SpeederBikeIMPw"
	
	];
	
	_carsUnarmed = [

		"O_SWOP_HoverT_1"
	
	];
		
		
	_carsArmed = [
		
		"O_SWOP_HoverTa_1",
		"O_SWOP_HoverTf_1"

	];
		
		
	_trucks = [
		
		"O_SWOP_HoverT_1"

	];
		
		
	_apcs = [

		"O_JM_TX130m1_1",
		"O_SWOP_HoverTr_1"
		
	];
		
		
	_AAs = [
	
	];
		
		
	_tanks = [
	
		"O_JM_TX130m2_1"

	];
		
		
	_artys = [
	
	
	];
		
	_transportHelis = [
		
		"swop_lambda"

	];
		
		
	_attackHelis = [
		
		"swop_tieb"

	];
		
		
	_capPlanes = [
		
		"swop_tiex1",
		"swop_TIE_Stryker",
		"swop_tiedef",
		"swop_tie_int",
		"swop_tie"

	];
		
		
	_casPlanes = [
		
		"swop_tieb"

	];

	_ships = [


	];
	
	_staticGun = [
		
		"EWEBSWBF"
	
	];
	
	
	_staticAA = [
	
		"NavyGunIm"
		
	];
	
	
	_staticAT = [
		
		"NavyGunIm"
	
	];
	
	
	_staticMortar = [
	
		"NavyGunIm"
		
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
