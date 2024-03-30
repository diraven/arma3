// Debug informations for the serverlog
[] spawn compileFinal preprocessFileLineNumbers "scripts\diagnostics.sqf";

// FPS output on map
[] spawn compileFinal preprocessFileLineNumbers "scripts\show_fps.sqf";

// Deletes empty choppers which were left on the resupply points
[] spawn compileFinal preprocessFileLineNumbers "scripts\clean_rsp.sqf";

// Automatically renames groups based on group leader name.
[] spawn compileFinal preprocessFileLineNumbers "scripts\name_groups.sqf";

// set tickets.
500 call BIS_fnc_paramRespawnTickets;