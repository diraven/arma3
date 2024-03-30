BEW_v_CruiseMissileHelipads = getMissionLayerEntities "cruiseMissileBatteries" select 0;

if !(isNil "BEW_v_CruiseMissileBatteries") then {

	{
	
		BEW_v_CruiseMissileBatteries = BEW_v_CruiseMissileBatteries - [_x];
		deleteVehicle _x;

	} forEach BEW_v_CruiseMissileBatteries;

};

BEW_v_CruiseMissileBatteries = [];

{

	_helipad = _x; 
	   
	_batteryType = "B_Ship_MRLS_01_F"; 
	_batteryPos = getPosASL _helipad; 
	_batteryDir = getDir _helipad; 
   
	_battery = createVehicle [_batteryType, _batteryPos, [], 0, "CAN_COLLIDE"]; 
	_battery allowDamage false;
	_battery enableSimulation true; 
	_battery setVehicleLock "LOCKED";  
	_battery setVehiclePosition [_batteryPos, [], 0, "CAN_COLLIDE"]; 
	_battery setDir _batteryDir;	
	_nearestHelipad = [BEW_v_CruiseMissileHelipads, _battery] call BIS_fnc_nearestPosition;
	_battery attachTo [_nearestHelipad, [0, 0, 1.4]];
	
	
	_allObjects = nearestObjects [_battery, [], 100];
	_submarines = _allObjects select {typeOf _x == "Submarine_01_F"};
	_optreFrigates = _allObjects select {typeOf _x == "OPTRE_Frigate_UNSC"};

	if ((count _submarines > 0) or (count _optreFrigates > 0)) then {_battery hideObjectGlobal true};
	
	BEW_v_CruiseMissileBatteries = BEW_v_CruiseMissileBatteries + [_battery];
	
} forEach BEW_v_CruiseMissileHelipads;