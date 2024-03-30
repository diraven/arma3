	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [

		"fow_v_truppenfahrrad_ger_heer"

	];
	
	
	_carsUnarmed = [
		
		"LIB_DAK_Kfz1",
		"LIB_DAK_Kfz1_hood"

	];
		
		
	_carsArmed = [
		
		"LIB_DAK_SdKfz251_FFV",
		"LIB_DAK_Kfz1_MG42",
		"fow_v_sdkfz_250_ger_heer"

	];
		
		
	_trucks = [

		"LIB_DAK_OpelBlitz_Tent",
		"LIB_DAK_OpelBlitz_Parm",
		"LIB_DAK_OpelBlitz_Open",
		"LIB_DAK_OpelBlitz_Fuel",
		"LIB_DAK_OpelBlitz_Ammo",
		"LIB_DAK_OpelBlitz_Ambulance"

	];
		
		
	_apcs = [
		
		"CSA38_pzkpfwI_DE",
		"CSA38_pzII_DE",
		"fow_v_sdkfz_222_ger_heer",
		"fow_v_sdkfz_250_9_ger_heer",
		"CSA38_8rad2DE"

	];
		
		
	_AAs = [

		"LIB_DAK_FlakPanzerIV_Wirbelwind",
		"LIB_DAK_SdKfz_7_AA"

	];
		
		
	_tanks = [
		
		"LIB_DAK_FlakPanzerIV_Wirbelwind",
		"LIB_DAK_PzKpfwIV_H",
		"LIB_DAK_PzKpfwVI_E",
		"CSA38_pzIIID_LATE"

	];
		
		
	_artys = [


	];
		
	_transportHelis = [


	];
		
		
	_attackHelis = [
		
		"sab_sw_ju87",
		"sab_sw_ju87_2",
		"sab_sw_bf110",
		"sab_sw_bf110_2",
		"sab_sw_he177",
		"sab_fl_ju88a"

	];
		
		
	_capPlanes = [
		
		"sab_sw_do335",
		"sab_fl_bf109k",
		"sab_fl_fw190a"

	];
		
		
	_casPlanes = [

		"sab_sw_ju87",
		"sab_sw_ju87_2",
		"sab_sw_bf110",
		"sab_sw_bf110_2",
		"sab_sw_he177",
		"sab_fl_ju88a"
		
	];

	_ships = [


	];
	
	_staticGun = [
		
		"LIB_MG34_Lafette_Deployed", 
		"LIB_MG42_Lafette_Deployed"
	
	];
	
	
	_staticAA = [
		
		"LIB_FlaK_38"
	
	];
	
	
	_staticAT = [
		
		"fow_w_flak36_gray_ger_heer",
		"LIB_DAK_Pak40",
		"csa38_pak35_DE"
	
	];
	
	
	_staticMortar = [
		
		"LIB_DAK_FlaK_36_ARTY",
		"LIB_GrWr34"
	
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
