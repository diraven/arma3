
// By PierreMGI - Adapted by BillyEatWorld

	MGI_dryCheck = compileFinal "
	  _pos = _this select 0;
	  _posWet = [];
	  _range = _this select 1;
	  _deltaR = _range / 3600;
	  for '_i' from 0 to 3600 step 10 do {
		_ckPos = _pos getPos [_deltaR*_i,_i];
		if (surfaceIsWater _ckPos) exitWith {_posWet = _ckPos}
	  };
	  _posWet
	";

	MGI_wetCheck = compileFinal "
	  _pos = _this select 0;
	  _posDry = [];
	  _range = _this select 1;
	  _deltaR = _range / 3600;
	  for '_i' from 0 to 3600 step 10 do {
		_ckPos = _pos getPos [_deltaR*_i,_i];
		if !(surfaceIsWater _ckPos) exitWith {_posDry = _ckPos}
	  };
	  _posDry
	";

	MGI_dryArea = {
	  _pos0 = _this select 0;
	  _range = _this select 1;  
	  _range = _range * 2;
	  _pos = _pos0;
	  _cnt = 0;
	  if (surfaceIsWater _pos0) then {
		_posDry = [_pos,_range] call MGI_wetCheck;
		 while {(_posDry isEqualTo [])} do {
		_pos =  _pos vectorAdd ((_pos vectorFromTo [worldSize/2,worldSize/2,0]) vectorMultiply _range);
		_posDry = [_pos,_range] call MGI_wetCheck;
		};
		_pos0 = _posDry;
		_pos = _pos0;
	  };  
	  _posWet = [_pos,_range] call MGI_dryCheck;
	  while {!(_posWet isEqualTo [])} do {
		_cnt = _cnt + 1;
		_pos = _pos vectorAdd ((_poswet vectorFromTo _pos) vectorMultiply (_range - (_pos distance _posWet)));
		_posWet = [_pos,_range] call MGI_dryCheck;
		if (_cnt == 20) exitWith {
		  _range = _range * 0.66;
		  [_pos0,_range] call MGI_dryArea;
		};
	  };
	  deleteMarker "dry drop";
	  _mk = createMarker ["dry drop",_pos];
	  _mk setMarkerShape "ellipse";
	  _mk setMarkerSize [_range max 50,_range max 50];
	  _mk setMarkerAlpha 0;

	  _mk
	};