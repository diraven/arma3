	
	
	_container = param [0];
	_minToAdd = param [1, 10];
	_maxToAdd = param [2, 20];
	_addMagazines = param [3, TRUE];
	
	
	// Clear Container Cargo
	
		clearMagazineCargoGlobal _container;
		clearWeaponCargoGlobal _container;
		clearBackpackCargoGlobal _container;
		clearItemCargoGlobal _container;
		

	// Define All Weapons And Items
	
		_allWeapons = [] call BEW_FNC_getAllFactionWeapons;
			_allWeapons = _allWeapons select {(isClass(configfile >> "CfgWeapons" >> _x))};
		
		_allItems = [] call BEW_FNC_getAllFactionItems;
			_allItems = _allItems select {(isClass(configfile >> "CfgWeapons" >> _x)) or (isClass(configfile >> "CfgVehicles" >> _x))};

	
	// Define Number Of Weapons And Items To Add
	
		_numberOfWeaponsToAdd =  random [_minToAdd, (_minToAdd + _maxToAdd) / 2, _maxToAdd];
		_numberOfItemsToAdd =  random [_minToAdd, (_minToAdd + _maxToAdd) / 2, _maxToAdd];
		_numberOfAttachmentsToAdd =  random [_minToAdd, (_minToAdd + _maxToAdd) / 2, _maxToAdd];
		
	// Select Random Weapons	
	
		private _weaponsTypesToAdd = [];

		for "_i" from 1 to _numberOfWeaponsToAdd do {

			_weaponsTypesToAdd pushBackUnique (selectRandom _allWeapons);

		};


	// Add Random Weapons
	
		{

			_weaponType = _x;
			_magazineType = (getArray (configFile / "CfgWeapons" / _weaponType / "magazines")) select 0;

			_container addWeaponCargoGlobal [_weaponType, 1];
			
			if ((_addMagazines) and !(isNil "_magazineType")) then {
			
				_container addMagazineCargoGlobal [_magazineType, random 3];
			
			};

		} forEach _weaponsTypesToAdd;
		
		
	// Add Attachments 
	
		private _allAttachments = [];
	
		{	
		
			_weaponType = _x;
		
			_compatibleAttachments = compatibleItems _weaponType;
			
			_allAttachments append _compatibleAttachments;
		
		} forEach _weaponsTypesToAdd;
		
		for "_i" from 1 to _numberOfAttachmentsToAdd do {
		
			_selectedItem = selectRandom _allAttachments;
		
			_container addItemCargoGlobal [_selectedItem, 1];
			
		};
		
		
	// Select Random Items	
	
		private _itemTypesToAdd = [];

		for "_i" from 1 to _numberOfItemsToAdd do {

			_itemTypesToAdd pushBackUnique (selectRandom _allItems);

		};


	// Add Random Items
	
		{

			_itemType = _x;
			
			if (_itemType iskindOf "bag_base") then {
			
				_container addBackpackCargoGlobal [_itemType, 1]
			
			}else{
			
				_container addItemCargoGlobal [_itemType, 1]
			
			};

		} forEach _itemTypesToAdd;
		
		
		
