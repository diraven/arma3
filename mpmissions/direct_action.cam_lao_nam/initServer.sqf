private _initServerDebug = false;

// Map Center and size

BEW_v_WorldRadius = sqrt 2 / 2 * worldSize;
publicVariable "BEW_v_WorldRadius";

BEW_v_WorldCenter = [worldSize / 2, worldSize / 2, 0];
publicVariable "BEW_v_WorldCenter";

// Create Whole Map Marker

if (getMarkerColor "wholeMapMarker" == "") then {
	BEW_v_WholeMapMarker = createMarker ["wholeMapMarker", BEW_v_WorldCenter];
	BEW_v_WholeMapMarker setMarkerSize [BEW_v_WorldRadius, BEW_v_WorldRadius];
	BEW_v_WholeMapMarker setMarkerShape "ELLIPSE";
	BEW_v_WholeMapMarker setMarkerColor "colorWhite";
	BEW_v_WholeMapMarker setMarkerAlpha 0;
};

if (_initServerDebug) then {
	systemchat "Create Whole Map Marker Done"
};

// Mission Parameter Setup

if (isDedicated) then {
	[] call BEW_FNC_missionParameterSetup;
};

if (_initServerDebug) then {
	systemchat "Mission Parameter Setup Done"
};

// Mission switch

[] call BEW_FNC_MissionSwitch;

if (_initServerDebug) then {
	systemchat "Mission Switch Done"
};

// side Relations

[] call BEW_FNC_SideRelations;

if (_initServerDebug) then {
	systemchat "Side Relations Done"
};

// Setup Hunter Array

if (isNil "BEW_v_HunterUnits") then {
	BEW_v_HunterUnits = []
};

if (_initServerDebug) then {
	systemchat "Hunter Array Done"
};

// Conflict Mode

if (isNil "BEW_v_ConflictMode") then {
	BEW_v_ConflictMode = false;
};

publicVariable "BEW_v_ConflictMode";

if (_initServerDebug) then {
	systemchat "Conflict Mode Done"
};

// SHK Pos

call compile preprocessfile "SHK_pos\shk_pos_init.sqf";

if (_initServerDebug) then {
	systemchat "SHK Pos Done"
};

// Mission Version

BEW_v_missionVersion = 2;

if (_initServerDebug) then {
	systemchat "Mission Version Done"
};

// Define Map Camo

[] call BEW_FNC_defineMapCamo;

if (_initServerDebug) then {
	systemchat "Map Camo Done"
};

// Define Factions

[] call BEW_FNC_factionSetupMain;

if (_initServerDebug) then {
	systemchat "Faction Setup Done"
};

// Setup Database

[] call BEW_FNC_databaseInit;

if (_initServerDebug) then {
	systemchat "Database Setup Done"
};

// Force faction By Mission Parameters

[] call BEW_FNC_forceFactionByParameters;

if (_initServerDebug) then {
	systemchat "Force Faction By Parameters Done"
};

// Define faction Lists

[] call BEW_FNC_lists;

if (_initServerDebug) then {
	systemchat "Faction Lists Done"
};

// Setup Translation Lists

[] call BEW_FNC_TranslationLists;

if (_initServerDebug) then {
	systemchat "Translation Lists Done"
};

// Autosave

[BEW_v_autoSaveInterval] spawn BEW_FNC_AutoSave;

if (_initServerDebug) then {
	systemchat "Auto Save Setup Done"
};

// Setup Role Translation Variables

if (isDedicated) then {
	[] call BEW_FNC_defineRoleTranslations;
};

if (_initServerDebug) then {
	systemchat "Role Translation Variables Done"
};

// Setup Arsenal Objects

[] call BEW_FNC_arsenalObjectSetupServer;

if (_initServerDebug) then {
	systemchat "Arsenal Setup Done"
};

// Hide Arsenal Tents

[] spawn BEW_FNC_hideArsenaltents;

if (_initServerDebug) then {
	systemchat "Hide Arsenal Tents Done"
};

// set Up Comms name

// west

// Define HQ

HQ_WEST = basecommander;
publicVariable "HQ_WEST";

// set Callsign

_factionName = switch (typeName BLU_FactionName) do {
	case "ARRAY" : {
		BLU_FactionName select 0
	};

	default {
		BLU_FactionName
	};
};

_callsign = format ["%1 HQ", _factionName];
baseCommander setGroupIdGlobal [_callsign];

