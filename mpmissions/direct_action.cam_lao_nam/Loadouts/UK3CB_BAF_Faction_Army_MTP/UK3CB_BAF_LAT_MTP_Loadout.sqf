
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

	comment "Add weapons";
	_obj addWeapon "UK3CB_BAF_L85A2";
	_obj addPrimaryWeaponItem "rhsusf_acc_su230";
	_obj addPrimaryWeaponItem "UK3CB_BAF_SFFH";
	_obj addPrimaryWeaponItem "UK3CB_BAF_556_30Rnd";
	_obj addWeapon "UK3CB_BAF_NLAW_Launcher";
	_obj addSecondaryWeaponItem "UK3CB_BAF_NLAW_Mag";
	_obj addWeapon "UK3CB_BAF_L131A1";
	_obj addHandgunItem "UK3CB_BAF_9_17Rnd";

	comment "Add containers";
	_obj forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP_RM";
	_obj addVest "UK3CB_BAF_V_Osprey_Rifleman_A";
	_obj addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C";

	comment "Add binoculars";
	_obj addWeapon "rhsusf_bino_m24_ARD";

	comment "Add items to containers";
	for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
	_obj addItemToUniform "UK3CB_BAF_9_17Rnd";
	for "_i" from 1 to 8 do {_obj addItemToVest "UK3CB_BAF_556_30Rnd";};
	_obj addItemToVest "rhs_mag_m18_green";
	_obj addItemToVest "rhs_mag_m18_red";
	_obj addItemToVest "rhs_mag_m67";
	_obj addItemToVest "rhs_grenade_anm8_mag";
	for "_i" from 1 to 2 do {_obj addItemToBackpack "NLAW_F";};
	_obj addHeadgear "UK3CB_BAF_H_Mk7_Camo_A";
	_obj addGoggles "UK3CB_BAF_G_Tactical_Grey";

	comment "Add items";
	_obj linkItem "ItemMap";
	_obj linkItem "ItemCompass";
	_obj linkItem "ItemWatch";
	_obj linkItem "ItemRadio";
	_obj linkItem "ItemGPS";
	_obj linkItem "UK3CB_BAF_HMNVS";