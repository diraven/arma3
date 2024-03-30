	
	//hint "Add To Arsenal East";
	
	_backpacks = param [0];
	_items = param [1];
	_magazines = param [2];
	_weapons = param [3];
	
		{BEW_v_backpacksToAdd_EAST pushBackUnique _x} forEach _backpacks;
		{BEW_v_itemsToAdd_EAST pushBackUnique _x} forEach _items;
		{BEW_v_magazinesToAdd_EAST pushBackUnique _x} forEach _magazines;
		{BEW_v_weaponsToAdd_EAST pushBackUnique _x} forEach _weapons;
	
	
		// Broadcast Variables
			
			publicVariable "BEW_v_backpacksToAdd_EAST";
			publicVariable "BEW_v_itemsToAdd_EAST";
			publicVariable "BEW_v_magazinesToAdd_EAST";
			publicVariable "BEW_v_weaponsToAdd_EAST";	
	
	// Update Database
	
	
		if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
						 
			["write", ["Arsenal", "Backpacks East", BEW_v_backpacksToAdd_EAST]] call BEW_v_dataBase; 
		
		};
		
		if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
						 
			["write", ["Arsenal", "Items East", BEW_v_itemsToAdd_EAST]] call BEW_v_dataBase; 
		
		};
		
		if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
						 
			["write", ["Arsenal", "Magazines East", BEW_v_magazinesToAdd_EAST]] call BEW_v_dataBase; 
		
		};
		
		if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
						 
			["write", ["Arsenal", "Weapons East", BEW_v_weaponsToAdd_EAST]] call BEW_v_dataBase; 
		
		};
	
	
	// Update All Player Arsenals Currently In Game
		
		[{
		
			[] call BEW_FNC_addCapturedGear;
			
		}] remoteExec ["BIS_FNC_Call", 0];