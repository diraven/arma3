	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [

		"I_Quadbike_01_F"

	];
	
	_carsUnarmed = [

		"I_MRAP_03_F",
		"I_C_Offroad_02_unarmed_F"

	];
		
		
	_carsArmed = [

		"I_MRAP_03_gmg_F",
		"I_MRAP_03_hmg_F",
		"I_C_Offroad_02_LMG_F",
		"I_C_Offroad_02_AT_F"

	];
		
		
	_trucks = [

		"I_Truck_02_ammo_F",
		"I_Truck_02_fuel_F",
		"I_Truck_02_medical_F",
		"I_Truck_02_box_F",
		"I_Truck_02_transport_F",
		"I_Truck_02_covered_F"

	];
		
		
	_apcs = [

		"I_APC_Wheeled_03_cannon_F",
		"I_APC_tracked_03_cannon_F",
		"I_LT_01_cannon_F",
		"I_LT_01_AT_F"

	];
		
		
	_AAs = [

		"I_LT_01_AA_F"

	];
		
		
	_tanks = [

		"I_Truck_02_MRL_F"

	];
		
		
	_artys = [

		"I_Truck_02_MRL_F"

	];
		
	_transportHelis = [
		
		"I_Heli_light_03_unarmed_F",
		"I_Heli_Transport_02_F"

	];
		
		
	_attackHelis = [

		"I_Heli_light_03_dynamicLoadout_F"

	];
		
		
	_capPlanes = [

		"I_Plane_Fighter_04_F"

	];
		
		
	_casPlanes = [

		"I_Plane_Fighter_04_Cluster_F"

	];

	_ships = [


	];
	
	_staticGun = [
	
		"I_HMG_02_F",
		"I_HMG_02_high_F",
		"I_GMG_01_high_F",
		"I_GMG_01_F"
	
	];
	
	
	_staticAA = [
	
		"I_static_AA_F"
	
	];
	
	
	_staticAT = [
		
		"I_static_AT_F"
	
	];
	
	
	_staticMortar = [
	
		"I_Mortar_01_F"
	
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
