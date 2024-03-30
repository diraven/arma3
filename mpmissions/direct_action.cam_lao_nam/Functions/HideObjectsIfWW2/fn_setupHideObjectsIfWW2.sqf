	
	if !(BEW_v_WW2) exitWith {};
	
		_worldName = worldName;
		
		_scriptName = format ["functions\HideObjectsIfWW2\MapData\fn_%1_blackListedObjects.sqf", _worldName];
		
		if (fileExists _scriptName) then {
		
			[] execVM _scriptName;
		
		}else{
		
			hint "No WW2 BlackList Configured";
		
		};