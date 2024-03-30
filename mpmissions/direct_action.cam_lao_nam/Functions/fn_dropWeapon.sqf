	// fn_dropWeapon.sqf by Pritchard
	 
		_player = param [0];
		_object = param [1];
		_currentMag = currentMagazine _player; 
		_magCount = {_x == _currentMag} count magazines _player; 
		
	  
		//1.8m in front of the unit seems like a good distance - could be changed to a user-input variable

			_objPosition = _player modelToWorld [0,1.8,0];
		
		
		//Creates a groundWeaponHolder at precisely the desired position with random rotation

			_box = createVehicle ["groundWeaponHolder", _objPosition, [], 0, "CAN_COLLIDE"]; 
			_box setDir random(360);
		
		
		//Snaps the gWH to the terrain as best as possible - doesn't match angle

			_box setPosATL [getPosATL _box select 0, getPosATL _box select 1, 0];
		
		
		//Adds a temporary item to prevent the gWH from despawning while the player drops the weapon

			_box addItemCargoGlobal ["ItemWatch",1];
		
		
		//Makes the player drop their primary weapon and sleeps until they are probably done

			_player action ["DropWeapon", _box, _object];
			
			sleep 3;


		//Restores the ammunition that they dropped

			_player addMagazines [_currentMag, _magCount];


		//Clears all items and magazines (placeholder watch, dropped ammo)

			clearItemCargoGlobal _box;
			clearMagazineCargoGlobal _box;


		//Makes sure the player can always interact with gWH

			_player reveal _box;

	