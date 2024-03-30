
	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [

		"O_Quadbike_01_F"

	];
	
	_carsUnarmed = [
		
		"O_rhsfactionNK_BRDM_2UM",
		"O_rhsfactionNK_UAZ",
		"O_rhsfactionNK_UAZ_Open"

	];
	
	
	_carsArmed = [

		"O_rhsfactionNK_BRDM_2",
		"O_rhsfactionNK_BRDM_2ATGM",
		"O_rhsfactionNK_BRDM2UM_Armed",
		"O_rhsfactionNK_UAZ_AGS_30",
		"O_rhsfactionNK_UAZ_DShKM",
		"O_rhsfactionNK_UAZ_SPG"

	];
	
	
	_trucks = [

		"O_rhsfactionNK_Zil_131_01",
		"O_rhsfactionNK_Zil_131_Flatbed_01",
		"O_rhsfactionNK_Zil_131_Open_01",
		"O_rhsfactionNK_Zil_131_Open_Flatbed_01",
		"O_rhsfactionNK_Ural_4320_Repair",
		"O_rhsfactionNK_Ural_Empty",
		"O_rhsfactionNK_Ural_Open",
		"O_rhsfactionNK_Ural_Refuel",
		"O_rhsfactionNK_Ural_4320_Flatbed",
		"O_rhsfactionNK_Ural",
		"O_rhsfactionNK_GAZ_66_ESB_8IM",
		"O_rhsfactionNK_GAZ_66_AP_2",
		"O_rhsfactionNK_GAZ_66_Repair",
		"O_rhsfactionNK_GAZ_66_R142N",
		"O_rhsfactionNK_GAZ_66_Open_Flatbed",
		"O_rhsfactionNK_GAZ_66_Open",
		"O_rhsfactionNK_GAZ_66_Flatbed",
		"O_rhsfactionNK_GAZ_66_Ammo",
		"O_rhsfactionNK_GAZ_66"

	];
	
	
	_apcs = [
		
		"O_rhsfactionNK_BTR_60PB",
		"O_rhsfactionNK_BTR_80A",
		"O_rhsfactionNK_BMP1"

	];
	
	
	_AAs = [

		"O_rhsfactionNK_ZSU_23_4V",
		"O_rhsfactionNK_Ural_ZU_23",
		"O_rhsfactionNK_GAZ_66_ZU_23"

	];
	
	
	_tanks = [

		"O_rhsfactionNK_T72S"

	];
	
	
	_artys = [

		"O_rhsfactionNK_BM_21"

	];
	
	
	
	_transportHelis = [
		
		"O_rhsfactionNK_Mi_8MT",
		"O_rhsfactionNK_Mi_8MT_Cargo"

	];
	
	
	_attackHelis = [
			
		"O_rhsfactionNK_Mi_25",
		"O_rhsfactionNK_Mi_8MTV_3Heavy",
		"O_rhsfactionNK_Mi_8MTV3"

	];
	
	
	_capPlanes = [
		
		"O_rhsfactionNK_Mig_29SE"

	];
	
	
	_casPlanes = [

		"O_rhsfactionNK_SU_25K_Frogfoot"

	];
	
	
	_ships = [

		"O_Boat_Armed_01_hmg_F"

	];
	
	_staticGun = [
			
		"O_rhsfactionNK_AGS_30",
		"O_rhsfactionNK_DShKM",
		"O_rhsfactionNK_DShKM_Minitripod",
		"O_rhsfactionNK_NSV_6T7"
	
	];
	
	
	_staticAA = [
	
		"O_rhsfactionNK_9K38_Djigit",
		"O_rhsfactionNK_ZU_23"
	
	];
	
	
	_staticAT = [
	
		"O_rhsfactionNK_2A18M_D30A_AT",
		"O_rhsfactionNK_9K115_2Metis",
		"O_rhsfactionNK_Bulsae_3",
		"O_rhsfactionNK_SPG_9"
		
	
	];
	
	
	_staticMortar = [
	
		"O_rhsfactionNK_2A18M_D30A",
		"O_rhsfactionNK_2B14_1Podnos_01"
	
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
