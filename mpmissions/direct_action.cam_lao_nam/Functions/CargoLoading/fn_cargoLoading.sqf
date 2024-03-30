

	//(count (attachedObjects player select {!([typeOf _x] call BEW_fnc_isBlacklistedCargoLoading)}) > 0) and 

	// PICK UP OBJECT

		BEW_v_pickupObjectConditions = {
			
			private _return = false;
			
			if (vehicle player == player) then {
				
				if !(cursorObject isKindOf 'Man') then {
			
					if (cursorObject getVariable ['BEW_v_canCarry', false]) then {
			
						if (getMass cursorObject <= 1500) then {
			
							if (count (attachedObjects player select {(_x getVariable ['BEW_v_canCarry', false])}) < 1) then {
			
								if (cursorObject distance2D player < 4) then {
					
									if !([typeOf cursorObject] call BEW_fnc_isBlacklistedCargoLoading) then {
			
										_return = true;
			
									};
			
								};
			
							};
			
						};
						
					};
			
				};
			
			};
			
			_return
		
		};

		player addaction
					
			["<t color='#FFFF00'>PICK UP CARGO", 	
			
			{
			
				_cursorObject = cursorObject;
			
				if (_cursorObject getVariable 'BEW_v_canCarry') then {
					
					player action ["SWITCHWEAPON",player,player,-1];
					
					waitUntil {currentWeapon player == ""};
					
					// Find Currently Attached Objects
					
						_attachedObjects = attachedObjects player;
					
					// Detach Currently Attached Objects
					
						{

							detach _x;

						} forEach _attachedObjects;
					
					// Attach Item To Be Picked Up
					
						_cursorObject attachTo [player, [0,1.1,0], "pelvis"];
						
					// Rescale
						
						_scale = _cursorObject getVariable ["BEW_V_Rescale", 1];
						
						if !(_scale == 1) then { 
					
							_cursorObject setObjectScale _scale;
							
						};
					
					// Reattach Original Objects
					
						{

							_x attachTo [player];

						} forEach _attachedObjects;
					
					{

						_x setDamage 0;

					} forEach attachedObjects player;
					
					player forceWalk true;
					
					waitUntil {(count attachedObjects player < 1) or !(currentWeapon player == "") or (!alive player) or (lifeState player == "INCAPACITATED") or !(vehicle player == player)};
					
					{

						detach _x;

					} forEach attachedObjects player;
					
					player forceWalk false;
				
				};
				
			}
			
			, [], 99, true, true, "", "call BEW_v_pickupObjectConditions"];
		

	// DROP OBJECT
	
	
		BEW_v_dropObjectConditions = {
		
			private _return = false;
			
			if (count (attachedObjects player select {_x getVariable ['BEW_v_canCarry', FALSE]}) > 0) then {
			
				if ((count (attachedObjects player select {!(typeOf _x == '#particleSource') and !(typeOf _x == 'vn_b_item_mx991_01') and !(typeOf _x == 'Reflector_Cone_01_white_F')})) > 0) then {
			
					if !((typeOf (attachedObjects player select 0)) == 'land_can_v2_f') then {
					
						_return = true;
						
					};
				
				};
				
			};
			
			_return
		
		};
	

		player addaction
					
			["<t color='#FFFF00'>DROP CARGO", 	
			
			{
				
				{

					detach _x;

				} forEach (attachedObjects player select {_x getVariable 'BEW_v_canCarry'});
				
				player forceWalk false;
				
			}
			
			, [], 98, true, true, "", "call BEW_v_dropObjectConditions"];


	// UNLOAD OBJECT - ON FOOT
		
		BEW_v_unloadObjectConditions = {
		
			private _result = false;
		
			if (vehicle player == player) then {
			
				if !(isNull attachedTo cursorObject) then {
			
					if !(attachedTo cursorObject isKindOf 'Man') then {
			
						if (cursorObject getVariable ['canUnload', FALSE]) then {
			
							if isnil {(cursorObject getVariable ['dontUnload', FALSE])} then {
			
								if isnil {(cursorObject getVariable ['BEW_v_canCarry', FALSE])} then {		
			
									if (cursorObject distance2D player < 4) then {	
										
										_result = true;
										
									};
									
								};
									
							};
									
						};
									
					};
				
				};
			
			};
			
			_result
			
		};
			
		player addaction
					
			["<t color='#FFFF00'>UNLOAD CARGO", 	
			
				{
					
					_attachedObject = cursorObject; 
					_veh =  attachedTo _attachedObject; 
					_vehSize = sizeOf typeOf _veh * 0.5; 
					  
					 _offSetPos = _veh modelToWorld [0,-(_vehSize) ,0]; 

					_emptyPos = _offSetPos findEmptyPosition [5,30, typeOf _attachedObject];

					if (count _emptyPos > 0) then {
						 
						detach _attachedObject; 
					 
						if !(typeOf _veh == "OPTRE_Pelican_unarmed") then { 
						  
						_attachedObject setVehiclePosition [_emptyPos, [], 0, "CAN_COLLIDE"]; 
						  
						};

					}else{

						hint "CANNOT UNLOAD CARGO HERE";

					};

				}
			
			, [], 98, true, true, "", "call BEW_v_unloadObjectConditions"];
			
			
	// UNLOAD VEHICLE - IN LOADED VEHICLE
	
		BEW_v_unloadInLoadedVehicle = {
		
			private _return = false;
			
			if !(vehicle player == player) then {
			
				if (player == driver vehicle player) then {
			
					if !(isNull attachedTo vehicle player) then {

						if (isTouchingGround attachedTo vehicle player) then {
						
							_return = true;
						
						};
						
					};
					
				};
				
			};
			
			_return
			
		};

		player addaction
					
			["<t color='#FFFF00'>UNLOAD VEHICLE", 	
			
				{
					
					_attachedObject = vehicle player; 
					_veh =  attachedTo _attachedObject; 
					_vehSize = sizeOf typeOf _veh * 0.5; 
					  
					 _offSetPos = _veh modelToWorld [0,-(_vehSize) ,0]; 

					_emptyPos = _offSetPos findEmptyPosition [5,30, typeOf _attachedObject];

					if (count _emptyPos > 0) then {
						 
						detach _attachedObject; 
					 
						if !(typeOf _veh == "OPTRE_Pelican_unarmed") then { 
						  
						_attachedObject setVehiclePosition [_emptyPos, [], 0, "CAN_COLLIDE"]; 
						  
						};

					}else{

						hint "CANNOT UNLOAD CARGO HERE";

					};

				}
			
			, [], 98, true, true, "", "call BEW_v_unloadInLoadedVehicle"];
			
			
	// PARADROP OBJECT - IN LOADED VEHICLE

		player addaction
					
			["<t color='#FFFF00'>PARADROP VEHICLE", 	
			
				{
					
					[vehicle player] spawn BEW_FNC_paradropCargo; 

				}
			
			, [], 98, true, true, "", "!(isNull attachedTo vehicle player) and !(vehicle player == player) and (player == driver vehicle player) and ((attachedTo vehicle player isKindOf 'Plane') or (typeOf attachedTo vehicle player == 'OPTRE_Pelican_unarmed')) and !(isTouchingGround attachedTo vehicle player)"];
	
	
	// PARADROP OBJECT - IN LOADED VEHICLE

		player addaction
					
			["<t color='#FFFF00'>PARADROP CARGO", 	
			
				{
				
					{
					
						[_x] remoteExec ["BEW_FNC_paradropCargo", _x]; 

						sleep 1;

					} forEach attachedObjects vehicle player;

				}
			
			, [], 98, false, true, "", "
			
				(driver vehicle player == player) and
				(vehicle player isKindOf 'Plane') and
				(count attachedObjects vehicle player > 0) and
				!(isTouchingGround vehicle player)
				
			"];
			
	
/*
	// UNLOAD ALL OBJECTS - IN VEHICLE

		player addaction
					
			["<t color='#FFFF00'>UNLOAD ALL CARGO", 	
			
				{
					
					{
					
						_attachedObject = _x; 
						_veh =  attachedTo _attachedObject; 
						_vehSize = sizeOf typeOf _veh * 0.5; 
						  
						 _offSetPos = _veh modelToWorld [0,-(_vehSize) ,0]; 

						_emptyPos = [];
						private _maxRadius = 20;
						
						while {count _emptyPos < 1} do {
							 
							_emptyPos = _offSetPos findEmptyPosition [5,_maxRadius, typeOf _attachedObject];
							
							_maxRadius = _maxRadius + 1;
							
						};
							 
							detach _attachedObject; 
						 
							_attachedObject setVehiclePosition [_emptyPos, [], 0, "CAN_COLLIDE"]; 


							sleep 1;
						
					} forEach attachedObjects vehicle player;

				}
			
			, [], 98, true, true, "", "!(vehicle player == player) and ((count (attachedObjects vehicle player select {!(typeOf _x == '#particleSource')})) > 0) and (player == driver vehicle player) and !(vehicle player isKindOf 'Air')"];
*/

	// LOAD - PLAYER CARRYING

		_LoadPlayerCarryingConditions = "
		
			isnil {((attachedObjects player select 0) getVariable 'dontLoad')} and 
			(simulationEnabled cursorObject) and (isnil {(cursorObject getVariable 'loadingDisabled')}) and 
			(cursorObject distance player < (sizeOf typeOf cursorObject * 0.5)) and 
			((count (attachedObjects cursorObject select {!(typeOf _x == '#particleSource') and !(isVehicleCargo _x == cursorObject)})) < 1) and 
			(count (attachedObjects player select {!([typeOf _x] call BEW_fnc_isBlacklistedCargoLoading)}) > 0) and 
			!((typeOf (attachedObjects player select 0)) == 'land_can_v2_f') and 
			(vehicle player == player) and 
			((cursorObject canVehicleCargo (attachedObjects player select 0)) select 0) and 
			((cursorObject canVehicleCargo (attachedObjects player select 0)) select 1) and 
			!(cursorObject isKindOf 'Man')
		
		";

		player addaction
					
			["<t color='#FFFF00'>LOAD CARGO IN VEHICLE", 	
			
			{
			
				_attachObject = cursorObject;
				
				_attachObject setVehicleCargo (attachedObjects player select 0);
				
				if ((BEW_v_WW2) and ((typeOf _attachObject == "B_CargoNet_01_ammo_F") or (typeOf _attachObject == "Box_NATO_AmmoVeh_F"))) then {
				
					[_attachObject,  0.8] remoteExec ["setObjectScale", 0, true];
				
				};
				
			}
			
			, [], 99, true, true, "", _LoadPlayerCarryingConditions];
			
			
	// ATTACHTO - PLAYER CARRYING

		_attachToPlayerCarryingConditions = "

			isnil {((attachedObjects player select 0) getVariable 'dontLoad')} and 
			(simulationEnabled cursorObject) and 
			(isnil {(cursorObject getVariable 'loadingDisabled')}) and 
			(cursorObject distance player < (sizeOf typeOf cursorObject * 0.5)) and 
			((count (attachedObjects cursorObject select {!(typeOf _x == '#particleSource')})) < 1) and 
			((count (attachedObjects player select {!(typeOf _x == '#particleSource')})) > 0) and 
			!((typeOf (attachedObjects player select 0)) == 'land_can_v2_f') and (vehicle player == player) and 
			!(cursorObject isKindOf 'Man') and 
			(typeOf (attachedObjects player select 0)) in ([typeOf cursorObject] call BEW_FNC_getAttachableObjects) and
			!(cursorObject canVehicleCargo (attachedObjects player select 0) select 1)


			";
		
		
		player addaction
					
			["<t color='#FFFF00'>LOAD CARGO IN VEHICLE", 	
			
			{
				
				_attachObject = (attachedObjects player select 0);
				_veh = cursorObject;

				[_veh, _attachObject] call BEW_FNC_attachObjects;
				
				if ((BEW_v_WW2) and ((typeOf _attachObject == "B_CargoNet_01_ammo_F") or (typeOf _attachObject == "Box_NATO_AmmoVeh_F"))) then {
				
					[_attachObject,  0.8] remoteExec ["setObjectScale", 0, true];
				
				};
				
			}
			
			, [], 99, true, true, "", _attachToPlayerCarryingConditions];
			
			
		
	// NO SPACE - PLAYER CARRYING

		_noSpacePlayerCarryingConditions = "
		
			(cursorObject distance player < (sizeOf typeOf cursorObject * 0.5)) and 
			((count (attachedObjects player select {!(typeOf _x == '#particleSource')})) > 0) and 
			(vehicle player == player) and !(cursorObject isKindOf 'Man') and 
			(
			
				(
				
					!((cursorObject canVehicleCargo (attachedObjects player select 0)) select 0) and 
					((cursorObject canVehicleCargo (attachedObjects player select 0)) select 1)
					
				) or 
				
				(
				
					((typeOf (attachedObjects player select 0)) in ([typeOf cursorObject] call BEW_FNC_getAttachableObjects)) and 
					((count (attachedObjects cursorObject select {!(typeOf _x == '#particleSource') and !(isVehicleCargo _x == cursorObject)})) > 0)
					
				)
			
			)
		
		";

		player addaction
					
			["<t color='#FFFF00'>CAN'T LOAD CARGO: NOT ENOUGH SPACE", 	
			
			{
				
				hintC "CAN'T LOAD CARGO: NOT ENOUGH SPACE";
				
			}
			
			, [], 99, true, true, "", _noSpacePlayerCarryingConditions];



	// LOAD - PLAYER IN CARGO VEHICLE

		_LoadInCargoVehicleConditions = "isnil {(cursorObject getVariable 'dontLoad')} and (simulationEnabled cursorObject) and (isnil {(cursorObject getVariable 'loadingDisabled')}) and !(vehicle player == player) and ((vehicle _target canVehicleCargo cursorObject) select 0) and ((vehicle _target canVehicleCargo cursorObject) select 1) and (vehicle _target distance2D cursorObject < (sizeOf typeOf vehicle _target * 1)) and !(cursorObject isKindOf 'Man')";

			player addaction
					
			["<t color='#FFFF00'>LOAD CARGO IN VEHICLE", 	
			
			{
				
				_attachObject = cursorObject;
				
				vehicle player setVehicleCargo _attachObject;
				
				if (isEngineOn _attachObject) then {_attachObject engineOn FALSE};
				
				if ((BEW_v_WW2) and ((typeOf _attachObject == "B_CargoNet_01_ammo_F") or (typeOf _attachObject == "Box_NATO_AmmoVeh_F"))) then {
				
					[_attachObject,  0.8] remoteExec ["setObjectScale", 0, true];
				
				};
				
			}
			
			, [], 99, true, true, "", _LoadInCargoVehicleConditions];
			
			
			
	// ATTACHTO - PLAYER IN CARGO VEHICLE

		_attachToInCargoVehicleConditions = "isnil {(cursorObject getVariable 'dontLoad')} and (simulationEnabled cursorObject) and (isnil {(cursorObject getVariable 'loadingDisabled')}) and (vehicle player distance2D cursorObject < (sizeOf typeOf vehicle player * 1)) and !(vehicle player == player) and ((count (attachedObjects vehicle player select {!(typeOf _x == '#particleSource')})) < 1) and !(cursorObject isKindOf 'Man') and (typeOf cursorObject) in ([typeOf vehicle player] call BEW_FNC_getAttachableObjects)";

			player addaction
					
			["<t color='#FFFF00'>LOAD CARGO IN VEHICLE", 	
			
			{
				
				_attachObject = cursorObject;
				_veh = vehicle player;

				[_veh, _attachObject] call BEW_FNC_attachObjects;
				
				if ((BEW_v_WW2) and ((typeOf _attachObject == "B_CargoNet_01_ammo_F") or (typeOf _attachObject == "Box_NATO_AmmoVeh_F"))) then {
				
					[_attachObject,  0.8] remoteExec ["setObjectScale", 0, true];
				
				};
				
			}
			
			, [], 99, true, true, "", _attachToInCargoVehicleConditions];



	// NO SPACE - PLAYER IN CARGO VEHICLE

		_noSpaceInCargoVehicleConditions = "(vehicle player distance2D cursorObject < (sizeOf typeOf vehicle player * 1)) and !(vehicle player == player) and !(cursorObject isKindOf 'Man') and ((!((vehicle player canVehicleCargo cursorObject) select 0) and ((vehicle player canVehicleCargo cursorObject) select 1)) or (((typeOf cursorObject) in ([typeOf vehicle player] call BEW_FNC_getAttachableObjects)) and ((count (attachedObjects vehicle player select {!(typeOf _x == '#particleSource')})) > 0)))";

			player addaction
					
			["<t color='#FFFF00'>CAN'T LOAD CARGO: NOT ENOUGH SPACE", 	
			
			{
				
				hintC "CAN'T LOAD CARGO: NOT ENOUGH SPACE";
				
			}
			
			, [], 99, true, true, "", _noSpaceInCargoVehicleConditions];




	// LOAD - PLAYER IN LOAD VEHICLE

		_LoadVehiclePlayerConditions = "isnil {(vehicle player getVariable 'dontLoad')} and (simulationEnabled cursorObject) and (isnil {(cursorObject getVariable 'loadingDisabled')}) and !(vehicle player == player) and ((cursorObject canVehicleCargo vehicle _target) select 0) and ((cursorObject canVehicleCargo vehicle _target) select 1) and (vehicle _target distance2D cursorObject < (sizeOf typeOf vehicle player * 1))";

			player addaction
					
			["<t color='#FFFF00'>LOAD VEHICLE", 	
			
			{
				
				_attachObject = vehicle player;
				
				cursorObject setVehicleCargo _attachObject;
				
				if (isEngineOn _attachObject) then { _attachObject engineOn FALSE};
				
			}
			
			, [], 99, true, true, "", _LoadVehiclePlayerConditions];
			
			
			
	// ATTACHTO - PLAYER IN LOAD VEHICLE

		_attachToVehiclePlayerConditions = "
			isnil {(vehicle player getVariable 'dontLoad')} and 
			
			(simulationEnabled cursorObject) and
		
			(isnil {(cursorObject getVariable 'loadingDisabled')}) and
		
			!(vehicle player == player) and 
			
			((count (attachedObjects cursorObject select {!(typeOf _x == '#particleSource')})) < 1) and
		
			(vehicle player distance2D cursorObject < (sizeOf typeOf vehicle player * 1)) and 
			
			(typeOf vehicle player) in ([typeOf cursorObject] call BEW_FNC_getAttachableObjects)
		
		";

			player addaction
					
			["<t color='#FFFF00'>LOAD VEHICLE", 	
			
			{
				
				_attachObject = vehicle player;
				_veh = cursorObject;

				[_veh, _attachObject] call BEW_FNC_attachObjects;
				
				if (isEngineOn _attachObject) then { _attachObject engineOn FALSE};
				
			}
			
			, [], 99, true, true, "", _attachToVehiclePlayerConditions];




	// NO SPACE - PLAYER IN LOAD VEHICLE

			_noSpaceVehiclePlayerConditions = "!(vehicle player == player) and (vehicle player distance2D cursorObject < (sizeOf typeOf vehicle player * 1)) and ((!((cursorObject canVehicleCargo vehicle player) select 0) and ((cursorObject canVehicleCargo vehicle player) select 1)) or (((typeOf vehicle player) in ([typeOf cursorObject] call BEW_FNC_getAttachableObjects)) and ((count (attachedObjects cursorObject select {!(typeOf _x == '#particleSource')})) > 0)))";
			
			player addaction
					
			["<t color='#FFFF00'>CAN'T LOAD VEHICLE: NOT ENOUGH SPACE", 	
			
			{
				
				hintC "CAN'T LOAD VEHICLE: NOT ENOUGH SPACE";
				
			}
			
			, [], 99, true, true, "", _noSpaceVehiclePlayerConditions];
