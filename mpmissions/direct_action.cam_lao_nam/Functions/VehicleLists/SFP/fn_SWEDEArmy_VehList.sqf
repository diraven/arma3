
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [
	
		"sfp_cykel42"

	];
	
	_carsUnarmed = [
		
		"sfp_tgb16", 
		"sfp_tgb1112"
		
	];
	
	
	_carsArmed = [
		
		"sfp_tgb16_rws", 
		"sfp_tgb16_ksp58", 
		"sfp_tgb1111_sog_rbs56", 
		"sfp_tgb1111", 
		"sfp_tgb13_ksp58"
		
	];
	
	
	_trucks = [
		
		"sfp_tgb20", 
		"sfp_tgb1317", 
		"sfp_tgb1314"
		
	];
	
	
	_apcs = [
	
		"sfp_81_pbv302", 
		"sfp_81_pbv302_mounted", 
		"sfp_patgb360"

	];
	
	
	_AAs = [
		
		"RHS_M6_wd"
	
	];
	
	
	_tanks = [
	
		"sfp_81_ikv91", 
		"sfp_81_strv102", 
		"sfp_strv103b", 
		"sfp_strv122", 
		"sfp_strf90c"

	];
	
	
	_artys = [
		
		"rhsusf_m109_usarmy"
		
	];
	
	
	_transportHelis = [
		
		"sfp_hkp16", 
		"sfp_hkp4_2015", 
		"sfp_hkp9_sog"
		
	];
	
	
	_attackHelis = [
		
		"sfp_hkp9_rb55"
		
	];
	
	
	_capPlanes = [
		
		"sfp_jas39_cap"
		
	];
	
	
	_casPlanes = [
		
		"sfp_jas39"
		
	];
	
	
	_ships = [
	
		"sfp_gruppbat"

	];
	
	
	_staticGun = [
	
		"sfp_ksp88", 
		"sfp_grsp"
	
	];
	
	
	_staticAA = [
	
		"sfp_81_rbs70"
	
	];
	
	
	_staticAT = [
	
		"sfp_81_rbs55", 
		"sfp_rbs56"
	
	];
	
	_staticMortar = [
		
		"sfp_grk84",
		"sfp_fh77"
		
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
