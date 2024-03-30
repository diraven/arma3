private ["_obj", "_saveLoadout", "_debug", "_oldType", "_newType", "_loadoutScript", "_loadoutScriptHandle", "_translationList", "_faction"];

	_obj = param [0];
	_oldType = param [1, typeOf _obj];
	_saveLoadout = param [2, false];
	_translationList = param [3, all_TransLists];	
	_debug = false;
	
	_newType = [_oldType, _translationList] call BEW_FNC_TranslateClassNames;		


// Get Type Faction
	
	if (BEW_v_BF4Mode) then {
	
		_faction = "BF4";
	
	}else{
	
		_faction = getText (configfile >> "CfgVehicles" >> _newType >> "faction");
		
	};


// Debug Message

	if (_debug) then {
	
		systemchat format ["DEBUG: Old Type %1 - New Type %2", _oldType, _newType];
		
	};
	

// Name Loadout Script

	_loadoutScript = format ["loadouts\%2\%3\%1_loadout.sqf",  _newType, _faction, BEW_v_mapCamo];
	
	
	if !(fileExists _loadoutScript) then {
	
		_loadoutScript = format ["loadouts\%2\%1_loadout.sqf",  _newType, _faction];
	
	};
	
	
// Check Loadout Exists

if (fileExists _loadoutScript) then {
	
	// Exec Loadout Script

		_loadoutScriptHandle = [_obj] execVM _loadoutScript;
		
		if (isplayer _obj) then {

		waitUntil {scriptDone _loadoutScriptHandle};
		
		
		// Translate Primary Weapon
		
			// Get Old Weapon Info
			
				_oldPrimaryWeaponType = primaryWeapon player;
				_oldPrimaryWeaponMagazines = primaryWeaponMagazine player;
			
			
			// Translate Weapon Type
			
				_newPrimaryWeaponType = [_oldPrimaryWeaponType] call BEW_FNC_TranslateItems;
			
			
			// Check If Weapon Type Has Been Translated
			
				if !(_newPrimaryWeaponType == _oldPrimaryWeaponType) then {
						
					// Get Old Weapon Items
						
						_weaponItems = primaryWeaponItems player;

					// Remove Old Primary Weapon
					
						player removeWeapon _oldPrimaryWeaponType;	
					
					
					// Remove Old Magazines
					
						{
						
							player removeMagazines _x;
						
						} forEach _oldPrimaryWeaponMagazines;
					
					
					// Add New Weapons
					
						[player, _newPrimaryWeaponType, 20] call BIS_fnc_addWeapon;
					
					
					// Add Primary Weapon Items
					
					{ 

						player addPrimaryWeaponItem _x;

					} forEach _weaponItems;
					
				};
		

		[_obj] call BEW_FNC_SaveLoadoutForRespawn;
	
		};

}else{

	_obj setUnitLoadout (configFile >> "CfgVehicles" >> _newType);
	
	if (isplayer _obj) then {
	
		[_obj] call BEW_FNC_SaveLoadoutForRespawn;
	
	};
		
};

