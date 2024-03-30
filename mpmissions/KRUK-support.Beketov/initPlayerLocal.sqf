// Briefing.
[] execVM "fnc_loadBriefing.sqf";

// Intro.
[] spawn {
	sleep 15;
	["Не помиляється тільки той, хто нічого не робить."] spawn BIS_fnc_EXP_camp_SITREP;
};

// Settings.
// 75 call BIS_fnc_paramWeather; // can be 0 (sunny), 25, 50, 75 or 100 (storm))