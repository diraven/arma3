	hint "Dumping CFG";
	
	private [

		"_rifles"

	];
	
	_authors = param [0, []];
		if (typeName _authors == "STRING") then {_authors = [_authors]};
	
	_dlcs = param [1, []];
		if (typeName _dlcs == "STRING") then {_dlcs = [_dlcs]};
		
	_noAttachments = param [2, true];

	
	// Define All Weapons

		_allWeapons = [];
		_baseWeapons = [];
		_allItemsArray = [];


	// Rifles
			
		// Get All Rifles
		
			_rifles = ["CFGWeapons", "Rifle"] call BEW_FNC_SortCfgByType;


		// Filter By Author
		
			if (count _authors > 0) then {
			
				_rifles = _rifles select {(getText (configfile >> "CfgWeapons" >> _x >> "author") in _authors)};
				
			};
				
			
		// Filter By DLC
		
			if (count _dlcs > 0) then {
		
				_rifles = _rifles select {(getText (configfile >> "CfgWeapons" >> _x >> "dlc") in _dlcs)};

			};


		// Get Base Weapons
			
			if (_noAttachments) then {
			
				{

					_baseWeapon = getText (configfile >> "CfgWeapons" >> _x >> "baseWeapon");
				
					if !(_baseWeapon == "") then {

						_rifles = _rifles - [_baseWeapon];

					};				

				} forEach _rifles;
			
			};


		// Filter By Scope

			_rifles = _rifles select {	
			
				(getNumber (configfile >> "CfgWeapons" >> _x >> "scope")) == 2
			
			};
		
		
		// Add To Array
						
			_allItemsArray = _allItemsArray + [[_rifles, "RIFLES"]];

	
		
	// Handguns

		// Get All Handguns
		
			_handguns = ["CFGWeapons", "Pistol"] call BEW_FNC_SortCfgByType;


		// Filter By Author
		
			if (count _authors > 0) then {
			
				_handguns = _handguns select {(getText (configfile >> "CfgWeapons" >> _x >> "author") in _authors)};
				
			};
				
			
		// Filter By DLC
		
			if (count _dlcs > 0) then {
		
				_handguns = _handguns select {(getText (configfile >> "CfgWeapons" >> _x >> "dlc") in _dlcs)};

			};


		// Get Base Weapons
			
			if (_noAttachments) then {
			
				{

					_baseWeapon = getText (configfile >> "CfgWeapons" >> _x >> "baseWeapon");
				
					if !(_baseWeapon == "") then {

						_handguns = _handguns - [_baseWeapon];

					};				

				} forEach _handguns;
			
			};
		
		
		// Filter By Scope

			_handguns = _handguns select {	
			
				(getNumber (configfile >> "CfgWeapons" >> _x >> "scope")) == 2
			
			};
			
		
		// Add To Array
						
			_allItemsArray = _allItemsArray + [[_handguns, "HANDGUNS"]];


	// Launchers

		// Get All Launchers
		
			_launchers = ["CFGWeapons", "Launcher"] call BEW_FNC_SortCfgByType;


		// Filter By Author
		
			if (count _authors > 0) then {
			
				_launchers = _launchers select {(getText (configfile >> "CfgWeapons" >> _x >> "author") in _authors)};
				
			};
				
			
		// Filter By DLC
		
			if (count _dlcs > 0) then {
		
				_launchers = _launchers select {(getText (configfile >> "CfgWeapons" >> _x >> "dlc") in _dlcs)};

			};
		
		
		// Filter By Scope

			_launchers = _launchers select {	
			
				(getNumber (configfile >> "CfgWeapons" >> _x >> "scope")) == 2
			
			};
			
		
		// Add To Array
						
			_allItemsArray = _allItemsArray + [[_launchers, "LAUNCHERS"]];



	// WEAPON ATTACHMENTS
	
		_attachments = [];

		_muzzles = ("getnumber (_x >> 'itemInfo' >> 'type') isEqualTo 101 && getNumber (_x>> 'scope') >1" configClasses (configfile >> "CfgWeapons")) apply {configName _x};
			_attachments append _muzzles;
		
		_optics = ("getnumber (_x >> 'itemInfo' >> 'type') isEqualTo 201 && getNumber (_x>> 'scope') >1" configClasses (configfile >> "CfgWeapons")) apply {configName _x};
			_attachments append _optics;
		
		_flashlights = ("getnumber (_x >> 'itemInfo' >> 'type') isEqualTo 301 && getNumber (_x>> 'scope') >1" configClasses (configfile >> "CfgWeapons")) apply {configName _x};
			_attachments append _flashlights;
		
		_bipods = ("getnumber (_x >> 'itemInfo' >> 'type') isEqualTo 302 && getNumber (_x>> 'scope') >1" configClasses (configfile >> "CfgWeapons")) apply {configName _x};
			_attachments append _bipods;
		
		
		// Filter By Author
			
				if (count _authors > 0) then {
				
					_attachments = _attachments select {(getText (configfile >> "CfgWeapons" >> _x >> "author") in _authors)};
					
				};
					
				
			// Filter By DLC
			
				if (count _dlcs > 0) then {
			
					_attachments = _attachments select {(getText (configfile >> "CfgWeapons" >> _x >> "dlc") in _dlcs)};
	
				};	
		

		// Add To Array
							
			_allItemsArray = _allItemsArray + [[_attachments, "ATTACHMENTS"]];
		
		
		
	// Uniforms
	
		_uniforms = ("getnumber (_x >> 'itemInfo' >> 'type') isEqualTo 801 and getNumber (_x>> 'scope') >1" configClasses (configfile >> "CfgWeapons")) apply {configName _x};
		
		
		// Filter By Author
			
				if (count _authors > 0) then {
				
					_uniforms = _uniforms select {(getText (configfile >> "CfgWeapons" >> _x >> "author") in _authors)};
					
				};
					
				
			// Filter By DLC
			
				if (count _dlcs > 0) then {
			
					_uniforms = _uniforms select {(getText (configfile >> "CfgWeapons" >> _x >> "dlc") in _dlcs)};
	
				};	
		

		// Add To Array
							
			_allItemsArray = _allItemsArray + [[_uniforms, "UNIFORMS"]];
			
	
	
	// VESTS
	
		_vests = ("getnumber (_x >> 'itemInfo' >> 'type') isEqualTo 701 and getNumber (_x>> 'scope') >1" configClasses (configfile >> "CfgWeapons")) apply {configName _x};
		
		
		// Filter By Author
			
				if (count _authors > 0) then {
				
					_vests = _vests select {(getText (configfile >> "CfgWeapons" >> _x >> "author") in _authors)};
					
				};
					
				
			// Filter By DLC
			
				if (count _dlcs > 0) then {
			
					_vests = _vests select {(getText (configfile >> "CfgWeapons" >> _x >> "dlc") in _dlcs)};
	
				};	
		

		// Add To Array
							
			_allItemsArray = _allItemsArray + [[_vests, "VESTS"]];
			
			
			
	// HEADGEAR
	
		_headgear = ("getnumber (_x >> 'itemInfo' >> 'type') isEqualTo 605 and getNumber (_x>> 'scope') >1" configClasses (configfile >> "CfgWeapons")) apply {configName _x};
		
		
		// Filter By Author
			
				if (count _authors > 0) then {
				
					_headgear = _headgear select {(getText (configfile >> "CfgWeapons" >> _x >> "author") in _authors)};
					
				};
					
				
			// Filter By DLC
			
				if (count _dlcs > 0) then {
			
					_headgear = _headgear select {(getText (configfile >> "CfgWeapons" >> _x >> "dlc") in _dlcs)};
	
				};	
		

		// Add To Array
							
			_allItemsArray = _allItemsArray + [[_headgear, "HEADGEAR"]];
			
	
	
	// BINOCULARS
	
		_binos = ["CFGWeapons","Binocular"] call BEW_FNC_SortCfgByType;
		_nvg = ["CFGWeapons", "NVGoggles"] call BEW_FNC_SortCfgByType;
		_binos = _binos select {!(_x in _nvg)};
		
		// Filter By Author
			
				if (count _authors > 0) then {
				
					_binos = _binos select {(getText (configfile >> "CfgWeapons" >> _x >> "author") in _authors)};
					
				};
					
				
			// Filter By DLC
			
				if (count _dlcs > 0) then {
			
					_binos = _binos select {(getText (configfile >> "CfgWeapons" >> _x >> "dlc") in _dlcs)};
	
				};	
		

		// Add To Array
							
			_allItemsArray = _allItemsArray + [[_binos, "BINOCULARS"]];
			
			
	// NV Goggles
	
		_nvg = ["CFGWeapons", "NVGoggles"] call BEW_FNC_SortCfgByType;
		
		
		// Filter By Author
			
				if (count _authors > 0) then {
				
					_nvg = _nvg select {(getText (configfile >> "CfgWeapons" >> _x >> "author") in _authors)};
					
				};
					
				
			// Filter By DLC
			
				if (count _dlcs > 0) then {
			
					_nvg = _nvg select {(getText (configfile >> "CfgWeapons" >> _x >> "dlc") in _dlcs)};
	
				};	
		

		// Add To Array
							
			_allItemsArray = _allItemsArray + [[_nvg, "NVG"]];
					
			
			
	// GOGGLES
	
		_goggles = ("true" configClasses (configfile >> "CfgGlasses")) apply {configName _x};
		
		
		// Filter By Author
			
				if (count _authors > 0) then {
				
					_goggles = _goggles select {(getText (configfile >> "CfgGlasses" >> _x >> "author") in _authors)};
					
				};
					
				
			// Filter By DLC
			
				if (count _dlcs > 0) then {
			
					_goggles = _goggles select {(getText (configfile >> "CfgGlasses" >> _x >> "dlc") in _dlcs)};
	
				};	
		

		// Add To Array
							
			_allItemsArray = _allItemsArray + [[_goggles, "GOGGLES"]];
			

	// Misc Items	
			
		// Get All Items
		
			_items = ["CFGWeapons", "ItemCore"] call BEW_FNC_SortCfgByType;
			_items = _items select {!(_x in _uniforms)};
			_items = _items select {!(_x in _vests)};
			_items = _items select {!(_x in _headgear)};
			_items = _items select {!(_x in _binos)};
			_items = _items select {!(_x in _goggles)};
			_items = _items select {!(_x in _nvg)};
			_items = _items select {!(_x in _attachments)};

		// Filter By Author
		
			if (count _authors > 0) then {
			
				_items = _items select {(getText (configfile >> "CfgWeapons" >> _x >> "author") in _authors)};
				
			};
				
			
		// Filter By DLC
		
			if (count _dlcs > 0) then {
		
				_items = _items select {(getText (configfile >> "CfgWeapons" >> _x >> "dlc") in _dlcs)};

			};		

		// Filter By Scope

			_items = _items select {	
			
				(getNumber (configfile >> "CfgWeapons" >> _x >> "scope")) == 2
			
			};

			
		// Add To Array
						
			_allItemsArray = _allItemsArray + [[_items, "MISC ITEMS"]];


	
		
	// Backpacks	

		// Get All Backpacks
		
			_backpacks = ["CFGVehicles", "Bag_Base"] call BEW_FNC_SortCfgByType;	


		// Filter By Author
		
			if (count _authors > 0) then {
			
				_backpacks = _backpacks select {(getText (configfile >> "CFGVehicles" >> _x >> "author") in _authors)};
				
			};
			
		// Filter By DLC
		
			if (count _dlcs > 0) then {
		
				_backpacks = _backpacks select {(getText (configfile >> "CFGVehicles" >> _x >> "dlc") in _dlcs)};

			};	
			
			
		// Add To Array
						
			_allItemsArray = _allItemsArray + [[_backpacks, "BACKPACKS"]];


	
	// Copy To Clipboard
		
		private ["_lastInArray", "_string"];
		
		_string = ""; 
		_br = toString [13,10]; 
		
		{
		
			_stringArray = _x select 0;
			_typeString = _x select 1;
			
			if (count _stringArray > 0) then {
			
				_lastInArray = [_stringArray] call BEW_FNC_LastInArray;
				
			};
			
			// Add Linebreaks 

				_string = _string + "// " + _typeString + _br + _br;
				
				{
					if (_x == _lastInArray) then {
					
						_string = _string + "'" + _x + "'"
					
					}else{
					
						_string = _string + "'" + _x + "'," + _br
						
					};
				
				} forEach _stringArray;  

				_string = _string + _br + _br + _br;
			
		} forEach _allItemsArray;
		 
		copyToClipboard _string;
		
		
	hint "Items Have Been Copied To Clipboard";
		
	_allWeapons