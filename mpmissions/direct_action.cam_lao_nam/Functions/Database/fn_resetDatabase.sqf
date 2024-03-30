	[{
		
		_allSections = "getSections" call BEW_v_Database;

		{

			_section = _x;

			_sectionKeys = ["getKeys", _section] call BEW_v_Database;

			{

				_key = _x;

				["deleteKey", [_section, _key]] call BEW_v_Database;

			} forEach _sectionKeys;

			["deleteSection", _section] call BEW_v_Database;

		} forEach _allSections;
	
	}] remoteExec ["BIS_FNC_Call", 2];


	// Send Message
		
		["Server Database Has Been Reset"] remoteExec ["systemchat", 0];