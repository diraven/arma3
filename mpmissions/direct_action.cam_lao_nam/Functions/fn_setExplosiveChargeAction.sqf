	
	private ["_chargeType", "_chargeTypeRemote", "_actionText"];
	
	_chargeType			= param [0, "SatchelCharge_F"];
	_chargeTypeRemote 	= param [1, "SatchelCharge_Remote_Mag"];
	_delay				= param [2, 30];


	// Translate Satchel Type
	
		if (BEW_v_Vietnam) then {
		
			_chargeTypeRemote = "vn_mine_satchel_remote_02_mag";
		
		};
		
		if (BEW_v_WW2) then {
		
			_chargeTypeRemote = "LIB_US_TNT_4pound_mag";
		
		};

	
	// Action Text
	
		if !(BEW_v_WW2) then {
		
			_actionText = "<t color='#FFFF00'>SET SATCHEL CHARGE";
		
		}else{
		
			_actionText = "<t color='#FFFF00'>SET TNT CHARGE";
		
		};


	// Create Place Action
	
		[
                player,																// Object the action is attached to
                _actionText,							// Title of the action
                "\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\destroy_ca.paa",			// Idle icon shown on screen
                "\a3\ui_f_oldman\data\IGUI\Cfg\holdactions\destroy_ca.paa",			// Progress icon shown on screen
                "(alive cursorObject) and (player distance2D getPos cursorObject < 5) and (cursorObject getVariable 'canPlaceExplosives') and (('SatchelCharge_Remote_Mag' in (magazines player)) or ('vn_mine_satchel_remote_02_mag' in (magazines player)) or ('LIB_US_TNT_4pound_mag' in (magazines player)))",							// Condition for the action to be shown
                "(alive cursorObject) and (player distance2D getPos cursorObject < 5) and (cursorObject getVariable 'canPlaceExplosives') and (('SatchelCharge_Remote_Mag' in (magazines player)) or ('vn_mine_satchel_remote_02_mag' in (magazines player)) or ('LIB_US_TNT_4pound_mag' in (magazines player)))",							// Condition for the action to progress
                {},																	// Code executed when action starts
                {},																	// Code executed on every progress tick
                {
                    
					_targetObject = cursorObject;
					_chargeType = (_this select 3) select 0;
					_chargeTypeRemote = (_this select 3) select 1;
					_delay = (_this select 3) select 2;
			
					params ["_target", "_caller", "_actionId", "_arguments"];
					
					player playActionNow 'PutDown';
					playSound 'click';
					player removeMagazine _chargeTypeRemote;
					
					[[_targetObject, _chargeType, _delay], {
					
						_targetObject = _this select 0;
						_chargeType = _this select 1;
						_delay = _this select 2;
						
						_targetObject allowDamage true;
						_targetObject setVariable ["canPlaceExplosives", FALSE, TRUE];
					
						_charge = createMine [_chargeType, getPos _targetObject, [], 0];						
						_charge setVehiclePosition [getPos _targetObject, [], 0, "NONE"];

						_message = format ["Explosive charge set. %1 seconds until detonation.", _delay];
						[HQ_WEST , _message] remoteExec ["sideChat", 0];
						
						sleep _delay;

						_charge setDamage 1;
						_targetObject setDamage 1;
										
					}] remoteexec ["bis_fnc_call", 2];
		
                },																	// Code executed on completion
                {},																	// Code executed on interrupted
                [_chargeType, _chargeTypeRemote, _delay],								// Arguments passed to the scripts as _this select 3
                3,																	// Action duration [s]
                99,																	// Priority
                false,																// Remove on completion
                false																// Show in unconscious state
				
        ] call BIS_fnc_holdActionAdd;
		
		
		
	// Action Text
	
		if !(BEW_v_WW2) then {
		
			_actionText = "<t color='#FF0000'>CAN'T PLACE SATCHEL CHARGE: NONE IN INVENTORY";
		
		}else{
		
			_actionText = "<t color='#FF0000'>CAN'T PLACE TNT CHARGE: NONE IN INVENTORY";
		
		};
		
	
	// Create Warning Action
	
		[
               player,																// Object the action is attached to
                _actionText,	// Title of the action
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",	// Idle icon shown on screen
                "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",	// Progress icon shown on screen
                "(player distance2D getPos cursorObject < 5) and (cursorObject getVariable 'canPlaceExplosives') and !(('SatchelCharge_Remote_Mag' in (magazines player)) or ('vn_mine_satchel_remote_02_mag' in (magazines player)) or ('LIB_US_TNT_4pound_mag' in (magazines player)))",							// Condition for the action to be shown
                "(player distance2D getPos cursorObject < 5) and (cursorObject getVariable 'canPlaceExplosives') and !(('SatchelCharge_Remote_Mag' in (magazines player)) or ('vn_mine_satchel_remote_02_mag' in (magazines player)) or ('LIB_US_TNT_4pound_mag' in (magazines player)))",							// Condition for the action to progress
                {},																	// Code executed when action starts
                {},																	// Code executed on every progress tick
                {
                    
					if !(BEW_v_WW2) then {
					
						hintc "You need a Satchel Charge to use this action.";
					
					}else{
					
						hintc "You need a TNT charge to use this action.";
					
					};
		
                },																	// Code executed on completion
                {},																	// Code executed on interrupted
                [_chargeType, _delay],								// Arguments passed to the scripts as _this select 3
                3,																	// Action duration [s]
                99,																	// Priority
                false,																// Remove on completion
                false																// Show in unconscious state
				
        ] call BIS_fnc_holdActionAdd;