

	// By Phronk - Adapted by BillyEatWorld

	_this select 0 addEventHandler["FiredNear",{
	_civ=_this select 0;		
	
		// Set Fleeing Variable
		
			_civ setVariable ["civFleeing", TRUE, TRUE];
		  
		  switch (floor random 3) do {
		  
			  case 0	:	{_civ switchMove "ApanPercMstpSnonWnonDnon_G01"; _civ setSpeedMode "FULL"; _civ forceSpeed (_civ getSpeed "FAST");};
			  case 1	:	{_civ playMoveNow "ApanPknlMstpSnonWnonDnon_G01"; _civ setSpeedMode "FULL"; _civ forceSpeed (_civ getSpeed "FAST");};
			  case 2	:	{_civ playMoveNow "ApanPpneMstpSnonWnonDnon_G01"; _civ setSpeedMode "FULL"; _civ forceSpeed (_civ getSpeed "FAST");};
			  default 		{_civ playMoveNow "ApanPknlMstpSnonWnonDnon_G01"; _civ setSpeedMode "FULL"; _civ forceSpeed (_civ getSpeed "FAST");};
		  
		  };		

		//nearestObjects[ PositionOrTarget, ["List","Of","Classnames","To","Look","For"], MaxDistanceToSearchAroundTarget ];
		
		_allBuildings = nearestObjects [_civ, ["house"], 100];
		_buildingsWithPositions = _allBuildings select {count ([_x] call BIS_fnc_buildingPositions) > 0};

		_selectedBuilding = selectRandom _buildingsWithPositions;//Pick an object found in the above nearestObjects array		

		_selectedPosition = _selectedBuilding buildingPos -1;//Finds list of all available building positions in the selected building		

		_selectedPosition = selectRandom _selectedPosition;//Picks a building position from the list of building positions		

		_civ moveTo _selectedPosition;//Orders the civilian to move to the building position		

		//Remove the eventHandler to prevent spamming
		_civ removeAllEventHandlers "FiredNear";}];
