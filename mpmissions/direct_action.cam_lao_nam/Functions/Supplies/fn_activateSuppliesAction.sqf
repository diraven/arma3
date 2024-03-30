	
	// Activate Vehicle
		
		BEW_v_activateSuppliesConditions = {
			
			private _return = false;
			
			if (vehicle player == player) then {
			
				if (isSimpleObject cursorObject) then {
			
					if (cursorObject getVariable ['CanBeActivatedSupplies', FALSE]) then {
			
						if (count (attachedObjects player select {(_x getVariable ['BEW_v_canCarry', false])}) < 1) then {
			
							if (cursorObject distance2D player < 10) then {
								
								_return = true;
								
							};
							
						};
						
					};
					
				};
				
			};
			
			_return
			
		};


		[
			player,																// Object the action is attached to
			"<t color='#00ff00'>ACTIVATE SUPPLIES",								// Title of the action
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Idle icon shown on screen
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Progress icon shown on screen
			"call BEW_v_activateSuppliesConditions",										// Condition for the action to be shown
			"call BEW_v_activateSuppliesConditions",									// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{

				_veh = cursorObject;

				// Put Down Action

					player playActionNow 'PutDown';
					playSound 'click';

				// Select Activated
					
					if ([player] call BEW_FNC_inUnfinishedObjective) then {
					
						hint "CANNOT ACTIVATE IN HOSTILE AREA";
						
					}else{
					
						deleteVehicle _veh;
						
					};

			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			0.5,																// Action duration [s]
			99,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
		] call BIS_fnc_holdActionAdd;
