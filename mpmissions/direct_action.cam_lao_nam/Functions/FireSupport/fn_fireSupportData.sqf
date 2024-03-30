	private [
		
		"_data",
		"_typeText",
		"_allowedClasses",
		"_assistantTypes",
		"_minRadius",
		"_maxRadius",
		"_spread",
		"_barrageCooldown",
		"_roundTypes",
		"_roundCount",
		"_roundInterval",
		"_unlockLevel",
		"_spawnHeight",
		"_dropVelocity",
		"_munitionsCost",
		"_allFireSupportData"
	
	];
	
	_allFireSupportData = [];

	// Smoke Mortars
	
		_typeText			=	'Smoke Mortar';
		_allowedClasses		= 	['B_Soldier_TL_F', 'B_recon_JTAC_F'];
			// if (BEW_v_BF4mode) then {_allowedClasses pushBack "B_soldier_AR_F";};
		_assistantTypes		= 	['B_Soldier_TL_F'];
		_minRadius 			=	20;
		_maxRadius			=	1000;
		_spread				=	50;
		_barrageCooldown	= 	60;
		_roundTypes 		=	['Smoke_120mm_AMOS_White'];
		_roundCount			=	10;
		_roundInterval		=	1;
		_unlockLevel		= 	1;
		_spawnHeight		= 	300;
		_dropVelocity		= 	150;
		_munitionsCost		=	50;
	
		_data = [_typeText, _allowedClasses, _assistantTypes, _minRadius, _maxRadius, _spread, _barrageCooldown, _roundTypes, _roundCount, _roundInterval, _unlockLevel, _spawnHeight, _dropVelocity, _munitionsCost];
		
		_allFireSupportData = _allFireSupportData + [_data];
		

	// Flares
			
			switch (true) do {
			
				case (isClass(configfile >> "CfgAmmo" >> 'vn_rsp30_v_flare_ammo')) : {
				
					_typeText			=	'Flare';
					_allowedClasses		= 	["B_Soldier_TL_F", "B_recon_JTAC_F", "B_soldier_M_F"];
						// if (BEW_v_BF4mode) then {_allowedClasses pushBack "B_soldier_AR_F";};
					_assistantTypes		= 	['B_Soldier_TL_F'];
					_minRadius 			=	20;
					_maxRadius			=	1000;
					_spread				=	250;
					_barrageCooldown	= 	60;
					_roundTypes 		=	['vn_rsp30_v_flare_ammo'];
					_roundCount			=	120;
					_roundInterval		=	5;
					_unlockLevel		= 	1;
					_spawnHeight		= 	150;
					_dropVelocity		= 	1;
					_munitionsCost		=	50;
					
					_data = [_typeText, _allowedClasses, _assistantTypes, _minRadius, _maxRadius, _spread, _barrageCooldown, _roundTypes, _roundCount, _roundInterval, _unlockLevel, _spawnHeight, _dropVelocity, _munitionsCost];
				
				};
	
				case (isClass(configfile >> "CfgAmmo" >> 'rhs_ammo_flare_M314')) : {
				
					_typeText			=	'Flare';
					_allowedClasses		= 	["B_Soldier_TL_F", "B_recon_JTAC_F", "B_soldier_M_F"];
						// if (BEW_v_BF4mode) then {_allowedClasses pushBack "B_soldier_AR_F";};
					_assistantTypes		= 	['B_Soldier_TL_F'];
					_minRadius 			=	20;
					_maxRadius			=	1000;
					_spread				=	250;
					_barrageCooldown	= 	60;
					_roundTypes 		=	["rhs_ammo_flare_M314"];
					_roundCount			=	60;
					_roundInterval		=	10;
					_unlockLevel		= 	1;
					_spawnHeight		= 	450;
					_dropVelocity		= 	1;
					_munitionsCost		=	50;
				
					_data = [_typeText, _allowedClasses, _assistantTypes, _minRadius, _maxRadius, _spread, _barrageCooldown, _roundTypes, _roundCount, _roundInterval, _unlockLevel, _spawnHeight, _dropVelocity, _munitionsCost];
				
				};
				
				case (isClass(configfile >> "CfgAmmo" >> 'LIB_40mm_White')) : {
				
					_typeText			=	'Flare';
					_allowedClasses		= 	["B_Soldier_TL_F", "B_recon_JTAC_F", "B_soldier_M_F"];
						// if (BEW_v_BF4mode) then {_allowedClasses pushBack "B_soldier_AR_F";};
					_assistantTypes		= 	['B_Soldier_TL_F'];
					_minRadius 			=	20;
					_maxRadius			=	1000;
					_spread				=	250;
					_barrageCooldown	= 	60;
					_roundTypes 		=	["LIB_40mm_White"];
					_roundCount			=	120;
					_roundInterval		=	5;
					_unlockLevel		= 	1;
					_spawnHeight		= 	200;
					_dropVelocity		= 	1;
					_munitionsCost		=	50;
				
					_data = [_typeText, _allowedClasses, _assistantTypes, _minRadius, _maxRadius, _spread, _barrageCooldown, _roundTypes, _roundCount, _roundInterval, _unlockLevel, _spawnHeight, _dropVelocity, _munitionsCost];
				
				};
				
				default {
				
					_typeText			=	'Flare';
					_allowedClasses		= 	["B_Soldier_TL_F", "B_recon_JTAC_F", "B_soldier_M_F"];
						// if (BEW_v_BF4mode) then {_allowedClasses pushBack "B_soldier_AR_F";};
					_assistantTypes		= 	['B_Soldier_TL_F'];
					_minRadius 			=	100;
					_maxRadius			=	1000;
					_spread				=	250;
					_barrageCooldown	= 	60;
					_roundTypes 		=	["F_40mm_White"];
					
					if (isClass (configFile >> "CfgPatches" >> "Small_Flares")) then {
						// Brighter Flares mod by ASMallDinosaur loaded - tone things down a bit...
						_roundCount			=	120;
						_roundInterval		=	5;
						_spawnHeight		= 	500;
						_dropVelocity		= 	1;	
					}else{		
						// Vanilla flares - needs more chili...
						_roundCount			=	120;
						_roundInterval		=	5;
						_spawnHeight		= 	250;
						_dropVelocity		= 	8;					
					};
								
					_unlockLevel		= 	1;
					_munitionsCost		=	50;
				
					_data = [_typeText, _allowedClasses, _assistantTypes, _minRadius, _maxRadius, _spread, _barrageCooldown, _roundTypes, _roundCount, _roundInterval, _unlockLevel, _spawnHeight, _dropVelocity, _munitionsCost];
				
				};
			
			};	
		
		_allFireSupportData = _allFireSupportData + [_data];
		
	
	// HE Mortars
	
		_typeText			=	'HE Mortar';
		_allowedClasses		= 	['B_recon_JTAC_F'];
			// if (BEW_v_BF4mode) then {_allowedClasses pushBack "B_soldier_AR_F";};
		_assistantTypes		= 	['B_Soldier_TL_F'];
		_minRadius 			=	100;
		_maxRadius			=	1000;
		_spread				=	30;
		_barrageCooldown	= 	60;
		_roundTypes 		=	['Sh_82mm_AMOS'];
		_roundCount			=	10;
		_roundInterval		=	3;
		_unlockLevel		= 	1;
		_spawnHeight		= 	300;
		_dropVelocity		= 	150;
		_munitionsCost		=	300;
		
		_data = [_typeText, _allowedClasses, _assistantTypes, _minRadius, _maxRadius, _spread, _barrageCooldown, _roundTypes, _roundCount, _roundInterval, _unlockLevel, _spawnHeight, _dropVelocity, _munitionsCost];
		
		_allFireSupportData = _allFireSupportData + [_data];
			
		
	// Heavy Artillery

		_typeText   = 'Heavy Artillery'; 
		_allowedClasses  =  ['B_recon_JTAC_F']; 
			// if (BEW_v_BF4mode) then {_allowedClasses pushBack "B_soldier_AR_F";};
		_assistantTypes  =  ['B_Soldier_TL_F']; 
		_minRadius    = 100; 
		_maxRadius   = 1000; 
		_spread    = 100; 
		_barrageCooldown =  60; 
		_roundTypes   = ["ammo_ShipCannon_120mm_HE"]; 
		_roundCount   = 10; 
		_roundInterval  = 5; 
		_unlockLevel  =  1; 
		_spawnHeight  =  300; 
		_dropVelocity  =  150; 
		_munitionsCost  = 600;

		_data = [_typeText, _allowedClasses, _assistantTypes, _minRadius, _maxRadius, _spread, _barrageCooldown, _roundTypes, _roundCount, _roundInterval, _unlockLevel, _spawnHeight, _dropVelocity, _munitionsCost];
		
		_allFireSupportData = _allFireSupportData + [_data];
		
		
	// Napalm Strike

		_typeText   = 'Napalm Strike';  
		_allowedClasses  =  ['B_recon_JTAC_F'];  
			// if (BEW_v_BF4mode) then {_allowedClasses pushBack "B_soldier_AR_F";};
		_assistantTypes  =  ['B_Soldier_TL_F'];  
		_minRadius    = 100;  
		_maxRadius   = 1000;  
		_spread    = 30;  
		_barrageCooldown =  60;  
		_roundTypes   = ["vn_bomb_750_blu1b_fb_ammo"];  
		_roundCount   = 4;  
		_roundInterval  = 1;  
		_unlockLevel  =  1;  
		_spawnHeight  =  300;  
		_dropVelocity  =  50;  
		_munitionsCost  = 600;

		_data = [_typeText, _allowedClasses, _assistantTypes, _minRadius, _maxRadius, _spread, _barrageCooldown, _roundTypes, _roundCount, _roundInterval, _unlockLevel, _spawnHeight, _dropVelocity, _munitionsCost];
		
		_allFireSupportData = _allFireSupportData + [_data];	
		
		
	// Cruise Missile Strike

		_typeText   = 'Cruise Missile';  
		_allowedClasses  =  ['B_recon_JTAC_F'];  
			// if (BEW_v_BF4mode) then {_allowedClasses pushBack "B_soldier_AR_F";};
		_assistantTypes  =  ['B_Soldier_TL_F'];  
		_minRadius    = 100;  
		_maxRadius   = 1000;  
		_spread    = 1;  
		_barrageCooldown =  60;  
		_roundTypes   = ["ammo_Missile_Cruise_01"];  
		_roundCount   = 1;  
		_roundInterval  = 1;  
		_unlockLevel  =  1;  
		_spawnHeight  =  300;  
		_dropVelocity  =  50;  
		_munitionsCost  = 800;

		_data = [_typeText, _allowedClasses, _assistantTypes, _minRadius, _maxRadius, _spread, _barrageCooldown, _roundTypes, _roundCount, _roundInterval, _unlockLevel, _spawnHeight, _dropVelocity, _munitionsCost];
		
		if !((BEW_v_Vietnam) or (BEW_v_WW2)) then {
		
			_allFireSupportData = _allFireSupportData + [_data];	
		
		};
	
	
	// Carpet Bombing
	
		_typeText			=	'Carpet Bombing';
		_allowedClasses		= 	['B_recon_JTAC_F'];
			// if (BEW_v_BF4mode) then {_allowedClasses pushBack "B_soldier_AR_F";};
		_assistantTypes		= 	['B_Soldier_TL_F'];
		_minRadius 			=	100;
		_maxRadius			=	1000;
		_spread				=	150;
		_barrageCooldown	= 	60;
		_roundTypes 		=	['Bo_Mk82'];
		_roundCount			=	20;
		_roundInterval		=	1;
		_unlockLevel		= 	1;
		_spawnHeight		= 	300;
		_dropVelocity		= 	150;
		_munitionsCost		=	1000;
		
		_data = [_typeText, _allowedClasses, _assistantTypes, _minRadius, _maxRadius, _spread, _barrageCooldown, _roundTypes, _roundCount, _roundInterval, _unlockLevel, _spawnHeight, _dropVelocity, _munitionsCost];
		
		_allFireSupportData = _allFireSupportData + [_data];
	
		
		_allFireSupportData
		
		