// SIMULATION MUST BE ENABLED ON OBJECT!!!!

private [
	
	"_obj",
	"_lampType",
	"_offset",
	"_vector",	
	"_lamp"

];


_obj = _this select 0;


// Arrays Of Common Buildings

	_largeIndustrialSheds = [
		
		"Land_Shed_Big_F", 
		"Land_vn_shed_big_f", 
		"Land_SM_01_shelter_wide_F", 
		"Land_vn_sm_01_shelter_wide_f"
	
	];
	
	_smallIndustrialSheds = [
	
		"Land_Shed_Small_F", 
		"Land_SM_01_shelter_narrow_F", 
		"Land_vn_shed_small_f", 
		"Land_vn_sm_01_shelter_narrow_f"
	
	];
	
	_vnTents = [
	
		"Land_vn_tent_01_03", 
		"Land_vn_tent_01_04", 
		"Land_vn_tent_01_02", 
		"Land_vn_tent_01_01", 
		"Land_vn_tent_mash_01_01", 
		"Land_vn_tent_mash_01_02", 
		"Land_vn_tent_mash_02_01", 
		"Land_vn_tent_mash_02_02", 
		"Land_vn_tent_mash_02_03", 
		"Land_vn_tent_mash_02_04", 
		"Land_vn_tent_mash_01_03", 
		"Land_vn_tent_mash_01_04", 
		"Land_vn_tent_mash_01", 
		"Land_vn_tent_02_03", 
		"Land_vn_tent_02_04", 
		"Land_vn_tent_02_02", 
		"Land_vn_tent_02_01"
	
	];
	
	_crossConnectorTents = [
	
		"Land_ConnectorTent_01_AAF_cross_F", 
		"Land_ConnectorTent_01_CSAT_brownhex_cross_F", 
		"Land_ConnectorTent_01_NATO_cross_F"
	
	];

	_lamps = switch (true) do {

		case (typeOf _obj in _largeIndustrialSheds) : {[
		
			["Land_TentLamp_01_suspended_F", [0,-8.001,3.269], [[-1,0.017,0],[0,0,1]]],
			["Land_TentLamp_01_suspended_F", [0,0,3.269], [[-1,0.017,0],[0,0,1]]],
			["Land_TentLamp_01_suspended_F", [0,8.005,3.269], [[-1,0.017,0],[0,0,1]]]
		
		]};
		
		case (typeOf _obj in _smallIndustrialSheds) : {[
			
			["Land_TentLamp_01_suspended_F", [0,-8.001,2.014], [[-1,0.017,0],[0,0,1]]],
			["Land_TentLamp_01_suspended_F", [0,0,2.014], [[-1,0.017,0],[0,0,1]]],
			["Land_TentLamp_01_suspended_F", [0,8.005,2.014], [[-1,0.017,0],[0,0,1]]]
		
		]};
		
		case (typeOf _obj in _vnTents) : {[
			
			["Land_TentLamp_01_suspended_F", [0,0,1.866], [[-1,0.017,0],[0,0,1]]]
		
		]};
		
		case (typeOf _obj in _crossConnectorTents) : {[
			
			["Land_TentLamp_01_suspended_F", [0,0,1.456], [[-1,0.017,0],[0,0,1]]]
			
		]};
		
		default {[]};

	};

if (count _lamps > 0) then {

	for "_i" from 0 to (count _lamps -1) do {

		_lampType = _lamps select _i select 0;
		_offset = _lamps select _i select 1;
		_vector = _lamps select _i select 2;
		
		_lamp = _lampType createVehicle getPos _obj;
		_lamp allowDamage false;
		_lamp attachTo [_obj, _offset]; 
		_lamp setVectorDirAndUp _vector;
		
		if (_obj in (getMissionLayerEntities "arsenalTents" select 0)) then {
		
			[_lamp, "BLU"] spawn BEW_FNC_HideVehicleInObjectiveArea;
		
		};

	};
	
};