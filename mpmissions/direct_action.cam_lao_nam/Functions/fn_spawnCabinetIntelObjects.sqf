	/*
	fn_spawnCabinetIntelObjects
	InputValues: Coordinate,radius
	OutputValues: [CabinetObject,[IntelObjects]]

	Written By Icekraks/BillyEatWorld
	*/


	//Gets fed center objective and the radius of the objective
	_centerPos = _this select 0;
	_radius = _this select 1;


	//_intelObject array to store the created Intel Objects.
	_intelObjects = [];

	// Find Positions In Buildings

	_buildingPositionsArray = [_centerPos, _radius] call BEW_fnc_findPositionsInNearBuildings;
	
	if (isNil "_buildingPositionsArray select 0") exitWith {};
	
	_selectedPosition = _buildingPositionsArray select 0;

	/*
	Selects amount of Intel objects randomly 0 -> 4
	If random selects 0, then it will be overwritten as 1.
	*/
	//_intelCount = random 4;
	_intelCount = 1;
	if(_intelCount == 0) then{
	_intelCount = 1;
	};

	_intelCoordinates=[];
	_intelItems = [];
	_cabinet = 0;

	//Coordinates and Cabinet Creation for VN and UNSUNG
	if (((isClass(configfile >> "CfgMods" >> "vn")) and (isClass(configfile >> "CfgMods" >> "UNSUNG")))) then {

	//Coordinates and orientation for the intel objects to spawn on the cabinet.
	_intelCoordinates = [
	[[-0.37,-0.033,0.913], [[0,1,0],[-1,0,-0]]],
	[[0.244,-0.001,0.826],[[0,1,0],[0,0,1]]],
	[[0.188,0.022,1.184], [[0.598,0.801,0],[0,0,1]]],
	[[-0.16,0.009,1.184], [[0,1,0],[0,0,1]]]
	];

	//List of possible Intel objects Items.
	_intelItems = [
	"Land_vn_filephotos_f",
	"Land_vn_file2_f",
	"Land_vn_file1_f",
	"Land_File_research_F",
	"Land_File2_F"
	];

	// Creates the Cabinet object.
	_cabinet = createVehicle ["Land_vn_officecabinet_02_f", [_selectedPosition select 0, _selectedPosition select 1, 0], [], 0, "CAN_COLLIDE"];
	
	_cabinet

	} else {
	//Coordinates and orientation for the intel objects to spawn on the cabinet.
	_intelCoordinates = [
	[[-0.083,-0.004,0.229], [[-0.5,0,0.866],[0.866,0,0.5]]],
	[[0.135,0.002,0.229],[[-0.5,0,0.866],[0.866,0,0.5]]],
	[[0.134,0.002,-0.003], [[-0.5,0,0.866],[0.866,0,0.5]]],
	[[-0.087,-0.018,-0.245], [[-0.5,0,0.866],[0.866,0,0.5]]]
	];

	//List of possible Intel objects Items.
	_intelItems = [
	"Land_File1_F",
	"Land_FilePhotos_F",
	"Land_File2_F",
	"Land_File_research_F"
	];

	// Creates the Cabinet object.
	_cabinet = createVehicle ["Land_PortableCabinet_01_bookcase_black_F", [_selectedPosition select 0, _selectedPosition select 1, 0], [], 0, "CAN_COLLIDE"];
	
	_cabinet
	
	};
	
	// Setup Cabinet
	
		_cabinet allowDamage false;
	
	// Face Cabinet To Inside Of Building
	
		_nearestBuilding = nearestBuilding _cabinet;
		_reldir = _cabinet getRelDir _nearestBuilding;
		_cabinet setDir getDir _cabinet + _reldir - 180; 

	//Generates the Intel Object based on the random value provided above.
	for "_i" from 1 to _intelCount do {
	
		_selectedIntelObject = selectRandom _intelItems;
		_selectedSpot = _intelCoordinates select _i;

		//Creates the Intel Object and attachTo the Cabinet
		_folder = createVehicle [_selectedIntelObject, (getPos _cabinet), [], 0, "CAN_COLLIDE"];
		_folder attachTo [_cabinet, (_selectedSpot select 0)];
		_folder setVectorDirAndUp (_selectedSpot select 1);
		_folder allowDamage false;

		_cabinet setVariable ["IntelRecovered", false, true];
		[_cabinet] call BEW_FNC_gatherIntelAction;
		_intelObjects append [_folder];
		
		
		[_cabinet] spawn {
		
			_cabinet = _this select 0;
			
			// Waituntil Intel Recovered OR Despawn Timer
			
			waitUntil {sleep 3; !(objectiveMissionActive) or (_cabinet getVariable "IntelRecovered")};
			
			_despawnTimer = 300;
			
			while {(_despawnTimer > 0) and !(_cabinet getVariable "IntelRecovered")} do {
				
				_despawnTimer = _despawnTimer - 1;
				
				sleep 1;
						
			};
			
			{deleteVehicle _x} forEach attachedObjects _cabinet;
			_cabinet setVariable ["IntelRecovered", true, true];
			
			sleep 60;
			
			deleteVehicle _cabinet;	
			
		
		};
		

	};
	_returnObjects = [_cabinet,_intelObjects];

	_returnObjects
