	
	
	_unit = param [0, player];
	
	_inventorySaved = [_unit, [localNamespace, "inventory_var"]] call BIS_fnc_loadInventory;

	if (isNil "_inventorySaved") then {
			
		if (!(isNil "BEW_v_saveGameEntry") and BEW_v_persistentLoadout) then {
		
			_unit setUnitLoadout (BEW_v_saveGameEntry select 4);
		
		}else{
		
		// Set Default Loadout And Save
		
			_translationList = switch (side player) do {
			
				case WEST : {[[BLU_Map_TransList, BLU_New_TransList]]};
				case EAST : {[[BLU_Map_TransList, OPF_1_New_TransList]]};
				default {[[BLU_Map_TransList, BLU_New_TransList]]};
			
			};
			
			[_unit, nil, true, _translationList] spawn BEW_FNC_switchLoadout;
			
		};
				
	};