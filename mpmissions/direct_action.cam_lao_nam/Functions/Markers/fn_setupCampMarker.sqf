
	private ["_areaMarker", "_faction", "_color", "_iconText"];
	
	_areaMarker = param [0];
		_markerPos = markerPos _areaMarker;
		_markerSize = markerSize _areaMarker;
		_markerText = markerText _areaMarker;
		
	_faction = param [1, "BLU"];
	
	if (_markerText == "") then {
	
		_markerText = call compile format ["
		%1_FactionName
		", _faction];
		
		if (typeName _markerText == "ARRAY") then {
			
			_markerText = _markerText select 0;
			
		};
		
		_markerText = _markerText + " Camp";
	
	};
	
	_showAreaMarker = param [2, TRUE];
	_showIconMarker = param [3, TRUE];
	_iconText = param [4];
	_color = param [5];
	_iconScale = param [6, [0.5, 0.5]];
	
	// Default Color
	
		if (isNil "_color") then {
		
			_color = switch (toUpper _faction) do {
			
				case "BLU"		:	{"colorBLUFOR"};
				case "BLU_ALT"	:	{"colorBLUFOR"};
				case "BLU_SOF"	:	{"colorBLUFOR"};
				case "OPF_1"	:	{"colorOPFOR"};
				case "OPF_2"	:	{"colorOPFOR"};
				case "OPF_3"	:	{"colorOPFOR"};
				case "OPF_SOF"	:	{"colorOPFOR"};
				case "IND_1"	:	{"colorIndependent"};
				case "IND_2"	:	{"colorIndependent"};
				case "REBEL_1"	:	{"colorIndependent"};
				case "REBEL_2"	:	{"colorIndependent"};
				
				default {"ColorCIV"};
			
			};
		
		};
	
	// Default Icon Text
	
		if (isNil "_iconText") then {
		
			_iconText = _markerText;
		
		};
	
		_iconText = " " + _iconText;
		
	
	// Setup Area Marker
	
		_areaMarker setMarkerShape "ELLIPSE";
		_areaMarker setMarkerBrush "FDiagonal";
		_areaMarker setMarkerSize [_markerSize select 0, _markerSize select 1];
		
		if (_showAreaMarker) then {
		
			_areaMarker setMarkerAlpha 0.8;
		}else{
		
			_areaMarker setMarkerAlpha 0;
		
		};
		
		_areaMarker setMarkerColor _color;
		
	
	// Define Icon Type
					
		_campMarkerType = call compile format ["
		
			_origMarkerType = %1_MarkerIcon;
			_campMarkerType = [_origMarkerType] call BEW_FNC_TranslateClassNames;
			_campMarkerType
		
		", toUpper _faction];	
	
	
	// Create Marker Icon
		
		_iconMarkerName = format ["alliedCampIcon_%1", _areaMarker];
		
		if !(getMarkerColor _iconMarkerName == "") then {deleteMarker _iconMarkerName};
		
		_iconMarkerName = createMarker [_iconMarkerName, _markerPos];
		_iconMarkerName setMarkerType _campMarkerType;
		_iconMarkerName setMarkerColor "default";
		_iconMarkerName setMarkerText _iconText;
		
		if (_showIconMarker) then {
		
			_iconMarkerName setMarkerAlpha 1;
		
		}else{
		
			_iconMarkerName setMarkerAlpha 0;
		
		};
		
		_iconMarkerName setMarkerSize _iconScale;
		_iconMarkerName call BEW_FNC_fixMarkerSize;