// set name

basecommander setName _callsign;

// east

// Define HQs

HQ_EAST = basecommander_EAST;
publicVariable "HQ_EAST";

// set Callsign

_factionName = switch (typeName OPF_1_FactionName) do {
	case "ARRAY" : {
		OPF_1_FactionName select 0
	};

	default {
		OPF_1_FactionName
	};
};

_callsign = format ["%1 HQ", _factionName];
basecommander_EAST setGroupIdGlobal [_callsign];

// set name

basecommander_EAST setName _callsign;

if (_initServerDebug) then {
	systemchat "Comms Name Setup Done"
};

// Define Main HQ Safe Zone Marker

_allMainHQMarkers =	getMissionLayerEntities "MainHQ" select 1;
BEW_v_HqSafeZoneMarker = _allMainHQMarkers select 0;
publicVariable "BEW_v_HqSafeZoneMarker";

if (_initServerDebug) then {
	systemchat "Safe Zone Setup Done"
};

// Destroy Blacklisted Buildings

if (BEW_v_WW2) then {
	[] spawn BEW_FNC_tem_anizay_blacklistedBuildings;
	[] spawn BEW_FNC_cup_chernarus_A3_blacklistedBuildings;
};

if (_initServerDebug) then {
	systemchat "Destroy Blacklisted Buildings Done"
};

// Define Main Airfield

BEW_v_mainRunwayID = switch (worldName) do {
	case "Cam_Lao_Nam" : {
		1
	};
	case "fapovo" : {
		2
	};
	case "isladuala3" : {
		1
	};
	case "gulfcoast" : {
		1
	};

	default {
		0
	};
};

publicVariable "BEW_v_mainRunwayID";

if (_initServerDebug) then {
	systemchat "Main Airfield Setup Done"
};

// No Airfield Maps

BEW_v_NoAirfieldMaps = [] call BEW_FNC_NoAirfieldMaps;
publicVariable "BEW_v_NoAirfieldMaps";

// BEW_v_BrokenAirfieldMaps = [] call BEW_FNC_BrokenAirfieldMaps;
// publicVariable "BEW_v_BrokenAirfieldMaps";

if (_initServerDebug) then {
	systemchat "No Airfield Maps Setup Done"
};

// spawn in Plane

[] call BEW_FNC_spawnInPlaneSetupServer;

if (_initServerDebug) then {
	systemchat "Spawn In Plane Setup Done"
};

// MISSIONS

// Setup Mission Level

if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
	if (BEW_v_ConflictMode) then {
		missionLevel = 8;
	} else {
		missionLevel = BEW_v_MissionLevel;
	};

	publicVariable "missionLevel";
} else {
	if (BEW_v_ConflictMode) then {
		missionLevel = 8;
	} else {
		missionLevel = 1;
	};

	publicVariable "missionLevel";
};

if (_initServerDebug) then {
	systemchat "Mission Level Setup Done"
};

// Setup Parent Tasks

if ((BEW_v_GameMode == "CAMPAIGN") or (BEW_v_GameMode == "CAMPAIGN SOLO")) then {
	[] call BEW_FNC_ParentTasks;
};

// Define Objectives

[] call BEW_FNC_defineObjectives;

if (_initServerDebug) then {
	systemchat "Define Objectives Done"
};

if ((BEW_v_GameMode == "CAMPAIGN") or (BEW_v_GameMode == "CAMPAIGN SOLO")) then {
	// Objective Progression

	[] call BEW_FNC_objectiveProgression;

	if (_initServerDebug) then {
		systemchat "Objective Progression Setup Done"
	};

	// Mission Setup

	[] call BEW_FNC_setupMissions;

	if (_initServerDebug) then {
		systemchat "Mission Setup Done"
	};

	// End Mission Tracker

	[] spawn BEW_FNC_endMissionTracker;

	if (_initServerDebug) then {
		systemchat "End Mission Tracker Done"
	};

	// random Encounters

	[] call BEW_FNC_randomEncounterPositionsByMap;
	[] spawn BEW_FNC_inRandomEncounterTracker;

	if (_initServerDebug) then {
		systemchat "Random Encounters Done"
	};

	// civilian Population

	// [] spawn BEW_FNC_playerInCivAreaTracker;
} else {
	// [] call BEW_FNC_ConflictSetup;
};

// Fast Travel Setup

[] call BEW_FNC_FastTravelSetup;

