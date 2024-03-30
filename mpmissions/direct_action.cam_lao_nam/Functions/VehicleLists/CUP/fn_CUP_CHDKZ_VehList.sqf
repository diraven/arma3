	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [

		"CUP_O_TT650_CHDKZ"

	];
	
	_carsUnarmed = [
		
		"CUP_O_Hilux_unarmed_CHDKZ",
		"CUP_O_UAZ_Unarmed_CHDKZ", 
		"CUP_O_UAZ_Open_CHDKZ"

	];
		
		
	_carsArmed = [
		
		"CUP_O_Hilux_AGS30_CHDKZ", 
		"CUP_O_Hilux_DSHKM_CHDKZ", 
		"CUP_O_Hilux_igla_CHDKZ", 
		"CUP_O_Hilux_metis_CHDKZ", 
		"CUP_O_Hilux_MLRS_CHDKZ", 
		"CUP_O_Hilux_podnos_CHDKZ", 
		"CUP_O_Hilux_SPG9_CHDKZ", 
		"CUP_O_Hilux_UB32_CHDKZ", 
		"CUP_O_Hilux_zu23_CHDKZ",
		"CUP_O_UAZ_AGS30_CHDKZ", 
		"CUP_O_UAZ_MG_CHDKZ", 
		"CUP_O_UAZ_METIS_CHDKZ", 
		"CUP_O_UAZ_SPG9_CHDKZ"

	];
		
		
	_trucks = [

		"CUP_O_Ural_Repair_CHDKZ", 
		"CUP_O_Ural_Refuel_CHDKZ", 
		"CUP_O_Ural_Open_CHDKZ", 
		"CUP_O_Ural_Empty_CHDKZ", 
		"CUP_O_Ural_Reammo_CHDKZ", 
		"CUP_O_Ural_CHDKZ"

	];
		
		
	_apcs = [

		"CUP_O_BMP2_CHDKZ", 
		"CUP_O_BTR60_CHDKZ", 
		"CUP_O_BTR80_CHDKZ", 
		"CUP_O_MTLB_pk_ChDKZ", 
		"CUP_O_BTR80A_CHDKZ"

	];
		
		
	_AAs = [

		"CUP_O_Ural_ZU23_CHDKZ", 
		"CUP_O_ZSU23_ChDKZ"
		
	];
		
		
	_tanks = [

		"CUP_O_T55_CHDKZ", 
		"CUP_O_T72_CHDKZ"

	];
		
		
	_artys = [

		"CUP_O_BM21_CHDKZ"

	];
		
	_transportHelis = [
		
		"CUP_O_Mi8_CHDKZ", 
		"CUP_O_Mi8_VIV_CHDKZ"

	];
		
		
	_attackHelis = [

		"CUP_O_Ka50_DL_RU",
		"CUP_O_Ka52_RU",
		"CUP_O_Mi24_V_Dynamic_RU",
		"CUP_O_Mi8_RU",
		"CUP_O_Ka60_Grey_RU"

	];
		
		
	_capPlanes = [

		"CUP_O_SU34_RU"

	];
		
		
	_casPlanes = [

		"CUP_O_Su25_Dyn_RU"

	];

	_ships = [
		
		"O_Boat_Armed_01_hmg_F"

	];
	
	_staticGun = [

		"CUP_O_AGS_ChDKZ", 
		"CUP_O_DSHKM_ChDKZ", 
		"CUP_O_DSHkM_MiniTriPod_ChDKZ"

	];
	
	
	_staticAA = [
	
		"CUP_O_Igla_AA_pod_ChDKZ", 
		"CUP_O_ZU23_ChDKZ"
	
	];
	
	
	_staticAT = [
	
		"CUP_O_D30_AT_ChDKZ", 
		"CUP_O_SPG9_ChDKZ"
	
	];
	
	
	_staticMortar = [
		
		"CUP_O_D30_ChDKZ", 
		"CUP_O_2b14_82mm_ChDKZ"

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
