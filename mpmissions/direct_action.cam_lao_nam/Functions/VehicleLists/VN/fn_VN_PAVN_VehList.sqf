	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [

		"vn_o_bicycle_01"

	];
	
	_carsUnarmed = [

		"vn_o_wheeled_btr40_01"
		
	];
		
		
	_carsArmed = [

		"vn_o_wheeled_btr40_mg_02",
		"vn_o_wheeled_btr40_mg_01",
		"vn_o_wheeled_z157_mg_01_nva65"


	];
		
		
	_trucks = [

		"vn_o_wheeled_z157_fuel", 
		"vn_o_wheeled_z157_02", 
		"vn_o_wheeled_z157_01"

	];
		
		
	_apcs = [

		"vn_o_armor_m113_acav_01",
		"vn_o_armor_m113_acav_03",
		"vn_o_armor_m113_01",
		"uns_Type63_mg",
		"uns_ZSU23_NVA"

	];
		
		
	_AAs = [
		
		"uns_ZSU57_NVA",
		"vn_o_wheeled_z157_mg_02"

	];
		
		
	_tanks = [

		"uns_t55_nva", 
		"uns_t34_85_nva",
		"vn_o_armor_type63_01",
		"vn_o_armor_pt76b_01_nva65"
		

	];
		
		
	_artys = [

		"vn_o_nva_65_static_mortar_type53"

	];
		
	_transportHelis = [

		"vn_o_air_mi2_01_01", 
		"uns_Mi8T_VPAF"

	];
		
		
	_attackHelis = [

		"vn_o_air_mi2_05_01"

	];
		
		
	_capPlanes = [
		
		"vn_o_air_mig19_cap",
		"vn_o_air_mig19_gun"

	];
		
		
	_casPlanes = [
		
		"vn_o_air_mig19_at",
		"vn_o_air_mig19_bmb",
		"vn_o_air_mig19_cas",
		"vn_o_air_mig19_hbmb",
		"vn_o_air_mig19_mr"
		
	];

	_ships = [
		
		"vn_o_boat_04_01",
		"vn_o_boat_03_01",
		"vn_o_boat_04_02",
		"vn_o_boat_03_02"

	];
	
	_staticGun = [

		"vn_o_nva_static_dshkm_high_02"
	
	];
	
	
	_staticAA = [
		
		"vn_o_nva_static_zpu4"
	
	];
	
	
	_staticAT = [
	
		"vn_o_nva_navy_static_d44"
	
	];
	
	
	_staticMortar = [
		
		"vn_o_nva_static_mortar_type53",
		"vn_o_nva_static_d44_01"
	
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
