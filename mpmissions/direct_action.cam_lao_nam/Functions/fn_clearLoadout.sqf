	
	_unit = param [0, player];
	
	removeAllItems _unit;
	removeAllWeapons _unit;
	removeHeadgear _unit;
	removeVest _unit;
	removeUniform _unit;
	removeAllAssignedItems _unit;
	_unit unlinkItem hmd _unit; 
	_unit removeWeapon hmd _unit;
	{ _unit removeMagazine _x } forEach magazines _unit;