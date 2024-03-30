
	_type = _this select 0;
	
		_type = toUpper _type;
	
	
	_bikes = [


	];
	
	
	_carsUnarmed = [
		
		"UK3CB_CW_US_B_LATE_M1025_Unarmed", 
		"UK3CB_CW_US_B_LATE_M151_Jeep_Closed", 
		"UK3CB_CW_US_B_LATE_M151_Jeep_Open", 
		"UK3CB_CW_US_B_LATE_M998_2DR", 
		"UK3CB_CW_US_B_LATE_M998_4DR"

	];
	
	
	_carsArmed = [
		
		"UK3CB_CW_US_B_LATE_M1025_MK19", 
		"UK3CB_CW_US_B_LATE_M1025_M2", 
		"UK3CB_CW_US_B_LATE_M1025_TOW", 
		"UK3CB_CW_US_B_LATE_M151_Jeep_HMG", 
		"UK3CB_CW_US_B_LATE_M151_Jeep_TOW"

	];
	
	
	_trucks = [
		
		"UK3CB_CW_US_B_LATE_M939", 
		"UK3CB_CW_US_B_LATE_M939_Guntruck", 
		"UK3CB_CW_US_B_LATE_M939_Open", 
		"UK3CB_CW_US_B_LATE_M939_Reammo", 
		"UK3CB_CW_US_B_LATE_M939_Recovery", 
		"UK3CB_CW_US_B_LATE_M939_Fuel", 
		"UK3CB_CW_US_B_LATE_M939_Repair", 
		"UK3CB_CW_US_B_LATE_M977A4_Reammo", 
		"UK3CB_CW_US_B_LATE_M978A4_Fuel", 
		"UK3CB_CW_US_B_LATE_M977A4_Recovery", 
		"UK3CB_CW_US_B_LATE_M977A4_Repair"
		
	];
	
	
	_apcs = [

		"UK3CB_CW_US_B_LATE_AAV", 
		"UK3CB_CW_US_B_LATE_LAV25", 
		"UK3CB_CW_US_B_LATE_M113_M2", 
		"UK3CB_CW_US_B_LATE_M113_M240", 
		"UK3CB_CW_US_B_LATE_M113_MK19"
		
	];
	
	
	_AAs = [
	

	];
	
	
	_tanks = [
		
		"UK3CB_CW_US_B_LATE_M1A1", 
		"UK3CB_CW_US_B_LATE_M60a3"

	];
	
	
	_artys = [
		
		"UK3CB_CW_US_B_LATE_M109"

	];
		
		
	_transportHelis = [

		"UK3CB_CW_US_B_LATE_CH47", 
		"UK3CB_CW_US_B_LATE_UH1H", 
		"UK3CB_CW_US_B_LATE_UH60M2"

	];
		
		
	_attackHelis = [
		
		"UK3CB_CW_US_B_LATE_AH64_CS"
		
	];
		
		
	_capPlanes = [
		
		

	];
	
	
	_casPlanes = [
	

	];
	
	
	_ships = [
		

	];
	
	
	_staticGun = [
	
		
	];
	
	
	_staticAA = [
	
		
	];
		
		
	_staticAT = [
			
	
	];
		
		
	_staticMortar = [
			
	
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
