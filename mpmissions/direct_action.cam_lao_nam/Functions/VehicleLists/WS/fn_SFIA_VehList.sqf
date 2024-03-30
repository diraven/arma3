	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [

		"O_Quadbike_01_F"

	];
	
	_carsUnarmed = [

		"O_SFIA_Offroad_lxWS",
		"O_Tura_Offroad_armor_lxWS",
		"dcx_ws_o_sfia_uaz469_cargo"

	];
	
	
	_carsArmed = [

		"O_SFIA_Offroad_AT_lxWS",
		"O_SFIA_Offroad_armed_lxWS",
		"O_Tura_Offroad_armor_AT_lxWS",
		"O_Tura_Offroad_armor_armed_lxWS",
		"dcx_ws_o_sfia_uaz469_dshkm",
		"dcx_ws_o_sfia_uaz469_spg9"
	
	];
	
	
	_trucks = [

		"O_SFIA_Truck_02_Ammo_lxWS",
		"O_SFIA_Truck_02_cargo_lxWS",
		"O_SFIA_Truck_02_flatbed_lxWS",
		"O_SFIA_Truck_02_fuel_lxWS",
		"O_SFIA_Truck_02_box_lxWS",
		"O_SFIA_Truck_02_transport_lxWS",
		"O_SFIA_Truck_02_covered_lxWS"

	];
	
	
	_apcs = [

		"O_SFIA_APC_Tracked_02_cannon_lxWS",
		"dcx_ws_o_sfia_bmp1"

	];
	
	
	_AAs = [

		"O_SFIA_APC_Tracked_02_AA_lxWS"

	];
	
	
	_tanks = [

		"dcx_ws_o_sfia_t55ak",
		"O_SFIA_MBT_02_cannon_lxWS",
		"dcx_ws_o_sfia_pt76"

	];
	
	
	_artys = [

		"O_SFIA_Truck_02_MRL_lxWS"

	];
	
	
	
	_transportHelis = [

		"O_Heli_Transport_04_black_F"

	];
	
	
	_attackHelis = [

		"O_SFIA_Heli_Attack_02_dynamicLoadout_lxWS"

	];
	
	
	_capPlanes = [

		"O_Plane_Fighter_02_F",
		"dcx_ws_sfia_f4"

	];
	
	
	_casPlanes = [

		"O_Plane_CAS_02_F",
		"dcx_ws_sfia_f4"

	];
	
	_ships = [

		"O_Boat_Armed_01_hmg_F"

	];
	
	_staticGun = [
	
		"O_SFIA_HMG_02_high_lxWS"
	
	];
	
	
	_staticAA = [
	
		"O_SFIA_ZU23_lxWS"
	
	];
	
	
	_staticAT = [
	
		"O_static_AT_F"
	
	];
	
	
	_staticMortar = [
	
		"O_SFIA_Mortar_lxWS"
	
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
