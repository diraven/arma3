
if (isNil "OO_INIDBI") exitWith {};
if !(isMultiplayer) exitWith {};

_autoSaving = param [0, FALSE],

	// Save Player
   
		{
			
			private ["_playerPos"];
			
			_unit = _x;
			_uid = getPlayerUID _unit;
			_profileName = name _unit;
			_playerPos = getPosASL _unit;
			
				if ([_playerPos] call BEW_FNC_inUnfinishedObjective) then {
				
					_playerPos = [];
				
				};
				
				if !(vehicle _unit == _unit) then {
				
					_playerPos = [];
				
				};
				
				
			_playerDir = getdir _unit;
			_playerLoadout = getUnitLoadout _unit;
			_playerType = typeOf _unit;
			
			if (_playerType == "B_soldier_F") then {
				
				_playerType = "";
				
			};

			_allPlayerData = [_uid, _profileName, _playerPos, _playerDir, _playerLoadout, _playerType];

			for "_i" from 0 to (count BEW_v_AllPlayerSaveData - 1) do {

				_arrayEntry = BEW_v_AllPlayerSaveData select _i;

				if (_arrayEntry select 0 == _uid) then {

					BEW_v_AllPlayerSaveData = BEW_v_AllPlayerSaveData - [_arrayEntry]; 

				};

			};

			BEW_v_AllPlayerSaveData append [_allPlayerData];

		} forEach allPlayers;
   
		["write", ["Player Data", "Player Save Data", BEW_v_AllPlayerSaveData]] call BEW_v_dataBase;  
			publicVariable "BEW_v_AllPlayerSaveData";
		
	
	if (_autoSaving) then {
	
		["Autosaving..."] remoteExec ["systemchat", 0];
		
	}else{
	
		["Game Data Saving..."] remoteExec ["systemchat", 0];
		
	};
	
	
	//[player, "init", false] call BIS_fnc_exportInventory]