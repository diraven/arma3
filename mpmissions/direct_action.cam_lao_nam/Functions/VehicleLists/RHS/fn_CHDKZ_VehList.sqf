
	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [

		"O_Quadbike_01_F"

	];
	
	_carsUnarmed = [
		
		"rhsgref_ins_uaz", 
		"rhsgref_ins_uaz_open", 
		"rhsgref_BRDM2UM_ins"

	];
	
	
	_carsArmed = [

		"rhsgref_ins_uaz_ags", 
		"rhsgref_ins_uaz_dshkm", 
		"rhsgref_ins_uaz_spg9", 
		"rhsgref_BRDM2_ins", 
		"rhsgref_BRDM2_ATGM_ins"

	];
	
	
	_trucks = [

		"rhsgref_ins_zil131", 
		"rhsgref_ins_zil131_flatbed_cover", 
		"rhsgref_ins_zil131_open", 
		"rhsgref_ins_zil131_flatbed"

	];
	
	
	_apcs = [

		"rhsgref_ins_btr70", 
		"rhsgref_ins_btr60", 
		"rhsgref_ins_bmp1d", 
		"rhsgref_ins_bmd2"

	];
	
	
	_AAs = [

		"rhsgref_ins_zsu234"

	];
	
	
	_tanks = [

		"rhsgref_ins_t72bb", 
		"rhsgref_ins_t72bc", 
		"rhsgref_ins_t72ba"

	];
	
	
	_artys = [

		"rhsgref_ins_2s1"

	];
	
	
	
	_transportHelis = [

		"rhsgref_ins_Mi8amt"

	];
	
	
	_attackHelis = [

		"RHS_Mi24V_vdv"

	];
	
	
	_capPlanes = [
		
		"rhs_mig29sm_vvs"

	];
	
	
	_casPlanes = [

		"RHS_Su25SM_vvs"

	];
	
	
	_ships = [

		"O_Boat_Armed_01_hmg_F"

	];
	
	_staticGun = [
			
		"rhsgref_ins_DSHKM", 
		"rhsgref_ins_NSV_TriPod", 
		"rhsgref_ins_AGS30_TriPod"
	
	];
	
	
	_staticAA = [
	
		"rhsgref_ins_Igla_AA_pod", 
		"rhsgref_ins_ZU23"
	
	];
	
	
	_staticAT = [
	
		
		"rhsgref_ins_SPG9M",
		"rhsgref_ins_d30_at"
	
	];
	
	
	_staticMortar = [
	
		"rhsgref_ins_d30", 
		"rhsgref_ins_2b14"
	
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
