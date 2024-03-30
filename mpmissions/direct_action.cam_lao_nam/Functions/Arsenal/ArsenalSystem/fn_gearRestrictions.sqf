	if (!(isMultiplayer) or !(BEW_v_enableGearRestrictions)) exitWith {};
	
	_unit = param [0, player];
	_faction = param [1, "BLU"];
	
	private _restrictedItems = [];
	
	
	// Define Weapon Restriction Lists
	
		_weaponRestrictionsList = call compile format ["
		
			_weaponRestrictionsList = %1_weaponRestrictionList;
			
			_weaponRestrictionsList
		
		", _faction];
		
		_allClasses = _weaponRestrictionsList select 0;
		_allRestrictionLists = _weaponRestrictionsList select 1;

		for "_i" from 0 to ((count _allClasses) - 1) do {
			
			_classes 	= _allClasses select _i;
			_list 		= _allRestrictionLists select _i;
			
			if !(typeOf player in _classes) then {
			
				_restrictedItems append _list;
			
			};
		
		};
	
	
	// Define Item Restriction Lists
	
		_itemRestrictionsList = call compile format ["
		
			_itemRestrictionsList = %1_itemRestrictionList;
			
			_itemRestrictionsList
		
		", _faction];
		
		_allClasses = _itemRestrictionsList select 0;
		_allRestrictionLists = _itemRestrictionsList select 1;

		for "_i" from 0 to ((count _allClasses) - 1) do {
			
			_classes 	= _allClasses select _i;
			_list 		= _allRestrictionLists select _i;
			
			if !(typeOf player in _classes) then {
			
				_restrictedItems append _list;
			
			};
		
		};
		
		
	while {alive player} do {
	
		_primaryWeapon = primaryWeapon _unit;
		_secondaryWeapon = secondaryWeapon _unit;
		_handgunWeapon = handgunWeapon _unit;
		_assignedItems = assignedItems _unit;
		_backpack = backpack _unit;
		_headgear = headgear _unit;
		_vest = vest _unit;
		_uniform = uniform _unit;
		_magazines = magazines _unit;
		_NVGs = hmd _unit;
		

		// Primary Weapons

			if (_primaryWeapon in _restrictedItems) then {
			
				_primaryName = getText(configFile >> "CfgWeapons" >>_primaryWeapon >> "displayName");
				_primaryPicture = getText(configFile >> "CfgWeapons" >>_primaryWeapon >> "picture");
				
				[_unit, _primaryWeapon] spawn BEW_FNC_dropWeapon;
				//_unit removeWeapon _primaryWeapon;
				hint parseText format ["<t size = '1.5' color = '#FF0000'>RESTRICTED ITEM</t><br/><br/><img image='%2' size='5'/><br />Your class is not qualified<br/>to use %1", _primaryName, _primaryPicture];

			};


		// Secondary Weapons

			if (_secondaryWeapon in _restrictedItems) then {
			
				_secondaryName = getText(configFile >> "CfgWeapons" >>_secondaryWeapon >> "displayName");
				_secondaryPicture = getText(configFile >> "CfgWeapons" >>_secondaryWeapon >> "picture");
				
				[_unit, _secondaryWeapon] spawn BEW_FNC_dropWeapon;
				//_unit removeWeapon _secondaryWeapon;
				hint parseText format ["<t size = '1.5' color = '#FF0000'>RESTRICTED ITEM</t><br/><br/><img image='%2' size='5'/><br />Your class is not qualified<br/>to use %1", _secondaryName, _secondaryPicture];

			};


		// Handgun Weapons

			if (_handgunWeapon in _restrictedItems) then {
				
				_handgunName = getText(configFile >> "CfgWeapons" >>_handgunWeapon >> "displayName");
				_handgunPicture = getText(configFile >> "CfgWeapons" >>_handgunWeapon >> "picture");
				
				[_unit, _handgunWeapon] spawn BEW_FNC_dropWeapon;
				//_unit removeWeapon _handgunWeapon;
				hint parseText format ["<t size = '1.5' color = '#FF0000'>RESTRICTED ITEM</t><br/><br/><img image='%2' size='5'/><br />Your class is not qualified<br/>to use %1", _handgunName, _handgunPicture];

			};

		
		// Assigned Items
			
			{
				_restrictedItem = _x;
			
				if (_restrictedItem in _restrictedItems) then {
					
					_unit unassignItem _restrictedItem;
					_unit removeItems _restrictedItem;
					
					_itemName = getText(configFile >> "CfgWeapons" >> _restrictedItem >> "displayName");
					_ItemPicture = getText(configFile >> "CfgWeapons" >> _restrictedItem >> "picture");

					hint parseText format ["<t size = '1.5' color = '#FF0000'>RESTRICTED ITEM</t><br/><br/><img image='%2' size='5'/><br />Your class is not qualified<br/>to use %1", _itemName, _ItemPicture];
	
				};
			
			} forEach _assignedItems;
			
			
		// Backpack

			if (_backpack in _restrictedItems) then {
			
				_restrictedItem = _backpack;
			
				removeBackpack _unit;
				
				_itemName = getText(configFile >> "CfgVehicles" >> _restrictedItem >> "displayName");
				_ItemPicture = getText(configFile >> "CfgVehicles" >> _restrictedItem >> "picture");

				hint parseText format ["<t size = '1.5' color = '#FF0000'>RESTRICTED ITEM</t><br/><br/><img image='%2' size='5'/><br />Your class is not qualified<br/>to use %1", _itemName, _ItemPicture];
	
				
			};
			
			
		// Headgear

			if (_headgear in _restrictedItems) then {
				
				_restrictedItem = _headgear;
				
				removeHeadgear _unit;
				
				_itemName = getText(configFile >> "CfgVehicles" >> _restrictedItem >> "displayName");
				_ItemPicture = getText(configFile >> "CfgVehicles" >> _restrictedItem >> "picture");

				hint parseText format ["<t size = '1.5' color = '#FF0000'>RESTRICTED ITEM</t><br/><br/><img image='%2' size='5'/><br />Your class is not qualified<br/>to use %1", _itemName, _ItemPicture];
			
			};
			
			
		// Vest

			if (_vest in _restrictedItems) then {
				
				_restrictedItem = _vest;
				
				removeVest _unit;
				
				_itemName = getText(configFile >> "CfgVehicles" >> _restrictedItem >> "displayName");
				_ItemPicture = getText(configFile >> "CfgVehicles" >> _restrictedItem >> "picture");

				hint parseText format ["<t size = '1.5' color = '#FF0000'>RESTRICTED ITEM</t><br/><br/><img image='%2' size='5'/><br />Your class is not qualified<br/>to use %1", _itemName, _ItemPicture];
			
			};
			
			
		// Uniform

			if (_uniform in _restrictedItems) then {
				
				_restrictedItem = _uniform;
				
				removeUniform _unit;
				
				_itemName = getText(configFile >> "CfgVehicles" >> _restrictedItem >> "displayName");
				_ItemPicture = getText(configFile >> "CfgVehicles" >> _restrictedItem >> "picture");

				hint parseText format ["<t size = '1.5' color = '#FF0000'>RESTRICTED ITEM</t><br/><br/><img image='%2' size='5'/><br />Your class is not qualified<br/>to use %1", _itemName, _ItemPicture];
			
			};
			
			
		// NVG

			if (_NVGs in _restrictedItems) then {
				
				_restrictedItem = _NVGs;
				
				_unit unlinkItem _NVGs;
				_unit removeWeapon _NVGs;
				
				_itemName = getText(configFile >> "CfgWeapons" >> _restrictedItem >> "displayName");
				_ItemPicture = getText(configFile >> "CfgWeapons" >> _restrictedItem >> "picture");

				hint parseText format ["<t size = '1.5' color = '#FF0000'>RESTRICTED ITEM</t><br/><br/><img image='%2' size='5'/><br />Your class is not qualified<br/>to use %1", _itemName, _ItemPicture];
			
			};
			

		sleep 1;
	  
	};







