	
	_obj 		= 	param [0, player];
	_faction	= 	param [1, "BLU"];
	
	
	// Define Weapon Restrictions List

		_weaponRestrictionsList = call compile format ["
		
			_weaponRestrictionsList = %1_weaponRestrictionList;
			
			_weaponRestrictionsList
		
		", _faction];	
	
	
	// Define Item Restrictions List
	
		_itemRestrictionsList = call compile format ["
		
			_itemRestrictionsList = %1_ItemRestrictionList;
			
			_itemRestrictionsList
		
		", _faction];
		
		
	_backpacksToAdd = switch (side player) do {
		
		case EAST	:	{BEW_v_backpacksToAdd_EAST}; 
		default {BEW_v_backpacksToAdd};
	
	};
	
	_itemsToAdd = switch (side player) do {
		
		case EAST	:	{BEW_v_itemsToAdd_EAST}; 
		default {BEW_v_itemsToAdd};
	
	};
	
	_magazinesToAdd = switch (side player) do {
		
		case EAST	:	{BEW_v_magazinesToAdd_EAST}; 
		default {BEW_v_magazinesToAdd};
	
	};
	
	_weaponsToAdd = switch (side player) do {
		
		case EAST	:	{BEW_v_weaponsToAdd_EAST}; 
		default {BEW_v_weaponsToAdd};
	
	};
	
	
	// Backpacks
		
		_list = [_backpacksToAdd, _itemRestrictionsList] call BEW_FNC_filterGearByClass;
		
		[_obj, _list] call BIS_fnc_addVirtualBackpackCargo;
	
	
	// Items
	
		_list = [_itemsToAdd, _itemRestrictionsList] call BEW_FNC_filterGearByClass;
		
		[_obj, _list] call BIS_fnc_addVirtualItemCargo;
	
	
	// Magazines
	
		_list = [_magazinesToAdd, _itemRestrictionsList] call BEW_FNC_filterGearByClass;
		
		[_obj, _list] call BIS_fnc_addVirtualMagazineCargo;
	
	
	// Weapons
	
		_list = [_weaponsToAdd, _weaponRestrictionsList] call BEW_FNC_filterGearByClass;

		[_obj, _list] call BIS_fnc_addVirtualWeaponCargo;
		
		
	// Set Arsenal Text And Conditions
			
		[_obj] call BEW_FNC_setArsenalTextAndConditions;