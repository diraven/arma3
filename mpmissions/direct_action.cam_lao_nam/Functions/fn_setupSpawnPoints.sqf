
	if (!isServer) exitWith {};
	if (isNil "BEW_v_spawnPointsSet") then {BEW_v_spawnPointsSet = FALSE};
	if (BEW_v_spawnPointsSet) exitWith {};
	
	private ["_side"];

	_side = param [0, west];
	_allArrows = param [1, (BEW_v_SpawnArrows - BEW_v_alliedRespawnArrows)];
	
	{	
	
		_arrow = _x;
		_spawnPointName = _arrow getVariable ["spawnPointName", "Spawn Point"];
		_markerText = " " + _spawnPointName;
		
		if !((BEW_v_Zombies) and (_arrow in BEW_v_AirArrows)) then {
		
			if !(((BEW_v_WW2) or (BEW_v_Zombies)) and (_arrow in BEW_v_HeliArrows)) then {
				
					if !(((BEW_v_WW2) or (BEW_v_Vietnam) or (BEW_v_ColdWar) or (BEW_v_Zombies)) and (_arrow in BEW_v_DroneArrows)) then {

						[_side, [getpos _arrow select 0, getpos _arrow select 1, 0], _spawnPointName] call BIS_fnc_addRespawnPosition;
						
						_markerName = format ["spawnPointMarker_%1", _arrow];
						
						_marker = createMarker [_markerName, getPos _arrow];
						_marker setMarkerType "respawn_inf";
						_marker setMarkerShape "ICON";
						_marker setMarkerText _markerText;
						_marker setMarkerSize [0.5, 0.5];
						_marker setMarkerAlpha 0.35;
			
					};
				
			};
			
		};
	
		sleep 1;
	
	} forEach _allArrows;
		
	BEW_v_spawnPointsSet = TRUE;
