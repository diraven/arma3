

	_type = _this select 0;

		_type = toUpper _type;

	_bikes = [

		"OPTRE_M274_ATV"

	];

	_carsUnarmed = [

		"OPTRE_M813_TT",
		"OPTRE_M12_FAV"

	];


	_carsArmed = [
		"OPTRE_M12_LRV",
		"OPTRE_M12A1_LRV",
		"OPTRE_M12R_AA",
		"OPTRE_M12G1_LRV"
	];


	_trucks = [

		"B_Truck_01_transport_F",
		"B_Truck_01_covered_F",
		"B_Truck_01_mover_F",
		"B_Truck_01_box_F",
		"B_Truck_01_Repair_F",
		"B_Truck_01_ammo_F",
		"B_Truck_01_fuel_F",
		"B_Truck_01_medical_F",
		"B_Truck_01_flatbed_F",
		"B_Truck_01_cargo_F"

	];


	_apcs = [
		"OPTRE_M412_IFV_UNSC",
		"OPTRE_M413_MGS_UNSC"

		];


	_AAs = [

		"OPTRE_M808B2"

		];


	_tanks = [
		"OPTRE_M808B_UNSC",
		"OPTRE_M808S"

	];


	_artys = [

		"OPTRE_M808S"

	];

	_transportHelis = [

	"OPTRE_UNSC_falcon_unarmed",
	"OPTRE_UNSC_falcon"

	];


	_attackHelis = [

		"OPTRE_AV22_Sparrowhawk",
		"OPTRE_AV22A_Sparrowhawk",
		"OPTRE_AV22B_Sparrowhawk",
		"OPTRE_AV22C_Sparrowhawk",
		"OPTRE_UNSC_hornet"
	];


	_capPlanes = [

		"OPTRE_UNSC_hornet_CAP"

	];


	_casPlanes = [

		"OPTRE_UNSC_hornet_CAS"

	];

	_ships = [

		"optre_catfish_mg_f",
		"optre_catfish_unarmed_f"

	];

	_staticGun = [

	"OPTRE_Static_M247H_Tripod",
	"OPTRE_Static_M247H_Shielded_Tripod",
	"OPTRE_Static_M247T_Tripod",
	"OPTRE_Static_M41"


	];


	_staticAA = [

			"OPTRE_Static_AA"

	];


	_staticAT = [

	"OPTRE_Static_ATGM",
	"OPTRE_LAU65D_pod",
	"OPTRE_Static_Gauss"

	];


	_staticMortar = [

		"B_Mortar_01_F"

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
