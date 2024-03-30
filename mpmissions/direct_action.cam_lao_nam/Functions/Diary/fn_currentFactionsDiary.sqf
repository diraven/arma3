
	waitUntil {!(isNil "BEW_v_CurrentlyActiveFactions")};
	
	private [
		
		"_message",
		"_bluMessage",
		"_indMessage",
		"_redMessage"
	
	];

	
	// Create Initial Diary Entry
		
		if !(player diarySubjectExists "Active Factions") then {
		
			BEW_v_activeFactionsDiarySubject = player createDiarySubject ["Active Factions", "Active Factions"];	
		
		};
	
	
		// Filter BLU Factions
		
			private _bluFactions = [];
			
			{
				
				_factionType = _x select 0;
				_factionName = _x select 1;
				_side = _x select 2;
				_markerIcon = _x select 3;
				_noOfCamps = _x select 4;
				 
				if (_side == WEST) then{
									
					_bluFactions = _bluFactions + [[_factionType, _factionName, _side, _markerIcon, _noOfCamps]];
				
				};
			
			} forEach BEW_v_CurrentlyActiveFactions;
			
			
		// Filter IND Factions
		
			private _indFactions = [];
			
			{
				
				_factionType = _x select 0;
				_factionName = _x select 1;
				_side = _x select 2;
				_markerIcon = _x select 3;
				_noOfCamps = _x select 4;
				 
				if (_side == resistance) then{
									
					_indFactions = _indFactions + [[_factionType, _factionName, _side, _markerIcon, _noOfCamps]];
				
				};
			
			} forEach BEW_v_CurrentlyActiveFactions;
			
			
		// Filter OPF Factions
		
			private _opfFactions = [];

			{
				
				_factionType = _x select 0;
				_factionName = _x select 1;
				_side = _x select 2;
				_markerIcon = _x select 3;
				_noOfCamps = _x select 4;
				 
				if (_side == EAST) then{
									
					_opfFactions = _opfFactions + [[_factionType, _factionName, _side, _markerIcon, _noOfCamps]];
				
				};
							
			} forEach BEW_v_CurrentlyActiveFactions;
					

			// Blufor factions
		
				_bluMessage = "<font size = '25' color = '#FFFFF'><br />" + "Friendly " + "Factions<br /><br />";
				
				private _allFactionNames = [];
				
				for "_i" from 0 to (count _bluFactions - 1) do {
					
					_selectedFaction = _bluFactions select _i;
					
					_factionType = _selectedFaction select 0;
					_factionName = _selectedFaction select 1;
					_side = _selectedFaction select 2;
					_markerIcon = _selectedFaction select 3;
					_noOfCamps = _selectedFaction select 4;
										
						if ((_noOfCamps > 0) or (_selectedFaction select 0 == "BLU")) then {
							
							// Set ID
							
								_id = _i + 1;
								
							// Get Flag Texture
							
								_flagTexture = [_factionType] call BEW_FNC_GetFlagTexture;
										
							// Compose Text
							
								_bluMessage = _bluMessage + format ["<img width='32' height='18' image='%1'/>", _flagTexture];
								
								if (_i == 0) then {
									_bluMessage = _bluMessage + " ";
								}else{
									_bluMessage = _bluMessage + "  ";
								};
								
								_bluMessage = _bluMessage + "<font size = '15' color = '#ADD8E6'>" + "<font size = '15' color = '#FFFFFF'>" + _factionName;
								
								if (_selectedFaction select 0 == "BLU") then {
								
									_bluMessage = _bluMessage + "<font size = '15' color = '#00FF00'>" + " (MAIN)";
								
								}else{
									
									if (toUpper (_selectedFaction select 0) in (BEW_v_UnlockedFactions apply {toUpper _x})) then {
									
										_bluMessage = _bluMessage + "<font size = '15' color = '#00FF00'>" + " (UNLOCKED)";
										
									}else{
										
										_bluMessage = _bluMessage + "<font size = '15' color = '#FF0000'>" + " (LOCKED)";
									
									};
								
								};
									
								// Line Space
									
									_bluMessage = _bluMessage + "<br /><br />";
						
						};
							
					_allFactionNames pushBackUnique _factionName;	
					
					
				};
			
				_bluMessage = _bluMessage + "<br />";

				
				
				
			// INDFOR factions
		
				private _indMessage = "<font size = '25' color = '#FFFFF'><br />" + "Allied " + "Factions<br /><br />";
				
				for "_i" from 0 to (count _indFactions - 1) do {
					
					_selectedFaction = _indFactions select _i;
					
					_factionType = _selectedFaction select 0;
					_factionName = _selectedFaction select 1;
					_side = _selectedFaction select 2;
					_markerIcon = _selectedFaction select 3;
					_noOfCamps = _selectedFaction select 4;
					
					_flagTexture = [_factionType] call BEW_FNC_GetFlagTexture;
					
					_id = _i + 1;
												
					_indMessage = _indMessage + format ["<img width='32' height='18' image='%1'/>", _flagTexture];
					
					if (_i == 0) then {
						_indMessage = _indMessage + " ";
					}else{
						_indMessage = _indMessage + "  ";
					};
												
					_indMessage = _indMessage + "<font size = '15' color = '#00FF00'>" + "<font size = '15' color = '#FFFFFF'>" + _factionName + "<br /><br />";
					
				};
				
				_indMessage = _indMessage + "<br />";

				
				
				
			// OPFOR factions
		
				private _opfMessage = "<font size = '25' color = '#FFFFF'><br />" + "Enemy " + "Factions<br /><br />";
				
				private _allFactionNames = [];
				
				for "_i" from 0 to (count _opfFactions - 1) do {
					
					_selectedFaction = _opfFactions select _i;
					
					_factionType = _selectedFaction select 0;
					_factionName = _selectedFaction select 1;
											
					if !(_factionName in _allFactionNames) then {
					
						_side = _selectedFaction select 2;
						_markerIcon = _selectedFaction select 3;
						_noOfCamps = _selectedFaction select 4;
						
						_flagTexture = [_factionType] call BEW_FNC_GetFlagTexture;
						
						_id = _i + 1;
													
						_opfMessage = _opfMessage + format ["<img width='32' height='18' image='%1'/>", _flagTexture];
						
						if (_i == 0) then {
							_opfMessage = _opfMessage + " ";
						}else{
							_opfMessage = _opfMessage + "  ";
						};
						
						_opfMessage = _opfMessage + "<font size = '15' color = '#FF0000'>" + "<font size = '15' color = '#FFFFFF'>" + _factionName;
						
						if (_i < (count _opfFactions - 1)) then {
						_opfMessage = _opfMessage + "<br /><br />";
						};
					
					};
					
					_allFactionNames pushBackUnique _factionName;
					
				};
							
				
				
			// Create Diary Entries
				
				// Trim Excess Breaks At End
		
					//_opfMessage = _opfMessage trim ["<br />", 1];
					
			
				// Remove Old Diary Entry

					if !(isNil "BEW_v_OPFFactionsDiaryEntry") then {

						player removeDiaryRecord ["Active Factions", BEW_v_OPFFactionsDiaryEntry];

					};

				
				// Create New Diary Entry
				
					BEW_v_OPFFactionsDiaryEntry = player createDiaryRecord ["Active Factions", ["Enemy Factions", format ["%1", _opfMessage]]];
	
		
		
		
		
		/*
				// Remove Old Diary Entry

					if !(isNil "BEW_v_INDFactionsDiaryEntry") then {

						player removeDiaryRecord ["Active Factions", BEW_v_INDFactionsDiaryEntry];

					};

				
				// Create New Diary Entry
				
					BEW_v_INDFactionsDiaryEntry = player createDiaryRecord ["Active Factions", ["INDFOR Factions", format ["%1", _indMessage]]];
					
		*/
				
				
				// Trim Excess Breaks At End
		
					_bluMessage = _bluMessage trim ["<br />", 2];
					
					
				// Remove Old Diary Entry

					if !(isNil "BEW_v_BLUFactionsDiaryEntry") then {

						player removeDiaryRecord ["Active Factions", BEW_v_BLUFactionsDiaryEntry];

					};

				
				// Create New Diary Entry
				
					BEW_v_BLUFactionsDiaryEntry = player createDiaryRecord ["Active Factions", ["Friendly Factions", format ["%1", _bluMessage]]];
