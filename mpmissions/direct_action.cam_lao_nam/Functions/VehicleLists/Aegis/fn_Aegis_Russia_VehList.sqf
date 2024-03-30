	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [

		"O_R_Quadbike_01_ard_F"
		
	];
	
	_carsUnarmed = [
		
		"O_R_MRAP_02_ard_F", 
		"O_R_LSV_02_unarmed_ard_F"
	
	];
	
	
	_carsArmed = [

		"O_R_MRAP_02_gmg_ard_F", 
		"O_R_MRAP_02_hmg_ard_F", 
		"O_R_LSV_02_AT_ard_F", 
		"O_R_LSV_02_armed_ard_F",
		"O_R_UGV_01_rcws_ard_F"
	
	];
	
	
	_trucks = [

		"O_R_Truck_02_cargo_ard_F", 
		"O_R_Truck_02_fuel_ard_F", 
		"O_R_Truck_02_ard_F"

	];
	
	
	_apcs = [

		"O_R_APC_Wheeled_04_cannon_ard_F", 
		"O_R_APC_Tracked_02_cannon_ard_F"

	];
	
	
	_AAs = [

		"O_R_APC_Tracked_02_AA_ard_F"

	];
	
	
	_tanks = [

		"O_R_MBT_04_command_ard_F", 
		"O_R_MBT_04_cannon_ard_F", 
		"O_R_MBT_02_cannon_ard_F"
	
	];
	
	
	_artys = [

		"O_R_MBT_02_arty_ard_F", 
		"O_R_Truck_02_MRL_ard_F"

	];
	
	
	_transportHelis = [

		"O_R_Heli_Transport_04_covered_ard_F", 
		"O_R_Heli_Light_02_unarmed_ard_F", 
		"O_R_Heli_Transport_04_F"

	];
	
	
	_attackHelis = [

		"O_R_Heli_Attack_02_dynamicLoadout_ard_F", 
		"O_R_Heli_Light_02_dynamicLoadout_ard_F"

	];
	
	
	_capPlanes = [

		"O_R_Plane_Fighter_02_ard_F", 
		"O_R_Plane_Fighter_02_Stealth_ard_F"

	];
	
	
	_casPlanes = [

		"O_R_UAV_02_dynamicLoadout_ard_F", 
		"O_R_Plane_CAS_02_dynamicLoadout_ard_F"

	];
	
	_ships = [

		"O_R_Boat_Armed_01_hmg_ard_F"

	];
	
	_staticGun = [
	
		"O_R_HMG_01_ard_F", 
		"O_R_HMG_01_high_ard_F", 
		"O_R_HMG_01_A_ard_F", 
		"O_R_GMG_01_ard_F", 
		"O_R_GMG_01_high_ard_F", 
		"O_R_GMG_01_A_ard_F" 

	];
	
	
	_staticAA = [
		
		"O_R_Static_AA_ard_F"
	
	];
	
	
	_staticAT = [
		
		"O_R_Static_AT_ard_F"
	
	];
	
	
	_staticMortar = [
		
		"O_R_Mortar_01_ard_F"
	
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
