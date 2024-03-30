
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [


	];
	
	
	_carsUnarmed = [
		
		"UK3CB_CW_SOV_O_LATE_BTR40", 
		"UK3CB_CW_SOV_O_LATE_BRDM2_UM", 
		"UK3CB_CW_SOV_O_LATE_UAZ_Closed", 
		"UK3CB_CW_SOV_O_LATE_UAZ_Open"
	
	];
	
	
	_carsArmed = [
	
		"UK3CB_CW_SOV_O_LATE_BTR40_MG", 
		"UK3CB_CW_SOV_O_LATE_BRDM2", 
		"UK3CB_CW_SOV_O_LATE_BRDM2_ATGM", 
		"UK3CB_CW_SOV_O_LATE_BRDM2_HQ", 
		"UK3CB_CW_SOV_O_LATE_UAZ_AGS30", 
		"UK3CB_CW_SOV_O_LATE_UAZ_MG", 
		"UK3CB_CW_SOV_O_LATE_UAZ_SPG9"
	
	];
	
	
	_trucks = [

		"UK3CB_CW_SOV_O_LATE_Ural", 
		"UK3CB_CW_SOV_O_LATE_Ural_Fuel", 
		"UK3CB_CW_SOV_O_LATE_Ural_Open", 
		"UK3CB_CW_SOV_O_LATE_Ural_Ammo", 
		"UK3CB_CW_SOV_O_LATE_Ural_Empty", 
		"UK3CB_CW_SOV_O_LATE_Ural_Recovery", 
		"UK3CB_CW_SOV_O_LATE_Ural_Repair", 
		"UK3CB_CW_SOV_O_LATE_Kraz255_Fuel", 
		"UK3CB_CW_SOV_O_LATE_Kraz255_PMP", 
		"UK3CB_CW_SOV_O_LATE_Kraz255_Open", 
		"UK3CB_CW_SOV_O_LATE_Kraz255_Flatbed", 
		"UK3CB_CW_SOV_O_LATE_Kraz255_BMKT", 
		"UK3CB_CW_SOV_O_LATE_Gaz66_Open_Flatbed", 
		"UK3CB_CW_SOV_O_LATE_Gaz66_Covered_Flatbed", 
		"UK3CB_CW_SOV_O_LATE_Gaz66_Repair", 
		"UK3CB_CW_SOV_O_LATE_Gaz66_Open", 
		"UK3CB_CW_SOV_O_LATE_Gaz66_Med", 
		"UK3CB_CW_SOV_O_LATE_Gaz66_Covered", 
		"UK3CB_CW_SOV_O_LATE_Gaz66_Ammo"
		
	];
	
	
	_apcs = [

		"UK3CB_CW_SOV_O_LATE_BMD1", 
		"UK3CB_CW_SOV_O_LATE_BMP2K", 
		"UK3CB_CW_SOV_O_LATE_BRM1K", 
		"UK3CB_CW_SOV_O_LATE_BTR60", 
		"UK3CB_CW_SOV_O_LATE_BTR70", 
		"UK3CB_CW_SOV_O_LATE_BTR80a"
			
	];
	
	
	_AAs = [
		
		"UK3CB_CW_SOV_O_LATE_2S6M_Tunguska", 
		"UK3CB_CW_SOV_O_LATE_MTLB_ZU23", 
		"UK3CB_CW_SOV_O_LATE_ZsuTank"

	];
	
	
	_tanks = [
		
		"UK3CB_CW_SOV_O_LATE_T55", 
		"UK3CB_CW_SOV_O_LATE_T72BE", 
		"UK3CB_CW_SOV_O_LATE_T80U"
	
	];
	
	
	_artys = [
		
		"UK3CB_CW_SOV_O_LATE_2S1", 
		"UK3CB_CW_SOV_O_LATE_2S3"

	];
		
		
	_transportHelis = [
		
		"UK3CB_CW_SOV_O_LATE_Mi8", 
		"UK3CB_CW_SOV_O_LATE_Mi8AMT"

	];
		
		
	_attackHelis = [
		
		"UK3CB_CW_SOV_O_LATE_Mi_24P", 
		"UK3CB_CW_SOV_O_LATE_Mi_24V", 
		"UK3CB_CW_SOV_O_LATE_Mi8AMTSh"
		
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
		
		"UK3CB_CW_SOV_O_Late_DSHKM", 
		"UK3CB_CW_SOV_O_Late_DSHkM_Mini_TriPod", 
		"UK3CB_CW_SOV_O_Late_NSV"
		
	];
	
	
	_staticAA = [
		
		"UK3CB_CW_SOV_O_Late_Igla_AA_pod", 
		"UK3CB_CW_SOV_O_Late_ZU23"
		
	];
		
		
	_staticAT = [
		
		"UK3CB_CW_SOV_O_Late_Metis", 
		"UK3CB_CW_SOV_O_Late_SPG9"
	
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
