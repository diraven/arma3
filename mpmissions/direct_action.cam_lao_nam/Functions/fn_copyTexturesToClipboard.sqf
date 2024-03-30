
	_veh = param [0, ((get3DENSelected 'object') # 0)];
	
	_textures = getObjectTextures _veh;
	
	[_textures] call BEW_FNC_CopyToClipboard;