if (_initServerDebug) then {
	systemchat "Fast Travel Setup Done"
};

// player Camps

[] call BEW_FNC_definePlayerCamps;

if (_initServerDebug) then {
	systemchat "Player Camps Setup Done"
};

// Respawn Positions

BEW_v_respawnMarkerList = getMissionLayerEntities "SpawnMarkers" select 1;
publicVariable "BEW_v_respawnMarkerList";

// Setup spawn Points

[] call BEW_FNC_DefineSpawnPoints;

// Define Conflict HQ

[] call BEW_FNC_DefineConflictHQ;

if !(BEW_v_RandomSpawn) then {
	[west, (BEW_v_SpawnArrows - BEW_v_alliedRespawnArrows)] call BEW_FNC_setupSpawnPoints;
};

if (_initServerDebug) then {
	systemchat "Respawn Positions Done"
};

// Single player Setup

if !(isMultiplayer) then {
	// Delete Other Playable units

	_otherPlayableUnits = switchableUnits select {
		!(isPlayer _x)
	};
	{
		deleteVehicle _x
	} forEach _otherPlayableUnits;

	// Disable Team switch

	enableTeamSwitch false;
};

if (_initServerDebug) then {
	systemchat "Other Playable Units Deleted If SP Done"
};

// Disable Saving in Multiplayer

if (isMultiplayer) then {
	enableSaving [false, false];
};

if (_initServerDebug) then {
	systemchat "Saving Disabled In MP Done"
};

// Setup Markers

[] call BEW_FNC_mapInteractionMarkers;

if (_initServerDebug) then {
	systemchat "Markers Setup Done"
};

// Setup Supplies

[] call BEW_FNC_setupSupplies;
[] spawn BEW_FNC_setupSavedDeployedOutposts;

if (_initServerDebug) then {
	systemchat "Supplies Setup Done"
};

// Setup Munitions Tracker

[BEW_v_munitions, BEW_v_munitions_EAST, BEW_v_fireSupportLevel] spawn BEW_FNC_fireSupportMunitions;

if (_initServerDebug) then {
	systemchat "Munitions Tracker Done"
};

// Define Mission flag

objectiveMissionActive = false;
publicVariable "objectiveMissionActive";

if (_initServerDebug) then {
	systemchat "Objective Active Flag Setup Dong"
};

// OPTRE Cryopods and ShipTurrets

[] call BEW_FNC_optreSetup;

if (_initServerDebug) then {
	systemchat "Cryopods If OPTRE Done"
};

// AI skill Global

if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
	// aiSkillGlobal = "EASY";
	// BEW_v_aiSkillGlobal = "REGULAR";
	BEW_v_aiSkillGlobal = "HARD";
};

publicVariable "BEW_v_aiSkillGlobal";

if (_initServerDebug) then {
	systemchat "AI Skill Setup Done"
};

// switch Flags

[] call BEW_FNC_SwitchFlags;
if (_initServerDebug) then {
	systemchat "Switch Flags Setup Done"
};

// Dynamic Groups

["Initialize"] call BIS_fnc_dynamicGroups;

if (_initServerDebug) then {
	systemchat "Dynamic Groups Setup Done"
};

// Setup Objective Markers and Objects

BEW_v_militarySpawnFlags = getMissionLayerEntities "MilitarySpawnPoints" select 0;
[] call BEW_FNC_createArtillerySpawnMarkers;
[] call BEW_FNC_createCampVehicleSpawnMarkers;
[] call BEW_FNC_createSmallAASiteMarkers;

if (_initServerDebug) then {
	systemchat "Setup Position Markers Done"
};

// Invunerable Base Buildings

[] call BEW_FNC_invunerableBasebuildings;

if (_initServerDebug) then {
	systemchat "Invulnerable Base Buildings Done"
};

// time Multipler

[] spawn BEW_FNC_dayNightCycleSettings;
if (_initServerDebug) then {
	systemchat "Day Night Cycle Done"
};

// Internal Lighting

_allProps = [];

_sheds = getMissionLayerEntities "Sheds" select 0;
_tents = getMissionLayerEntities "ArsenalTents" select 0;

_allProps append _sheds;
_allProps append _tents;

{
	[_x] call BEW_FNC_SpawnInternalLighting;
} forEach _allProps;

if (_initServerDebug) then {
	systemchat "Internal Lighting Done"
};

// Remove fog

[] spawn BEW_FNC_removeFog;

