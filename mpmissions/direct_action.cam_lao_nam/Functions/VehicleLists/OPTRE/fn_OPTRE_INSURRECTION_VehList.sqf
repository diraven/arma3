
	_type = _this select 0;

		_type = toUpper _type;

	_bikes = [
		
		"OPTRE_M274_ATV_Ins"
		
	];

	_carsUnarmed = [
		
		"OPTRE_M914_RV_ins",
		"OPTRE_M12_ins_APC",
		"OPTRE_M12_FAV_ins"

	];


	_carsArmed = [
		
		"OPTRE_M12_LRV_ins",
		"OPTRE_M12_TD_ins",
		"OPTRE_M12A1_LRV_ins"

	];


	_trucks = [
		
		"OPTRE_m1015_mule_ins",
		"OPTRE_m1015_mule_ammo_ins",
		"OPTRE_m1015_mule_cover_ins",
		"OPTRE_m1015_mule_fuel_ins",
		"OPTRE_m1015_mule_medical_ins",
		"OPTRE_m1015_mule_repair_ins"

	];


	_apcs = [
		
		"OPTRE_M494_INS"
		
	];


	_AAs = [

		"OPTRE_M12R_AA_ins"

	];


	_tanks = [

		"OPTRE_M808B_INS"
		
	];


	_artys = [
	
		"OPTRE_m1015_mule_mlr_ins"

	];



	_transportHelis = [

		"OPTRE_Pelican_unarmed_ins",
		"OPTRE_ins_falcon_unarmed"
		
	];


	_attackHelis = [
		
		"OPTRE_ins_falcon",
		"OPTRE_Pelican_armed_ins",
		"OPTRE_mako_drone_CAS_ins"

	];


	_capPlanes = [
		
		"OPTRE_UNSC_hornet_ins"
		
	];


	_casPlanes = [

		"OPTRE_ins_falcon",
		"OPTRE_Pelican_armed_ins",
		"OPTRE_mako_drone_CAS_ins"
	
	];

	_ships = [
		
		"optre_catfish_ins_mg_f"

	];

	_staticGun = [
		
		"OPTRE_Static_M41_Ins"

	];


	_staticAA = [
		
		"OPTRE_Static_AA_Ins"
		
	];


	_staticAT = [

		"OPTRE_Static_ATGM_Ins"
			
	];

	_staticMortar = [
		
		"I_G_Mortar_01_F"
		
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
