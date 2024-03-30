
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [


	];
	
	
	_carsUnarmed = [
		
		"gm_gc_army_brdm2um", 
		"gm_gc_army_p601", 
		"gm_gc_army_uaz469_cargo",
		"dcx_gm_gc_btr40_01"
	
	];
	
	
	_carsArmed = [
	
		"gm_gc_army_brdm2", 
		"gm_gc_army_uaz469_dshkm", 
		"gm_gc_army_uaz469_spg9",
		"dcx_gm_gc_btr40_mg_02"
	
	];
	
	
	_trucks = [

		"gm_gc_army_ural4320_reammo", 
		"gm_gc_army_ural375d_refuel", 
		"gm_gc_army_ural375d_medic", 
		"gm_gc_army_ural375d_cargo", 
		"gm_gc_army_ural4320_repair", 
		"gm_gc_army_ural44202", 
		"gm_gc_army_ural4320_cargo"
		
	];
	
	
	_apcs = [

		"gm_gc_army_bmp1sp2", 
		"gm_gc_army_btr60pb",
		"dcx_gm_gc_btr40_mg_03"
			
	];
	
	
	_AAs = [
		
		"gm_gc_army_zsu234v1"

	];
	
	
	_tanks = [
		
		"gm_gc_army_pt76b", 
		"gm_gc_army_t55am2b",
		"dcx_gm_ge_t72m"
	
	];
	
	
	_artys = [
		
		"UK3CB_CW_SOV_O_LATE_2S1", 
		"UK3CB_CW_SOV_O_LATE_2S3"

	];
		
		
	_transportHelis = [
		
		"gm_gc_airforce_mi2p", 
		"gm_gc_airforce_mi2t", 
		"gm_gc_airforce_mi2us",
		"dcx_gm_gc_mi17mg"

	];
		
		
	_attackHelis = [
		
		"UK3CB_CW_SOV_O_LATE_Mi_24P", 
		"UK3CB_CW_SOV_O_LATE_Mi_24V", 
		"gm_gc_airforce_mi2urn",
		"dcx_gm_gc_mi17pylons"
		
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
		
		"gm_gc_army_dshkm_aatripod"
		
	];
	
	
	_staticAA = [
		
		"UK3CB_CW_SOV_O_Late_Igla_AA_pod", 
		"UK3CB_CW_SOV_O_Late_ZU23"
		
	];
		
		
	_staticAT = [
		
		"gm_gc_army_fagot_launcher_tripod", 
		"gm_gc_army_spg9_tripod"
	
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
