	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [



	];
	
	
	_carsUnarmed = [

		"LIB_GazM1_SOV"
		
	];
		
		
	_carsArmed = [
		
		"LIB_UK_Willys_MB_M1919",
		"LIB_SOV_M3_Halftrack", 
		"LIB_Scout_M3"

	];
		
		
	_trucks = [

		"LIB_Zis5v_Fuel", 
		"LIB_Zis5v", 
		"LIB_Zis6_Parm"

	];
		
		
	_apcs = [

		"SOV_BT_BT7_M1937",
		"csa38_t2638"

	];
		
		
	_AAs = [

		"LIB_Zis5v_61K"

	];
		
		
	_tanks = [
		
		"LIB_JS2_43",
		"LIB_T34_85",
		"LIB_SU85",
		"LIB_T34_76"

	];
		
		
	_artys = [


	];
		
	_transportHelis = [


	];
		
		
	_attackHelis = [
	
		"sab_il2", 
		"LIB_Pe2"

	];
		
		
	_capPlanes = [

		"sab_fl_yak3", 
		"sab_la5", 
		"LIB_P39"
		
	];
		
		
	_casPlanes = [
		
		"sab_il2", 
		"LIB_Pe2"

	];

	_ships = [


	];
	
	_staticGun = [
		
		"LIB_Maxim_M30_base"
	
	];
	
	
	_staticAA = [

		"LIB_61k"
	
	];
	
	
	_staticAT = [
		
		"LIB_Zis3"
	
	];
	
	
	_staticMortar = [
		
		"LIB_BM37"
	
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
