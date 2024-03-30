	
	_obj 		= 	param [0, player];
		
	// Define Item Restrictions List
	
		_itemRestrictionsList = call compile format ["
		
			_itemRestrictionsList = %1_ItemRestrictionList;
			
			_itemRestrictionsList
		
		", "BLU"];

	

	_factionTypes = ["BLU", "BLU_ALT", "BLU_SOF", "OPF_1", "OPF_2", "OPF_SOF", "IND_1", "IND_2", "REBEL_1", "REBEL_2"];
	
	
	// Repeat For Every Faction Type
	
		{
		
			_factionType = _x;
			
			
			// Define Item List
			
				_itemList = call compile format ["
				
					_itemList = %1_ItemList;
					
					_itemList
				
				", _factionType];
				
					
			// Repeat For Every Item Category
				
				for "_i" from 0 to ((count _itemList) - 1) do {
						
					[_obj, _factionType, _itemList, _i, _itemRestrictionsList] spawn {
					
						_obj = _this select 0;
						_factionType = _this select 1;
						_itemList = _this select 2;
						_i = _this select 3;
						_itemRestrictionsList = _this select 4;
			
						// Define List
						
							private _list = _itemList select _i;
						
						
						// Filter By Class

							_list = [_list, _itemRestrictionsList] call BEW_FNC_filterGearByClass;
						
						
						// Wait Until Level Reached And Faction Unlocked
							
							if (side player == EAST) then {
							
								waitUntil {sleep 1; (_factionType in BEW_v_UnlockedFactions_EAST)};
								
							}else{
								
								waitUntil {sleep 1; (_factionType in BEW_v_UnlockedFactions)};
								
							};
						
						
						// Add Items To Arsenal
							
							switch (_i) do {
								
								case 4	:	{[_obj, _list] call BIS_fnc_addVirtualBackpackCargo};
								case 8	:	{[_obj, _list] call BIS_fnc_addVirtualMagazineCargo};
							
								default {[_obj, _list] call BIS_fnc_addVirtualItemCargo};
							
							};
						
						// Set Arsenal Text And Conditions
					
							[_obj] call BEW_FNC_setArsenalTextAndConditions;


					};
			
				};
			
		} forEach _factionTypes;
