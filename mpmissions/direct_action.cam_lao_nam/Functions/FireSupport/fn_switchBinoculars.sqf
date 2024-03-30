
	if (count weapons player > 0) then 

	{ 

		private['_type', '_muzzles']; 

		// Define All Weapons

			_allWeapons = weapons player;


		// Find Binoculars

			_binoculars = _allWeapons select {_x isKindOf ["Binocular", configFile >> "CfgWeapons"]};
			
		if (count _binoculars < 1) exitWith {};
			
			_type = _binoculars select 0;

		// check for multiple muzzles (eg: GL) 
		_muzzles = getArray(configFile >> "cfgWeapons" >> _type >> "muzzles"); 

		if (count _muzzles > 1) then { 
		
			player selectWeapon (_muzzles select 0); 
		
		}else{ 
		
			player selectWeapon _type; 
		
		}; 

		while {(alive player) and !(cameraView == 'Gunner')} do {
			
			player switchCamera "GUNNER";
			sleep 1;
		
		};
	
	};