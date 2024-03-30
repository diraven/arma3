private ["_allTurrets"];

// Define Turrets

_turretTypes = [
  "OPTRE_Corvette_M910_Turret",
  "OPTRE_Corvette_archer_system",
  "OPTRE_Corvette_M910_Turret_u"
];
_liftTypes = [
  'OPTRE_Hangar_Lift'
];


// Define All Corvettes

	_allCorvettes = getMissionLayerEntities "OPTRECorvettes" select 0;
	
	if (isNil "_allCorvettes") exitWith {};
	
// Define Arrays

	_allTurrets = [];
  _allLifts = [];


// Find Nearest Turrets on Corvettes

	{

		_corvette = _x;

		_nearTurrets = nearestObjects [getPosATL _corvette, _turretTypes, 150];
	   _nearLift = nearestObjects [getPosATL _corvette, _liftTypes, 150];
		_allTurrets append _nearTurrets;
    _allLifts append _nearLift;

	} forEach _allCorvettes;

// Replace with Simple Object

  {
    _turret = _x;
    {
      _turret deleteVehicleCrew _x;
    } forEach crew _turret;
    [_turret, true] call QS_fnc_simpleObjectReplaceWith;

  } forEach _allTurrets;

  {
    deleteVehicle _X;
  } forEach _allLifts
