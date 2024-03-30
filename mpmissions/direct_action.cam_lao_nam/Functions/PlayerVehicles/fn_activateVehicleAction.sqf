	
	// Activate Vehicle
		
		_activateVehicleConditions = "

			(isSimpleObject cursorObject) and
			(cursorObject getVariable 'CanBeActivated') and
			(cursorObject distance2D player < 10) and
			(missionlevel >= (cursorObject getVariable 'MissionLevel')) and
			!(cursorObject getVariable ['selectActivated', FALSE]) and 		
			(vehicle player == player) and

			(

				(


					((typeOf cursorObject isKindOf 'Helicopter') and (typeOf player == 'B_Helipilot_F')) or
					((typeOf cursorObject isKindOf 'Plane') and (typeOf player == 'B_Pilot_F')) or
					((typeOf cursorObject isKindOf 'tank') and (typeOf player == 'B_crew_F')) or
					((typeOf cursorObject isKindOf 'Wheeled_APC_F') and (typeOf player == 'B_crew_F')) or

					(

						!(typeOf cursorObject isKindOf 'Helicopter') and 
						!(typeOf cursorObject isKindOf 'Plane') and 
						!(typeOf cursorObject isKindOf 'tank') and 
						!(typeOf cursorObject isKindOf 'Wheeled_APC_F')

					)

				) or
					
					(BEW_v_BF4Mode) or
					
					!(BEW_v_enableVehicleRestrictions) or
					
					(serverCommandAvailable '#kick') or
				
					!(isMultiplayer)
				
			)

		";


		[
			player,																// Object the action is attached to
			"<t color='#99ccff'>OPEN VEHICLE SPAWN MENU",						// Title of the action
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Idle icon shown on screen
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Progress icon shown on screen
			_activateVehicleConditions,							// Condition for the action to be shown
			_activateVehicleConditions,							// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{

				_veh = cursorObject;

				// Put Down Action

					player playActionNow 'PutDown';
					playSound 'click';


				// Spawn Vehicle
				
					if ([player, side player] call BEW_FNC_inUnfinishedObjective) then {
					
						hint "CANNOT ACTIVATE IN HOSTILE AREA";
						
					}else{
					
						_veh setVariable ["selectActivated", TRUE, TRUE];
						[_veh] call BEW_FNC_switchVehicleTypeAction;	
						
					};

			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			0.5,																	// Action duration [s]
			99,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
		] call BIS_fnc_holdActionAdd;



	// Mission Level Warning
	
		_missionLevelConditions = "

				(isSimpleObject cursorObject) and
				(cursorObject getVariable 'CanBeActivated') and
				(cursorObject distance2D player < 10) and
				(missionlevel < (cursorObject getVariable 'MissionLevel')) and 		
				(vehicle player == player) and

				(

					(


						((typeOf cursorObject isKindOf 'Helicopter') and (typeOf player == 'B_Helipilot_F')) or
						((typeOf cursorObject isKindOf 'Plane') and (typeOf player == 'B_Pilot_F')) or
						((typeOf cursorObject isKindOf 'tank') and (typeOf player == 'B_crew_F')) or
						((typeOf cursorObject isKindOf 'Wheeled_APC_F') and (typeOf player == 'B_crew_F')) or

						(

							!(typeOf cursorObject isKindOf 'Helicopter') and 
							!(typeOf cursorObject isKindOf 'Plane') and 
							!(typeOf cursorObject isKindOf 'tank') and 
							!(typeOf cursorObject isKindOf 'Wheeled_APC_F')

						)

					) or
					
					(BEW_v_BF4Mode) or
					
					!(BEW_v_enableVehicleRestrictions) or
					
					(serverCommandAvailable '#kick') or
				
					!(isMultiplayer)

				)

		";

		player addAction [

			"<t color='#FF0000'>Complete More Missions To Unlock This Vehicle",{

				"Vehicle Locked" hintC [

				"Complete more missions to unlock this vehicle."

				];

		},[], 99, true, true, "", _missionLevelConditions];


	
	// Wrong Role Warning

		_wrongRoleConditions = "

				(isSimpleObject cursorObject) and
				(cursorObject getVariable 'CanBeActivated') and
				(cursorObject distance2D player < 10) and 		
				(vehicle player == player) and 
				
				!(

					(


						((typeOf cursorObject isKindOf 'Helicopter') and (typeOf player == 'B_Helipilot_F')) or
						((typeOf cursorObject isKindOf 'Plane') and (typeOf player == 'B_Pilot_F')) or
						((typeOf cursorObject isKindOf 'tank') and (typeOf player == 'B_crew_F')) or
						((typeOf cursorObject isKindOf 'Wheeled_APC_F') and (typeOf player == 'B_crew_F')) or

						(

							!(typeOf cursorObject isKindOf 'Helicopter') and 
							!(typeOf cursorObject isKindOf 'Plane') and 
							!(typeOf cursorObject isKindOf 'tank') and 
							!(typeOf cursorObject isKindOf 'Wheeled_APC_F')

						)

					) or
					
					(BEW_v_BF4Mode) or
					
					!(BEW_v_enableVehicleRestrictions) or
					
					(serverCommandAvailable '#kick') or
				
					!(isMultiplayer)
					
				)

			";
			
			
			player addAction [

				"<t color='#FF0000'>You Are Not Qualified To Operate This Vehicle",{

					"Incorrect Role" hintC [

						"You are not qualified to operate this vehicle. Switch roles at the arsenal crate."

					];

			},[], 99, true, true, "", _wrongRoleConditions];
