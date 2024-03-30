	
	_plyr = param [0],
	_newType = param [1],
	_missionLevel = param [2, 1];
	_faction = param [3, "BLU"];
	_respawnDelay = param [4, 30];
	
	
	// Dynamically Select Spawn Pos 
     
     _minDistance = markerSize "wholeMapMarker" select 0; 
     //_minDistance = 1000;  
     _maxDistance = _minDistance + 1000; 
     
     _spawnPos = [markerPos "wholeMapMarker", [_minDistance, _maxDistance], random 360, 1, [0], 10] call SHK_pos;

	// Get Dir To Map Center
	
		_spawnDir = [_spawnPos, markerPos "wholeMapMarker"] call BIS_fnc_dirTo;
	
	
	// Spawn In Flight If No Runway Marker
			
		_veh = createVehicle [_newType, _spawnPos, [], 0, "FLY"];
		
		
		// Add To Global Variable
		
			BEW_v_ActiveSpawnInPlanes pushBack _veh;
				publicVariable "BEW_v_ActiveSpawnInPlanes";
		
		
		// Wait Until Aircraft Dead
			
				[_veh, _respawnDelay] spawn {
				
					_veh = _this select 0;
					_respawnDelay = _this select 1;
			
			
					waitUntil {!alive _veh};
			
			
					// Flip Respawn Delay Flag
					
						BEW_v_spawnInPlaneRespawnDelay = TRUE;
							publicVariable "BEW_v_spawnInPlaneRespawnDelay";
			
			
					// Remove From Active Drones Array

						BEW_v_ActiveSpawnInPlanes = BEW_v_ActiveSpawnInPlanes - [_veh];
							publicVariable "BEW_v_ActiveSpawnInPlanes";
							
							
						sleep _respawnDelay;
					
					
					// Flip Respawn Delay Flag
					
						BEW_v_spawnInPlaneRespawnDelay = FALSE;
							publicVariable "BEW_v_spawnInPlaneRespawnDelay";
	
				};
				
		
		
		// Set Starting Altitude
		
			_veh setPos [_spawnPos select 0, _spawnPos select 1, 300];
	
	
		// Textures

			// Get Textures

				_textureListArray = [typeOf _veh, _faction] call BEW_FNC_getTextureList;
					_textureList = _textureListArray select 0;
					_customFactionTextures = _textureListArray select 1;
			
			
			// Set Textures

				[_veh, _textureList] call BEW_FNC_setVehicleTextures;
				
				
				
				// Textures

		// Get Textures

			_textureListArray = [typeOf _veh, _faction] call BEW_FNC_getTextureList;
				_textureList = _textureListArray select 0;
				_customFactionTextures = _textureListArray select 1;
		
		
		// Set Textures

			[_veh, _textureList] call BEW_FNC_setVehicleTextures;
		

		// Setup Vehicle
			
			_veh enableCopilot false;
			_veh setVariable ["canRespawn", true, true];
			_veh setVariable ['QS_ST_drawEmptyVehicle',TRUE,TRUE];
			_veh setVariable ["canUnload", TRUE, TRUE];
			_veh setVariable ["originalType", _newType, true];
			
			if (_veh isKindOf "StaticWeapon") then {
			
				_veh enableWeaponDisassembly false;
				_veh setVariable ["BEW_V_CanCarry", TRUE, TRUE];
			
			};
							
				
		// Clear Vehicle

			clearMagazineCargoGlobal _veh;
			clearWeaponCargoGlobal _veh;
			clearBackpackCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			

		// Setup Turret Weapons

			[_veh] call BEW_FNC_customVehicleWeapons;
			
			
		// Turret Weapon Restrictions
			
			_restrictionList = ["UK3CB_BAF_Safe"];
			
			[_veh, _restrictionList] spawn BEW_FNC_restrictedTurretWeapons;


		// 3CB Weapon Ammo Fix

			_authorFromConfig = getText (configfile >> "CfgVehicles" >> typeOf _veh >> "author");
							
				if (_authorFromConfig == "www.3commandobrigade.com") then {

					[_veh] spawn BEW_FNC_3CBturretAmmoFix;

				};	
				
				
		// Optre Ammo Fix
			
			if ((isClass(configfile >> "CfgMods" >> "OPTRE")) and (isClass(configfile >> "CfgMods" >> "OPTRE_FC")) and !(BEW_v_ForceVanilla)) then {
			
				[_veh] call BEW_FNC_OPTREturretAmmoFix;
			
			};

			
		// Setup Pylon Loadouts

			if (_veh isKindOf 'air') then {
				
				[_veh] spawn BEW_FNC_customPylonLoadouts;

			};		
		
	
		// Lock Warning Action

			if (!(BEW_V_airSuperiority) and !(missionlevel >= _missionLevel)) then {

				call compile format ["

					[%1,
					
					[""<t color='#FF0000'>VEHICLE LOCKED - MISSON LEVEL %2 REQUIRED"", 	
					
					{
					}
					
					, [], 97, true, true, """", ""(_this distance _target < 10) && !(locked _target == 0)"" ]
					
					] remoteexec [""addaction"", 0, true];
						
				",_veh, _missionLevel];
			
			};		
		
		
		// Get and Set Spawn Dir

			_veh setDir _spawnDir;
			
					
		// Set Velocity
			
			_veh setVelocityModelSpace [0, 100, 0];
				
			
		// Move Player In
		
			[_plyr, _veh] remoteExec ["moveInDriver", _plyr];