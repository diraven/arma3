
	private _veh = param [0];
	private _dir = getDir _veh;

	// Get World Pos
								
		_worldPos = getPosWorld _veh;
		
	// Replace Vehicle
	
		_veh = [_veh] call BIS_fnc_replaceWithSimpleObject;
		
	// Position Simple Object							
	
		_veh setPosWorld _worldPos;


	// Set Dir
	
		_veh setDir _dir; 
		
	
	// Hide
		
		if (!(is3DENPreview) and (isMultiplayer)) then {
		
			[_veh] spawn {
			
				_veh = _this select 0;
			
				_veh hideObjectGlobal true;
			
				sleep 60;
				
				_veh hideObjectGlobal false;
			
			};
		
		};
		
	_veh