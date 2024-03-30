_pos = param [0];
_dir = param [1, random 360];
_bombCount = param [2, 3];
_bombTypes = param [3, ["Bo_Mk82"]];
_spread = param [4, 50];
_delay = param [5, 1];

	for "_i" from 1 to _bombCount do {

		_bombType = _bombTypes call BIS_FNC_SelectRandom;


		_randomPos = [[[_pos, _spread]],[]] call BIS_fnc_randomPos;


		[_randomPos, _dir, _bombType] execVM "functions\fn_SpawnBomb.sqf";

		sleep _delay;

	};
