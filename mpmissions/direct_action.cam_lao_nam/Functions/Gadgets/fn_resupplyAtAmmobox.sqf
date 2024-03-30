	
	private ["_obj"];

	_obj = param [0, player];

			[
					_obj,																							// Object the action is attached to
					 "<t color='#FFC0CB'>Resupply At Ammobox",													// Title of the action
					"\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",									// Idle icon shown on screen
					"\a3\ui_f\data\igui\cfg\simpletasks\types\rearm_ca.paa",									// Progress icon shown on screen
					"(_target distance cursorObject < 5) and (cursorObject getVariable ['BEW_v_Ammobox', FALSE]) and (vehicle player == player)",	// Condition for the action to be shown
					"TRUE",																							// Condition for the action to progress
					{player playActionNow 'medicStart';},															// Code executed when action starts
					{},																								// Code executed on every progress tick
					{
						
						hint "Primary Weapon Magazines Added";
						
						_magazineType = (primaryWeaponMagazine player) select 0;

						for "_i" from 1 to 8 do {

							player addItem _magazineType;

						};
					   
					},																			// Code executed on completion
					{player playActionNow 'medicStop';},										// Code executed on interrupted
					[],																			// Arguments passed to the scripts as _this select 3
					3,																			// Action duration [s]
					99,																			// Priority
					false,																		// Remove on completion
					false																		// Show in unconscious state
			] call BIS_fnc_holdActionAdd;