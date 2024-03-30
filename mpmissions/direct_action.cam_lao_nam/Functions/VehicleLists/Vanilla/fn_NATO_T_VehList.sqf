	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [
		
		"B_T_Quadbike_01_F"
		
	];
	
	_carsUnarmed = [

		"B_T_LSV_01_unarmed_F",
		"B_T_MRAP_01_F"
		
	];
		
		
	_carsArmed = [
		
		"B_T_LSV_01_armed_F",
		"B_T_LSV_01_AT_F",
		"B_T_MRAP_01_hmg_F",
		"B_T_MRAP_01_gmg_F"
		
	];
		
		
	_trucks = [

		"B_T_Truck_01_mover_F",
		"B_T_Truck_01_ammo_F",
		"B_T_Truck_01_box_F",
		"B_T_Truck_01_cargo_F",
		"B_T_Truck_01_flatbed_F",
		"B_T_Truck_01_fuel_F",
		"B_T_Truck_01_medical_F",
		"B_T_Truck_01_Repair_F",
		"B_T_Truck_01_transport_F",
		"B_T_Truck_01_covered_F"
		
	];
		
		
	_apcs = [
		
		"B_T_APC_Wheeled_01_cannon_F",
		"B_T_APC_Wheeled_01_atgm_lxWS",
		"B_T_APC_Wheeled_01_command_lxWS",
		"B_T_APC_Tracked_01_CRV_F",
		"B_T_APC_Tracked_01_rcws_F",
		"B_T_AFV_Wheeled_01_cannon_F",
		"B_T_AFV_Wheeled_01_up_cannon_F"

	];
		
		
	_AAs = [

		"B_T_APC_Tracked_01_AA_F"
		
	];
		
		
	_tanks = [
		
		"B_T_MBT_01_cannon_F",
		"B_T_MBT_01_TUSK_F"

	];
		
		
	_artys = [

		"B_T_APC_Wheeled_01_mortar_lxWS",
		"B_T_MBT_01_arty_F",
		"B_T_MBT_01_mlrs_F"
	
	];
		
	_transportHelis = [
		
		"B_Heli_Transport_03_unarmed_F",
		"B_Heli_Transport_03_F",
		"B_Heli_Light_01_F",
		"B_Heli_Transport_01_F"

	];
		
		
	_attackHelis = [
		
		"B_Heli_Attack_01_dynamicLoadout_F"

	];
		
		
	_capPlanes = [
		
		"B_Plane_Fighter_01_F",
		"B_Plane_Fighter_01_Stealth_F"

	];
		
		
	_casPlanes = [
		
		"B_Plane_CAS_01_dynamicLoadout_F"
		
	];

	_ships = [
		
		"B_T_Boat_Armed_01_minigun_F"

	];
	
	_staticGun = [
			
		"B_HMG_01_high_F",
		"B_GMG_01_high_F"
			
	];
	
	
	_staticAA = [
		
		"B_static_AA_F"
	
	];
	
	
	_staticAT = [
		
		"B_static_AT_F"
		
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
