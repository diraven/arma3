	private ["_actionText", "_smokeMortars", "_heMortars", "_cruiseMissile", "_fireSupportData"];
	
	_fireSupportData 				=	[];
	fireMissionCooldown				= 	false;
	
	_smokeMortars					= ["Smoke Mortar", ["B_Soldier_TL_F"], 100, 1000, 50, 180, 'Smoke_120mm_AMOS_White', 10, 1, {false}, 0, 250, 150];
	_flares							= ["Flares", ["B_Soldier_TL_F"], 100, 1000, 150, 5, "vn_rsp30_v_flare_ammo", 120, 1, {false}, 0, 250, 1];
	_heMortars						= ["HE Mortar", ["B_Soldier_TL_F"], 100, 1000, 30, 300, 'Sh_82mm_AMOS', 5, 3, {false}, 0, 250, 150];	
	_casRun							= ["CAS Attack Run", ["B_Soldier_TL_F"], 100, 1000, 50, 600, 'B_Plane_CAS_01_dynamicLoadout_F', 10, 5, {false}, 0, 250, 150];
	_cruiseMissile					= ["Cruise Missile", ["B_Soldier_TL_F"], 100, 1000, 50, 600, 'weapon_vls_01', 10, 7, {false}, 0, 250, 150];
	

	switch (typeOf player) do {
		
		case "B_Soldier_TL_F": {
		
			_fireSupportData append [_smokeMortars];
			if !(isMultiplayer) then {
			
				_fireSupportData append [_heMortars];	
				
				if !((isClass(configfile >> "CfgMods" >> "vn")) and (isClass(configfile >> "CfgMods" >> "UNSUNG")) and !(forceVanilla)) then {
				
					_fireSupportData append [_cruiseMissile];
					_fireSupportData append [_casRun];
					
				};
				
				if ((isClass(configfile >> "CfgMods" >> "vn")) and (isClass(configfile >> "CfgMods" >> "UNSUNG")) and !(forceVanilla)) then {
				
					_fireSupportData append [_flares];
					
				};
					
			};
		
		};
		
		case "B_recon_JTAC_F": {
		
			_fireSupportData append [_smokeMortars];
			_fireSupportData append [_heMortars];			
			
			if !((isClass(configfile >> "CfgMods" >> "vn")) and (isClass(configfile >> "CfgMods" >> "UNSUNG")) and !(forceVanilla)) then {
				
				_fireSupportData append [_cruiseMissile];
				_fireSupportData append [_casRun];
					
			};
			
			if ((isClass(configfile >> "CfgMods" >> "vn")) and (isClass(configfile >> "CfgMods" >> "UNSUNG")) and !(forceVanilla)) then {
				
				_fireSupportData append [_flares];
					
			};
		
		};
		
		default {};
		
	};
	

	{
	
		private ["_data"];
	
		_data = _x;
		
			BEW_v_fireSupportTypeText		=	(_data select 0);
			BEW_v_fireSupportAssistantTypes	= 	(_data select 1);
			BEW_v_fireSupportMinRadius 		=	(_data select 2);
			BEW_v_fireSupportMaxRadius		=	(_data select 3);
			BEW_v_fireSupportSpread			=	(_data select 4);
			BEW_v_fireSupportBarrageDelay 	= 	(_data select 5);
			BEW_v_fireSupportRoundType 		=	(_data select 6);
			BEW_v_fireSupportRoundNumber	=	(_data select 7);
			
			_unlockLevel = (_data select 8);
			
		waitUntil {sleep 3; missionLevel >= _unlockLevel};
				
			_typeTextNoSpaces = BEW_v_fireSupportTypeText;  
			_typeTextNoSpaces = _typeTextNoSpaces splitString " " joinString "";  
			
			private _message = format ["New Fire Support Unlocked: %1", BEW_v_fireSupportTypeText];
						
			call compile format ["

				if (isNil '%1_fireSupportActive') then {
				
					[HQ , _message] remoteExec ['sideChat', 0];
					%1_fireSupportActive = true;
				
				};
			
			", _typeTextNoSpaces];		
				
			
		
		_actionPassThruArray = [BEW_v_fireSupportTypeText, BEW_v_fireSupportAssistantTypes, BEW_v_fireSupportMinRadius, BEW_v_fireSupportMaxRadius, BEW_v_fireSupportSpread, BEW_v_fireSupportBarrageDelay, BEW_v_fireSupportRoundType, BEW_v_fireSupportRoundNumber];
		
		// Main Fire Support Action

			_actionText = switch (BEW_v_fireSupportRoundType) do {
		
				case "weapon_vls_01"					: 	{format ["<t color='#FFC0CB'>Call %1", BEW_v_fireSupportTypeText];};
				case "B_Plane_CAS_01_dynamicLoadout_F"	: 	{format ["<t color='#FFC0CB'>Call %1", BEW_v_fireSupportTypeText]};
					
				default {format ["<t color='#FFC0CB'>Call %1 Barrage", BEW_v_fireSupportTypeText]};
			
			};
		
			player addaction [_actionText, 	
			
			{
				
				_fireSupportTypeText		=	((_this select 3) select 0);
				_fireSupportMinRadius 		=	((_this select 3) select 1);
				_fireSupportAssistantTypes	=	((_this select 3) select 2);
				_fireSupportMaxRadius		=	((_this select 3) select 3);
				_fireSupportSpread			=	((_this select 3) select 4);
				_fireSupportBarrageDelay 	= 	((_this select 3) select 5);
				_fireSupportRoundType 		=	((_this select 3) select 6);
				_fireSupportRoundNumber		=	((_this select 3) select 7);
			
				if (fireMissionCooldown) then {
				
					HQ sidechat 'Fire mission not available at this time.';
				
				}else{
			
					private ["_pos"];
				
					if (visibleMap) then {
					
						_pos =  screenToWorld getMousePosition;
						
					}else{
					
						_pos = screenToWorld [0.5,0.5];
					
					};
					
					fireMissionCooldown = true;
							
					_fireSupportAreaMarker = createMarker ['fireSupportArea', _pos];
					_fireSupportAreaMarker setMarkerShape 'ELLIPSE';
					_fireSupportAreaMarker setMarkerSize [(_fireSupportSpread) * 2, (_fireSupportSpread) * 2];
					_fireSupportAreaMarker setMarkerColor 'colorRED';
					_fireSupportAreaMarker setMarkerAlpha 1;
								
					BEW_v_fireSupportCooldownTimer = [_fireSupportBarrageDelay + 30, false] call BIS_fnc_countdown;
			
			
					switch (_fireSupportRoundType) do {
		
						case "weapon_vls_01"	: 	{
							
							[[_pos, _fireSupportBarrageDelay], {
							
								_pos = _this select 0;
								_fireSupportBarrageDelay = _this select 1;
							
								_arrow = createVehicle ['Sign_Arrow_Large_F', _pos, [], 0, "CAN_COLLIDE"];
								_arrow setDir getDir player;
								_arrow allowDamage false;
								_arrow hideObjectGlobal true;
								
								_smoker = "SmokeShellRed" createVehicle _pos;
								_smoker setDamage 1;
						
								if (isNil "cruiseMissileActive") then {
								
									cruiseMissileActive = false;
										publicVariable "cruiseMissileActive";
								
								};
							
									[_arrow] spawn BEW_FNC_fireCruiseMissile;
							
								waitUntil {(cruiseMissileActive)};
							
									[HQ , "Fire mission received. Cruise missile inbound."] remoteExec ['sideChat', 0];

								waitUntil {!(cruiseMissileActive)};
								
									_message = format ["Splash. Fire support will be back online in %1 minutes. Out.", (_fireSupportBarrageDelay) / 60];
							
									[HQ , _message] remoteExec ['sideChat', 0];
								
								deleteVehicle _arrow;
								deleteVehicle _smoker;
							
							}] remoteExec ['BIS_FNC_Call', 2];
						
						};
						
						case "B_Plane_CAS_01_dynamicLoadout_F"	: 	{
						
							[[_pos, _fireSupportBarrageDelay], {
							
								_pos = _this select 0;
								_fireSupportBarrageDelay = _this select 1;
							
								_arrow = createVehicle ['Sign_Arrow_Large_F', _pos, [], 0, "CAN_COLLIDE"];
								_arrow setDir getDir player;
								_arrow allowDamage false;
								_arrow hideObjectGlobal true;
								
								_smoker = "SmokeShellRed" createVehicle _pos;
								_smoker setDamage 1;
							
								_origType = "B_Plane_CAS_01_dynamicLoadout_F";
								_newType = [_origType] call BEW_FNC_TranslateClassNames;
							
								_message = "Fire mission received. CAS aircraft is inbound to target area";
							
								[HQ , _message] remoteExec ['sideChat', 0];
								
								sleep 25;

								[HQ , 'Be advised, CAS is approaching the target area now.'] remoteExec ['sideChat', 0];
								
								sleep 5;
							
								[_pos, random 360, _newType] execVM "scripts\Mil-Cas\MIL_CAS.sqf";
								
								deleteVehicle _arrow;
								deleteVehicle _smoker;
								
								sleep 10;
								
								_message = format ["CAS mission complete. Fire support will be back online in %1 minutes. Out.", (_fireSupportBarrageDelay) / 60];
							
									[HQ , _message] remoteExec ['sideChat', 0];
							
							}] remoteExec ['BIS_FNC_Call', 2];
						
						};
							
						default {
					
							_arrow = createVehicle ['Sign_Arrow_Large_F', _pos, [], 0, "CAN_COLLIDE"];
							_arrow setDir getDir player;
							_arrow allowDamage false;
							_arrow hideObjectGlobal true;
							
							_smoker = "SmokeShellRed" createVehicle _pos;
							_smoker setDamage 1;
						
							_message = format ["Fire mission received. %1 %2 rounds out, %3m spread. Impact in 30 seconds.", _fireSupportRoundNumber, _fireSupportTypeText, _fireSupportSpread];
							
							[HQ , _message] remoteExec ['sideChat', 0];
							
							sleep 25;

							[HQ , 'Impact in 5 seconds.'] remoteExec ['sideChat', 0];
							
							sleep 5;
						
							[_pos, _fireSupportRoundType, _fireSupportSpread, _fireSupportRoundNumber, 2] spawn BIS_fnc_fireSupportVirtual;
							
							_message = format ["Splash. Fire support will be back online in %1 minutes. Out.", (_fireSupportBarrageDelay) / 60];
						
							[HQ , _message] remoteExec ['sideChat', 0];
						
							deleteVehicle _arrow;
							deleteVehicle _smoker;
						
						};
					
					};
										
					deleteMarker  _fireSupportAreaMarker;
					
					waitUntil {([0] call BIS_fnc_countdown) == 0};
					
					[HQ , "Fire support is back online. Ready for fire mission."] remoteExec ['sideChat', 0];
					
					fireMissionCooldown = false;
					
				};
			
			}
			
			, _actionPassThruArray, 98, true, true, "", "!(fireMissionCooldown) and ((currentWeapon player isKindOf ['Binocular', configFile >> 'CfgWeapons']) and (cameraView == 'Gunner')) and (_target distance screenToWorld [0.5,0.5] >= BEW_v_fireSupportMinRadius) and (_target distance screenToWorld [0.5,0.5] <= BEW_v_fireSupportMaxRadius)" ];
		
		
		
		// Fire Support Offline
		
			_actionText = format ["<t color='#FFC0CB'>Cannot Call %1 Barrage: Fire Support Currently Offline", BEW_v_fireSupportTypeText];
		
			player addaction [_actionText, 	
			
			{
			
				_timeRemaining 	= 	([0] call BIS_fnc_countdown);
				_timeRemaining 	=	[_timeRemaining, 0] call BIS_fnc_cutDecimals;
				_message		= 	format ["Fire support is currently offline. Please wait %1 seconds.", _timeRemaining]; 
				HQ sidechat _message;

			}
			
			, _actionPassThruArray, 98, true, true, "", "(fireMissionCooldown) and ((currentWeapon player isKindOf ['Binocular', configFile >> 'CfgWeapons']) and (cameraView == 'Gunner'))" ];
		
		
		
		
		// Danger Close Action
		
			_actionText = format ["<t color='#FFC0CB'>Cannot Call %1 Barrage: Danger Close", BEW_v_fireSupportTypeText];
		
			player addaction [_actionText, 	
			
			{
			
				HQ sidechat "Can't call fire support at that location. You are too close to the target area.";
			
			}
			
			, [], 98, true, true, "", "!(fireMissionCooldown) and ((currentWeapon player isKindOf ['Binocular', configFile >> 'CfgWeapons']) and (cameraView == 'Gunner')) and (_target distance screenToWorld [0.5,0.5] < BEW_v_fireSupportMinRadius)" ];
			
			
			
		// Out Of Range Action
		
			_actionText = format ["<t color='#FFC0CB'>Cannot Call %1 Barrage: Out Of Range", BEW_v_fireSupportTypeText];
			
			player addaction [_actionText, 	
			
			{
			
				HQ sidechat "Can't call fire support at that location. The target is out of range.";
			
			}
			
			, [], 98, true, true, "", "!(fireMissionCooldown) and ((currentWeapon player isKindOf ['Binocular', configFile >> 'CfgWeapons']) and (cameraView == 'Gunner')) and (_target distance screenToWorld [0.5,0.5] > BEW_v_fireSupportMaxRadius)" ];
		
	} forEach _fireSupportData;