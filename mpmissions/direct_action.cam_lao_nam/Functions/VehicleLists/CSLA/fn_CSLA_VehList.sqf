
	
	_type = _this select 0;
	
		_type = toUpper _type;
	
	_bikes = [

		"CSLA_JARA250"

	];
	
	_carsUnarmed = [
		
		"CSLA_AZU", 
		"CSLA_AZU_para"

	];
	
	
	_carsArmed = [

		"CSLA_OT65A"

	];
	
	
	_trucks = [

		"CSLA_V3Sr", 
		"CSLA_V3S", 
		"CSLA_V3So", 
		"CSLA_V3Sf", 
		"CSLA_V3Sa", 
		"CSLA_V3SLizard", 
		"CSLA_F813", 
		"CSLA_F813o"

	];
	
	
	_apcs = [

		"CSLA_BVP1",
		"CSLA_BPzV",
		"CSLA_OT62",
		"CSLA_OT64C"

	];
	
	
	_AAs = [

		"CSLA_PLdvK59V3S"
		
	];
	
	
	_tanks = [

		"CSLA_T72", 
		"CSLA_T72M", 
		"CSLA_T72M1"

	];
	
	
	_artys = [

		"CSLA_ShKH77"

	];
	
	
	
	_transportHelis = [

		"CSLA_Mi17", 
		"CSLA_Mi17mg"

	];
	
	
	_attackHelis = [

		"CSLA_Mi17pylons"
		
	];
	
	
	_capPlanes = [
		
		"UK3CB_CW_SOV_O_LATE_MIG29S"		

	];
	
	
	_casPlanes = [

		"UK3CB_CW_SOV_O_LATE_Su25SM"

	];
	
	
	_ships = [

		"CSLA_lodka"

	];
	
	_staticGun = [
			
		"CSLA_UK59L_Stat", 
		"CSLA_UK59T_Stat"
	
	];
	
	
	_staticAA = [
	
		"CSLA_PLdvK59_Stat"
	
	];
	
	
	_staticAT = [
	
		
		"CSLA_9K113_Stat", 
		"CSLA_T21_Stat"
	
	];
	
	
	_staticMortar = [
	
		"CSLA_M52_Stat"
	
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
