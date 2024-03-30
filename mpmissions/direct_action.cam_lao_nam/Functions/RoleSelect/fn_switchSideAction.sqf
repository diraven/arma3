	if !(BEW_v_PvpEnabled) exitWith {};
	
	_role = param [0, "B_Soldier_F"];
	
	_oppositeSide = switch (side player) do {
				
		case WEST : {EAST};
		case EAST : {WEST};
		default {WEST};
	
	};
	
	private _factionName = switch (_oppositeSide) do {

		case WEST : {BLU_FactionName};
		case EAST : {OPF_1_FactionName};
		default {BLU_FactionName}; 

	};
	
	if (typeName _factionName == "ARRAY") then {
	
		_factionName = _factionName select 0;
	
	};
	
	

	_actionColor = "<t color='#ffc0cb'>";
	_actionText = format ["- Switch Side to %1", _factionName];
	_actionText = _actionColor + _actionText;

	
	_conditions = "
	
		(player getVariable 'RoleSelectMenu') and 

		(isMultiplayer) and

		(count (BEW_v_allArsenalCrates select {_x distance2d player < 6}) > 0) and 

		(cursorObject in BEW_v_allArsenalCrates) and 

		(vehicle player == player) and 
		
		(BEW_v_PvpEnabled)
	
	";
	
		[	
			player,																
			_actionText,														
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	
			_conditions,																
			_conditions,															
			{},																	
			{},																	
			{	

				_passThru = (_this select 3);
				_role = _passThru select 0;
				_oppositeSide = _passThru select 1;
				
				
				[_role, TRUE, TRUE, _oppositeSide] call BEW_FNC_switchRole;
					
			},																	
			{},																	
			[_role, _oppositeSide],																	
			0.5,																
			5.5,																	
			true,																
			false																
		] call BIS_fnc_holdActionAdd;	