
	_type = _this select 0;

		_type = toUpper _type;

	_bikes = [

		"OPTRE_M274_ATV_Ins"

	];

	_carsUnarmed = [

		"OPTRE_M12_FAV_ins",
		"OPTRE_M12_FAV_APC",
		"OPTRE_M12_ins_MED",
		"OPTRE_M914_RV_ins"

	];


	_carsArmed = [

		"OPTRE_M12_LRV_ins"

	];


	_trucks = [

		"OPTRE_m1015_mule_ins"

	];


	_apcs = [

		"OPTRE_M12A1_LRV_ins",
		"OPTRE_M413_MGS_UNSC",
		"OPTRE_M412_IFV_UNSC"

	];


	_AAs = [



	];


	_tanks = [

		"OPTRE_FC_Wraith",
		"OPTRE_FC_Wraith_Tank"

	];


	_artys = [


	];



	_transportHelis = [

		"OPTRE_FC_Spirit"

	];


	_attackHelis = [

		"OPTRE_FC_Type26N_Banshee",
		"OPTRE_FC_Type27_Banshee",
		"OPTRE_FC_Type26B_Banshee"

	];


	_capPlanes = [

		"OPTRE_FC_Type26N_Banshee",
		"OPTRE_FC_Type27_Banshee",
		"OPTRE_FC_Type26B_Banshee"

	];


	_casPlanes = [

		"OPTRE_FC_Type26N_Banshee",
		"OPTRE_FC_Type27_Banshee",
		"OPTRE_FC_Type26B_Banshee"

	];

	_ships = [


	];

	_staticGun = [

		"OPTRE_Static_M41_Ins",
		"OPTRE_FC_T26_AI"

	];


	_staticAA = [

		"OPTRE_Static_AA_Ins",
		"OPTRE_Static_AA_Ins",
		"OPTRE_FC_T56_AA"

	];


	_staticAT = [

		"OPTRE_Static_FG75",
		"OPTRE_FC_T26_AT"

	];


	_staticMortar = [

		"Plasma_Mortar"

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
