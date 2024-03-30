_veh = _this select 0;


if (typeOf _veh == "B_Heli_Light_01_dynamicLoadout_F") then {

	_veh addWeaponTurret ["CMFlareLauncher", [0]];
	_veh addWeaponTurret ["CMFlareLauncher", [-1]];
	_veh addMagazineTurret ["120Rnd_CMFlareMagazine",[0]];
	_veh addMagazineTurret ["120Rnd_CMFlareMagazine",[-1]];
	_veh setPylonsPriority[0,1]
	
};


if (typeOf _veh == "B_Heli_Light_01_F") then {

	_veh addWeaponTurret ["CMFlareLauncher", [0]];
	_veh addWeaponTurret ["CMFlareLauncher", [-1]];
	_veh addMagazineTurret ["120Rnd_CMFlareMagazine",[0]];
	_veh addMagazineTurret ["120Rnd_CMFlareMagazine",[-1]];
	
};


if (((_veh isKindOf "Plane") or (_veh isKindOf "UAV_03_base_F")) and !(typeOf _veh == "B_UAV_02_dynamicLoadout_F")) then {


	_veh removeWeaponTurret ["Laserdesignator_pilotCamera", [-1]];
	_veh removeWeaponTurret ["Laserdesignator_mounted", [0]];


};