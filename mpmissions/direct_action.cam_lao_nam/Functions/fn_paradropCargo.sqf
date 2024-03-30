		
	
		_attachedObject = param [0];
		_veh =  attachedTo _attachedObject;
		
		_dropPos = param [1, getPos _veh];
		_dropPos = [_dropPos select 0, _dropPos select 1, 200];
		

		_parachuteType = "B_Parachute_02_F"; 
		_parachute = createVehicle [_parachuteType, [100, 100, 200], [], 0, 'FLY'];
		_parachute setPos _dropPos;
		
		[_veh, _attachedObject] remoteExecCall ["disableCollisionWith", _veh];
		[_veh, _attachedObject] remoteExecCall ["disableCollisionWith", _attachedObject];

		detach _attachedObject;

		 _attachedObject attachTo [_parachute, [0, 0, 0]];

		waitUntil {getPos _attachedObject select 2 < 0.5 || isNull _parachute};
	   
		detach _attachedObject;
		  
		_attachedObject setPos [getPos _attachedObject select 0, getPos _attachedObject select 1, 0];