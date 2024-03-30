
private ["_marker", "_markerType", "_markerSize"];

	_marker = _this;
	_markerType = markerType _marker;
	_markerSize = markerSize _marker;
	
	switch (true) do {
		
		case (_markerType == "rhssaf_flag_serbia")		: 	{_marker setMarkerSize [_markerSize select 0, (_markerSize select 1) * 0.666]};
		case (_markerType == "Faction_CUP_CHDKZ")		: 	{_marker setMarkerSize [_markerSize select 0, (_markerSize select 1) * 0.5]};
		case (_markerType == "LIB_Faction_WEHRMACHT")	: 	{_marker setMarkerSize [_markerSize select 0, (_markerSize select 1) * 0.55]};
		case (_markerType == "LIB_Faction_RKKA")	: 	{_marker setMarkerSize [_markerSize select 0, (_markerSize select 1) * 0.7]};
		
	};
