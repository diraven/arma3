_pos = _this select 0; // set this to whatever you want

_unitArr = ['vn_o_men_vc_regional_01','vn_o_men_vc_regional_04 ']; 

// set this to whatever you want
_enemySide = 1; // 1 for EAST, but set to whatever you want

_tunnelType = [0,5] call BIS_fnc_randomInt; // pick a random tunnel or set to whatever you want

_tunnelGarrisonSize = 16; // pick a garrison size



	if (isNil "tunnelNo") then {
	
		tunnelNo = 0;
		
	}

	else {

		tunnelNo = tunnelNo + 1;
		
	};

	publicVariable "tunnelNo";

	private _grp = createGroup [sideLogic, true];
	private _tunnelName = format["tunnel%1", tunnelNo];
	private _tunnelString = format ["this setVariable ['BIS_fnc_initModules_disableAutoActivation',true, true]; 
	
	%1 = this; 
	
	publicVariable '%1'", _tunnelName];
	
	"vn_module_tunnel_init" createUnit [_pos, _grp, _tunnelString];

	sleep 0.5;
	
	private _thisTunnel = missionNameSpace getVariable [_tunnelName, "wtf_theres_no_tunnel"];
	_thisTunnel setVariable ['garrison_size',_tunnelGarrisonSize,true];
	_thisTunnel setVariable ['tunnel_position',_tunnelType,true];
	_thisTunnel setVariable ['garrison_classnames_preselection',_unitArr,true];
	_thisTunnel setVariable ['garrison_side',_enemySide,true];

	["",[_thisTunnel,true]] call vn_fnc_module_tunnel_init;