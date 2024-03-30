
	_veh = param [0];
	
	_allTurrets = [[-1]];
	_allTurrets append allTurrets _veh;

	// Remove Existing Weapons

		private _pylonWeapons = [];

		{ 

			_pylonWeapon = getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon");

			if !(_pylonWeapon == "") then {

				_veh removeWeaponGlobal _pylonWeapon;

				{

					_veh removeWeaponTurret [_pylonWeapon, _x];

				} forEach _allTurrets; 

			};

			_pylonWeapons pushBackUnique _pylonWeapon; 

		} forEach getPylonMagazines _veh;

					