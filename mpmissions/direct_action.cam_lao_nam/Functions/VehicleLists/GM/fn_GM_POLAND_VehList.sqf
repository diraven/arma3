
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [


	];
	
	
	_carsUnarmed = [
		
		"gm_pl_army_uaz469_cargo",
		"dcx_pl_btr40_01"
	
	];
	
	
	_carsArmed = [
	
		"gm_pl_army_brdm2", 
		"gm_pl_army_uaz469_dshkm",
		"dcx_pl_btr40_mg_02"
	
	];
	
	
	_trucks = [

		"gm_pl_army_ural4320_cargo",
		"gm_pl_army_ural4320_repair",
		"gm_pl_army_ural375d_medic",
		"gm_pl_army_ural375d_refuel",
		"gm_pl_army_ural4320_reammo"
		
	];
	
	
	_apcs = [

		"gm_pl_army_ot64a",
		"gm_pl_army_bmp1sp2",
		"dcx_pl_btr40_mg_02"
			
	];
	
	
	_AAs = [
		
		"gm_pl_army_zsu234v1"

	];
	
	
	_tanks = [
		
		"dcx_gm_pl_t72m",
		"gm_pl_army_t55ak",
		"gm_pl_army_pt76b"
	
	];
	
	
	_artys = [
		
		"gm_pl_army_2s1",
		"gm_pl_army_2p16"

	];
		
		
	_transportHelis = [
		
		"gm_pl_airforce_mi2ch",
		"gm_pl_airforce_mi2p",
		"gm_pl_airforce_mi2platan",
		"gm_pl_airforce_mi2sr",
		"gm_pl_airforce_mi2t"

	];
		
		
	_attackHelis = [
		
		"gm_pl_airforce_mi2us",
		"gm_pl_airforce_mi2urn",
		"gm_pl_airforce_mi2urp",
		"gm_pl_airforce_mi2urpg",
		"gm_pl_airforce_mi2urs",
		"gm_pl_airforce_mi2us"
		
	];
		
		
	_capPlanes = [
		
		"UK3CB_CW_SOV_O_LATE_MIG29SM"

	];
	
	
	_casPlanes = [
	
		"UK3CB_CW_SOV_O_LATE_Su25SM_CAS"
		
	];
	
	
	_ships = [
		

	];
	
	
	_staticGun = [
		
		"gm_pl_army_dshkm_aatripod"
		
	];
	
	
	_staticAA = [
		
		"UK3CB_CW_SOV_O_Late_Igla_AA_pod", 
		"UK3CB_CW_SOV_O_Late_ZU23"
		
	];
		
		
	_staticAT = [
		
		"gm_pl_army_fagot_launcher_tripod",
		"gm_pl_army_spg9_tripod"
	
	];
		
		
	_staticMortar = [
			
		"UK3CB_CW_SOV_O_Late_D30", 
		"UK3CB_CW_SOV_O_Late_2b14_82mm"
		
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
