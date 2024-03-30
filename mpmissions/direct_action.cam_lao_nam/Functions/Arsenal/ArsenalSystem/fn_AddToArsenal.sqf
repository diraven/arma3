	
	//hint "Add To Arsenal West";
	
	_backpacks = param [0];
	_items = param [1];
	_magazines = param [2];
	_weapons = param [3];
	
		{BEW_v_backpacksToAdd pushBackUnique _x} forEach _backpacks;
		{BEW_v_itemsToAdd pushBackUnique _x} forEach _items;
		{BEW_v_magazinesToAdd pushBackUnique _x} forEach _magazines;
		{BEW_v_weaponsToAdd pushBackUnique _x} forEach _weapons;
	
	
		// Broadcast Variables
			
			publicVariable "BEW_v_backpacksToAdd";
			publicVariable "BEW_v_itemsToAdd";
			publicVariable "BEW_v_magazinesToAdd";
			publicVariable "BEW_v_weaponsToAdd";	
	
	// Update Database
	
	
		if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
						 
			["write", ["Arsenal", "Backpacks", BEW_v_backpacksToAdd]] call BEW_v_dataBase; 
		
		};
		
		if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
						 
			["write", ["Arsenal", "Items", BEW_v_itemsToAdd]] call BEW_v_dataBase; 
		
		};
		
		if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
						 
			["write", ["Arsenal", "Magazines", BEW_v_magazinesToAdd]] call BEW_v_dataBase; 
		
		};
		
		if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
						 
			["write", ["Arsenal", "Weapons", BEW_v_weaponsToAdd]] call BEW_v_dataBase; 
		
		};
	
	
	// Update All Player Arsenals Currently In Game
		
		[{
		
			[] call BEW_FNC_addCapturedGear;
			
		}] remoteExec ["BIS_FNC_Call", 0];