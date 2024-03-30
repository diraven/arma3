
_obj = param [0];

if (!local _obj) exitWith {};

	comment "Remove existing items";
	removeAllWeapons _obj;
	removeAllItems _obj;
	removeAllAssignedItems _obj;
	removeUniform _obj;
	removeVest _obj;
	removeBackpack _obj;
	removeHeadgear _obj;
	removeGoggles _obj;

	comment "Add containers";
	_obj forceAddUniform "UK3CB_BAF_U_CombatUniform_DDPM_RM";
	_obj addVest "UK3CB_BAF_V_Osprey_DDPM1";

	comment "Add binoculars";
	_obj addWeapon "Binocular";

	comment "Add items to containers";
	for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
	_obj addHeadgear "UK3CB_BAF_H_Boonie_DDPM_PRR";

	comment "Add items";
	_obj linkItem "ItemMap";
	_obj linkItem "ItemCompass";
	_obj linkItem "ItemWatch";
	_obj linkItem "ItemRadio";
	_obj linkItem "ItemGPS";
