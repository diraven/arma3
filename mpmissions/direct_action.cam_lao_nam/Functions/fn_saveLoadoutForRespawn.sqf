	
	_unit = param [0, player];
	
	[_unit, [localNamespace, "inventory_var"]] call BIS_fnc_saveInventory;
	systemchat "NEW LOADOUT SAVED FOR RESPAWN";		