
	{
	
		// Play Area Marker
		
			_objectiveMarker = _x;
			_markerRadius = (markersize _objectiveMarker) select 0;
			_objectivePos = markerPos _objectiveMarker;
			_objectiveText = markerText _objectiveMarker;
			
			
			_markerColor = switch (_objectiveMarker) do {
			
				case BEW_v_ConflictWestHQ	:	{"ColorBLUFOR"};
				case BEW_v_ConflictEastHQ	:	{"ColorOPFOR"};
				default	{"ColorGUER"};
				
			};
			
			_playAreaIconType = switch (_objectiveMarker) do {
			
				case BEW_v_ConflictWestHQ	:	{BLU_MarkerIcon};
				case BEW_v_ConflictEastHQ	:	{OPF_1_MarkerIcon};
				default	{IND_1_MarkerIcon};
				
			};
			
			_objectiveMarker setMarkerColor _markerColor;
			_objectiveMarker setMarkerBrush "FDiagonal";
		
		// Play Area Icon
		
			_markerText = " " + _objectiveText;	
			_markerName = format ["%1_Icon", _objectiveMarker];
			_playAreaIcon = createMarker [_markerName, _objectivePos];
			_playAreaIcon setMarkerColor "default";
			_playAreaIcon setMarkerType _playAreaIconType;
			_playAreaIcon setMarkerText _markerText;
			
			if (_objectiveMarker in BEW_v_all_MainObjectives) then {
				
				_playAreaIcon setMarkerSize [0.75, 0.75];
				
			}else{
			
				_playAreaIcon setMarkerSize [0.5, 0.5];
				
			};
			
			_playAreaIcon call BEW_FNC_fixMarkerSize;
			
		
		// Create Tower
			_spawnPos = [_objectivePos, [1, 50], 4, 0, 0] call BEW_FNC_findRandomEmptyPosition;			
			_tower = createVehicle ["Land_Communication_F", _spawnPos, [], 0, "NONE"];
			_tower setVectorUp [0,0,1];
			_tower setDir random 360;
			
			_flagSide = switch (_objectiveMarker) do {
			
				case BEW_v_ConflictWestHQ	:	{WEST};
				case BEW_v_ConflictEastHQ	:	{EAST};
				default	{resistance};
				
			};
			
			_tower setVariable ["flagSide", _flagSide, true];
				
	} forEach BEW_v_all_Objectives;