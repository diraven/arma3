if (BEW_v_Zombies) exitWith {};

	_plyr = _this select 0;
	
	_plyr addEventHandler ["FiredMan", {  

		params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"]; 

		_safeZoneMarkers = getMissionLayerEntities "Camps" select 1; 

		{

			if (((vehicle player inArea _x) or (player inArea _x)) and (isTouchingGround vehicle player) and !(triggerActivated baseAATrigger) and (UAVControl (getConnectedUAV player) select 1 == "")) then {

				hintc "DISCHARGING A WEAPON IS NOT ALLOWED AT BASE";

				deletevehicle _projectile;

			};

		} forEach _safeZoneMarkers;

	}];
