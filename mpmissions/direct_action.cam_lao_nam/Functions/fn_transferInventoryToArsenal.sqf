		
		
		
		BEW_v_transferInventoryConditions = {
			
			private _return = FALSE;
			
			_container = cursorObject;
			
			if (count (BEW_v_allArsenalCrates select {_x distance2D player < 15}) > 0) then {
				
				if !(_container in BEW_v_allArsenalCrates) then {
				
					if (_container in (player nearSupplies 5)) then {

						if !(_container isKindOf 'man') then {
							
							if ((count backpackCargo _container) + (count itemCargo _container) + (count magazineCargo _container) + (count weaponCargo _container) > 0) then {
							
								_return = TRUE;
							
							};
							
						};
				
					};
					
				};
				
			};

			_return
		
		};
		

		[
			player,																// Object the action is attached to
			"<t color='#ffffff'>Transfer Inventory To Arsenal",					// Title of the action
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Idle icon shown on screen
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",	// Progress icon shown on screen
			"call BEW_v_transferInventoryConditions",														// Condition for the action to be shown
			"call BEW_v_transferInventoryConditions",																// Condition for the action to progress
			{},																	// Code executed when action starts
			{},																	// Code executed on every progress tick
			{
			
				// Container
				
					_container = cursorObject;

				// Put Down Action

					player playActionNow 'PutDown';
					playSound 'click';


					// Get Items
					
						_backpacksToAdd = backpackCargo _container;	
						_itemsToAdd = itemCargo _container;
						_magazinesToAdd = magazineCargo _container;
						_weaponsToAdd = weaponCargo _container;


					// Add Items
					
						[_backpacksToAdd, _itemsToAdd, _magazinesToAdd, _weaponsToAdd] remoteExec ["BEW_FNC_AddToArsenal", 2];
					
					
					// Hint
					
						hint format ["%1 Items Have Been Transferred To The Arsenal", (count _backpacksToAdd) + (count _itemsToAdd) + (count _magazinesToAdd) + (count _weaponsToAdd)];
						
						
					// Clear Container
							
						clearBackpackCargoGlobal _container;
						clearWeaponCargoGlobal _container;
						clearMagazineCargoGlobal _container;
						clearItemCargoGlobal _container;					
					
					// Delete If Supply Drop Crate
					
						if (_container getVariable ["supplyDropCrate", FALSE]) then {
						
							[_container] remoteExec ["deleteVehicle", _container];
							
						};

			},																	// Code executed on completion
			{},																	// Code executed on interrupted
			[],																	// Arguments passed to the scripts as _this select 3
			0.5,																// Action duration [s]
			5,																	// Priority
			false,																// Remove on completion
			false																// Show in unconscious state
		] call BIS_fnc_holdActionAdd;

