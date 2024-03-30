	
	private ["_veh", "_vehGroup"];
	
	_centerPos 			= _this select 0;
	_objectiveMarker 	= _this select 1;
	_parentTask 		= _this select 2;
	_radius 			= _this select 3;
	_forceType 			= _this select 4;
	
	
	// Find Nearest Artillery Position
	
		_artilleryMarkersInArea = BEW_v_artillerySpawnMarkers select {markerPos _x distance2D _centerPos < _radius};


	// Cherk Arty Marker Exists
	
		if (count _artilleryMarkersInArea > 0) then {

			_selectedArtyIcon = (_artilleryMarkersInArea select 0);
			_artySpawnPos = markerPos _selectedArtyIcon;
			_artySpawnDir = markerDir _selectedArtyIcon;

			// Define Artillery

				_artyTypes = [ 
				 
					"O_Mortar_01_F"
				 
				]; 
			
				_artyType = _artyTypes call BIS_FNC_SelectRandom;
			
			
			// Translation List
			
				_transList = call compile format ["
				
					_transList = [[OPF_1_Map_TransList, %1_New_TransList]];
					
					_transList
					
				", _forceType];
			
			
			// Translate Arty Type
			
				_artyType = [_artyType, _transList] call BEW_FNC_TranslateClassNames;
			
			
			// Create Target Artillery
			
				_veh = objNull;
				_veh = createVehicle [_artyType, _artySpawnPos, [], 0, "NONE"];
				_veh setDir _artySpawnDir;
			
			
			// Spawn Crew
			
				_tempArtyGroup = [_veh, EAST, _forceType] call BEW_FNC_createTranslatedVehicleCrew; 
				_tempArtyGroup deleteGroupWhenEmpty delete;
				
				
				// Create New Group
				
					_vehGroup = createGroup [EAST, true];
					
					{
					
						[_x] joinSilent _vehGroup;
					
					} forEach units _tempArtyGroup;
							
			
			// Setup Target Artillery

				_veh setVariable ["canPlaceExplosives", TRUE, TRUE];
				_veh enableWeaponDisassembly false;
				
				
			// Create Task
		
				private _killArtytask = format ["destroyArty_%1", _veh];	
				_taskDescription = format ["Destroy the enemy artillery emplacement.", _objectiveText];
				_taskTitle = format ["Destroy Emplacement", _objectiveText];
				
				[

					WEST, 
					[_killArtytask, _parentTask],
					 
					[

					_taskDescription, 
					_taskTitle, 
					_objectiveMarker

					], 

					_veh, 
					"CREATED", 
					-1, 
					false, 
					"destroy", 
					true

				] call BIS_fnc_taskCreate;
			
				
			// Check Arty Destroyed

				[_veh, _vehGroup, _selectedArtyIcon, _objectiveMarker, _killArtytask] spawn {
				
					_veh = _this select 0;
					_vehGroup = _this select 1;
					_selectedArtyIcon = _this select 2;
					_objectiveMarker = _this select 3;
					_killArtytask = _this select 4;
				
					waitUntil {(!alive _veh) or (BEW_v_objectiveMissionCancelled)};
							
						if (BEW_v_objectiveMissionCancelled) exitWith {
					
							[_killArtytask, "FAILED"] call BIS_fnc_taskSetState;
							deleteVehicle _veh;
						
						};
					
					// Complete Task
					
						[_killArtytask, "SUCCEEDED"] call BIS_fnc_taskSetState;
					
						
						if !(_objectiveMarker in BEW_v_allCancelledObjectives) then {
						
							[HQ_WEST , 'Great job. The emplacement is out of action.'] remoteExec ['sideChat', 0];
							
						};
						
						_selectedArtyIcon setMarkerSize [0.5, 0.5];
						_selectedArtyIcon setMarkerColor 'colorOPFOR';
						_selectedArtyIcon setMarkerType 'KIA';
						_selectedArtyIcon setMarkerText '';
						_selectedArtyIcon setMarkerDir 0;
						
					waitUntil {!(BEW_v_objectiveMissionActive)};
						
						
					// Clean Up
						
						deleteVehicle _veh;
						{deleteVehicle _x} forEach units _vehGroup;
						deleteMarker _selectedArtyIcon;
						
				};
		
		}else{
		
			_veh = objNull;
			_vehGroup = createGroup [EAST, true];
			
		};
	
		_returnArray = [_veh, _vehGroup];
		
		_returnArray