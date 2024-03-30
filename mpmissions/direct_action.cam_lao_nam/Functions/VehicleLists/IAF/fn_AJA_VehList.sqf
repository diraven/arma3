	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [


	];
	
	
	_carsUnarmed = [
		
		"LOP_CDF_UAZ1", 
		"LOP_CDF_UAZ_Open1"

	];
		
		
	_carsArmed = [
		
		"LOP_CDF_UAZ_AGS1", 
		"LOP_CDF_UAZ_DshKM1", 
		"LOP_CDF_UAZ_SPG1"

	];
		
		
	_trucks = [
		
		"LOP_CDF_Ural_open1", 
		"LOP_CDF_Ural1"

	];
		
		
	_apcs = [
		
		"iri_M113", 
		"iri_Btr60", 
		"iri_BMP2", 
		"iri_BMP1"

	];
		
		
	_AAs = [
		
		"IRI_ZSU234"

	];
		
		
	_tanks = [
		
		"LOP_IRAN_T72BA"

	];
	
	
	_artys = [

		"LOP_IRAN_2S1"
		
	];
		
		
	_transportHelis = [
		
		"iri_sepah_Mi8MT_Cargo1", 
		"Bell412", 
		"IRI_b206", 
		"IRI_EC635_Unarmed"

	];
		
		
	_attackHelis = [
		
		"AH1W_2"

	];	
		
		
	_capPlanes = [
		
		"iri_mig29sm", 
		"IRI_F14D"

	];
		
		
	_casPlanes = [
		
		"iri_su25_fragfoot", 
		"iri_F5E_TigerII", 
		"IRI_F4E_s"

	];


	_ships = [


	];
	
	
	_staticGun = [
		
		"LOP_IRAN_Static_AGS17", 
		"LOP_IRAN_Static_DSHKM", 
		"LOP_IRAN_Static_M2", 
		"LOP_IRAN_Static_M2_MiniTripod", 
		"LOP_IRAN_Static_Mk19_TriPod"
	
	];
	
	
	_staticAA = [
		
		"LOP_IRAN_ZU23", 
		"LOP_ChDKZ_Igla_AA_pod1"
	
	];
	
	
	_staticAT = [
	
		"LOP_IRAN_Static_AT4", 
		"LOP_IRAN_Static_SPG9"
		
	];
	
	
	_staticMortar = [
	
		"LOP_IRAN_Static_D30"
		
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
