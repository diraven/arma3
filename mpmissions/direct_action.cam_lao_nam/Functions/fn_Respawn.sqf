
	if (!isDedicated) then {
	
		waitUntil {player == player};
		waitUntil {alive player};
	
	};	

	_plyr = _this select 0;

	// Delete Old Body

		if !(isNil "BEW_v_OldBody") then {
		
			deleteVehicle BEW_v_OldBody
		
		};
	
	//BEW_v_PlayerSaveDataLocal = (BEW_v_PlayerSaveData select {_x select 0 == getPlayerUID player}) select 0;

	// On First Spawn

		[_plyr, FALSE] call BEW_FNC_OnfirstSpawn;
		

	// CH View Distance
	
		_actionText = if (isLocalized "STR_chvd_title") then {localize "STR_chvd_title"} else {"View Distance Settings"};
		player addAction [_actionText, CHVD_fnc_openDialog, [], -86, false, true, '', '_target isEqualTo _this'];
		

	// Action Menus

		[_plyr] call BEW_FNC_MenuSetup;


	// Conflict Stuff
	
		//[] call BEW_FNC_CaptureFlag;
		//[] call BEW_FNC_revealConflictObjectives;


	// Holster Weapon

		[] spawn BEW_FNC_HolsterWeapon;
		
		
	// Switch Factions
	
		[] spawn BEW_FNC_switchFactionsActions;
			
	
	// Arsenal Objects Setup Client
	
		[] call BEW_FNC_arsenalObjectSetupClient;
		
		
	// Init Arsenal On Player
	
		[_plyr] spawn BEW_FNC_arsenalPlayerInit;
	
				
	// Setup Role Select
		
		[] call BEW_FNC_setupRoleSelect;
		
		
	// Drone Actions
	
		[] call BEW_FNC_setupDroneActions;
		
		
	// Spawn In Plane
	
		[] call BEW_FNC_spawnInPlaneSetupClient;
	
	
	// Med Station Setup
	
		[_plyr] call BEW_FNC_medStationAction;
		
		
	// Resupply At Ammobox 
	
		[_plyr] call BEW_FNC_resupplyAtAmmobox;
		
		
	// Withstand
		
		if (BEW_v_allowWithstand) then {
		
			[] call BEW_FNC_withStand;
		
		};
		
		
	// Take Back Squad From AI
	
		[] spawn BEW_FNC_TakeBackSquadFromAI;
		
		
	// Paradrop Reinforcements Actions
	
		[] call BEW_FNC_callReinforcementsAction;
		
				
	// Mjolnir

		if (BEW_v_OPTRE_Running and !(BEW_v_forceVanilla) and !(isClass(configfile >> "CfgMods" >> "SWOP_MODs")) and !(BEW_v_forceVanilla) and (typeOf _plyr == "OPTRE_Spartan3_Soldier_Rifleman_AR")) then {
															
			[_plyr] call BEW_FNC_activateMjolnir;				
															
		};


	// Attach FlashLight To Uniform

		[] spawn BEW_FNC_attachFlashLightToUniform;
			
		
	// Fast Travel Action
		
		if (BEW_v_enableFastTravel) then {
		
			[] spawn BEW_FNC_fastTravelAction;
		
		};
		
		
	// Map Board Actions

		[] spawn BEW_FNC_mapBoardActions;


	// Recall Saved Arsenal Loadout
		
		[_plyr] call BEW_FNC_RecallSavedLoadout;
		
		
	// Set Voice
	
		[_plyr] call BEW_FNC_setCorrectIdentity;


	// Disable Fatigue
		
		if !(BEW_v_enableStamina) then {
		
			_plyr enableFatigue false;
			_plyr enableStamina false;
		
		};
		
		
	// Dynamic Groups 
		
		["InitializePlayer", [_plyr, true]] call BIS_fnc_dynamicGroups;


	// Take Squad Leader If Team Leader

		if (typeOf _plyr == "B_Soldier_TL_F") then {

			[player] call BEW_FNC_setGroupLeader;

		};
		
		
	// Stop AI Stealing Squad Leader

		if (count allPlayers == 1) then {

			if !((leader group _plyr) in allPlayers) then {

				[player] call BEW_FNC_setGroupLeader;

			};

		};


	// ZEUS

		// Assign As Curator If Multiplayer
		
			if ((isMultiplayer) and BEW_v_enableZeus) then {
			
				if (serverCommandAvailable '#kick') then {
				
					[zeus] remoteExec["unassignCurator", 2];
					[player, zeus] remoteExec ["assignCurator", 2];
					
				};

			};
			
			
		// Unassign If Single player
		
			if (!(isMultiplayer) or !(BEW_v_enableZeus)) then {
			
				unassignCurator zeus;
			
			};
				

	// Out Of Bounds

		[] spawn BEW_FNC_outOfBoundsRestrictions;
		
		
		if (BEW_v_PvpEnabled) then {
		
			waitUntil {!(isNil "BEW_v_allAlliedCamps")};
		
			[player, BEW_v_allAlliedCamps + BEW_v_allBluCamps, 10000, EAST] spawn BEW_FNC_OutOfBounds;
		
		};


	// Flip Vehicle

		[] call BEW_FNC_flipVehicleInit;


	// Activate Vehicle Action
		
		[] call BEW_FNC_ActivateVehicleAction;
		
	
	// Activate Glider Action
		
		[] call BEW_FNC_ActivateGliderAction;
		
		
	// Activate Supplies Action
	
		[] call BEW_FNC_activateSuppliesAction;
		
		
	// Heal NPC Action

		[player] call BEW_FNC_healNPCAction;
			
			
	// Respawn Vehicle Action
		
		[] call BEW_FNC_respawnVehicleAction;
			
			
	// Place Satchel Charge

		[] call BEW_FNC_setExplosiveChargeAction;
				
	// Establish Comms Action
			
		[] call BEW_FNC_establishCommsAction;
			
	// Load Recruit In Vehicle

		[] call BEW_FNC_LoadRecruitInvehicle;
		

	// Setup Paradrop Transport
		
		[] spawn BEW_FNC_setupParadropTransportClient;	
		
		
	// Setup Heli Transport
	
		[] spawn BEW_FNC_setupHeliTransportClient;
		
		
	// Setup Heli Transport
	
		[] spawn BEW_FNC_setupGliderTransportClient;
			
		
	// Nerf Weapon Sway
		
		if (BEW_v_easyWeaponSway) then {
		
			_plyr setCustomAimCoef 0.35;
		
		};
		
		
	// Transfer To Arsenal
	
		[] call BEW_FNC_transferInventoryToArsenal;


	// Player Carry Object

		[] call BEW_FNC_cargoLoading;

		
	// Soldier Tracker

		[] execVM "functions\fn_QS_icons.sqf";
		

	// Mission Level	
		
		waitUntil {!(isNil "missionLevel")};
		
		systemchat format ["Current Mission Level - %1", missionLevel];
		
			
	// Fire Support
		
		[] spawn BEW_FNC_fireSupportSetup;
		
	// Drop Supplies

		[] call BEW_FNC_dropMedicalSupplies;
		[] call BEW_FNC_dropAmmoSupplies;
		[] call BEW_FNC_dropSpawnBeacon;
		[] call BEW_FNC_dropTUGS;
		[] call BEW_FNC_dropMAV;
		[] call BEW_FNC_dropEOD;
		[] call BEW_FNC_dropSOFLAM;
		[] call BEW_FNC_dropMortar;
		[] call BEW_FNC_wireCutters;


	// UAV Operator Setup

		if (typeOf _plyr == "B_Soldier_UAV_F") then {

		
		};
		
		
	// Engineer Trait Setup

		if ((typeOf _plyr == "B_crew_F") or (typeOf _plyr == "B_Pilot_F") or (typeOf _plyr == "B_Helipilot_F") ) then {
		
			_plyr setUnitTrait ["engineer", true];
		
		};
		
		
		// Always Medic And Engineer If Zombies
		
			if (BEW_v_Zombies) then {
			
				_plyr setUnitTrait ["engineer", true];
				_plyr setUnitTrait ["medic", true];
			
			};
			
		
	// Vehicle Restrictions

		[

			["Plane", ["B_Pilot_F"], ["driver"]],
			["tank", ["B_crew_F"], ["driver"]],
			["Wheeled_APC_F", ["B_crew_F"], ["driver"]],
			["Helicopter", ["B_Helipilot_F"], ["driver"]]

		] spawn BEW_FNC_vehicleRestrictions;
	
	
	// Gear Restrictions
	
		[] spawn BEW_FNC_gearRestrictions;
		
		
	// Limit Items
	
		[player, "FirstAidKit", 6, "B_medic_F"] spawn BEW_FNC_limitItems;						
	
	
	// Player Action Setup
	
		[_plyr] call BEW_FNC_PlayerActionsSetup;
	
	
	// Unhide Player
		
		if (isnil "BEW_v_firstSpawn") then { 
		
			[_plyr, false] remoteExec ["hideObjectGlobal", 2];
		
			if !(is3DENPreview) then {

				titleText ["LOADING COMPLETE", "BLACK IN", 5];
				
				if !(is3DENPreview) then {
				
					disableUserInput false;
				
				};
				
			};

		};
					
		
		/*
		
			// Respawn Message
							
				waitUntil {!(isNil "BEW_v_SpawnArrows") and !(isNil "BEW_FNC_campSpawnArrows")};
							
				_allSpawnArrows = BEW_v_SpawnArrows + BEW_FNC_campSpawnArrows;
							
				_nearestSpawnArrow = [_allSpawnArrows, _plyr] call BIS_fnc_nearestPosition;
				_spawnPointName = _nearestSpawnArrow getVariable ["spawnPointName", "Spawn Point"];
				
				if (player distance2d _nearestSpawnArrow < 50) then {
				
					[ format ["%1 has respawned at %2", profileName, _spawnPointName]] remoteExec ["systemChat", 0];
				
				};
				
		*/
				
		if (isnil "BEW_v_firstSpawn") then { 
		
			// Welcome Hint
			
				[] spawn {
				
					sleep 5;
				
					[] call BEW_FNC_modWarning;
				
				};
			
			BEW_v_firstSpawn = true;
			
		};
				
		// Initalized Flag
		
			BEW_v_playerInitialized = true;
				

