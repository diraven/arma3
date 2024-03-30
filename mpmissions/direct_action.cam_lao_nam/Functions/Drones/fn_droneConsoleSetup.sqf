	
	if ((BEW_V_ColdWar or BEW_V_Vietnam or BEW_V_WW2) and !(forceVanilla)) exitWith {};

	private ["_consoles"];

	_consoles  = param [0, getMissionLayerEntities "DroneConsole" select 0];

		if (isNil "activeDrones") then {

			activeDrones = []; 
			publicVariable "activeDrones";

		};


		_level1 = [
		
			"B_UGV_01_F"
		
		];
		
		_level2 = [
		
			"B_UAV_02_dynamicLoadout_F"
		
		];
		
		_level3 = [
				
			"B_UGV_01_rcws_F"
		
		];
		
		_level4 = [
		
			"B_UAV_02_CAS_F"
			
		];
		
		_level5 = [
		
			
		
		];
		
		_level6 = [
		
			"B_UAV_05_F"
		
		];
		
		_level7 = [
		
			
		
		];
		
		_level8 = [
		
			"B_T_UAV_03_dynamicLoadout_F"
		
		];



	// Console Disabled Not UAV Operator
		
		{
		
			[_x,
			
			["<t color='#ff0000'>Cannot Spawn Drone: Must Be UAV Operator", 	
			
			{
			
				"Cannot Spawn Drone: Must Be UAV Operator" hintC [	
					
					"You must be the UAV Operator to spawn drones at this console."	
						
				];
			
			}
			
			, [], 98, true, true, "", "
			
				(_this distance _target < 3) and 
				(
				
					(!(typeOf _this == 'B_Soldier_UAV_F') or (!(typeOf _this == 'B_soldier_M_F') and BEW_v_BF4Mode)) and 
					(isMultiplayer)
				
				) and 
				(typeOf _target == 'Land_PCSet_01_screen_F') and 
				(alive _target) and (alive _target) and 
				(!(_target isKindOf 'man') or (count (_target nearEntities [['Man'], 5] select {typeOf _x == 'B_recon_JTAC_F'}) > 0))
			
			" ]
			
			] remoteexec ["addaction", 0, true];
		
		} forEach _consoles;
		
		
		
	// Console Disabled Drone Active
		
		{
		
			[_x,
			
			["<t color='#ff0000'>Cannot Spawn Drone: Drone Already Active", 	
			
			{
			
				"Cannot Spawn Drone: Drone Already Active" hintC [	
					
					"You cannot spawn another drone while you already have an active drone (not including backpack drones)."	
						
				];
			
			}
			
			, [], 98, true, true, "", "
			
				(vehicle _this == _this) and (_this distance _target < 3) and 
				(
				
					(typeOf _this == 'B_Soldier_UAV_F') or
					((typeOf _this == 'B_soldier_M_F') and BEW_v_BF4Mode) or 				
					!(isMultiplayer)
				
				) and 
				(count (activeDrones select {alive _x}) > 0) and (alive _target) and 
				(
				
					!(_target isKindOf 'man') or 
					(count (_target nearEntities [['Man'], 5] select {typeOf _x == 'B_recon_JTAC_F'}) > 0)
					
				)
			
			" ]
			
			] remoteexec ["addaction", 0, true];
		
		} forEach _consoles;
		
		
		
	// Console Despawn Active Drones
		
		{
		
			[
			
			  _x,																								// Object the action is attached to
			 "<t color='#ff0000'>SELF DESTRUCT CURRENT DRONE",													// Title of the action
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",								// Idle icon shown on screen
				"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsdown_ca.paa",								// Progress icon shown on screen
				"
				
					(vehicle _this == _this) and 
					(_this distance _target < 3) and 
					(
					
						(typeOf _this == 'B_Soldier_UAV_F') or 
						((typeOf _this == 'B_soldier_M_F') and BEW_v_BF4Mode) or 
						!(isMultiplayer)
					
					) and 
					(count (activeDrones select {alive _x}) > 0) and (alive _target) and 
					(!(_target isKindOf 'man') or (count (_target nearEntities [['Man'], 5] select {typeOf _x == 'B_recon_JTAC_F'}) > 0))
				
				",	// Condition for the action to be shown
				"
				
					(vehicle _caller == _caller) and 
					(_caller distance _target < 3) and 
					(
					
						(typeOf _caller == 'B_Soldier_UAV_F') or 
						((typeOf _caller == 'B_soldier_M_F') and BEW_v_BF4Mode) or 
						!(isMultiplayer)
					
					) and 
					(count (activeDrones select {alive _x}) > 0) and (alive _target) and 
					(!(_target isKindOf 'man') or (count (_target nearEntities [['Man'], 5] select {typeOf _x == 'B_recon_JTAC_F'}) > 0))
				
				",	// Condition for the action to progress
				{},																								// Code executed when action starts
				{},																								// Code executed on every progress tick
				{
				
					player playActionNow 'PutDown';
					playSound 'click';
					

					{
						
						{
						
							_x spawn {
							
								_drone = _this;
									
									{deleteVehicle _x} forEach crew _drone;
								
									_drone setDamage 1;
									
									sleep 20;
									
									deleteVehicle _drone;
		
							};
						
						} forEach activeDrones;
						
					} remoteExec ["bis_fnc_call", 2]; 

				   
				},																			// Code executed on completion
				{},																			// Code executed on interrupted
				[],																			// Arguments passed to the scripts as _this select 3
				2,																			// Action duration [s]
				98,																			// Priority
			   false,																		// Remove on completion
			   false																		// Show in unconscious state
				
			] remoteExec ["BIS_fnc_holdActionAdd", 0, true];
			
		} forEach _consoles;



		// Level 1 Actions
				
				{

					[_x, _level1] call BEW_FNC_UAVSpawn;

				} forEach _consoles;



		// Level 2 Actions

			waitUntil {missionLevel > 1};
				
				{

					[_x, _level2] call BEW_FNC_UAVSpawn;


				} forEach _consoles;
				
				
				
		// Level 3 Actions
				
			waitUntil {missionLevel > 2};
				
				{

					[_x, _level3] call BEW_FNC_UAVSpawn;


				} forEach _consoles;



		// Level 4 Actions

			waitUntil {missionLevel > 3};	

				{

					[_x, _level4] call BEW_FNC_UAVSpawn;


				} forEach _consoles;



		// Level 5 Actions

			waitUntil {missionLevel > 4};
				
				{

					[_x, _level5] call BEW_FNC_UAVSpawn;


				} forEach _consoles;
				
				
				
		// Level 6 Actions

			waitUntil {missionLevel > 5};
				
				{

					[_x, _level6] call BEW_FNC_UAVSpawn;


				} forEach _consoles;
				
				
				
		// Level 7 Actions

			waitUntil {missionLevel > 6};
				
				{

					[_x, _level7] call BEW_FNC_UAVSpawn;


				} forEach _consoles;
				
				
				
		// Level 8 Actions

			waitUntil {missionLevel > 7};
				
				{

					[_x, _level8] call BEW_FNC_UAVSpawn;


				} forEach _consoles;