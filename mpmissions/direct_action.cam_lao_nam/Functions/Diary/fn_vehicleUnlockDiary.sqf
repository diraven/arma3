	
	waitUntil {!(isNil "BEW_v_VehicleUnlockList_WEST")};
	
	private [
	
		"_message"
	
	];

	
	// Create Initial Diary Entry
		
		if !(player diarySubjectExists "Unlock Progression") then {
		
			BEW_v_unlockDiarySubject = player createDiarySubject ["Unlock Progression", "Unlock Progression"];	
		
		};
	
		_message = "<font size = '25' color = '#FFFFF'><br />VEHICLE UNLOCKS<br /><br />";
		
		
		for "_i" from 1 to 10 do {
			
			if (count (BEW_v_VehicleUnlockList_WEST select {_x select 1 == _i}) > 0) then {
			
				_message = _message + "<font size = '25' color = '#FFFFFF'>" + format ["LEVEL %1", _i] + "<br /><br />";
				
				{
					
					_vehDataArray = _x;
					_type = _vehDataArray select 0;
					_missionLevel = _vehDataArray select 1;
					_faction = _vehDataArray select 2;
					
					_displayName = [_type] call BEW_FNC_GetDisplayName;
					
				
					if (_missionLevel == _i) then {
					
						if (_missionLevel <= missionLevel) then {
							
							_message = _message + "<font size = '15' color = '#00FF00'>";
							
						}else{
						
							_message = _message + "<font size = '15' color = '#FF0000'>";
						
						};
					
						_message = _message + _displayName + "<br />";
					
					};
				} forEach BEW_v_VehicleUnlockList_WEST;
			
				_message = _message + "<br /><br />";
			
			};
			
		};
		
		// Trim Excess Breaks At End
		
			_message = _message trim ["<br />", 2];
		
		
		// Remove Old Diary Entry

			if !(isNil "BEW_v_unlockDiaryVehicleEntry") then {

				player removeDiaryRecord ["Unlock Progression", BEW_v_unlockDiaryVehicleEntry];

			};


		// Create New Diary Entry
		
			BEW_v_unlockDiaryVehicleEntry = player createDiaryRecord ["Unlock Progression", ["Vehicle Unlocks", format ["%1", _message]]];
	
