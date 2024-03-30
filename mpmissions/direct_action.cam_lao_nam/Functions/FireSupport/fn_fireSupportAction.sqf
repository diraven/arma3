	private [
	
		"_typeText",
		"_allowedClasses",
		"_assistantTypes",
		"_minRadius",
		"_maxRadius",
		"_spread",
		"_barrageCooldown",
		"_roundTypes",
		"_roundCount",
		"_roundInterval",
		"_unlockLevel",
		"_spawnHeight",
		"_dropVelocity",
		"_munitionsCost"
	
	];

	_obj 				= _this select 0;
	_fireSupportData 	= _this select 1;
	
		_typeText			=	_fireSupportData select 0;
		_allowedClasses		=	_fireSupportData select 1;
		_assistantTypes		=	_fireSupportData select 2;
		_minRadius 			=	_fireSupportData select 3;
		_maxRadius			=	_fireSupportData select 4;
			if (viewDistance < _maxRadius) then {_maxRadius = viewDistance};
		_spread				=	_fireSupportData select 5;
		_barrageCooldown	=	_fireSupportData select 6;
		_roundTypes 		=	_fireSupportData select 7;
		_roundCount			=	_fireSupportData select 8;
		_roundInterval		=	_fireSupportData select 9;
		_unlockLevel		=	_fireSupportData select 10;
		_spawnHeight		=	_fireSupportData select 11;
		_dropVelocity		=	_fireSupportData select 12;
		_munitionsCost		= 	_fireSupportData select 13;
	
	
	// Check Round Exists
		
		{
		
			if !(isClass(configfile >> "CfgAmmo" >> _x)) then {
			
				_roundTypes = _roundTypes - [_x];
			
			};
		
		} forEach _roundTypes;
		
		if (count _roundTypes < 1) exitWith {};
	
	
	// Filter By Class
	
		if (!(typeOf player in _allowedClasses) and (isMultiplayer)) exitWith {};
		
	
	// Main Action
	
		// Action Text
		
			_mainActionText = format ["<t color='#00FF00'>%1 Barrage (Munitions Cost: %2)", _typeText, _munitionsCost];
			_offlineActionText = format ["<t color='#FF0000'>%1 Barrage Unavailable: Fire Support Offline", _typeText];
			_outOfBoundsActionText = format ["<t color='#FF0000'>%1 Barrage Unavailable: Out Of Bounds", _typeText];
			_dangerCloseActionText = format ["<t color='#FF0000'>%1 Barrage Unavailable: Danger Close", _typeText];
			_outOfRangeActionText = format ["<t color='#FF0000'>%1 Barrage Unavailable: Out Of Range", _typeText];
			_notEnoughMunitionsActionText = format ["<t color='#FF0000'>%1 Barrage Unavailable: Not Enough Munitions", _typeText];
		
		//call compile format ["
		
			private _mainActionConditions = "
			
				!(BEW_v_fireMissionCooldown) and
				(alive BEW_v_FireSupportArrow) and
				(_target distance2D BEW_v_FireSupportArrow >= %2) and
				(_target distance2D BEW_v_FireSupportArrow <= %3) and 
				!(player inArea BEW_v_HqSafeZoneMarker) and 
				(missionLevel >= %4) and
				(
				
					(
						
						side player == WEST and 
						(BEW_v_munitions >= %5)
						
					) or (
					
						side player == EAST and 
						(BEW_v_munitions_EAST >= %5)
					
					)
				
				) and 
				(vehicle player == player)

			";

				_obj addaction [_mainActionText, 	
				
					{
						_fireSupportData = (_this select 3);
										
						_typeText			=	_fireSupportData select 0;
						_allowedClasses		=	_fireSupportData select 1;
						_assistantTypes		=	_fireSupportData select 2;
						_minRadius 			=	_fireSupportData select 3;
						_maxRadius			=	_fireSupportData select 4;
						_spread				=	_fireSupportData select 5;
						_barrageCooldown	=	_fireSupportData select 6;
						_roundTypes 		=	_fireSupportData select 7;
						_roundCount			=	_fireSupportData select 8;
						_roundInterval		=	_fireSupportData select 9;
						_unlockLevel		=	_fireSupportData select 10;
						_spawnHeight		=	_fireSupportData select 11;
						_dropVelocity		=	_fireSupportData select 12;
						_munitionsCost		= 	_fireSupportData select 13;
						
						[_this select 0, _fireSupportData] spawn BEW_FNC_fireSupportBarrage;
									
					}
				
			, _fireSupportData, 98, false, true, "", format [_mainActionConditions, _typeText, _minRadius, _maxRadius, _unlockLevel, _munitionsCost]];
		
		
			_outOfBoundsConditions = "
			
				(alive BEW_v_FireSupportArrow) and
				(player inArea BEW_v_HqSafeZoneMarker) and 
				(missionLevel >= %4) and 
				(vehicle player == player)
			
			";
			
			
			player addaction [_outOfBoundsActionText, 	
			
			{
			
				'Out Of Bounds' hintC [ 
				
					'Fire support cannot be called at this location.'
				
				];
			
			}
			
			, _fireSupportData, 98, false, true, "", format [_outOfBoundsConditions, _typeText, _minRadius, _maxRadius, _unlockLevel, _munitionsCost]];
	
	
			_offlineConditions = "
			
				(BEW_v_fireMissionCooldown) and 
				(alive BEW_v_FireSupportArrow) and
				!(player inArea BEW_v_HqSafeZoneMarker) and 
				(missionLevel >= %4) and 
				(vehicle player == player)
			
			";
			
			
			player addaction [_offlineActionText, 	
			
			{
			
				'Fire Support Offline' hintC [ 
				
					'Fire support is not available at this time.'
				
				];
			
			}
			
			, _fireSupportData, 98, false, true, "", format [_offlineConditions, _typeText, _minRadius, _maxRadius, _unlockLevel, _munitionsCost]];		
			
			
			_dangerCloseConditions = "
			
				!(BEW_v_fireMissionCooldown) and 
				(alive BEW_v_FireSupportArrow) and
				!(_target distance2D BEW_v_FireSupportArrow >= %2) and 
				!(player inArea BEW_v_HqSafeZoneMarker) and 
				(missionLevel >= %4) and
				((side player == WEST and (BEW_v_munitions >= %5)) or (side player == EAST and (BEW_v_munitions_EAST >= %5))) and 
				(vehicle player == player)
			
			";
			
			
			player addaction [_dangerCloseActionText, 	
			
			{
				
				'Danger Close' hintC [ 
				
					'You cannot call this fire support at this position. The target is danger close.'
				
				];
			
			}
			
			, _fireSupportData, 98, false, true, "", format [_dangerCloseConditions, _typeText, _minRadius, _maxRadius, _unlockLevel, _munitionsCost]];


			_outOfRangeConditions = "
			
				!(BEW_v_fireMissionCooldown) and 
				(alive BEW_v_FireSupportArrow) and
				(_target distance2D BEW_v_FireSupportArrow > %3) and 
				!(player inArea BEW_v_HqSafeZoneMarker) and 
				(missionLevel >= %4) and
				((side player == WEST and (BEW_v_munitions >= %5)) or (side player == EAST and (BEW_v_munitions_EAST >= %5))) and 
				(vehicle player == player)
			
			";
	
			
			player addaction [_outOfRangeActionText, 	
			
			{
			
				'Out Of Range' hintC [ 
				
					'You cannot call this fire support at this position. The target is out of range.'
				
				];
				
			}
			
			, _fireSupportData, 98, false, true, "", format [_outOfRangeConditions, _typeText, _minRadius, _maxRadius, _unlockLevel, _munitionsCost]];
			
			
			_notEnoughMunitionsConditions = "
			
				!(BEW_v_fireMissionCooldown)
				and
				(alive BEW_v_FireSupportArrow) and
				!(player inArea BEW_v_HqSafeZoneMarker) and 
				(missionLevel >= %4) and
				!((side player == WEST and (BEW_v_munitions >= %5)) or (side player == EAST and (BEW_v_munitions_EAST >= %5))) and 
				(vehicle player == player) 
			
			";
			
			
			player addaction [_notEnoughMunitionsActionText, 	
			
			{
			
				'Not Enough Munitions' hintC [ 
				
					'You do not have enough munitions to call in this fire support. Complete more missions.'
				
				];
				
			}
			
			, _fireSupportData, 98, false, true, "", format [_notEnoughMunitionsConditions, _typeText, _minRadius, _maxRadius, _unlockLevel, _munitionsCost]];
	
		
		//", _typeText, _minRadius, _maxRadius, _unlockLevel, _munitionsCost];
		