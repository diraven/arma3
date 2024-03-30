	
	private [
		
		"_veh",
		"_faction",
		"_missionLevel",
		"_mobileSpawnPoint",
		"_varName"
	
	];
	
	
	_veh = param [0];
	_faction = param [1, "BLU"];
	_missionLevel = param [2, 1];
	_mobileSpawnPoint = param [3, FALSE];
	_forcedVarname = param [4, ""];
	
	
	// Get Display Name
	
		_displayName = [typeOf _veh] call BEW_FNC_GetDisplayName;
		
		
	// Global VarName
		
		if (_forcedVarname == "") then {
		
			_varName = [_veh, "PlayerVehicle_"] call bis_fnc_objectvar;
		
		}else{
		
			_varName = _forcedVarname;
		
		};
		
		_veh setvehiclevarname _varName;


	// Adjust Vector Of Taildraggers
		
		[_veh] call BEW_FNC_tailDraggers;


	// Textures

		// Get Textures

			_textureListArray = [typeOf _veh, _faction] call BEW_FNC_getTextureList;
				_textureList = _textureListArray select 0;
				_customFactionTextures = _textureListArray select 1;
		
		
		// Set Textures

			[_veh, _textureList] call BEW_FNC_setVehicleTextures;


	// Setup Vehicle
		
		_veh allowDamage false;
		_veh enableCopilot false;
		_veh setVariable ["canRespawn", true, true];
		_veh setVariable ['QS_ST_drawEmptyVehicle',TRUE,TRUE];
		_veh setVariable ["canUnload", TRUE, TRUE];
		
		if (_veh isKindOf "StaticWeapon") then {
		
			_veh enableWeaponDisassembly false;
			_veh setVariable ["BEW_V_CanCarry", TRUE, TRUE];
		
		};
		
		
	// Hide Door If C47
	
		[_veh] call BEW_FNC_HideDoorIfC47;
		

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
	
	
	// Allow Damage
			
		if ((surfaceIsWater position _veh) and (_veh isKindOf "Air")) then {
		
			[_veh] spawn {
			
				_veh = _this select 0;
			
				waitUntil {sleep 1; !(isTouchingGround _veh)};
				
				_veh allowDamage TRUE;
				driver _veh setDamage 0;
			
			};
		
		}else{
		
			_veh allowDamage TRUE;
		
		};
		
	
	// Create Respawn Position
		
		if (_mobileSpawnPoint) then {
		
			[west, _veh, _displayName] call BIS_fnc_addRespawnPosition;
			
		};
		
	_varName