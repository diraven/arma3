
if (isClass(configfile >> "CfgMods" >> "vn")) exitWith {};

_uavSpawnArrows = getMissionLayerEntities "UAVrespawnArrows" select 0;
_allCampMarkers = getMissionLayerEntities "Camps" select 1;

BEW_v_uavSpawnMarkers = [];
	publicVariable "BEW_v_uavSpawnMarkers";
	
BEW_v_uavSpawnHelipads = [];
	publicVariable "BEW_v_uavSpawnHelipads";

{

	_centerPos = getPosASL _x;
	_centerDir = getDir _x;
	
	_nearestObjectiveMarker = [_allCampMarkers, _centerPos] call BIS_fnc_nearestPosition;
	_markerText = markerText _nearestObjectiveMarker;

	_markerName = format ["%1_Marker", _x];
	_marker = createMarker [_markerName, _centerPos];
	_marker setMarkerType "empty";
	_marker setMarkerText _markerText;
	_marker setMarkerDir _centerDir;
	
	BEW_v_uavSpawnMarkers = BEW_v_uavSpawnMarkers + [_marker];
		publicVariable "BEW_v_uavSpawnMarkers";
	
	_heliPad = createVehicle ["Land_HelipadEmpty_F", _centerPos, [], 0, 'CAN_COLLIDE']; 
	_heliPad setDir _centerDir;
	
	BEW_v_uavSpawnHelipads = BEW_v_uavSpawnHelipads + [_heliPad];
		publicVariable "BEW_v_uavSpawnHelipads";

	deleteVehicle _x;

} forEach _uavSpawnArrows;
