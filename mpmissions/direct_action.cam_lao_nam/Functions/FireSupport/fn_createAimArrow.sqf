	if (isNil "BEW_v_FireSupportArrow") then {

		BEW_v_FireSupportArrow = objNull;

	};

// Spawn Arrow

	[
			player,																// Object the action is attached to
			"<t color='#FFC0CB'>Request Fire Support",						// Title of the action
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Idle icon shown on screen
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Progress icon shown on screen
			"!(alive BEW_v_FireSupportArrow) and (vehicle player == player)",							// Condition for the action to be shown
			"!(alive BEW_v_FireSupportArrow) and (vehicle player == player)",							// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{

				hint "Use Scroll Menu To Select Fire Support Type And Target";
				
				// Create Arrow
					
					if (alive BEW_v_FireSupportArrow) then {deleteVehicle BEW_v_FireSupportArrow};
					
					BEW_v_FireSupportArrow = "Sign_Arrow_F" createVehicle [0,0,0];
					onEachFrame {
						_ins = lineIntersectsSurfaces [
							AGLToASL positionCameraToWorld [0,0,0],
							AGLToASL positionCameraToWorld [0,0,1000],
							player
						];
						if (!(alive BEW_v_FireSupportArrow)) exitWith {
						
							//hint "no arrow"
						
						};
						if (count _ins == 0) exitWith {BEW_v_FireSupportArrow setPosASL [0,0,0]};
						BEW_v_FireSupportArrow setPosASL (_ins select 0 select 0);
						BEW_v_FireSupportArrow setVectorUp (_ins select 0 select 1);
						//hintSilent str _ins;
					};
					
					
				// Moving Marker
				
					[BEW_v_FireSupportArrow, "", "colorRed", "mil_objective"] spawn BEW_FNC_movingMarker;
				
				
				// Delete Arrow If Player Killed
				
					[] spawn {
					
						waitUntil {!(alive player) or !(alive BEW_v_FireSupportArrow)};
						
						if (alive BEW_v_FireSupportArrow) then {
						
							deleteVehicle BEW_v_FireSupportArrow;
							
						};
					
					};
							

			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			0.5,																	// Action duration [s]
			-11,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
		] call BIS_fnc_holdActionAdd;
		
		
// Remove Arrow

		[
		player,																// Object the action is attached to
		"<t color='#FFC0CB'>Cancel Fire Support",						// Title of the action
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Idle icon shown on screen
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Progress icon shown on screen
		"(alive BEW_v_FireSupportArrow) and (vehicle player == player)",							// Condition for the action to be shown
		"(alive BEW_v_FireSupportArrow) and (vehicle player == player)",							// Condition for the action to progress
		{},																	// Code executed when action starts
		{},																	// Code executed on every progress tick
		{
		
			_passThru = (_this select 3);

			deleteVehicle BEW_v_FireSupportArrow;

		},																	// Code executed on completion
		{},																	// Code executed on interrupted
		[],																	// Arguments passed to the scripts as _this select 3
		0.5,																	// Action duration [s]
		99,																	// Priority
		false,																// Remove on completion
		false																// Show in unconscious state
		] call BIS_fnc_holdActionAdd;
