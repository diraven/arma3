convertedObjects = [];

{
	if (isNil {_x getVariable "preventSimple"}) then {
		private _interiorPositions = [];
		_interiorPositions = [_x] call BIS_fnc_buildingPositions;
		if (count _interiorPositions isEqualTo 0) then {
			if (lightIsOn _x != "ON" && lightIsOn _x != "AUTO") then {
				private _position = getPosWorld _x;
				private _vectorDirUp = [vectorDir _x, vectorUp _x];
				private _model = getModelInfo _x select 1;
				deleteVehicle _x;
				private _simpleObj = createSimpleObject [_model, _position];
				_simpleObj setVectorDirAndUp _vectorDirUp;
				convertedObjects = convertedObjects + [_x];
			};
		};
	};
} forEach (( allMissionObjects "building" - allMissionObjects "StreetLamp" ) select {
	!isClass( configFile >> "CfgVehicles" >> typeOf _x >> "UserActions" ) &&
	( getArray( configFile >> "CfgVehicles" >> typeOf _x >> "ladders" ) isEqualTo [] ) 
});
﻿
// add this command to the object's init to prevent it from going simple:
// this setVariable ["preventSimple", true];
// use this command to count how many objects were turned into simple objects by the script:
// count convertedObjects;
// for obvious reasons the script will not turn into simple objects the following objects:
// 1) Objects that have interiors 2) Objects that emmit light 3) Objects that have user acctions such as ladders, gates, street barriers etc.