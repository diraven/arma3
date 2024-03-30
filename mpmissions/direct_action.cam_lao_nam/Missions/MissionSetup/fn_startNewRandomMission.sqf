	
	_allObjectives = getMissionLayerEntities "allObjectiveMarkers" select 1; 

	_enemyObjectives = _allObjectives select {!(markerColor _x == "colorBLUFOR")};

	_selectedObjective = _enemyObjectives call BIS_FNC_SelectRandom;

	[_selectedObjective] execVM "missions\fn_captureMission.sqf";