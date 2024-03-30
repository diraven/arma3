	
	params["_group","_pos","",["_arg",-1]];

	_radius = waypointCompletionRadius [_group,currentWaypoint _group];
	if(_radius == 0)then{_radius = 300};

	_group move _pos;

	private _veh = vehicle (leader _group);

	while{alive _veh && _veh distance2d _pos >_radius}do{
		sleep 1;
	};

	// Drop Cargo
		
		_attachedObjects = attachedObjects _veh; 
		
		{
		
			_cargo = _x;

			if (isVehicleCargo _cargo == _veh) then {
		
				[_cargo] spawn BEW_FNC_paradropCargo; 

			}else{

				[_cargo] spawn BEW_FNC_paradropCargo; 

			};

			sleep 1;

		} forEach _attachedObjects;

	{

		[[_x, _veh], {

			_passenger = _this select 0;
			_veh = _this select 1;
		
			if (vehicle _passenger == _veh) then {
		
				_passenger disableCollisionWith _veh;
				unassignVehicle _passenger;
				_passenger action ["Eject", _veh];
				moveOut _passenger;
				_passenger leaveVehicle _veh;
				
				[_passenger] execVM "functions\ParadropTransport\fn_ParadropLoadout.sqf";
				
			};		

		}] remoteExec ["bis_fnc_call", _x]; 
		
		sleep 1;
			
	} forEach ([] call BEW_FNC_AllUnitsInGroupsWithPlayers);	