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
_obj addWeapon "LIB_M9130_DYAKONOV";
_obj addPrimaryWeaponItem "LIB_ACC_GL_DYAKONOV_Empty";
_obj addPrimaryWeaponItem "LIB_5Rnd_762x54";
_obj addPrimaryWeaponItem "LIB_1Rnd_G_DYAKONOV";
_obj addWeapon "LIB_TT33";
_obj addHandgunItem "LIB_8Rnd_762x25";

comment "Add containers";
_obj forceAddUniform "U_LIB_SOV_Strelok_summer";
_obj addVest "V_LIB_SOV_RA_MosinBelt";
_obj addBackpack "B_LIB_SOV_RA_Rucksack";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_SU";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "LIB_8Rnd_762x25";};
_obj addItemToVest "LIB_ACC_M1891_Bayo";
for "_i" from 1 to 2 do {_obj addItemToVest "LIB_Rg42";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no77";};
for "_i" from 1 to 8 do {_obj addItemToVest "LIB_5Rnd_762x54";};
for "_i" from 1 to 8 do {_obj addItemToBackpack "LIB_1Rnd_G_DYAKONOV";};
_obj addHeadgear "H_LIB_SOV_RA_Helmet";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";

