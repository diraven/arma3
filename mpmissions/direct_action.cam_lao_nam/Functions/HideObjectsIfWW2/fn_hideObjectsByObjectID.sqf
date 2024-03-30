
	_objList = _this;
	_debug = false;

	_countObjList = count _objList;
	
	// Hide Objects

		{	
			_countObjList = _countObjList - 1;
			
			// Define Object From ID
			
				_obj = [0,0,0] nearestObject _x;

			// Hide Object
			
				_obj hideObject true;        
			
			if (_debug) then {
			systemchat format ["%1 Remaining - Hiding %2", _countObjList, _obj];
			};

		} forEach _objList;