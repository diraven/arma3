
	_debug = TRUE;
	
	if (_debug) then {systemchat "Defend Mission Spawner Running"};


	while {true} do {

		_currentMissionLevel = missionLevel;

		waitUntil {!(_currentMissionLevel == missionLevel)};
	
			_allCamps = [["Military"]] call BEW_FNC_DefineObjectives;
			_allBLUFORCamps	= _allCamps select {markerColor _x == "ColorBLUFOR"};
			
			if ((count _allBLUFORCamps) < 1) then {
			
				if (_debug) then {systemchat "No blufor camps"};
			
			}else{
			
				//if (random 100 > 75) then {
				if (true) then {
			
					// Select Blufor Camp
					
						_selectedBLUFORCamp = _allBLUFORCamps call BIS_FNC_SelectRandom;
						if (_debug) then {systemchat format ["%1 selected for defend mission", _selectedBLUFORCamp]};
					
					// Delete Previous Marker Icon
					
						_markerName = format ["%1_activeObjectiveIcon", _selectedBLUFORCamp];
						deleteMarker _markerName;

					// Start Defend Mission
	
						_randomMissionArray = [BEW_FNC_defendMission, "hd_warning", "Defend Mission", "ColorYellow", "Defend Mission", ["OPF_1", "OPF_2", "OPF_SOF"]];
						[_selectedBLUFORCamp, 200, _randomMissionArray] spawn BEW_FNC_defendMissionTrigger;
			
				}else{
				
					if (_debug) then {systemchat "No defend mission this time"};
				
				};
			
			};
		
	};
	
