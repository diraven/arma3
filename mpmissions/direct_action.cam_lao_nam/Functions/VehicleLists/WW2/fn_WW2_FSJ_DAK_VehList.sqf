	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [

		"fow_v_truppenfahrrad_ger_heer"

	];
	
	
	_carsUnarmed = [
		
		"LIB_Kfz1_Hood_sernyt"

	];
		
		
	_carsArmed = [
		
		"LIB_Kfz1_MG42_camo",
		"fow_v_sdkfz_251_camo_ger_heer",
		"fow_v_sdkfz_250_9_camo_ger_heer",
		"fow_v_sdkfz_250_camo_ger_heer",
		"fow_v_sdkfz_222_camo_ger_heer",
		"LIB_Kfz1_MG42_camo",
		"LIB_Kfz1_MG42_camo",
		"LIB_Kfz1_MG42_camo"

	];
		
		
	_trucks = [

		"LIB_OpelBlitz_Open_Y_Camo", 
		"LIB_OpelBlitz_Fuel", 
		"LIB_OpelBlitz_Ammo"

	];
		
		
	_apcs = [
		
		"LIB_SdKfz124",
		"CSA38_pzIIID_LATE",
		"CSA38_ltm38_LATE2",
		"fow_v_sdkfz_234_1",
		"CSA38_8radLATE2",
		"CSA38_8rad2LATE2"

	];
		
		
	_AAs = [

		"LIB_FlakPanzerIV_Wirbelwind",
		"LIB_SdKfz_7_AA"

	];
		
		
	_tanks = [
		
		"LIB_PzKpfwV",
		"LIB_PzKpfwVI_E_tarn51c",
		"LIB_StuG_III_G",
		"LIB_PzKpfwIV_H_tarn51d",
		"LIB_PzKpfwVI_B_tarn51c",
		"LIB_FlakPanzerIV_Wirbelwind",
		"CSA38_pzIVC_LATE"

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
		"LIB_Pak40", 
		"LIB_leFH18_AT"
	
	];
	
	
	_staticMortar = [
		
		"LIB_leFH18",
		"LIB_GrWr34", 
		"LIB_Nebelwerfer41_Camo"
	
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
