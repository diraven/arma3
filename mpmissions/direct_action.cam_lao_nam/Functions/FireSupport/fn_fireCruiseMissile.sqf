	private [
		
		"_target",
		"_batteries",
		"_batteryPos",
		"_batteryDir",
		"_batteryType"
		
	];
	
	cruiseMissileActive = true;
		publicVariable "cruiseMissileActive";

	_target = param [0];
	_batteries = param [1, BEW_v_CruiseMissileBatteries];
	
	_nearestBattery = [_batteries, _target] call BIS_fnc_nearestPosition;


	// Define Battery 
	
		_battery = _nearestBattery;
		_batteryPos = getPosASL _battery;
		_batteryDir = getDir _battery;
		_batteryType = typeOf _battery;


	// Check If Target Is A Real Target

		if !(isNull _target) then {
				
			// Create Battery Crew

				_batteryCrew = createVehicleCrew _battery;


			// Fire Missile
				
				west reportRemoteTarget [_target, 3000]; 
				_target confirmSensorTarget [west, true];
				_battery fireAtTarget [_target, "weapon_vls_01"];

			
			sleep 1;

			// Detect Missile
			
				
				_allObjects = nearestObjects [_battery, [], 100];	
				_allMissiles = _allObjects select {typeOf _x == "ammo_Missile_Cruise_01"};
				
				
			waitUntil {count (_allMissiles select {alive _x}) < 1};
		
			sleep 1.5;
			
			
			// Clean Up Battery 
					
				BEW_v_CruiseMissileBatteries = BEW_v_CruiseMissileBatteries - [_battery];
				deleteVehicle _battery;
				{deleteVehicle _x} forEach units _batteryCrew;
				
		
			sleep 0.5;
		
		
			// Create New Battery
		
				_battery = createVehicle [_batteryType, _batteryPos, [], 0, "CAN_COLLIDE"]; 
				_battery allowDamage false;
				_battery enableSimulation true; 
				_battery setVehicleLock "LOCKED";  
				_battery setVehiclePosition [_batteryPos, [], 0, "CAN_COLLIDE"]; 
				_battery setDir _batteryDir;
				_nearestHelipad = [BEW_v_CruiseMissileHelipads, _battery] call BIS_fnc_nearestPosition;
				_battery attachTo [_nearestHelipad, [0, 0, 1.4]];
				
				_allObjects = nearestObjects [_battery, [], 100];
				_submarines = _allObjects select {typeOf _x == "Submarine_01_F"};
	
				if (count _submarines > 0) then {_battery hideObjectGlobal true};
				
				BEW_v_CruiseMissileBatteries = BEW_v_CruiseMissileBatteries + [_battery];
					
		}else{
			
				hint "No Target";
			
		};
		
		cruiseMissileActive = false;
			publicVariable "cruiseMissileActive";
