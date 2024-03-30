[] execVM "fnc_loadBriefing.sqf";

// Intro.
[] spawn {
	sleep 15;
	["Втікаючи від ведмедя, не обов'язково бігти щосили...", "Достатньо не бути останнім."] spawn BIS_fnc_EXP_camp_SITREP;
};

// Broadcast player hunger and thirst levels every 5 minutes.
[] spawn {
	while { true } do {
		sleep 300; // TODO
		{
			private _value = player getVariable _x;
			if (!isNil "_value") then {
				player setVariable[_x, _value, true];
			};
		} forEach ["acex_field_rations_thirst", "acex_field_rations_hunger"];
	};
};