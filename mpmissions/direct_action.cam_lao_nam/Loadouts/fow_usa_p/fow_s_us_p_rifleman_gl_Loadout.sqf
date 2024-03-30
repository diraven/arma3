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
_obj addWeapon "LIB_M1_Garand_M7";
_obj addPrimaryWeaponItem "LIB_ACC_GL_M7";
_obj addPrimaryWeaponItem "LIB_8Rnd_762x63";
_obj addPrimaryWeaponItem "LIB_1Rnd_G_Mk2";
_obj addWeapon "LIB_Colt_M1911";
_obj addHandgunItem "LIB_7Rnd_45ACP";

comment "Add containers";
_obj forceAddUniform "fow_u_usmc_p41_01_private";
_obj addVest "fow_v_usmc_garand";
_obj addBackpack "fow_b_usmc_m1928_02";

comment "Add binoculars";
_obj addWeapon "LIB_Binocular_US";

comment "Add items to containers";
for "_i" from 1 to 3 do {_obj addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_obj addItemToUniform "LIB_7Rnd_45ACP";};
_obj addItemToVest "LIB_ACC_M1_Bayo";
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_mk2";};
for "_i" from 1 to 2 do {_obj addItemToVest "fow_e_no77";};
for "_i" from 1 to 11 do {_obj addItemToVest "LIB_8Rnd_762x63";};
for "_i" from 1 to 3 do {_obj addItemToBackpack "LIB_1Rnd_G_Mk2";};
for "_i" from 1 to 3 do {_obj addItemToBackpack "LIB_1Rnd_G_M9A1";};
_obj addHeadgear "fow_h_usmc_m1_camo_01";

comment "Add items";
_obj linkItem "ItemMap";
_obj linkItem "ItemCompass";
_obj linkItem "ItemWatch";
_obj linkItem "ItemRadio";


