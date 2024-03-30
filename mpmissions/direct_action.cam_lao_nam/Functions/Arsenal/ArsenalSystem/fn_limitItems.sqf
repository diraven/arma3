
		_plyrObject = param [0, player];
		_itemType = param [1, "FirstAidKit"];
		_itemLimit = param [2, 6];
		_whiteListedRoles = param [3, []];
		
		
	// Exit If White Listed Role
	
		if (typeOf _plyrObject in _whiteListedRoles) exitWith {};


	// Loop While Player Alive

		while {alive _plyrObject} do {

			if (count (items _plyrObject select {_x == _itemType}) > _itemLimit) then {

				while {(count (items _plyrObject select {_x == _itemType}) > _itemLimit)} do {

					_plyrObject removeItem _itemType;
						
				};
			
				// Hint
		
					_itemName = getText(configFile >> "CfgWeapons" >> _itemType >> "displayName");
					_itemPicture = getText(configFile >> "CfgWeapons" >> _itemType >> "picture");
					
					hint parseText format ["<t size = '1.5' color = '#FF0000'>ITEM LIMIT REACHED</t><br/><br/><img image='%4' size='5'/><br /><br/>Your class cannot carry more than %2 %3s. Excess items have been removed.", _itemType, _itemLimit, _itemName, _itemPicture];
			
			};

			sleep 1;

		};


		