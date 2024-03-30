	private ["_unit", "_parachutetype"];

	_unit = _this select 0;
	_joinGroupArray = param [1, [FALSE]];
		_joinGroup = _joinGroupArray select 0;


	// Set Loadout
	
		_unit setVariable['Saved_Loadout',getUnitLoadout _unit];
	
	
	// Remove Backpack
	
		removeBackpack _unit;
	
	
	// Define Parachute Type
	
		_parachutetype = 'B_Parachute';
		

	// Add Parachute
	
		_unit addBackpack _parachutetype;
	
	
	// Disable Damage
	
		_unit allowDamage false;
	
	
		sleep 6;
	
	
	// Allow Damage
	
		_unit allowDamage true;
	
	
	// Wait Until Touching Ground
	
		waitUntil {(isTouchingGround _unit) and (vehicle _unit == _unit)};
	
	
		sleep 3;


	// Recall Loadout
	
		_unit setUnitLoadout(_unit getVariable['Saved_Loadout',[]]);
		
	
	// Join Group
	
		if (_joinGroup) then {
			
			_group = _joinGroupArray select 1;
			
			[_unit] joinSilent _group;
			
			sleep 5;
			
			[_unit, {
			
				_unit = _this;
			
				_unit enableFatigue false;
				_unit enableStamina false;
				[_unit] call AIS_System_fnc_loadAIS;
				
			}] remoteExec ["BIS_FNC_Call", _unit];
		
		};
