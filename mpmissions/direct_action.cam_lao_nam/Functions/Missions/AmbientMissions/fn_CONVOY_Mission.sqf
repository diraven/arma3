if (BEW_V_Zombies) exitWith {};
if (count BEW_v_CampVehicleSpawnMarkers < 2) exitWith {};

private [

	"_militaryCamps", 
	"_enemyMilitaryCamps", 
	"_startCamp", 
	"_endCamp",
	"_type",
	"_veh",
	"_vehGroup",
	"_startSpawnMarker",
	"_startSpawnPos",
	"_endSpawnMarker",
	"_endSpawnPos",
	"_respawnDelay"

];


_respawnDelay = 300;


while {true} do {


// Define All Camps

	_militaryCamps = BEW_v_all_MainObjectives select {!(_x in BEW_v_currentActiveObjective)};


// Filter By Enemy Camps

	_enemyMilitaryCamps = _militaryCamps select {!(markerColor _x == "colorBLUFOR")};	


	if (count _enemyMilitaryCamps > 1) then {


			// Define Start 
			
				_startCamp = _enemyMilitaryCamps call BIS_FNC_SelectRandom;
				_startSpawnMarker = [BEW_v_CampVehicleSpawnMarkers, markerPos _startCamp] call BIS_fnc_nearestPosition;
				_startSpawnPos = markerPos _startSpawnMarker;


			// Remove Start From All Camps
			
				_enemyMilitaryCamps = _enemyMilitaryCamps - [_startCamp]; 
				

			// Define End
			
				_endCamp = (_enemyMilitaryCamps select {!(_x == _startCamp)}) call BIS_FNC_SelectRandom;
				_endSpawnMarker = [BEW_v_CampVehicleSpawnMarkers, markerPos _endCamp] call BIS_fnc_nearestPosition;
				_endSpawnPos = markerPos _endSpawnMarker;
			
			
			
			// Define Vehicle Types
			
				_vehicleTypes = ["TRUCK"] call OPF_1_VehList; 
			
			
			// Select Vehicle Type
			
				_type = _vehicleTypes call BIS_FNC_SelectRandom;
				
			
			// Create Vehicle
			
				private _convoyVehs = []; 
				private _convoyUnits = []; 

				private _convoyTypes = [ 
				 
					"O_Truck_02_covered_F", 
					"O_APC_Wheeled_02_rcws_v2_F", 
					"O_MRAP_02_gmg_F" 
				 
				]; 
				 
				{ 
				 
					_type = [_x] call BEW_fnc_translateClassNames;
					_vehArray = [_startSpawnPos, markerDir _startSpawnMarker, _type, east] call BIS_fnc_spawnVehicle;
					_veh = _vehArray select 0;
					_crew = _vehArray select 1;
					_group = _vehArray select 2;
					_crew joinSilent group (leader (_convoyVehs select 0));
					
					
					// Clear Vehicle

						clearMagazineCargoGlobal _veh;
						clearWeaponCargoGlobal _veh;
						clearBackpackCargoGlobal _veh;
						clearItemCargoGlobal _veh;
					

					_veh setVehiclePosition [_startSpawnPos, [], 0, "CAN_COLLIDE"];
					_startSpawnPos = _veh modelToWorld [0,-12,0]; 

					_convoyVehs = _convoyVehs + [_veh];

					{_convoyUnits = _convoyUnits + [_x]} forEach _crew;
				 
					sleep 1;
				 
				} forEach _convoyTypes;
			
			
			// Setup Target Veh
			
				_targetVehicle = (_convoyVehs select 0);
				_targetVehicleGroup = group driver _targetVehicle;
				_targetVehicle setDir markerDir _startSpawnMarker;
				_targetVehicle setVariable ["canPlaceExplosives", TRUE, TRUE];
				_targetVehicle setVariable ["IntelRecovered", false, true];
				[_targetVehicle] spawn BEW_FNC_gatherIntelAction;
				
				// Add Gear

					[_targetVehicle] call BEW_FNC_addRandomGearToContainer;


				// Supply Drop Variable

					_targetVehicle setVariable ["supplyDropCrate", TRUE, TRUE];
			
			
			
			// Eliminate Enemies Task
	
				_convoyTask = format ["supplyConvoyTask_%1", _targetVehicle];	
				_taskDescription = "Destroy the supply truck.";
				_taskTitle = "Destroy Supply Truck";
				
				[

					WEST, 
					[_convoyTask, "sideObjectives"],
					 
					[

					_taskDescription, 
					_taskTitle, 
					""

					], 

					_targetVehicle, 
					"CREATED", 
					-1, 
					true, 
					"destroy", 
					true

				] call BIS_fnc_taskCreate;
						
				
			// Waypoint
			
				_createWaypoints = {
				
					_targetVehicle = _this select 0;
					_targetVehicleGroup = _this select 1;
					_targetVehicleGroup setVariable ["Vcm_Disable",true];
					_endSpawnPos = _this select 2;
					_convoyVehs = _this select 3;
					_convoyUnits = _this select 4;
					
					
					while {(alive _targetVehicle) and (canMove _targetVehicle) and (alive leader _targetVehicleGroup)} do {
					
						_wp = _targetVehicleGroup addWaypoint [_endSpawnPos, 0];
						_wp setWaypointType "MOVE";
						_wp setWaypointFormation "FILE";
						_wp setWaypointSpeed "LIMITED";
						_wp setWaypointBehaviour "CARELESS";


						sleep 30;				
						
						for "_i" from count waypoints _targetVehicleGroup - 1 to 0 step -1 do
						{
							deleteWaypoint [_targetVehicleGroup, _i];
						};
						
						if (_targetVehicle inArea "safeZone_1") then {
						
							{_x setDamage 1} forEach _convoyVehs;
							{_x setDamage 1} forEach _convoyUnits;
						
						};						

					};
				
				};
				
				[_targetVehicle, _targetVehicleGroup, _endSpawnPos, _convoyVehs, _convoyUnits] spawn _createWaypoints;
				
				
			[HQ_WEST , "We have intel on an enemy supply vehicle on the move. Intercept and destroy the convoy."] remoteExec ["sideChat", 0];
			
			
			waitUntil {!(alive _targetVehicle) or (_targetVehicle distance2D _endSpawnPos < 100) or (WEST knowsAbout _targetVehicle > 0)};
			
				if (WEST knowsAbout _targetVehicle > 0) then {
				
					[HQ_WEST , "Okay you've located the convoy. Make sure to check it for intel and supplies before you destroy it."] remoteExec ["sideChat", 0];
				
				};
				
			waitUntil {!(alive _targetVehicle) or (_targetVehicle distance2D _endSpawnPos < 100)};
			
			
			if (!alive _targetVehicle) then {
			
				[HQ_WEST , "Well done! The supply vehicle has been destroyed."] remoteExec ["sideChat", 0];
				
				
				// Succeeded
				
					[_convoyTask, "SUCCEEDED"] call BIS_fnc_taskSetState;
					
					
				// Add Munitions
				
						[100] remoteExec ["BEW_FNC_addMunitions", 2];
					
			
			} else {
			
				[HQ_WEST , "The supply vehicle has reached it's destination. Better luck next time."] remoteExec ["sideChat", 0];
							
				// Succeeded
				
					[_convoyTask, "FAILED"] call BIS_fnc_taskSetState;
				
				{deleteVehicle _x} forEach _convoyVehs;
				{deleteVehicle _x} forEach _convoyUnits;
			
			
			};
			
				sleep _respawnDelay;
			
		//Clean Up
			
			{deleteVehicle _x} forEach _convoyVehs;
			{deleteVehicle _x} forEach _convoyUnits;

	};

};