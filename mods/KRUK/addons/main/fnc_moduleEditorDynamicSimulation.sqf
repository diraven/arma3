#include "script_component.hpp"
TRACE_1("trace", nil);
/*
	Enables dynamic simulation for everything.
	
	call FUNC(...);
*/

{
	_x enableDynamicSimulation true;
} forEach allGroups;