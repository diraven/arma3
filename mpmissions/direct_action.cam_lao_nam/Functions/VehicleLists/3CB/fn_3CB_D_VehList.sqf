
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [

	];
	
	_carsUnarmed = [
		
		"UK3CB_BAF_LandRover_Hard_FFR_Sand_A_MTP", 
		"UK3CB_BAF_LandRover_Snatch_FFR_Sand_A_MTP", 
		"UK3CB_BAF_LandRover_Soft_FFR_Sand_A_MTP"
		
	];
	
	
	_carsArmed = [
	
		"UK3CB_BAF_Panther_GPMG_Sand_A_MTP", 
		"UK3CB_BAF_Coyote_Logistics_L134A1_D_MTP", 
		"UK3CB_BAF_Coyote_Logistics_L111A1_D_MTP", 
		"UK3CB_BAF_Coyote_Passenger_L134A1_D_MTP", 
		"UK3CB_BAF_Coyote_Passenger_L111A1_D_MTP", 
		"UK3CB_BAF_Husky_Logistics_GMG_Sand_MTP", 
		"UK3CB_BAF_Husky_Logistics_GPMG_Sand_MTP", 
		"UK3CB_BAF_Husky_Logistics_HMG_Sand_MTP", 
		"UK3CB_BAF_Husky_Passenger_GMG_Sand_MTP", 
		"UK3CB_BAF_Husky_Passenger_GPMG_Sand_MTP", 
		"UK3CB_BAF_Husky_Passenger_HMG_Sand_MTP", 
		"UK3CB_BAF_Jackal2_GMG_D_MTP", 
		"UK3CB_BAF_Jackal2_L2A1_D_MTP", 
		"UK3CB_BAF_LandRover_WMIK_GMG_FFR_Sand_A_MTP", 
		"UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Sand_A_MTP", 
		"UK3CB_BAF_LandRover_WMIK_HMG_FFR_Sand_A_MTP", 
		"UK3CB_BAF_LandRover_WMIK_Milan_FFR_Sand_A_MTP"

	];
	
	
	_trucks = [

		"UK3CB_BAF_MAN_HX60_Transport_Sand_MTP", 
		"UK3CB_BAF_MAN_HX60_Repair_Sand_MTP", 
		"UK3CB_BAF_MAN_HX60_Fuel_Sand_MTP", 
		"UK3CB_BAF_MAN_HX60_Cargo_Sand_B_MTP", 
		"UK3CB_BAF_MAN_HX60_Cargo_Sand_A_MTP", 
		"UK3CB_BAF_MAN_HX58_Transport_Sand_MTP", 
		"UK3CB_BAF_MAN_HX58_Repair_Sand_MTP", 
		"UK3CB_BAF_MAN_HX58_Fuel_Sand_MTP", 
		"UK3CB_BAF_MAN_HX58_Cargo_Sand_B_MTP", 
		"UK3CB_BAF_MAN_HX58_Cargo_Sand_A_MTP"

	];
	
	
	_apcs = [

	];
	
	
	_AAs = [
	
	];
	
	
	_tanks = [

	];
	
	
	_artys = [

	];
	
	
	_transportHelis = [

	];
	
	
	_attackHelis = [

	];
	
	
	_capPlanes = [
		
	];
	
	
	_casPlanes = [

	];
	
	_ships = [

	];
	
	_staticGun = [
	
	];
	
	
	_staticAA = [
	
	];
	
	
	_staticAT = [
	
	];
	
	
	_staticMortar = [
	
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
