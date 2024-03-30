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
_obj addWeapon "LIB_M1A1_Carbine";
_obj addPrimaryWeaponItem "LIB_15Rnd_762x33";
_obj addWeapon "LIB_M1A1_Bazooka";
_obj addSecondaryWeaponItem "LIB_1Rnd_60mm_M6";
_obj addWeapon "LIB_Webley_mk6";
_obj addHandgunItem "LIB_6Rnd_455";

comment "Add containers";
_obj forceAddUniform "fow_u_uk_parasmock";
_obj addVest "fow_v_uk_para_base_green";
_obj addBackpack "fow_b_uk_bergenpack";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_UK";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_obj addItemToUniform "LIB_6Rnd_455";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no36mk1";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no77";};
for "_i" from 1 to 10 do {_obj addItemToVest "LIB_15Rnd_762x33";};
_obj addItemToBackpack "LIB_1Rnd_60mm_M6";
_obj addHeadgear "fow_h_uk_mk2_para_camo";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";

