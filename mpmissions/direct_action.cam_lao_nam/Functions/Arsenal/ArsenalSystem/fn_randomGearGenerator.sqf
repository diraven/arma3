
_unit = param [0, player];
_factionType = param [1, "BLU"];


// Define Weapon List

	_weaponList = call compile format ["

		_weaponList = %1_WeaponList;
			
		_weaponList

	", _factionType];
	
	
	private _allWeapons = [];
	
	private _levelsToCount = (count _weaponList - 1);
	
	if (missionlevel - 1 < _levelsToCount) then {
	
		_levelsToCount = missionlevel - 1;
	
	};

	for "_i" from 0 to _levelsToCount do {

		_allWeapons append (_weaponList select _i);
		
	};
	
	// Add Captured Gear From Arsenal
		
		if (_factionType == "BLU") then {
		
			_allWeapons append (BEW_v_weaponsToAdd select {!(_x == "")});
			
		};
	
	
	// Primary Weapons

		_primaryWeapons = _allWeapons select {_x isKindOf ["Rifle", configFile >> "CfgWeapons"]};

	// Handgun Weapons
		
		_handgunWeapons = _allWeapons select {_x isKindOf ["Pistol", configFile >> "CfgWeapons"]};

	// Launchers
		
		_launcherWeapons = _allWeapons select {_x isKindOf ["Launcher", configFile >> "CfgWeapons"]};
		
		
// Define Item List

	_itemList = call compile format ["

		_itemList = %1_ItemList;
			
		_itemList

	", _factionType];



// Remove All Items

	removeAllPrimaryWeaponItems _unit;
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
	
	// Remove Magazines

		{_unit removeMagazineGlobal _x} forEach magazines _unit;
	
	
// Headgear

	_headgear = (_itemList select 0);
	_unit addHeadgear selectRandom _headgear;
	
	
// Goggles

	_goggles = (_itemList select 1);
	_unit addGoggles selectRandom _goggles;


// Uniform

	_uniforms = (_itemList select 2);
	_unit forceAddUniform selectRandom _uniforms;

// Vest

	_vests = (_itemList select 3);
	_unit addVest selectRandom _vests;
	
	
// Backpack

	_backpacks = (_itemList select 4);
	_unit addBackpack selectRandom _backpacks;


// NVG

	_NVGs = (_itemList select 4);
	_unit linkItem selectRandom _NVGs;
	
	
// Weapon Attachments

	_attachments = (_itemList select 6);
	
	
// Items

	// Medkits
	
		for "_i" from 1 to 3 do {
		
			_unit addItemToUniform "FirstAidKit";
		
		};
	
	// Grenades
	
		_unit addItemToVest "SmokeShell";
		_unit addItemToVest "SmokeShellGreen";
		_unit addItemToVest "SmokeShellRed";
		for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
	
	// Other Items
	
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "ItemRadio";
		_unit linkItem "ItemGPS";
		_unit addWeapon "Binocular";
		
	// Add Primary Weapon
		
			
		// Give Weapon To Player
			
			[_unit, selectRandom _primaryWeapons, 7] call BIS_fnc_addWeapon;			
		
		
	// Add Primary Attachments
	
		private _compatibleAttachments = compatibleItems primaryWeapon _unit;
		_compatibleAttachments = _compatibleAttachments arrayIntersect _attachments;
		
		if (_factionType == "BLU") then {
		
			_compatibleAttachments append ((compatibleItems primaryWeapon _unit) arrayIntersect BEW_v_itemsToAdd);
		
		};
		
		
		if (count _compatibleAttachments > 0) then {
		
			for "_i" from 1 to 5 do {

				_attachment = _compatibleAttachments call BIS_FNC_SelectRandom;
				 
				_unit addPrimaryWeaponItem _attachment;

			};
		
		};
	
	// Add Handgun
				
		[_unit, selectRandom _handgunWeapons, 2] call BIS_fnc_addWeapon;
		
		
	// Add Secondary Weapons
		
		[_unit, selectRandom _launcherWeapons, 3] call BIS_fnc_addWeapon;
		
	
	

