
waitUntil {!(isNil "BEW_v_allArsenalCrates")};

	_obj 		= 	param [0];
	_faction	= 	param [1, "BLU"];

	// Define Item Restrictions List
	
		_itemRestrictionsList = call compile format ["
		
			_itemRestrictionsList = %1_ItemRestrictionList;
			
			_itemRestrictionsList
		
		", _faction];


	// Remove Previous Arsenal
	
		_obj removeAction (_obj getVariable ['bis_fnc_arsenal_action',-1]);
		_obj setVariable ['bis_fnc_arsenal_action',nil];


	// Add Basic Items
		
		// Select Basic Item List
			
			private _basicItemLists = [];
			
			BEW_v_basicItemList = switch (true) do {

				case (BEW_V_Vietnam) 	:	{call BEW_FNC_VN_Basic_ItemList};
				
				case (BEW_V_ColdWar) 	:	{call BEW_FNC_ColdWar_Basic_ItemList};
				
				case (BEW_V_WW2) 		:	{call BEW_FNC_WW2_Basic_ItemList};
				
				case (BEW_V_OPTRE) 		:	{call BEW_FNC_OPTRE_Basic_ItemList};
				
				default {call BEW_FNC_basic_itemList};
			
			};
			
			_basicItemLists = _basicItemLists + [BEW_v_basicItemList];
			
			
		// Add Weapon Item Lists
				
				if !(BEW_v_BF4Mode) then {
				
					_basicItemLists = _basicItemLists + [call BEW_FNC_SMA_Basic_ItemList];
					_basicItemLists = _basicItemLists + [call BEW_FNC_Tier1_Basic_ItemList];
					_basicItemLists = _basicItemLists + [call BEW_FNC_NIArms_Basic_ItemList];
				
				};
		
		
			{
			
				_basicItemList = _x;
		
				for "_i" from 0 to ((count _basicItemList) - 1) do {
					
					private _list = _basicItemList select _i;
					
					// Filter By Class

						_list = [_list, _itemRestrictionsList] call BEW_FNC_filterGearByClass;
					
					switch (_i) do {
						
						case 4	:	{[_obj, _list] call BIS_fnc_addVirtualBackpackCargo};
						case 8	:	{[_obj, _list] call BIS_fnc_addVirtualMagazineCargo};
					
						default {[_obj, _list] call BIS_fnc_addVirtualItemCargo};
					
					};
				
				};
			
			} forEach _basicItemLists;
	
	
	// Set Arsenal Text And Conditions
			
		[player] call BEW_FNC_setArsenalTextAndConditions;
			
		
	// Add Weapons By Level
	
		[] call BEW_FNC_addWeaponsByLevel;
		
		
	// Add Items
	
		[] call BEW_FNC_addItems;
		
		
	// Add Captured Items
	
		[] call BEW_FNC_addCapturedGear;
		
