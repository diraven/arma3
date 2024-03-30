	
	_unit = param [0, player];
	_suppressorModifier = param [1, 0.5];
	_weaponType = currentWeapon _unit;
	_weaponSoundName = getText (configFile >> "CfgWeapons" >> _weaponType >> "namesound");
	
	private _soundLevelModifier = switch (toUpper _weaponSoundName) do {
	
		case (toUpper "rifle")		:	{1};
		case (toUpper "Pistol")		:	{0.75};
		case (toUpper "sidearm")		:	{0.75};
		case (toUpper "Mgun")		:	{1.5};
		case (toUpper "atlauncher")	:	{5};
		case (toUpper "aalauncher")	:	{5};
		default {1};
	
	};
	
	// Check If Unit Has Suppressor
		
		_hasSuppressor = [_unit] call BEW_FNC_hasSuppressor;
		
		if (_hasSuppressor) then {
		
			_soundLevelModifier = _soundLevelModifier * _suppressorModifier;
			
		};
	
	_soundLevelModifier