
	if !(hasInterface) exitWith {};

	// Get Player Items
	
		_backpack = backpack player;
		_headgear = headgear player;
		_goggles = goggles player;
		_uniform = uniform player;
		_vest = vest player;
		_primaryAttachments = primaryWeaponItems player;
		_secondaryAttachments = secondaryWeaponItems player;
		_assignedItems = assignedItems player;
		_backpackItems = backpackItems player;
		_vestItems = vestItems player;
		_uniformItems = uniformItems player;
		_magazines = magazines player;
		_primaryWeapon = primaryWeapon player;
		_secondaryWeapon = secondaryWeapon player;
		_handgunWeapon = handgunWeapon player;
		
	
	// Pack Array Of player Items
	
		_playerItems = [_backpack, _headgear, _goggles, _uniform, _vest, _primaryAttachments, _secondaryAttachments, _assignedItems, _backpackItems, _vestItems, _uniformItems, _magazines, _primaryWeapon, _secondaryWeapon, _handgunWeapon];
		
	
	[[_playerItems, side player], {
		
		_playerItems = _this select 0;
		_playerSide = _this select 1;
		
		_backpack = _playerItems select 0;
		_headgear = _playerItems select 1;
		_goggles = _playerItems select 2;
		_uniform = _playerItems select 3;
		_vest = _playerItems select 4;
		_primaryAttachments = _playerItems select 5;
		_secondaryAttachments = _playerItems select 6;
		_assignedItems = _playerItems select 7;
		_backpackItems = _playerItems select 8;
		_vestItems = _playerItems select 9;
		_uniformItems = _playerItems select 10;
		_magazines = _playerItems select 11;
		_primaryWeapon = _playerItems select 12;
		_secondaryWeapon = _playerItems select 13;
		_handgunWeapon = _playerItems select 14;
			
		
		// Update Arrays
		
			_backpacksToAdd = [];
			_itemsToAdd = [];
			_magazinesToAdd = [];
			_weaponsToAdd = [];
			
			_backpacksToAdd pushBack _backpack;	
			_itemsToAdd pushBack _headgear;	
			_itemsToAdd pushBack _goggles;	
			_itemsToAdd pushBack _uniform;		
			_itemsToAdd pushBack _vest;		
			{_itemsToAdd pushBack _x} forEach _primaryAttachments;	
			{_itemsToAdd pushBack _x} forEach _secondaryAttachments;
			{_itemsToAdd pushBack _x} forEach _assignedItems;
			{_itemsToAdd pushBack _x} forEach _backpackItems;	
			{_itemsToAdd pushBack _x} forEach _vestItems;	
			{_itemsToAdd pushBack _x} forEach _uniformItems;
			{_magazinesToAdd pushBack _x} forEach _magazines;
			_weaponsToAdd pushBack _primaryWeapon;
			_weaponsToAdd pushBack _secondaryWeapon;
			_weaponsToAdd pushBack _handgunWeapon;
		
		
		// Add To Arsenal
		
			if (_playerSide == EAST) then {
			
				[_backpacksToAdd, _itemsToAdd, _magazinesToAdd, _weaponsToAdd] call BEW_FNC_AddToArsenal_EAST;
				
			}else{
			
				[_backpacksToAdd, _itemsToAdd, _magazinesToAdd, _weaponsToAdd] call BEW_FNC_AddToArsenal;
			
			};


	}] remoteExec ["BIS_FNC_Call", 2];
			