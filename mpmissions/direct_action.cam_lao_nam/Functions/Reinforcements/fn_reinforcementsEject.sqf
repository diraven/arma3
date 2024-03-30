
	_veh = _this select 0;
	_vehGroup = _this select 1;
		_crew = units _vehGroup;
		
	_passengerGroup = _this select 2;
		_passengers = units _passengerGroup;
		
	_callerGroup = _this select 3;
	
	
	// Eject Completed Flag
	
		_ejectCompleted = false;
	
	
	// Eject Passengers
	
		{

			_passenger = _x;
			
			_ifaStaticLineVehs = [
		
				"LIB_C47_Skytrain",
				"LIB_C47_RAF",
				"LIB_C47_RAF_bob",
				"LIB_C47_RAF_snafu",
				"LIB_Li2",
				"UNI_C47_CAP_Grey",
				"UNI_C47_CAP_Camo"
			
			];
		
			if (vehicle _passenger == _veh) then {
									
				if (typeOf _veh in _ifaStaticLineVehs) then {
					
					[_passenger, _veh] call BEW_FNC_EjectIFA;
				
				}else{
					
					[_passenger, _veh] call BEW_FNC_Eject;
		
				};
				
				[_passenger, [TRUE, _callerGroup]] spawn BEW_FNC_ParadropLoadout;

			};		
			
			sleep 1;
				
		} forEach _passengers;
		
				
	// Drop Cargo

		_attachedObjects = attachedObjects _veh; 
		
		{
		
			_cargo = _x;

			[_cargo] spawn BEW_FNC_paradropCargo; 

			sleep 1;

		} forEach _attachedObjects;
		
	
	// Eject Completed Flag
	
		_ejectCompleted = true;
		
	_ejectCompleted