
	_type = _this select 0;

		_type = toUpper _type;

	_bikes = [
		
		"OPTRE_FC_Elite_Major",
		"OPTRE_FC_Elite_MinorAA",
		"OPTRE_FC_Elite_MinorAT",
		"OPTRE_FC_Elite_Minor",
		"OPTRE_FC_Elite_Minor2",
		"OPTRE_FC_Elite_SpecOps",
		"OPTRE_FC_Elite_SpecOps2",
		"OPTRE_FC_Elite_SpecOps3"

	];

	_carsUnarmed = [

		"OPTRE_FC_Elite_Major",
		"OPTRE_FC_Elite_MinorAA",
		"OPTRE_FC_Elite_MinorAT",
		"OPTRE_FC_Elite_Minor",
		"OPTRE_FC_Elite_Minor2",
		"OPTRE_FC_Elite_SpecOps",
		"OPTRE_FC_Elite_SpecOps2",
		"OPTRE_FC_Elite_SpecOps3"
		
	];


	_carsArmed = [
		
		"OPTRE_FC_Elite_Major",
		"OPTRE_FC_Elite_MinorAA",
		"OPTRE_FC_Elite_MinorAT",
		"OPTRE_FC_Elite_Minor",
		"OPTRE_FC_Elite_Minor2",
		"OPTRE_FC_Elite_SpecOps",
		"OPTRE_FC_Elite_SpecOps2",
		"OPTRE_FC_Elite_SpecOps3"
		
	];


	_trucks = [
		
		"OPTRE_FC_Elite_Major",
		"OPTRE_FC_Elite_MinorAA",
		"OPTRE_FC_Elite_MinorAT",
		"OPTRE_FC_Elite_Minor",
		"OPTRE_FC_Elite_Minor2",
		"OPTRE_FC_Elite_SpecOps",
		"OPTRE_FC_Elite_SpecOps2",
		"OPTRE_FC_Elite_SpecOps3"

	];


	_apcs = [
		
		"OPTRE_FC_Elite_FieldMarshal2",
		"OPTRE_FC_Elite_Ultra",
		"OPTRE_FC_Elite_Ultra2",
		"OPTRE_FC_Elite_Zealot",
		"OPTRE_FC_Elite_Zealot2",
		"OPTRE_FC_Elite_FieldMarshal"
		
	];


	_AAs = [

		"OPTRE_FC_Wraith",
		"OPTRE_FC_Wraith_Tank",
		"OPTRE_FC_AA_Wraith"

	];


	_tanks = [
		
		"OPTRE_FC_Wraith",
		"OPTRE_FC_Wraith_Tank",
		"OPTRE_FC_AA_Wraith"

	];


	_artys = [

		"OPTRE_FC_Wraith",
		"OPTRE_FC_Wraith_Tank",
		"OPTRE_FC_AA_Wraith"
		
	];


	_transportHelis = [

		"OPTRE_FC_Spirit",
		"OPTRE_FC_Spirit_Concussion"
		
	];


	_attackHelis = [
		
		"OPTRE_FC_Type27_Banshee",
		"OPTRE_FC_Type26N_Banshee",
		"OPTRE_FC_Type26B_Banshee"

	];


	_capPlanes = [

		"OPTRE_FC_Type27_Banshee",
		"OPTRE_FC_Type26N_Banshee",
		"OPTRE_FC_Type26B_Banshee"

	];


	_casPlanes = [
		
		"OPTRE_FC_Type27_Banshee",
		"OPTRE_FC_Type26N_Banshee",
		"OPTRE_FC_Type26B_Banshee"

	];

	_ships = [


	];

	_staticGun = [
		
		"OPTRE_FC_T26_AI"

	];


	_staticAA = [
		
		"OPTRE_FC_T26_AA"
		

	];


	_staticAT = [

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
