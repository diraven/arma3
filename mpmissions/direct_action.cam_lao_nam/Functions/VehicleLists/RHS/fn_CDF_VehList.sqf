
	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [

	
	];
	
	_carsUnarmed = [
		
		"rhsgref_cdf_reg_uaz",
		"rhsgref_cdf_reg_uaz_open",
		"rhsgref_BRDM2UM"

	];
	
	
	_carsArmed = [

		"rhsgref_cdf_reg_uaz_ags",
		"rhsgref_cdf_reg_uaz_dshkm",
		"rhsgref_cdf_reg_uaz_spg9",
		"rhsgref_BRDM2",
		"rhsgref_BRDM2_ATGM",
		"rhsgref_BRDM2_HQ"

	];
	
	
	_trucks = [
		
		"rhsgref_cdf_gaz66",
		"rhsgref_cdf_gaz66_ammo",
		"rhsgref_cdf_gaz66_flat",
		"rhsgref_cdf_gaz66o",
		"rhsgref_cdf_gaz66o_flat",
		"rhsgref_cdf_gaz66_r142",
		"rhsgref_cdf_gaz66_zu23",
		"rhsgref_cdf_gaz66_ap2",
		"rhsgref_cdf_gaz66_repair",
		"rhsgref_cdf_ural",
		"rhsgref_cdf_ural_fuel",
		"rhsgref_cdf_ural_open",
		"rhsgref_cdf_ural_repair",
		"rhsgref_cdf_ural_Zu23",
		"rhsgref_cdf_zil131",
		"rhsgref_cdf_zil131_flatbed_cover",
		"rhsgref_cdf_zil131_open",
		"rhsgref_cdf_zil131_flatbed"
		
	];
	
	
	_apcs = [
		
		"rhsgref_cdf_btr60",
		"rhsgref_cdf_btr70",
		"rhsgref_cdf_btr80",
		"rhsgref_cdf_bmd1p",
		"rhsgref_cdf_bmp1p",
		"rhsgref_cdf_bmp2k"

	];
	
	
	_AAs = [
		
		"rhsgref_cdf_zsu234"

	];
	
	
	_tanks = [

		"rhsgref_cdf_t72bb_tv",
		"rhsgref_cdf_t80uk_tv",
		"rhs_sprut_vdv"
		
	];
	
	
	_artys = [
	
		"rhsgref_cdf_2s1_at",
		"rhsgref_cdf_reg_BM21"

	];
	
	
	
	_transportHelis = [
		
		"rhsgref_cdf_reg_Mi8amt"

	];
	
	
	_attackHelis = [
	
		"rhsgref_cdf_Mi35",
		"rhsgref_cdf_reg_Mi17Sh"

	];
	
	
	_capPlanes = [
		
		"rhsgref_cdf_mig29s"
		
	];
	
	
	_casPlanes = [
		
		"rhsgref_cdf_su25"

	];
	
	
	_ships = [

	];
	
	_staticGun = [
		
		"rhsgref_cdf_AGS30_TriPod",
		"rhsgref_cdf_DSHKM",
		"rhsgref_cdf_DSHKM_Mini_TriPod",
		"rhsgref_cdf_NSV_TriPod"
	
	];
	
	
	_staticAA = [
		
		"rhsgref_cdf_Igla_AA_pod",
		"RHSgref_cdf_ZU23"
		
	];
	
	
	_staticAT = [
	
		"rhsgref_cdf_reg_d30_at",
		"rhsgref_cdf_SPG9",
		"rhsgref_cdf_SPG9M"	
	
	];
	
	
	_staticMortar = [
		
		"rhsgref_cdf_reg_d30",
		"rhsgref_cdf_reg_M252"
	
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