if (_initServerDebug) then {
	systemchat "Remove Fog Done"
};

// Recruits Setup

[] call BEW_FNC_setupOfficers;

if (_initServerDebug) then {
	systemchat "Recruits Setup Done"
};

// Drone Console Setup

[] call BEW_FNC_dronesSetupServer;

if (_initServerDebug) then {
	systemchat "Drone Console Setup Done"
};

// Medical Setup

[] call BEW_FNC_setupMedStations;

if (_initServerDebug) then {
	systemchat "Medical Setup Done"
};

// Setup Cruise Missile Batteries

[] call BEW_FNC_spawnCruiseMissileBatteries;

if (_initServerDebug) then {
	systemchat "Cruise Missile Batteries Done"
};

// Helipad Lights

_allCamps = getMissionLayerEntities "Camps" select 1;

{
	[_x] call BEW_FNC_replaceHelipadLights;
} forEach _allCamps;

if (_initServerDebug) then {
	systemchat "Helipad Lights Done"
};

// Service Pad Setup

[] call BEW_FNC_servicePadSetup;

if (_initServerDebug) then {
	systemchat "Service Pad Setup Done"
};

// Handle Disconnect

addMissionEventHandler ["HandleDisconnect", {
	_pl = _this select 0;

	{
		deleteVehicle _x;
	} forEach attachedObjects _pl;

	deleteVehicle _pl;

	false
}];

if (_initServerDebug) then {
	systemchat "Handle Disconnect Done"
};

// HQ

// Safe Zones

hqSafeZoneMarker = BEW_v_HqSafeZoneMarker;
publicVariable "hqSafeZoneMarker";

[] call BEW_FNC_safeZone;

if (_initServerDebug) then {
	systemchat "Safe Zone Setup Done"
};

// Disable Firewill AMS

if !(BEW_V_airSuperiority) then {
	AWS_AMS_Disable = true;
};

if (_initServerDebug) then {
	systemchat "Firewill AMS Disabled Done"
};

// Disable damage On Map Towers

[] call BEW_FNC_disableTowersDamage;

if (_initServerDebug) then {
	systemchat "Disable Damage On Towers Done"
};

waitUntil {
	time > 0
};

// player vehicle Setup

[] spawn BEW_FNC_playerVehicleSetup;

if (_initServerDebug) then {
	systemchat "Player Vehicle Setup Done"
};

// spawn Base AA

if !(isNil "BaseAA") then {
	[BaseAA] spawn BEW_FNC_spawnBaseAA;
};

if (_initServerDebug) then {
	systemchat "Base AA Setup Done"
};

// Setup Paradrop Transport

[] spawn BEW_FNC_setupParadropTransportServer;

if (_initServerDebug) then {
	systemchat "Paradrop Transport Setup Done"
};

// Setup Heli Transport

[] spawn BEW_FNC_setupHeliTransportServer;

if (_initServerDebug) then {
	systemchat "Heli Transport Setup Done"
};

// Convoy Mission

if ((BEW_v_GameMode == "CAMPAIGN") or (BEW_v_GameMode == "CAMPAIGN SOLO")) then {
	[] spawn BEW_FNC_CONVOY_Mission;
};

if (_initServerDebug) then {
	systemchat "Convoy Mission Setup Done"
};

// random Supply Drops

if ((BEW_v_GameMode == "CAMPAIGN") or (BEW_v_GameMode == "CAMPAIGN SOLO")) then {
	[] spawn BEW_FNC_randomSupplyDrops;
};

if (_initServerDebug) then {
	systemchat "Random Supply Drops Setup Done"
};

sleep 5;

// reveal Initial side Missions

if ((BEW_v_GameMode == "CAMPAIGN") or (BEW_v_GameMode == "CAMPAIGN SOLO")) then {
	if !(count (BEW_v_ObjectiveProgression select 0) > 0) then {
		if (count BEW_v_revealedSideMissions < 1) then {
			for "_i" from 1 to 3 do {
				[markerPos BEW_v_HqSafeZoneMarker, 5000] call BEW_FNC_RevealObjective;

				sleep 3;
			};
		};
	};
};

if (_initServerDebug) then {
	systemchat "Reveal Side Missions Done"
};

sleep 5;

BEW_v_InitServerComplete = true;
publicVariable "BEW_v_InitServerComplete";

if (_initServerDebug) then {
	systemchat "Init Server Complete"
};