if ((isDedicated) or !(isMultiplayer)) exitWith {};
if (BEW_v_Zombies) exitWith {};

waitUntil {!isNull player};

_allData = _this;
_disableIfAdmin = true;
_debug = false;

	if (isNil "BEW_v_disableVehicleRestrictions") then {

		BEW_v_disableVehicleRestrictions = FALSE;

	};


	while {alive player} do {

		// Disable If Admin
		
			if (_disableIfAdmin) then {
				
				if (serverCommandAvailable '#kick') then {
				
					BEW_v_disableVehicleRestrictions = true;
				
				};
			
			};
			
			
		// Disable If Mission Parameter Flipped
			
			waitUntil {!(isNil "BEW_v_enableVehicleRestrictions")};
			
			if !(BEW_v_enableVehicleRestrictions) then {
		
					
				BEW_v_disableVehicleRestrictions = true;

			
			};


		// Disable If BF4 Mode
		
			if (BEW_v_BF4Mode) then {
	
				
				BEW_v_disableVehicleRestrictions = true;
	
			
			};
		

		// Disable If Cancelled

			if (BEW_v_disableVehicleRestrictions) exitWith {
			
				
				if ((serverCommandAvailable '#kick') and (_disableIfAdmin)) then {
				
					if (_debug) then {systemchat "Vehicle Restriction System Disabled - Logged Admin"};
				
				}else{
				
					if (_debug) then {systemchat "Vehicle Restriction System Disabled"};
					
				};
				
				BEW_v_disableVehicleRestrictions = FALSE;
				
			};


		{
			
			_vehKindToRestrict = _x select 0;
			_allowedClasses = _x select 1;
			_restrictedSeats = _x select 2;
			
			{
				
				_stringX = str _x;
				_toUpper = toUpper _stringX; 
				_restrictedSeats = _restrictedSeats - [_x];
				_restrictedSeats = _restrictedSeats + [_toUpper];

			} forEach _restrictedSeats;			
				
				
				// Main Check Script
				
					_vehicle = vehicle player;
					
					if (_vehicle != player) then {

						_playerType = typeOf player;
						_playerSeat = toUpper str (assignedVehicleRole player select 0);


						if ((_vehicle isKindOf _vehKindToRestrict) and !(_playerType in _allowedClasses) and !((_vehicle isKindOf "ParachuteBase") or (_vehicle isKindOf "LIB_HORSA") or (_vehicle isKindOf "LIB_MKI_HADRIAN_raf2") or (_vehicle isKindOf "LIB_CG4_WACO") or (_vehicle isKindOf "LIB_HORSA_RAF"))) then {
						
							if (_debug) then {systemchat "Player In Wrong Role"};
							
							if (_debug) then {systemchat format ["%1", _playerSeat]};
							if (_debug) then {systemchat format ["%1", _restrictedSeats]};
							
							if (_playerSeat in _restrictedSeats) then {
							
								if (_debug) then {systemchat "Player In Restricted Seat"};
								
								moveOut player;
								
								if (isEngineOn _vehicle) then {_vehicle engineOn FALSE};
								
								hint "YOU ARE NOT QUALIFIED TO OPERATE THIS VEHICLE";
							
							};
						
						}else{
						
							if (_debug) then {systemchat "Player In Correct Role"};
						
						};
						
					
					}else{
					
						if (_debug) then {systemchat "Player Is Not In A Vehicle"};
					
					};
			
			sleep 0.5;
			
		} forEach _allData;

		sleep 0.5;
			
	};