
	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [



	];
	
	_carsUnarmed = [

		"rhssaf_army_o_m1025_olive", 
		"rhsgref_BRDM2UM_vdv"
		
	];
	
	
	_carsArmed = [

		"rhssaf_army_o_m1025_olive_m2", 
		"rhsgref_BRDM2_msv", 
		"rhsgref_BRDM2_ATGM_vdv"
		
	];
	
	
	_trucks = [

		"rhssaf_army_o_ural", 
		"rhssaf_army_o_ural_fuel", 
		"rhssaf_army_o_ural_open"

	];
	
	
	_apcs = [

		"rhs_btr60_msv"

	];
	
	
	_AAs = [

		"rhs_zsu234_aa"

	];
	
	
	_tanks = [

		"rhssaf_army_o_t72s"

	];
	
	
	_artys = [
		
		"rhssaf_army_o_2s1"

	];
	
	
	
	_transportHelis = [

		"rhssaf_airforce_o_ht40", 
		"rhssaf_airforce_o_ht48"

	];
	
	
	_attackHelis = [

		"RHS_Mi24V_vdv"

	];
	
	
	_capPlanes = [

		"rhssaf_airforce_o_l_18_101"
		
	];
	
	
	_casPlanes = [

		"rhssaf_airforce_o_l_18"

	];
	
	
	_ships = [



	];
	
	_staticGun = [
			
		"rhssaf_army_o_ags30_tripod", 
		"rhssaf_army_o_nsv_tripod", 
		"rhssaf_army_o_m2staticmg_minitripod"
	
	];
	
	
	_staticAA = [
	
		"RHS_ZU23_VDV"
		
	];
	
	
	_staticAT = [
	
		"rhssaf_army_o_metis_9k115", 
		"rhs_D30_at_msv"

	];
	
	
	_staticMortar = [
	
		"rhs_D30_msv"
	
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
