	
	_unit = _this select 0;

	_unit setVariable ['optre_suit_active', false];
	_unit setVariable ["optre_disable_suit", true];

	//Reapplies Activate Suit action to newly controlled unit.
	
		optre_suit_activate_action = _unit addAction ["Activate Suit", {
			(_this select 0) params ["_target"];
			if (missionnamespace getvariable "OPTRE_MJOLNIR_HUD_ACTIVE_INTRO") then {
					call optre_suit_fnc_hud_start;
				};
				[_this] call optre_suit_fnc_suit_activation
			}, [], 6, false, true,"","(alive _originalTarget) && (vest player in optre_powered_suits) && !(player getVariable 'optre_suit_active') && (missionnamespace getVariable 'OPTRE_MJOLNIR_SHOW_ACTIVATE')"
		];
		optre_suit_deactivate_action = player addAction ["Deactivate Suit", {
			(_this select 0) params ["_target"];
			_target setVariable ["optre_disable_suit", true];
			playSound "Simulation_Fatal";
		}, [], 6, false, true,"","(alive _originalTarget) && (vest player in optre_powered_suits) && (player getVariable 'optre_suit_active') && !(player getVariable 'optre_disable_suit') && (missionnamespace getVariable 'OPTRE_MJOLNIR_SHOW_ACTIVATE') && (missionnamespace getVariable 'OPTRE_MJOLNIR_SHOW_DEACTIVATE')"
		];