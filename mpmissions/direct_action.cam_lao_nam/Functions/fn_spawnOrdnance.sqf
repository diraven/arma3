_centerPos = _this select 0;
_dir = _this select 1;
_bombType = _this select 2;


_offset = switch (_bombType) do {

	case "Bo_GBU12_LGB" : {-290}; 
	case "Bo_Mk82" : {-190};
	case "vn_bomb_750_blu1b_fb_ammo" : {0};
	default {0};

};


_bomb = _bombType createVehicle [_centerPos select 0, _centerPos select 1, 300];
_bomb setDir _dir;

_offsetPos = _bomb modelToWorld [0,_offset,0];

_bomb setPos _offsetPos; 
