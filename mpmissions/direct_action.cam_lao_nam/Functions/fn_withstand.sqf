	
	BEW_v_WithStandConditions = {
		
		private _return = false;
		
		if (vehicle player == player) then {
		
			if (player getVariable ['canWithstand', false]) then {
			
				if (player getVariable ['AIS_unconscious', false]) then {
					
					_return = true;
					
				};
				
			};
				
		};
	
		_return
	
	};
	
	[
	
		player,																// Object the action is attached to
		"<t color='#00FF00'> Withstand (Uses 3 FAK)",									// Title of the action
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_reviveMedic_ca.paa",			// Idle icon shown on screen
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_reviveMedic_ca.paa",			// Progress icon shown on screen
		"call BEW_v_WithStandConditions",																	// Condition for the action to be shown
		"call BEW_v_WithStandConditions",																	// Condition for the action to progress
		{},																	// Code executed when action starts
		{},																	// Code executed on every progress tick
		{

			_injured = player;

			if (alive _injured) then { 

				_injured setVariable ["ais_unconscious", false, true]; 

				// healing if enabled 
				
					if (AIS_REVIVE_HEAL) then { 
					
						_injured setDamage 0; 
						_injured setVariable ["ais_fireDamage", 0]; 
					 
					} else { 
					
						// make sure the unit can walk after revive 
					
							if ((_injured getHitIndex 10) > 0.49) then { 
							
								[{(_this select 0) setHitIndex [10, 0.49]}, [_injured]] call AIS_Core_fnc_onNextFrame; 
							
							}; 
					
					}; 

				// Restore FAKs
				
					_injured call AIS_System_fnc_restoreFaks;

				if (isPlayer _injured) then {
				
					showHUD true;
				
				if (AIS_TOGGLE_RADIO) then {
				
					[true] call AIS_Effects_fnc_toggleRadio;
				
				}; 
				
				} else {
				
					_injured stop false; 
					{_injured enableAI _x; nil} count ["MOVE","TARGET","AUTOTARGET","ANIM","AUTOCOMBAT"]; 
				
				}; 

				[_injured, false] call AIS_System_fnc_unconcsiousRemote;
				_injured setCaptive false;

				_injured removeAllEventHandlers "GetOutMan";

			};
			
			
			// Remove First Aid Kits
			
				for "_i" from 1 to 3 do {
				
					player removeItem "FirstAidKit";
				
			};
					
			
			// Can Withstand Variable
			
				player setVariable ["canWithStand", FALSE];
				
				
			// Message
			
				hintSilent "3 First Aid Kits Removed";
	
		},																	// Code executed on completion
		{},																	// Code executed on interrupted
		[],																	// Arguments passed to the scripts as _this select 3
		10,																	// Action duration [s]
		5,																	// Priority
		false,																// Remove on completion
		false																// Show in unconscious state
					
	] call BIS_fnc_holdActionAdd;