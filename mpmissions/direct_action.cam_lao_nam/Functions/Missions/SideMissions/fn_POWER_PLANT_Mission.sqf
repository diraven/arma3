private [

	"_selectedObjective",
	"_playAreaIcon",
	"_objectivePos",
	"_objectiveSize",
	"_playAreaSize",
	"_missionLevelMultiplier",
	"_objectiveText",
	"_objectiveType",
	"_iconType",
	"_spawnPos",
	"_enemyGroup",
	"_side",
	"_faction",
	"_towerTypes",
	"_nearestTowers",
	"_nearestTower",
	"_allmines",
	"_allPlayAreaIcons",
	"_allTriggers",
	"_buildingPositionArray",
	"_targetPos"

];

_selectedObjective = param [0];
_playAreaIcon = param [1];
_forceType = param [2];

	_allmines = [];
	_allPlayAreaIcons = [];
	_allTriggers = [];
	_allMissionMarkers = [];
	
	

	// Objective Attributes

		_objectivePos = markerPos _selectedObjective;
		_objectiveSize = markerSize _selectedObjective;
		_playAreaSize = _objectiveSize select 0;

		_objectiveText = markerText _selectedObjective;
		_objectiveType = markerColor _selectedObjective;

        // Catch All Switch case If Objective is not Defined.
			switch (_objectiveType) do {
			
				case "ColorRed": {_iconType = "o_hq";};
				case "ColorYellow": {_iconType = "loc_Stack";};
				case "ColorOrange": {_iconType = "c_plane";};
				case "ColorBlue": {_iconType = "c_ship";};
				case "ColorGreen": {_iconType = "loc_Tourism";};
				case "ColorPink": {_iconType = "loc_Power";};
				case "ColorBrown": {_iconType = "loc_Transmitter";};
			};
		
		
	// Define Objective Monitor
	
	_allMonitors = getMissionLayerEntities "PowerPlantMonitors" select 0; 
	_objectiveMonitor = (_allMonitors select {_x distance2D _objectivePos < _playAreaSize}) select 0;


	// Change Marker Icon
	
		deleteMarker _playAreaIcon;
	
		_markerName = format ["%1_activeObjectiveIcon", _selectedObjective];
		_playAreaIcon = createMarker [_markerName, _objectivePos];
		_playAreaIcon setMarkerType "hd_unknown";
		_playAreaIcon setMarkerText "Find The Broken Substation";
		_playAreaIcon setMarkerSize [0.75, 0.75];
		_playAreaIcon setMarkerColor "colorYELLOW";
		_allPlayAreaIcons = _allPlayAreaIcons + [_playAreaIcon];
		
	// Mission Flag	
	
		objectiveMissionActive = TRUE;
		publicVariable "objectiveMissionActive";


	// Create Play Area
	
		_markerName = format ["%1_playArea", _selectedObjective];
	
		_playAreaMarker = createMarker [_markerName, _objectivePos];
		_playAreaMarker setMarkerShape "ELLIPSE";
		_playAreaMarker setMarkerSize [_objectiveSize select 0, _objectiveSize select 0];
		_playAreaMarker setMarkerColor "colorOPFOR";
		_playAreaMarker setMarkerAlpha 0.3;
		
		
	// In Area Trigger
	
		_inArea = createTrigger ["EmptyDetector", _objectivePos];
		_inArea setTriggerArea [_playAreaSize, _playAreaSize, 0, false];
		_inArea setTriggerActivation ["WEST", "PRESENT", true];
		_inArea setTriggerStatements ["(this) && (({alive _x && _x inArea thisTrigger} count allPlayers) > 0)", "", ""];

 	
	// Spawn Force
	
		_force = [_objectivePos, _objectiveSize select 0, _forceType, true, true, true, true, true] call BEW_FNC_spawnForce;
		_allUnits = _force select 0;
		_allvehs  = _force select 1;
		
		
	// Intel Objects
		
		[_objectivePos, _objectiveSize select 0] call BEW_FNC_spawnCabinetIntelObjects;
		

    //Selected Repairable Substation
	
        _repairableTypes = [

            "Land_spp_Transformer_F"

        ];
        _nearestRepairables = nearestObjects [_objectivePos, _repairableTypes, 150];
		_brokenSubstation = _nearestRepairables call BIS_fnc_selectRandom;
		_brokenSubstation allowDamage false;
		
	// Smoke Pillar
	
		_smokePillar = createVehicle ["test_EmptyObjectForSmoke", getPos _brokenSubstation, [], 0, "CAN_COLLIDE"]; 
		_brokenSubstation attachTo [_smokePillar, [0,0,0]];


    //Part is created and set to a random location
		
		_buildingPositions = [];
		
		while {count _buildingPositions < 1} do {
		
			_buildingPositionArray = [_objectivePos, _playAreaSize, [], 1] call BEW_fnc_findPositionsInNearBuildings;
				_targetPos = _buildingPositionArray select 0;
				_allTargetPositions = _buildingPositionArray select 1;
				
		};
		
		systemchat format ["%1", _targetPos];

        _objectiveType = "Land_TransferSwitch_01_F";
       	_substationPart = createVehicle [_objectiveType, _targetPos, [], 0, "NONE"];
       	_substationPart allowDamage false;
       	_substationPart setVariable ["BEW_V_CanCarry", TRUE, TRUE];


		// Send Message

			[HQ_WEST , "Okay DELTA. The power plane is offline. We need to locate the damaged substation so we can repair it."] remoteExec ['sideChat', 0];


		// Find The Broken Substation
		
        waitUntil{ !(objectiveMissionActive) or (count (allPlayers select {(_x distance _brokenSubstation) < 10}) > 0)  };


			// Change Marker
			
				_playAreaIcon setMarkerText "Find The Substation Part (Check Buildings)";
				
				
			// Create Substation Marker

				_brokenSubstationIcon = createMarker ["Damaged Substation", getPos _brokenSubstation ];
				_brokenSubstationIcon setMarkerText "Repair Damaged Substation";
				_brokenSubstationIcon setMarkerType "b_maint";
				_brokenSubstationIcon setMarkerSize [0.75, 0.75];
				_brokenSubstationIcon setMarkerColor "colorYellow";
				_allMissionMarkers = _allMissionMarkers + [_brokenSubstationIcon];

			if !(objectiveMissionCancelled) then {
			
				[HQ_WEST , "Alright, that's the broken substation. We need to find a spare part to repair it. Check the surrounding buildings."] remoteExec ['sideChat', 0];
				
			};

        // Find The Part
		
        waitUntil{ !(objectiveMissionActive) or (count (allPlayers select {(_x distance2D _substationPart) < 5}) > 0) };

			// Change Marker
			
				_playAreaIcon setMarkerAlpha 0;

             repairStatus = false;
			 
			if !(objectiveMissionCancelled) then {
			
				[HQ_WEST , "Okay thats the part. Bring it to the broken substation so we can start the repair."] remoteExec ['sideChat', 0];
				
			};

			[_substationPart, "Substation Part", "ColorYellow", "mil_objective"] execVM "scripts\movingMarker.sqf";


         // Repair The Substation
         waitUntil {!(objectiveMissionActive) or (_substationPart distance2D _brokenSubstation < 5) or (repairStatus)};

		
			// Delete Capacity Component
			
				deleteVehicle _substationPart;
				
				
			// Delete Substation Marker
			
				deleteMarker _brokenSubstationIcon;
				

             BEW_v_laptopActivated = false;
			 
			if !(objectiveMissionCancelled) then {
			 
				[HQ_WEST , "Great job DELTA. Now you need to restart the power plant."] remoteExec ['sideChat', 0];
				
			};

                        _laptopIcon = createMarker ["LaptopIcon", getPos _objectiveMonitor ];
                        _laptopIcon setMarkerText "Restart the Power Plant";
                        _laptopIcon setMarkerType "mil_objective";
                        _laptopIcon setMarkerSize [0.75, 0.75];
                        _laptopIcon setMarkerColor "colorYellow";
                         _allMissionMarkers = _allMissionMarkers + [_laptopIcon];
            [
                _objectiveMonitor,																// Object the action is attached to
                "Reactivate Power Station",													// Title of the action
                "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",		// Idle icon shown on screen
                "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_thumbsup_ca.paa",		// Progress icon shown on screen
                "_target distance _this < 3",								// Condition for the action to be shown
                "_target distance _this < 3",								// Condition for the action to progress
                {},																	// Code executed when action starts
                {},																	// Code executed on every progress tick
                {
                    [{
                        BEW_v_laptopActivated = true;
                        publicVariable "BEW_v_laptopActivated";
                    }] remoteexec ["bis_fnc_call", 2];
                },																	// Code executed on completion
                {},																	// Code executed on interrupted
                [],																	// Arguments passed to the scripts as _this select 3
                3,																	// Action duration [s]
                99,																	// Priority
                true,																// Remove on completion
                false																// Show in unconscious state
        ] remoteExec ["BIS_fnc_holdActionAdd", 0, true];


    // Restart The Power Station
	
        waitUntil {!(objectiveMissionActive) or (BEW_v_laptopActivated)} ;


	// Delete Laptop Marker
	
		deleteMarker _laptopIcon;
		
	
	// Delete Smoke Pillar
	
		deleteVehicle _smokePillar;
	
		
	// Change Objective Marker To BLUFOR
	
		_selectedObjective setMarkerColor "colorBLUFOR";
		
	    sleep 1;
		
		if (objectiveMissionCancelled) then {
	
			// Mission Level
			
				missionLevel = missionLevel - 1;
				if (missionLevel < 1) then {missionLevel = 1};
				publicVariable "missionLevel";
				sleep 2;
			
			objectiveMissionCancelled = FALSE;
				publicVariable "objectiveMissionCancelled";
				
			// Mission Complete Message
		
				[missionLevel, "MISSION FAILED", "EventTrack02_F_Curator"] call BEW_FNC_missionCompleteMessage;
				
		}else{
		
			// Auto Save Game
		
				if !(isMultiplayer) then {saveGame};
		
			// Mission Level
			
				missionLevel = missionLevel + 0.5;
				publicVariable "missionLevel";
				sleep 2;

			// Send Message
			
				[HQ_WEST , "Well done! The power plant is fully operational again."] remoteExec ["sideChat", 0];


			// Mission Failed Message
			
				[missionLevel, "SIDE MISSION COMPLETE"] call BEW_FNC_missionCompleteMessage;
				
		};
		
		
	// Add Mission Level To Database
		
		if (!(isNil "OO_INIDBI") and (isMultiplayer)) then {
			 
			["write", ["Progression", "Mission Level", missionLevel]] call BEW_v_dataBase; 
		
		};


	// Change Icon

		_playAreaIcon setMarkerType "loc_Power";
		_playAreaIcon setMarkerText "Repair Power Station";
		_playAreaIcon setMarkerColor "colorBLUFOR";
		_playAreaIcon setMarkerAlpha 1;


	// Clean Up Markers

		deleteMarker _playAreaMarker;
		{deleteMarker  _x} forEach _allMissionMarkers;

		
	// Clean Up Triggers
	
		{deleteVehicle _x} forEach _allTriggers;

	
	// Mission Flag	
	
		objectiveMissionActive = FALSE;
		publicVariable "objectiveMissionActive";


	waitUntil {!(triggerActivated _inArea) or (objectiveMissionActive)};		

		
	// Delete Triggers
	
		deleteVehicle _inArea;
		
		
	// Clean Up Force
	
		{deleteVehicle _x} forEach _allUnits;
		
		{
		
			if (count crew _x < 1) then {
			
				deleteVehicle _x;
				
			};
	
		} forEach _allvehs;
