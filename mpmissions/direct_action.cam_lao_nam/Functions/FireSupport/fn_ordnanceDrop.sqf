_pos = param [0];
_spawnHeight = param [1, 300];
_dir = param [2, random 360];
_bombCount = param [3, 3];
_bombTypes = param [4, ["Bo_Mk82"]];
_spread = param [5, 50];
_delay = param [6, 1];

	for "_i" from 1 to _bombCount do {

		_bombType = _bombTypes call BIS_FNC_SelectRandom;

		_randomPos = [[[_pos, _spread]],[]] call BIS_fnc_randomPos;
		
		[_randomPos, _spawnHeight, _dir, _bombType] spawn BEW_FNC_SpawnOrdnance;

		sleep _delay;

	};
