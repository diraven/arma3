
	_veh			=	_this select 0;
	_textureList	=	_this select 1;
		

	if !(count _textureList > 0) exitWith {};
			
		[[_veh, _textureList], {
			
			_veh = _this select 0;
			_textureList = _this select 1;
		
			for "_i" from 0 to (count _textureList - 1) do {

				_veh setObjectTexture [_i, _textureList select _i];

			};
			
		}] remoteExec ["BIS_FNC_Call", 0, true];